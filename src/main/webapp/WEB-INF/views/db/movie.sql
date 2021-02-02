-- 테이블 순서는 관계를 고려하여 한 번에 실행해도 에러가 발생하지 않게 정렬되었습니다.

-- movie Table Create SQL
CREATE TABLE movie
(
    movie_no              NUMBER          NOT NULL, 
    movie_title           VARCHAR2(20)    NULL, 
    movie_director        VARCHAR2(20)    NULL, 
    movie_audience        VARCHAR2(50)    NULL, 
    movie_opening_date    DATE            NULL, 
    movie_nation          VARCHAR2(40)    NULL, 
    CONSTRAINT MOVIE_PK PRIMARY KEY (movie_no)
)
/

CREATE SEQUENCE movie_SEQ
START WITH 1
INCREMENT BY 1;
/

CREATE OR REPLACE TRIGGER movie_AI_TRG
BEFORE INSERT ON movie 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT movie_SEQ.NEXTVAL
    INTO :NEW.movie_no
    FROM DUAL;
END;
/

--DROP TRIGGER movie_AI_TRG;
/

--DROP SEQUENCE movie_SEQ;
/


-- movie Table Create SQL
CREATE TABLE Users
(
    user_no            NUMBER           NOT NULL, 
    user_id            VARCHAR2(50)     NULL, 
    user_pw            VARCHAR2(50)     NULL, 
    user_nickname      VARCHAR2(50)     NULL, 
    user_name          VARCHAR2(50)     NULL, 
    user_email         VARCHAR2(200)    NULL, 
    user_phone         VARCHAR2(30)     NULL, 
    user_date          DATE             NULL, 
    user_image_name    VARCHAR2(60)     NULL, 
    CONSTRAINT USERS_PK PRIMARY KEY (user_no)
)
/

CREATE SEQUENCE Users_SEQ
START WITH 1
INCREMENT BY 1;
/

CREATE OR REPLACE TRIGGER Users_AI_TRG
BEFORE INSERT ON Users 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT Users_SEQ.NEXTVAL
    INTO :NEW.user_no
    FROM DUAL;
END;
/

--DROP TRIGGER Users_AI_TRG;
/

--DROP SEQUENCE Users_SEQ;
/


-- movie Table Create SQL
CREATE TABLE genre
(
    genre_no      NUMBER           NOT NULL, 
    genre_name    VARCHAR2(100)    NULL, 
    CONSTRAINT GENRE_PK PRIMARY KEY (genre_no)
)
/

CREATE SEQUENCE genre_SEQ
START WITH 1
INCREMENT BY 1;
/

CREATE OR REPLACE TRIGGER genre_AI_TRG
BEFORE INSERT ON genre 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT genre_SEQ.NEXTVAL
    INTO :NEW.genre_no
    FROM DUAL;
END;
/

--DROP TRIGGER genre_AI_TRG;
/

--DROP SEQUENCE genre_SEQ;
/


-- movie Table Create SQL
CREATE TABLE actor
(
    actor_no      NUMBER          NOT NULL, 
    actor_name    VARCHAR2(50)    NULL, 
    CONSTRAINT ACTOR_PK PRIMARY KEY (actor_no)
)
/

CREATE SEQUENCE actor_SEQ
START WITH 1
INCREMENT BY 1;
/

CREATE OR REPLACE TRIGGER actor_AI_TRG
BEFORE INSERT ON actor 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT actor_SEQ.NEXTVAL
    INTO :NEW.actor_no
    FROM DUAL;
END;
/

--DROP TRIGGER actor_AI_TRG;
/

--DROP SEQUENCE actor_SEQ;
/


-- movie Table Create SQL
CREATE TABLE feel
(
    feel_no      NUMBER          NOT NULL, 
    feel_name    VARCHAR2(20)    NULL, 
    CONSTRAINT FEEL_PK PRIMARY KEY (feel_no)
)
/

CREATE SEQUENCE feel_SEQ
START WITH 1
INCREMENT BY 1;
/

