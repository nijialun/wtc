package com.dao;

import java.util.ArrayList;
import java.util.List;

public class Fibo {

	/**
	 * @param args
	 */
    
	public List<Integer> sum2(int m){  
		List<Integer>fibo=new ArrayList<Integer>(); 
		fibo.add(0);
		fibo.add(1);
        for (int i = 2; i < m; i++) {  
        	Integer sum = fibo.get(i-1)+fibo.get(i-2);
            fibo.add(sum);
        }  
		return fibo;  
    }  
        


}
