package com.example.waimai.pojo;


import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@TableName("content_nav_data")
public class contentNavData {

    @TableId(value="id",type = IdType.AUTO)
    public Integer id;

    @TableField("pic")
    public String pic;

    @TableField("title")
    public String title;

    @TableField("sales")
    public Integer sales;

    @TableField("price")
    public double price;

}