CREATE OR REPLACE TRIGGER feel_AI_TRG
BEFORE INSERT ON feel 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT feel_SEQ.NEXTVAL
    INTO :NEW.feel_no
    FROM DUAL;
END;
/

--DROP TRIGGER feel_AI_TRG;
/

--DROP SEQUENCE feel_SEQ;
/


-- movie Table Create SQL
CREATE TABLE FAQ
(
    faq_no         NUMBER            NOT NULL, 
    faq_title      VARCHAR2(50)      NULL, 
    user_no        NUMBER            NULL, 
    faq_content    VARCHAR2(4000)    NULL, 
    faq_pw         VARCHAR2(50)      NULL, 
    faq_date       DATE              NULL, 
    CONSTRAINT FAQ_PK PRIMARY KEY (faq_no)
)
/

CREATE SEQUENCE FAQ_SEQ
START WITH 1
INCREMENT BY 1;
/

CREATE OR REPLACE TRIGGER FAQ_AI_TRG
BEFORE INSERT ON FAQ 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT FAQ_SEQ.NEXTVAL
    INTO :NEW.faq_no
    FROM DUAL;
END;
/

--DROP TRIGGER FAQ_AI_TRG;
/

--DROP SEQUENCE FAQ_SEQ;
/

ALTER TABLE FAQ
    ADD CONSTRAINT FK_FAQ_user_no_Users_user_no FOREIGN KEY (user_no)
        REFERENCES Users (user_no)
/


-- movie Table Create SQL
CREATE TABLE movie_genre
(
    movie_genre_no    NUMBER    NOT NULL, 
    genre_no          NUMBER    NULL, 
    movie_no          NUMBER    NULL, 
    CONSTRAINT MOVIE_GENRE_PK PRIMARY KEY (movie_genre_no)
)
/

CREATE SEQUENCE movie_genre_SEQ
START WITH 1
INCREMENT BY 1;
/

CREATE OR REPLACE TRIGGER movie_genre_AI_TRG
BEFORE INSERT ON movie_genre 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT movie_genre_SEQ.NEXTVAL
    INTO :NEW.movie_genre_no
    FROM DUAL;
END;
/

--DROP TRIGGER movie_genre_AI_TRG;
/

--DROP SEQUENCE movie_genre_SEQ;
/

ALTER TABLE movie_genre
    ADD CONSTRAINT FK_movie_genre_movie_no_movie_ FOREIGN KEY (movie_no)
        REFERENCES movie (movie_no)
/

ALTER TABLE movie_genre
    ADD CONSTRAINT FK_movie_genre_genre_no_genre_ FOREIGN KEY (genre_no)
        REFERENCES genre (genre_no)
/


-- movie Table Create SQL
CREATE TABLE movie_actor
(
    movie_actor_no    NUMBER    NOT NULL, 
    actor_no          NUMBER    NULL, 
    movie_no          NUMBER    NULL, 
    CONSTRAINT MOVIE_ACTOR_PK PRIMARY KEY (movie_actor_no)
)
/

CREATE SEQUENCE movie_actor_SEQ
START WITH 1
INCREMENT BY 1;
/

CREATE OR REPLACE TRIGGER movie_actor_AI_TRG
BEFORE INSERT ON movie_actor 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT movie_actor_SEQ.NEXTVAL
    INTO :NEW.movie_actor_no
    FROM DUAL;
END;
/

--DROP TRIGGER movie_actor_AI_TRG;
/

--DROP SEQUENCE movie_actor_SEQ;
/

ALTER TABLE movie_actor
    ADD CONSTRAINT FK_movie_actor_actor_no_actor_ FOREIGN KEY (actor_no)
        REFERENCES actor (actor_no)
/

ALTER TABLE movie_actor
    ADD CONSTRAINT FK_movie_actor_movie_no_movie_ FOREIGN KEY (movie_no)
        REFERENCES movie (movie_no)
/


