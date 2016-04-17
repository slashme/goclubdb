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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: david; Tablespace: 
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE auth_group OWNER TO david;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: david
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_id_seq OWNER TO david;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: david
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: david; Tablespace: 
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_group_permissions OWNER TO david;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: david
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_permissions_id_seq OWNER TO david;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: david
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: david; Tablespace: 
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE auth_permission OWNER TO david;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: david
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_permission_id_seq OWNER TO david;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: david
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: david; Tablespace: 
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(30) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE auth_user OWNER TO david;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: david; Tablespace: 
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE auth_user_groups OWNER TO david;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: david
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_groups_id_seq OWNER TO david;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: david
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: david
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_id_seq OWNER TO david;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: david
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: david; Tablespace: 
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_user_user_permissions OWNER TO david;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: david
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_user_permissions_id_seq OWNER TO david;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: david
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: david; Tablespace: 
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE django_content_type OWNER TO david;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: david
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_content_type_id_seq OWNER TO david;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: david
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: david; Tablespace: 
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE django_migrations OWNER TO david;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: david
--

CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_migrations_id_seq OWNER TO david;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: david
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: david; Tablespace: 
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE django_session OWNER TO david;

--
-- Name: goclubdb_club; Type: TABLE; Schema: public; Owner: david; Tablespace: 
--

CREATE TABLE goclubdb_club (
    id integer NOT NULL,
    name character varying(1000) NOT NULL,
    meettime text,
    meetplace text,
    postcode character varying(32),
    contact text,
    website character varying(200),
    lat double precision NOT NULL,
    lon double precision NOT NULL,
    clubstatus_id integer,
    clubtype_id integer,
    layer_id integer NOT NULL
);


ALTER TABLE goclubdb_club OWNER TO david;

--
-- Name: goclubdb_club_id_seq; Type: SEQUENCE; Schema: public; Owner: david
--

CREATE SEQUENCE goclubdb_club_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE goclubdb_club_id_seq OWNER TO david;

--
-- Name: goclubdb_club_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: david
--

ALTER SEQUENCE goclubdb_club_id_seq OWNED BY goclubdb_club.id;


--
-- Name: goclubdb_clubstatus; Type: TABLE; Schema: public; Owner: david; Tablespace: 
--

CREATE TABLE goclubdb_clubstatus (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    description text NOT NULL,
    iconclass character varying(200)
);


ALTER TABLE goclubdb_clubstatus OWNER TO david;

--
-- Name: goclubdb_clubstatus_id_seq; Type: SEQUENCE; Schema: public; Owner: david
--

CREATE SEQUENCE goclubdb_clubstatus_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE goclubdb_clubstatus_id_seq OWNER TO david;

--
-- Name: goclubdb_clubstatus_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: david
--

ALTER SEQUENCE goclubdb_clubstatus_id_seq OWNED BY goclubdb_clubstatus.id;


--
-- Name: goclubdb_clubtype; Type: TABLE; Schema: public; Owner: david; Tablespace: 
--

CREATE TABLE goclubdb_clubtype (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    description text NOT NULL,
    iconurl character varying(200)
);


ALTER TABLE goclubdb_clubtype OWNER TO david;

--
-- Name: goclubdb_clubtype_id_seq; Type: SEQUENCE; Schema: public; Owner: david
--

CREATE SEQUENCE goclubdb_clubtype_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE goclubdb_clubtype_id_seq OWNER TO david;

--
-- Name: goclubdb_clubtype_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: david
--

ALTER SEQUENCE goclubdb_clubtype_id_seq OWNED BY goclubdb_clubtype.id;


--
-- Name: goclubdb_layer; Type: TABLE; Schema: public; Owner: david; Tablespace: 
--

CREATE TABLE goclubdb_layer (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    description text NOT NULL,
    website character varying(200) NOT NULL,
    color character varying(25) NOT NULL
);


ALTER TABLE goclubdb_layer OWNER TO david;

--
-- Name: goclubdb_layer_id_seq; Type: SEQUENCE; Schema: public; Owner: david
--

CREATE SEQUENCE goclubdb_layer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE goclubdb_layer_id_seq OWNER TO david;

--
-- Name: goclubdb_layer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: david
--

ALTER SEQUENCE goclubdb_layer_id_seq OWNED BY goclubdb_layer.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: david
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: david
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: david
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: david
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: david
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: david
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: david
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: david
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: david
--

