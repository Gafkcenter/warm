package com.cn.cust.service;

import java.util.List;

import com.cn.cust.entities.Happayteachersdays;
import com.cn.cust.entities.HappayteachersdaysExample;

public interface HappayteachersdayService {

	public int saveInfo(Happayteachersdays record);

	public int updateInfo(Happayteachersdays record);

	public List<Happayteachersdays> listTop20();

	public List<Happayteachersdays> listTop20Example(HappayteachersdaysExample record);
}
