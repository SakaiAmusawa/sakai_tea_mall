package top.sakai.tmall.front.mall.dao.repository.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import top.sakai.tmall.front.mall.dao.mapper.UserAddressMapper;
import top.sakai.tmall.front.mall.dao.repository.IUserRepository;
import top.sakai.tmall.front.mall.pojo.po.UserAddressPO;

@Repository
public class UserRepository implements IUserRepository {
    @Autowired
    private UserAddressMapper userAddressMapper;

    @Override
    public UserAddressPO getAddressByUserIdAndAddressId(Long userId, Integer addressId) {
        QueryWrapper qw = new QueryWrapper();
        qw.eq("user_id", userId);
        qw.eq("id", addressId);
        return userAddressMapper.selectOne(qw);
    }
}
