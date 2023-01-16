--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1
-- Dumped by pg_dump version 15.1

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

--
-- Name: fullstack; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE fullstack WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Bolivia.1252';


ALTER DATABASE fullstack OWNER TO postgres;

\connect fullstack

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

--
-- Name: modulo3; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA modulo3;


ALTER SCHEMA modulo3 OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: tusuario; Type: TABLE; Schema: modulo3; Owner: postgres
--

CREATE TABLE modulo3.tusuario (
    id_usuario integer NOT NULL,
    nombre_usuario character varying(80),
    edad integer,
    email character varying(100)
);


ALTER TABLE modulo3.tusuario OWNER TO postgres;

--
-- Name: tusuario_id_usuario_seq; Type: SEQUENCE; Schema: modulo3; Owner: postgres
--

CREATE SEQUENCE modulo3.tusuario_id_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE modulo3.tusuario_id_usuario_seq OWNER TO postgres;

--
-- Name: tusuario_id_usuario_seq; Type: SEQUENCE OWNED BY; Schema: modulo3; Owner: postgres
--

ALTER SEQUENCE modulo3.tusuario_id_usuario_seq OWNED BY modulo3.tusuario.id_usuario;


--
-- Name: tusuario id_usuario; Type: DEFAULT; Schema: modulo3; Owner: postgres
--

ALTER TABLE ONLY modulo3.tusuario ALTER COLUMN id_usuario SET DEFAULT nextval('modulo3.tusuario_id_usuario_seq'::regclass);


--
-- Data for Name: tusuario; Type: TABLE DATA; Schema: modulo3; Owner: postgres
--

COPY modulo3.tusuario (id_usuario, nombre_usuario, edad, email) FROM stdin;
1	roberto	30	4444
2	ron	50	 email
3	roberto	30	jonasxxx
4	test	40	jsxxx
\.


--
-- Name: tusuario_id_usuario_seq; Type: SEQUENCE SET; Schema: modulo3; Owner: postgres
--

SELECT pg_catalog.setval('modulo3.tusuario_id_usuario_seq', 4, true);


--
-- Name: tusuario tusuario_pkey; Type: CONSTRAINT; Schema: modulo3; Owner: postgres
--

ALTER TABLE ONLY modulo3.tusuario
    ADD CONSTRAINT tusuario_pkey PRIMARY KEY (id_usuario);


--
-- PostgreSQL database dump complete
--

