--
-- PostgreSQL database dump
--

-- Dumped from database version 15.0 (Debian 15.0-1.pgdg110+1)
-- Dumped by pg_dump version 15.0

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: Song; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Song" (
    song_id integer NOT NULL,
    judul character(64) NOT NULL,
    penyanyi_id integer NOT NULL,
    audio_path character(256) NOT NULL
);


ALTER TABLE public."Song" OWNER TO postgres;

--
-- Name: Song_song_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Song_song_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Song_song_id_seq" OWNER TO postgres;

--
-- Name: Song_song_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Song_song_id_seq" OWNED BY public."Song".song_id;


--
-- Name: User; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."User" (
    user_id integer NOT NULL,
    email character(256) NOT NULL,
    password character(256) NOT NULL,
    username character(256) NOT NULL,
    name character(256) NOT NULL,
    isadmin boolean NOT NULL
);


ALTER TABLE public."User" OWNER TO postgres;

--
-- Name: User_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."User_user_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."User_user_id_seq" OWNER TO postgres;

--
-- Name: User_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."User_user_id_seq" OWNED BY public."User".user_id;


--
-- Name: Song song_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Song" ALTER COLUMN song_id SET DEFAULT nextval('public."Song_song_id_seq"'::regclass);


--
-- Name: User user_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User" ALTER COLUMN user_id SET DEFAULT nextval('public."User_user_id_seq"'::regclass);


--
-- Data for Name: Song; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Song" (song_id, judul, penyanyi_id, audio_path) FROM stdin;
1	Heal The World                                                  	2	/assets/audio/Heal The World.mp3                                                                                                                                                                                                                                
2	You Are Not Alone                                               	2	/assets/audio/You Are Not Alone.mp3                                                                                                                                                                                                                             
\.


--
-- Data for Name: User; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."User" (user_id, email, password, username, name, isadmin) FROM stdin;
1	bmin@mail.com                                                                                                                                                                                                                                                   	aeolr                                                                                                                                                                                                                                                           	bmin                                                                                                                                                                                                                                                            	bmin                                                                                                                                                                                                                                                            	t
3	penyanyi2@gmail.com                                                                                                                                                                                                                                             	pfp|es\\x7Fp:                                                                                                                                                                                                                                                    	penyanyi2                                                                                                                                                                                                                                                       	penyanyi2                                                                                                                                                                                                                                                       	f
2	penyanyi1@gmail.com                                                                                                                                                                                                                                             	pfp|esp9                                                                                                                                                                                                                                                       	penyanyi1                                                                                                                                                                                                                                                       	Michael Jackson                                                                                                                                                                                                                                                 	f
\.


--
-- Name: Song_song_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Song_song_id_seq"', 2, true);


--
-- Name: User_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."User_user_id_seq"', 3, true);


--
-- Name: Song Song_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Song"
    ADD CONSTRAINT "Song_pkey" PRIMARY KEY (song_id);


--
-- Name: User User_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_pkey" PRIMARY KEY (user_id);


--
-- Name: Song fk_penyanyi_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Song"
    ADD CONSTRAINT fk_penyanyi_id FOREIGN KEY (penyanyi_id) REFERENCES public."User"(user_id);


--
-- PostgreSQL database dump complete
--