ALTER TABLE ONLY goclubdb_club ALTER COLUMN id SET DEFAULT nextval('goclubdb_club_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: david
--

ALTER TABLE ONLY goclubdb_clubstatus ALTER COLUMN id SET DEFAULT nextval('goclubdb_clubstatus_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: david
--

ALTER TABLE ONLY goclubdb_clubtype ALTER COLUMN id SET DEFAULT nextval('goclubdb_clubtype_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: david
--

ALTER TABLE ONLY goclubdb_layer ALTER COLUMN id SET DEFAULT nextval('goclubdb_layer_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: david
--



--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: david
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: david
--



--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: david
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: david
--

INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (1, 'Can add permission', 1, 'add_permission');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (2, 'Can change permission', 1, 'change_permission');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (3, 'Can delete permission', 1, 'delete_permission');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (4, 'Can add group', 2, 'add_group');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (5, 'Can change group', 2, 'change_group');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (6, 'Can delete group', 2, 'delete_group');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (7, 'Can add user', 3, 'add_user');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (8, 'Can change user', 3, 'change_user');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (9, 'Can delete user', 3, 'delete_user');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (10, 'Can add content type', 4, 'add_contenttype');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (11, 'Can change content type', 4, 'change_contenttype');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (12, 'Can delete content type', 4, 'delete_contenttype');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (13, 'Can add session', 5, 'add_session');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (14, 'Can change session', 5, 'change_session');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (15, 'Can delete session', 5, 'delete_session');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (16, 'Can add layer', 6, 'add_layer');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (17, 'Can change layer', 6, 'change_layer');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (18, 'Can delete layer', 6, 'delete_layer');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (19, 'Can add clubtype', 7, 'add_clubtype');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (20, 'Can change clubtype', 7, 'change_clubtype');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (21, 'Can delete clubtype', 7, 'delete_clubtype');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (22, 'Can add clubstatus', 8, 'add_clubstatus');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (23, 'Can change clubstatus', 8, 'change_clubstatus');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (24, 'Can delete clubstatus', 8, 'delete_clubstatus');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (25, 'Can add club', 9, 'add_club');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (26, 'Can change club', 9, 'change_club');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (27, 'Can delete club', 9, 'delete_club');


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: david
--

SELECT pg_catalog.setval('auth_permission_id_seq', 27, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: david
--



--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: david
--



--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: david
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: david
--

SELECT pg_catalog.setval('auth_user_id_seq', 1, false);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: david
--



--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: david
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: david
--

INSERT INTO django_content_type (id, app_label, model) VALUES (1, 'auth', 'permission');
INSERT INTO django_content_type (id, app_label, model) VALUES (2, 'auth', 'group');
INSERT INTO django_content_type (id, app_label, model) VALUES (3, 'auth', 'user');
INSERT INTO django_content_type (id, app_label, model) VALUES (4, 'contenttypes', 'contenttype');
INSERT INTO django_content_type (id, app_label, model) VALUES (5, 'sessions', 'session');
INSERT INTO django_content_type (id, app_label, model) VALUES (6, 'goclubdb', 'layer');
INSERT INTO django_content_type (id, app_label, model) VALUES (7, 'goclubdb', 'clubtype');
INSERT INTO django_content_type (id, app_label, model) VALUES (8, 'goclubdb', 'clubstatus');
INSERT INTO django_content_type (id, app_label, model) VALUES (9, 'goclubdb', 'club');


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: david
--

SELECT pg_catalog.setval('django_content_type_id_seq', 9, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: david
--

INSERT INTO django_migrations (id, app, name, applied) VALUES (1, 'contenttypes', '0001_initial', '2016-04-16 13:39:30.532222+02');
INSERT INTO django_migrations (id, app, name, applied) VALUES (2, 'contenttypes', '0002_remove_content_type_name', '2016-04-16 13:39:30.565007+02');
INSERT INTO django_migrations (id, app, name, applied) VALUES (3, 'auth', '0001_initial', '2016-04-16 13:39:31.421277+02');
INSERT INTO django_migrations (id, app, name, applied) VALUES (4, 'auth', '0002_alter_permission_name_max_length', '2016-04-16 13:39:31.453904+02');
INSERT INTO django_migrations (id, app, name, applied) VALUES (5, 'auth', '0003_alter_user_email_max_length', '2016-04-16 13:39:31.487186+02');
INSERT INTO django_migrations (id, app, name, applied) VALUES (6, 'auth', '0004_alter_user_username_opts', '2016-04-16 13:39:31.510342+02');
INSERT INTO django_migrations (id, app, name, applied) VALUES (7, 'auth', '0005_alter_user_last_login_null', '2016-04-16 13:39:31.5421+02');
INSERT INTO django_migrations (id, app, name, applied) VALUES (8, 'auth', '0006_require_contenttypes_0002', '2016-04-16 13:39:31.553171+02');
INSERT INTO django_migrations (id, app, name, applied) VALUES (9, 'auth', '0007_alter_validators_add_error_messages', '2016-04-16 13:39:31.571083+02');
INSERT INTO django_migrations (id, app, name, applied) VALUES (10, 'goclubdb', '0001_initial', '2016-04-16 13:39:31.63045+02');
INSERT INTO django_migrations (id, app, name, applied) VALUES (11, 'goclubdb', '0002_auto_20160416_1127', '2016-04-16 13:39:32.166133+02');
INSERT INTO django_migrations (id, app, name, applied) VALUES (12, 'sessions', '0001_initial', '2016-04-16 13:39:32.344668+02');
INSERT INTO django_migrations (id, app, name, applied) VALUES (13, 'goclubdb', '0003_auto_20160416_1157', '2016-04-16 13:57:21.568276+02');
INSERT INTO django_migrations (id, app, name, applied) VALUES (14, 'goclubdb', '0004_auto_20160416_2323', '2016-04-17 01:23:14.681223+02');
INSERT INTO django_migrations (id, app, name, applied) VALUES (15, 'goclubdb', '0005_auto_20160417_1222', '2016-04-17 14:23:01.371269+02');
INSERT INTO django_migrations (id, app, name, applied) VALUES (16, 'goclubdb', '0006_auto_20160417_1236', '2016-04-17 14:36:17.300209+02');


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: david
--

SELECT pg_catalog.setval('django_migrations_id_seq', 16, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: david
--



--
-- Data for Name: goclubdb_club; Type: TABLE DATA; Schema: public; Owner: david
--

INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (863, 'Asociación de Go de Andalucía', 'Sábado 20:00', 'La Carbonería', NULL, '', 'http://www.andalucia-go.org/index.php/la-asociacion-de-go-de-andalucia/la-carboneria', 37.3881886425999994, -5.98731279373000014, 1, 8, 18);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (864, 'Asociacion Malagueña de Go', 'los viernes por la tarde (A partir de las 17:00h, y hasta las 21:00h aproximadamente)', 'Escuela Tecnica Superior de Informatica ', NULL, 'gomalaga@gmail.com', 'http://gomalaga.es/la-asociacion/about/', 36.7165266778999992, -4.47083473206000015, 1, 8, 18);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (865, 'Club de Go de Pamplona', 'los martes de 17.00 a 20.30', 'en el local comunitario de Auzoenea de la asociación de vecinos del centro histórico de Pamplona', NULL, 'playinplona@gmail.com', 'http://playinplona.alejostenuki.com/?page_id=32', 42.8194862807999996, -1.64359331131000008, 1, 8, 18);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (866, 'Club de Go La Pedra', 'els dimarts a partir de les 19:30', 'Av. Roma 159 2º, compartint espai amb el club de Bridge Mayda', NULL, 'lapedra@googlegroups.com', 'http://lapedra.org', 41.3872011759000031, 2.15779423714000007, 1, 8, 18);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (867, 'Escuela de Go de Bilbao', 'todos los miércoles entre las 18''30 y las 21''30 horas ', 'Restaurante Larruzz Bilbao (Antiguo Tapelia), en el Paseo de Uribitarte nº 14, de Bilbao, junto al Puente de Calatrava', NULL, '', 'http://www.escueladegodebilbao.com/', 43.2678625516999986, -2.93065667151999998, 1, 8, 18);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (868, 'Asociación de Go de Cádiz ', 'Sábados: Aproximadamente de 10:00 a 13:30', 'Casa de la Juventud de Cádiz (C/Cánovas del Castillo, 41 C.P. 11004 Cádiz) ', NULL, 'agocamail@gmail.com', 'https://gocadiz.wordpress.com', 36.5339502547000023, -6.29729032515999965, 1, 8, 18);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (869, 'Nam-Ban', 'los lunes, jueves y viernes de 19:00 a 22:00', 'Círculo Catalán, Plaza de España nº6, Madrid', NULL, 'http://es.groups.yahoo.com/group/nam-ban/', 'http://www.clubgomadrid.org/', 40.4225648282000023, -3.71191442012999984, 1, 8, 18);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (872, ' MJC ARCHIPEL SUD GYMNASE DES BALMETTES 12 AV LUCIEN BOSCHETTI 74000 ANNECY Le vendredi à partir de 20h30 http://annecy.jeudego.org/', NULL, NULL, NULL, NULL, NULL, 45.8953459000000024, 6.12211540000000021, NULL, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (873, 'Aubenas - Couleur GO', 'Tous les jeudi soirs de 20h30', 'Couleur Café 1 PLACE JACQUES ROURE 07200 AUBENAS', NULL, NULL, 'http://club-go-aubenas.blogspot.de/', 44.6221146000000033, 4.38673160000000006, 1, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (874, ' Club de Go de Grenoble ADAJE 8 rue Aristide Bergès Samedi De 14h à 18h http://grenoble.jeudego.org/', NULL, NULL, NULL, NULL, NULL, 45.1920943000000008, 5.71819943595165991, NULL, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (875, ' Club de Go de Grenoble Restaurant le PAV SAN 43 Avenue Alsace Lorraine, 38000 Grenoble Mercredi A partir de 20h30 http://grenoble.jeudego.org/pav-san/', NULL, NULL, NULL, NULL, NULL, 45.1894478999999976, 5.71834732264150958, NULL, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (876, ' Club de Go de Grenoble l’école BIZANET 53 Avenue Maréchal Randon, 38000 Grenoble Mercredi de 14h00 à 16h00 http://grenoble.jeudego.org/informations-horaires/club-scolaire-et-ecole-de-go/', NULL, NULL, NULL, NULL, NULL, 45.1947015000000007, 5.73387980000000042, NULL, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (877, ' Club de Go de Grenoble Bar LA NATATION 32 Boulevard Gambetta, 38000 Grenoble Tournois de Blitz tous les premiers lundi du mois http://grenoble.jeudego.org/la-natation/', NULL, NULL, NULL, NULL, NULL, 45.1857722000000024, 5.72470609999999969, NULL, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (878, ' Go Club Lyon Shinogi Restaurant Hua Yuan Xuan 20 rue Mulet Lyon 1er Lundi 19h - 22h30 http://lyon-shinogi.jeudego.org/', NULL, NULL, NULL, NULL, NULL, 45.7657527000000002, 4.83645119999999995, NULL, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (879, ' Go Club Lyon Shinogi Bistrot Chez Thibault 80 rue Montesquieu Lyon 7e Mercredi 18h30 - 23h http://lyon-shinogi.jeudego.org/', NULL, NULL, NULL, NULL, NULL, 45.7512558000000027, 4.84498020000000018, NULL, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (880, ' Go Club Lyon Shinogi Espace Lyon-Japon 16 Rue Bellecombe Lyon 6e Jeudi 17h - 19h http://lyon-shinogi.jeudego.org/', NULL, NULL, NULL, NULL, NULL, 45.7691647999999986, 4.86294749999999976, NULL, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (881, ' Go Club Lyon Shinogi Salle associative 233 rue Vendôme Lyon 3e Samedi 14h - 19h http://lyon-shinogi.jeudego.org/', NULL, NULL, NULL, NULL, NULL, 45.7570832999999979, 4.84733750000000008, NULL, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (882, ' Chambéry Maison des Associations 67 RUE ST FRANÇOIS DE SALES, 73000 CHAMBÉRY Le mercredi Après-midi de 15h30 à 18h00; Soirée de 18h30 à 22h00; Le samedi Après-midi de 15h à 18h30 en salle B212 http://chambery.jeudego.org', NULL, NULL, NULL, NULL, NULL, 45.5669658999999996, 5.92530140000000038, NULL, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (883, ' Chambéry Bar Pause Café 215 Rue République Le jeudi soir de 20h45-21h00 http://chambery.jeudego.org', NULL, NULL, NULL, NULL, NULL, 48.8680009999999996, 2.36351539999999982, NULL, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (884, ' Valence - GONIROKU GONIROKU, MJC GRAND CHARRAN 61 AVENUE DU GRAND CHARRAN 26000 VALENCE Tous les Mercredi à partir de 18h30 http://goniroku.skyrock.com/', NULL, NULL, NULL, NULL, NULL, 44.9236124999999973, 4.91004839999999998, NULL, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (885, ' Club de Paris - Jussieu Restaurant le Royal Jussieu 1 RUE DES ÉCOLES 75005 PARIS Le Jeudi de 19h à 23h http://gojussieu.free.fr/', NULL, NULL, NULL, NULL, NULL, 48.8474706000000012, 2.35242050000000003, NULL, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (886, ' Antony 1 Place des Anciens Combattants d''Afrique du Nord 1 Place des Anciens Combattants dAfrique du Nord, 92160 Antony Le jeudi de 19h30 à 23h, Le samedi de 14h à 17h http://antony.jeudego.org/', NULL, NULL, NULL, NULL, NULL, 48.7502414000000002, 2.30043599999999993, NULL, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (887, ' Club de Go d%27Aligre (Paris XIIe) Le Troll Café 27 RUE DE COTTE, PARIS le mardi à partir 18H http://www.aligre.org/', NULL, NULL, NULL, NULL, NULL, 48.850044699999998, 2.37802159999999985, NULL, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (888, ' Club de Boulogne-Billancourt Club de Boulogne Billancourt 17 ALLÉE ROBERT DOISNEAU 92100 BOULOGNE BILLANCOURT Le vendredi de 20h à minuit http://boulogne.jeudego.org/', NULL, NULL, NULL, NULL, NULL, 48.8276816999999994, 2.23708250000000008, NULL, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (889, ' Cercle de Go à la maison Tilly Cercle d Activités Culturelles Cachan, Maison Tilly 3 rue Raspail 94230 Cachan Le Lundi de 19h45 à 21h pour les jeunes et l%27initiation, et de 20h à 23h pour les adultes http://cachan.jeudego.org', NULL, NULL, NULL, NULL, NULL, 48.7963426000000027, 2.33304260000000019, NULL, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (890, ' Club de l%27Ouest Parisien.  Local social du COP 43 rue La Quintinie - Paris-15e Le samedi de 14h30 à 19h, http://cop.jeudego.org/', NULL, NULL, NULL, NULL, NULL, 48.8372730999999973, 2.30335469999999987, NULL, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (891, ' Paris XX Club Pierre Desproges et Dolly Parton Bar «Les Trois-Arts» 21 rue des Rigoles 75020 Paris Le club ne se réunit plus, mais des jeux sont à votre disposotion, demander au bar http://victoire.b.free.fr/Paris20/index.html', NULL, NULL, NULL, NULL, NULL, 48.8717808000000034, 2.39395910000000001, NULL, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (892, ' Club de Colombes Association TUMCLASST 2 avenue Jean Jaurès, colombes le second samedi du mois de 15h à 19h au salon de thé - laverie Tout un monde http://www.tumclasst.org/', NULL, NULL, NULL, NULL, NULL, 48.931488899999998, 2.25963279999999989, NULL, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (893, ' Club du Jeu de Go, Levallois-Perret.  Maison des Associations 34 rue Pierre Brossolette 92300 Levallois-Perret Samedi de 14h à 17h.  Jeudi à partir de 20h30. Pour savoir si le club est ouvert un jeudi, contacter Rémy NOËL.  http://levallois.jeudego.org/', NULL, NULL, NULL, NULL, NULL, 48.8953403000000009, 2.29225879999999993, NULL, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (894, ' Paris - Club de Go de Paris Ouvert tous les jours de 16h.30 à la fermeture Café-Restaurant Le Djurdjura infogo-paris.org', NULL, NULL, NULL, NULL, NULL, 48.8628573000000017, 2.35220800000000008, NULL, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (895, ' Paris - Observatoire L%27Observatoire Au café Le Monaco 2 rue Vulpian, Paris Permanences le mercredi de 19h à 23h http://www.goclub-observatoire.com/', NULL, NULL, NULL, NULL, NULL, 48.8324688000000009, 2.34672610000000015, NULL, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (896, ' Club de Go d%27Orléans.  Les Becs à Vin 8 place du Châtelet Le mardi soir à partir de 20h30 http://orleans.jeudego.org', NULL, NULL, NULL, NULL, NULL, 47.8989265000000017, 1.9064219, NULL, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (897, ' Club de Go d%27Orsay Maison des Muses 7+bis+Avenue+Saint+Laurent,+Orsay Mercredi à partir de 20h30 http://orsay.jeudego.org/', NULL, NULL, NULL, NULL, NULL, 48.6988112000000015, 2.18988339999999981, NULL, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (871, 'Annecy', 'Tous les vendredi, de 20h30 à 23h30.', 'Baptiste Chopin 4 RUE DES EDELWEISS 74000 ANNECY', '', '', 'http://annecy.jeudego.org', 45.9204602000000008, 6.13029109999999999, 1, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (898, ' Club de l%27Est Parisien à Montreuil Centre culturel Jean Lurçat place+du+marché,+93100 Le Jeudi de 20h à 22h30, et le Samedi de 15h00 à 19h http://montreuil-cgep.jeudego.org', NULL, NULL, NULL, NULL, NULL, 48.8579954000000001, 2.43342280000000022, NULL, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (899, ' Le Club de Vauréal à la Maison Vallerand 49.034831, 2.032363 tous les lundis de 21h à 2h; tous les vendredis partir de 20h à 2h http://vaurealgo.jeudego.org', NULL, NULL, NULL, NULL, NULL, 49.0350419999999971, 2.0307590000000002, NULL, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (900, ' Club de Versailles Bistro Franco Belge 3 rue de la Pourvoierie Tous les mardis à partir de 20h00.  http://versailles.jeudego.org', NULL, NULL, NULL, NULL, NULL, 48.8073696000000012, 2.13160769999999999, NULL, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (901, ' Paris SNCF Club d%27entreprise de la SNCF 9 rue de Chateau-Landon les mercredis de 12h30 à 13h45 http://gorail.wix.com/club-go-rail', NULL, NULL, NULL, NULL, NULL, 48.2573474000000004, 2.55710529999999991, NULL, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (902, ' Club de Go de La Rochelle la grosse boîte 65 Rue Saint-Nicolas, 17000 LA ROCHELLE chaque mardi à partir de 18h00, chaque jeudi à partir de 18H00, chaque samedi à partir de 14H00 http://www.golarochelle.com/', NULL, NULL, NULL, NULL, NULL, 46.1568966000000032, -1.1485687, NULL, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (903, ' Le Mans Go Le Mans Go 16 rue du Chêne vert, 72000 LE MANS Le mercredi soir à partir de 20H30 http://lemansgo.over-blog.fr', NULL, NULL, NULL, NULL, NULL, 48.0076934000000008, 0.189950200000000013, NULL, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (904, ' L%27âge de pierre, club de Go d%27Angers.  Café le Welsh place Imbach, Angers Le Samedi de 17h à 20h http://lagedepierre.over-blog.com/', NULL, NULL, NULL, NULL, NULL, 47.4735541499999982, -0.547897081140345965, NULL, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (905, ' Go&Lan : Club de Go du Trégor Bar %27Les Valseuses%27 1 rue de la Coudraie, 22300 LANNION les JEUDI soirs, A partir de 20h30, Il est prudent de lancer un appel sur la liste avant de venir (surtout en période de vacances scolaires).  http://www.lesvalseuses.net/', NULL, NULL, NULL, NULL, NULL, 48.736696000000002, -3.45802949999999987, NULL, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (906, ' Brest - Tenuki MPT Pen ar Créac%27h 17+rue+Professeur+Chrétien,+29200+Brest le vendredi soir à partir de 20h http://tenuki-brest.jeudego.org/', NULL, NULL, NULL, NULL, NULL, 48.4041422000000026, -4.46868800000000022, NULL, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (907, ' Club de Lorient.  Cité Allende 12+rue+Colbert,+56100+Lorient Le samedi de 14h à 18h http://goanoriant.org/', NULL, NULL, NULL, NULL, NULL, 47.7512076000000008, -3.3586440999999998, NULL, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (908, ' Club de Lorient.  Galway Inn 18 rue de Belgique, 56100 Lorient Le mardi à partir de 20h, http://www.pubgalway-lorient.com/accueil.htm', NULL, NULL, NULL, NULL, NULL, 47.7603014999999971, -3.38351949999999979, NULL, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (909, ' Club de Concarneau Bar Le Cabestan Ville-Close+Concarneau Le Samedi à 14h30 nosite', NULL, NULL, NULL, NULL, NULL, 47.872619499999999, -3.9129147999999998, NULL, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (910, ' club de go de Nantes Maison des jeux 14 rue Michel Rocher, Nantes le samedi après-midi de 14 heures à 19 heures http://nantes.jeudego.org/', NULL, NULL, NULL, NULL, NULL, 47.2062504000000018, -1.54984720000000009, NULL, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (911, ' club de go de Nantes Café du commerce 9 pl Commerce les Lundi et Mercredi à partir de 18H http://nantes.jeudego.org/', NULL, NULL, NULL, NULL, NULL, 43.5152281000000016, 1.55805149999999992, NULL, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (912, ' club de go de Nantes AJFJ 75 rue d’Allonville, Nantes les mardi à partir de 18h30 http://nantes.jeudego.org/', NULL, NULL, NULL, NULL, NULL, 47.2217990999999984, -1.53559010000000007, NULL, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (913, ' Rennes Club Rengo Institut Confucius 17 rue de Brest, 35000 Rennes Les samedis de 15h00 à 18h00 http://rennes.jeudego.org/', NULL, NULL, NULL, NULL, NULL, 48.1138233, -1.69818169999999991, NULL, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (914, ' Rennes Club Rengo Diapason campus de Beaulieu Les Jeudis entre 12h et 14h http://rennes.jeudego.org/', NULL, NULL, NULL, NULL, NULL, 46.8123574999999974, 1.67535031022181991, NULL, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (915, ' Rennes Club Rengo Bar L%27Heure du Jeu 11 Bd Magenta, 35000 Rennes Les lundis de 20h00 à 01H00 http://rennes.jeudego.org/', NULL, NULL, NULL, NULL, NULL, 48.106356599999998, -1.67409720000000006, NULL, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (916, ' Club de go de Touraine.  Amboise, hotel Ibis Chemin+du+Roy,+37400+Amboise Le vendredi http://touraine.jeudego.org/', NULL, NULL, NULL, NULL, NULL, 47.4134640999999988, 1.01260799999999995, NULL, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (917, ' Club de go de Touraine.  bar-restaurant les Blancs-Manteaux 27 rue Colbert, Tours Le jeudi http://touraine.jeudego.org/', NULL, NULL, NULL, NULL, NULL, 47.3954866999999993, 0.688085440742971954, NULL, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (918, ' Club de Go du Poitou Au Café des Arts, 5 Place Charles de Gaulle, Poitiers, tous les mardis à 21h00.  http://poitiers.jeudego.org/', NULL, NULL, NULL, NULL, NULL, 46.5828368999999967, 0.344427800000000006, NULL, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (919, ' Go Club de Caen Le Kitch café 100 Rue de Geôle, 14000 Caen Le Mardi soir http://caen.jeudego.org', NULL, NULL, NULL, NULL, NULL, 49.1867480000000015, -0.365969900000000015, NULL, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (920, ' Club du Havre S A M St Vincent Rue+Guillemard,+Le+Havre Le lundi de 18h à 20h30 http://clubdegohavrais.wordpress.com', NULL, NULL, NULL, NULL, NULL, 49.4973719999999986, 0.0941029000000000032, NULL, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (921, ' Description : Club de Rouen Maison Saint-Sever Rue Saint-Julien, 76000 Rouen Le Mardi de 20h00 à 24h; Le Samedi de 14H à 18H http://rouen.jeudego.org/', NULL, NULL, NULL, NULL, NULL, 49.4279611999999986, 1.08035480000000006, NULL, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (922, ' Évreux A l%27Eure du go 2 Avenue Aristide Briand 27000 Evreux Samedi soir à partir de 17H aleuredugoyahoo.fr', NULL, NULL, NULL, NULL, NULL, 49.0376167000000009, 1.15728349999999991, NULL, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (923, ' Club de go de Bayonne Café des Pyrénées 62 rue Pannecau, Bayonne.  Les Mardis à partir de 18h.  http://bayonne.jeudego.org', NULL, NULL, NULL, NULL, NULL, 43.4897198000000031, -1.47204510000000011, NULL, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (924, ' Guyane - Club de go Place des Amandiers pl+Auguste+Horth,+CAYENNE les samedi entre 10 heures et 12 heures http://gocayenne.blogspot.com/', NULL, NULL, NULL, NULL, NULL, 4.94345169999999978, -52.3317557000000022, NULL, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1029, 'IGOnzaga Go Club', 'Martedì', '', NULL, 'Mattia Lannunziata igonzagagoclub@gmail.com', '', 44.9126800000000017, 10.8013899999999996, NULL, 8, 23);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (925, ' Club de Bordeaux.  La Zone du Dehors 68 cours Victor Hugo - Bordeaux Le jeudi soir entre 18h00 et 22h00 environ à la ZDD http://www.kitani.org', NULL, NULL, NULL, NULL, NULL, 44.8352719000000022, -0.569345600000000007, NULL, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (926, ' Club de Bordeaux.  Café jeux Jeux Barjo 12 rue Saint-James, 33000 Bordeaux Le Samedi à 14h30, au http://www.kitani.org', NULL, NULL, NULL, NULL, NULL, 44.8365008000000032, -0.571471300000000015, NULL, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (927, ' Club de Bordeaux.  Le bistroquet 173, Cours de L%27yser Le mardi soir à partir de 20H00 http://www.kitani.org', NULL, NULL, NULL, NULL, NULL, 46.5261652000000012, 4.5328337000000003, NULL, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (928, ' Pau MJC du Lau 81+avenue+Loup,+Pau Le Samedi de 14h30 à 18h, à la http://pau.jeudego.org', NULL, NULL, NULL, NULL, NULL, 43.495532500000003, -0.571053499999999992, NULL, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (929, ' Pau Librairie-Bar l%27Entropie Rue Bernadotte, 64000 Pau En semaine http://pau.jeudego.org', NULL, NULL, NULL, NULL, NULL, 43.2973105000000018, -0.374149300000000018, NULL, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (930, ' Toulouse - Club Go Seigen Section Muret Restaurant L’Arche 21 route d’Eaunes, 31600 MURET Le lundi après-midi Le samedi après-midi Horaires d’hiver : Du lundi au mercredi : de 9h00 à 19h00 sans interruption Du jeudi au samedi : de 9h00 à 23h00 sans interruption http://toulouse.jeudego.org/', NULL, NULL, NULL, NULL, NULL, 43.4410999999999987, 1.34000000000000008, NULL, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (931, ' Toulouse - Club Go Seigen, Section Pibrac salle du 3ème âge Boulevard des Écoles, Pibrac les lundis soir à partir de 21h http://toulouse.jeudego.org/', NULL, NULL, NULL, NULL, NULL, 43.6183103999999986, 1.27977370000000001, NULL, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (932, ' Toulouse - Club Go Seigen Le Cactus 13 boulevard Lascrosses, 31000 Toulouse Le Mercredi soir de 19h à 23h http://toulouse.jeudego.org/', NULL, NULL, NULL, NULL, NULL, 43.6108430000000027, 1.43708989999999992, NULL, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (933, ' Toulouse - Club Go Seigen Section Balma salle COMPAS 4+rue+des+Jardins,+Balma les jeudis soirs de 20h30 à 23h Et tous les deuxième et 4ème samedi de chaque mois http://fr.groups.yahoo.com/group/section_go_balma/', NULL, NULL, NULL, NULL, NULL, 43.6128168999999986, 1.48811699999999991, NULL, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (934, ' Toulouse - Club Go Seigen C.E. Airbus Airbus,+Toulouse Les Mardi et Jeudi de 12h15 à 14h http://toulouse.jeudego.org/', NULL, NULL, NULL, NULL, NULL, 43.6114243999999971, 1.3638494000000001, NULL, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (935, ' Toulouse - Club Go Seigen C.E. Thales 105 av. du Général Eisenhower, 31100 Toulouse Le Mardi de 12h30 à 14h, au http://toulouse.jeudego.org/', NULL, NULL, NULL, NULL, NULL, 43.5641395999999972, 1.3834067000000001, NULL, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (936, ' Toulouse - Club Go Seigen Salle Omega, bâtiment B, C.S.  Rue Brindejonc des Moulinais, 31500 Toulouse Tous les mercredi de 12h15 à 14h, http://toulouse.jeudego.org/', NULL, NULL, NULL, NULL, NULL, 43.5811093000000014, 1.49400789999999994, NULL, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (937, ' Toulouse - Club Go Seigen C.E. C.S.  Europarc à St martin du touch tous les jeudi de 12h15 à 14h http://toulouse.jeudego.org/', NULL, NULL, NULL, NULL, NULL, 43.6029098500000032, 1.36200135474461992, NULL, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (938, ' Toulouse - Club Go Seigen Ecole de GO 63+Rue+Antoine+de+Saint-Exupéry,+Toulouse Les vendredi soir de 18h à 20h http://toulouse.jeudego.org/', NULL, NULL, NULL, NULL, NULL, 43.6041831000000002, 1.50132160000000003, NULL, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (939, ' Toulouse - Club Go Seigen Section Grisolles Ludothèque de Grisolles 11 rue de la Campadou, 82170 Grisolles Les 2nd et 4ème jeudis du mois à 21h http://toulouse.jeudego.org/', NULL, NULL, NULL, NULL, NULL, 43.8260810000000021, 1.29667416574368, NULL, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (940, ' Club de Mont de Marsan.  bar l%27Aviator 2 place St Roch, 40000 Mont-de-Marsan Le Jeudi à partir de 20h., au http://marsan.jeudego.org', NULL, NULL, NULL, NULL, NULL, 43.8892157000000012, -0.499428800000000006, NULL, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (941, ' Saint-Denis Récréateurs, ancienne gare routière de Saint-Denis, sur le front de mer rue+neuve,+saint-denis,+reunion Tous les mardis à 18h00. Prévenez à l%27avance par courriel à clubdego974@gmail.com clubdego974gmail.com', NULL, NULL, NULL, NULL, NULL, -20.8737803, 55.4521914999999979, NULL, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (942, ' Tous les mercredis soir Saint-Pierre lieu variable Saint-Pierre nosite', NULL, NULL, NULL, NULL, NULL, -21.3412979000000007, 55.4776173999999997, NULL, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (943, ' Le Lundi à partir de 19h, Groupe Auvergnat de Go Café-Lecture Les Augustes 5 rue sous les Augustins, 63000 Clermont-Ferrand http://graug.jeudego.org/', NULL, NULL, NULL, NULL, NULL, 45.7808855999999977, 3.08360199999999995, NULL, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (944, ' Club de Clermont-Ferrand.  BAR LE MAYERLING 4+rue+Saint-Dominique,+CLERMONT-FERRAND LES MARDI ET JEUDI DE 18H30 A MINUIT http://neversgo.jeudego.org/', NULL, NULL, NULL, NULL, NULL, 45.7786471000000006, 3.0811812999999999, NULL, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (945, ' Club de Clermont-Ferrand.  Centre Social VERT-PRE 1+rue+de+VertPré,+58000+Nevers Le Vendredi de 17h15 à 20h15 (et plus ...), au Centre Social de Vert-Pré http://neversgo.jeudego.org/', NULL, NULL, NULL, NULL, NULL, 46.9875564000000026, 3.15184469999999983, NULL, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (946, ' Club de Saint Étienne.  Restaurant %27La Friterie%27 9 Rue Georges Dupré, 42000 Saint Etienne le Mercredi soir à partir de 20h à %27La Friterie%27', NULL, NULL, NULL, NULL, NULL, 45.436402600000001, 4.39050079999999987, NULL, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (947, ' Toulon - Variation Go Club restaurant « Le Richardi » 25+Rue+de+la+Comédie,+83000+Toulon les Jeudi de 17h30 à 22h00 http://toulon.jeudego.org/', NULL, NULL, NULL, NULL, NULL, 43.1247016000000016, 5.92942509999999956, NULL, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (948, ' Le club de Go provençal Au Goût Du Monde 38+rue+des+Bernardines,+Aix-En-Provence Le samedi à partir de 15h30 http://www.aixetgo.fr/', NULL, NULL, NULL, NULL, NULL, 43.5276885999999976, 5.44493880000000008, NULL, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (949, ' Le club de Go provençal Ecole de Go café culturel et citoyen 23 Boulevard Carnot Aix-En-Provence 2 samedis par mois de 10h00 à 11h30 http://www.aixetgo.fr/', NULL, NULL, NULL, NULL, NULL, 43.528554800000002, 5.45468460000000022, NULL, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (950, ' GO Narbonne Assoc%27épicée 2 quai de lorraine, 11100 NARBONNE Tous les samedis de 14h à 17 http://www.gonarbonne.fr', NULL, NULL, NULL, NULL, NULL, 43.1855496000000016, 2.99812389999999995, NULL, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (951, ' Club d%27Ispagnac.  Bibliothèque municipale Bibliothèque municipale, 48320 Ispagnac Le Mardi à 21h nosite', NULL, NULL, NULL, NULL, NULL, 44.3698054999999982, 3.53513046778711004, NULL, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (952, ' Club de Go d%27Avignon Château de la chapelle, 2 ieme étage 84 Châteauneuf de Gadagne, Avignon Le Mercredi de 16h30 à 22h nosite', NULL, NULL, NULL, NULL, NULL, 43.927919799999998, 4.94472820000000013, NULL, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (953, ' Club de Valreas Collège Vallis Aéria salle A4 Collège Vallis Aéria, Av. Jean Moulin, 84600 Valréas mardi, vendredi : 13h - 14h http://valreas.jeudego.org', NULL, NULL, NULL, NULL, NULL, 44.3863685000000032, 5.00566180000000038, NULL, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (954, ' Club de Valreas salle Marius, Maison des associations Cours Victor Hugo 84600 Valréas le samedi de 14 à 18 heures http://valreas.jeudego.org', NULL, NULL, NULL, NULL, NULL, 44.3856017000000023, 4.98866920000000036, NULL, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (955, 'Heerlen', 'Woensdag, vanaf 20.30', 'Cafe Pelt, Heerlen', NULL, 'Robbert van Sluijs 0455726757', 'https://gobond.nl/node/2734', 50.8869947000000025, 5.98029079999999968, 1, 8, 20);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (956, 'Almere', 'Wo: 19:00-20:00 jeugd; 20:00-23:00 volwassenen', 'Almere Buurtcentrum "de Wieken" ', NULL, 'Rob van Fucht contactpersoon & website beheerder 06-34318824', 'https://gobond.nl/node/2741', 52.3972868999999974, 5.27484559999999991, 1, 8, 20);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (957, 'Alphen aan den Rijn', 'Dinsdag 19:45', 'Wijkvereniging de Oude Wereld, Oude Wereld 57', NULL, '', 'https://gobond.nl/node/2742', 52.1209021000000021, 4.65064649999999968, 1, 8, 20);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (958, 'De Twee Ogen', 'Dinsdag 19:45', 'Amstelveen EGCC, Schokland 14', NULL, '', 'https://gobond.nl/node/2744', 52.3152062999999998, 4.86336369999999985, 1, 8, 20);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (959, 'Amsterdamse Go Club', 'Iedere woensdag avond vanaf 20:30', 'Café Batavia 1920 tegenover het Centraal Station. Adres: Prins Hendrikkade 85, 1012 AE', NULL, 'voorzitter@goinamsterdam.nl', 'https://gobond.nl/node/2745', 52.3152062999999998, 4.86336369999999985, 1, 8, 20);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (960, 'Nobe No Shinju', 'woensdag 20:00', 'Denksportcentrum Apeldoorn, Dubbelbeek 24', NULL, 'Marten Ubbink apeldoorn@gobond.nl', 'https://gobond.nl/node/2746', 52.1825660000000013, 5.96583180000000013, 1, 8, 20);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (961, 'GC Betuwe', 'Laatste zondag van de maand: 13:00-16:00', 'Restaurant Op de Haven, Helling 7, 4101 AE', NULL, 'Rob Friederichs 06-39783298 culemborg@gobond.nl', 'https://gobond.nl/node/2747', 51.9619184499999989, 5.22031316383000021, 1, 8, 20);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1030, 'PIACENZA', '', '', NULL, 'Gianluca Chiodaroli chiodus@gmail.com', '', 45.0532800000000009, 9.71301000000000059, NULL, 7, 23);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (962, 'GC Betuwe', 'Tweede woensdag van de maand: 19:30-23:00 uur', 'Nanne van der Zijpp, Elisabethdreef 5, 4101 KN Culemborg', NULL, 'Rob Friederichs 06-39783298 culemborg@gobond.nl', 'https://gobond.nl/club/go-club-betuwe', 51.9573742999999979, 5.22677109999999967, 1, 8, 20);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (963, 'Goclub Den Bosch', 'Dinsdagavond, vanaf 20:00 uur', 'Volkstuinvereniging Pastoor Barten, De Herven 70, 5232 NJ ’s-Hertogenbosch', NULL, 'Don Verheijen Voorzitter; Sybo Bruinsma Secretaris denbosch@gobond.nl', 'www.goclub-denbosch.nl', 51.9619184499999989, 5.22031316383000021, 1, 8, 20);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (964, 'GC Seki', 'woensdag 19:45', 'Wijkcentrum Essesteijn, Elzendreef 10', NULL, 'Ming Au voorzitter 0615322616', 'http://www.goclubseki.nl', 52.0842279000000019, 4.36787040000000015, 1, 8, 20);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (965, 'Go Club Salland', 'donderdagavond vanaf 20.00', 'buurthuis De Fermerie aan het Muggeplein 9 in de binnenstad van Deventer', NULL, 'Gerard Bouwman secretaris 06-83080349', 'http://www.goclubsalland.nl/', 52.2536119000000028, 6.15146049999999978, 1, 8, 20);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (966, 'Eindhovense GC', 'maandagavond vanaf 19:30', 'ontmoetingscentrum ''t Bellefort - Iepenlaan 40-42', NULL, 'Nicole de Beer voorzitter', 'http://eindhoven.gobond.nl/', 51.4408011000000016, 5.46155819999999981, 1, 8, 20);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (967, 'Eindhovense GC', 'donderdagavond vanaf 20:00', 'The Trafalgar Pub - Dommelstraat 21', NULL, 'Nicole de Beer voorzitter', 'http://eindhoven.gobond.nl/', 51.4409830999999969, 5.48099999999999987, 1, 8, 20);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (968, 'GC GoGo', 'Dinsdag 19:45', 'De Hoog Biljart- en Bridgecentrum, Nieuwe Gouwe Oostzijde 11b', NULL, 'gouda@gobond.nl', 'https://gobond.nl/node/2754', 52.0190099000000004, 4.68689420000000023, 1, 8, 20);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (969, 'Groningen', 'maandag 20:00', 'Café "Wolthoorn & Co", Turftorenstraat 6', NULL, 'Siu Hong Chung voorzitter 06-52664744', 'https://gobond.nl/node/2755', 53.2181750000000022, 6.56169660000000032, 1, 8, 20);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (970, 'GC Leiden', 'donderdag 19:45', 'Denksportcentrum Leiden, Robijnstraat 4', NULL, '', 'https://gobond.nl/node/2758', 52.1564347999999995, 4.46484110000000012, 1, 8, 20);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (971, 'Nijmeegse Go Club', 'Maandag 20:00', 'Wijkcentrum Daalsehof 2, achter Daalseweg 113', NULL, 'nijmegen@gobond.nl', 'https://gobond.nl/node/2759', 51.8408455000000004, 5.87198930000000008, 1, 8, 20);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1042, 'Frascati Go Club', '', '', NULL, 'Alberto Annovi alberto.annovi@gmail.com Cell: 333 6044216', '', 41.8083000000000027, 12.6812299999999993, NULL, 8, 23);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (972, 'Utrechtse goclub', 'maandag 19:30', 'NDC Den Hommel, Kennedylaan 9', NULL, 'Douwe van der Veen secretaris 06-52243622', 'http://www.goclubutrecht.nl/', 52.0801693000000014, 5.0823330999999996, 1, 8, 20);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (973, 'GC Amai Mizuumi', 'Dinsdag 19:45', 'Huiskamerpatio van Rob Groeneveld, Scharounlijn 14, Zoetermeer', NULL, '', 'https://gobond.nl/node/2762', 52.0763135999999989, 4.51875339999999959, 1, 8, 20);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (974, 'Zwolle', 'woensdag 20:00', 'Café de Singel, Groot Weezenland 4', NULL, '', 'https://gobond.nl/node/2763', 52.5080749999999981, 6.09891390000000033, 1, 8, 20);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (975, 'Go Club Harderwijk', 'Woensdagavond vanaf 20.00', 'De Graaf van Gelre; centrum Harderwijk', NULL, 'Sander den Oudsten 06 4224 0945', 'https://gobond.nl/node/3020', 52.3499339999999975, 5.61802759999999957, 1, 8, 20);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (981, 'Pretoria Go Club', 'Wednesday evenings', 'Outer Limits Comic and Games shop in Hatfield Square (near News Cafe)', NULL, 'Brett Wilson (072 099 9943) or John Leuner (076 226 9975)', 'http://www.sagoclubs.co.za/pretoria-club/', -25.7509321638000017, 28.2359080017000004, 1, 7, 22);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (982, 'Pretoria Clearwater', 'Start 19h00 on Wednesdays', 'House of Coffees in Clearwater Mall', NULL, 'Pablo Casado (e-mail: phmcasado !@! gmail [d-o-t] com)', '', -26.1279211891999985, 27.9047101736000016, 1, 7, 22);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (983, 'Soweto', '', '', NULL, 'Sipho Mampe: 084 7888 177', 'http://www.sagoclubs.co.za/soweto-club/', -26.2235711113999983, 27.8636026381999997, 2, 7, 22);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (984, 'Stellenbosch', '', 'Recently (2015) some of us have been playing at The Guild campus board-gaming society.', NULL, 'Gordon Wells', 'http://www.sagoclubs.co.za/stellenbosch-club/', -33.9326430282999993, 18.8654243946000015, 2, 7, 22);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (985, 'UJ', 'Mon, Wed: 13:00-14:00', 'Mondays: C-Les 305, 13:00-14:00 Wednesdays: D-Les 411', NULL, '', 'http://www.sagoclubs.co.za/uj-club/', -26.1843539316000005, 27.9971873759999994, 2, 8, 22);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (986, 'ALESSANDRIA', '', '', NULL, 'Moreno Mantoan qboxx@libero.it', '', 44.9168599999999998, 8.64644999999999975, NULL, 7, 23);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (987, 'CUNEO', '', '', NULL, 'Andrea Partiti Kgs: kaiou', '', 44.4196400000000011, 7.55860000000000021, NULL, 7, 23);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (988, '"Nodi di Bambù"', 'Martedì dalle 19.30 alle 23.30 Sabato dalle 14.30 alle 18.30', 'Via Roero di Cortanze, 2C - presso il BENE COSI’ Cafè', NULL, 'Ronnie Pizzo ronniepizzo@gmail.com Cell: +39 338 9514316', ' http://www.facebook.com/pages/Torino-Italy/I-Nodi-di-Bambu-Go-Club-Torino/63509963870', 45.0683208000000022, 7.6956838000000003, NULL, 8, 23);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (989, '"Go Club Genova"', 'Giovedì e Domenica dalle 20:30 in poi', 'Via Boccardo, 5r presso la Birreria HB Hofbräuhaus', NULL, 'Carlo Bevegni carlobevegni@libero.it Francesco Robbiano Kgs: Hobbes', ' http://games.groups.yahoo.com/group/GoGenova/ http://www.facebook.com/groups/gogenova/', 44.4066025999999994, 8.93523390000000006, NULL, 8, 23);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (990, 'LA SPEZIA', '', '', NULL, 'Elena Rossi Tel: 018 7280028 (solo pom.) Kgs: ele91', '', 44.1070330000000013, 9.82822550000000028, NULL, 7, 23);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (991, 'ORTONOVO', '', '', NULL, 'Alessandro Salpietro a.salpietro@yahoo.it Cell. : 333 4037308', '', 44.0891828999999973, 10.0540728000000001, NULL, 7, 23);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (992, 'SAVONA', 'Martedì dalle 16:00 in poi', 'Via Cavour, 46/r presso il negozio Higashi no kaze', NULL, 'Sabrina Travi Tel: 019 8386348 (solo pom.)Cell: 328 7472012', '', 44.0489099999999993, 8.21278000000000041, NULL, 7, 23);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (993, 'SESTRI LEVANTE', '', '', NULL, 'Mirtha Barbetti Cell: 339 2507741', '', 44.2821799999999968, 9.42792999999999992, NULL, 7, 23);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (994, '"Brixia Go Weiki Baduk Club"', '', 'Via Cappellini, 4 presso la "Aikido Club Brescia"', NULL, 'Claudiu Melenco', ' http://go.xplab.net https://www.facebook.com/groups/147136504167/', 45.5188399999999973, 10.23306, NULL, 8, 23);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (995, '"Milano No Go"', 'Martedì dalle 21 alle 24', 'Tutti i martedì al ristorante-pub il Tempio d’Oro (Via delle Leghe 23, Milano).', NULL, 'Aldo Podavini Kgs : minosse', ' http://milanonogo.altervista.org/ https://www.facebook.com/milanonogo', 45.492600000000003, 9.21707999999999927, NULL, 8, 23);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1031, 'SAN MARINO', '', '', NULL, 'Stefano Babini el.nabila@alice.it Cell: 333 3091479 Kgs: Bstefano', '', 44.5114469000000028, 10.8051531999999995, NULL, 7, 23);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1333, 'St Andrews', 'Tuesday 19:30-23:00 ', 'KY16 9UX Aikman''s Cellar Bar, 32 Bell Street ', NULL, 'Edwin Brady ', 'http://www.britgo.org/node/3235', 56.340071512822, -2.79818538714020004, NULL, NULL, 21);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (996, '"Go Club Milano"', 'Mercoledì dalle 21 alle 24 Sabato dalle 15 alle 20', 'Via Sant''Uguzzone, 8 presso l''"Università Europea degli Sport della Mente"', NULL, 'Fernando Fernandez Cell : 347 9386734 (pref. dopo le 17:00)', ' http://www.goclubmilano.org/index.html https://www.facebook.com/pages/Go-Club-Milano/321227357961?ref=ts&amp;fref=ts', 45.5211699999999979, 9.2228399999999997, NULL, 8, 23);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (997, 'BERGAMO', '', 'Piazza Brembana', NULL, 'Saverio Castelli Kgs: blackauron', '', 45.6934200000000033, 9.66652999999999984, NULL, 7, 23);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (998, 'LEGNANO (MI)', '', '', NULL, 'Davide Stellato Kgs: Stego93', '', 45.5958200000000033, 8.90597999999999956, NULL, 7, 23);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (999, 'GARBAGNATE (MI)', '', '', NULL, 'Maurizio Melegari goclubgarbagnate@gmail.com Cell: 329 8662550', '', 45.5737799999999993, 9.07578999999999958, NULL, 7, 23);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1000, 'MANTOVA', '', '', NULL, 'Thomas Durante Cell: 339 5672758', '', 45.1444100000000006, 10.8135899999999996, NULL, 7, 23);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1001, 'PAVIA', '', '', NULL, 'Roberto Foschi Cell: 329 1590837', '', 45.1945400000000035, 9.16546999999999912, NULL, 7, 23);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1002, 'TREVIGLIO (BG)', 'ogni mercoledì dopo le 21', 'Largo Lamarmora 2, presso la sede dell''Auser.', NULL, 'Giancarlo Sacchi Cell: 338 2217931', ' http://gocosmico.altervista.org/ http://www.facebook.com/pages/Go-Cosmico/127995643940290', 45.5175399999999968, 9.60084999999999944, NULL, 7, 23);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1003, 'VARESE', '', 'Locanda dello Hobbit, Via F. Rossi, 38, Barasso (VA) dalle 20:30 in poi', NULL, 'Ronald Van Uffelen Kgs: Stego93 Cell: +39 335290776', '', 45.836190000000002, 8.75134000000000079, NULL, 7, 23);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1004, 'VOGHERA', '', '', NULL, 'Bruno Cavanna Kgs: bricabrac', '', 45.0140600000000006, 9.01520999999999972, NULL, 7, 23);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1005, '"Trentino Go Club"', '1° e 3° Giovedì del mese, dalle 17:00 alle 19:00', 'Piazza Venezia, 37 presso "Barycentro"', NULL, 'Federico Odorizzi Kgs: FedeAndrea Gobbi Kgs: andreamath', ' http://yomoyamabanashi.it/go.php', 46.0694200000000009, 11.1277600000000003, NULL, 8, 23);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1006, 'PREDAZZO (TN)', '', '', NULL, 'Vittorio Nocentini Kgs: vittorio', '', 46.3194200000000009, 11.6528899999999993, NULL, 7, 23);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1041, '"Fujisawa Shuko"', 'Martedì e Giovedì dalle 19:30 in poi', 'Via Cereate, 8 presso la ludoteca "La Civetta"', NULL, 'GCR goclubromafujisawashuko@gmail.com?subject=[GO]%20richiesta%20informazioni', '', 41.8810199999999995, 12.5073899999999991, NULL, 8, 23);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (978, 'Joburg', 'Sundays (regularly) from 10:00 to 13:00 (approximately). Tuesdays (occasionally) from 19:00 to 21:00 (approximately).', 'Rosebank Mall – Fourno’s Bakery (Sunday mornings) Rosebank Mall – Mugg and Bean (Tuesday evenings)', '', '', 'http://www.sagoclubs.co.za/joburg-club/', -26.1464706864000007, 28.0416570603999986, 1, 8, 22);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (979, 'Mossel Bay', 'ad hoc', 'There is currently no club in Mossel Bay. However, anyone there interested in the game can contact Candice Barker. She would be happy to meet and play holiday-makers or business visitors in Mossel Bay, introduce the game to prospective new players, or meet other players from Mossel Bay and surrounds.', '', 'Candice Barker (phone: 0446905547)', '', -34.1831750336000013, 22.1536731720000013, 1, 7, 22);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (980, 'Port Elizabeth', '', '', '', 'There are no clubs in the Eastern Cape. However, anyone there interested in the game can contact William Mapham <william.mapham@gmail.com> or Patrick Lee <alobar@telkomsa.net>', 'http://www.sagoclubs.co.za/other-clubs/', -33.9437871712000003, 25.5323982238999996, NULL, 7, 22);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1007, 'Go Club "VenetoGo" Sez. di Padova', 'Tutti i Sabato pomeriggio dalle ore 15:30 alle 19:00 Vedere il Calendario o contattare direttamente Leonardo o Liu per maggiori informazioni.', 'Ristorante Brasiliano - Via Montà, 49/3', NULL, 'Leonardo Giuliato Cell: 3929643299 Kgs: kiruLiu Yan PingCell: 339 4614763', '', 45.4426100000000019, 11.8336100000000002, NULL, 8, 23);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1008, 'Go Club "VenetoGo" Sez. di Treviso', 'Tutti i Martedì sera (dalle ore 20:30 alle ore 23:30) a Lancenigo, e alcuni sabati a Pieve di Soligo (previo accordo).Il Sabato alla fumetteria "Shion Art", Via Marconi 34 Pieve di Soligo (TV).Vedere il Calendario o contattare direttamente Marco per maggiori informazioni.', 'Via Chiesa a Lancenigo di Villorba presso l''Oratorio (non c''è numero civico).', NULL, 'Marco Fava Cell: 328 9432090', '', 45.7595000000000027, 12.5247100000000007, NULL, 8, 23);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1009, 'Go Club "VenetoGo" Sez. di Venezia', 'Tutti i sabati pomeriggio, l''orario di inizio è intorno le ore 16:00 fino alle ore 19:30/20:00, a seconda dell''affluenza.Vedere il Calendario o contattare direttamente Matteo per conferma.', 'Presso Centro culturale Olivolo situato a San Francesco della Vigna in zona arsenale. Per chi non è mai venuto o non ricorda la strada contattateci che ci troviamo prima a San Zaccaria per mostrarvi la strada.', NULL, 'Sandro Dunatov Cell: 335 203010 Matteo Boscolo Cell: 349 7716319', '', 45.4336500000000001, 12.3441299999999998, NULL, 8, 23);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1010, 'Go Club "VenetoGo" Sez. di Bassano del Grappa', 'Tutti i Sabato pomeriggio dalle 17:00 alle 19:00; vedi il Calendario o contatta direttamente Marina', 'Istituto Pirani-Cremona Via del Museo, 23 - Bassano del Grappa', NULL, 'Marina Guarnieri Cell: 335 5812820', '', 45.7651299999999992, 11.7368799999999993, NULL, 8, 23);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1011, 'Go Club "VenetoGo" Sez. di Belluno', '', '', NULL, 'Fabrizio Soppelsa ', '', 46.1350199999999973, 12.2125299999999992, NULL, 8, 23);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1012, 'Go Club Favaro Veneto', 'Ci troviamo tutti i giovedì sera dalle ore 21:00 circa.Contattare Andrea per la conferma del ritrovo.', 'Presso lo spazio giovani della municipalità di Favaro Veneto in Via Altinia 9', NULL, 'Andrea ', '', 45.505270000000003, 12.2826400000000007, NULL, 8, 23);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1013, 'Go Club Schio', 'Ci troviamo il primo e il terzo martedì del mese (probabilmente diverrà tutti i martedì a breve) dalle ore 20:30 alle 23:30.', 'al bar "Due Mori" di Schio Via Pasubio, 20 Vicenza. Contattare Carlo per la conferma del ritrovo.', NULL, 'Carlo Brazzale Cell: 347 5237202', '', 45.7139900000000026, 11.3567699999999991, NULL, 8, 23);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1014, 'Go Club "VenetoGo" Sez. di Vigarolo', 'Ritrovo la prima e la terza domenica di ogni mese dalle 15:00 alle 19:00.', 'Via San Floriano n°39, Vigarolo', NULL, 'Gioele ', '', 45.6063800000000015, 11.5893099999999993, NULL, 8, 23);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1015, 'Go Club "VenetoGo" Sez. di Verona', 'Non è stato ancora fissato un giorno prestabilito, contattate Marta o Giulia per sapere quando trovarci.', 'Via Castello San Felice, 9 presso"Associazione Giochi Antichi"(nel Parco delle Colombare)', NULL, 'Marta Mantovani adsharta@libero.it', '', 45.4531399999999977, 11.0050000000000008, NULL, 8, 23);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1016, 'Go Club "Higashikita" Sez. di Gorizia', 'ogni 3 settimane, giovedì alle ore 21', 'L''appuntamento è presso il Ricreatorio parrocchiale "Mons.O.Foschian" Via Isonzo 27, Monfalcone (Go). Contattare Michele per maggiori informazioni.', NULL, 'Michele Tognon ', '', 45.8057299999999969, 13.5223999999999993, NULL, 8, 23);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1017, 'Go Club "Higashikita" Sez. di Pordenone', 'ogni due settimane al martedì dalle 20.30 in poi (contattare Davide Rosolen per conferma)', 'c/o fumetteria "Altrimondi", via Caboto 20 - Pordenone', NULL, 'Davide Rosolen Kgs: Proffffff', '', 45.9628999999999976, 12.6617599999999992, NULL, 8, 23);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1018, 'Go Club "Higashikita" Sez. di San Daniele del Friuli (UD)', '', '', NULL, 'Ivo Clarini Cell: 333 7780344', '', 46.1685900000000018, 13.0002800000000001, NULL, 8, 23);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1019, 'Go Club "Higashikita" Sez. di Trieste', 'ogni giovedì dalle 21.00 in poi.', 'c/o "Ludomania", via Svevo 1 (2° piano) - Trieste', NULL, 'Davide Bertok Cell: 328 3277011', '', 45.6299500000000009, 13.7807499999999994, NULL, 8, 23);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1020, 'Go Club "Higashikita" Sez. di Udine', '', 'Via Ermes di Colloredo, 14 presso la Ludoteca-Bar "Quarta Dimensione"', NULL, 'Paolo Driussi Kgs: puhamedve', '', 46.0716800000000006, 13.23325, NULL, 8, 23);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1021, 'Bologna Go Club', 'Lunedì dalle 21:00', 'presso il Bar "L''Ortica"', NULL, 'Cesare Sassoli: Cell: 338 7066454 Kgs:', '', 44.4988600000000005, 11.3496000000000006, NULL, 8, 23);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1022, 'GoRomagna', 'Mercoledì dalle 21:00', 'Via Salita, 2 presso il "Circolo dei Franchi Bevitori"', NULL, 'Stefano GiurinCell: 392 9260834 Kgs: wildpizza', '', 44.2859499999999997, 11.8763299999999994, NULL, 8, 23);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1023, 'Aji Go Club', 'giovedì sera alle 21:15 (In ogni caso, meglio chiamare per verificare che quel giorno non ci sia qualche intoppo)', 'Viale Cavour, 85, 44121 Ferrara FE, Italia presso la Birreria Main street', NULL, 'Paolo Giampetruzzi aji.goclub@gmail.com Cell: +39 3289342753 Kgs: Doc / Damiano Pennini md.carbone@libero.it Kgs: HPN', '', 44.8412799999999976, 11.61266, NULL, 8, 23);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1024, '"Tortellino" Go Club', 'Giovedì dalle 21:00(in alternanza con il Go Club di Reggio-Emilia)', 'Via del Santuario, 3 presso la Birreria "Stonewall"', NULL, 'Andrea Pecorari Cell: 348 4428324', '', 44.5383799999999965, 10.8129600000000003, NULL, 8, 23);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1025, 'GoRomagna', '', '', NULL, 'Leonardo Dal ZovoCell: 338 4382995', '', 44.0368799999999965, 12.0514799999999997, NULL, 8, 23);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1026, 'Go Club Università degli studi di Parma', 'Generalmente il martedì sera', '', NULL, 'Anthony antonioalbano@yahoo.it Kgs: anthonygo - Cell: +39 340 7675932 Gian Maria gmmarconi@gmail.com Kgs: limerik - Cell: +39 346 6665788', '', 44.8042799999999986, 10.3353000000000002, NULL, 8, 23);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1027, '"Paleotto" Go Club', 'Di solito l''ultimo martedì del mese, controllare sul sito', 'Via del Paleotto 11 (nel parco del Paleotto) presso la "Casa del Paleotto"', NULL, '', '', 44.4455999999999989, 11.3562999999999992, NULL, 8, 23);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1028, '"Tortellino" Go Club', 'Giovedì dalle 21:00(in alternanza con il Go Club di Fiorano Modenese)', 'Via Samoggia, 12 presso il "Bar Florida" di Wang Zuo Liang', NULL, 'Andrea Pecorari a_peco@libero.it Cell: 348 4428324', '', 44.7120900000000034, 10.6326199999999993, NULL, 8, 23);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1032, 'Firenze Go Club', 'il Martedì dalle 21:30 in poi', 'Presso la palestra Yanagi in via san Zanobi 57', NULL, 'goclubfirenze@gmail.com Alberto Zingoni Cell: +39 338 506 1760', '', 43.7798700000000025, 11.2559000000000005, NULL, 8, 23);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1033, 'Livorno Go Club', 'Mercoledì dalle 21:30', 'Via della Posta, 40 presso il pub "Bad Elf"', NULL, 'Andrea Mori wamba85@gmail.com Kgs: Wamba', '', 43.5524699999999996, 10.3108699999999995, NULL, 8, 23);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1034, 'Pisa Go Club', 'Dopo le 21:30', 'Lunedì: via delle Case Dipinte 6 presso pub "Orzo Bruno". dalle 21:30 alle 01:00.Giovedì: via Bovio, presso il Mix-Art dalle 21:30 alle 00:00', NULL, 'Andrea Donati gatto.andrea@inwind.it Cell: 333 9597317 Kgs: suspire Maurizio Parton parton@unich.it Cell: 349 5323199 Kgs: maumau', '', 43.7177099999999967, 10.4031400000000005, NULL, 8, 23);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1035, 'Lucca Go Club', '', '', NULL, 'Tommaso Pardi tommaso.pardi@gmail.com Mika Straka Cell: +39 340 990 1266 Il club di Lucca fa parte di ToscanaGo.', '', 43.8588499999999968, 10.4682499999999994, NULL, 8, 23);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1036, 'PRATO', '', '', NULL, 'Daniele Pompeo moria31@hotmail.it Cell: 340 7356811', '', 43.8826999999999998, 11.0913900000000005, NULL, 7, 23);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1037, 'Go Club Grosseto (GCG)', 'ogni mercoledì sera dalle 20.30/21.00', 'Comix Cafè, piazza San Michele 4', NULL, 'Marco Pasto pastopasto@hotmail.it Il club di Grosseto fa parte di ToscanaGo.', '', 42.760469999999998, 11.1125600000000002, NULL, 8, 23);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1038, 'Biturgo', '', '', NULL, 'Nicola Torrioli Cell: 333 8749827 Ricardo Mancini Cell: 338 6400458', '', 43.5903500000000008, 12.1299200000000003, NULL, 7, 23);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1039, 'VALDARNO', 'tutti i martedì ore 21.30', 'presso la birreria Carpe Diem a Loro Ciuffenna.', NULL, 'Olivier Turquet olivier.turquet@gmail.com Telefono:055969092 Cellulare:3395635202', '', 43.5921999999999983, 11.6330899999999993, NULL, 7, 23);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1040, '"ARGO" Club', 'Giovedì dalle 19:00', 'Corso Vannucci, 99 presso il bar "Blitz"', NULL, 'Alessandro Salpietro a.salpietro@yahoo.it Cell: 333 4037308 Marco Baldoncini marcobaldoncini@libero.it Cell: 333 7339778', '', 43.1096000000000004, 12.3881099999999993, NULL, 8, 23);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1043, 'New Go Club Frascati', '', '', NULL, 'Francesco Viti francescovitix@libero.it Cell: +39 339 5808226', '', 41.8083000000000027, 12.6812299999999993, NULL, 8, 23);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1044, '"Go''Jo"', 'Martedì dalle 21:00 in poi', 'Piazza San Faustino, 14, VITERBO, (VT)', NULL, 'gojoclubviterbo@yahoo.it Marco Generali marcgen84@yahoo.it Cell: 339 1363616 Kgs: maik123 Riky De Carolis Cell: 320 0627142', '', 42.420259999999999, 12.1035299999999992, NULL, 8, 23);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1045, 'FORMIA', '', '', NULL, 'Enrico Greco: 7valis7@gmail.com Cell. : 328 5686736', '', 41.2908400000000029, 13.6298100000000009, NULL, 7, 23);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1046, '"Yugen" Go Club', '', 'S. EGIDIO ALLA VIBRATA (TE)', NULL, 'Emiliano Calderoli: hiraokasan@gmail.com', '', 42.8236699999999999, 13.7101299999999995, NULL, 8, 23);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1047, 'L''AQUILA', '', '', NULL, 'Keichiro Abe: keiichiro_abe@alice.it Cell. : 348 5177121', '', 42.3555700000000002, 13.4156600000000008, NULL, 7, 23);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1048, 'Go Club Bari', '', '', NULL, 'Francesco Cutrone : cutronefrancesco@yahoo.it Kgs : BonoVox club : goclub.bari@libero.it', '', 41.092889999999997, 16.87575, NULL, 8, 23);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1049, '"Najokata"', 'Martedì dalle 21:00', 'Via Bellini, 56 presso il "Volver Cafè"', NULL, 'Bruno Izzi : br1izzi@hotmail.com', '', 40.8505800000000008, 14.2506400000000006, NULL, 8, 23);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1050, 'Ischia Ponte', 'Dal Martedi al venerdi dalle 21:00 all''01:00, tranne nelle sere in cui è programmato un evento, chiusura settimanale il Lunedi.', 'Via Seminario, 15 presso "Belcanto - Art Fusion Cafè"', NULL, 'Ivan Cigliano : cuzzocrea10@libero.it Cell. : 345 4134236', '', 40.7335700000000003, 13.9562899999999992, NULL, 8, 23);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1051, 'AVELLINO', '', '', NULL, 'Gaia Malagoli : gaia.malagoli@gmail.com Cell. : 329 1187140 Kgs : Gaiachan', '', 40.9129799999999975, 14.7895699999999994, NULL, 7, 23);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1052, 'Il Palermo go club', 'Tutti i martedì dalle ore 16:00 alle ore 20:00', 'presso il Centro Scacchi Palermo in via Enrico Fermi 8', NULL, 'Marco Milone Cell: 3926981326 : milone_m@yahoo.com', '', 38.1270900000000026, 13.3364200000000004, NULL, 8, 23);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1053, 'CATANIA', '', '', NULL, 'Davide Carlesi : moscarpone@gmail.com Cell. : 340 6947793 Kgs : Gatsu55', '', 37.4604199999999992, 15.0308799999999998, NULL, 7, 23);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1054, 'CAGLIARI', '', '', NULL, 'Alessandro Melis : gaudio-go@libero.it Kgs : gaudio Salvatore Sardo : lagunaffviii@hotmail.it', '', 39.2204199999999972, 9.09408999999999956, NULL, 7, 23);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1055, 'TEMPIO PAUSANIA (OT)', '', '', NULL, 'Manuele Carbini : carbini.manuele@tiscali.it Cell. : 328 6174620 Tel : 079 632524 (ore pasti) Tradurre 7valis7@gmail.com Cell. : 328 5686736', '', 40.985909999999997, 9.15206000000000053, NULL, 7, 23);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1056, 'Bern', 'mardi 19h00-23h00', 'Längass-Treff Lerchenweg 33', NULL, 'Alan HELD 031 351 59 64 aeh@vtxfree.ch', 'http://www.bernergoclub.ch', 46.953870000000002, 7.43057000000000034, NULL, 8, 24);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1057, 'CERN', 'mercredi 12h30-13h30 parfois aussi mardi dès 18h00', 'CERN Restaurant No.2', NULL, 'Tibor SIMKO 022 767 35 27 tibor.simko@cern.ch', 'http://games.web.cern.ch/games/', 46.2319400000000016, 6.04434999999999967, NULL, 8, 24);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1058, 'Genève mardi', 'mardi 20h00-24h00', 'Café du Rondeau Place du Rondeau 1, 1227 Carouge', NULL, 'Armel-David WOLFF 079 689 78 27 awolff@worldcom.ch', 'http://geneva.swissgo.org/', 46.1800799999999967, 6.13949000000000034, NULL, 8, 24);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1059, 'Genève vendredi', 'vendredi 19h00-22h00', 'Maison de Quartier de Plainpalais 1 Rue de la tour', NULL, 'Armel-David WOLFF 079 689 78 27 awolff@worldcom.ch', 'http://geneva.swissgo.org/', 46.1951299999999989, 6.14646000000000026, NULL, 8, 24);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1060, 'Genève mercredi', 'mercredi 18h00-23h00', 'École de Pinchat 4 ch. de la Tour-de-Pinchat', NULL, 'Jean-Marc LOUIS 022 784 03 39 079 371 09 52 jmlouis@vtxnet.ch', 'http://geneva.swissgo.org/', 46.1747399999999999, 6.1534399999999998, NULL, 8, 24);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1061, 'La Chaux-de-Fonds', 'jeudi 20h00-24h00', 'Service Jeunesse Serre 12 (1er étage) 2300 La Chaux-de-Fonds', NULL, 'GO-Club CDF 079 254 88 13 contact@gocdf.ch Marcel SCHWEIZER marcelschweizer@hispeed.ch', 'http://www.gocdf.ch/', 47.1040100000000024, 6.82957000000000036, NULL, 8, 24);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1062, 'La Tour de Peilz', 'vendredi 19h00-21h00', 'Musée Suisse du Jeu Au Château 11 Rue du Château', NULL, 'Rick WERTENBROEK 076 533 40 05 rick.wertenbroek@gmail.com', 'http://www.museedujeu.ch/fr/animationen/klubs/goklub.html', 46.4526699999999977, 6.85491000000000028, NULL, 8, 24);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1063, 'Lausanne', 'mardi 20h00-24h00', 'Café-Restaurant Le Milan 54 bd de Grancy 021 616 53 43 http://www.lemilan.ch/fr/restaurant-le-milan', NULL, 'Haruna OKANO lausanne@swissgo.org', 'http://lausanne.swissgo.org/', 46.5165199999999999, 6.6258499999999998, NULL, 8, 24);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1064, 'Ishi go club', 'mercredi 17h15-20h00', 'EPFL - Salle de Go : CM1 121', NULL, 'Flavien AUBELLE flavien.aubelle@epfl.ch', 'http://ishigo.epfl.ch/igc.php', 46.5206599999999995, 6.56545999999999985, NULL, 8, 24);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1065, 'Luzern', 'mardi 18h30-23h00', 'Restaurant und Jugendhaus Treibhaus Spelteriniweg 4 http://www.treibhausluzern.ch/index.php?id=29', NULL, 'Dominik MÜLLER 078 838 38 64 luzern@swissgo.org', 'http://luzern.swissgo.org/', 47.04251, 8.31922999999999924, NULL, 8, 24);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1066, 'Nyon', 'mardi 11h45-13h25', 'Gymnase de Nyon salle L204', NULL, 'John WALCH 076 498 03 75 john_walch8@hotmail.com', '', 46.3824899999999971, 6.2319899999999997, NULL, 8, 24);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1067, 'Neuchâtel', 'mercredi 19h30-23/24h00', 'Bar "Au 21" 43 Faubourg du Lac', NULL, 'Thibault PILLON 079 526 74 02 thibault.pillon@gmail.com', '', 46.9915099999999981, 6.93186999999999998, NULL, 8, 24);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1068, 'Winterthur', 'lundi 19h00-22h30', 'Typisch Thai Neumarkt 3 http://www.typischthai.ch', NULL, 'Philipp GRESSLY 052 212 22 15 phi@gressly.ch', 'http://www.wintigo.org', 47.498429999999999, 8.72616999999999976, NULL, 8, 24);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1069, 'Worben', 'mercredi 14h30-15h30', 'Restaurant Bären Hauptstr. 46', NULL, 'Alan REES alan.rees@playmorego.com', 'http://worben.swissgo.org/', 47.0973299999999995, 7.29180000000000028, NULL, 8, 24);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1070, 'Yverdon', 'mardi 19h30 à 22h/23h selon l''affluence', 'Café "Le Tempo" Quai de la Thièle 3 1400 Yverdon-les-Bains', NULL, 'Martin 079 795 49 59 martin.python@gmail.com', '', 46.7812699999999992, 6.63715000000000011, NULL, 8, 24);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1071, 'Zürich', 'mercredi dès 18h00', 'Zentrum Karl der Grosse Blaues Foyer im 2ten Stock Kirchgasse 14', NULL, 'Jonas JERMANN jjermann2@gmail.com', 'http://zurich.swissgo.org/', 47.3697400000000002, 8.54461000000000048, NULL, 8, 24);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1072, 'Aarau', '', '', NULL, 'Stephan BALMER 079 336 84 41 sbalmer@yetnet.ch balmerst@hotmail.com', '', 47.3910399999999967, 8.0699500000000004, NULL, 7, 24);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1073, 'Frauenfeld', '', '', NULL, 'Daniel LUTZ dlutz@umlaufbahn.net', '', 47.5568099999999987, 8.89176999999999929, NULL, 7, 24);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1074, 'Locarno', '', '', NULL, 'Roberto MORRISON 078 658 66 73 roberto@morrison.ch', '', 46.1731800000000021, 8.83497000000000021, NULL, 7, 24);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1075, 'Sessa', '', '', NULL, 'Claude ROY 091 608 20 79', '', 46.0032300000000021, 8.8128100000000007, NULL, 7, 24);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1076, 'Vallée de Joux', '', '', NULL, 'Jean-Jacques GAGNEBIN 079 768 18 78 jj@gagnebin.net', '', 46.6006500000000017, 6.22358999999999973, NULL, 7, 24);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1077, 'Versoix', '', '', NULL, 'Marc DIAS 076 425 02 13 versoix.go.club@gmail.com', '', 46.2912999999999997, 6.15784999999999982, NULL, 7, 24);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1078, 'Wil SG', '', '', NULL, 'Stjepan LUKAC lastronin@gmx.net', '', 47.4629600000000025, 9.05344000000000015, NULL, 7, 24);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1079, 'Magem Go club', 'Every Tuesday 18:00', 'Magem building, Famagusta', NULL, 'Nurman Aylanc nurmana@hotmail.com (tel. 0090 533 862 9582)', '', 35.1315530262000024, 33.9249229431000003, 1, 8, 25);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1080, 'Nicosia', 'every Saturday, starting around 17:30', 'Arabica Cafe in Nicosia', NULL, '', '', 35.1420903933000019, 33.3533763885000027, 1, 8, 25);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1081, 'Pissouri Go Club', '', '', NULL, 'The Group leader is Jolyon Kay, tel. 25222363. Please contact him for the venue of the meeting because now they meet in member''s houses in rotation.', '', 34.6665348447000028, 32.6989173889, 1, 8, 25);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1082, 'Polykentro Neolaias Go Club', '', '', NULL, 'Meetings: Postponed Meeting place: Polykentro Neolaias, 14 Tombazi Street, Lykavitos, Nicosia Time: TBA This club is for children of ages 6-13. It is the ideal place for children to discover the game of Go. Parents and teachersare welcome to play with us as well.Information: Call 22 87 75 10 or email Dimitris Regginos: regginos@gmail.com - www.regginos.com', '', 35.1677393622999972, 33.375193476699998, 2, 8, 25);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1083, 'г. Жуковский, ул. Солнечная, 6 («Творческая мастерская») ', 'СР 14:00 - 16:00 Детская группа (абонемент, 300 руб. занятие) ПТ 14:00 - 16:30 Детская группа (абонемент, 300 руб. занятие)', '', NULL, 'Телефон: +7-926-266-43-27 Алексей Кожунков (Neya)', '', 55.6032812050000018, 38.0898034573000004, 1, 8, 26);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1084, 'го-клуб  "СЭНТЭ"', 'СР 16:00 - 21:00 Играем и лекции (100 руб. занятие)СБ 12:00 - 13:30 Детская группа (200 руб. занятие)СБ 13:00 - 18:00 Играем и лекции (100 руб. занятие)', 'г. Москва, Новоспасский переулок, 5 (м. «Таганская», радиальная)', NULL, 'Встречи го-клуба "СЭНТЭ" в Москве.Вас ждут лекции, игры, сеансы, разборы, чай, сладкое и много игроков!', '', 55.7337675635999972, 37.6543629168999985, 1, 7, 26);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1085, 'Го-клуб "Китай-город"', NULL, NULL, NULL, 'Лучников переулок, д. 4, стр. 1 Игорь Тычко, тел.: +7 926 423-98-45', NULL, 55.7585418912802027, 37.6315534114838002, NULL, NULL, 26);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1086, 'Го-клуб "Тэнуки"', NULL, NULL, NULL, 'на территории культурного центра «Покровские ворота» (Чайная высота)', NULL, 55.7599514865328985, 37.6480436325073029, NULL, NULL, 26);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1087, 'Омский Го-клуб', NULL, NULL, NULL, 'На площадке "Дача Онегина"', NULL, 54.9924483407113982, 73.3604094386101053, NULL, NULL, 26);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1088, 'Го в МГУ им. М.В. Ломоносова', 'Среда - 18:30-23:00 Суббота - 12:00-18:00', 'Собираемся в ШК МГУ.', NULL, '', 'http://vk.com/go_msu', 55.7030442872218003, 37.5309276580810973, 1, 8, 26);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1089, 'Клуб 天元 Тэнгэн', 'Пн, Вт, Ср, Чт, с 19:00 до 22:00', 'Санкт-Петербург, Наб. реки Фонтанки, 91. Метро «Сенная»-»Садовая». Чайный клуб «Море чая».', NULL, 'Руководитель клуба — президент Федерации Го Санкт-Петербурга Максим Подоляк. Тел. +7 905 206 58 76, email: m.podolyak@gofederation.ru Телефон: 310–84–63 Понедельник, четверг — занятия для начинающих (учебный курс начального уровня) Вторник — занятия для продолжающих (продвинутый курс) Среда — игровой день для всех желающих (игры, разборы, свободное общение).', '', 59.9253989077468034, 30.3206992149352992, 1, 8, 26);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1090, 'Ярославский Го-клуб', '', 'г. Ярославль, ДК Моторостроителей (им. А. М. Добрынина) - Проспект Ленина 24а', NULL, '', '', 57.6343262680233011, 39.858849048614502, 1, 8, 26);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1091, 'Дом Ветра', 'по вторникам с 18:00 до 21:00', 'Библиотека Зелёная Лампа, Красноармейская ул. 89а, Томск', NULL, '', 'http://vk.com/dom_vetra', 56.4654511533278978, 84.9649572372435955, 1, 8, 26);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1092, 'Сюдан - четверг', 'по четвергам с 18:30 до 22:30', 'Чайная Будду Чай по адресу: г. Ростов-на-Дону, пр.Стачки, 231б.', NULL, 'мастер Го Антон Корзун 8-988-550-14-81', 'https://m.vk.com/page-70558237_50154822', 47.211712224800003, 39.6186518669000023, 1, 8, 26);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1093, 'Сюдан - Воскресенье', 'по воскресеньям с 15:00', 'Пространство Теннис Шахматы Танцы по адресу: г.Ростов-на-Дону, ул.Зорге, 70', NULL, 'мастер Го Алексей Акишин 8-960-452-34-85, 8-960-458-67-47', 'https://m.vk.com/page-70558237_50154822', 47.2310219215999965, 39.6299707889999979, 1, 8, 26);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1094, 'Сюдан - Воскресенье - Дети', 'по воскресеньям с 18:00 до 20:00', 'школе при Церкви Святого Георгия Победоносца по адресу: г.Ростов-на-Дону, ул. 339 Стрелковой Дивизии, 33', NULL, 'мастер Го Константин Злобин 8-905-455-46-31', 'https://m.vk.com/page-70558237_50154822', 47.2256341306750969, 39.6161466836928966, 1, 8, 26);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1095, 'Адзи', 'суббота, 13:00 - 18:00', 'Молодёжный центр, г. Краснодар, ул. Сормовская, д. 12/11 ', NULL, '+7-961-5181893 (Геннадий) +7-918-4157958 (Сергей)', 'http://adzi.19lines.ru/', 45.0243115558865981, 39.0684556961059997, 1, 8, 26);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1096, 'Клуб Го в библиотеке им. Снегова', 'Каждую субботу с 13:00 до 17:00', 'в библиотеке им. Снегова (ул. 9 апреля, д. 5)', NULL, '', 'http://vk.com/gokld', 54.7136921173295008, 20.5216133594513011, 1, 8, 26);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1097, 'Красноярский го-клуб', 'Как правило по воскресеньям c 12:00', 'в библиотеке им. Ленинского комсомола по адресу ул. К.Маркса, 21.', NULL, '', 'https://vk.com/club13717117', 56.0110623253579973, 92.8892648220061972, 1, 8, 26);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1098, 'Восточная беседа - суббота', 'По субботам в 15.00.', 'Шахматно-Шашечный Центр, Газетная 109.', NULL, '', 'https://vk.com/vostok_goban', 57.9150415301999999, 59.982948303199997, 1, 8, 26);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1099, 'Восточная беседа - воскресенье', 'По воскресеньям в 16.00.', 'Центр семейно консультации, Восточная 3.', NULL, '', 'https://vk.com/vostok_goban', 57.9268875937451, 59.9758780002593994, 1, 8, 26);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1100, 'Курган', 'Каждый четверг в 19-00', 'Про Играх в художественном музее Максима Горького 129, отдельный вход с лева от центрального', NULL, '', 'http://vk.com/club22095109', 55.4409681396059995, 65.353481769561796, 1, 8, 26);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1101, 'Екатеринбург', 'Понедельник, среда, пятница с 18:00 до 22:00 ', 'Тургенева, 4. УрГУ Шестой этаж, аудитория 601', NULL, '', 'http://vk.com/club8428386', 56.8413205772249981, 60.615005493164098, 1, 8, 26);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1102, 'Занятия в Дворце творчества детей и юношества', '', '', NULL, '', 'http://dtdu.ru/', 61.791755322500002, 34.3596875667999981, 1, 8, 26);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1103, 'Центральная спортивная школа города Петрозаводска', '', '', NULL, '', 'http://csdusshor.ru/ ', 61.7920240990999972, 34.3662536144000015, 1, 8, 26);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1104, 'Тверской Го Клуб', 'Каждый четверг (18:00-21:00) и воскресенье (12:00-16:00)', '', NULL, '', '', 56.8383569987000001, 35.9165811538999975, 1, 8, 26);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1105, 'Лидер Го (детский Го клуб)', '', 'ул. Архитектора Власова, д.7, корп. 3', NULL, '+7 926 925 7440 (Санкин Владимир Евгеньевич), +7 916 583 1580 (Санкин Тимур Владимирович)', '', 55.6791723583000007, 37.5559955834999997, 1, 7, 26);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1106, ' Тульский Государственный Университет, Го Клуб', '', 'пр.Ленина, 93, к.Б,', NULL, '', '', 54.1715538735999971, 37.5976073742000025, 1, 8, 26);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1107, 'семейный центр «Супердетки»', '', '', NULL, 'ул. Кауля, 49б к.1', '', 54.176452166499999, 37.6170158385999969, 1, 8, 26);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1108, 'Рязанский Го клуб', '', '', NULL, '', 'https://vk.com/club13775999', 54.6121686784000033, 39.7308969497999982, 1, 7, 26);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1109, 'Клуб Го НИУ ВШЭ', 'Каждую пятницу в 17:30', '', NULL, 'на Львовской, ауд. 203', '', 56.2685236856000017, 43.877806663500003, 1, 7, 26);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1110, 'Клуб "Го" в Нижегородском Циферблате', 'Каждое воскресенье с 11-00 до 14-00 и дольше.', '', NULL, '', '', 56.323584152899997, 44.0111446380999993, 1, 8, 26);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1111, 'Полигон - Клуб любителей интеллектуальных игр', 'Возможные дни - ЧТ с 13-00 до 20-00, СБ и ВС с 11-00 до 17-30. Только по договоренности с Людмилой!', '', NULL, 'Контактное лицо - Людмила +7-96-56-0111-47', 'http://vk.com/yaminoyume', 55.795726666900002, 49.109680652599998, 1, 7, 26);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1112, 'Японский культурный центр «Хато»', '', '', NULL, 'Контактное лицо - Людмила +7-96-56-0111-47', 'http://vk.com/yaminoyume', 55.8308483691999982, 49.1411054133999983, 1, 8, 26);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1113, 'Клуб «Стратегия»', '', '5 этаж офис 505', NULL, 'Леонид Сергеевич Бычков, +7 (927) 618 56 99, strateggo@ya.ru', 'https://vk.com/club_go_strategia', 53.5257173055000024, 49.3274116516000021, 1, 8, 26);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1114, 'Го-клуб СГАУ: "Полёт мысли"', 'По вторникам и четвергам в 18.00', 'в Студклубе СГАУ (16 корпус)', NULL, 'Контакты: Алексей Курочкин (Rendal) Телефон: 8 927 797 0870 ICQ: 293 215 515', '', 53.2126491332999976, 50.1778945327000017, 1, 8, 26);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1115, 'Восточная беседа - суббота', 'По субботам в 15.00', 'Шахматно-Шашечный Центр, Газетная 109', NULL, '', '', 57.9150415301999999, 59.982948303199997, 1, 8, 26);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1116, 'Тюменский Го клуб', 'каждую субботу в 13:30', 'Тургенева 9, ауд. 201', NULL, 'Студентам ТюмГУ при себе иметь пропуск, остальным паспорт.', '', 57.1590193433000024, 65.5298423767000031, 1, 7, 26);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1117, 'Го клуб НГУ', 'каждое воскресенье с 13:00 до 17:00', 'в здании нового спортивного комплекса НГУ, 301 аудитория', NULL, 'Вход свободный. Академгородок, ул. Пирогова 2 к1 Остановка общественного транспорта – Цветной проезд', '', 54.846571357000002, 83.0960261822000064, 1, 8, 26);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1119, 'Dresden', 'Do ab 18.30', 'Barneby, Görlitzer Str. 11', NULL, 'Sascha Giebner, 0151-23232237', '', 51.069632900000002, 13.7560578000000007, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1120, 'Welzow', '', '', NULL, 'Hartmut Köstner, 035751-15691', '', 51.5598961000000031, 14.2085356682332993, NULL, 7, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1121, 'Leipzig', 'Di 18.30-22', 'Villa e.V., Lessingstr. 7, kleiner Seminarraum, 3. Etage', NULL, 'Hans Zötzsche, 0341-2329228; Jürgen Posselt, 0341-6016724', '', 51.3420215084830005, 12.3667135834693998, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1122, 'Leipzig', 'Do 18-21', 'Universität Leipzig, Augustusplatz, Raum A314 (im Semester)', NULL, 'Bastian Schütze ; Anke Bremer (Email), 0163-4554310', '', 51.3388191499999991, 12.3808791361649995, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1123, 'Halle (Saale)', 'Mo 20-24', 'Spielehaus, Franckesche Stiftung', NULL, 'Dr. Rainer Herter, 0345-5521446', '', 51.4683192000000034, 11.9737358941859995, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1124, 'Jena', 'Mo ab 19', 'Cafe Immergrün, Jenergasse 6', NULL, 'Kevin Sanow, 0176-286 118 14; Guido Tautorat (Email), 03641-350454', 'http://go-jena.webnode.com//', 50.9296750999999972, 11.5864968000000008, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1125, 'Chemnitz', 'Mi ab 18, 14-tg', 'bitte vorher Go-Gruppe Chemnitz über Facebook kontaktieren', NULL, 'Lars Gebhardt ', 'http://www.facebook.com/#!/pages/Go-Gruppe-Chemnitz/255486124499961', 50.8353940036907019, 12.9240345801859995, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1127, 'Berlin (Mitte)', 'Mo 17.30-22', 'Humboldt Universität, Hauptgebäude, Dorotheenstr.', NULL, 'Patrick Husmann, 0176-84091779', '', 52.5240045999999978, 13.3779760000000003, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1128, 'Berlin (Prenzlauer Berg)', 'So ab 20', '"Gemeinschaft der 5 Ziegen", Lychener Str. 63', NULL, 'Michael Sandien, 030-44736848', '', 52.540887699999999, 13.4143769000000006, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1129, 'Berlin (Charlottenburg)', 'Fr 18-23', 'TU Berlin, Hardenbergstr. 36 (Physikneubau, Raum 114)', NULL, 'James Brückl, 0157-73867795', '', 52.5081788999999972, 13.3283010999999991, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1130, 'Berlin (Kreuzberg)', 'Mo+Mi+Fr 17.30-20', 'Jugendtreff Ev. Martha-Gemeinde, Glogauer Str. 22', NULL, 'Kalli Balduin, 0163-8639064', 'http://govb.de/e107_plugins/spieltreffs/spieltreffs.php?view.7', 52.4949172999999973, 13.4388535999999998, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1131, 'Berlin (Johannisthal)', 'Di ab 18', 'Kiezklub Johannisthal, Sterndamm 102, 1. Etage', NULL, 'Ralph Drochner ', '', 52.4471763000000024, 13.5069654999999997, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1132, 'Berlin (Friedrichshagen)', 'Mi 19-22.30', 'Cafe Rabu, Scharnweberstr. 67', NULL, 'Torsten Vergin, 030-88538010; Stefan Brunn (Email), 0151-41675719', '', 52.4467378000000011, 13.6271992999999991, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1133, 'Berlin (Wedding)', 'Mi+Sa 18-22', 'Baduk in der Tortenwerkstatt, Gleimstr. 6', NULL, 'Byoung Seon ; Uwe Hadlich (Email), 0176-61663333', '', 52.546221199999998, 13.3972286, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1134, 'Berlin (Spandau)', 'Do 18-22', 'Cafe Lutetia, Jüdenstr. 11', NULL, 'Marco Hoffmann ; Andreas Moenck (Email)', '', 52.5370838784892982, 13.2019856572151006, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1176, 'Göttingen', 'Mo ab 19', 'Galerie "Apex", Burgstr. 46', NULL, 'Gerhard Mex, 0551-705056', '', 51.5355260999999985, 9.93535695036283961, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1135, 'Berlin (Schlachtensee)', 'Di 18-23', 'direkt an der S-Bahn Linie 1, mit Badesee (Sommer) und Kachelofen (Winter)', NULL, 'Thorsten Bartelt ', 'http://www.slaughterlake.de', 52.4372333000000026, 13.2414660272550009, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1136, 'Potsdam', 'Mi ab 19.30', 'Nil Keller, Am Neuen Palais 10, Haus 11, www.planet-nil.de', NULL, 'Stefan Leon, 01520-731 58 21', 'http://www.planet-nil.de', 52.4018765000000002, 13.0108710999999992, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1137, 'Potsdam', 'priv. n. V.', 'privat bei Oliver Lenz, Carl-von-Ossietzky-Str. 6', NULL, 'Oliver Lenz, 0331-902395', 'http://www.go-potsdam.de', 52.3960951890863029, 13.0341839790344007, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1138, 'Strausberg', 'Fr 18.30-23', 'Racket Center, Landhausstr. 16-18', NULL, 'Gerd Eckert, 0170-7812017', 'http://www.go-club-strausberg.de', 52.5362077822949018, 13.8463139533997008, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1139, 'Oranienburg', 'Fr ab 18', 'Cafe/Bistro Kaffeetante (im Oranienwerk), Kremmenerstr. 43', NULL, 'Wolfgang Walz, 03301-426366', 'http://facebook.com/GoPiraten', 52.7517865000000015, 13.2231562, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1140, 'Löwenberg', 'Mo-Do 19-22', 'priv. n. V.', NULL, 'Tobias Klatt, 0151-28027524', '', 52.9464193243254968, 13.1502135877826998, NULL, 7, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1141, 'Greifswald', 'Di 19.30-23', 'Cafe Koeppen, Bahnhofstr. 4', NULL, 'Carsten Herrmann, 0176-61573271', '', 54.0927869000000001, 13.3779333999999999, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1142, 'Rostock', 'Mi 19-23', 'Helga''s Kitchen, Am Vögenteich 19, www.helgas-kitchen.de', NULL, 'Michael Bull, 0179-4674563', 'http://www.mvgo.de/spielorte/', 54.0852726999999973, 12.1252847999999993, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1143, 'Schwerin', 'Mo ab 19.30', 'Pfarrei St. Nikolai, Puschkinstr. 3 (am Schelfmarkt)', NULL, 'Hubert Marischen, 0385-564210; Heinz Postulka, 0385-3433846', 'http://www.jaaan.de/go-schwerin', 53.6290795999999972, 11.4153397000000005, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1144, 'Hamburg', 'Mo 18-24', 'Hamburger Go-Club im CVJM, Schrödersaal, An der Alster 40, 040-2840950', NULL, 'Olga Silber, 04141-7810576; Tobias Berben (Email), 040-85157161', 'http://gohh.de/?Clubs_und_Spielgruppen:Hamburger_Go-Club', 53.5574271999999993, 10.0038508999999998, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1145, 'Hamburg', 'Fr ab 18', 'CVJM, An der Alster 40, 040-2840950', NULL, 'Olga Silber, 04141-7810576; Tobias Berben (Email), 040-85157161', 'http://gohh.de/?Clubs_und_Spielgruppen:CVJM-Spielabend', 53.5574271999999993, 10.0038508999999998, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1146, 'Hamburg', 'Do 18-21', 'Uni-Spielabend, Foyer des Pädagogischen Instituts (VMP 8)', NULL, 'Peter Splettstösser, 040-4914818', 'http://www.go-in-hamburg.de/?Uni_Go-Gruppe', 53.5678912500000024, 9.97962391591025977, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1126, 'Mittweida', 'Mi ab 18', 'Bierstube in der Mensa der Hochschule, Am Schwanenteich', '', 'H.-D. Pester, 03727-603099', '', 50.9906380955999978, 12.982995614, 1, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1147, 'Hamburg', 'Do 19-21.30', 'letzter Do im Monat, asiatischer Brettspielabend des Konfuzius Instituts, Chinesisches Teehaus "Yu Garden", Feldbrunnenstr. 67', NULL, 'Steffi Hebsacker, 0151-15541415', 'http://www.ki-hh.de/veranstaltungen/ueberblick', 53.5660033999999996, 9.99081520000000012, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1148, 'Hamburg (Harburg)', 'Mi 19-22', 'Kulturzentrum "Rieckhof", Rieckhoffstr. 12, 040-7662020', NULL, 'Jürgen Abels, 04181-4063524; Matthias Palm (Email), 040-76111771', 'http://gohh.de/?Clubs_und_Spielgruppen:Go-Gruppe_Harburg', 53.458007600000002, 9.98641970000000079, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1149, 'Lüneburg', '', 'Privat n.V.', NULL, 'Ralf Schulz, 0151-65783327', '', 53.2228100499999996, 10.3844010777477997, NULL, 7, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1150, 'Lüneburg', '2. Sonntag / Monat 14:30 - 18:00', 'Reppenstedt (layer, bei Lüneburg) Privat, Bitte vorher anrufen', NULL, 'Alexander Huber, 04131-395300', '', 53.2499383500000008, 10.3377483217864992, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1151, 'Hamburg (Rahlstedt)', 'Di 18-22', 'Gymnasium Oldenfelde, Birrenkovenallee 12', NULL, 'Patrick Brunner, 0176-488485474; Thomas Nohr (Email), 040-67561446, 0176-57186511', 'http://gohh.de/?Clubs_und_Spielgruppen:Rahlstedter_Go-Club', 53.6064991499999977, 10.1669467510192, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1152, 'Lübeck', 'Mo 19-23.30', 'Tonfink, Gr. Burgstr. 46', NULL, 'Rüdiger Klehn, 0451-72626', '', 53.8717804999999998, 10.6887673000000003, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1153, 'Kiel', 'Mo ab 19.30', 'Gaststätte Blücher, Esmarchstr. 44', NULL, 'Werner Ente, 0431-677304', 'http://sites.google.com/site/gospielkreiskiel/', 54.3413522999999969, 10.1387932999999997, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1154, 'Kiel', 'Mi 18-20', 'Uni-Go-Gruppe, Stadionturm, Olshausenstr. 70 (Während der Vorlesungszeit. In der vorlesungsfreien Zeit Termin evtl. abweichend.)', NULL, 'Christina Schramm ', 'http://server.sportzentrum.uni-kiel.de/sportarten/aktueller_zeitraum/_Go.html', 54.3367251000000024, 10.1317026000000006, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1155, 'Schleswig', 'Sa ab 17 n. V.', 'Café Patio, Lollfuß 3 (Innenhof)', NULL, 'Mario Venzlaff, 04621-382823', 'http://senseis.xmp.net/?GoClubSchleswig', 54.512159699999998, 9.54703020000000002, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1156, 'Flensburg', 'Mi ab 19.30', 'Grisou, Holmhof 43', NULL, 'Peter Lakemeier, 0461-7703491', '', 54.784181671932501, 9.43665504455566051, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1157, 'Oldenburg', 'Di ab 20', 'Dreieck, Röwekamp 23', NULL, 'Jens Pankoke, 0441-9333649', 'http://www.go-club-oldenburg.de/', 53.1497294999999994, 8.2085063999999992, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1158, 'Wilhelmshaven', 'Mi 19.30-23', 'News Cafe, Börsenstr. 42, 04421-92910', NULL, 'Klaus Heine, 04421-44526', '', 53.5208330000000032, 8.11057650000000052, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1159, 'Emden', 'Mi ab 18.30', 'HS Emden-Leer, Haus der Studierenden, Constantiaplatz 4', NULL, 'Ingo Stein, 04921-918168; Christine Dauelsberg (Email), 04921-28977', 'http://www.emden-go.de/', 53.367432727548497, 7.18081533908843994, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1160, 'Bremerhaven, Di', 'Mi ab 20', 'priv. n. V.', NULL, 'Martin Osthaus, 04747/931334', '', 53.535440549999997, 8.5874343601111196, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1161, 'Bremen', 'Di+Fr 19-22', 'Weserterrassen, Osterdeich 70 b, 0421-549490', NULL, 'Uwe Weiß, 0421-74154', '', 53.0649496999999997, 8.85323020000000049, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1162, 'Soltau', '', '', NULL, 'Reinhard Spode, 05195-1259', '', 53.0511117499999969, 9.69543254964762014, NULL, 7, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1163, 'Bispingen', 'Fr ab 18', '29646 Bispingen; privat (bitte vorher kontaktieren)', NULL, 'Thomas Rohde, 05194-6741', '', 53.099378542300002, 9.99924033879999996, 1, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1164, 'Hannover', 'Di 19.30-22', 'Uni, Conti-Hochhaus, Königsworther Platz 1, Etage 13', NULL, 'Ralph Tiefenthaler, 0511-8765551; Christoph Gerlach (Email), 0511-7000552', 'http://www.hannover-go.de', 52.3784695000000013, 9.7225324999999998, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1165, 'Hannover', 'Mo 19.15-22', 'RSV Geschäftsstelle, Vorraum der dortigen Kegelbahn im Keller der Sporthalle, Am Südbahnhof 7', NULL, 'Ralph Tiefenthaler, 0511-8765551', 'http://www.hannover-go.de', 52.3701064999999986, 9.7590526999999998, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1166, 'Isernhagen', 'Do ab 18', 'Voltmershof, Burgwedeler Str.', NULL, 'Winfried Dörholt, 0511-772766', 'http://www.hannover-go.de', 52.4749748999999994, 9.79575670000000009, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1167, 'Hildesheim', 'Sa ab 14', '"Deseo", Hindenburgplatz 3 (bitte vorher kontaktieren)', NULL, 'Veronika Lyssenko ', 'http://go-hildesheim.de', 52.1500473999999983, 9.95420930000000048, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1168, 'Bad Nenndorf', 'Mi ab 19.30', 'Intensofit, Rotrehre 20-22', NULL, 'Dieter Rasche, 05723-74116; Bernd Barthold, 05723-913528', '', 52.3460723999999971, 9.38137000000000043, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1169, 'Herford', 'Fr ab 19, 14-tg', 'Mozartstr. 81 a, privat', NULL, 'Hans Abraham, 05221-84183', '', 52.1206018999999969, 8.69491039999999948, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1170, 'Lemgo', 'Mo 18.30 (14-tägig)', 'jeden 2. Montag im Gemeindehaus oder im Bistro (Kirchturm, 2. Etage) der St. Pauli Kirche, Echternstr. 20', NULL, 'Tim Robert Würfel ', 'http://sc-stpauli.de/', 52.0291923999999995, 8.90084260000000071, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1171, 'Detmold', 'Do ab 18', 'Asia Palast, Schülerstr. 24, Eingang Grabenstr.', NULL, 'Peter Hagemann, 05231-31629; Rolf Bensel (Email), 0160-5056506', 'http://www.dgob.de/lv-nrw/detmold/', 51.934260100000003, 8.88114829999999955, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1172, 'Paderborn', 'Mi ab 19', 'Uni Paderborn, Raum H3.203', NULL, 'Martin Hershoff, 05251-760467; Joshua Nowack (Email), n/a', 'http://www.ponnuki-paderborn.de', 51.7120229000000009, 8.75926137769996949, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1173, 'Bielefeld', 'Mi ab 19', 'Universität Bielefeld, Raum V3-201', NULL, 'Claus-Martin Heyer, 0521-68793', 'http://www.claus-martinheyer.de/go/index.htm', 52.0373398577170008, 8.49464178085326971, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1174, 'Kassel', 'Mi ab 18.30', 'Foto Motel, Wolfhager Str. 53', NULL, 'Martin Bussas, 0561-81049711', 'http://gokassel.webnode.com', 51.3210371999999992, 9.50184519999999999, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1175, 'Giessen', 'Do ab 20', 'Pit''s Pinte, Grünberger Str. 31, 0641-47276', NULL, 'Hellwig Geisse, 0641-394659', 'http://homepages.thm.de/~hg53/go-club-giessen', 50.5879122999999993, 8.70673180000000002, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1177, 'Göttingen', 'Do ab 18', 'Uni Göttingen, Mathematisches Institut (Hauptgebäude Übungssaal), Bürgerstr. (im Semester)', NULL, 'Colin-Marius Koch, 0178-2969071', '', 51.5381896999999967, 9.94864959999999954, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1178, 'Braunschweig', 'Do ab 19', 'Café Fischer, Altewiekring 44', NULL, 'Joachim Beggerow, 0531-42504; Andreas Szostak (Email), 0176-82167987', 'http://www.braunschweig-go.de', 52.2632964000000015, 10.5427698999999997, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1179, 'Braunschweig', 'Mo ab 19', 'Gebäude Grotrian an der TUBS, Zimmerstr. 24 D', NULL, 'Björn Meier, 05306-931757; Nina Knöchelmann (Email), 0160-4434640', 'http://www.braunschweig-go.de', 52.2739507000000003, 10.5366362999999996, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1180, 'Clausthal', 'Mo+Do ab 20', '"Kellerclub", Silberstraße 1, 05323-722111', NULL, 'Conny Pohle, 05323-722898 (d)', '', 51.8044974000000025, 10.3305623999999998, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1181, 'Magdeburg', 'Di ab 19', 'Universitätsplatz 2 (Campus), Gebäude 05, R. 210, Nordeingang', NULL, 'Olaf Salchow, 03949-4488', '', 52.1389773000000005, 11.6400834, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1182, 'Hundisburg', 'Do ab 20', 'Schloß-und Gartenverwaltung Hundisburg', NULL, 'Harald Blanke, 03904-44265', '', 52.2367679500000008, 11.2710800765430008, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1183, 'Düsseldorf', 'Mi ab 20', 'Universität, Café Atempause, Gebäude 25.23', NULL, 'Dawid Napora, 0160-6287144', '', 51.1966517999999979, 6.77222028323329983, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1184, 'Ratingen', 'Do ab 19.30', 'Haus der Jugend, 1. Etage, Stadionring 9', NULL, 'Wolfgang Klengel, 02102-844711; Helmut Heidrich, 0211-656325', '', 51.2969523000000009, 6.84073150000000041, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1185, 'Wuppertal', 'Mo ab 19', 'Universität, Asta-Kneipe, Gauss-Str. 20', NULL, 'Erik Schweitzer, 0202-2429133; Hildegard Puttkammer (Email), 02053-40215', 'http://tonshi.de/tonshi2/der_spieleabend/', 51.2421930000000003, 7.15150810000000003, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1186, 'Dortmund', 'Mi 16-18.30, 14-tg', 'SIGNAL IDUNA Gruppe, Joseph-Scherer Str. 3, externe Besucher müssen sich vorher anmelden', NULL, 'Martin Quest, 0231-201945', 'http://www.dortmund-go.de/index.php/spielabende', 51.4976692999999983, 7.46541760000000032, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1187, 'Dortmund', 'Do ab 19.30', '"Depothek" im Depot, Immermannstraße 29 (U-Bahn: "Immermannstr./Klinikzentrum")', NULL, 'Lars Gehrke, 01732015374', 'http://dortmund-go.de/index.php/spielabende', 51.532922499999998, 7.45505860000000009, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1308, 'Lincoln', 'Monday 19:00-22:00 (1st Mon) ', 'LN2 1LU The Wig and Mitre, Steep Hill ', NULL, 'Richard Leedham-Green ', 'http://www.britgo.org/node/3195', 53.2341566999999998, -0.538931900000000019, NULL, NULL, 21);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1188, 'Dortmund', 'Mo 17-19', 'Neues Informatik-Gebäude der TU Dortmund, Otto-Hahn-Str. 12, 2. Etage, Raum 2003', NULL, 'Lars Gehrke, 01732015374', 'http://dortmund-go.de/index.php/spielabende', 51.4894290000000012, 7.40097649999999962, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1189, 'Castrop-Rauxel', 'Di ab 19.30', 'Tapas Bar La Sonrisa, Bahnhofstr. 252', NULL, 'Hans-Werner Bressan, 02305-360154', '', 51.5691881999999993, 7.30694599999999994, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1190, 'Bochum', 'Di ab 19', '"Game", Willy-Brandt-Platz 10, 0234-6406950', NULL, 'Sascha Hempel, 0173-5419476', 'www.bochum-go.de', 51.4817374000000001, 7.21457929999999958, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1191, 'Essen', 'Fr 19-22', 'Kultur-Forum Steele, Dreiringstr. 7', NULL, 'Christoph Grotepass, 0178-6153330; Frithjof Janke (Email), 0201-8718554', 'http://www.dgob.de/lv-nrw/essen', 51.4469330020791986, 7.07785606384276988, 1, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1192, 'Recklinghausen', 'Do ab 19', '"Drübbelken", Münsterstr. 5', NULL, 'Martin Langer, 02361-486674', 'http://www.guzumi.de/index.php', 51.6157492999999974, 7.19722409999999968, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1193, 'Bottrop', 'Do ab 19', 'Gasthof Milke, Lindhorststraße 213 A', NULL, 'Detlef de Jonghe, 02041-97196', '', 51.5371172999999985, 6.90547749999999994, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1194, 'Münster', 'Di ab 20.15', 'Cafe Klingklang, Erphostr. 2', NULL, 'Rainer Busch, 0251-784207; Markus Dittberner (Email), 0251-2302783', '', 51.9650067999999976, 7.64765650000000008, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1195, 'Gronau-Epe, n. V.', '', 'privat (bitte vorher kontaktieren)', NULL, 'Claus Weyck, 02565-2556,0177-1446465', '', 52.1889972499999999, 7.02877720225627023, NULL, 7, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1196, 'Osnabrück', 'Di ab 18.30', '"Lagerhalle" am Heger Tor, Rolandsmauer 26', NULL, 'Michael Stolte, 0541-75049597', 'http://www.lagerhalle-osnabrueck.de/', 52.2744751999999977, 8.04014600000000002, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1197, 'Hasbergen', '', 'Zum Ortenbrink 9', NULL, 'Helmut Gorenflo, 05405-1591', '', 52.2352944000000008, 7.96678559999999969, NULL, 7, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1198, 'Lingen', 'Di ab 18', 'Grüner Jäger', NULL, 'Axel Wimmer, 0591-9152870; Christoph Hermes (Email), 0591-90110952', 'http://www.go-lingen.de', 52.5138071835757003, 7.33481941986941965, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1199, 'Köln', 'Di + Fr 19-23', 'Cafe Kommödchen, Merheimer Str. 53', NULL, 'Michael Ambrosius, 0157-87355348; Pierre Chamot (Email), 02204-65823', 'http://www.dgob.de/lv-nrw/koeln/', 50.9591312315000025, 6.94924950600000013, 1, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1200, 'Aachen', 'Di ab 20', '"Meisenfrei", Südstr. 25', NULL, 'Sarah Tegtmeier, 0241-4759651', '', 50.7674876000000026, 6.08138179999999995, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1201, 'Bonn', 'Do 17-22', 'Dietrich-Bonhoeffer-Haus, Königstr. 88', NULL, 'Andre Sieber, 0151-21151031; Rainer Schütze (Email), 0228-658218', 'http://www.bonnergozentrum.de/', 50.7262758999999974, 7.09527280000000005, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1202, 'Trier', 'Fr ab 20', 'Jugendzentrum "Mergener Hof", Rindertanzstr. 4', NULL, 'Horst Zein, 0651-52711', 'http://de.trigo.wikia.com', 49.7583754999999996, 6.64418229999999976, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1203, 'Trier', 'n. V.', 'Universität Trier', NULL, 'Marc Oliver Rieger ', 'http://de.trigo.wikia.com', 49.7441330999999991, 6.69206850000000042, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1204, 'Mainz', 'Mi ab 20', 'Lomo, Ballplatz 2', NULL, 'Bernhard Herwig, 06131-5701833', '', 49.9974450500000032, 8.26975643509378067, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1205, 'Bad Kreuznach', '', 'priv. n. V. Musikkneipe "Dudelsack", Rüdesheimerstr. 44', NULL, 'Danny Shave, 0175-2237753; Janos Sälzer (Email), 0176-24020101', '', 49.9826596119127018, 7.96484112739562988, 1, 7, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1206, 'Siegen', 'Do 18-21', 'BlueBox Siegen, Sandstr. 54', NULL, 'Karl Blotnicki, 0176-78753831; Hartmud Koch (Email), 0271-7411944', '', 50.8796546000000021, 8.02511819999999965, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1207, 'Hagen', 'Di ab 20', 'Pub "Jekyll & Hyde", Kampstr. 24 a', NULL, 'Wolfgang Deinert, 02331-302752, 0170-4150674; Thomas Knop (Email)', '', 51.3577483999999984, 7.47749213629261966, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1208, 'Hagen', 'Fr ab 17', '"AllerWeltHaus", Potthofstr. 22', NULL, 'Thomas Knop ', 'http://www.allerwelthaus.org/index.html', 51.3570739999999972, 7.47471279999999982, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1209, 'Hagen', 'Mi ab 19', 'Postsportheim, Am Sportpark 18a', NULL, 'Wolfgang Deinert, 02331-302752, 0170-4150674', '', 51.3665883999999977, 7.47643500000000039, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1210, 'Unna', 'Mo 19.30-23, priv. n.V.', 'Café Extrablatt Unna, Markt 1', NULL, 'Andre Schneider, 0151-27535137', 'http://www.dortmund-go.de', 51.5307168499999975, 7.69473039297348027, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1211, 'Lippstadt', 'Di 20-22', 'Mensa des Ostendorf-Gymnasiums, Cappeltor 5', NULL, 'Andreas Fecke, 02948-322', '', 51.6774710999999982, 8.3417027000000008, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1212, 'Meschede', 'Mo ab 18 n. V.', 'Go-Kurs in der FH Südwestfalen, Lindenstr. 53, Raum 8.2 am Foyer, 1. Mo im Monat und n. V.', NULL, 'Monika Reimpell, 02934-2453148', 'http://www.fh-meschede.de', 51.3620266000000001, 8.2981391999999996, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1213, 'Frankfurt', 'So ab 15', 'Cafe Albatross, Kiesstr. 27 (vorher kontaktieren)', NULL, 'Eckhardt Krause, 069-727803', '', 50.1188858213999993, 8.64831358194351019, 1, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1214, 'Frankfurt/M.', 'Do ab 20', 'Plateau, Neuer Wall 15', NULL, 'Nils Blarr ', '', 50.1047810999999967, 8.69066029999999934, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1215, 'Darmstadt', 'Mo ab 19.30', '"Hobbit", Lauteschlägerstr. 3', NULL, 'Jochen Tappe, 06151-3928560', '', 49.877820100000001, 8.65970339999999972, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1216, 'Darmstadt', 'Mi ab 19', '"Hobbit", Lauteschlägerstr. 3', NULL, 'Klaus Petri, 06151-9674362', '', 49.877820100000001, 8.65970339999999972, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1217, 'Wiesbaden', 'Do ab 20, 14-tg', 'Kulturpalast, Saalgasse 36 (Details siehe http://wi-go.de)', NULL, 'Jana Hollmann, 0611-5802855', 'http://wi-go.de', 50.0863765000000001, 8.24119489999999999, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1218, 'Saarbrücken', 'Di ab 19.30', 'Cafe "Leonardo", Kappenstr. 1, 0681-3908505', NULL, 'Gregor Mertz, 0681-5847742', '', 49.2331112000000033, 6.99663709023436997, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1219, 'Kaiserslautern', 'Mi ab 19', 'Universität, Bau 48 (Mathebau), Raum 582', NULL, 'Dr. Thomas Pfaff, 0631-13698', 'http://www-user.rhrk.uni-kl.de/~pfaff/go.html', 49.4351088000000018, 7.76925229161358999, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1220, 'Mannheim', 'Mo ab 19.00', 'Gaststätte "Tomate", B6, 12', NULL, 'Matthias Armbruster, 0176-20164702', 'http://www.mannheimer-aji.de/', 49.4915185418846022, 8.46174147732246063, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1221, 'Heidelberg', 'Mi 20-24', 'Neckarschänke Wieblingen, Ludwig-Guttmann-Str. 10, 06221-833347', NULL, 'Rolf Hofmann, 06201-46653; Hans-Ulrich Teufel, 06221-400625', 'http://www.heidelberg-go.de/', 49.4138049000000024, 8.65375180000000022, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1222, 'Weinheim', 'Do ab 19 n. V.', 'Bistrorant Tafelspitz, Marktplatz 7', NULL, 'Thomas Reinicz, 0172-6371629', 'http://www.go-weinheim.de/', 49.5464240000000018, 8.67283119999999919, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1223, 'Stuttgart', 'Mi ab 19', 'forum 3, Gymnasiumstr. 21', NULL, 'Thomas Schmid, 07127-952213', 'http://www.dgob.de/lv-bw/Stuttgart/index.html', 48.7775883999999991, 9.17165360000000085, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1224, 'Böblingen', '', '', NULL, 'Uli Staber, 07157-65801', '', 48.6852145092567028, 9.01963413752122989, NULL, 7, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1225, 'Ludwigsburg', '', 'in Ludwigsburg-Ossweil', NULL, 'Christopher Doubleday, 07141-918882', '', 48.8962672500000011, 9.2290110442270592, NULL, 7, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1226, 'Tübingen', 'Mi ab 18.30', '"Herzog Ulrich", Ulrichstr. 11', NULL, 'Hannes Vogt, 0179-9041687; Bernhard Unold, 0176-97412331', '', 48.5146238999999966, 9.06252429999999976, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1227, 'Göppingen', 'Di 18-22', 'Haus der Jugend, 2. Stock', NULL, 'Joachim Pimiskern, 07161-815530', '', 48.7190864000000019, 9.69049160197639026, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1228, 'Karlsruhe', 'Do ab 20', 'Thoule e.V., Ostendstr. 1', NULL, 'Alexander Wirth ; Birger Holtermann (Email)', '', 49.0056091000000009, 8.41601539999999915, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1229, 'Karlsruhe', 'Mi ab 19', 'Begegnungsstätte Gretl Vogt, Adlerstr. 33', NULL, 'Wilhelm Bühler, 0151-20904075', 'http://www.karlsgo.de/', 49.0103241999999995, 8.40627379999999924, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1230, 'Lahr', 'Mi ab 19', 'alle 3 Wochen, Thai-Restaurant Patcha-Rawadee, Geroldseckerstr. 92', NULL, 'Christian Fehse, 0151-22454517', '', 48.3410737000000026, 7.88311350000000033, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1231, 'Villingen-Schwenningen', '', '', NULL, 'Manfred Götz, 0151-11523830', '', 48.0555458518873024, 8.44681080887598057, NULL, 7, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1232, 'Konstanz', 'Mi ab 19', '"Seekuh" Kneipe, Konzilstr. 1', NULL, 'Christoph Adelsberger, 0171-5255715; Norbert Kolassa (Email), 07531-8076906', '', 47.6609570999999974, 9.17817603944775939, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1233, 'Konstanz', 'Di ab 18.45', 'Universität Raum G302, Universitätsstr. 10 (im Semester)', NULL, 'Christoph Adelsberger, 0171-5255715', '', 47.6903464000000028, 9.1767391000000007, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1234, 'Freiburg', 'Mo ab 19', 'Enigma, Bergiselstr. 34', NULL, 'Christian Haberbosch, 0761-4299652; Kirsten Grimm, 0172-5841455', 'http://www.Dreisam-Honinbo.de', 47.975875000000002, 7.81410610000000005, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1235, 'Freiburg', 'Fr ab 18', 'privat, Am Hagmättle 11', NULL, 'Kirsten Grimm, 0172-5841455', '', 47.963988950000001, 7.90094001771169019, NULL, 7, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1236, 'München', 'Mo 18-23', 'Mil''s, Hans-Denzinger-Str. 2', NULL, 'Joachim Bitzer, 089-301961; Philip Hiller (Email), 089-12749237', 'http://www.mils-sportrestaurant.de', 48.1805500999999978, 11.5777895999999991, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1237, 'München', 'Di 18-23', 'Mil''s, Hans-Denzinger-Str. 2', NULL, 'Joachim Bitzer, 089-301961; Andreas Mauke (Email), 0177-7455229', 'http://www.mils-sportrestaurant.de', 48.1805500999999978, 11.5777895999999991, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1238, 'München (Moosach)', 'Sa 14-22 n.V.', 'Turnhalle der GS an der Jenaer Str. 3, Spieletreff und freies Training von Jonglieren in München e.V.', NULL, 'Thomas Furtner, 0160-96261998', 'https://www.google.com/maps/d/edit?mid=zNJ3sfg4D5TM.kDEuGESFYHBM', 48.1803724000000031, 11.5180340000000001, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1239, 'Herrsching am Ammersee', 'Do ab 19', '"La Dolce Vita", Seestr. 52 (bitte vorher kontaktieren)', NULL, 'Daniel Altmann, 08152-9040457', 'http://www.ristorante-la-dolce-vita.com/', 47.9954339000000019, 11.1704637000000009, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1240, 'Rosenheim', '', '', NULL, 'Christoph Sitte, 0176-21643171', '', 47.837999586435501, 12.1081236758528998, NULL, 7, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1241, 'Landshut', '', 'Landshut und Umgebung', NULL, 'Georg Engl, 0172 247 3328', '', 48.5449692999999982, 12.1655881000000008, NULL, 7, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1242, 'Erding', 'Mo ab 19', 'Posenerstr. 12, privat', NULL, 'Klaus Flügge, 08122-902914', 'http://www.go-erding.de', 48.2964857999999992, 11.8944743000000006, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1243, 'Unterschleissheim', '', '', NULL, 'Paul Freitag, 0151-12318766', '', 48.2770031000000017, 11.5535459243189003, NULL, 7, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1244, 'Garching', 'Do 14-18', 'bei München, Boltzmannstr. 3, Fakultät für Mathematik und Informatik der TUM', NULL, 'Bernhard Werner, 0151-40322940; Stephan Schmolke (Email), 0176-47790131', '', 48.2680413000000001, 11.6728178000000007, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1245, 'Augsburg', 'Do ab 19.30', 'Il Galeone, Steppacher Str. 1', NULL, 'Thomas Brückmann ', 'http://www.augsburg-go.de/', 48.3796589999999966, 10.8321345999999998, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1246, 'Buchloe', '', '', NULL, 'Bernd Gramlich, 08241-5079996', '', 48.0301966999999976, 10.7538150746101007, NULL, 7, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1247, 'Ulm', 'Mi ab 19', 'Cafe Omar, König-Wilhelm Str. 5', NULL, 'Gerhard Schmid, 0731-54739; Mattias Laage, 0731-57084', 'http://www.go-ulm.de', 48.4067632000000003, 9.99970989999999915, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1248, 'Fürth', 'Fr 20-01', 'Kofferfabrik, Lange Str. 81', NULL, 'Robert Grüning, 0157-35549462', 'http://www.gofans.de/Go_Clubs.htm', 49.4684099332302978, 11.0078072547913006, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1249, 'Erlangen', 'Mo ab 20', 'Katholische Hochschul-Stud.-Gem. (KHG), Sieboldstr. 3, Pacelli-Haus', NULL, 'Martin Bergmann, 09131-6103700; Horst Schrebe, 09131-481926', 'http://www.nefkom.net/martin.bergmann/go', 49.5915469999999985, 11.0108026999999993, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1250, 'Regensburg', 'Mo ab 20', 'Gaststätte Antoniushaus, Mühlweg 13', NULL, 'Erwin Gerstorfer ', '', 49.0084476999999978, 12.1083093000000002, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1251, 'Bamberg', 'Mi 18-(21)', 'wechselnde Lokale in der Austraße (einfach durchschauen)', NULL, 'Owen Jericho, null162vier502759; Andi (Email)', 'https://www.facebook.com/groups/GOspielen.Bamberg/', 49.9118415000000013, 10.9048274000000003, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1252, 'Ilmenau', 'Do ab 19', 'Piano, Weimarer Str. 9', NULL, 'Markus Richert, 03677-466684; Paul Kunysch, 0151-22651019', 'http://kunysch.de/go/', 50.6889175000000023, 10.9243950999999999, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1253, 'Erfurt', 'So 19-24', '"Roter Elephant", Allerheiligenstr. 4', NULL, 'Markus Lang, 0361-2622691; Thomas Schütz (Email), 0361-416882', 'http://www.roterelephant.de/', 50.9789049999999975, 11.0273195000000008, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1254, 'Nordhausen', 'Mi ab 17', 'Thomas-Mann-Klub, Nebelungstr. 39, 03631-983493', NULL, 'Dieter Wenske, 03631-987952; Matthias Reimann, 036331-31406', '', 51.5047084999999996, 10.8013747999999996, NULL, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1255, 'Clube de Go Braga', 'no 2º e 4º sábado de cada mês, às 10h', 'Livraria Centésima Página, avenida central 118-120, 4710-229 braga, portugal', NULL, 'clubegobraga@gmail.com | https://www.facebook.com/gobraga', 'https://clubegobraga.wordpress.com/', 41.5512599999999992, -8.42008000000000045, 1, 8, 27);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1256, 'Lisboa', 'aos Domingos à tarde', 'Centro de Bridge de Lisboa,  na Av. António Augusto de Aguiar, 163-4º Esq. (perto do El Corte Ingles).', NULL, 'Pedro Carmona - 91 627 0944 p.carmona@go-portugal.org ; Rui Malhado - 91 485 0532 rui.malhado@go-portugal.org ; Vasco Pimenta - 93 426 3497 vasco@go-portugal.org', 'http://www.go-portugal.org/index.php/onde-jogar/55-lisboa', 38.7344700000000017, -9.15443999999999924, 1, 8, 27);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1257, 'Porto ', 'Quintas a partir das 21h00', 'Crystal Park (o encontro é em frente ao Tropical Burger)', NULL, 'Cristóvão Neto - 93 695 2487 chris@go-portugal.org', 'http://www.go-portugal.org/index.php/onde-jogar/56-porto', 41.1473999999999975, -8.62710000000000043, 1, 8, 27);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1258, 'Caldas da Rainha', 'Sábados às 18:00', 'Centro de Juventude das Caldas da Rainha, R. de Vitorino Frois 22', NULL, 'Combinar antecipadamente com Francisco Pereira: xikkuh@gmail.com', 'http://www.go-portugal.org/index.php/onde-jogar/57-caldas-da-rainha', 39.4033099999999976, -9.1429500000000008, 1, 8, 27);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1259, 'Coimbra ', '', '', NULL, 'Quem estiver interessado em jogar pode contactar o Pedro - kemedo@hotmail.it', 'http://www.go-portugal.org/index.php/onde-jogar/64-coimbra', 40.2109999999999985, -8.4291999999999998, 1, 7, 27);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1260, 'Каисса', 'с 10.00 до 21.00 ', '127273, Москва, ул.Хачатуряна, 16', NULL, 'elvird@yandex.ru', 'http://kaissa-club.ru/', 55.860730488999998, 37.6030898093999966, 1, 8, 26);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1297, 'Galway', 'Wednesday 20:00 - players normally present from 19:30 ', 'Westwood House Hotel bar ', NULL, 'Richard Brennan ', 'http://www.britgo.org/node/3180', 53.2896300000000025, -9.07513999999999932, NULL, NULL, 21);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1261, 'Территория', 'по Вт с 19-00 до 21-00 и по Сб с 11-00 до 13-00. Можно выбрать удобное время', 'Москва, м. Проспект мира (кольцевая или радиальная), 5 мин. пешком до с.к. Олимпийский, подъезд 9А, 7-й этаж, офис 3/10', NULL, '+7-916-179-85-24 Михаил', 'http://territoria-club.ru/', 55.7692816013740966, 37.604267299175298, 1, 8, 26);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1262, 'Воронежский го клуб', 'вторник с 18.30 до 21.00 ', 'пл. Ленина 10, 2-й корпус ВГУ, Ресурсный Центр, ауд. 108. ', NULL, 'Вахитова Светлана, моб. 8-920-427-00-34, e-mail: svetasoft mail.ru', 'http://voronezh.weiqi.ru/', 51.6628565757745974, 39.2018580436706969, 1, 8, 26);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1263, 'Heiko', '', '', NULL, '', 'http://vk.com/go_heiko', 51.7958765661867986, 55.109481811523402, 1, 8, 26);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1264, 'Aberdeen', 'Saturday 11:00 every second one from 19/04/14, but check website ', 'AB24 3AA Hardback Cafe, Aberdeen University "Sir Duncan Rice Library, Bedford Road, Aberdeen ', NULL, 'Neil McLean ', 'http://www.britgo.org/node/3140', 57.165649573293102, -2.10586390402162982, NULL, NULL, 21);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1265, 'Arundel', 'Sunday - last in month, but please ring first to confirm ', 'BN18 9DF 1 Town Quay, River Rd, Arundel, West Sussex ', NULL, 'Sue Paterson Tel: 07549 898376 ', 'http://www.britgo.org/node/3141', 50.8534234999999981, -0.557635499999999951, NULL, NULL, 21);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1266, 'Barmouth', 'By arrangement ', '', NULL, 'Baron Allday Tel: 01341 280365 ', 'http://www.britgo.org/node/3142', 52.720950000000002, -4.05361999999999956, NULL, NULL, 21);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1267, 'Bath', 'Tuesday 19:30 ', 'BA1 3EN Meets various places - check club web site. ', NULL, 'Paul Christie Tel: 01225 428995 ', 'http://www.britgo.org/node/3144', 51.3790174481155972, -2.39513594148764986, NULL, NULL, 21);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1268, 'Belfast', 'Monday 19:00 ', 'BT9 5FJ Function Room, Belfast Boat Club, 12 Lockview Road ', NULL, 'James Hutchinson ', 'http://www.britgo.org/node/3145', 54.5793299999999988, -5.93304999999999971, NULL, NULL, 21);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1269, 'Belfast', 'Thursday 18:30 ', 'BT9 5AW 86 Stranmillis Road ', NULL, 'James Hutchinson ', 'http://www.britgo.org/node/4563', 54.5793299999999988, -5.93304999999999971, NULL, NULL, 21);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1270, 'Billericay', 'Monday 19:30 in term-time ', 'CM11 2HQ 42 Mons Avenue, Billericay, Essex ', NULL, 'Guy Footring Tel: 01277 623305 ', 'http://www.britgo.org/node/3147', 51.6243999000000002, 0.435093899999999978, NULL, NULL, 21);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1271, 'Birmingham', 'Sunday 14:00 ', 'B1 2EA Starbucks cafe in the International Convention Centre (ICC) ', NULL, 'Andrew Russellhttp://www.brumgo.co.uk/ ', 'http://www.britgo.org/node/3148', 52.4782216474506029, -1.9106476576612299, NULL, NULL, 21);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1272, 'Borders', 'By arrangement ', 'TD6 9NP Greenwells, Gattonside near Melrose and Galashiels ', NULL, 'Ron Bell ', 'http://www.britgo.org/node/3150', 55.6067689999999999, -2.72744819999999999, NULL, NULL, 21);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1273, 'Bournemouth', 'Tuesday 20:00 ', 'BH9 2UJ 24 Cowper Road, Moordown ', NULL, 'Marcus Bennett Tel: 01202 512655 ', 'http://www.britgo.org/node/3153', 50.7488004472072021, -1.87724721565716002, NULL, NULL, 21);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1274, 'Bracknell', 'Tuesday 20:00 meets by arrangement only ', 'RG12 7DL The Green Man, Crowthorne Road ', NULL, 'Ian Marsh Tel: 01344 422296 ', 'http://www.britgo.org/node/3151', 51.4060111000000006, -0.758857195357585002, NULL, NULL, 21);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1275, 'Bradford', 'Wednesday 19:30 ', 'BD18 3ST The Noble Comb, Quayside, Salts Mill Road, Shipley ', NULL, 'Ewen Pearson Tel: 01274 598980 ', 'http://www.britgo.org/node/3152', 53.8344244999999972, -1.77483360000000001, NULL, NULL, 21);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1276, 'Brighton', 'Wednesday 20:00 ', 'BN1 4SD Druid Arms, 79-81 Ditchling Rd ', NULL, 'Felix Shardlow tel: 07940 973406John Allen aka "Yogi" Tel: 01273 383254 or 07854 218920Jil Segerman Tel: 07920 865065 or 01273 470346 ', 'http://www.britgo.org/node/3155', 50.840600000000002, -0.1318, NULL, NULL, 21);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1277, 'Brighton', 'Monday 20:00 ', 'BN2 9UF The Southover Pub, Southover St ', NULL, 'Felix Shardlow 07940 973406https://www.facebook.com/groups/brightongoclub/  ', 'http://www.britgo.org/club/brighton', 50.8272903000000014, -0.126460899999999987, NULL, NULL, 21);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1278, 'Bristol', 'Wednesday 19:00 ', 'BS1 5AE Bristol County Sports Club, 40 Colston Street, Bristol ', NULL, 'Luke Oram ', 'http://www.britgo.org/node/3156', 51.4562400000000011, -2.59757999999999978, NULL, NULL, 21);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1279, 'Cambridge City', 'Sunday 17:30-20:00 ', 'CB1 2BH ', NULL, 'Simon Mader ', 'http://www.britgo.org/node/3158', 52.1973774018734034, 0.13866595440728699, NULL, NULL, 21);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1280, 'Cambridge Junior Chess and Go', 'Wednesday 18:00-19:30 ', 'CB4 3PS St Augustine''s Church Hall, Richmond Road ', NULL, 'Paul Smith Tel: 01223 563932 ', 'http://www.britgo.org/club/cambridgejunior', 52.2195568237466006, 0.107533097928058, NULL, NULL, 21);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1281, 'Cambridge University', 'Monday 19:00-22:00 during University terms (possibly on hold this term) ', 'CB3 9AN Linnett Room, Robinson College ', NULL, 'Sean Hao ', 'http://www.britgo.org/node/3159', 52.2052962253399997, 0.103866856481811001, NULL, NULL, 21);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1282, 'Cambridge University', 'Thursday 19:00-21:00 ', 'CB2 1RU University Centre, Mill Lane ', NULL, 'Sean Hao ', 'http://www.britgo.org/node/3160', 52.2012165821655003, 0.116365110259830998, NULL, NULL, 21);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1283, 'Canterbury Go Club', 'Wednesday evenings from about 7.00pm ', 'CT2 2JQ Chocolate Cafe in Canterbury, 1 Guildhall Street, Canterbury ', NULL, 'Andy Renshaw ', 'http://www.britgo.org/node/5002', 51.2799800000000019, 1.09363999999999995, NULL, NULL, 21);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1284, 'Cardiff', 'Tuesday 19:00-23:30 ', 'CF5 1QE Cafe area of Chapter Arts Centre, Market Road, Cardiff ', NULL, 'Dylan Carter ', 'http://www.britgo.org/node/3164', 51.4844325584185967, -3.20868784881105018, NULL, NULL, 21);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1285, 'Charlton Chess Club', 'Tuesday 19:30 ', 'SE7 8RE Charlton House, Charlton Road, London ', NULL, 'Tony Stebbings ', 'http://www.britgo.org/node/3165', 51.4804080500000012, 0.0372064959226987013, NULL, NULL, 21);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1286, 'Cheltenham', 'Wednesday 19:30 ', '', NULL, 'Adam Watts Tel: 07403 475573 ', 'http://www.britgo.org/node/3166', 51.8986200000000011, -2.07656000000000018, NULL, NULL, 21);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1287, 'Chester', 'Wednesday 20:00 - players normally present from 19:30 ', 'CH1 2LB Ye Olde Custom House Inn, 65-67 Watergate Street ', NULL, 'Tony Pitchford Tel: 01925 730583 ', 'http://www.britgo.org/node/3167', 53.1886174371442024, -2.89142019827060004, NULL, NULL, 21);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1288, 'Cork (UCC Weiqi Club)', 'Sunday 20:00 ', 'Cork Cricket Club, Mardyke Walk  ', NULL, '', 'http://www.britgo.org/node/3168', 51.8963370000000026, -8.49207999999999963, NULL, NULL, 21);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1289, 'Dublin (Collegians Chess and Go Club)', 'Wednesday about 20:30-21:00 until midnight ', 'The Baggot Inn, 135 Lower Baggot Street, Dublin 2 ', NULL, '', 'http://www.britgo.org/node/3169', 53.3368830000000003, -6.24885999999999964, NULL, NULL, 21);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1290, 'Dublin (Collegians Chess and Go Club)', 'Monday about 20:30-21:00 until midnight most weeks ', 'The Baggot Inn, 135 Lower Baggot Street, Dublin 2 ', NULL, '', 'http://www.britgo.org/node/3169', 53.3368830000000003, -6.24885999999999964, NULL, NULL, 21);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1291, 'Dundee', 'Monday from 20:00 during University terms ', 'DD2 1AS Mennie''s, aka the Speedwell Bar, 165-167 Perth Road ', NULL, 'Rich Philp Tel: 01382-666129Peter Clinch Tel: 01382 665322 ', 'http://www.britgo.org/node/3170', 56.4562110000000033, -2.99311060000000007, NULL, NULL, 21);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1292, 'Durham', 'Monday 20:00-22:00 during term time ', 'DH1 3TQ The Bar, Ustinov College, Howlands Farm ', NULL, 'Andrew Ambrose-Thurman ', 'http://www.britgo.org/node/3171', 54.7600027000000011, -1.57972299999999999, NULL, NULL, 21);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1293, 'Durham', 'Thursday 20:00-22:00 during term-time ', 'DH1 4PS The Elm Tree pub, Crossgate ', NULL, 'Andrew Ambrose-Thurman ', 'http://www.britgo.org/node/3172', 54.7754614303745981, -1.58450460919878999, NULL, NULL, 21);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1294, 'Edinburgh', 'Thursday 18:30 ', 'EH3 9JB Edinburgh Games Hub, http://edinburghgamehub.co.uk/ ', NULL, 'Phil Blamire Tel: 0131 663 0678 ', 'http://www.britgo.org/node/3174', 55.9443776999999969, -3.20149570000000017, NULL, NULL, 21);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1295, 'Epsom', 'Occasionally ', 'KT19 Epsom ', NULL, 'Matthew via mobile: 07752 - 301 096 ', 'http://www.britgo.org/node/3176', 51.3338915, -0.264622799999999991, NULL, NULL, 21);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1296, 'Exeter', 'Monday 19:00 ', 'EX1 1ED White Hart Inn, South Street ', NULL, 'David Storkey Tel: 01392 461182 ', 'http://www.britgo.org/node/3177', 50.7208505999999986, -3.53031220000000001, NULL, NULL, 21);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1298, 'Glasgow University', 'Thursday 18:00 ', 'Gilchrist Postgraduate Club, University Avenue, University of Glasgow, G12 8QQ ', NULL, 'Seigfried Leher ', 'http://www.britgo.org/node/3181', 55.8717990000000029, -4.28899899999999956, NULL, NULL, 21);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1299, 'Hinstock', 'By arrangement ', '', NULL, 'Roger Huyshe Tel: 01952 550361 for details of local players ', 'http://www.britgo.org/node/3187', 52.8369700000000009, -2.45854999999999979, NULL, NULL, 21);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1300, 'Hull', 'Thursday 20:00 ', 'HU5 1LL 12 Fitzroy St, Beverley Rd ', NULL, 'Mark Collinson Tel: 01482 341179 ', 'http://www.britgo.org/node/3189', 53.7639521608161033, -0.348889686595132975, NULL, NULL, 21);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1301, 'Isle of Man', 'Sunday 20:00 ', 'Phone for details ', NULL, 'David Phillips, 4 Ivydene Ave, Onchan IM3 3HD Tel: 01624 612294, 07624 473688 ', 'http://www.britgo.org/node/3191', 54.1982300000000023, -4.46696999999999989, NULL, NULL, 21);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1302, 'Lancaster', 'Wednesday 20:00 - players normally present from 19:30 ', 'LA1 3PY Gregson Community Centre, 33 Moorgate ', NULL, 'Adrian Abrahams Tel: 01524 34656 ', 'http://www.britgo.org/node/3184', 54.0466159409837985, -2.79297358349192981, NULL, NULL, 21);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1303, 'Leamington', 'Thursday 19:30, not Easter Thursday ', 'CV35 8EP 22 Keytes Lane, Barford, Warwickshire ', NULL, 'Matthew Macfadyen Tel: 01926 624445 ', 'http://www.britgo.org/node/3192', 52.2457926000000015, -1.60516020000000004, NULL, NULL, 21);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1304, 'Leeds University', 'Tuesday 17:30-20:30 ', 'LS2 9NG The Faversham, 1-5 Springfield Mount, Leeds ', NULL, 'Jitse Niesen ', 'http://www.britgo.org/node/3193', 53.8048979000000003, -1.55777019999999999, NULL, NULL, 21);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1305, 'Leicester', 'Thursday 19:45 ', 'LE9 2EN Stephen Bashforth''s house, Mayfield, Station Road, Kirby Muxloe ', NULL, 'Toby Manning Tel: 01530 245298 ', 'http://www.britgo.org/node/3194', 52.6291196999999968, -1.23059610000000008, NULL, NULL, 21);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1306, 'Letchworth Go Club', 'Thursday 20:00-22:30 during term-time ', 'SG6 3TR Central Methodist Church, Norton Way South  ', NULL, 'Alison Bexfield ', 'http://www.britgo.org/club/letchworth', 51.9776758000000001, -0.227602799999999994, NULL, NULL, 21);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1307, 'Letchworth Junior Chess and Go Club', 'Thursday 18:00-19:30 during term-time ', 'SG6 3TR Central Methodist Church, Norton Way South  ', NULL, 'Alison Bexfield ', 'http://www.britgo.org/node/4212', 51.9776758000000001, -0.227602799999999994, NULL, NULL, 21);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1309, 'London City', 'Friday 18:00-23:00 ', 'EC1N 2LE The Inn of Court pub, 18 Holborn ', NULL, 'Richard Mullens; Kiyohiko Tanaka Tel: 07956 594040 KGS: matta', 'http://www.britgo.org/node/3197', 51.5178439000000026, -0.110058100000000006, NULL, NULL, 21);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1310, 'London, Central', 'Saturday 12:00-20:00 ', 'EC1N 2LE The Inn of Court pub, 18 Holborn ', NULL, 'Jonathan Turner Tel: 07968 538881 (mobile). ', 'http://www.britgo.org/node/3198', 51.5178439000000026, -0.110058100000000006, NULL, NULL, 21);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1311, 'London, East', 'Thursday 19:00 except August ', 'E11 2NT Wanstead House, 21 The Green, Wanstead ', NULL, 'Francis Roads Tel: 020 8505 4381 ', 'http://www.britgo.org/node/3199', 51.5760603000000017, 0.0282214000000000007, NULL, NULL, 21);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1312, 'London, North', 'Tuesday 19:30 ', 'NW3 6UU Allatson Room, Parish Church, Church Row, Hampstead ', NULL, 'Michael Webster ', 'http://www.britgo.org/node/3202', 51.5558438026085, -0.178857120142765003, NULL, NULL, 21);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1313, 'London, Twickenham', 'Wednesday 19:30 ', 'TW1 4RB The Alexander Pope Hotel, Cross Deep, Twickenham, West London ', NULL, 'Colin Maclennan Tel: 020 8941 1607 ', 'http://www.britgo.org/node/3206', 51.4419936807983973, -0.331331781603036002, NULL, NULL, 21);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1314, 'London, West', 'Monday 19:00 ', 'W12 8HA Young Chelsea Bridge Club, 54 Goldhawk Road ', NULL, 'Gerry Gavigan ', 'http://www.britgo.org/node/5225', 51.5019641424903014, -0.227139856293308989, NULL, NULL, 21);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1315, 'London, West', 'Wednesday 19:00 ', 'W12 8HA Young Chelsea Bridge Club, 54 Goldhawk Road ', NULL, 'Gerry Gavigan ', 'http://www.britgo.org/node/5236', 51.5019641424903014, -0.227139856293308989, NULL, NULL, 21);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1316, 'Maidenhead', 'Friday 20:00 ', '', NULL, 'Iain Atwell, Norhurst, Westmorland Rd, Maidenhead, SL6 4HB Tel: 01628 676792 ', 'http://www.britgo.org/node/3208', 51.5219318999999984, -0.734328300000000045, NULL, NULL, 21);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1317, 'Manchester', 'Thursday 18:00 ', 'M2 2AA The Shakespeare pub, 16 Fountain Street ', NULL, 'Chris Kirkham Tel: 0161 903 9023 ', 'https://www.facebook.com/groups/1752760928343423/1756314767988039/?notif_t=group_activity" 0="a:0:{}', 53.4805574000000021, -2.23980079999999981, NULL, NULL, 21);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1318, 'Mid-Cornwall', 'Tuesday 20:00 ', 'Penhalurick Barton, Penhalvean, Redruth, Cornwall TR16 6TG ', NULL, 'Paul Massey Tel: 07966 474686 ', 'http://www.britgo.org/node/3211', 50.198642999999997, -5.21877299999999966, NULL, NULL, 21);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1319, 'Mid-Cornwall', 'Friday 13:00 - 14:00 ', 'Bluefruit Software, Gateway Business Centre, Barncoose, Redruth, Cornwall TR15 3RQ ', NULL, 'Paul Massey Tel: 07966 474686 ', 'http://www.britgo.org/node/5195', 50.2288349999999966, -5.2477450000000001, NULL, NULL, 21);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1320, 'Milton Keynes', 'Tuesday 12:15-13:15 ', 'MK7 6AA The coffee bar in the Catering Hub, The Open University, Walton Hall ', NULL, 'Tim Hunt Tel: 07850 119939 ', 'http://www.britgo.org/node/3213', 52.0242570999999998, -0.711251999999999995, NULL, NULL, 21);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1321, 'Milton Keynes', 'Tuesday 18:15 ', 'MK9 1EA Wetherspoons, 201 Midsummer Boulevard ', NULL, 'Tim Hunt Tel: 07850 119939 ', 'http://www.britgo.org/node/3214', 52.0384223000000006, -0.769231699999999963, NULL, NULL, 21);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1322, 'Northampton', 'Wednesday 19:00 ', 'NN1 4JQ Blackcurrent Centre, St Michaels Avenue, Abington, Northampton (www.blackcurrentcentre.org.uk) ', NULL, 'Thomas Streamer 07926357826 ', 'http://www.britgo.org/node/3450', 52.2446910999999972, -0.882877899999999993, NULL, NULL, 21);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1323, 'Nottingham', 'Wednesday 19:30-22:00 ', 'NG9 1AA The Last Post, Chilwell Road, Beeston ', NULL, 'Brent Cutts Tel: 0115 959 2404 ', 'http://www.britgo.org/node/3219', 52.9265494728415007, -1.21634470518728, NULL, NULL, 21);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1324, 'Oxford City', 'Tuesday 19:30-23:00 ', 'OX2 6AH Freud''s Cafe Restaurant, 119 Walton Street ', NULL, 'Harry Fearnley, 38 Henley Street, Oxford OX4 1ES Tel: 01865 248775 (day/eve) ', 'http://www.britgo.org/node/3222', 51.7581354000000005, -1.26376179999999994, NULL, NULL, 21);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1325, 'Oxford University', 'Thursday 19:30-23:00 - wks 1-8 Oxford Univ term ', 'OX1 4JD Fitzjames 2 in Merton College, Merton Street, Oxford ', NULL, 'Toby Cathcart Burn Tel/Text: 07821 199649 ', 'http://www.britgo.org/node/3223', 51.751117899999997, -1.25093916090592994, NULL, NULL, 21);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1326, 'Purbrook', 'Thursday evenings - most weeks ', 'PO7 5LU Mostly at Peter Wendes''s house ', NULL, 'Peter Wendes Tel: 02392 267648 ', 'http://www.britgo.org/node/3226', 50.8655411000000015, -1.04626960000000002, NULL, NULL, 21);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1327, 'Reading', 'Monday 18:30 except bank holidays ', 'RG1 1EU Eclectic Games, 5 Union Street, Reading ', NULL, 'Jim Clare, 32-28 Granville Rd, Reading, RG30 3QE Tel: 0118 950 7319 ', 'http://www.britgo.org/node/3229', 51.4566390000000027, -0.972276600000000046, NULL, NULL, 21);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1328, 'Seaford', 'Thursday 19:00-21:30 (not every week) ', 'BN25 2QT 149 Princess Drive, Seaford ', NULL, 'Karen van den Zyl tel: 01323 351473 ', 'http://www.britgo.org/node/4282', 50.7838978999999995, 0.0992885000000000018, NULL, NULL, 21);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1329, 'Sheffield', 'Sunday 19:30 ', 'S1 2BG (Since October 2015): The Old Queens Head, 40 Pond Hill, Sheffield, South Yorkshire  ', NULL, 'Phil Barker Tel: 0114 255 1440 (home) ', 'http://www.britgo.org/node/3230', 53.3782610349486006, -1.46276520049955994, NULL, NULL, 21);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1330, 'Sheffield University Go Society', 'Tuesday 18:00-21:00 in term-time ', 'S10 2TG Student Union Gallery Eye room, Western Bank ', NULL, 'David Philpott ', 'http://www.britgo.org/node/4456', 53.3827442000459982, -1.48729028289892007, NULL, NULL, 21);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1331, 'Skye', 'Tuesday 19:30 ', 'IV51 9GU Givendale Guest House, Heron Place, Portree, Isle of Skye ', NULL, 'Carel Goodheir Tel: 01478 611763. Jurriaan Dijkman Tel: 01478 612183, 07554 434215 ', 'http://www.britgo.org/node/3231', 57.4044894000000028, -6.19876779999999972, NULL, NULL, 21);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1332, 'St Albans', 'Wednesday 20:00 until pub closing ', 'AL1 1RT The Garibaldi, 61 Albert Street ', NULL, 'Secretary: Brian Ellis 01727 872575, Mike Cockburn 01727 834035 ', 'http://www.britgo.org/node/3233', 51.7500809000000004, -0.336813799999999997, NULL, NULL, 21);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1334, 'Swansea', 'By arrangement ', 'SA1 4JJ The Mill Pub, 75 Brynymor Road ', NULL, 'Dylan Carter ', 'http://www.britgo.org/node/3244', 51.6152446999999981, -3.9576636999999999, NULL, NULL, 21);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1335, 'Swindon', 'Wednesday 19:30 ', 'SN5 8LY Windmill Pub, Freshbrook Village Centre, Worsley Road ', NULL, 'David King, 21 Windsor Rd, Swindon Tel: 01793 521625 ', 'http://www.britgo.org/node/3241', 51.5501343099999971, -1.8349258799999999, NULL, NULL, 21);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1336, 'Swindon', 'Sunday evening ', 'SN1 3JS The Beehive, Prospect Hill ', NULL, 'David King, 21 Windsor Rd, Swindon Tel: 01793 521625 ', 'http://www.britgo.org/node/3242', 51.5565506239890965, -1.78095942978267008, NULL, NULL, 21);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1337, 'Teesside', 'Meets by arrangement ', '', NULL, 'Matthew Holton ', 'http://www.britgo.org/node/3212', 54.5645799999999994, -1.27638999999999991, NULL, NULL, 21);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1338, 'Tonbridge', 'Tuesday 19:30 ', 'TN9 1XJ 4 Ives Road ', NULL, 'Michael Pickles ', 'http://www.britgo.org/node/5190', 51.1950399999999988, 0.258392100000000013, NULL, NULL, 21);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1339, 'Warwick University', 'Wednesday 17:00-20:00 during University term ', 'CV4 7AL Room B2.03 on campus (see website for directions) ', NULL, 'Philip Leung ', 'http://www.britgo.org/node/3238', 52.3787167999999994, -1.56033310000000003, NULL, NULL, 21);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1340, 'West Cornwall', 'Thursday 20:00 ', 'TR12 7AD John Culmer''s house, Rose-in-Vale, Gweek, Helston  ', NULL, 'John Culmer Tel: 01326 573167 ', 'http://www.britgo.org/node/3239', 50.1019853000000026, -5.21861448917603976, NULL, NULL, 21);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1341, 'Winchester', 'Wednesday 19:30 ', 'SO23 9NQ The Black Boy Public House, 1 Wharf Hill, Bar End  ', NULL, 'Mr John Tilley, The Old Cottage, Micheldever, Winchester, Hampshire SO21 3DF Tel: 07824-163776 ', 'http://www.britgo.org/node/3129', 51.0578146000000004, -1.30736000000000008, NULL, NULL, 21);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1342, 'Yeovil', 'Thursday 19:45 ', 'BA22 8TX Mason''s Arms, 41 Lower Odcombe, Odcombe ', NULL, 'Julian Davies Tel: 01935 423046 ', 'http://www.britgo.org/node/3131', 50.9387108999999967, -2.70046130000000018, NULL, NULL, 21);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1343, 'York', 'Tuesdays 19:30 check on Twitter @yorkgoclub ', 'YO1 7HU Moroccan Room, El Piano (www.el-piano.com), 15 - 17 Grape Lane, York  ', NULL, 'Chris Maughan ', 'http://www.britgo.org/node/3135', 53.9606907000000007, -1.08221940000000005, NULL, NULL, 21);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1344, 'York University', 'Tuesday 18.00 - 21.00 ', 'YO10 5DD V Bar, Vanburgh College, University of York, Heslington ', NULL, 'Leonardo Sandoval ', 'https://yorkgosociety.wordpress.com/', 53.9485036000000022, -1.05348770000000003, NULL, NULL, 21);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1345, 'Twin Cities Go Club (Monday)', 'Mondays, 18:00-23:00', 'Bob''s Java Hut, 2651 Lyndale Ave S, Minneapolis, MN 55408', NULL, '612-871-4485', '', 44.9521573692219008, -93.2877659797668031, 1, 8, 28);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1346, 'Twin Cities Go Club (Thursday)', 'Thursdays 18:30-22:00', 'Hard Times Cafe, 1821 Riverside Avenue, Minneapolis, MN 55454-1034', NULL, '', '', 44.9694055383289992, -93.2461702823639058, 1, 8, 28);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1347, 'Twin Cities Go Club (Saturday)', 'Saturdays, 13:00-17:00', 'Coffee Bene, 53 Cleveland Avenue South, Saint Paul, MN 55105', NULL, '651-698-2266', '', 44.9397114784311, -93.1877517700195028, 1, 8, 28);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1348, 'Harridan Go Club (unofficial)', '', '', NULL, '', '', 41.921474836233898, -87.7178800106048016, 1, 7, 28);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1349, 'Evanston Go club', '', '', NULL, '', '', 42.0487986889771008, -87.6820564270019958, 1, 8, 28);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1350, 'Tampa Go Club', 'Saturdays', '', NULL, '', 'https://www.facebook.com/tampagoclub/ - http://www.meetup.com/Tampa-Bay-Go-Baduk-Players/ ', 28.052590823300001, -82.5732421875, 1, 8, 28);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1351, 'Schlow Library Go Club', 'every Saturday 14:00', 'Musser Room (we share with the Chess Club)', NULL, 'schlowgo@gmail.com', '', 40.7933274654999991, -77.8597855568000057, 1, 8, 28);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1352, 'Go Medellin', 'Domingos a partir de las 14:00', 'Carrera 49 Nº 58-44, Barrio Prado Centro', NULL, 'Juan Carlos Pachó', 'https://www.facebook.com/Asociación-Colombiana-de-Go-266936886710738/', 6.25571153214506026, -75.5630743503570983, 1, 8, 29);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1353, 'Go Bogota', 'Sábados tarde', 'Calle 106, número 13-33', NULL, 'Federico Pareja', 'https://www.facebook.com/Asociación-Colombiana-de-Go-266936886710738/', 4.68897699775000021, -74.0435063838999952, 1, 8, 29);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1354, 'Bermuda Go Society', '', '', NULL, '', 'https://www.facebook.com/BermudaGo', 32.2931208778791969, -64.7829490900039957, 2, 7, 21);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1355, 'Club de go Malvarrosa', 'los miércoles de 18.00 a 21.00', '', NULL, 'Adela Ibáñez +34 656 48 11 27', 'https://www.facebook.com/clubdegovalencia/?fref=ts', 39.471450260277301, -0.376625061035155972, 1, 8, 18);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1356, 'ЗВЕЗДА', 'Вторник с 19:00\nСуббота с 14:00', 'в кафе Укроп, 7-я линия В.О., д. 30\nВХОД СВОБОДНЫЙ', NULL, '', '', 59.9405169002000022, 30.2812600136000007, 1, 8, 26);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1357, 'Uppsala go-klubb', 'på tisdagar', 'kl. 19 i Ekonomikum (f.d. Humanistcentrum) i det allmänna utrymmet vid huvudentrén ("lokstallarna"), på Kyrkogårdsgatan', NULL, 'uppsalago@gmail.com', 'https://www.facebook.com/groups/8126794587/', 59.8416577727999979, 17.6482862233999995, 1, 8, 30);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1358, 'Asociatia Confucius Go Club Sibiu', 'every Thursday at 5 pm', '', NULL, '', '', 45.7907338983941017, 24.1466081142425999, 1, 8, 31);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1359, 'Nakade Go Club', 'every 2nd monday of a month 18:00 - 21:00', 'Mommsen Eck', NULL, 'Pandau Ting: pandau@nakade.de; Maurice Wohabi: mo@nakade.de', '', 52.5034272711000014, 13.3081904053999995, 1, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1360, '济南市', '', '', NULL, '', '', 36.671605009611703, 117.127895446611006, 1, 8, 32);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1361, 'Клуб НАН', 'вторники с 19.00 до 21.30 - воскресенья с 16.00 до 21.30', 'в "Корейском центре"', NULL, 'Саша Ким http://vk.com/id16793582 - телефон 89218682591', '', 59.9501579078195022, 30.2986112236977014, 1, 8, 26);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1362, 'Canbaduk', 'los jueves a las 19:00h', 'en el Centro Cívico Callealtero', NULL, '', 'http://canbaduk.wordpress.com', 43.458113592385601, -3.81771683692931996, 1, 8, 18);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (1118, 'Dresden', 'Mi 18-22', 'Freiberger Str. 31 im Eigenbetrieb Sportstätten, 4. Etage, Konferenzraum.', '01067', 'Horst Hübner, 0351-4712051', 'http://www.horst-huebner.de', 51.0621274499999984, 13.7222126691999993, 1, 8, 17);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (870, 'Reims No Dan', 'Tous les mardi à partir de 19h', 'Bar le kilberry 182 rue de Vesle, 51100 Reims', '', '', 'http://www.kilberry.fr/', 49.2511861999999994, 4.02233329999999967, 1, 8, 19);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (976, 'Cape Town', 'Tuesday evenings from 19h00', 'The previous venue has closed: Obz Café and "That Place" are possible new venues.', '', '', 'http://www.sagoclubs.co.za/cape-town-club/', -33.9386959385999987, 18.4688758849999992, NULL, 8, 22);
INSERT INTO goclubdb_club (id, name, meettime, meetplace, postcode, contact, website, lat, lon, clubstatus_id, clubtype_id, layer_id) VALUES (977, 'Durban Go club', 'Start 18h30 on Tuesdays', '(info date: May 2006) Peter Charter is at work resuscitating the Durban Go club.  Meetings: at the Steers on North Beach, on Tuesdays.', '', 'Peter Charter (cellphone: 082 900 1496) or Tony Clulow (home phone: 031 702 1749).', '', -29.8498474346999991, 31.0382330418000016, 2, 8, 22);


