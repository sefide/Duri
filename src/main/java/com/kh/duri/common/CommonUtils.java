package com.kh.duri.common;

import java.util.Calendar;
import java.util.Date;

public class CommonUtils {
	
	public static Date getNextMonth(Date date) {
		Calendar cal = Calendar.getInstance();
		cal.setTime(date);
		
		// 3분 뒤 (test용)
		cal.add(Calendar.MINUTE, 3);
		//cal.add(Calendar.DATE, 60);
		// 한달 뒤
		//cal.add(Calendar.MONTH, 1);
		
		return cal.getTime();
	}
	
	public static Date getMonth(Date date, int addDay) {
		Calendar cal = Calendar.getInstance();
		cal.setTime(date);
		
		// addDay일 뒤 날짜 
		cal.add(Calendar.DATE, addDay);
	
		return cal.getTime();
	}

}
