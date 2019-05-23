--
-- PostgreSQL database dump
--

-- Dumped from database version 11.2
-- Dumped by pg_dump version 11.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: desserts; Type: TABLE; Schema: public; Owner: elias
--

CREATE TABLE public.desserts (
    id integer NOT NULL,
    name character varying(80),
    description character varying(80)
);


ALTER TABLE public.desserts OWNER TO elias;

--
-- Name: desserts_id_seq; Type: SEQUENCE; Schema: public; Owner: elias
--

CREATE SEQUENCE public.desserts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.desserts_id_seq OWNER TO elias;

--
-- Name: desserts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: elias
--

ALTER SEQUENCE public.desserts_id_seq OWNED BY public.desserts.id;


--
-- Name: drinks; Type: TABLE; Schema: public; Owner: elias
--

CREATE TABLE public.drinks (
    id integer NOT NULL,
    name character varying(80)
);


ALTER TABLE public.drinks OWNER TO elias;

--
-- Name: drinks_id_seq; Type: SEQUENCE; Schema: public; Owner: elias
--

CREATE SEQUENCE public.drinks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.drinks_id_seq OWNER TO elias;

--
-- Name: drinks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: elias
--

ALTER SEQUENCE public.drinks_id_seq OWNED BY public.drinks.id;


--
-- Name: ingredients; Type: TABLE; Schema: public; Owner: elias
--

CREATE TABLE public.ingredients (
    id integer NOT NULL,
    name character varying(80)
);


ALTER TABLE public.ingredients OWNER TO elias;

--
-- Name: ingredients_id_seq; Type: SEQUENCE; Schema: public; Owner: elias
--

CREATE SEQUENCE public.ingredients_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ingredients_id_seq OWNER TO elias;

--
-- Name: ingredients_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: elias
--

ALTER SEQUENCE public.ingredients_id_seq OWNED BY public.ingredients.id;


--
-- Name: pizzas; Type: TABLE; Schema: public; Owner: elias
--

CREATE TABLE public.pizzas (
    id integer NOT NULL,
    name character varying(80),
    ingredients character varying(80)
);


ALTER TABLE public.pizzas OWNER TO elias;

--
-- Name: pizzas_id_seq; Type: SEQUENCE; Schema: public; Owner: elias
--

CREATE SEQUENCE public.pizzas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pizzas_id_seq OWNER TO elias;

--
-- Name: pizzas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: elias
--

ALTER SEQUENCE public.pizzas_id_seq OWNED BY public.pizzas.id;


--
-- Name: desserts id; Type: DEFAULT; Schema: public; Owner: elias
--

ALTER TABLE ONLY public.desserts ALTER COLUMN id SET DEFAULT nextval('public.desserts_id_seq'::regclass);


--
-- Name: drinks id; Type: DEFAULT; Schema: public; Owner: elias
--

ALTER TABLE ONLY public.drinks ALTER COLUMN id SET DEFAULT nextval('public.drinks_id_seq'::regclass);


--
-- Name: ingredients id; Type: DEFAULT; Schema: public; Owner: elias
--

ALTER TABLE ONLY public.ingredients ALTER COLUMN id SET DEFAULT nextval('public.ingredients_id_seq'::regclass);


--
-- Name: pizzas id; Type: DEFAULT; Schema: public; Owner: elias
--

ALTER TABLE ONLY public.pizzas ALTER COLUMN id SET DEFAULT nextval('public.pizzas_id_seq'::regclass);


--
-- Data for Name: desserts; Type: TABLE DATA; Schema: public; Owner: elias
--

COPY public.desserts (id, name, description) FROM stdin;
\.


--
-- Data for Name: drinks; Type: TABLE DATA; Schema: public; Owner: elias
--

COPY public.drinks (id, name) FROM stdin;
1	coca
\.


--
-- Data for Name: ingredients; Type: TABLE DATA; Schema: public; Owner: elias
--

COPY public.ingredients (id, name) FROM stdin;
\.


--
-- Data for Name: pizzas; Type: TABLE DATA; Schema: public; Owner: elias
--

COPY public.pizzas (id, name, ingredients) FROM stdin;
\.


--
-- Name: desserts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: elias
--

SELECT pg_catalog.setval('public.desserts_id_seq', 1, true);


--
-- Name: drinks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: elias
--

SELECT pg_catalog.setval('public.drinks_id_seq', 1, true);


--
-- Name: ingredients_id_seq; Type: SEQUENCE SET; Schema: public; Owner: elias
--

SELECT pg_catalog.setval('public.ingredients_id_seq', 1, false);


--
-- Name: pizzas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: elias
--

SELECT pg_catalog.setval('public.pizzas_id_seq', 7, true);


--
-- Name: desserts desserts_pkey; Type: CONSTRAINT; Schema: public; Owner: elias
--

ALTER TABLE ONLY public.desserts
    ADD CONSTRAINT desserts_pkey PRIMARY KEY (id);


--
-- Name: drinks drinks_pkey; Type: CONSTRAINT; Schema: public; Owner: elias
--

ALTER TABLE ONLY public.drinks
    ADD CONSTRAINT drinks_pkey PRIMARY KEY (id);


--
-- Name: ingredients ingredients_pkey; Type: CONSTRAINT; Schema: public; Owner: elias
--

ALTER TABLE ONLY public.ingredients
    ADD CONSTRAINT ingredients_pkey PRIMARY KEY (id);


--
-- Name: pizzas pizzas_pkey; Type: CONSTRAINT; Schema: public; Owner: elias
--

ALTER TABLE ONLY public.pizzas
    ADD CONSTRAINT pizzas_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