--
-- Name: goclubdb_club_id_seq; Type: SEQUENCE SET; Schema: public; Owner: david
--

SELECT pg_catalog.setval('goclubdb_club_id_seq', 1, true);


--
-- Data for Name: goclubdb_clubstatus; Type: TABLE DATA; Schema: public; Owner: david
--

INSERT INTO goclubdb_clubstatus (id, name, description, iconclass) VALUES (1, 'active', 'Currently active club', NULL);
INSERT INTO goclubdb_clubstatus (id, name, description, iconclass) VALUES (2, 'inactive', 'Inactive club', 'Ball');


--
-- Name: goclubdb_clubstatus_id_seq; Type: SEQUENCE SET; Schema: public; Owner: david
--

SELECT pg_catalog.setval('goclubdb_clubstatus_id_seq', 1, false);


--
-- Data for Name: goclubdb_clubtype; Type: TABLE DATA; Schema: public; Owner: david
--

INSERT INTO goclubdb_clubtype (id, name, description, iconurl) VALUES (7, 'individual', 'Individual offering games', '/uploads/pictogram/pitch-24.png');
INSERT INTO goclubdb_clubtype (id, name, description, iconurl) VALUES (8, 'club', 'Regular club meeting', NULL);


--
-- Name: goclubdb_clubtype_id_seq; Type: SEQUENCE SET; Schema: public; Owner: david
--

