package com.game2sky.prilib.core.socket.logic.battle.newAi.transfer;

import java.util.List;

import com.game2sky.prilib.core.socket.logic.battle.ai.event.IAIAoiEvent;
import com.game2sky.prilib.core.socket.logic.battle.newAi.strategy.IAIStrategy;
import com.game2sky.publib.socket.logic.scene.unit.SceneObject;

public interface IAIStrategyTransferParam {

	IAIStrategy getNextStrategy();

	boolean transfer(SceneObject self, List<IAIAoiEvent> event);

}
