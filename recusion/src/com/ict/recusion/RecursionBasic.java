package com.ict.recusion;

public class RecursionBasic {
	
	public static void recursive(int num) {
		
		if(num < 1) {
			// 1. 재귀함수의 조건 똑같은 명칭(자기 자신)의 메서드를 호출하는 구간이 있어야한다.
			// 2. 특정한 조건이 만족할때 메서드를 종료하는 구간이 있어야 함.
			// 3. 
			return;
		}
		
		System.out.println("recursive : " + num);
		recursive(num - 1);
	}
	public static void main(String[] args) {
		recursive(3);

	}

}