SELECT pg_catalog.setval('goclubdb_clubtype_id_seq', 1, false);


--
-- Data for Name: goclubdb_layer; Type: TABLE DATA; Schema: public; Owner: david
--

INSERT INTO goclubdb_layer (id, name, description, website, color) VALUES (17, 'DE', 'Deutscher Go-Bund', 'http://dgob.de/', 'Yellow');
INSERT INTO goclubdb_layer (id, name, description, website, color) VALUES (18, 'ES', 'Asociación Española de GO (AEGO)', 'http://aego.biz/', 'Gold');
INSERT INTO goclubdb_layer (id, name, description, website, color) VALUES (19, 'FR', 'La Fédération Française de Go', 'http://ffg.jeudego.org/', 'Blue');
INSERT INTO goclubdb_layer (id, name, description, website, color) VALUES (20, 'NL', 'Nederlandse Go-Bond', 'https://gobond.nl/verenigingen', 'Orange');
INSERT INTO goclubdb_layer (id, name, description, website, color) VALUES (21, 'GB', 'British Go Association', 'http://www.britgo.org/clubs/list', 'Red');
INSERT INTO goclubdb_layer (id, name, description, website, color) VALUES (22, 'ZA', 'South African Go Association', 'http://www.sagoclubs.co.za/', 'DarkGreen');
INSERT INTO goclubdb_layer (id, name, description, website, color) VALUES (23, 'IT', 'Federazione Italiana Gioco Go', 'http://www.figg.org/index.php?option=com_content&view=article&id=17&Itemid=132&lang=it', 'green');
INSERT INTO goclubdb_layer (id, name, description, website, color) VALUES (24, 'CH', 'Schweizer Go Verband - Fédération Suisse de Go - Federazione Svizzera di Go', 'http://www.swissgo.org/', 'red');
INSERT INTO goclubdb_layer (id, name, description, website, color) VALUES (25, 'CY', 'Cyprus Go Association', 'http://www.cyprus-go.org/', '#d57800');
INSERT INTO goclubdb_layer (id, name, description, website, color) VALUES (26, 'RU', 'Российская федерация Го', 'http://gofederation.ru/', 'red');
INSERT INTO goclubdb_layer (id, name, description, website, color) VALUES (27, 'PT', 'Associação Portuguesa de Go', 'http://www.go-portugal.org/', '#006600');
INSERT INTO goclubdb_layer (id, name, description, website, color) VALUES (28, 'US', 'American Go Association', 'http://www.usgo.org/', '#3C3B6E');
INSERT INTO goclubdb_layer (id, name, description, website, color) VALUES (29, 'CO', 'Asociación Colombiana de Go', 'https://www.facebook.com/Asociaci%C3%B3n-Colombiana-de-Go-266936886710738/', '#FCD116');
INSERT INTO goclubdb_layer (id, name, description, website, color) VALUES (30, 'SE', 'Svenska Goförbundet', 'http://goforbundet.se', '#006aa7');
INSERT INTO goclubdb_layer (id, name, description, website, color) VALUES (31, 'RO', 'Federatia Romana de Go', 'http://frgo.ro/', '#FCD116');
INSERT INTO goclubdb_layer (id, name, description, website, color) VALUES (32, 'CN', '中国围棋协会', 'http://www.weiqi.org.cn/', '#FF0000');


