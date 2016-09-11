package com.cn.cust.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cn.cust.entities.Feedback;
import com.cn.cust.service.FeedBackService;
import com.cn.cust.utils.RequestResponseUtils;

@Controller
@RequestMapping("feedback")
public class FeedBackController {

	@Autowired
	FeedBackService feedBackService;
	
	/**
	 * 跳转到反馈
	 * @param req
	 * @param res
	 * @param record
	 * @return
	 */
	@RequestMapping(value = "indexform", method = RequestMethod.GET)
	public String toFeedBack(HttpServletRequest req, HttpServletResponse res) {
		return "feedback";
	}
	/**
	 * 意见建议与反馈用户信息
	 * @param req
	 * @param res
	 * @param record
	 * @return
	 */
	@RequestMapping(value = "save", method = RequestMethod.POST)
	public String saveInfo(HttpServletRequest req, HttpServletResponse res, Feedback record,Model model) {
		record.setUseragent(req.getHeader("User-Agent"));
		record.setIpaddress(RequestResponseUtils.getIp2(req));
		feedBackService.saveInfo(record);
		model.addAttribute("feedback", "谢谢您的关注与反馈,您的反馈已经提交到我们客服系统中,我们将第一时间对您的意见建议作出回应。谢谢");
		return "redirect:/teacher/listexample";
	}
	
	/**
	 * 按ID反馈给用户
	 * @param req
	 * @param res
	 * @param record
	 * @return
	 */
	@RequestMapping(value = "update/{id}", method = RequestMethod.GET)
	public String updateInfo(HttpServletRequest req, HttpServletResponse res, Feedback record) {
		feedBackService.updateInfo(record);
		return "redirect:/teacher/listexample";
	}
}
