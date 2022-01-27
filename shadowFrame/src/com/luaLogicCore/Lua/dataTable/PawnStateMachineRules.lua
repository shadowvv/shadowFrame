---@class PawnStateMachineRules_Xls : table 
PawnStateMachineRules_Xls =
{
    ["1"]={id=1,dec="待机",beizhu=1,idleState=0,hittedState=1,runState=1,moveState=1,skillAttackState=1,dizState=1,deathState=1,bornState=0,dodgeState=1,frozenState=1,rebornState=1,dashState=1,sprintState=0,backgroundState=0,knockDownState=1,palsyState=1,changeStageState=1,repelState=1,reverseState=1,changeBodyState=1,nonane=1},
    ["2"]={id=2,dec="被击",beizhu=12,idleState=0,hittedState=0,runState=1,moveState=0,skillAttackState=0,dizState=1,deathState=1,bornState=0,dodgeState=1,frozenState=1,rebornState=1,dashState=0,sprintState=0,backgroundState=0,knockDownState=1,palsyState=0,changeStageState=1,repelState=1,reverseState=1,changeBodyState=1,nonane=1},
    ["3"]={id=3,dec="跑",beizhu=0,idleState=1,hittedState=1,runState=1,moveState=1,skillAttackState=1,dizState=1,deathState=1,bornState=1,dodgeState=1,frozenState=1,rebornState=1,dashState=1,sprintState=1,backgroundState=1,knockDownState=1,palsyState=1,changeStageState=1,repelState=1,reverseState=1,changeBodyState=1,nonane=1},
    ["4"]={id=4,dec="移动",beizhu=2,idleState=0,hittedState=1,runState=1,moveState=0,skillAttackState=1,dizState=1,deathState=1,bornState=0,dodgeState=1,frozenState=1,rebornState=1,dashState=1,sprintState=0,backgroundState=0,knockDownState=1,palsyState=1,changeStageState=1,repelState=1,reverseState=1,changeBodyState=1,nonane=1},
    ["5"]={id=5,dec="技能",beizhu=10,idleState=0,hittedState=1,runState=1,moveState=0,skillAttackState=0,dizState=1,deathState=1,bornState=0,dodgeState=1,frozenState=1,rebornState=1,dashState=1,sprintState=0,backgroundState=0,knockDownState=1,palsyState=1,changeStageState=1,repelState=1,reverseState=1,changeBodyState=1,nonane=1},
    ["6"]={id=6,dec="眩晕",beizhu=15,idleState=0,hittedState=0,runState=1,moveState=0,skillAttackState=0,dizState=0,deathState=1,bornState=0,dodgeState=1,frozenState=1,rebornState=1,dashState=0,sprintState=0,backgroundState=0,knockDownState=0,palsyState=0,changeStageState=1,repelState=0,reverseState=1,changeBodyState=1,nonane=1},
    ["7"]={id=7,dec="死亡",beizhu=99,idleState=0,hittedState=0,runState=1,moveState=0,skillAttackState=0,dizState=0,deathState=0,bornState=1,dodgeState=1,frozenState=0,rebornState=1,dashState=0,sprintState=0,backgroundState=0,knockDownState=0,palsyState=0,changeStageState=1,repelState=0,reverseState=1,changeBodyState=0,nonane=0},
    ["8"]={id=8,dec="出生",beizhu=100,idleState=1,hittedState=0,runState=1,moveState=0,skillAttackState=0,dizState=0,deathState=1,bornState=0,dodgeState=1,frozenState=0,rebornState=1,dashState=0,sprintState=0,backgroundState=0,knockDownState=0,palsyState=0,changeStageState=0,repelState=0,reverseState=1,changeBodyState=0,nonane=1},
    ["9"]={id=9,dec="格挡",beizhu=0,idleState=1,hittedState=1,runState=1,moveState=1,skillAttackState=1,dizState=1,deathState=1,bornState=1,dodgeState=1,frozenState=1,rebornState=1,dashState=1,sprintState=1,backgroundState=1,knockDownState=1,palsyState=1,changeStageState=1,repelState=1,reverseState=1,changeBodyState=1,nonane=1},
    ["10"]={id=10,dec="冰冻",beizhu=16,idleState=0,hittedState=0,runState=1,moveState=0,skillAttackState=0,dizState=0,deathState=1,bornState=0,dodgeState=1,frozenState=0,rebornState=1,dashState=0,sprintState=0,backgroundState=0,knockDownState=0,palsyState=0,changeStageState=1,repelState=0,reverseState=1,changeBodyState=1,nonane=1},
    ["11"]={id=11,dec="复活",beizhu=100,idleState=1,hittedState=1,runState=1,moveState=1,skillAttackState=1,dizState=1,deathState=1,bornState=1,dodgeState=1,frozenState=1,rebornState=1,dashState=1,sprintState=1,backgroundState=1,knockDownState=1,palsyState=1,changeStageState=1,repelState=1,reverseState=1,changeBodyState=1,nonane=1},
    ["12"]={id=12,dec="闪避",beizhu=4,idleState=0,hittedState=1,runState=1,moveState=0,skillAttackState=0,dizState=1,deathState=1,bornState=0,dodgeState=1,frozenState=1,rebornState=1,dashState=0,sprintState=0,backgroundState=0,knockDownState=1,palsyState=1,changeStageState=0,repelState=1,reverseState=1,changeBodyState=1,nonane=1},
    ["13"]={id=13,dec="冲刺",beizhu=5,idleState=0,hittedState=1,runState=1,moveState=0,skillAttackState=0,dizState=1,deathState=1,bornState=0,dodgeState=1,frozenState=1,rebornState=1,dashState=0,sprintState=0,backgroundState=0,knockDownState=1,palsyState=1,changeStageState=0,repelState=1,reverseState=1,changeBodyState=1,nonane=1},
    ["14"]={id=14,dec="角色在后台",beizhu=3,idleState=0,hittedState=0,runState=1,moveState=0,skillAttackState=0,dizState=0,deathState=1,bornState=0,dodgeState=1,frozenState=0,rebornState=1,dashState=0,sprintState=0,backgroundState=0,knockDownState=0,palsyState=0,changeStageState=1,repelState=0,reverseState=1,changeBodyState=0,nonane=1},
    ["15"]={id=15,dec="击倒",beizhu=13,idleState=0,hittedState=0,runState=1,moveState=0,skillAttackState=0,dizState=1,deathState=1,bornState=0,dodgeState=1,frozenState=1,rebornState=1,dashState=0,sprintState=0,backgroundState=0,knockDownState=0,palsyState=0,changeStageState=1,repelState=0,reverseState=1,changeBodyState=1,nonane=1},
    ["16"]={id=16,dec="麻痹",beizhu=11,idleState=0,hittedState=1,runState=1,moveState=0,skillAttackState=0,dizState=1,deathState=1,bornState=0,dodgeState=1,frozenState=1,rebornState=1,dashState=0,sprintState=0,backgroundState=0,knockDownState=1,palsyState=0,changeStageState=1,repelState=1,reverseState=1,changeBodyState=1,nonane=1},
    ["17"]={id=17,dec="切换角色",beizhu=3,idleState=0,hittedState=0,runState=1,moveState=0,skillAttackState=0,dizState=0,deathState=1,bornState=0,dodgeState=1,frozenState=0,rebornState=1,dashState=0,sprintState=0,backgroundState=1,knockDownState=0,palsyState=0,changeStageState=0,repelState=0,reverseState=1,changeBodyState=0,nonane=1},
    ["18"]={id=18,dec="击退",beizhu=14,idleState=0,hittedState=0,runState=1,moveState=0,skillAttackState=0,dizState=0,deathState=1,bornState=0,dodgeState=1,frozenState=1,rebornState=1,dashState=0,sprintState=0,backgroundState=0,knockDownState=0,palsyState=0,changeStageState=1,repelState=0,reverseState=1,changeBodyState=1,nonane=1},
    ["19"]={id=19,dec="折返",beizhu=0,idleState=1,hittedState=1,runState=1,moveState=1,skillAttackState=1,dizState=1,deathState=1,bornState=1,dodgeState=1,frozenState=1,rebornState=1,dashState=1,sprintState=1,backgroundState=1,knockDownState=1,palsyState=1,changeStageState=1,repelState=1,reverseState=1,changeBodyState=1,nonane=1},
    ["20"]={id=20,dec="切换怪物形态",beizhu=20,idleState=0,hittedState=0,runState=1,moveState=1,skillAttackState=0,dizState=0,deathState=1,bornState=0,dodgeState=1,frozenState=0,rebornState=1,dashState=0,sprintState=0,backgroundState=0,knockDownState=0,palsyState=0,changeStageState=1,repelState=0,reverseState=1,changeBodyState=0,nonane=1},
    ["21"]={id=21,dec="消失&驱逐",beizhu=99,idleState=0,hittedState=0,runState=1,moveState=0,skillAttackState=0,dizState=0,deathState=0,bornState=1,dodgeState=1,frozenState=0,rebornState=1,dashState=0,sprintState=0,backgroundState=0,knockDownState=0,palsyState=0,changeStageState=1,repelState=0,reverseState=1,changeBodyState=0,nonane=0},
}
--生成获取数据的方法
---@return PawnStateMachineRules
function GetPawnStateMachineRulesData(id)
    return PawnStateMachineRules_Xls[tostring(id)]
end
--自动生成注释
---@class PawnStateMachineRules : table 
---@field id number
---@field dec string
---@field beizhu number
---@field idleState number
---@field hittedState number
---@field runState number
---@field moveState number
---@field skillAttackState number
---@field dizState number
---@field deathState number
---@field bornState number
---@field dodgeState number
---@field frozenState number
---@field rebornState number
---@field dashState number
---@field sprintState number
---@field backgroundState number
---@field knockDownState number
---@field palsyState number
---@field changeStageState number
---@field repelState number
---@field reverseState number
---@field changeBodyState number
---@field nonane number
