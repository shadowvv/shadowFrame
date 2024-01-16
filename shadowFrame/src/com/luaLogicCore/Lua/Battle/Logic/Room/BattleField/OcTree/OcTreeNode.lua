---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by zhaopuyang.
--- DateTime: 2022/8/9 15:33

require "Lib/class"
require "Battle/Logic/Room/BattleField/CollisionService"
require "Battle/Logic/Room/BattleField/ObjectCollider"
require "Battle/Logic/Room/BattleField/Collider/OBBBox"

---@class OcTreeNode : table
---@field nodeId number 节点id
---@field OBBBox OBBBox 包围盒
---@field leftOuterBottom Vector3 节点左下角外坐标
---@field rightInnerTop Vector3 节点右上角内坐标
---@field parent OcTreeNode 父节点
---@field root OcTreeRoot 根节点
---@field nextNodes OcTreeNode[] 子节点
---@field objects ObjectCollider[] 节点内单位
OcTreeNode = class(nil, 'OcTreeNode');

function OcTreeNode:ctor(_depth,_index,_leftOuterBottom,_rightInnerTop,_parent,_root)
    --TODO：重构center,width
    self.depth = _depth;
    self.index = _index;
    self.parent = _parent;
    self.root = _root;

    local nodeId = _index;
    if self.parent then
        nodeId = self.parent.nodeId*10+_index;
    else
        nodeId = _depth*10+_index;
    end
    self.nodeId = nodeId;

    self.leftOuterBottom = _leftOuterBottom;
    self.rightInnerTop = _rightInnerTop;

    local width = self.rightInnerTop - self.leftOuterBottom;
    local center = self.leftOuterBottom + width/2;
    self.OBBBox = OBBBox.New();
    self.OBBBox:Init(Vector3.New(1,0,0),Vector3.New(0,1,0),Vector3.New(0,0,1),center,width);

    self.nextNodes = {};
    self.objects = {};
    self.objectNum = 0;
end

---@public 添加单位
---@param _object ObjectCollider 场景单位
---@param _skipCheckNode boolean 需要检测节点
function OcTreeNode:AddObject(_object, _skipCheckNode)
    local include = false;
    if _skipCheckNode then
        include = _skipCheckNode;
    end
    if not include then
        for i, baseCollider in pairs(_object.collider) do
            if CollisionService:CheckObjectInOrCrossNode(self, baseCollider) then
                include = true;
                break;
            end
        end
    end

    if include then
        if #self.nextNodes > 0 then
            for i, node in pairs(self.nextNodes) do
                node:AddObject(_object,false);
            end
        else
            local currentNum = self.objectNum + 1;
            if currentNum <= OCTREE_CONSTANCE.TREE_NODE_OBJECT_CAPACITY or self.depth >= OCTREE_CONSTANCE.TREE_MAX_DEPTH then
                self.objects[_object:GetObjectId()] = _object;
                self.objectNum = self.objectNum + 1;
                if not _skipCheckNode then
                    table.insert(_object.nodeIndex,self.nodeId);
                end
                return include;
            end

            --大于最大容量,生成子节点
            self:GenerateNextNodes();
            for i, object in pairs(self.objects) do
                self.objects[object:GetObjectId()] = nil;
                self.objectNum = self.objectNum - 1;
                for i, v in pairs(self.nextNodes) do
                    v:AddObject(object,false);
                end
            end
        end
    end

    return include;
end

---@public 生成子节点
function OcTreeNode:GenerateNextNodes()
    local x_width = self.OBBBox.width.x/2;
    local y_width = self.OBBBox.width.y/2;
    local z_width = self.OBBBox.width.z/2;
    for i = 1, 8 do
        local x_offSet= math.modf(i%2);
        local y_offSet = math.modf((i-1)/4);
        local z_offSet = 0;
        if (i-1)%4 - 2 >= 0 then
            z_offSet = 1;
        end

        ---@type Vector3
        local left = Vector3.New(self.leftOuterBottom.x+x_width*x_offSet,self.leftOuterBottom.y+y_width*y_offSet,self.leftOuterBottom.z+z_width*z_offSet);
        ---@type Vector3
        local right = Vector3.New(left.x+x_width,left.y+y_width,left.z+z_width);

        ---@type OcTreeNode
        local node = OcTreeNode.New(self.depth+1,i,left,right,self,self.root);
        table.insert(self.nextNodes,node);
        self.root.allNodes[node.nodeId] = node;
    end
end

---@public 移除单位
---@param _object ObjectCollider 场景单位
function OcTreeNode:RemoveObject(_object)
    self.objects[_object:GetObjectId()] = nil;
    self.objectNum = self.objectNum - 1;
end

---@public 单位移动
---@param _object ObjectCollider 场景单位
---@param _targetObjectCollider ObjectCollider 移动目标
function OcTreeNode:ObjectMove(_object, _targetObjectCollider)


    local collisionObjects = {};
    if _object.objectType == BattleUnitType.Monster and _object.templateXls.battleSmallHpType ~= 3 then
        return collisionObjects;
    end

    local include = false;
    for i, baseCollider in pairs(_targetObjectCollider.collider) do
        if CollisionService:CheckObjectInOrCrossNode(self, baseCollider) then
            include = true;
            break;
        end
    end

    if include then
        if #self.nextNodes > 0 then
            for i, v in pairs(self.nextNodes) do
                local tempList = v:ObjectMove(_object, _targetObjectCollider);
                for i, tempObject in pairs(tempList) do
                    table.insert(collisionObjects,tempObject);
                end
            end
        else
            table.insert(_targetObjectCollider.nodeIndex,self.nodeId);

            for i, nodeObject in pairs(self.objects) do
                if nodeObject:GetObjectId() ~= _object:GetObjectId() then
                    if nodeObject.objectType ~= BattleUnitType.Monster or (nodeObject.objectType == BattleUnitType.Monster and nodeObject.templateXls.battleSmallHpType == 3) then
                        for i, targetCollider in pairs(_targetObjectCollider.collider) do
                            for i, v in pairs(nodeObject.collider) do
                                if CollisionService:CheckObjectCollision(targetCollider,v) then
                                    table.insert(collisionObjects,v);
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    return collisionObjects;
end

return OcTreeNode;