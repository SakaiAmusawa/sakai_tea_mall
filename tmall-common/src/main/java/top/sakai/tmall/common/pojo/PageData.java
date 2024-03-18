package top.sakai.tmall.common.pojo;

import lombok.AccessLevel;
import lombok.Data;
import lombok.experimental.FieldDefaults;

import java.io.Serializable;
import java.util.List;

@Data
@FieldDefaults(level = AccessLevel.PRIVATE)
public class PageData<T> implements Serializable {

    Integer pageNum;
    Integer pageSize;
    Long total;
    /**
     * 具体的数据
     * 商品列表
     * 文章列表
     */
    List<T> list;

}
