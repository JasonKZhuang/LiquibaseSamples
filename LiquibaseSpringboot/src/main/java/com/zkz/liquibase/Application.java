package com.zkz.liquibase;

import org.springframework.boot.ApplicationRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.jdbc.core.JdbcTemplate;

@SpringBootApplication
public class Application {

    public static void main(String[] args) {
        SpringApplication.run(Application.class, args);
    }

    // this is to fetch the data from the database
    // test the effects of liquibase changelogs
    @Bean
    ApplicationRunner runner(JdbcTemplate jdbcTemplate) {
        return args -> {
            var sql = """
                        select a.id as article_id,
                               a.title,
                               a.content,
                               a.author,
                               a.published_date,
                               a.is_published,
                               c.id as comment_id,
                               c.content,
                               c.author,
                               c.created_at
                        from articles a
                         left join comments c
                         on a.id = c.article_id
                      """;
            //var articleList =  jdbcTemplate.query(sql, new ArticleRowMapper());
            //new HashSet<>(articleList).forEach(System.out::println);
        };
    }

}

