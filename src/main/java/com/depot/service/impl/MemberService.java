package com.depot.service.impl;

import com.depot.dao.IMemberDao;
import com.depot.models.Member;
import com.depot.service.IMemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberService implements IMemberService {

    @Autowired
    public IMemberDao memberDao;

    @Override
    public Member getLoginByMemberAccount(String memberAccount) {
        return memberDao.selectByMemberId(memberAccount);
    }
}
