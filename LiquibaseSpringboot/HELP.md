# Getting Started
## 1. Run the application to execute the liquibase flow
Prerequisites:
- the scheme (spring) is already created in the database
- postgresql url, username and password are set in the application.properties file
- changelog file is created in the resources/db/changelog folder following the name convention: db.changelog-v.X.xml
- the new changelog file is added to the master changelog file: db.changelog-root.xml


## 2. the following is to use liquibase CLI commands to generate the changelog file
```bash
    mvn liquibase:update
    mvn liquibase:generateChangeLog -Dliquibase.outputChangeLogFile=src/main/resources/db/changelog/generatedChangeLog.sql
```

## 3. liquibase concepts
- [Changelog](https://docs.liquibase.com/concepts/changelogs/home.html)  
  A Changelog file to sequentially list all changes made to your database  
- [Changeset](https://docs.liquibase.com/concepts/changelogs/changeset.html)  
  A Changeset is the basic unit of change in Liquibase. You store all your changesets in your Changelog. Your changesets contain Change Types that specify what each change does, like creating a new table or adding a column to an existing table.
- File formats:  
  - XML  
  - SQL 
- Runtime logic    
  When you run a database update, Liquibase reads the changesets in your changelog in order.
- Changeset Attributes
- runOnChange attribute  
  Checksums are also used in conjunction with the runOnChange changeset attribute. There are times you may not want to add a new changeset because you only need to know about the current version, but you want this change to be applied whenever it is updated. For example, you can do this with stored procedures.
- [Liquibase Commands](https://docs.liquibase.com/commands/home.html)  


