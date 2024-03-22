package top.sakai.tmall.passport.dao.repository;

import top.sakai.tmall.passport.pojo.po.UserStatePO;

public interface IUserCacheRepository {
    void saveUserState(UserStatePO userStatePO);
}
