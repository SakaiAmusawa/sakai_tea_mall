package top.sakai.tmall.front.mall.dao.repository;

import top.sakai.tmall.front.mall.pojo.po.UserAddressPO;

public interface IUserRepository {
    UserAddressPO getAddressByUserIdAndAddressId(Long id, Integer addressId);
}
