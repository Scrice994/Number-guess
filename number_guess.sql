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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: players; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.players (
    player_id integer NOT NULL,
    player_name character varying(30) NOT NULL,
    games_played integer,
    best_game integer DEFAULT 2147483647
);


ALTER TABLE public.players OWNER TO freecodecamp;

--
-- Name: players_player_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.players_player_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.players_player_id_seq OWNER TO freecodecamp;

--
-- Name: players_player_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.players_player_id_seq OWNED BY public.players.player_id;


--
-- Name: players player_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players ALTER COLUMN player_id SET DEFAULT nextval('public.players_player_id_seq'::regclass);


--
-- Data for Name: players; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.players VALUES (160, 'me', 2, 6);
INSERT INTO public.players VALUES (210, 'user_1667649367154', 2, 342);
INSERT INTO public.players VALUES (184, 'user_1667648901270', 2, 5);
INSERT INTO public.players VALUES (162, 'user_1667648710271', 2, 2);
INSERT INTO public.players VALUES (183, 'user_1667648901271', 3, 4);
INSERT INTO public.players VALUES (161, 'user_1667648710272', 5, 6);
INSERT INTO public.players VALUES (164, 'user_1667648814795', 2, 4);
INSERT INTO public.players VALUES (209, 'user_1667649367155', 7, 639);
INSERT INTO public.players VALUES (198, 'user_1667649071767', 2, 8);
INSERT INTO public.players VALUES (186, 'user_1667648903545', 2, 5);
INSERT INTO public.players VALUES (185, 'user_1667648903546', 3, 4);
INSERT INTO public.players VALUES (163, 'user_1667648814796', 5, 2);
INSERT INTO public.players VALUES (197, 'user_1667649071768', 5, 3);
INSERT INTO public.players VALUES (166, 'user_1667648820098', 2, 2);
INSERT INTO public.players VALUES (188, 'user_1667648905479', 2, 4);
INSERT INTO public.players VALUES (165, 'user_1667648820099', 5, 4);
INSERT INTO public.players VALUES (187, 'user_1667648905480', 3, 5);
INSERT INTO public.players VALUES (168, 'user_1667648863123', 2, 5);
INSERT INTO public.players VALUES (167, 'user_1667648863124', 3, 8);
INSERT INTO public.players VALUES (200, 'user_1667649170534', 2, 344);
INSERT INTO public.players VALUES (190, 'user_1667648913022', 2, 2);
INSERT INTO public.players VALUES (170, 'user_1667648868621', 2, 4);
INSERT INTO public.players VALUES (212, 'user_1667649408717', 2, 117);
INSERT INTO public.players VALUES (169, 'user_1667648868622', 3, 5);
INSERT INTO public.players VALUES (189, 'user_1667648913023', 5, 2);
INSERT INTO public.players VALUES (199, 'user_1667649170535', 5, 8);
INSERT INTO public.players VALUES (172, 'user_1667648874050', 2, 2);
INSERT INTO public.players VALUES (171, 'user_1667648874051', 3, 6);
INSERT INTO public.players VALUES (192, 'user_1667648916708', 2, 6);
INSERT INTO public.players VALUES (174, 'user_1667648879228', 2, 8);
INSERT INTO public.players VALUES (173, 'user_1667648879229', 3, 2);
INSERT INTO public.players VALUES (211, 'user_1667649408718', 7, 10);
INSERT INTO public.players VALUES (202, 'user_1667649177273', 2, 100);
INSERT INTO public.players VALUES (191, 'user_1667648916709', 5, 2);
INSERT INTO public.players VALUES (176, 'user_1667648881153', 2, 6);
INSERT INTO public.players VALUES (175, 'user_1667648881154', 3, 2);
INSERT INTO public.players VALUES (201, 'user_1667649177274', 5, 386);
INSERT INTO public.players VALUES (178, 'user_1667648883001', 2, 6);
INSERT INTO public.players VALUES (177, 'user_1667648883002', 3, 3);
INSERT INTO public.players VALUES (194, 'user_1667648921178', 2, 3);
INSERT INTO public.players VALUES (193, 'user_1667648921179', 5, 4);
INSERT INTO public.players VALUES (180, 'user_1667648884883', 2, 3);
INSERT INTO public.players VALUES (179, 'user_1667648884884', 3, 4);
INSERT INTO public.players VALUES (204, 'user_1667649323311', 2, 84);
INSERT INTO public.players VALUES (214, 'user_1667649468286', 2, 368);
INSERT INTO public.players VALUES (182, 'user_1667648886756', 2, 5);
INSERT INTO public.players VALUES (196, 'user_1667648923390', 2, 3);
INSERT INTO public.players VALUES (181, 'user_1667648886757', 3, 3);
INSERT INTO public.players VALUES (203, 'user_1667649323312', 5, 160);
INSERT INTO public.players VALUES (195, 'user_1667648923391', 5, 3);
INSERT INTO public.players VALUES (213, 'user_1667649468287', 7, 220);
INSERT INTO public.players VALUES (206, 'user_1667649352004', 2, 134);
INSERT INTO public.players VALUES (205, 'user_1667649352005', 7, 124);
INSERT INTO public.players VALUES (208, 'user_1667649360593', 2, 247);
INSERT INTO public.players VALUES (207, 'user_1667649360594', 7, 92);


--
-- Name: players_player_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.players_player_id_seq', 214, true);


--
-- Name: players players_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_pkey PRIMARY KEY (player_id);


--
-- PostgreSQL database dump complete
--

