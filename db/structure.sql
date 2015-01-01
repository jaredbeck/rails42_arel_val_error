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
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: bananas; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE bananas (
    id integer NOT NULL,
    bowl_id integer NOT NULL
);


--
-- Name: bananas_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE bananas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: bananas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE bananas_id_seq OWNED BY bananas.id;


--
-- Name: bowls; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE bowls (
    id integer NOT NULL,
    kitchen_id integer NOT NULL,
    active boolean NOT NULL
);


--
-- Name: bowls_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE bowls_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: bowls_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE bowls_id_seq OWNED BY bowls.id;


--
-- Name: kitchens; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE kitchens (
    id integer NOT NULL,
    active boolean NOT NULL
);


--
-- Name: kitchens_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE kitchens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: kitchens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE kitchens_id_seq OWNED BY kitchens.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY bananas ALTER COLUMN id SET DEFAULT nextval('bananas_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY bowls ALTER COLUMN id SET DEFAULT nextval('bowls_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY kitchens ALTER COLUMN id SET DEFAULT nextval('kitchens_id_seq'::regclass);


--
-- Name: bananas_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY bananas
    ADD CONSTRAINT bananas_pkey PRIMARY KEY (id);


--
-- Name: bowls_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY bowls
    ADD CONSTRAINT bowls_pkey PRIMARY KEY (id);


--
-- Name: kitchens_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY kitchens
    ADD CONSTRAINT kitchens_pkey PRIMARY KEY (id);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: fk_rails_1ff978288a; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY bananas
    ADD CONSTRAINT fk_rails_1ff978288a FOREIGN KEY (bowl_id) REFERENCES bowls(id);


--
-- Name: fk_rails_f4ccded51f; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY bowls
    ADD CONSTRAINT fk_rails_f4ccded51f FOREIGN KEY (kitchen_id) REFERENCES kitchens(id);


--
-- PostgreSQL database dump complete
--

SET search_path TO "$user",public;

INSERT INTO schema_migrations (version) VALUES ('20150101033923');

INSERT INTO schema_migrations (version) VALUES ('20150101034302');

INSERT INTO schema_migrations (version) VALUES ('20150101034353');