--
-- Name: goclubdb_layer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: david
--

SELECT pg_catalog.setval('goclubdb_layer_id_seq', 1, false);


--
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: david; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions_group_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: david; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: david; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: david; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission_content_type_id_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: david; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: david; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: david; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_user_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: david; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: david; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: david; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_user_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: david; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: david; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_content_type_app_label_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: david; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: david; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: david; Tablespace: 
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: david; Tablespace: 
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: goclubdb_club_pkey; Type: CONSTRAINT; Schema: public; Owner: david; Tablespace: 
--

ALTER TABLE ONLY goclubdb_club
    ADD CONSTRAINT goclubdb_club_pkey PRIMARY KEY (id);


--
-- Name: goclubdb_clubstatus_pkey; Type: CONSTRAINT; Schema: public; Owner: david; Tablespace: 
--

ALTER TABLE ONLY goclubdb_clubstatus
    ADD CONSTRAINT goclubdb_clubstatus_pkey PRIMARY KEY (id);


--
-- Name: goclubdb_clubtype_pkey; Type: CONSTRAINT; Schema: public; Owner: david; Tablespace: 
--

ALTER TABLE ONLY goclubdb_clubtype
    ADD CONSTRAINT goclubdb_clubtype_pkey PRIMARY KEY (id);


