--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1
-- Dumped by pg_dump version 16.0

-- Started on 2023-11-27 18:21:13 UTC

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
-- TOC entry 215 (class 1259 OID 24576)
-- Name: pokemon; Type: TABLE; Schema: public; Owner: pokestation
--

CREATE TABLE public.pokemon (
    id bigint NOT NULL,
    name character varying(255),
    trainer_id bigint
);


ALTER TABLE public.pokemon OWNER TO pokestation;

--
-- TOC entry 217 (class 1259 OID 26222)
-- Name: seq_pokemon; Type: SEQUENCE; Schema: public; Owner: pokestation
--

CREATE SEQUENCE public.seq_pokemon
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.seq_pokemon OWNER TO pokestation;

--
-- TOC entry 218 (class 1259 OID 26223)
-- Name: seq_trainer; Type: SEQUENCE; Schema: public; Owner: pokestation
--

CREATE SEQUENCE public.seq_trainer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.seq_trainer OWNER TO pokestation;

--
-- TOC entry 216 (class 1259 OID 24584)
-- Name: trainer; Type: TABLE; Schema: public; Owner: pokestation
--

CREATE TABLE public.trainer (
    id bigint NOT NULL,
    email character varying(255),
    instagram_link character varying(255),
    name character varying(255)
);


ALTER TABLE public.trainer OWNER TO pokestation;

--
-- TOC entry 3206 (class 2606 OID 24580)
-- Name: pokemon pokemon_pkey; Type: CONSTRAINT; Schema: public; Owner: pokestation
--

ALTER TABLE ONLY public.pokemon
    ADD CONSTRAINT pokemon_pkey PRIMARY KEY (id);


--
-- TOC entry 3208 (class 2606 OID 24590)
-- Name: trainer trainer_pkey; Type: CONSTRAINT; Schema: public; Owner: pokestation
--

ALTER TABLE ONLY public.trainer
    ADD CONSTRAINT trainer_pkey PRIMARY KEY (id);


--
-- TOC entry 3209 (class 2606 OID 24594)
-- Name: pokemon pokemon_fk1; Type: FK CONSTRAINT; Schema: public; Owner: pokestation
--

ALTER TABLE ONLY public.pokemon
    ADD CONSTRAINT pokemon_fk1 FOREIGN KEY (trainer_id) REFERENCES public.trainer(id);


-- Completed on 2023-11-27 18:21:13 UTC

--
-- PostgreSQL database dump complete
--

