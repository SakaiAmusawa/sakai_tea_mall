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
@TableName(value = "content_article_detail")
public class ArticleDetailPO {
    @TableId(type = IdType.AUTO)
    Long id;
    String detail;
    LocalDateTime gmtCreate;
    LocalDateTime gmtModified;
    Long articleId;

}