--
-- Name: goclubdb_layer_pkey; Type: CONSTRAINT; Schema: public; Owner: david; Tablespace: 
--

ALTER TABLE ONLY goclubdb_layer
    ADD CONSTRAINT goclubdb_layer_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: david; Tablespace: 
--

CREATE INDEX auth_group_name_a6ea08ec_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_0e939a4f; Type: INDEX; Schema: public; Owner: david; Tablespace: 
--

CREATE INDEX auth_group_permissions_0e939a4f ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_8373b171; Type: INDEX; Schema: public; Owner: david; Tablespace: 
--

CREATE INDEX auth_group_permissions_8373b171 ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_417f1b1c; Type: INDEX; Schema: public; Owner: david; Tablespace: 
--

CREATE INDEX auth_permission_417f1b1c ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_0e939a4f; Type: INDEX; Schema: public; Owner: david; Tablespace: 
--

CREATE INDEX auth_user_groups_0e939a4f ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_e8701ad4; Type: INDEX; Schema: public; Owner: david; Tablespace: 
--

CREATE INDEX auth_user_groups_e8701ad4 ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_8373b171; Type: INDEX; Schema: public; Owner: david; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_8373b171 ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_e8701ad4; Type: INDEX; Schema: public; Owner: david; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_e8701ad4 ON auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: david; Tablespace: 
--

