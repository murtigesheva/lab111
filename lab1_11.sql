--
-- PostgreSQL database dump
--

-- Dumped from database version 12.16 (Ubuntu 12.16-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.16 (Ubuntu 12.16-0ubuntu0.20.04.1)

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
-- Name: equipment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.equipment (
    id_equipment integer NOT NULL,
    title character varying(100),
    model character varying(100),
    place_id integer
);


ALTER TABLE public.equipment OWNER TO postgres;

--
-- Name: equipment_id_equipment_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.equipment ALTER COLUMN id_equipment ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.equipment_id_equipment_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: inventory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.inventory (
    id_inventory integer NOT NULL,
    title character varying(100),
    description character varying(100),
    place_id integer
);


ALTER TABLE public.inventory OWNER TO postgres;

--
-- Name: inventory_id_inventory_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.inventory ALTER COLUMN id_inventory ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.inventory_id_inventory_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: locate; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.locate (
    id_location integer NOT NULL,
    title character varying(100),
    address character varying(100)
);


ALTER TABLE public.locate OWNER TO postgres;

--
-- Name: locate_id_location_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.locate ALTER COLUMN id_location ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.locate_id_location_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: repair; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.repair (
    id_repair integer NOT NULL,
    date_start date,
    date_end date,
    description character varying(100),
    equipment_id integer
);


ALTER TABLE public.repair OWNER TO postgres;

--
-- Name: repair_id_repair_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.repair ALTER COLUMN id_repair ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.repair_id_repair_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: teh_condition; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.teh_condition (
    id_condition integer NOT NULL,
    condition character varying(100),
    date_service character varying(100),
    equipment_id integer
);


ALTER TABLE public.teh_condition OWNER TO postgres;

--
-- Name: teh_condition_id_condition_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.teh_condition ALTER COLUMN id_condition ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.teh_condition_id_condition_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Data for Name: equipment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.equipment (id_equipment, title, model, place_id) FROM stdin;
1	Verstak	slesalny	3
2	Podemnik	peredvizhnoq	9
3	Podemnik	kanavny	9
4	Vesy	elektronny	4
5	Pres	gidravlicheskiy	4
6	Generatory	gazovye	5
7	Pylososy	stroitelnye	6
8	Kondicionery	nastennye	7
9	Pech	mufelnay	10
10	Overlok	dvoynoy	11
\.


--
-- Data for Name: inventory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.inventory (id_inventory, title, description, place_id) FROM stdin;
1	Baki	toplivo	1
2	Stoly	derevo	3
3	Bochki	voda	2
4	Stanki	po derevu	4
5	Stanki	po metalu	4
6	Generatory	gazovye	5
7	Pylososy	stroitelnye	6
8	Kondicionery	nastennye	7
9	Kondicionery	antonnye	7
10	Lampy	infrakrasnye	8
\.


--
-- Data for Name: locate; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.locate (id_location, title, address) FROM stdin;
1	A1	Lenina 61
2	A2	Pobeda 58
3	B1	Yadrenceva 9
4	B2	Sportivnay 154
5	B3	Zelenaya 35
6	C1	Anatoliya 220
7	C2	Gavrilova 63
8	D1	Sharova 156
9	E1	Socialicticheskiy 95
10	E2	Gagarina 76
11	E3	Pochtovaya 48
\.


--
-- Data for Name: repair; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.repair (id_repair, date_start, date_end, description, equipment_id) FROM stdin;
1	2023-09-06	2023-09-10	good	1
2	2023-08-15	2023-08-21	good	2
3	2023-08-10	2023-09-03	good	3
4	2022-05-05	2022-05-06	good	4
5	2022-07-06	2022-07-20	good	5
6	2023-07-19	2023-07-30	sffs	6
7	2023-09-07	2023-09-18	efad	7
8	2023-09-10	2023-09-16	ffds	8
9	2023-02-05	2023-02-10	sfghs	9
10	2023-08-08	2023-08-19	gfsghf	10
\.


--
-- Data for Name: teh_condition; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.teh_condition (id_condition, condition, date_service, equipment_id) FROM stdin;
1	8	10.09.2023	1
2	6	21.08.2023	2
3	10	03.09.2023	3
4	5	06.05.2022	4
5	6	20.07.2022	5
6	9	30.07.2023	6
7	7	18.09.2023	7
8	10	16.09.2023	8
9	5	10.02.2023	9
10	8	19.08.2023	10
\.


--
-- Name: equipment_id_equipment_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.equipment_id_equipment_seq', 10, true);


--
-- Name: inventory_id_inventory_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.inventory_id_inventory_seq', 10, true);


--
-- Name: locate_id_location_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.locate_id_location_seq', 11, true);


--
-- Name: repair_id_repair_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.repair_id_repair_seq', 10, true);


--
-- Name: teh_condition_id_condition_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.teh_condition_id_condition_seq', 10, true);


--
-- Name: equipment equipment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.equipment
    ADD CONSTRAINT equipment_pkey PRIMARY KEY (id_equipment);


--
-- Name: inventory inventory_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inventory
    ADD CONSTRAINT inventory_pkey PRIMARY KEY (id_inventory);


--
-- Name: locate locate_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.locate
    ADD CONSTRAINT locate_pkey PRIMARY KEY (id_location);


--
-- Name: repair repair_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.repair
    ADD CONSTRAINT repair_pkey PRIMARY KEY (id_repair);


--
-- Name: teh_condition teh_condition_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teh_condition
    ADD CONSTRAINT teh_condition_pkey PRIMARY KEY (id_condition);


--
-- Name: teh_condition fk_equipment_condition; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teh_condition
    ADD CONSTRAINT fk_equipment_condition FOREIGN KEY (equipment_id) REFERENCES public.equipment(id_equipment);


--
-- Name: equipment fk_equipment_place; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.equipment
    ADD CONSTRAINT fk_equipment_place FOREIGN KEY (place_id) REFERENCES public.locate(id_location);


--
-- Name: inventory fk_place; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inventory
    ADD CONSTRAINT fk_place FOREIGN KEY (place_id) REFERENCES public.locate(id_location);


--
-- Name: repair fk_repair_equipment; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.repair
    ADD CONSTRAINT fk_repair_equipment FOREIGN KEY (equipment_id) REFERENCES public.equipment(id_equipment);


--
-- PostgreSQL database dump complete
--

