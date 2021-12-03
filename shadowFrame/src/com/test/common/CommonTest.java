package com.test.common;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * @author shadow
 * @version 1.0.0
 * @time 2021/11/11 17:26
 */
public class CommonTest {

    public static void main(String[] args) {
        String regex = "名[字諱].{0,4}不能[提説]|不能[提説].{0,4}名[字諱]";
        Pattern pattern = Pattern.compile(regex);
        Matcher test = pattern.matcher("555阿瑟王如果名字不能説阿萨的股份认不能説名字购");
        test.find();
        System.out.println(test.group());
        System.out.println(test.start());
        System.out.println(test.end());

        test.find();
        System.out.println(test.group());
        System.out.println(test.start());
        System.out.println(test.end());

        int count = test.groupCount();
        System.out.println(count);
        for (int i = 0; i < count; i++) {
            System.out.println(test.group(i));
        }
        System.out.println(test.replaceAll("*"));
    }

}
