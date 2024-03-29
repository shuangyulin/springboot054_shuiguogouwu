package com.entity.view;

import com.entity.JifenduihuanjiluEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 积分兑换记录
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-04-11 23:50:04
 */
@TableName("jifenduihuanjilu")
public class JifenduihuanjiluView  extends JifenduihuanjiluEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public JifenduihuanjiluView(){
	}
 
 	public JifenduihuanjiluView(JifenduihuanjiluEntity jifenduihuanjiluEntity){
 	try {
			BeanUtils.copyProperties(this, jifenduihuanjiluEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
