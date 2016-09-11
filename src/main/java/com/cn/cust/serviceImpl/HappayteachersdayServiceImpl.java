package com.cn.cust.serviceImpl;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cn.cust.dao.HappayteachersdaysMapper;
import com.cn.cust.entities.Happayteachersdays;
import com.cn.cust.entities.HappayteachersdaysExample;
import com.cn.cust.entities.HappayteachersdaysExample.Criteria;
import com.cn.cust.service.HappayteachersdayService;

@Service("happayteachersdaysService")
public class HappayteachersdayServiceImpl implements HappayteachersdayService {

	@Resource
	HappayteachersdaysMapper happayteachersdaysMapper;
	private Criteria createCriteria;

	public int saveInfo(Happayteachersdays record) {
		String imagespath = record.getImagespath();
		if(imagespath==null || "".equals(imagespath)){
			record.setImagespath("images/green1.jpg");
		}
		record.setGoodpoints(1l);
		record.setCreatetime(new Date());
		record.setIsshow(0);
		return happayteachersdaysMapper.insert(record);
	}

	public int updateInfo(Happayteachersdays record) {
		record = happayteachersdaysMapper.selectByPrimaryKey(record.getId());
		record.setGoodpoints(record.getGoodpoints() + 1);
		record.setUpdatetime(new Date());
		return happayteachersdaysMapper.updateByPrimaryKey(record);
	}

	public List<Happayteachersdays> listTop20() {
		List<Happayteachersdays> data = happayteachersdaysMapper.selectAll();
		return data;
	}

	public List<Happayteachersdays> listTop20Example(HappayteachersdaysExample example) {
		createCriteria = example.createCriteria();
		createCriteria.andIsshowEqualTo(0);
		example.setOrderByClause("Id DESC");
		List<Happayteachersdays> data = happayteachersdaysMapper.selectByExample(example);
		return data;
	}
}
