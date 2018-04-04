package com.depot.service;

import com.depot.models.Member;

public interface IMemberService {

    Member getLoginByMemberAccount(String memberAccount);
}
