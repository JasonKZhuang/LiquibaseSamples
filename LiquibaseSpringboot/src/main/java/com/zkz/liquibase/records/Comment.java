package com.zkz.liquibase.records;

import java.time.LocalDateTime;

/**
 * @author Jason Zhuang
 * @created 2024.08.17 10:31
 * @project LiquiBase
 * @description:
 */
public record Comment(
        Long id,               // Primary Key
//		int articleId,        // Foreign Key referencing the articles table
        String content,       // Content of the comment
        String author,        // Author of the comment
        LocalDateTime createdAt // Timestamp when the comment was created
) {
    // This record represents the `comments` table in the database.
    // The `articleId` field establishes a foreign key relationship with the `articles` table.
}