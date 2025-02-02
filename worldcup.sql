--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    round character varying(100) NOT NULL,
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(100) NOT NULL
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
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 2018, 'Final', 389, 390, 4, 2);
INSERT INTO public.games VALUES (2, 2018, 'Third Place', 391, 392, 2, 0);
INSERT INTO public.games VALUES (3, 2018, 'Semi-Final', 390, 392, 2, 1);
INSERT INTO public.games VALUES (4, 2018, 'Semi-Final', 389, 391, 1, 0);
INSERT INTO public.games VALUES (5, 2018, 'Quarter-Final', 390, 398, 3, 2);
INSERT INTO public.games VALUES (6, 2018, 'Quarter-Final', 392, 400, 2, 0);
INSERT INTO public.games VALUES (7, 2018, 'Quarter-Final', 391, 402, 2, 1);
INSERT INTO public.games VALUES (8, 2018, 'Quarter-Final', 389, 404, 2, 0);
INSERT INTO public.games VALUES (9, 2018, 'Eighth-Final', 392, 406, 2, 1);
INSERT INTO public.games VALUES (10, 2018, 'Eighth-Final', 400, 408, 1, 0);
INSERT INTO public.games VALUES (11, 2018, 'Eighth-Final', 391, 410, 3, 2);
INSERT INTO public.games VALUES (12, 2018, 'Eighth-Final', 402, 412, 2, 0);
INSERT INTO public.games VALUES (13, 2018, 'Eighth-Final', 390, 414, 2, 1);
INSERT INTO public.games VALUES (14, 2018, 'Eighth-Final', 398, 416, 2, 1);
INSERT INTO public.games VALUES (15, 2018, 'Eighth-Final', 404, 418, 2, 1);
INSERT INTO public.games VALUES (16, 2018, 'Eighth-Final', 389, 420, 4, 3);
INSERT INTO public.games VALUES (17, 2014, 'Final', 421, 420, 1, 0);
INSERT INTO public.games VALUES (18, 2014, 'Third Place', 423, 402, 3, 0);
INSERT INTO public.games VALUES (19, 2014, 'Semi-Final', 420, 423, 1, 0);
INSERT INTO public.games VALUES (20, 2014, 'Semi-Final', 421, 402, 7, 1);
INSERT INTO public.games VALUES (21, 2014, 'Quarter-Final', 423, 430, 1, 0);
INSERT INTO public.games VALUES (22, 2014, 'Quarter-Final', 420, 391, 1, 0);
INSERT INTO public.games VALUES (23, 2014, 'Quarter-Final', 402, 406, 2, 1);
INSERT INTO public.games VALUES (24, 2014, 'Quarter-Final', 421, 389, 1, 0);
INSERT INTO public.games VALUES (25, 2014, 'Eighth-Final', 402, 438, 2, 1);
INSERT INTO public.games VALUES (26, 2014, 'Eighth-Final', 406, 404, 2, 0);
INSERT INTO public.games VALUES (27, 2014, 'Eighth-Final', 389, 442, 2, 0);
INSERT INTO public.games VALUES (28, 2014, 'Eighth-Final', 421, 444, 2, 1);
INSERT INTO public.games VALUES (29, 2014, 'Eighth-Final', 423, 412, 2, 1);
INSERT INTO public.games VALUES (30, 2014, 'Eighth-Final', 430, 448, 2, 1);
INSERT INTO public.games VALUES (31, 2014, 'Eighth-Final', 420, 408, 1, 0);
INSERT INTO public.games VALUES (32, 2014, 'Eighth-Final', 391, 452, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (389, 'France');
INSERT INTO public.teams VALUES (390, 'Croatia');
INSERT INTO public.teams VALUES (391, 'Belgium');
INSERT INTO public.teams VALUES (392, 'England');
INSERT INTO public.teams VALUES (398, 'Russia');
INSERT INTO public.teams VALUES (400, 'Sweden');
INSERT INTO public.teams VALUES (402, 'Brazil');
INSERT INTO public.teams VALUES (404, 'Uruguay');
INSERT INTO public.teams VALUES (406, 'Colombia');
INSERT INTO public.teams VALUES (408, 'Switzerland');
INSERT INTO public.teams VALUES (410, 'Japan');
INSERT INTO public.teams VALUES (412, 'Mexico');
INSERT INTO public.teams VALUES (414, 'Denmark');
INSERT INTO public.teams VALUES (416, 'Spain');
INSERT INTO public.teams VALUES (418, 'Portugal');
INSERT INTO public.teams VALUES (420, 'Argentina');
INSERT INTO public.teams VALUES (421, 'Germany');
INSERT INTO public.teams VALUES (423, 'Netherlands');
INSERT INTO public.teams VALUES (430, 'Costa Rica');
INSERT INTO public.teams VALUES (438, 'Chile');
INSERT INTO public.teams VALUES (442, 'Nigeria');
INSERT INTO public.teams VALUES (444, 'Algeria');
INSERT INTO public.teams VALUES (448, 'Greece');
INSERT INTO public.teams VALUES (452, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 32, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 452, true);


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
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id) ON DELETE CASCADE;


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

