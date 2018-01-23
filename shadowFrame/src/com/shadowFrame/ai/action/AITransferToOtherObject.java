package com.shadowFrame.ai.action;

import java.util.Collection;

import com.shadowFrame.ai.SceneObject;
import com.shadowFrame.ai.condition.event.AIEvent;
import com.shadowFrame.ai.tendency.AITendencyParam;

/**
 * ai 转变为其他单位
 *
 * @author shadow
 * @version v0.1 2017年10月25日 下午2:58:39  shadow
 */
public class AITransferToOtherObject implements IAIAction{

	@Override
	public boolean doAction(SceneObject self, AIActionParam param) {
		if(!checkAction(self, param)){
			return false;
		}
		int hp = (int) self.getHp();
		int dictId = Integer.parseInt(param.getCurrentParam());
		DictCopyEnemy dict = DictCopyEnemy.getDictCopyEnemy(dictId);
		if(dict == null){
			return false;
		}
		SceneMonsterObject monster = SceneObjectCreater.createMonster(dict, 0);
		monster.setHp(hp);
		
		self.getScene().getSceneController().addSceneObject(monster);
		if(self.getType() != SceneObjectType.HUMAN){
			self.getScene().getSceneController().removeSceneObjectAndPutDiedPool(self,true);
		}
		self.getController().getComponentAI().setValid(false);
		return true;
	}

	@Override
	public boolean checkAction(SceneObject self, AIActionParam param) {
//		DmcSceneObject target = param.getActionTargetObjects(self).get(0);
//		if (target == null) {
//			return false;
//		}
		return true;
	}

	@Override
	public void stop(SceneObject self) {
		
	}

	@Override
	public void reset(AIActionParam param,SceneObject self, AITendencyParam currentTendency) {
		param.setCurrentParam(param.getParam());
	}

	@Override
	public boolean isOver(SceneObject self, AIActionParam param,Collection<AIEvent> aiEvents) {
		return true;
	}

}