CREATE INDEX auth_user_username_6821ab7c_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_session_de54fa62; Type: INDEX; Schema: public; Owner: david; Tablespace: 
--

CREATE INDEX django_session_de54fa62 ON django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: david; Tablespace: 
--

CREATE INDEX django_session_session_key_c0390e0f_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: goclubdb_club_63c72412; Type: INDEX; Schema: public; Owner: david; Tablespace: 
--

CREATE INDEX goclubdb_club_63c72412 ON goclubdb_club USING btree (clubtype_id);


--
-- Name: goclubdb_club_7a39a38c; Type: INDEX; Schema: public; Owner: david; Tablespace: 
--

CREATE INDEX goclubdb_club_7a39a38c ON goclubdb_club USING btree (layer_id);


--
-- Name: goclubdb_club_e96e7077; Type: INDEX; Schema: public; Owner: david; Tablespace: 
--

CREATE INDEX goclubdb_club_e96e7077 ON goclubdb_club USING btree (clubstatus_id);


--
-- Name: auth_group_permiss_permission_id_84c5c92e_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: david
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permiss_permission_id_84c5c92e_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: david
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permiss_content_type_id_2f476e4b_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: david
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permiss_content_type_id_2f476e4b_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: david
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: david
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_per_permission_id_1fbb5f2c_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: david
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_per_permission_id_1fbb5f2c_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: david
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: goclubdb_club_clubstatus_id_2d4c8137_fk_goclubdb_clubstatus_id; Type: FK CONSTRAINT; Schema: public; Owner: david
--

ALTER TABLE ONLY goclubdb_club
    ADD CONSTRAINT goclubdb_club_clubstatus_id_2d4c8137_fk_goclubdb_clubstatus_id FOREIGN KEY (clubstatus_id) REFERENCES goclubdb_clubstatus(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: goclubdb_club_clubtype_id_13f0872d_fk_goclubdb_clubtype_id; Type: FK CONSTRAINT; Schema: public; Owner: david
--

ALTER TABLE ONLY goclubdb_club
    ADD CONSTRAINT goclubdb_club_clubtype_id_13f0872d_fk_goclubdb_clubtype_id FOREIGN KEY (clubtype_id) REFERENCES goclubdb_clubtype(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: goclubdb_club_layer_id_8f55ab1f_fk_goclubdb_layer_id; Type: FK CONSTRAINT; Schema: public; Owner: david
--

ALTER TABLE ONLY goclubdb_club
    ADD CONSTRAINT goclubdb_club_layer_id_8f55ab1f_fk_goclubdb_layer_id FOREIGN KEY (layer_id) REFERENCES goclubdb_layer(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

