--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: author; Type: TABLE; Schema: public; Owner: Guest; Tablespace: 
--

CREATE TABLE author (
    id integer NOT NULL,
    author character varying
);


ALTER TABLE author OWNER TO "Guest";

--
-- Name: author_id_seq; Type: SEQUENCE; Schema: public; Owner: Guest
--

CREATE SEQUENCE author_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE author_id_seq OWNER TO "Guest";

--
-- Name: author_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Guest
--

ALTER SEQUENCE author_id_seq OWNED BY author.id;


--
-- Name: catalog; Type: TABLE; Schema: public; Owner: Guest; Tablespace: 
--

CREATE TABLE catalog (
    id integer NOT NULL,
    copies integer,
    id_title_author integer
);


ALTER TABLE catalog OWNER TO "Guest";

--
-- Name: catalog_id_seq; Type: SEQUENCE; Schema: public; Owner: Guest
--

CREATE SEQUENCE catalog_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE catalog_id_seq OWNER TO "Guest";

--
-- Name: catalog_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Guest
--

ALTER SEQUENCE catalog_id_seq OWNED BY catalog.id;


--
-- Name: patron; Type: TABLE; Schema: public; Owner: Guest; Tablespace: 
--

CREATE TABLE patron (
    id integer NOT NULL,
    due_date character varying,
    id_title_author integer
);


ALTER TABLE patron OWNER TO "Guest";

--
-- Name: patron_id_seq; Type: SEQUENCE; Schema: public; Owner: Guest
--

CREATE SEQUENCE patron_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE patron_id_seq OWNER TO "Guest";

--
-- Name: patron_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Guest
--

ALTER SEQUENCE patron_id_seq OWNED BY patron.id;


--
-- Name: title; Type: TABLE; Schema: public; Owner: Guest; Tablespace: 
--

CREATE TABLE title (
    id integer NOT NULL,
    title character varying
);


ALTER TABLE title OWNER TO "Guest";

--
-- Name: title_author; Type: TABLE; Schema: public; Owner: Guest; Tablespace: 
--

CREATE TABLE title_author (
    id integer NOT NULL,
    id_title integer,
    id_author integer
);


ALTER TABLE title_author OWNER TO "Guest";

--
-- Name: title_author_id_seq; Type: SEQUENCE; Schema: public; Owner: Guest
--

CREATE SEQUENCE title_author_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE title_author_id_seq OWNER TO "Guest";

--
-- Name: title_author_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Guest
--

ALTER SEQUENCE title_author_id_seq OWNED BY title_author.id;


--
-- Name: title_id_seq; Type: SEQUENCE; Schema: public; Owner: Guest
--

CREATE SEQUENCE title_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE title_id_seq OWNER TO "Guest";

--
-- Name: title_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Guest
--

ALTER SEQUENCE title_id_seq OWNED BY title.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY author ALTER COLUMN id SET DEFAULT nextval('author_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY catalog ALTER COLUMN id SET DEFAULT nextval('catalog_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY patron ALTER COLUMN id SET DEFAULT nextval('patron_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY title ALTER COLUMN id SET DEFAULT nextval('title_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY title_author ALTER COLUMN id SET DEFAULT nextval('title_author_id_seq'::regclass);


--
-- Data for Name: author; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY author (id, author) FROM stdin;
\.


--
-- Name: author_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Guest
--

SELECT pg_catalog.setval('author_id_seq', 1, false);


--
-- Data for Name: catalog; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY catalog (id, copies, id_title_author) FROM stdin;
\.


--
-- Name: catalog_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Guest
--

SELECT pg_catalog.setval('catalog_id_seq', 1, false);


--
-- Data for Name: patron; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY patron (id, due_date, id_title_author) FROM stdin;
\.


--
-- Name: patron_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Guest
--

SELECT pg_catalog.setval('patron_id_seq', 1, false);


--
-- Data for Name: title; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY title (id, title) FROM stdin;
\.


--
-- Data for Name: title_author; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY title_author (id, id_title, id_author) FROM stdin;
\.


--
-- Name: title_author_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Guest
--

SELECT pg_catalog.setval('title_author_id_seq', 1, false);


--
-- Name: title_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Guest
--

SELECT pg_catalog.setval('title_id_seq', 1, false);


--
-- Name: author_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest; Tablespace: 
--

ALTER TABLE ONLY author
    ADD CONSTRAINT author_pkey PRIMARY KEY (id);


--
-- Name: catalog_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest; Tablespace: 
--

ALTER TABLE ONLY catalog
    ADD CONSTRAINT catalog_pkey PRIMARY KEY (id);


--
-- Name: patron_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest; Tablespace: 
--

ALTER TABLE ONLY patron
    ADD CONSTRAINT patron_pkey PRIMARY KEY (id);


--
-- Name: title_author_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest; Tablespace: 
--

ALTER TABLE ONLY title_author
    ADD CONSTRAINT title_author_pkey PRIMARY KEY (id);


--
-- Name: title_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest; Tablespace: 
--

ALTER TABLE ONLY title
    ADD CONSTRAINT title_pkey PRIMARY KEY (id);


--
-- Name: public; Type: ACL; Schema: -; Owner: epicodus
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM epicodus;
GRANT ALL ON SCHEMA public TO epicodus;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--
