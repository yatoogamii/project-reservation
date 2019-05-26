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
-- Name: antipasti; Type: TABLE; Schema: public; Owner: elias
--

CREATE TABLE public.antipasti (
    id integer NOT NULL,
    name character varying(80),
    price numeric
);


ALTER TABLE public.antipasti OWNER TO elias;

--
-- Name: antipasti_id_seq; Type: SEQUENCE; Schema: public; Owner: elias
--

CREATE SEQUENCE public.antipasti_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.antipasti_id_seq OWNER TO elias;

--
-- Name: antipasti_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: elias
--

ALTER SEQUENCE public.antipasti_id_seq OWNED BY public.antipasti.id;


--
-- Name: desserts; Type: TABLE; Schema: public; Owner: elias
--

CREATE TABLE public.desserts (
    id integer NOT NULL,
    name text,
    description text,
    price numeric
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
    name character varying(80),
    description text,
    price numeric
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
-- Name: ingrediens_id_seq; Type: SEQUENCE; Schema: public; Owner: elias
--

CREATE SEQUENCE public.ingrediens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ingrediens_id_seq OWNER TO elias;

--
-- Name: ingrediens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: elias
--

ALTER SEQUENCE public.ingrediens_id_seq OWNED BY public.ingredients.id;


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
-- Name: salad; Type: TABLE; Schema: public; Owner: elias
--

CREATE TABLE public.salad (
    id integer NOT NULL,
    name character varying(80),
    ingredients text,
    price numeric
);


ALTER TABLE public.salad OWNER TO elias;

--
-- Name: salades_id_seq; Type: SEQUENCE; Schema: public; Owner: elias
--

CREATE SEQUENCE public.salades_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.salades_id_seq OWNER TO elias;

--
-- Name: salades_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: elias
--

ALTER SEQUENCE public.salades_id_seq OWNED BY public.salad.id;


--
-- Name: taglieri; Type: TABLE; Schema: public; Owner: elias
--

CREATE TABLE public.taglieri (
    id integer NOT NULL,
    name character varying(80),
    ingredients text,
    price numeric
);


ALTER TABLE public.taglieri OWNER TO elias;

--
-- Name: taglieri_id_seq; Type: SEQUENCE; Schema: public; Owner: elias
--

CREATE SEQUENCE public.taglieri_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.taglieri_id_seq OWNER TO elias;

--
-- Name: taglieri_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: elias
--

ALTER SEQUENCE public.taglieri_id_seq OWNED BY public.taglieri.id;


--
-- Name: antipasti id; Type: DEFAULT; Schema: public; Owner: elias
--

ALTER TABLE ONLY public.antipasti ALTER COLUMN id SET DEFAULT nextval('public.antipasti_id_seq'::regclass);


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

ALTER TABLE ONLY public.ingredients ALTER COLUMN id SET DEFAULT nextval('public.ingrediens_id_seq'::regclass);


--
-- Name: pizzas id; Type: DEFAULT; Schema: public; Owner: elias
--

ALTER TABLE ONLY public.pizzas ALTER COLUMN id SET DEFAULT nextval('public.pizzas_id_seq'::regclass);


--
-- Name: salad id; Type: DEFAULT; Schema: public; Owner: elias
--

ALTER TABLE ONLY public.salad ALTER COLUMN id SET DEFAULT nextval('public.salades_id_seq'::regclass);


--
-- Name: taglieri id; Type: DEFAULT; Schema: public; Owner: elias
--

ALTER TABLE ONLY public.taglieri ALTER COLUMN id SET DEFAULT nextval('public.taglieri_id_seq'::regclass);


--
-- Data for Name: antipasti; Type: TABLE DATA; Schema: public; Owner: elias
--

COPY public.antipasti (id, name, price) FROM stdin;
1	Arancino Rosso (viande, sauce tomate)	4.50
2	Arancino Bianco (fromage)	4.50
3	Mini-Mozzarella panées	4.50
4	Mozzarella di Bufala	6
5	Burrata	6.50
6	Assiette Saucisson piquant Spianata & Provola fumée	12
7	Assiette jambon de Parme 18 mois & Mozzarella di Bufala	12
\.


--
-- Data for Name: desserts; Type: TABLE DATA; Schema: public; Owner: elias
--

COPY public.desserts (id, name, description, price) FROM stdin;
6	Café gourmand	Café, 1mini-cannolo, 1 mini baba au rhum, 1 profiterole à l’italienne	8
1	Tarte Citron & Pignons d'amandes	\N	6
2	Tiramisu	\N	6
3	Pastiera	\N	6
4	Glace	\N	6
5	Flute Limoncella	\N	7
\.


--
-- Data for Name: drinks; Type: TABLE DATA; Schema: public; Owner: elias
--

COPY public.drinks (id, name, description, price) FROM stdin;
4	Bière 33cl	Moretti, Peroni Nastro azzurro	4
6	Verre de vin	blanc Greco di tufo, rouge Nero di Avola, rosé Tre Venezie	5
7	Bouteille de vin	Blanc Greco di tufo, roug Nero di Avola, rosé Tre Venezie	22
8	Bouteille de vin	Blanc Lambrusso, rosé Lambrusso	15
9	Prosecco	\N	5
10	Aperol Spritzz	\N	7
11	Limoncello	\N	5
12	Café	\N	2
5	Jus variés 25cl	\N	3.5
3	Soft 33cl	Coca, Coca zero, Orangina, Schweppes agrumes, Ice tea, San pellegrino citron, San pellegrino orange, Red bull	3.5
2	Bouteille d'eau 75cl	minérale, gazeuse	5
1	Bouteille d'eau 50cl	minérale, gazeuse	3
\.


--
-- Data for Name: ingredients; Type: TABLE DATA; Schema: public; Owner: elias
--

COPY public.ingredients (id, name) FROM stdin;
1	Sauce tomate
2	Ail
3	Origan
4	Huile d'olive
5	Mozzarella Fior di latte
6	Basilic
7	Mozzarella di Bufala
8	Olives noires
9	Anchois
10	Câpres
11	Aubgergines
12	Ricotta
13	Provola fumée
14	Parmesan
15	Jambon de Parme 18 mois
16	Roquette
17	Gorgonzola
18	Huile truffée
19	Saucisson piquant Spianata
20	Tomates cerises
21	Saucisson Calabrais Nduja
22	Thon à l'huile
23	Oignon rouge
24	Fromage Stracchino
25	Speck
26	Brie
27	Courgettes
28	Poivrons
29	Persil
30	Stracciatella di Burrata
31	Bresaola Punta d'anca
32	Jus de citron
33	Crème de courgette
34	Scamorza fumée
35	Cèpes émincées
36	Artichauts
37	Tomates séchées
\.


--
-- Data for Name: pizzas; Type: TABLE DATA; Schema: public; Owner: elias
--

COPY public.pizzas (id, name, ingredients) FROM stdin;
\.


--
-- Data for Name: salad; Type: TABLE DATA; Schema: public; Owner: elias
--

COPY public.salad (id, name, ingredients, price) FROM stdin;
1	Caprese	Tomate, Mozzarella di Bufala, Olives noires, Basilic, Huile d’olive	13
2	Lombarda	Laitue Iceberg, Roquette, Bresaola Punta d’anca, Tomates cerise, Tomates séchées, Parmesan, Citron	16
3	Mediterranea	Laitue Iceberg, Thon, Seiches grillées, Tomates cerise, Oignon, Câpres, Origan	17
\.


--
-- Data for Name: taglieri; Type: TABLE DATA; Schema: public; Owner: elias
--

COPY public.taglieri (id, name, ingredients, price) FROM stdin;
1	Légumes grillés	Poivrons grillés, Artichauts à l'huile, Aubergines confites, Courgettes grillées, Poivrons farcis au thon	15
2	Charcuteries italiennes	Jambon de Parme de 18 mois, Saucisson piquant Spianata, Mortadelle Bologne, Jambon rôti aux herbes	17
3	Fromages	Mozzarella di Bufala, Gorgonzola, Scamorza fumée, Parmesan	16
4	Di mare	Seiches grillées, Anchois marinés, Poulpe à l’huile, Crevettes citronnées	16
5	Antipasto Misto	Charcuteries, Fromages, Poulpe grillé, Seiches grillées, Légumes grillées	27
\.


--
-- Name: antipasti_id_seq; Type: SEQUENCE SET; Schema: public; Owner: elias
--

SELECT pg_catalog.setval('public.antipasti_id_seq', 7, true);


--
-- Name: desserts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: elias
--

SELECT pg_catalog.setval('public.desserts_id_seq', 6, true);


--
-- Name: drinks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: elias
--

SELECT pg_catalog.setval('public.drinks_id_seq', 12, true);


--
-- Name: ingrediens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: elias
--

SELECT pg_catalog.setval('public.ingrediens_id_seq', 37, true);


--
-- Name: pizzas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: elias
--

SELECT pg_catalog.setval('public.pizzas_id_seq', 7, true);


--
-- Name: salades_id_seq; Type: SEQUENCE SET; Schema: public; Owner: elias
--

SELECT pg_catalog.setval('public.salades_id_seq', 3, true);


--
-- Name: taglieri_id_seq; Type: SEQUENCE SET; Schema: public; Owner: elias
--

SELECT pg_catalog.setval('public.taglieri_id_seq', 5, true);


--
-- Name: antipasti antipasti_pkey; Type: CONSTRAINT; Schema: public; Owner: elias
--

ALTER TABLE ONLY public.antipasti
    ADD CONSTRAINT antipasti_pkey PRIMARY KEY (id);


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
-- Name: ingredients ingrediens_pkey; Type: CONSTRAINT; Schema: public; Owner: elias
--

ALTER TABLE ONLY public.ingredients
    ADD CONSTRAINT ingrediens_pkey PRIMARY KEY (id);


--
-- Name: pizzas pizzas_pkey; Type: CONSTRAINT; Schema: public; Owner: elias
--

ALTER TABLE ONLY public.pizzas
    ADD CONSTRAINT pizzas_pkey PRIMARY KEY (id);


--
-- Name: salad salades_pkey; Type: CONSTRAINT; Schema: public; Owner: elias
--

ALTER TABLE ONLY public.salad
    ADD CONSTRAINT salades_pkey PRIMARY KEY (id);


--
-- Name: taglieri taglieri_pkey; Type: CONSTRAINT; Schema: public; Owner: elias
--

ALTER TABLE ONLY public.taglieri
    ADD CONSTRAINT taglieri_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

