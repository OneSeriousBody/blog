package com.coderwzt.dao;

import com.coderwzt.po.Tag;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.domain.Pageable;

import java.util.List;

/**
 * Created by fadeprogramerWZT on 2020/3/9.
 */
public interface TagRepository extends JpaRepository<Tag,Long> {
    Tag findByName(String name);

    @Query("select t from  Tag t")
    List<Tag> findTop(Pageable pageable);
}
