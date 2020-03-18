package com.coderwzt.service;

import com.coderwzt.po.Tag;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

/**
 * Created by fadeprogramerWZT on 2020/3/9.
 */
public interface TagService {
    //保存
    Tag saveTag(Tag tag);
    //查询
    Tag getTag(Long id);
    //分页
    Page<Tag> listTag(Pageable pageable);
    //修改
    Tag updateTag(Long id,Tag tag);
    //删除
    void deleteTag(Long id);

    Tag getTagByName(String name);

    List<Tag> listTag();

    List<Tag> listTag(String ids);

    List<Tag> listTagTop(Integer size);
}
