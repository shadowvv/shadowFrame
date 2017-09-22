package com.shadowFrame.ai.phase;


/**
 * ai阶段
 * 
 * @author shadow
 *
 */
public enum AIPhaseEnum {
	
	OnePhase(1),
	
	
	;
	
	private static AIPhaseEnum[] enums = AIPhaseEnum.values();

	public static AIPhaseEnum getPhase(int id) {
		for (AIPhaseEnum aiEnum : enums) {
			if (aiEnum.id == id) {
				return aiEnum;
			}
		}
		return null;
	}
	
	private int id;
	
	private AIPhaseEnum(int id) {
		this.id = id;
	}

	/**
	 * 
	 * @return
	 */
	public int getId() {
		return id;
	}

}
