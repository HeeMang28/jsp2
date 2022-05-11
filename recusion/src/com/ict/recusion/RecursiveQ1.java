package com.ict.recusion;

public class RecursiveQ1 {
	
	public static void recursive(int num) {
		
		if(num > 9 ) {
			return;
			
		}
		
		System.out.println("recursive : " + num);
		recursive(num + 2);
	}
	public static void main(String[] args) {
		recursive(5);

	}

}