-- movie Table Create SQL
CREATE TABLE movie_feel
(
    movie_feel_no    NUMBER    NOT NULL, 
    feel_no          NUMBER    NULL, 
    movie_no         NUMBER    NULL, 
    CONSTRAINT MOVIE_FEEL_PK PRIMARY KEY (movie_feel_no)
)
/

CREATE SEQUENCE movie_feel_SEQ
START WITH 1
INCREMENT BY 1;
/

CREATE OR REPLACE TRIGGER movie_feel_AI_TRG
BEFORE INSERT ON movie_feel 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT movie_feel_SEQ.NEXTVAL
    INTO :NEW.movie_feel_no
    FROM DUAL;
END;
/

--DROP TRIGGER movie_feel_AI_TRG;
/

--DROP SEQUENCE movie_feel_SEQ;
/

ALTER TABLE movie_feel
    ADD CONSTRAINT FK_movie_feel_movie_no_movie_m FOREIGN KEY (movie_no)
        REFERENCES movie (movie_no)
/

ALTER TABLE movie_feel
    ADD CONSTRAINT FK_movie_feel_feel_no_feel_fee FOREIGN KEY (feel_no)
        REFERENCES feel (feel_no)
/


-- movie Table Create SQL
CREATE TABLE wishList
(
    wishList_no    NUMBER    NOT NULL, 
    user_no        NUMBER    NULL, 
    movie_no       NUMBER    NULL, 
    CONSTRAINT WISHLIST_PK PRIMARY KEY (wishList_no)
)
/

CREATE SEQUENCE wishList_SEQ
START WITH 1
INCREMENT BY 1;
/

CREATE OR REPLACE TRIGGER wishList_AI_TRG
BEFORE INSERT ON wishList 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT wishList_SEQ.NEXTVAL
    INTO :NEW.wishList_no
    FROM DUAL;
END;
/

--DROP TRIGGER wishList_AI_TRG;
/

--DROP SEQUENCE wishList_SEQ;
/

ALTER TABLE wishList
    ADD CONSTRAINT FK_wishList_user_no_Users_user FOREIGN KEY (user_no)
        REFERENCES Users (user_no)
/

ALTER TABLE wishList
    ADD CONSTRAINT FK_wishList_movie_no_movie_mov FOREIGN KEY (movie_no)
        REFERENCES movie (movie_no)
/


-- movie Table Create SQL
CREATE TABLE movie_score
(
    movie_score_no    INT       NOT NULL, 
    star_score        NUMBER    NULL, 
    movie_no          NUMBER    NULL, 
    user_no           NUMBER    NULL, 
    CONSTRAINT MOVIE_SCORE_PK PRIMARY KEY (movie_score_no)
)
/

CREATE SEQUENCE movie_score_SEQ
START WITH 1
INCREMENT BY 1;
/

CREATE OR REPLACE TRIGGER movie_score_AI_TRG
BEFORE INSERT ON movie_score 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT movie_score_SEQ.NEXTVAL
    INTO :NEW.movie_score_no
    FROM DUAL;
END;
/

--DROP TRIGGER movie_score_AI_TRG;
/

--DROP SEQUENCE movie_score_SEQ;
/

ALTER TABLE movie_score
    ADD CONSTRAINT FK_movie_score_movie_no_movie_ FOREIGN KEY (movie_no)
        REFERENCES movie (movie_no)
/

ALTER TABLE movie_score
    ADD CONSTRAINT FK_movie_score_user_no_Users_u FOREIGN KEY (user_no)
        REFERENCES Users (user_no)
/


-- movie Table Create SQL
CREATE TABLE main_view
(
    main_view_no    NUMBER    NOT NULL, 
    movie_no        NUMBER    NULL, 
    CONSTRAINT MAIN_VIEW_PK PRIMARY KEY (main_view_no)
)
/

CREATE SEQUENCE main_view_SEQ
START WITH 1
INCREMENT BY 1;
/

CREATE OR REPLACE TRIGGER main_view_AI_TRG
BEFORE INSERT ON main_view 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT main_view_SEQ.NEXTVAL
    INTO :NEW.main_view_no
    FROM DUAL;
