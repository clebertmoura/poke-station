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

-- Insert test data for 'trainer' table
INSERT INTO trainer (id, name, email, instagram_link) VALUES
    (nextval('seq_trainer'), 'Ash Ketchum', 'ash@example.com', 'ash_ketchum_insta'),
    (nextval('seq_trainer'), 'Misty Waterflower', 'misty@example.com', 'misty_insta'),
    (nextval('seq_trainer'), 'Brock Pewter', 'brock@example.com', 'brock_insta'),
    (nextval('seq_trainer'), 'Gary Oak', 'gary@example.com', 'gary_insta'),
    (nextval('seq_trainer'), 'Serena Kalos', 'serena@example.com', 'serena_insta'),
    (nextval('seq_trainer'), 'May Hoenn', 'may@example.com', 'may_insta'),
    (nextval('seq_trainer'), 'Dawn Sinnoh', 'dawn@example.com', 'dawn_insta'),
    (nextval('seq_trainer'), 'Cynthia Elite', 'cynthia@example.com', 'cynthia_insta'),
    (nextval('seq_trainer'), 'Red Kanto', 'red@example.com', 'red_insta'),
    (nextval('seq_trainer'), 'Ethan Johto', 'ethan@example.com', 'ethan_insta'),
    (nextval('seq_trainer'), 'Nate Unova', 'nate@example.com', 'nate_insta');

-- Insert test data for 'pokemon' table
INSERT INTO pokemon (id, name, trainer_id) VALUES
    (nextval('seq_pokemon'), 'Pikachu', 1),
    (nextval('seq_pokemon'), 'Charmander', 1),
    (nextval('seq_pokemon'), 'Squirtle', 2),
    (nextval('seq_pokemon'), 'Bulbasaur', 3),
    (nextval('seq_pokemon'), 'Vulpix', 4),
    (nextval('seq_pokemon'), 'Eevee', 4),
    (nextval('seq_pokemon'), 'Gyarados', 5),
    (nextval('seq_pokemon'), 'Lapras', 6),
    (nextval('seq_pokemon'), 'Garchomp', 7),
    (nextval('seq_pokemon'), 'Lucario', 8),
    (nextval('seq_pokemon'), 'Snorlax', 9),
    (nextval('seq_pokemon'), 'Typhlosion', 10);
