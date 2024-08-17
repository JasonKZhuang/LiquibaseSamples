DROP TABLE articles cascade ;

CREATE TABLE articles (
                          id SERIAL PRIMARY KEY,
                          title VARCHAR(255) NOT NULL,
                          content TEXT NOT NULL,
                          author VARCHAR(100),
                          published_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                          is_published BOOLEAN DEFAULT FALSE
);

DROP TABLE comments cascade ;
CREATE TABLE comments (
                          id SERIAL PRIMARY KEY,
                          article_id INT,
                          content TEXT NOT NULL,
                          author VARCHAR(100),
                          created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

ALTER TABLE comments
    ADD CONSTRAINT fk_article
        FOREIGN KEY (article_id)
            REFERENCES articles(id)
            ON DELETE CASCADE;




INSERT INTO articles (title, content, author, published_date, is_published)
VALUES
    ('The Future of Artificial Intelligence', 'Artificial Intelligence is rapidly evolving, with advancements in machine learning and deep learning pushing the boundaries of what is possible. In this article, we explore the potential future developments and their impact on various industries.', 'Jane Doe', '2024-08-01 10:00:00', TRUE),

    ('Understanding Quantum Computing', 'Quantum computing promises to revolutionize the field of computing by solving complex problems much faster than classical computers. This article provides an overview of quantum computing principles and their potential applications.', 'John Smith', '2024-08-05 14:30:00', TRUE),

    ('The Evolution of Web Development', 'Web development has come a long way since the early days of HTML and CSS. We discuss the evolution of web technologies, from static pages to dynamic web applications, and what the future holds for web development.', 'Emily Johnson', '2024-08-10 09:45:00', TRUE),

    ('Climate Change and Its Global Effects', 'Climate change is one of the most pressing issues of our time. This article examines the global effects of climate change, including rising sea levels, extreme weather events, and impacts on biodiversity.', 'Michael Brown', '2024-08-12 16:00:00', TRUE),

    ('The Rise of Remote Work', 'Remote work has become increasingly popular, especially in the wake of the COVID-19 pandemic. We explore the benefits and challenges of remote work and its long-term implications for the future of work.', 'Sara Davis', '2024-08-15 11:20:00', TRUE),

    ('Exploring Space Tourism', 'Space tourism is an exciting frontier in the travel industry. This article delves into the current state of space tourism, key players in the industry, and what future space travelers can expect.', 'Robert Wilson', '2024-08-20 13:10:00', TRUE),

    ('Advancements in Renewable Energy', 'Renewable energy sources are critical to reducing our carbon footprint. We highlight recent advancements in solar, wind, and hydro energy technologies and their impact on the energy sector.', 'Linda Miller', '2024-08-22 15:00:00', TRUE),

    ('The Importance of Mental Health Awareness', 'Mental health awareness is crucial for reducing stigma and providing support. This article discusses the importance of mental health awareness and ways to promote mental well-being in communities.', 'David Martinez', '2024-08-25 08:30:00', TRUE),

    ('The Impact of Social Media on Society', 'Social media has a profound impact on society, influencing everything from communication to politics. We analyze the positive and negative effects of social media on modern life.', 'Rachel Anderson', '2024-08-28 12:00:00', TRUE),

    ('Trends in Mobile App Development', 'Mobile app development continues to evolve with new technologies and user expectations. This article reviews the latest trends in mobile app development and what developers should focus on.', 'James Lee', '2024-08-30 17:45:00', TRUE);


-- Comments for Article 1: 'The Future of Artificial Intelligence'
INSERT INTO comments (article_id, content, author, created_at)
VALUES
    (1, 'Great article! The future of AI looks very promising.', 'Alice Williams', '2024-08-01 11:00:00'),
    (1, 'I’m excited about the potential of AI in healthcare.', 'Bob Johnson', '2024-08-01 12:15:00'),
    (1, 'The discussion on machine learning is very insightful.', 'Charlie Brown', '2024-08-01 13:45:00'),
    (1, 'I’m concerned about the ethical implications of AI.', 'Diana Smith', '2024-08-01 15:00:00'),
    (1, 'Looking forward to seeing these advancements in action.', 'Eve Davis', '2024-08-01 16:20:00'),
    (1, 'Interesting read. What about the impact on jobs?', 'Frank Miller', '2024-08-01 17:35:00'),
    (1, 'Could you provide more examples of AI applications?', 'Grace Wilson', '2024-08-01 18:50:00'),
    (1, 'This article covers some exciting possibilities.', 'Hank Moore', '2024-08-01 20:05:00'),
    (1, 'The potential of AI in education is fascinating.', 'Ivy Lee', '2024-08-01 21:30:00'),
    (1, 'Excellent overview of future AI technologies.', 'Jack Anderson', '2024-08-01 22:45:00');

-- Comments for Article 2: 'Understanding Quantum Computing'
INSERT INTO comments (article_id, content, author, created_at)
VALUES
    (2, 'Quantum computing could be a game changer for cryptography.', 'Laura Green', '2024-08-05 15:00:00'),
    (2, 'I found the section on quantum entanglement particularly interesting.', 'Mike Scott', '2024-08-05 16:20:00'),
    (2, 'Can you explain how quantum computers differ from classical ones?', 'Nina Thomas', '2024-08-05 17:45:00'),
    (2, 'Looking forward to seeing practical quantum computing applications.', 'Owen Clark', '2024-08-05 19:00:00'),
    (2, 'The potential for solving complex problems is exciting.', 'Pamela Adams', '2024-08-05 20:30:00'),
    (2, 'Great introduction, but it could use more technical details.', 'Quincy Lewis', '2024-08-05 21:50:00'),
    (2, 'How does quantum computing impact data security?', 'Rachel Evans', '2024-08-05 23:15:00'),
    (2, 'I appreciate the clear explanations in this article.', 'Steve Walker', '2024-08-06 08:00:00'),
    (2, 'This is a complex topic, but well-covered.', 'Tina Young', '2024-08-06 09:45:00'),
    (2, 'The future of quantum computing seems very promising.', 'Ursula Hill', '2024-08-06 11:30:00');

-- Comments for Article 3: 'The Evolution of Web Development'
INSERT INTO comments (article_id, content, author, created_at)
VALUES
    (3, 'Web development has changed so much over the years!', 'Vera Adams', '2024-08-10 10:00:00'),
    (3, 'The shift to responsive design was a game changer.', 'Will Clark', '2024-08-10 11:15:00'),
    (3, 'I’m interested in the impact of modern JavaScript frameworks.', 'Xander Taylor', '2024-08-10 12:45:00'),
    (3, 'Great overview of the evolution of web technologies.', 'Yvonne Martinez', '2024-08-10 14:00:00'),
    (3, 'How do you see the role of AI in web development?', 'Zachary Young', '2024-08-10 15:30:00'),
    (3, 'The discussion on web performance optimization was useful.', 'Alice Davis', '2024-08-10 17:00:00'),
    (3, 'The rise of single-page applications is revolutionary.', 'Bob Wilson', '2024-08-10 18:15:00'),
    (3, 'Looking forward to the next trends in web development.', 'Charlie Green', '2024-08-10 19:30:00'),
    (3, 'The impact of user experience design is crucial.', 'Diana Lee', '2024-08-10 21:00:00'),
    (3, 'This article provided a great historical perspective.', 'Emily Clark', '2024-08-10 22:15:00');

-- Comments for Article 4: 'Climate Change and Its Global Effects'
INSERT INTO comments (article_id, content, author, created_at)
VALUES
    (4, 'The effects of climate change are becoming more evident.', 'Frank Johnson', '2024-08-12 09:00:00'),
    (4, 'It’s alarming to see the impact on polar ice caps.', 'Grace Smith', '2024-08-12 10:30:00'),
    (4, 'I appreciate the detailed analysis of extreme weather events.', 'Hank Brown', '2024-08-12 12:00:00'),
    (4, 'What can we do on an individual level to combat climate change?', 'Ivy Wilson', '2024-08-12 13:45:00'),
    (4, 'The article raises important issues about biodiversity.', 'Jack Lee', '2024-08-12 15:30:00'),
    (4, 'More emphasis on renewable energy solutions would be helpful.', 'Karen Taylor', '2024-08-12 17:00:00'),
    (4, 'The impact on coastal cities is a major concern.', 'Liam Davis', '2024-08-12 18:20:00'),
    (4, 'Interesting read, but I’d like more data on long-term trends.', 'Mia Martinez', '2024-08-12 19:45:00'),
    (4, 'The connection between climate change and health issues is crucial.', 'Noah Anderson', '2024-08-12 21:00:00'),
    (4, 'This article should be a wake-up call for everyone.', 'Olivia White', '2024-08-12 22:30:00');

-- Comments for Article 5: 'The Rise of Remote Work'
INSERT INTO comments (article_id, content, author, created_at)
VALUES
    (5, 'Remote work has definitely changed the way we view work-life balance.', 'Paul Harris', '2024-08-15 09:00:00'),
    (5, 'The flexibility of remote work is a major advantage.', 'Quincy Evans', '2024-08-15 10:20:00'),
    (5, 'I’d like to see more on the challenges of remote team management.', 'Rita Clark', '2024-08-15 11:45:00'),
    (5, 'The shift to remote work has accelerated the use of digital tools.', 'Steve Lewis', '2024-08-15 13:00:00'),
    (5, 'How do you address feelings of isolation when working remotely?', 'Tina Adams', '2024-08-15 14:30:00'),
    (5, 'Remote work is here to stay, but there are still many hurdles.', 'Ursula Wilson', '2024-08-15 16:00:00'),
    (5, 'I found the tips on maintaining productivity very useful.', 'Victor Green', '2024-08-15 17:15:00'),
    (5, 'What are the long-term effects of remote work on company culture?', 'Wendy Brown', '2024-08-15 18:45:00'),
    (5, 'The article highlights some great benefits of remote work.', 'Xander Adams', '2024-08-15 20:00:00'),
    (5, 'Looking forward to more insights on remote work trends.', 'Yvonne Davis', '2024-08-15 21:30:00');


select a.id,a.title,c.id,c.author from articles a
                                           left join spring.comments c on a.id = c.article_id
order by a.id
;
