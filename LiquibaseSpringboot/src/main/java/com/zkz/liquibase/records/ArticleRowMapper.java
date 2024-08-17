package com.zkz.liquibase.records;

import lombok.SneakyThrows;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/**
 * @author Jason Zhuang
 * @created 2024.08.17 10:32
 * @project LiquiBase
 * @description:
 */
public class ArticleRowMapper implements RowMapper<Article> {

    private final Map<Long, Article> articleMap = new ConcurrentHashMap<>();

    @Override
    public Article mapRow(ResultSet rs, int rowNum) throws SQLException {
        var articleId = rs.getLong("article_id");
        var commentId = rs.getLong("comment_id");
        var article = articleMap.computeIfAbsent(articleId, aId -> build(aId, rs));
        if (commentId > 0) {
            article.comments().add(new Comment(commentId,
                    rs.getString("content"),
                    rs.getString("author"),
                    rs.getTimestamp("created_at").toLocalDateTime())
            );
        }
        return article;

    }

    @SneakyThrows
    private Article build(Long id, ResultSet rs) {
        var title = rs.getString("title");
        var content = rs.getString("content");
        var author = rs.getString("author");
        var publishedDate = rs.getTimestamp("published_date").toLocalDateTime();
        var isPublished = rs.getBoolean("is_published");
        return new Article(id, title, content, author, publishedDate, isPublished, new ArrayList<>());
    }


}