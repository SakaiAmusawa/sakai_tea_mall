package top.sakai.tmall.common.pojo;

import lombok.AccessLevel;
import lombok.Data;
import lombok.experimental.FieldDefaults;

@Data
@FieldDefaults(level = AccessLevel.PRIVATE)
public class CurrentUser {
    /**
     * 用户id
     */
    Long id;

    /**
     * 当事人用户名
     */
    String username;
}
