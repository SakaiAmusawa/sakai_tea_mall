package top.sakai.tmall.admin.content.pojo.po;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.AccessLevel;
import lombok.Data;
import lombok.experimental.FieldDefaults;

import java.time.LocalDateTime;

@Data
@FieldDefaults(level = AccessLevel.PRIVATE)
@TableName(value = "content_article")
public class ArticlePO {
    @TableId(type = IdType.AUTO)
    Long id;
    String title;
    LocalDateTime gmtCreate;
    LocalDateTime gmtModified;
    Long categoryId;
}
