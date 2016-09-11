package com.cn.cust.serviceImpl;

import java.util.Date;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cn.cust.dao.FeedbackMapper;
import com.cn.cust.entities.Feedback;
import com.cn.cust.service.FeedBackService;

@Service("feedBackService")
public class FeedBackServiceImpl implements FeedBackService {

	@Resource
	FeedbackMapper feedbackMapper;

	public int saveInfo(Feedback record) {
		record.setCreatetime(new Date());
		record.setIsshow(1);
		Long id = record.getId();
		int number;
		if(id != null && id>0 ){
			number = this.updateInfo(record);
		}else{
			number = feedbackMapper.insert(record);
		}
		return number;
	}

	public int updateInfo(Feedback record) {
		record = feedbackMapper.selectByPrimaryKey(record.getId());
		record.setUpdatetime(new Date());
		return feedbackMapper.updateByPrimaryKey(record);
	}

}
