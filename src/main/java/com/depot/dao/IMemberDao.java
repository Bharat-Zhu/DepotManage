package com.depot.dao;

import com.depot.models.Member;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

public interface IMemberDao {

    @Select("SELECT member_id AS memberId, member_name AS memberName, member_account AS memberAccount, member_pwd AS memberPwd, authority_id AS authorityId FROM cbd_member WHERE member_account = #{memberAccount} AND del_flg = 0")
    Member selectByMemberId(@Param("memberAccount") String memberAccount);
}
