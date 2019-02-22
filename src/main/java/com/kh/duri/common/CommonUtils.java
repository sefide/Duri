package com.kh.duri.common;

import java.util.ArrayList;
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
	
	public static ArrayList<Date> getNextMonthList(Date date, int subDay) {
		ArrayList<Date> list = new ArrayList<Date>();
		
		//Calendar cal = Calendar.getInstance();
		//cal.setTime(date);

	    //cal.set(Calendar.MONTH , Calendar.JUNE);
		// 3분 뒤 (test용)
		/*for (int i = 0; i < 3; i++) {  // 3개월 예약
			cal.add(Calendar.MONTH, 1);
		    cal.set(Calendar.DAY_OF_MONTH , subDay);
		    System.out.println("지정 시간" + i+ " : " + cal.getTime());
		    list.add(cal.getTime());
		}*/
		
		Calendar cal = Calendar.getInstance();
		cal.set(Calendar.YEAR, 2019);
		cal.set(Calendar.MONTH, Calendar.FEBRUARY);
		cal.set(Calendar.DAY_OF_MONTH, 23);
		Date d1 = cal.getTime();
		
		cal.set(Calendar.YEAR, 2019);
		cal.set(Calendar.MONTH, Calendar.FEBRUARY);
		cal.set(Calendar.DAY_OF_MONTH, 24);
		Date d2 = cal.getTime();
		
		cal.set(Calendar.YEAR, 2019);
		cal.set(Calendar.MONTH, Calendar.FEBRUARY);
		cal.set(Calendar.DAY_OF_MONTH, 25);
		Date d3 = cal.getTime();
		
		list.add(d1);
		list.add(d2);
		list.add(d3);
		
		return list;
	}
	
}
