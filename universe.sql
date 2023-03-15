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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(25) NOT NULL,
    description text,
    age_in_millions_of_years integer,
    star_qty integer,
    ray numeric
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
-- Name: galaxy_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_types (
    galaxy_types_id integer NOT NULL,
    name character varying(25) NOT NULL,
    description text
);


ALTER TABLE public.galaxy_types OWNER TO freecodecamp;

--
-- Name: galaxy_types_galaxy_types_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_types_galaxy_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_types_galaxy_types_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_types_galaxy_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_types_galaxy_types_id_seq OWNED BY public.galaxy_types.galaxy_types_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(25) NOT NULL,
    description text,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    is_spherical boolean,
    planet_id integer
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
    name character varying(25) NOT NULL,
    description text,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    has_life boolean,
    is_spherical boolean,
    star_id integer NOT NULL,
    day_durantion integer,
    diameter numeric,
    temperature numeric,
    superfice_area numeric
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
-- Name: planet_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_types (
    planet_types_id integer NOT NULL,
    name character varying(25) NOT NULL,
    description text
);


ALTER TABLE public.planet_types OWNER TO freecodecamp;

--
-- Name: planet_types_planet_types_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_types_planet_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_types_planet_types_id_seq OWNER TO freecodecamp;

--
-- Name: planet_types_planet_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_types_planet_types_id_seq OWNED BY public.planet_types.planet_types_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(25) NOT NULL,
    description text,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    is_spherical boolean,
    galaxy_id integer NOT NULL,
    mass numeric,
    color character varying(20),
    temperature numeric
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxy_types galaxy_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types ALTER COLUMN galaxy_types_id SET DEFAULT nextval('public.galaxy_types_galaxy_types_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet_types planet_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types ALTER COLUMN planet_types_id SET DEFAULT nextval('public.planet_types_planet_types_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (5, 'Milky Way', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Andromeda Galaxy', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (7, 'Messier 81', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (8, 'Messier 82', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (9, 'IC 10', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (10, 'Centaurus A', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (11, 'Segue 2', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (12, 'Messier 87', NULL, NULL, NULL, NULL);


--
-- Data for Name: galaxy_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_types VALUES (1, 'Spiral Bar', NULL);
INSERT INTO public.galaxy_types VALUES (2, 'Spiral', NULL);
INSERT INTO public.galaxy_types VALUES (3, 'Elliptiocal', NULL);
INSERT INTO public.galaxy_types VALUES (4, 'Irregular', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', NULL, NULL, NULL, NULL, 13);
INSERT INTO public.moon VALUES (2, 'Titan', NULL, NULL, NULL, NULL, 14);
INSERT INTO public.moon VALUES (3, 'Mimas', NULL, NULL, NULL, NULL, 15);
INSERT INTO public.moon VALUES (4, 'Dione', NULL, NULL, NULL, NULL, 16);
INSERT INTO public.moon VALUES (5, 'Ganymed', NULL, NULL, NULL, NULL, 17);
INSERT INTO public.moon VALUES (6, 'Io', NULL, NULL, NULL, NULL, 18);
INSERT INTO public.moon VALUES (7, 'Enceladus', NULL, NULL, NULL, NULL, 19);
INSERT INTO public.moon VALUES (8, 'Tethys', NULL, NULL, NULL, NULL, 20);
INSERT INTO public.moon VALUES (9, 'Europa', NULL, NULL, NULL, NULL, 21);
INSERT INTO public.moon VALUES (10, 'Callisto', NULL, NULL, NULL, NULL, 22);
INSERT INTO public.moon VALUES (11, 'Lapetus', NULL, NULL, NULL, NULL, 23);
INSERT INTO public.moon VALUES (12, 'Hyperion', NULL, NULL, NULL, NULL, 24);
INSERT INTO public.moon VALUES (13, 'Amalthea', NULL, NULL, NULL, NULL, 13);
INSERT INTO public.moon VALUES (14, 'Epimetheus', NULL, NULL, NULL, NULL, 14);
INSERT INTO public.moon VALUES (15, 'Himalia', NULL, NULL, NULL, NULL, 15);
INSERT INTO public.moon VALUES (16, 'Thebe', NULL, NULL, NULL, NULL, 16);
INSERT INTO public.moon VALUES (17, 'Adrastea', NULL, NULL, NULL, NULL, 17);
INSERT INTO public.moon VALUES (18, 'Carme', NULL, NULL, NULL, NULL, 18);
INSERT INTO public.moon VALUES (19, 'Ananke', NULL, NULL, NULL, NULL, 19);
INSERT INTO public.moon VALUES (20, 'Elara', NULL, NULL, NULL, NULL, 20);
INSERT INTO public.moon VALUES (21, 'Sinope', NULL, NULL, NULL, NULL, 21);
INSERT INTO public.moon VALUES (22, 'Carpo', NULL, NULL, NULL, NULL, 22);
INSERT INTO public.moon VALUES (23, 'Daphnis', NULL, NULL, NULL, NULL, 23);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (13, 'Earth', NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (14, 'Mercury', NULL, NULL, NULL, NULL, NULL, 8, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (15, 'Mars', NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (16, 'Jupiter', NULL, NULL, NULL, NULL, NULL, 10, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (17, 'Venus', NULL, NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (18, 'Neptune', NULL, NULL, NULL, NULL, NULL, 12, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (19, 'Saturn', NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (20, 'Uranus', NULL, NULL, NULL, NULL, NULL, 8, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (21, 'CoRoT-7b', NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (22, 'Gliese 581', NULL, NULL, NULL, NULL, NULL, 10, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (23, 'HD 209458b', NULL, NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (24, 'HIP 13044b', NULL, NULL, NULL, NULL, NULL, 12, NULL, NULL, NULL, NULL);


--
-- Data for Name: planet_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_types VALUES (1, 'Gas giants', NULL);
INSERT INTO public.planet_types VALUES (2, 'Neptunian planets', NULL);
INSERT INTO public.planet_types VALUES (3, 'Super-Earths', NULL);
INSERT INTO public.planet_types VALUES (4, 'Terrestrial planets', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (7, 'Betelgeuse', NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL);
INSERT INTO public.star VALUES (8, 'Altair', NULL, NULL, NULL, NULL, 8, NULL, NULL, NULL);
INSERT INTO public.star VALUES (9, 'Sirius', NULL, NULL, NULL, NULL, 9, NULL, NULL, NULL);
INSERT INTO public.star VALUES (10, 'Canopus', NULL, NULL, NULL, NULL, 10, NULL, NULL, NULL);
INSERT INTO public.star VALUES (11, 'Vega', NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL);
INSERT INTO public.star VALUES (12, 'Capella', NULL, NULL, NULL, NULL, 12, NULL, NULL, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 12, true);


--
-- Name: galaxy_types_galaxy_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_types_galaxy_types_id_seq', 33, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 23, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 24, true);


--
-- Name: planet_types_planet_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_types_planet_types_id_seq', 4, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 12, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy_types galaxy_types_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_name_key UNIQUE (name);


--
-- Name: galaxy_types galaxy_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_pkey PRIMARY KEY (galaxy_types_id);


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
-- Name: planet_types planet_types_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_name_key UNIQUE (name);


--
-- Name: planet_types planet_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_pkey PRIMARY KEY (planet_types_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


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

