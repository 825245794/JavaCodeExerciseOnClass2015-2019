package com.mall.biz;

import java.util.List;

import com.mall.dao.impl.DBDao;
import com.mall.entity.UserEntity;
import com.mall.global.Constant;

public class LoginManager {
    public List<UserEntity> verifyPassword(String email){
    	List<UserEntity> list=new DBDao().search(String.format(Constant.SELECT_M_USER,email), UserEntity.class);
    	return list;
    }
}
