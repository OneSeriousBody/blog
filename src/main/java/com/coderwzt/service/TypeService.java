package com.coderwzt.service;

import com.coderwzt.po.Type;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by fadeprogramerWZT on 2020/3/8.
 */
public interface TypeService {
    //保存
    Type saveType(Type type);
    //查询
    Type getType(Long id);
    //分页
    Page<Type> listType(Pageable pageable);
    //修改
    Type updateType(Long id,Type type);
    //删除
    void deleteType(Long id);

    Type getTypeByName(String name);

    List<Type> listType();

    List<Type> listTypeTop(Integer size);
}
