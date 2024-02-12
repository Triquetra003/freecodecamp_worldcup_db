--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(50) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: games_opponent_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_opponent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_opponent_id_seq OWNER TO freecodecamp;

--
-- Name: games_opponent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_opponent_id_seq OWNED BY public.games.opponent_id;


--
-- Name: games_winner_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_winner_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_winner_id_seq OWNER TO freecodecamp;

--
-- Name: games_winner_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_winner_id_seq OWNED BY public.games.winner_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: games winner_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN winner_id SET DEFAULT nextval('public.games_winner_id_seq'::regclass);


--
-- Name: games opponent_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN opponent_id SET DEFAULT nextval('public.games_opponent_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 2018, 'Final', 57, 58, 4, 2);
INSERT INTO public.games VALUES (2, 2018, 'Third Place', 59, 60, 2, 0);
INSERT INTO public.games VALUES (3, 2018, 'Semi-Final', 58, 60, 2, 1);
INSERT INTO public.games VALUES (4, 2018, 'Semi-Final', 57, 59, 1, 0);
INSERT INTO public.games VALUES (5, 2018, 'Quarter-Final', 58, 61, 3, 2);
INSERT INTO public.games VALUES (6, 2018, 'Quarter-Final', 60, 62, 2, 0);
INSERT INTO public.games VALUES (7, 2018, 'Quarter-Final', 59, 63, 2, 1);
INSERT INTO public.games VALUES (8, 2018, 'Quarter-Final', 57, 64, 2, 0);
INSERT INTO public.games VALUES (9, 2018, 'Eighth-Final', 60, 65, 2, 1);
INSERT INTO public.games VALUES (10, 2018, 'Eighth-Final', 62, 66, 1, 0);
INSERT INTO public.games VALUES (11, 2018, 'Eighth-Final', 59, 67, 3, 2);
INSERT INTO public.games VALUES (12, 2018, 'Eighth-Final', 63, 68, 2, 0);
INSERT INTO public.games VALUES (13, 2018, 'Eighth-Final', 58, 69, 2, 1);
INSERT INTO public.games VALUES (14, 2018, 'Eighth-Final', 61, 70, 2, 1);
INSERT INTO public.games VALUES (15, 2018, 'Eighth-Final', 64, 71, 2, 1);
INSERT INTO public.games VALUES (16, 2018, 'Eighth-Final', 57, 72, 4, 3);
INSERT INTO public.games VALUES (17, 2014, 'Final', 73, 72, 1, 0);
INSERT INTO public.games VALUES (18, 2014, 'Third Place', 74, 63, 3, 0);
INSERT INTO public.games VALUES (19, 2014, 'Semi-Final', 72, 74, 1, 0);
INSERT INTO public.games VALUES (20, 2014, 'Semi-Final', 73, 63, 7, 1);
INSERT INTO public.games VALUES (21, 2014, 'Quarter-Final', 74, 75, 1, 0);
INSERT INTO public.games VALUES (22, 2014, 'Quarter-Final', 72, 59, 1, 0);
INSERT INTO public.games VALUES (23, 2014, 'Quarter-Final', 63, 65, 2, 1);
INSERT INTO public.games VALUES (24, 2014, 'Quarter-Final', 73, 57, 1, 0);
INSERT INTO public.games VALUES (25, 2014, 'Eighth-Final', 63, 76, 2, 1);
INSERT INTO public.games VALUES (26, 2014, 'Eighth-Final', 65, 64, 2, 0);
INSERT INTO public.games VALUES (27, 2014, 'Eighth-Final', 57, 77, 2, 0);
INSERT INTO public.games VALUES (28, 2014, 'Eighth-Final', 73, 78, 2, 1);
INSERT INTO public.games VALUES (29, 2014, 'Eighth-Final', 74, 68, 2, 1);
INSERT INTO public.games VALUES (30, 2014, 'Eighth-Final', 75, 79, 2, 1);
INSERT INTO public.games VALUES (31, 2014, 'Eighth-Final', 72, 66, 1, 0);
INSERT INTO public.games VALUES (32, 2014, 'Eighth-Final', 59, 80, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (57, 'France');
INSERT INTO public.teams VALUES (58, 'Croatia');
INSERT INTO public.teams VALUES (59, 'Belgium');
INSERT INTO public.teams VALUES (60, 'England');
INSERT INTO public.teams VALUES (61, 'Russia');
INSERT INTO public.teams VALUES (62, 'Sweden');
INSERT INTO public.teams VALUES (63, 'Brazil');
INSERT INTO public.teams VALUES (64, 'Uruguay');
INSERT INTO public.teams VALUES (65, 'Colombia');
INSERT INTO public.teams VALUES (66, 'Switzerland');
INSERT INTO public.teams VALUES (67, 'Japan');
INSERT INTO public.teams VALUES (68, 'Mexico');
INSERT INTO public.teams VALUES (69, 'Denmark');
INSERT INTO public.teams VALUES (70, 'Spain');
INSERT INTO public.teams VALUES (71, 'Portugal');
INSERT INTO public.teams VALUES (72, 'Argentina');
INSERT INTO public.teams VALUES (73, 'Germany');
INSERT INTO public.teams VALUES (74, 'Netherlands');
INSERT INTO public.teams VALUES (75, 'Costa Rica');
INSERT INTO public.teams VALUES (76, 'Chile');
INSERT INTO public.teams VALUES (77, 'Nigeria');
INSERT INTO public.teams VALUES (78, 'Algeria');
INSERT INTO public.teams VALUES (79, 'Greece');
INSERT INTO public.teams VALUES (80, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 32, true);


--
-- Name: games_opponent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_opponent_id_seq', 1, false);


--
-- Name: games_winner_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_winner_id_seq', 1, false);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 80, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

