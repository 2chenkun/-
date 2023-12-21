package com.bjpowernode.oa.bean;

import java.text.SimpleDateFormat;
import java.util.Date;

public class www {
    public static void main(String[] args) {
        SimpleDateFormat simpleDateFormat=new SimpleDateFormat("yyyy-MM-dd");
        String transformDate=simpleDateFormat.format(new Date());
        System.out.println(transformDate);
    }
}
