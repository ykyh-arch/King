package org.king.common;

/**
 * @ClassName: Test
 * @Description: 测试类
 * @Author: Uetec
 * @Date: 2020/10/30-10:11
 * @Version: 1.0
 **/
public class Test {
    public int compute(){
        int a = 1;
        int b = 2;
        int c = (a + b) * 10;
        return c;
    }

    public static void main(String[] args) {
        Test test = new Test();
        test.compute();
        System.out.println("test");
    }
}
