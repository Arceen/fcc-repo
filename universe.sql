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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    star_count integer,
    living boolean,
    hell boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    planet_id integer,
    taken boolean,
    living boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    moon_count integer,
    oxygen_level numeric(3,1),
    has_moons boolean,
    star_id integer,
    description text,
    hell boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age_in_light_years numeric(4,1),
    is_dead boolean,
    galaxy_id integer,
    hell boolean
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: test; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.test (
    test_id integer NOT NULL,
    name character varying(20) NOT NULL,
    taken boolean
);


ALTER TABLE public.test OWNER TO freecodecamp;

--
-- Name: test_test_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.test_test_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.test_test_id_seq OWNER TO freecodecamp;

--
-- Name: test_test_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.test_test_id_seq OWNED BY public.test.test_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: test test_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.test ALTER COLUMN test_id SET DEFAULT nextval('public.test_test_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda-1', 200, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Milky Way-2', 100, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'M31-3', 20, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'NGC 6872-4', 31, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'NGC 4038-5', 1000, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Andromeda-6', 200, NULL, NULL);
INSERT INTO public.galaxy VALUES (7, 'Milky Way-7', 100, NULL, NULL);
INSERT INTO public.galaxy VALUES (8, 'M31-8', 20, NULL, NULL);
INSERT INTO public.galaxy VALUES (9, 'NGC 6872-9', 31, NULL, NULL);
INSERT INTO public.galaxy VALUES (10, 'NGC 4038-10', 1000, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'tt-1', 2, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'tt-2', 2, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'tt-3', 2, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'tt-4', 2, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'tt-5', 2, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'tt-6', 2, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'tt-7', 2, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'tt-8', 2, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'tt-9', 2, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'tt-10', 2, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'tt-11', 2, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'tt-12', 2, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'tt-13', 2, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'tt-14', 2, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'tt-15', 2, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'tt-16', 2, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'tt-17', 2, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'tt-18', 2, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'tt-19', 2, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'tt-20', 2, NULL, NULL);
INSERT INTO public.moon VALUES (21, 'tt-21', 2, NULL, NULL);
INSERT INTO public.moon VALUES (22, 'tt-22', 2, NULL, NULL);
INSERT INTO public.moon VALUES (23, 'tt-23', 2, NULL, NULL);
INSERT INTO public.moon VALUES (24, 'tt-24', 2, NULL, NULL);
INSERT INTO public.moon VALUES (25, 'tt-25', 2, NULL, NULL);
INSERT INTO public.moon VALUES (26, 'tt-26', 2, NULL, NULL);
INSERT INTO public.moon VALUES (27, 'tt-27', 2, NULL, NULL);
INSERT INTO public.moon VALUES (28, 'tt-28', 2, NULL, NULL);
INSERT INTO public.moon VALUES (29, 'tt-29', 2, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'TT-1', 2, 3.1, true, 1, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'TT-2', 2, 3.1, true, 1, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'TT-3', 2, 3.1, true, 1, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'TT-4', 2, 3.1, true, 1, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'TT-5', 2, 3.1, true, 1, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'TT-6', 2, 3.1, true, 1, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'TT-7', 2, 3.1, true, 1, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'TT-8', 2, 3.1, true, 1, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'TT-9', 2, 3.1, true, 1, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'TT-10', 2, 3.1, true, 1, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'TT-11', 2, 3.1, true, 1, NULL, NULL);
INSERT INTO public.planet VALUES (13, 'TT-12', 2, 3.1, true, 1, NULL, NULL);
INSERT INTO public.planet VALUES (14, 'TT-13', 2, 3.1, true, 1, NULL, NULL);
INSERT INTO public.planet VALUES (15, 'TT-14', 2, 3.1, true, 1, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'M-1', 32.0, false, 1, NULL);
INSERT INTO public.star VALUES (2, 'M-2', 32.0, false, 1, NULL);
INSERT INTO public.star VALUES (3, 'M-3', 32.0, false, 1, NULL);
INSERT INTO public.star VALUES (4, 'M-4', 32.0, false, 1, NULL);
INSERT INTO public.star VALUES (5, 'M-5', 32.0, false, 1, NULL);
INSERT INTO public.star VALUES (6, 'M-6', 32.0, false, 1, NULL);
INSERT INTO public.star VALUES (7, 'M-7', 32.0, false, 1, NULL);


--
-- Data for Name: test; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.test VALUES (1, 'i', NULL);
INSERT INTO public.test VALUES (2, 'am', NULL);
INSERT INTO public.test VALUES (3, 'spiderman', NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 10, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 29, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 15, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: test_test_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.test_test_id_seq', 3, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key1 UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key1 UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key1 UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key1 UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: test test_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.test
    ADD CONSTRAINT test_name_key UNIQUE (name);


--
-- Name: test test_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.test
    ADD CONSTRAINT test_pkey PRIMARY KEY (test_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

