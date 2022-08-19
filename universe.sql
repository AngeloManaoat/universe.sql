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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    color boolean,
    water boolean,
    name character varying(30) NOT NULL,
    age integer NOT NULL,
    asteroid_id integer NOT NULL
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_year integer,
    age integer NOT NULL,
    year integer,
    millions integer,
    color text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id text NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_year integer,
    age integer NOT NULL,
    year integer,
    millions integer,
    color text
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id numeric NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_year integer,
    age integer NOT NULL,
    year integer,
    millions integer,
    color text
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_year integer,
    age integer NOT NULL,
    year integer,
    millions integer,
    color text,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (NULL, NULL, 'Apophis', 90, 1);
INSERT INTO public.asteroid VALUES (NULL, NULL, 'Bennu', 50, 2);
INSERT INTO public.asteroid VALUES (NULL, NULL, 'Vesta', 56, 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Backward', NULL, 14, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Butterfly', NULL, 10, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Cigar', NULL, 12, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Cartwheel', NULL, 17, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Condor', NULL, 19, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Fireworks', NULL, 3, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('1', 'Ganymede', NULL, 51, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('2', 'Callisto', NULL, 60, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('3', 'Io', NULL, 70, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('4', 'Europa', NULL, 72, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('5', 'Amalthea', NULL, 61, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('6', 'Himalia', NULL, 63, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('7', 'Thebe', NULL, 13, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('8', 'Elara', NULL, 15, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('9', 'Pasiphae', NULL, 19, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('10', 'Metis', NULL, 29, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('11', 'Carme', NULL, 39, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('12', 'Sinope', NULL, 49, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('13', 'Lysithea', NULL, 10, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('14', 'Ananke', NULL, 17, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('15', 'Leda', NULL, 68, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('16', 'Adrastea', NULL, 31, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('17', 'Callirrhoe', NULL, 32, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('18', 'Themisto', NULL, 35, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('19', 'Praxidike', NULL, 45, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('20', 'alyke', NULL, 55, NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', NULL, 2, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'Venus', NULL, 20, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'Earth', NULL, 22, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'Mars', NULL, 23, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'Ceres', NULL, 25, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'Jupiter', NULL, 27, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'Saturn', NULL, 34, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'Uranus', NULL, 28, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'Neptune', NULL, 38, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'Pluto', NULL, 40, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'Makemake', NULL, 45, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'Eris', NULL, 50, NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sirius', NULL, 3, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (2, 'Canopus', NULL, 4, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (3, 'Acturus', NULL, 6, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (4, 'Vega', NULL, 5, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (5, 'Rigel', NULL, 8, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (6, 'Procyon', NULL, 7, NULL, NULL, NULL, NULL);


--
-- Name: asteroid asteroid_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_name_key UNIQUE (name);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_galaxy_id_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key1 UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_galaxy_id_key2; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key2 UNIQUE (galaxy_id);


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
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

