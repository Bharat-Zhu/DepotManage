package com.depot.dao;

import com.depot.models.User;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

public interface IUserDao {

    @Select("SELECT * FROM cbd_user WHERE del_flg = 0 AND binary user_number = #{userNumber}")
    User selectByUserNumber(@Param("userNumber") String userNumber);
}
