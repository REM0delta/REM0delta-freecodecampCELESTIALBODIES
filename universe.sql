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
-- Name: blackhole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.blackhole (
    blackhole_id integer NOT NULL,
    ref_number numeric(10,2) NOT NULL,
    size double precision NOT NULL,
    mass double precision NOT NULL,
    galaxy_id integer,
    name character varying(255),
    r_number integer
);


ALTER TABLE public.blackhole OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.blackhole_blackhole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blackhole_blackhole_id_seq OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.blackhole_blackhole_id_seq OWNED BY public.blackhole.blackhole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    size double precision,
    density character varying(255),
    "general info" character varying(255),
    name character varying(255) NOT NULL,
    r_number integer
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
    name character varying(255) NOT NULL,
    "Primary Body" character varying(255) NOT NULL,
    mass double precision NOT NULL,
    radius double precision NOT NULL,
    "g-factor" double precision NOT NULL,
    planet_id integer,
    r_number integer
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
    name character varying(255) NOT NULL,
    "Potential for life" character varying(255) NOT NULL,
    "Observation of life" boolean NOT NULL,
    "Observation of water" boolean NOT NULL,
    star_id integer NOT NULL,
    r_number integer
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
    name character varying(255) NOT NULL,
    radius double precision NOT NULL,
    mass double precision NOT NULL,
    galaxy_id integer,
    description text,
    r_number integer
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
-- Name: blackhole blackhole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole ALTER COLUMN blackhole_id SET DEFAULT nextval('public.blackhole_blackhole_id_seq'::regclass);


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
-- Data for Name: blackhole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.blackhole VALUES (1, 123.45, 10.5, 1000, 1, 'Black Hole A', 591);
INSERT INTO public.blackhole VALUES (2, 456.78, 15.2, 1500, 2, 'Black Hole B', 1182);
INSERT INTO public.blackhole VALUES (3, 789.12, 20.7, 2000, 3, 'Black Hole C', 1773);
INSERT INTO public.blackhole VALUES (4, 321.54, 25.3, 2500, 4, 'Black Hole D', 2364);
INSERT INTO public.blackhole VALUES (5, 654.87, 30.9, 3000, 5, 'Black Hole E', 2955);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1234, 5555, 'n/a', 'Some general info', 'Andrew', NULL);
INSERT INTO public.galaxy VALUES (1235, 5555, '8888', 'n/a', 'Andre', NULL);
INSERT INTO public.galaxy VALUES (1236, 5555, '8888', 'n/a', 'Alex', NULL);
INSERT INTO public.galaxy VALUES (1237, 5555, '8888', 'n/a', 'Alx', NULL);
INSERT INTO public.galaxy VALUES (1238, 5555, '8888', 'n/a', 'Alexi', NULL);
INSERT INTO public.galaxy VALUES (5236, 5555, '8888', 'n/a', 'Alexoo', NULL);
INSERT INTO public.galaxy VALUES (1276, 5555, '8888', 'n/a', 'A', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (78789, 'iter', 'f0la', 7, 1.2, 0.19, 999, NULL);
INSERT INTO public.moon VALUES (78799, 'miter', 'f0la', 7, 1.2, 0.19, 999, NULL);
INSERT INTO public.moon VALUES (78889, 'kiter', 'f0la', 7, 1.2, 0.19, 999, NULL);
INSERT INTO public.moon VALUES (788889, 'kkiter', 'f0la', 7, 1.2, 0.19, 999, NULL);
INSERT INTO public.moon VALUES (7878789, 'fiter', 'f0la', 7, 1.2, 0.19, 999, NULL);
INSERT INTO public.moon VALUES (787890, 'siter', 'f0la', 7, 1.2, 0.19, 999, NULL);
INSERT INTO public.moon VALUES (78777, 'itder', 'f0la', 7, 1.2, 0.19, 999, NULL);
INSERT INTO public.moon VALUES (7878999, 'qiter', 'f0la', 7, 1.2, 0.19, 999, NULL);
INSERT INTO public.moon VALUES (7878901, 'liter', 'f0la', 7, 1.2, 0.19, 999, NULL);
INSERT INTO public.moon VALUES (787789, 'moiter', 'f0la', 7, 1.2, 0.19, 999, NULL);
INSERT INTO public.moon VALUES (7878659, 'pliiter', 'f0la', 7, 1.2, 0.19, 999, NULL);
INSERT INTO public.moon VALUES (77874, 'iterkk', 'f0la', 7, 1.2, 0.19, 999, NULL);
INSERT INTO public.moon VALUES (784549, 'iterk', 'f0la', 7, 1.2, 0.19, 999, NULL);
INSERT INTO public.moon VALUES (7878549, 'iteromp', 'f0la', 7, 1.2, 0.19, 999, NULL);
INSERT INTO public.moon VALUES (78479, 'iterpoli', 'f0la', 7, 1.2, 0.19, 999, NULL);
INSERT INTO public.moon VALUES (74189, 'itermoli', 'f0la', 7, 1.2, 0.19, 999, NULL);
INSERT INTO public.moon VALUES (7189, 'itermolki', 'f0la', 7, 1.2, 0.19, 999, NULL);
INSERT INTO public.moon VALUES (76789, 'itersaze', 'f0la', 7, 1.2, 0.19, 999, NULL);
INSERT INTO public.moon VALUES (79789, 'iterz', 'f0la', 7, 1.2, 0.19, 999, NULL);
INSERT INTO public.moon VALUES (7899789, 'iterzer', 'f0la', 7, 1.2, 0.19, 999, NULL);
INSERT INTO public.moon VALUES (78019, 'iteriol', 'f0la', 7, 1.2, 0.19, 999, NULL);
INSERT INTO public.moon VALUES (70009, 'iteroli', 'f0la', 7, 1.2, 0.19, 999, NULL);
INSERT INTO public.moon VALUES (70049, 'iterou', 'f0la', 7, 1.2, 0.19, 999, NULL);
INSERT INTO public.moon VALUES (4019, 'iterulo', 'f0la', 7, 1.2, 0.19, 999, NULL);
INSERT INTO public.moon VALUES (740589, 'itelir', 'f0la', 7, 1.2, 0.19, 999, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (420, 'Ola', 'Uncertain', false, true, 100, NULL);
INSERT INTO public.planet VALUES (421, 'NOla', 'Uncertain', false, true, 100, NULL);
INSERT INTO public.planet VALUES (422, 'Oppila', 'Uncertain', true, true, 100, NULL);
INSERT INTO public.planet VALUES (423, 'Olulla', 'Uncertain', false, true, 100, NULL);
INSERT INTO public.planet VALUES (424, 'Oulla', 'Uncertain', false, false, 100, NULL);
INSERT INTO public.planet VALUES (425, 'Ouila', 'Uncertain', false, false, 100, NULL);
INSERT INTO public.planet VALUES (426, 'Ortyla', 'Uncertain', false, true, 100, NULL);
INSERT INTO public.planet VALUES (427, 'Ortila', 'Uncertain', false, true, 100, NULL);
INSERT INTO public.planet VALUES (428, 'KaOla', 'Uncertain', false, true, 100, NULL);
INSERT INTO public.planet VALUES (430, 'Orala', 'Uncertain', false, true, 100, NULL);
INSERT INTO public.planet VALUES (480, 'MIOla', 'Uncertain', false, true, 100, NULL);
INSERT INTO public.planet VALUES (450, 'Oreerla', 'Uncertain', false, true, 100, NULL);
INSERT INTO public.planet VALUES (444, 'Oreela', 'Uncertain', false, true, 100, NULL);
INSERT INTO public.planet VALUES (431, 'Oltta', 'Uncertain', false, true, 100, NULL);
INSERT INTO public.planet VALUES (488, 'Orgla', 'Uncertain', false, true, 100, NULL);
INSERT INTO public.planet VALUES (499, 'filala', 'Uncertain', false, true, 100, NULL);
INSERT INTO public.planet VALUES (481, 'sasla', 'Uncertain', false, true, 100, NULL);
INSERT INTO public.planet VALUES (475, 'pilla', 'Uncertain', false, true, 101, NULL);
INSERT INTO public.planet VALUES (441, 'Olapo', 'Uncertain', false, true, 102, NULL);
INSERT INTO public.planet VALUES (478, 'Olaere', 'Uncertain', false, true, 105, NULL);
INSERT INTO public.planet VALUES (487, 'Olare', 'Uncertain', false, true, 105, NULL);
INSERT INTO public.planet VALUES (474, 'pOla', 'Uncertain', false, true, 105, NULL);
INSERT INTO public.planet VALUES (484, 'iOla', 'Uncertain', false, true, 105, NULL);
INSERT INTO public.planet VALUES (494, 'sOlia', 'Uncertain', false, true, 105, NULL);
INSERT INTO public.planet VALUES (555, 'sOla', 'Uncertain', false, true, 107, NULL);
INSERT INTO public.planet VALUES (578, 'Olsa', 'Uncertain', false, true, 107, NULL);
INSERT INTO public.planet VALUES (111, 'Olas', 'Uncertain', false, true, 107, NULL);
INSERT INTO public.planet VALUES (999, 'fOla', 'Uncertain', false, true, 100, NULL);
INSERT INTO public.planet VALUES (459, 'MOla', 'Uncertain', false, true, 100, NULL);
INSERT INTO public.planet VALUES (750, 'PROla', 'Uncertain', false, true, 100, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (100, 'urnan', 12, 69, 1234, NULL, NULL);
INSERT INTO public.star VALUES (101, 'af', 124, 69, 1234, NULL, NULL);
INSERT INTO public.star VALUES (102, 'twely', 1442, 69, 1234, NULL, NULL);
INSERT INTO public.star VALUES (103, 'bob', 172, 69, 1234, NULL, NULL);
INSERT INTO public.star VALUES (105, 'urnasns', 12, 69, 1234, NULL, NULL);
INSERT INTO public.star VALUES (106, 'urnanania', 12, 69, 1234, NULL, NULL);
INSERT INTO public.star VALUES (107, 'urnans', 12, 69, 1235, NULL, NULL);


--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.blackhole_blackhole_id_seq', 5, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: blackhole blackhole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_pkey PRIMARY KEY (blackhole_id);


--
-- Name: galaxy galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id UNIQUE (moon_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: blackhole name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT name UNIQUE (name);


--
-- Name: planet planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id UNIQUE (planet_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id UNIQUE (star_id);


--
-- Name: star star_id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id_unique UNIQUE (star_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_moon; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--


