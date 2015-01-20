package edu.cuc.culturaldev.common.job;

import java.util.Date;
import java.util.List;

import lombok.extern.slf4j.Slf4j;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


@Component(value="initJob")
@Slf4j
public class InitJob {

	
	public void execute(){
		log.info("initJob");
		
	}
}
