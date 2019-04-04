package com.mysiteforme.admin;

import com.mysiteforme.admin.entity.User;
import com.mysiteforme.admin.util.ToolUtil;
import com.xiaoleilu.hutool.util.ZipUtil;
import org.junit.Test;

/**
 * Created by wangl on 2018/1/14.
 * todo:
 */
public class TestZipUtil {

    @Test
    public void testZip(){
        User user=new User();
        user.setPassword("123456");
        ToolUtil.entryptPassword(user);
        System.out.println("");
    }
}
