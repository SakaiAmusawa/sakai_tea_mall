package top.sakai.tmall.admin.content.dao.repository;


import top.sakai.tmall.common.pojo.po.UserStatePO;

public interface IUserCacheRepository {

    UserStatePO getUserState(Long id);
}
