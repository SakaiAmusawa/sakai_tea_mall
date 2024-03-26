package top.sakai.tmall.front.mall.dao.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;
import top.sakai.tmall.front.mall.pojo.po.OrderPO;

@Mapper
public interface OrderMapper extends BaseMapper<OrderPO> {
}
