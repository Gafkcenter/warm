package com.cn.cust.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cn.cust.entities.Happayteachersdays;
import com.cn.cust.entities.HappayteachersdaysExample;
import com.cn.cust.service.HappayteachersdayService;
import com.cn.cust.utils.RequestResponseUtils;

@Controller
@RequestMapping("teacher")
public class HappayteachersdaysController {

	@Resource
	HappayteachersdayService happayteachersdaysService;

	/**
	 * 记录祝福信息
	 * @param req
	 * @param res
	 * @param record
	 */
	@RequestMapping(value = "save", method = RequestMethod.POST)
	public String saveInfo(HttpServletRequest req, HttpServletResponse res, Happayteachersdays record) {
		record.setUseragent(req.getHeader("User-Agent"));
		record.setIpaddress(RequestResponseUtils.getIp2(req));
		happayteachersdaysService.saveInfo(record);
		return "redirect:/teacher/listexample";
	}

	/**
	 * 更新点赞
	 * @param req
	 * @param res
	 * @param record
	 * @param id
	 */
	@RequestMapping(value = "update/{id}", method = RequestMethod.GET)
	public String updateInfo(HttpServletRequest req, HttpServletResponse res, Happayteachersdays record,
			@PathVariable("id") Long id) {
		record.setId(id);
		happayteachersdaysService.updateInfo(record);
		return "redirect:/teacher/listexample";
	}
	
	/**
	 * 查祝福all
	 * @param record
	 * @return
	 */
	@RequestMapping(value = "listtop", method = RequestMethod.GET)
	public String  listTop20(HttpServletRequest req,HttpServletResponse res,Model mv){
		try {
			List<Happayteachersdays> data = happayteachersdaysService.listTop20();
			mv.addAttribute("wishes",data);
		} catch (Exception e){
			e.printStackTrace();
		}
		return "data";
	}
	
	@RequestMapping(value = "listexample", method = RequestMethod.GET)
	public String  listTop20Example(HttpServletRequest req,HttpServletResponse res,Model model,HappayteachersdaysExample record) throws UnsupportedEncodingException{
		try {
			List<Happayteachersdays> data = happayteachersdaysService.listTop20Example(record);
			model.addAttribute("wishes",data);
		} catch (Exception e){
			e.printStackTrace();
		}
		model.addAttribute("feedback", req.getParameter("feedback"));
		return "data";
	}
}
