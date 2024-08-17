package com.zkz.liquibase.records;

import java.time.LocalDateTime;
import java.util.List;

/**
 * @author Jason Zhuang
 * @created 2024.08.17 10:32
 * @project LiquiBase
 * @description:
 */
public record Article(
        Long id,               // Primary Key
        String title,         // Title of the article
        String content,       // Content of the article
        String author,        // Author of the article
        LocalDateTime publishedDate, // Published date (timestamp)
        Boolean isPublished,   // Publication status
        List<Comment> comments // List of comments
) {
    // This record represents the `articles` table in the database.
    // The table could have a one-to-many relationship with other tables,
    // such as comments or tags, but this would be modeled in a separate class or record.
}