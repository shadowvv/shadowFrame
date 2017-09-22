package com.shadowFrame.ai.threshold;

/**
 * ai值比较方式
 * @author Administrator
 *
 */
public enum AIValueCompareEnum {
	/**
	 * ==
	 */
	equal(1,new IValueCompare(){
		public boolean compare(double sourceValue, double targetValue) {
			return sourceValue == targetValue;
		};
	}),
	/**
	 * >
	 */
	bigger(2,new IValueCompare(){
		public boolean compare(double sourceValue, double targetValue) {
			return sourceValue > targetValue;
		};
	}),
	/**
	 * <
	 */
	smaller(3,new IValueCompare(){
		public boolean compare(double sourceValue, double targetValue) {
			return sourceValue < targetValue;
		};
	}),
	/**
	 * <=
	 */
	NotBigger(4,new IValueCompare(){
		public boolean compare(double sourceValue, double targetValue) {
			return sourceValue <= targetValue;
		};
	}),
	/**
	 * >=
	 */
	NotSmaller(5,new IValueCompare(){
		public boolean compare(double sourceValue, double targetValue) {
			return sourceValue >= targetValue;
		};
	}),
	/**
	 * <>
	 */
	Range(6,new IValueCompare(){
		@Override
		public boolean compare(double sourceValue, double targetValue) {
			if(sourceValue > targetValue + 2){
				return false;
			}
			if(sourceValue < targetValue - 2){
				return false;
			}
			System.out.println("!!!!!!!!!!!!!!!!!!!!!!"+sourceValue);
			return true;
		}
	}),
	;
	
	interface IValueCompare{
		boolean compare(double sourceValue, double targetValue);
	}
	
	private static AIValueCompareEnum[] enums = AIValueCompareEnum.values();

	/**
	 * 获得值比较方式
	 * @param id 方式id
	 * @return
	 */
	public static AIValueCompareEnum getCompare(int id) {
		for (AIValueCompareEnum aiEnum : enums) {
			if (aiEnum.id == id) {
				return aiEnum;
			}
		}
		return null;
	}
	
	private int id;
	private IValueCompare compare;
	
	private AIValueCompareEnum(int id,IValueCompare compare) {
		this.id = id;
		this.compare = compare;
	}

	/**
	 * 比较
	 * @param sourceValue 源数据
	 * @param targetValue 与该数据比较
	 * @return
	 */
	public boolean compare(double sourceValue, double targetValue) {
		return compare.compare(sourceValue, targetValue);
	}

	/**
	 * 
	 * @return Id
	 */
	public int getId() {
		return id;
	}

}
