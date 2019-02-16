package com.kh.duri.common;

import java.util.Calendar;
import java.util.Date;

public class CommonUtils {
	
	public static Date getNextMonth(Date date) {
		Calendar cal = Calendar.getInstance();
		cal.setTime(date);
		
		// 3분 뒤 (test용)
		cal.add(Calendar.MINUTE, 3);

		// 한달 뒤
		//cal.add(Calendar.MONTH, 1);
		
		return cal.getTime();
	}

}
