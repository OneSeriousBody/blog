package com.coderwzt.service;

import com.coderwzt.po.Comment;

import java.util.List;

/**
 * Created by fadeprogramerWZT on 2020/3/14.
 */
public interface CommentService {

    List<Comment> listCommentByBlogId(Long blogId);

    Comment saveComment(Comment comment);
}
