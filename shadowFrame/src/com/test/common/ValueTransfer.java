package com.test.common;

/**
 * 对象参数也是值传递，引用传递是个伪命题
 *
 * @author shadow
 */
public class ValueTransfer {

    class Person {
        String name;

        Person(String name) {
            this.name = name;
        }

        public String getName() {
            return name;
        }
    }

    public void update(Person person) {
        System.out.println("local " + person + ":" + person.getName());
        person = new Person("李四");
        System.out.println("local " + person + ":" + person.getName());
    }

    public void runTest() {
        Person person = new Person("张三");
        System.out.println("修改之前 " + person + ":" + person.getName());

        update(person);
        System.out.println("修改之后 " + person + ":" + person.getName());
    }

    public static void main(String[] args) {
        new ValueTransfer().runTest();
    }
}
