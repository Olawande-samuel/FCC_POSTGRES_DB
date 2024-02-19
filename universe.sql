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
-- Name: constellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellation (
    name character varying(20),
    constellation_id integer NOT NULL,
    star_id integer NOT NULL,
    iscool boolean
);


ALTER TABLE public.constellation OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constellation_constellation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constellation_constellation_id_seq OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constellation_constellation_id_seq OWNED BY public.constellation.constellation_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text NOT NULL,
    type character varying(20),
    distance_from_earth_in_billion_light_years numeric(3,2),
    age_in_billion_years numeric(4,2),
    iscool boolean
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
    description text NOT NULL,
    distance_from_planet_in_km integer,
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
    name character varying(20) NOT NULL,
    description text NOT NULL,
    size_in_km_sq integer NOT NULL,
    star_id integer,
    has_life boolean,
    is_spherical boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_plant_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_plant_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_plant_id_seq OWNER TO freecodecamp;

--
-- Name: planet_plant_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_plant_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text NOT NULL,
    type character varying(20),
    galaxy_id integer
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
-- Name: constellation constellation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation ALTER COLUMN constellation_id SET DEFAULT nextval('public.constellation_constellation_id_seq'::regclass);


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

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_plant_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellation VALUES ('Centaurus', 1, 5, true);
INSERT INTO public.constellation VALUES ('Lyra', 2, 3, false);
INSERT INTO public.constellation VALUES ('Andromeda', 3, 2, true);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 'The Andromeda Galaxy, also known as Messier 31 (M31), is a massive spiral galaxy located in the constellation Andromeda. Positioned at a distance of approximately 2.5 million light-years from Earth, it is the closest spiral galaxy to our own Milky Way. With a diameter of around 220,000 light-years, Andromeda is the largest galaxy in the Local Group, a cosmic neighborhood that includes the Milky Way, the Triangulum Galaxy (M33), and other smaller galaxies', 'spiral', 2.50, 10.00, NULL);
INSERT INTO public.galaxy VALUES (2, 'Milky Way', 'The Milky Way Galaxy is the barred spiral galaxy that contains our Solar System. It is a vast system of stars, planets, gas, dust, and dark matter, all bound together by gravity.', 'spiral', 0.00, 13.60, NULL);
INSERT INTO public.galaxy VALUES (3, 'Tadpole', 'The Tadpole Galaxy is a peculiar galaxy that acquired its name due to its distinct shape resembling a tadpole.', 'cometary', 0.42, 0.10, NULL);
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 'The Sombrero Galaxy, also known as Messier 104 (M104), is a spiral galaxy located in the constellation Virgo.', 'spiral', 0.28, 13.25, NULL);
INSERT INTO public.galaxy VALUES (5, 'Pinwheel', 'The Pinwheel Galaxy, also known as Messier 101 (M101), is a face-on spiral galaxy located in the constellation Ursa Major.', 'spiral', 0.21, 13.51, NULL);
INSERT INTO public.galaxy VALUES (6, 'Condor', 'The Condor Galaxy is a large barred spiral galaxy located 212 million light-years away in the southern constellation Pavo (the Peacock)', 'Spiral', 0.21, 40.00, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Earth"s moon', 23242323, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 'Mars moon', 343324, 2);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Mars second moon', 42442, 2);
INSERT INTO public.moon VALUES (4, 'Titania', 'uranus moon', 3443, 3);
INSERT INTO public.moon VALUES (5, 'Oberon', 'uranus moon', 3232, 3);
INSERT INTO public.moon VALUES (6, 'Ariel', 'Uranus moon', 3434, 3);
INSERT INTO public.moon VALUES (7, 'umbriel', 'uranus moon', 4535, 3);
INSERT INTO public.moon VALUES (8, 'Miranda', 'UR moon', 1234, 3);
INSERT INTO public.moon VALUES (9, 'Perdita', 'UR moon', 980, 3);
INSERT INTO public.moon VALUES (10, 'Puck', 'UR moon', 9876, 3);
INSERT INTO public.moon VALUES (11, 'Francisco', 'UR moon', 4563, 3);
INSERT INTO public.moon VALUES (12, 'Caliban', 'UR moon', 987, 3);
INSERT INTO public.moon VALUES (13, 'Stephano', 'UR moon', 6504, 3);
INSERT INTO public.moon VALUES (14, 'Perm', 'moon', 9988, 4);
INSERT INTO public.moon VALUES (15, 'muck', 'moond', 981, 5);
INSERT INTO public.moon VALUES (16, 'Bitranda', 'another moon', 7642, 6);
INSERT INTO public.moon VALUES (17, 'Chilrand', 'false moon', 3421, 7);
INSERT INTO public.moon VALUES (18, 'Bhobos', 'ralmoon', 8984, 8);
INSERT INTO public.moon VALUES (19, 'Methapho', 'moon', 876, 9);
INSERT INTO public.moon VALUES (20, 'maliban', 'mooon', 8966, 9);
INSERT INTO public.moon VALUES (21, 'oraimo', 'moon', 6654, 10);
INSERT INTO public.moon VALUES (22, 'beimos', 'moon', 6004, 11);
INSERT INTO public.moon VALUES (23, 'noom', 'alternate moon', 3232322, 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', ' is the largest and densest of the inner planets, the only one known to have current geological activity, and the only place in the universe where life is known to exist', 5000, 4, true, true);
INSERT INTO public.planet VALUES (2, 'Mars', 'is smaller than Earth and Venus (0.107 ME). It has an atmosphere of mostly carbon dioxide with a surface pressure of 6.1 millibars (0.088 psi; 0.18 inHg); roughly 0.6% of that of Earth but sufficient to support weather phenomena', 144400, 4, true, true);
INSERT INTO public.planet VALUES (3, 'Uranus', 'has the lowest mass of the outer planets. Uniquely among the planets, it orbits the Sun on its side; its axial tilt is over ninety degrees to the ecliptic. This gives the planet extreme seasonal variation as each pole points toward and then away from the Sun', 80080, 4, false, true);
INSERT INTO public.planet VALUES (4, 'Planet B', 'planet in proxima centauri', 100232, 5, false, true);
INSERT INTO public.planet VALUES (5, 'Kepler B', 'planet in KEPLER_371', 322434, 6, false, true);
INSERT INTO public.planet VALUES (6, 'Sirius A Planet A', 'planet orbiting', 100232, 1, false, true);
INSERT INTO public.planet VALUES (7, 'Betelguese  B', 'planet orbiting', 22434, 2, false, true);
INSERT INTO public.planet VALUES (8, 'Vega B', 'planet orbiting B', 102332, 3, false, true);
INSERT INTO public.planet VALUES (9, 'Alkaid B', 'orbiting Alkaid', 321213, 7, false, false);
INSERT INTO public.planet VALUES (10, 'Eltain B', 'orbiting Eltain', 43534, 8, false, true);
INSERT INTO public.planet VALUES (11, 'Star A - B', 'orbiting star A', 44343, 9, false, false);
INSERT INTO public.planet VALUES (12, 'Pinwheel Star A - B', 'Orbiting pinwheel star-a', 87776, 10, false, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sirius A', 'The brightest star in the night sky, located in the constellation Canis Major
The brightest star in the night sky, located in the constellation Canis Major.', 'binary', 1);
INSERT INTO public.star VALUES (2, 'Betelgeuse', ' A red supergiant star in the constellation Orion, easily visible as one ofthe bright stars in Orions shoulder.', 'Red supergiant', 1);
INSERT INTO public.star VALUES (3, 'Vega', 'A bright star in the constellation Lyra, one of the vertices of the SummerTriangle.', 'white main-sequence', 1);
INSERT INTO public.star VALUES (4, 'Sun', 'The Sun is the star at the center of the Solar System. It is a massive, hot ball of plasma, inflated and heated by energy produced by nuclear fusion reactions at its core.', 'yellow dwarf', 2);
INSERT INTO public.star VALUES (5, 'Proxima Centauri', 'Another star', 'red dwarf', 2);
INSERT INTO public.star VALUES (6, 'Kepler-371', 'Another star', 'G-type', 2);
INSERT INTO public.star VALUES (7, 'Alkaid', 'end star', 'unknown', 3);
INSERT INTO public.star VALUES (8, 'Eltain', 'brightest star', 'unknown', 3);
INSERT INTO public.star VALUES (9, 'Star A', 'first star', 'unknown', 4);
INSERT INTO public.star VALUES (10, 'Pinwheel Star A', 'first star', 'unknown', 5);


--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellation_constellation_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 23, true);


--
-- Name: planet_plant_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_plant_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 10, true);


--
-- Name: constellation constellation_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_name_key UNIQUE (name);


--
-- Name: constellation constellation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_pkey PRIMARY KEY (constellation_id);


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

