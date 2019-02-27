package com.kh.duri.payment.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.kh.duri.payment.model.exception.DirectFundException;
import com.kh.duri.payment.model.service.PaymentService;

@Component
public class DirectFundScheduler {
	@Autowired
	private PaymentService ps;
	
	@Scheduled(cron = "0 0 0 * * ?")
	public void postSend() {
		System.out.println("스케줄러 작동");
      
        int result = 0;
        String day = directFundProceed();
        try {
        	if(ps != null) {
        		result = ps.insertDirectFundDetailSchedule(day);
        		System.out.println("스케줄러 결과 조회 : " + result);
        	}
			
		} catch (DirectFundException e) {
			System.out.println("스케줄러 결과 실패 : "+ e.getMessage());
			e.printStackTrace();
		}
	}
	
	public String directFundProceed() {
		System.out.println("스케줄러 날짜 함수 작동");
		Date today = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("dd");
        System.out.println("현재날짜 : "+ sdf.format(today));
        String resultDay = sdf.format(today);
		
		return resultDay;
	}
	// 자정 작동 @Scheduled(cron = "0 0 0 * * ?") 
	// 10초에 한번씩 @Scheduled(cron = "0/10 * * * * ?")
	// 30초마다 체크 @Scheduled(fixedRate=30000)
}
