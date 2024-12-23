package com.example.waimai.pojo;


import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@TableName("item_children")
public class storeItem {

    @TableId(value="id",type = IdType.AUTO)
    public Integer id;

    @TableField("pic")
    public String pic;

    @TableField("title")
    public String title;

    @TableField("price")
    public double price;
}
