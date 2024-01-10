package com.es.entity.vo;

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.util.function.Consumer;

/**
 * 代理小工具，通过代理将实体类的属性传递到另一个实体类中
 */
public interface BaseData {
    /**
     * 通过Consumer类，实现lambda表达式来调用方法
     * @param clazz 获得参数的类
     * @param consumer lambda表达式
     * @return 一个实体类
     * @param <V> 指定的类
     */
    default <V> V asViewObject(Class<V> clazz, Consumer<V> consumer) {
        V v = this.asViewObject(clazz);
        consumer.accept(v);
        return v;
    }
    default <V> V asViewObject(Class<V> clazz){
        try {
            Field[] declaredFields = clazz.getDeclaredFields();//得到对象的所有属性
            Constructor<V> constructor = clazz.getConstructor();//得到类构造器
            V v = constructor.newInstance();//创建实例
            for (Field declaredField : declaredFields) {
                convert(declaredField,v);
            }
            return v;
        } catch (ReflectiveOperationException e) {
            throw new RuntimeException(e.getMessage());
        }
    }

    private void convert(Field field, Object vo) {
        try {
            Field source = this.getClass().getDeclaredField(field.getName());//获取当前类的字段
            field.setAccessible(true);//设置可访问
            source.setAccessible(true);
            field.set(vo,source.get(this));
        } catch (IllegalAccessException | NoSuchFieldException ignored) {

        }
    }
}
