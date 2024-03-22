package top.sakai.tmall.front.mall.dao.repository;


import top.sakai.tmall.common.pojo.po.UserStatePO;

public interface IUserCacheRepository {
    UserStatePO getUserState(Long id);
}
