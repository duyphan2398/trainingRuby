# NUS REVIEW CODE RESULT FOR TEAM GUIDELINE

### Issues from last review and their status
---------

**Issues from last review and their status to control the fixing progress. Status: Fixed or not and reason if not fixed yet**

### Issues
---------

**Issues found in this review, also assign each issue to member(s). This section include these parts:**

#### Architecture

**The issues that are related to architecture, structure and infrastructure, example:**

1. Third-parties JS/CSS libraries should be placed in vendor instead of app/assets
2. All logic code are placed in controllers. It makes the application is difficult to be maintained or reused (e.g: API for mobile app in the future). We should use additional layer for business code (e.g: "service" layer)
3. I don't have access to your current server, so I'm not sure if former developer did special configuration on it (seem not). Based on current configurations, the application stores images on app server itself. This means current source code cannot be used as a load balancing system
4. Didn't follow RESTful for resource

#### Security

**The issues that are related to security: authentication, authorization, SSL, known vulnarabilities... Example:**

1. Almost no authorization. This is BIG security issue. E.g: in products controller, **anyone** can update/delete **any product**
2. We recommend to use SSL (HTTPS) for e-commerce application
3. Default admin account's password is "12345678", it is a bad practice and it shows the unprofessional style.
4. Sensitive information are stored in source code and pushed to Github, it is potential risk and a bad practice

#### Performance

**The issues that are related to performance, also include solution issues (e.g: polling instead of socket). Example:**

1. Many indexes are missing, this will cause critical performance issues when data grows
2. Almost code that get an amount of records (e.g: get 20 products to show on home page) is **pull all** records in database to Ruby and get an amount of records here. It is **very bad** thing and it will **kill the server** when we have large data
3. Some N+1 issue (e.g: do 100 + 1 queries when having 100 product instead of just 2 queries)
4. No counter cache was used. We should use this instead of querying to count an association records
5. No caching was used
6. Some tasks are not performed in background as they should. This affect server serving capabilities and UX (user's experiences)

#### Coding conventions & best practices

**Example:**

0. TOO MANY funny/strange code. Even worse than my company's internship after 2-month training
1. LOT of duplicated code, hard to maintain and continue development
2. LOT of commented code, look very ugly and not clean
3. NO comments found for complex logic code
4. Almost no power of ActiveRecord was used: scope, association
5. Gemfile should define version for each gem
6. NO unit tests found
7. Should not push public/assets
8. Should use HAML/SLIM instead of ERB to write less code and develop more quickly
9. The view contains many logic code, we should never do this, view logic should be in helpers
10. I18n was not used. This is bad because it will be hard if we want to have multi-language feature in the future; using I18n also helps us manage texts better too
11. Many inline javascript
12. Full of misspelled words
13. Too many debug code exist
14. Don't have auto deployment script
15. Too much other things to list...

### Lessons learned
-------

**Lessons learned from this review code. They are mostly the summary of important issues, including how to prevent repeated issues**
