package com.game2sky.prilib.core.socket.logic.battle.newAi.action;

import com.game2sky.prilib.core.dict.domain.DictHeroSkill;
import com.game2sky.prilib.core.socket.logic.battle.ai.AIInternalStaticData;
import com.game2sky.prilib.core.socket.logic.battle.ai.AIService;
import com.game2sky.prilib.core.socket.logic.human.state.ActionState;
import com.game2sky.prilib.core.socket.logic.scene.unit.DmcSceneObject;
import com.game2sky.publib.Globals;
import com.game2sky.publib.communication.game.struct.FPoint3;
import com.game2sky.publib.socket.logic.scene.SceneUtils;

/**
 * 移动到场景物体动作
 * @author shadow
 *
 */
public class AIMoveToObjectAction implements IAIAction {

	@Override
	public boolean doAction(DmcSceneObject self, AIActionParam param) {
		if(!checkAction(self, param)){
			return false;
		}
		DmcSceneObject target = param.getActionTargetObjects(self).get(0);
		self.getController().getRoleActionManager().move(target, Globals.getTimeService().now());
		return false;
	}

	@Override
	public boolean checkAction(DmcSceneObject self, AIActionParam param) {
		DmcSceneObject target = param.getActionTargetObjects(self).get(0);
		if (target == null) {
			return false;
		}

		if (!self.getRoleStateManager().canEnter(ActionState.MOVING)) {
			return false;
		}

		if (!SceneUtils.castLineLogic(self.getScene().getSceneMapId(), self.getPos(), target.getPos())) {
			return false;
		}
		
		if (!SceneUtils.isObjectInCircle(target.getPos(), AIInternalStaticData.VIEW_DISTANSE, self.getDir(), self.getPos(), self.getRadius(), AIInternalStaticData.FACE_ANGLE)) {
			FPoint3 targetDir = SceneUtils.normalize(SceneUtils.calcDir(target.getPos(), self.getPos()));
			self.getController().getRoleActionManager().turn(self.getDir(), targetDir, Globals.getTimeService().now());			
			return false;
		}

		if (SceneUtils.isObjectInCircle(target.getPos(), target.getRadius(), self.getDir(), self.getPos(), self.getRadius(), AIInternalStaticData.FACE_ANGLE)) {
			self.getController().getRoleActionManager().stopMove(null, true, false);
			AIService.getInstance().onSceneObjectStopMove(self, self.getPos(), self.getDir());
			return false;
		}
		return true;
	}

	@Override
	public void stop(DmcSceneObject self) {
		self.getController().getRoleActionManager().stopMove(null, true, false);
	}

	@Override
	public void reset(AIActionParam param) {
		
	}

	@Override
	public boolean isOver(DmcSceneObject self, AIActionParam param) {
		if(param.getActionTargetObjects(self).size() == 0){
			return true;
		}
		DmcSceneObject target = param.getActionTargetObjects(self).get(0);
		String[] params = param.getParam().split(":");
		String type = params[0];
		float dis = 0;
		if(type.equals("common")){
			dis = Float.parseFloat(params[1]);
		}else if(type.equals("skill")){
			DictHeroSkill skill = DictHeroSkill.getDictHeroSkill(Integer.parseInt(params[1]));
			if (skill == null) {
				return false;
			}
			dis = skill.getReleaseRange();
		}
		if (SceneUtils.isObjectInCircle(target.getPos(), dis, self.getDir(), self.getPos(), self.getRadius(), AIInternalStaticData.FACE_ANGLE)) {
			return true;
		}
		return false;
	}

}