END;
/

--DROP TRIGGER main_view_AI_TRG;
/

--DROP SEQUENCE main_view_SEQ;
/

ALTER TABLE main_view
    ADD CONSTRAINT FK_main_view_movie_no_movie_mo FOREIGN KEY (movie_no)
        REFERENCES movie (movie_no)
/

ALTER TABLE main_view
    ADD CONSTRAINT UC_movie_no UNIQUE (movie_no)
/


-- movie Table Create SQL
CREATE TABLE comment
(
    comment_no         NUMBER            NOT NULL, 
    comment_content    VARCHAR2(4000)    NULL, 
    comment_date       DATE              NULL, 
    user_no            NUMBER            NULL, 
    movie_no           NUMBER            NULL, 
    comment_like       NUMBER            NULL, 
    CONSTRAINT COMMENT_PK PRIMARY KEY (comment_no)
)
/

CREATE SEQUENCE comment_SEQ
START WITH 1
INCREMENT BY 1;
/

CREATE OR REPLACE TRIGGER comment_AI_TRG
BEFORE INSERT ON comment 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT comment_SEQ.NEXTVAL
    INTO :NEW.comment_no
    FROM DUAL;
END;
/

--DROP TRIGGER comment_AI_TRG;
/

--DROP SEQUENCE comment_SEQ;
/

ALTER TABLE comment
    ADD CONSTRAINT FK_comment_user_no_Users_user_ FOREIGN KEY (user_no)
        REFERENCES Users (user_id)
/

ALTER TABLE comment
    ADD CONSTRAINT FK_comment_movie_no_movie_movi FOREIGN KEY (movie_no)
        REFERENCES movie (movie_no)
/


-- movie Table Create SQL
CREATE TABLE faq_comment
(
    faq_comment_no         NUMBER            NOT NULL, 
    faq_no                 NUMBER            NULL, 
    faq_comment_content    VARCHAR2(4000)    NULL, 
    faq_comment_date       DATE              NULL, 
    CONSTRAINT FAQ_COMMENT_PK PRIMARY KEY (faq_comment_no)
)
/

CREATE SEQUENCE faq_comment_SEQ
START WITH 1
INCREMENT BY 1;
/

CREATE OR REPLACE TRIGGER faq_comment_AI_TRG
BEFORE INSERT ON faq_comment 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT faq_comment_SEQ.NEXTVAL
    INTO :NEW.faq_comment_no
    FROM DUAL;
END;
/

--DROP TRIGGER faq_comment_AI_TRG;
/

--DROP SEQUENCE faq_comment_SEQ;
/

ALTER TABLE faq_comment
    ADD CONSTRAINT FK_faq_comment_faq_no_FAQ_faq_ FOREIGN KEY (faq_no)
        REFERENCES FAQ (faq_no)
/


-- movie Table Create SQL
CREATE TABLE movie_taste
(
    movie_taste_no    NUMBER    NOT NULL, 
    genre_no          NUMBER    NULL, 
    user_no           NUMBER    NULL, 
    CONSTRAINT MOVIE_TASTE_PK PRIMARY KEY (movie_taste_no)
)
/

CREATE SEQUENCE movie_taste_SEQ
START WITH 1
INCREMENT BY 1;
/

CREATE OR REPLACE TRIGGER movie_taste_AI_TRG
BEFORE INSERT ON movie_taste 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT movie_taste_SEQ.NEXTVAL
    INTO :NEW.movie_taste_no
    FROM DUAL;
END;
/

--DROP TRIGGER movie_taste_AI_TRG;
/

--DROP SEQUENCE movie_taste_SEQ;
/

ALTER TABLE movie_taste
    ADD CONSTRAINT FK_movie_taste_user_no_Users_u FOREIGN KEY (user_no)
        REFERENCES Users (user_no)
/

ALTER TABLE movie_taste
    ADD CONSTRAINT FK_movie_taste_genre_no_movie_ FOREIGN KEY (genre_no)
        REFERENCES movie (movie_no)
/


