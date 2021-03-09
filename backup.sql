--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2 (Debian 13.2-1.pgdg100+1)
-- Dumped by pg_dump version 13.2 (Debian 13.2-1.pgdg100+1)

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
-- Name: CryptoCaller; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA "CryptoCaller";


ALTER SCHEMA "CryptoCaller" OWNER TO postgres;

--
-- Name: adminpack; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION adminpack; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: article_fact; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.article_fact (
    dateid integer,
    timeid integer,
    title character varying(500),
    url character varying(100),
    comp_sentiment numeric(5,4)
);


ALTER TABLE public.article_fact OWNER TO postgres;

--
-- Name: articles_fact; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.articles_fact (
    id integer NOT NULL,
    dateid integer,
    timeid integer,
    title character varying(500),
    url character varying(100),
    comp_sentiment numeric(5,4)
);


ALTER TABLE public.articles_fact OWNER TO postgres;

--
-- Name: articles_fact_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.articles_fact_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.articles_fact_id_seq OWNER TO postgres;

--
-- Name: articles_fact_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.articles_fact_id_seq OWNED BY public.articles_fact.id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgres;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: date_dim; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.date_dim (
    dateid integer NOT NULL,
    full_date character varying(20),
    dd integer,
    mm integer,
    yy integer
);


ALTER TABLE public.date_dim OWNER TO postgres;

--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: ma_sent_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ma_sent_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ma_sent_seq OWNER TO postgres;

--
-- Name: ma_sentiment_dim; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ma_sentiment_dim (
    dateid integer,
    timeid integer,
    trading_symbol character varying(10),
    comp_sentiment numeric(5,4),
    sma numeric(5,4),
    ema numeric(5,4),
    id integer
);


ALTER TABLE public.ma_sentiment_dim OWNER TO postgres;

--
-- Name: ma_temp_dim; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ma_temp_dim (
    dateid integer,
    timeid integer,
    trading_symbol character varying(10),
    comp_sentiment numeric(5,4),
    sma numeric(5,4),
    ema numeric(5,4),
    id integer
);


ALTER TABLE public.ma_temp_dim OWNER TO postgres;

--
-- Name: match_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.match_id_seq
    START WITH 5711
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.match_id_seq OWNER TO postgres;

--
-- Name: newsApp_article; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."newsApp_article" (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    description character varying(500) NOT NULL,
    pic character varying(255) NOT NULL,
    url character varying(255) NOT NULL,
    date_posted timestamp with time zone NOT NULL,
    outlet character varying(255) NOT NULL
);


ALTER TABLE public."newsApp_article" OWNER TO postgres;

--
-- Name: newsApp_article_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."newsApp_article_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."newsApp_article_id_seq" OWNER TO postgres;

--
-- Name: newsApp_article_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."newsApp_article_id_seq" OWNED BY public."newsApp_article".id;


--
-- Name: newsApp_comments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."newsApp_comments" (
    id integer NOT NULL,
    comment character varying(255) NOT NULL,
    comment_date timestamp with time zone NOT NULL,
    article_id integer NOT NULL,
    username_id integer NOT NULL
);


ALTER TABLE public."newsApp_comments" OWNER TO postgres;

--
-- Name: newsApp_comments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."newsApp_comments_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."newsApp_comments_id_seq" OWNER TO postgres;

--
-- Name: newsApp_comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."newsApp_comments_id_seq" OWNED BY public."newsApp_comments".id;


--
-- Name: newsApp_like; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."newsApp_like" (
    id integer NOT NULL,
    article_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public."newsApp_like" OWNER TO postgres;

--
-- Name: newsApp_like_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."newsApp_like_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."newsApp_like_id_seq" OWNER TO postgres;

--
-- Name: newsApp_like_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."newsApp_like_id_seq" OWNED BY public."newsApp_like".id;


--
-- Name: polls_choice; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.polls_choice (
    id integer NOT NULL,
    choice_text character varying(200) NOT NULL,
    votes integer NOT NULL,
    question_id integer NOT NULL
);


ALTER TABLE public.polls_choice OWNER TO postgres;

--
-- Name: polls_choice_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.polls_choice_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.polls_choice_id_seq OWNER TO postgres;

--
-- Name: polls_choice_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.polls_choice_id_seq OWNED BY public.polls_choice.id;


--
-- Name: polls_profile; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.polls_profile (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.polls_profile OWNER TO postgres;

--
-- Name: polls_profile_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.polls_profile_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.polls_profile_id_seq OWNER TO postgres;

--
-- Name: polls_profile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.polls_profile_id_seq OWNED BY public.polls_profile.id;


--
-- Name: polls_question; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.polls_question (
    id integer NOT NULL,
    question_text character varying(200) NOT NULL,
    pub_date timestamp with time zone NOT NULL
);


ALTER TABLE public.polls_question OWNER TO postgres;

--
-- Name: polls_question_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.polls_question_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.polls_question_id_seq OWNER TO postgres;

--
-- Name: polls_question_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.polls_question_id_seq OWNED BY public.polls_question.id;


--
-- Name: polls_sentiment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.polls_sentiment (
    id integer NOT NULL,
    dateid integer NOT NULL,
    timeid integer NOT NULL,
    trading_symbol character varying(10) NOT NULL,
    comp_sentiment double precision NOT NULL
);


ALTER TABLE public.polls_sentiment OWNER TO postgres;

--
-- Name: polls_sentiment_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.polls_sentiment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.polls_sentiment_id_seq OWNER TO postgres;

--
-- Name: polls_sentiment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.polls_sentiment_id_seq OWNED BY public.polls_sentiment.id;


--
-- Name: sentiment_dim; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sentiment_dim (
    dateid integer,
    timeid integer,
    trading_symbol character varying(10),
    comp_sentiment numeric(5,4)
);


ALTER TABLE public.sentiment_dim OWNER TO postgres;

--
-- Name: sent_fact; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.sent_fact AS
 SELECT sentiment_dim.dateid,
    sentiment_dim.timeid,
    sentiment_dim.trading_symbol,
    (avg(sentiment_dim.comp_sentiment))::numeric(5,4) AS avg
   FROM public.sentiment_dim
  GROUP BY sentiment_dim.timeid, sentiment_dim.dateid, sentiment_dim.trading_symbol;


ALTER TABLE public.sent_fact OWNER TO postgres;

--
-- Name: time_dim; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.time_dim (
    timeid integer NOT NULL,
    "time" character varying,
    hour integer,
    minute integer
);


ALTER TABLE public.time_dim OWNER TO postgres;

--
-- Name: sent_view; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.sent_view AS
 SELECT ma_sentiment_dim.id AS sentid,
    (((to_date((date_dim.full_date)::text, 'DD/MM/YYY'::text) || ' '::text) || (time_dim."time")::text))::timestamp without time zone AS "timestamp",
    ma_sentiment_dim.sma AS comp_sentiment
   FROM ((public.ma_sentiment_dim
     JOIN public.date_dim ON ((date_dim.dateid = ma_sentiment_dim.dateid)))
     JOIN public.time_dim ON ((time_dim.timeid = ma_sentiment_dim.timeid)));


ALTER TABLE public.sent_view OWNER TO postgres;

--
-- Name: sentiment_fact; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sentiment_fact (
    id integer NOT NULL,
    dateid integer,
    timeid integer,
    trading_symbol character varying(10),
    comp_sentiment numeric(5,4)
);


ALTER TABLE public.sentiment_fact OWNER TO postgres;

--
-- Name: sentiment_fact_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sentiment_fact_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sentiment_fact_id_seq OWNER TO postgres;

--
-- Name: sentiment_fact_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sentiment_fact_id_seq OWNED BY public.sentiment_fact.id;


--
-- Name: temp_sent_fact; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.temp_sent_fact (
    dateid integer,
    timeid integer,
    trading_symbol character varying(10),
    avg numeric(5,4)
);


ALTER TABLE public.temp_sent_fact OWNER TO postgres;

--
-- Name: articles_fact id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.articles_fact ALTER COLUMN id SET DEFAULT nextval('public.articles_fact_id_seq'::regclass);


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: newsApp_article id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."newsApp_article" ALTER COLUMN id SET DEFAULT nextval('public."newsApp_article_id_seq"'::regclass);


--
-- Name: newsApp_comments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."newsApp_comments" ALTER COLUMN id SET DEFAULT nextval('public."newsApp_comments_id_seq"'::regclass);


--
-- Name: newsApp_like id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."newsApp_like" ALTER COLUMN id SET DEFAULT nextval('public."newsApp_like_id_seq"'::regclass);


--
-- Name: polls_choice id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.polls_choice ALTER COLUMN id SET DEFAULT nextval('public.polls_choice_id_seq'::regclass);


--
-- Name: polls_profile id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.polls_profile ALTER COLUMN id SET DEFAULT nextval('public.polls_profile_id_seq'::regclass);


--
-- Name: polls_question id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.polls_question ALTER COLUMN id SET DEFAULT nextval('public.polls_question_id_seq'::regclass);


--
-- Name: polls_sentiment id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.polls_sentiment ALTER COLUMN id SET DEFAULT nextval('public.polls_sentiment_id_seq'::regclass);


--
-- Name: sentiment_fact id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sentiment_fact ALTER COLUMN id SET DEFAULT nextval('public.sentiment_fact_id_seq'::regclass);


--
-- Data for Name: article_fact; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.article_fact (dateid, timeid, title, url, comp_sentiment) FROM stdin;
25	747	Big Investors Stacked Up Ether as Price Rose to Record High	null	0.9818
25	927	Bitcoin price rises as second biggest cryptocurrency ether hits all time high	null	0.9682
25	747	ETH breaks out vs Bitcoin What s next for Ethereum after 100 gain in January	null	0.9818
25	927	Grayscale donates 1M to Coin Center pledges up to 1M more in matched contributions	null	0.7906
25	807	Here s Why Ethereum Could Beat Bitcoin As Best Asset Of 2021	null	0.7717
25	1227	All risk no gain The vague definition of stablecoins is causing problems	null	0.9705
25	927	First Mover Bitcoin Flushes Weak Hands as Ethereum Hits New All Time High	null	0.9590
25	747	Big Investors Stacked up Ether as Price Rose to Record High CoinDesk	null	0.9818
25	1047	I ve been convinced to buy Bitcoin the odds are in my favour	null	0.6808
25	987	Crypto Markets Show More Signs of Excess Amid Bitcoin Rebound	null	0.9818
25	1347	Crypto Hedge Funds Underperformed Bitcoin During Rally Last Year	null	0.9682
25	1167	Marathon Patent Is Not a Wise Play Even for Crypto Bulls	null	0.8862
25	507	FOREX Dollar gains as stimulus nerves nudge investors to safety	null	0.9840
25	1347	45B DeFi market cap and soaring TVL suggest the best is yet to come	null	0.9986
25	147	Warning Signal the messaging app s new features are causing internal turmoil	null	-0.5994
25	867	Two Arrested for Orchestrating Escape of Wirecard Exec Accused of Fraud CoinDesk	null	-0.8126
25	387	FOREX Dollar gains as stimulus nerves nudge investors to safety By Reuters	null	0.9840
25	1287	Substack Newsletters Are Being Used to Spread Crypto Scams	null	-0.5859
25	627	Global Markets Start Week On Positive Note Ethereum Rally In Focus	null	0.9766
25	987	Crypto Markets Show More Signs of Excess Amid Bitcoin Rebound	null	0.9818
26	1372	Is GBTC Stock A Good Buy After Bitcoin Tumbles From Highs	null	-0.9968
26	1432	Bitcoin Warren Buffett won t touch it and here s why	null	0.5719
26	1252	Bitcoin Falls as Miners Sell Institutions Watch Yellen	null	-0.9993
26	1372	DeFi tokens bag double digit gains as bears pin Bitcoin price below 33K	null	0.9325
26	1312	How scammers siphoned 36B in fraudulent unemployment payments from US	null	-0.7269
26	1432	SkyBridge s Anthony Scaramucci Talks Up New Bitcoin Fund Crypto s Exponential Liftoff	null	0.7906
26	1432	SkyBridge s Scaramucci Talks Up New Bitcoin Fund Crypto s Exponential Liftoff	null	0.7906
26	428	Signal is drama free for now but it should prepare for the worst	null	-0.9944
26	1185	Maybe Having A Crypto Expert At SEC s Helm Isn t So Great For Crypto Company Being Sued By SEC	null	0.6590
26	1372	Is GBTC Stock A Good Buy After Bitcoin Tumbles From Highs	null	-0.9968
26	1432	Bitcoin Warren Buffett won t touch it and here s why	null	0.5719
26	1252	Bitcoin Falls as Miners Sell Institutions Watch Yellen	null	-0.9993
26	1372	DeFi tokens bag double digit gains as bears pin Bitcoin price below 33K	null	0.9325
26	1312	How scammers siphoned 36B in fraudulent unemployment payments from US	null	-0.7269
26	1432	SkyBridge s Anthony Scaramucci Talks Up New Bitcoin Fund Crypto s Exponential Liftoff	null	0.7906
26	1432	SkyBridge s Scaramucci Talks Up New Bitcoin Fund Crypto s Exponential Liftoff	null	0.7906
26	428	Signal is drama free for now but it should prepare for the worst	null	-0.9944
26	1185	Maybe Having A Crypto Expert At SEC s Helm Isn t So Great For Crypto Company Being Sued By SEC	null	0.6590
26	147	Bearish Divergence Hints At First Major Chainlink Corrective Phase	null	-0.9970
26	1347	Harvard Yale Brown Endowments Have Been Buying Bitcoin for at Least a Year Sources	null	0.9325
26	1167	The Soul Killing Wallet Emptying Struggle to Buy a Video Card During a Pandemic	null	-0.8074
26	1407	More Institutional Investors Are Buying Ether Seeing It as a Store of Value CoinDesk	null	0.9468
26	387	FOREX Dollar gains as stimulus nerves nudge investors to safety	null	0.9840
27	652	American Cancer Society Launches 1M Cryptocurrency Fund	null	-0.6597
27	1168	Could meme stocks like GameStop kill bitcoin s rise	null	0.9771
27	1012	Bitcoin Bounces Off 30 000 as Record Momentum Fades	null	0.9818
27	652	American Cancer Society Launches 1M Cryptocurrency Fund CoinDesk	null	-0.6597
27	652	3 Unstoppable Stocks That ll Crush Bitcoin in 2021 The Motley Fool	null	-0.6486
27	892	American Cancer Society To Use Cryptocurrency To Fight Cancer	null	-0.9081
27	532	US Man Sentenced to Prison for Embezzling 20M of ICO Investors Funds CoinDesk	null	-0.5267
27	952	Silver Lake Co Founder Tells Davos Cash Is Used Far More in Crime Than Bitcoin	null	-0.5829
27	292	Litecoin Falls 10 In Rout By Investing com	null	-0.9993
27	292	Litecoin Falls 10 20 In Selloff By Investing com	null	-0.9997
27	292	Cardano Falls 10 17 In Selloff By Investing com	null	-0.9997
27	292	Litecoin Falls 10 20 In Rout	null	-0.9993
27	292	Cardano Falls 10 17 In Rout	null	-0.9993
27	532	US Man Sentenced to Prison for Embezzling 20M of ICO Investors Funds	null	-0.5267
27	1072	Polkadot Price Prediction DOT poised to rise higher as ecosystem continues to grow rapidly	null	0.9834
27	952	Stock trading platforms suffer tech problems amid market mayhem	null	-0.7351
27	292	Shorts Now Paying the Longs Funding Rates on BTC ETH Perps Going Negative Across the Board	null	-0.5719
27	592	Scams are driving South African authorities to regulate crypto trading	null	-0.5859
27	952	Big Name Ivy League Endowments Are Now Buying Bitcoin ETF Trends	null	0.9325
27	892	TronGo s Launch A New Era of Decentralized Reward Systems Begins	null	0.5719
27	892	Scaramucci Says the GameStop Saga Is Positive for Bitcoin	null	0.5574
27	712	Lawsuit Against Israeli Crypto Entrepreneur Moshe Hegog Fails in US Court CoinDesk	null	-0.5719
27	712	Opening Bell Earnings Virus Concerns Spur U S Tech Shares Gold Slumps Investing com CA	null	-0.9978
27	652	3 Unstoppable Stocks at All Time Highs That You Can Still Buy The Motley Fool	null	-0.5719
27	292	Crypterium to crowdfund on Seedrs monthly profits rise 10X during Coronavirus pandemic By BTC Peers	null	0.9847
27	352	GameStop Is Rage Against the Financial Machine	null	-0.5574
27	292	Scaramucci Says the GameStop Phenomenon Is Positive for Bitcoin	null	0.5574
27	1072	National Crime Agency warns novice and veteran traders alike of rise in clone company scams ZDNet	null	0.9652
27	952	Silver Lake Co Founder Tells Davos Cash Is Used Far More in Crime Than Bitcoin CoinDesk	null	-0.5829
27	712	Opening Bell Earnings Virus Concerns Spur U S Tech Shares Gold Slumps Investing com	null	-0.9978
27	292	Bitcoin Nearing 50 Day Moving Average Whales Are Back to Buying	null	0.9325
27	1165	Could meme stocks like GameStop kill bitcoin s rise	null	0.9771
27	676	American Cancer Society Launches 1M Cryptocurrency Fund	null	-0.6597
27	652	American Cancer Society Launches 1M Cryptocurrency Fund	null	-0.6597
27	1168	Could meme stocks like GameStop kill bitcoin s rise	null	0.9771
27	1012	Bitcoin Bounces Off 30 000 as Record Momentum Fades	null	0.9818
27	652	American Cancer Society Launches 1M Cryptocurrency Fund CoinDesk	null	-0.6597
27	652	3 Unstoppable Stocks That ll Crush Bitcoin in 2021 The Motley Fool	null	-0.6486
27	892	American Cancer Society To Use Cryptocurrency To Fight Cancer	null	-0.9081
27	532	US Man Sentenced to Prison for Embezzling 20M of ICO Investors Funds CoinDesk	null	-0.5267
27	952	Silver Lake Co Founder Tells Davos Cash Is Used Far More in Crime Than Bitcoin	null	-0.5829
27	292	Litecoin Falls 10 In Rout By Investing com	null	-0.9993
27	292	Litecoin Falls 10 20 In Selloff By Investing com	null	-0.9997
27	292	Cardano Falls 10 17 In Selloff By Investing com	null	-0.9997
27	292	Litecoin Falls 10 20 In Rout	null	-0.9993
27	292	Cardano Falls 10 17 In Rout	null	-0.9993
27	532	US Man Sentenced to Prison for Embezzling 20M of ICO Investors Funds	null	-0.5267
27	1072	Polkadot Price Prediction DOT poised to rise higher as ecosystem continues to grow rapidly	null	0.9834
27	952	Stock trading platforms suffer tech problems amid market mayhem	null	-0.7351
27	292	Shorts Now Paying the Longs Funding Rates on BTC ETH Perps Going Negative Across the Board	null	-0.5719
27	592	Scams are driving South African authorities to regulate crypto trading	null	-0.5859
27	952	Big Name Ivy League Endowments Are Now Buying Bitcoin ETF Trends	null	0.9325
27	892	TronGo s Launch A New Era of Decentralized Reward Systems Begins	null	0.5719
27	892	Scaramucci Says the GameStop Saga Is Positive for Bitcoin	null	0.5574
27	712	Lawsuit Against Israeli Crypto Entrepreneur Moshe Hegog Fails in US Court CoinDesk	null	-0.5719
27	712	Opening Bell Earnings Virus Concerns Spur U S Tech Shares Gold Slumps Investing com CA	null	-0.9978
27	652	3 Unstoppable Stocks at All Time Highs That You Can Still Buy The Motley Fool	null	-0.5719
27	292	Crypterium to crowdfund on Seedrs monthly profits rise 10X during Coronavirus pandemic By BTC Peers	null	0.9847
27	352	GameStop Is Rage Against the Financial Machine	null	-0.5574
27	292	Scaramucci Says the GameStop Phenomenon Is Positive for Bitcoin	null	0.5574
27	1072	National Crime Agency warns novice and veteran traders alike of rise in clone company scams ZDNet	null	0.9652
27	952	Silver Lake Co Founder Tells Davos Cash Is Used Far More in Crime Than Bitcoin CoinDesk	null	-0.5829
27	712	Opening Bell Earnings Virus Concerns Spur U S Tech Shares Gold Slumps Investing com	null	-0.9978
27	292	Bitcoin Nearing 50 Day Moving Average Whales Are Back to Buying	null	0.9325
27	1165	Could meme stocks like GameStop kill bitcoin s rise	null	0.9771
27	676	American Cancer Society Launches 1M Cryptocurrency Fund	null	-0.6597
27	1045	Bitcoin Bounces Off 30 000 as Record Momentum Fades	null	0.9818
27	685	American Cancer Society Launches 1M Cryptocurrency Fund	null	-0.6597
27	1165	Bitcoin s Best Days Lie Ahead	null	0.6369
27	685	3 Unstoppable Stocks That ll Crush Bitcoin in 2021 The Motley Fool	null	-0.6486
27	805	5 Hard to Believe Bitcoin Facts The Motley Fool	null	-0.5106
27	685	American Cancer Society Launches 1M Cryptocurrency Fund CoinDesk	null	-0.6597
27	925	American Cancer Society To Use Cryptocurrency To Fight Cancer	null	-0.9081
27	925	Bitcoin Bounces Off 30 000 as Record Momentum Fades	null	0.9818
27	1165	Reddit teams up with the Ethereum Foundation to bring the value and independence to millions of	null	0.8555
27	1405	Cybercops derail malware botnet FBI makes ransomware arrest	null	-0.5574
27	985	Bitcoin crashes below 30 000 as slump continues	null	-0.9993
27	1105	Polkadot Price Prediction DOT poised to rise higher as ecosystem continues to grow rapidly	null	0.9834
27	925	Silver Lake Co Founder Tells Davos Cash Is Used Far More in Crime Than Bitcoin	null	-0.5829
27	1405	Cybercops derail malware botnet FBI makes ransomware arrest Times Leader	null	-0.5574
27	925	Stock trading platforms suffer tech problems amid market mayhem	null	-0.7351
27	805	Cybercops derail malware botnet FBI makes ransomware arrest	null	-0.5574
27	805	Cybercops derail malware botnet FBI makes ransomware arrest	null	-0.5574
27	805	Cybercops derail malware botnet FBI makes ransomware arrest	null	-0.5574
27	805	Cybercops derail malware botnet FBI makes ransomware arrest	null	-0.5574
27	1405	3 reasons why Uniswap UNI token hit a new all time high above 15	null	0.9682
27	1225	International operation derails malware botnet FBI makes ransomware arrest	null	-0.5719
27	1285	Capitol riots Who has the FBI arrested so far	null	-0.7506
27	1225	Fed React Don t trigger a tantrum GameStop still rising Apple on deck Oil can t hold EIA gains	null	0.9781
27	1165	Could meme stocks like GameStop kill bitcoin s rise	null	0.9771
27	745	Bitcoin Briefly Dips Below 30K Dollar Bounces Ahead of Fed Reserve Rate Announcement	null	0.9818
27	1165	Bitcoin BTC Bulls Bid Support Refuse to Surrender	null	0.9382
27	1105	National Crime Agency warns novice and veteran traders alike of rise in clone company scams ZDNet	null	0.9652
27	1045	U S Opening Bell Earnings Virus Concerns Spur Tech Shares Gold Slumps Investing com UK	null	-0.9978
27	925	Silver Lake Co Founder Tells Davos Cash Is Used Far More in Crime Than Bitcoin CoinDesk	null	-0.5829
29	1264	What is Dogecoin and Why Are People Buying It	null	0.9325
27	745	Lawsuit Against Israeli Crypto Entrepreneur Moshe Hegog Fails in US Court CoinDesk	null	-0.5719
27	745	Opening Bell Earnings Virus Concerns Spur U S Tech Shares Gold Slumps Investing com CA	null	-0.9978
27	745	Opening Bell Earnings Virus Concerns Spur U S Tech Shares Gold Slumps Investing com	null	-0.9978
27	805	Cybercops derail malware botnet FBI makes ransomware arrest	null	-0.5574
27	1165	Could meme stocks like GameStop kill bitcoin s rise	null	0.9771
27	676	American Cancer Society Launches 1M Cryptocurrency Fund	null	-0.6597
27	557	US Man Sentenced to Prison for Embezzling 20M of ICO Investors Funds	null	-0.5267
27	1174	These are the best ways to invest 20 000	null	0.6369
27	1046	Bitcoin Bounces Off 30 000 as Record Momentum Fades	null	0.9818
27	686	American Cancer Society Launches 1M Cryptocurrency Fund	null	-0.6597
27	1166	Bitcoin s Best Days Lie Ahead	null	0.6369
27	686	3 Unstoppable Stocks That ll Crush Bitcoin in 2021 The Motley Fool	null	-0.6486
27	806	5 Hard to Believe Bitcoin Facts The Motley Fool	null	-0.5106
27	686	American Cancer Society Launches 1M Cryptocurrency Fund CoinDesk	null	-0.6597
27	926	American Cancer Society To Use Cryptocurrency To Fight Cancer	null	-0.9081
27	926	Bitcoin Bounces Off 30 000 as Record Momentum Fades	null	0.9818
27	1166	Reddit teams up with the Ethereum Foundation to bring the value and independence to millions of	null	0.8555
27	1406	Cybercops derail malware botnet FBI makes ransomware arrest	null	-0.5574
27	986	Bitcoin crashes below 30 000 as slump continues	null	-0.9993
27	1106	Polkadot Price Prediction DOT poised to rise higher as ecosystem continues to grow rapidly	null	0.9834
27	926	Silver Lake Co Founder Tells Davos Cash Is Used Far More in Crime Than Bitcoin	null	-0.5829
27	1406	Cybercops derail malware botnet FBI makes ransomware arrest Times Leader	null	-0.5574
27	926	Stock trading platforms suffer tech problems amid market mayhem	null	-0.7351
27	806	Cybercops derail malware botnet FBI makes ransomware arrest	null	-0.5574
27	806	Cybercops derail malware botnet FBI makes ransomware arrest	null	-0.5574
27	806	Cybercops derail malware botnet FBI makes ransomware arrest	null	-0.5574
27	806	Cybercops derail malware botnet FBI makes ransomware arrest	null	-0.5574
27	1406	3 reasons why Uniswap UNI token hit a new all time high above 15	null	0.9682
27	1226	International operation derails malware botnet FBI makes ransomware arrest	null	-0.5719
27	1286	Capitol riots Who has the FBI arrested so far	null	-0.7506
27	1226	Fed React Don t trigger a tantrum GameStop still rising Apple on deck Oil can t hold EIA gains	null	0.9781
27	1166	Could meme stocks like GameStop kill bitcoin s rise	null	0.9771
27	746	Bitcoin Briefly Dips Below 30K Dollar Bounces Ahead of Fed Reserve Rate Announcement	null	0.9818
27	1166	Bitcoin BTC Bulls Bid Support Refuse to Surrender	null	0.9382
27	1106	National Crime Agency warns novice and veteran traders alike of rise in clone company scams ZDNet	null	0.9652
27	1046	U S Opening Bell Earnings Virus Concerns Spur Tech Shares Gold Slumps Investing com UK	null	-0.9978
27	926	Silver Lake Co Founder Tells Davos Cash Is Used Far More in Crime Than Bitcoin CoinDesk	null	-0.5829
27	746	Lawsuit Against Israeli Crypto Entrepreneur Moshe Hegog Fails in US Court CoinDesk	null	-0.5719
27	746	Opening Bell Earnings Virus Concerns Spur U S Tech Shares Gold Slumps Investing com CA	null	-0.9978
27	746	Opening Bell Earnings Virus Concerns Spur U S Tech Shares Gold Slumps Investing com	null	-0.9978
27	806	Cybercops derail malware botnet FBI makes ransomware arrest	null	-0.5574
27	1165	Could meme stocks like GameStop kill bitcoin s rise	null	0.9771
27	676	American Cancer Society Launches 1M Cryptocurrency Fund	null	-0.6597
27	557	US Man Sentenced to Prison for Embezzling 20M of ICO Investors Funds	null	-0.5267
27	1174	These are the best ways to invest 20 000	null	0.6369
28	445	Reddit Ties Up With Ethereum Foundation To Hasten Bringing Community Points On Blockchain	null	0.7906
28	445	Reddit Ties Up With Ethereum Foundation To Hasten Bringing Community Points On Blockchain	null	0.7906
28	385	Cybercops derail malware botnet FBI makes ransomware arrest	null	-0.5574
28	265	Cybercops derail malware botnet FBI makes ransomware arrest	null	-0.5574
28	265	Cybercops derail malware botnet FBI makes ransomware arrest	null	-0.5574
28	265	Ethereum Price Forecast ETH on chain metrics remain strongly bullish upswing to 1 500 eyed	null	0.9971
28	505	The US Department of Justice unveils worldwide action against NetWalker ransomware seizes 450	null	0.5267
28	352	Dogecoin Shoots Up 62 As SatoshiStreetBets Looks To Emulate WallStreetBets Success With GameStop	null	0.8934
28	446	Reddit Ties Up With Ethereum Foundation To Hasten Bringing Community Points On Blockchain	null	0.7906
28	446	Reddit Ties Up With Ethereum Foundation To Hasten Bringing Community Points On Blockchain	null	0.7906
28	386	Cybercops derail malware botnet FBI makes ransomware arrest	null	-0.5574
28	266	Cybercops derail malware botnet FBI makes ransomware arrest	null	-0.5574
28	266	Cybercops derail malware botnet FBI makes ransomware arrest	null	-0.5574
28	266	Ethereum Price Forecast ETH on chain metrics remain strongly bullish upswing to 1 500 eyed	null	0.9971
28	506	The US Department of Justice unveils worldwide action against NetWalker ransomware seizes 450	null	0.5267
28	352	Dogecoin Shoots Up 62 As SatoshiStreetBets Looks To Emulate WallStreetBets Success With GameStop	null	0.8934
28	644	WallStreetBets Fever Hits Dogecoin Price Soars 142	null	0.9985
28	1364	Bitcoin soars 11 after Elon Musk namecheck on Twitter	null	0.9985
29	224	Bitcoin Shoots Up 11 Did Elon Musk Dogecoin Boost Help	null	0.9081
28	1004	Hot DOGE Meme Based Cryptocurrency Soars More Than 800 to Record High	null	0.9990
28	1004	Bitcoin Jumps Above 35 000 as Musk Tweets About Crypto	null	0.9970
29	104	WallStreetsBets craze pushes dogecoin up 5x in 24 hours	null	0.7506
28	1004	Silvergate Capital s Common Stock Issuance Is Another Sign of Confidence for the Company	null	0.5106
38	515	Green hackers around the world let s destroy Bitcoin	null	-0.5423
29	224	Bitcoin Shoots Up 11 Did Elon Musk DogeCoin Boost Help	null	0.9081
28	824	Cryptocurrency Crime Drops in 2020 but DeFi Breaches Rise Study Finds	null	0.9910
28	1424	Dogecoin DOGE shoots 270 higher as WallStreetBets starts to pick up on crypto CryptoSlate	null	0.7906
29	284	XRP Climbs 10 As Investors Gain Confidence By Investing com	null	0.9853
29	284	XRP Climbs 10 45 In Bullish Trade	null	0.9970
28	1364	Altcoins soar after 10 Bitcoin price breakout flips 33K back to support	null	0.9493
28	1124	Bitcoin What is the Death Cross That Heralds the Sharp Fall of This Cryptocurrency	null	-0.5994
29	44	Litecoin Climbs 10 11 In Rally	null	0.9682
29	44	Bitcoin Climbs 10 18 In Rally	null	0.9682
29	44	Litecoin Climbs 10 In Bullish Trade By Investing com	null	0.9970
28	1424	Bitcoin Climbs 10 In Bullish Trade By Investing com	null	0.9970
28	884	Cryptocurrency crime drops in 2020 but DeFi breaches rise study finds	null	0.9910
28	824	Grayscale prepares for DeFi future with new cryptocurrency trust filings	null	0.5106
28	884	Cryptocurrency crime drops in 2020 but DeFi breaches rise CyberNews	null	0.9910
29	164	Ray Dalio Clears His Stance On Bitcoin Calls Is Amazing Accomplishment	null	0.6249
28	1424	Bitcoin s Rebound Accelerates With Push Back Above 34 000	null	0.9818
29	164	Ray Dalio Clears His Stance On Bitcoin Calls Is Amazing Accomplishment	null	0.6249
28	944	Dogecoin hits new all time high amid Wall Street Bets mania	null	0.9682
28	944	Dalio Expects to Soon Offer Alt Cash Fund Says Bitcoin Won t Escape Our Scrutiny CoinDesk	null	0.6597
29	560	Australian Crypto Exchange to Delist BSV Over Bullying Threat to Bitcoin Developers	null	-0.8074
28	704	Digital Asset Manager Grayscale Eyes DeFi Space With New Trust Filings	null	0.7003
28	644	WallStreetBets Fever Hits Dogecoin Price Soars 142 After Twitter Mention CoinDesk	null	0.9985
28	1424	Bitcoin Climbs 10 18 In Rally By Investing com	null	0.9682
28	644	Analyst Chinese New Year could drive Bitcoin selling pressure	null	-0.9451
28	824	DOJ charges suspect in NetWalker ransomware attacks	null	-0.7351
28	884	Europol Spanish Police Bust Alleged Scam Posing as Crypto Investment Training Firm	null	-0.5719
29	464	Dogecoin s 600 rally could jumpstart the next altseason	null	0.9682
28	1124	How the far right harnessed tech in the lead up to the Capitol riot	null	0.5267
28	1124	How the far right harnessed tech in the lead up to the Capitol riot	null	0.5267
28	1124	Here are the best investing app alternatives to Robinhood	null	0.6369
28	1004	Value of holding bitcoin surpassing trading value	null	0.5859
28	1004	Bitcoin Rebounds From Early Losses Markets Still Distracted by GameStop CoinDesk	null	-0.6249
28	944	Ray Dalio Calls Bitcoin One Hell of an Invention Considers It for New Funds	null	-0.6808
28	944	Robinhood Slammed After Halting Users From Buying Surging Stocks	null	0.9325
28	944	Robinhood Slammed After Halting Users From Buying Surging Stocks	null	0.9325
28	944	Crypto Whale One River Says Volatility to Ease as Prices Rise	null	0.9842
28	884	Robinhood suspends buying for GameStop following stonks going to the moon	null	0.9325
28	764	It s never been more important to safeguard your data These ads might make you actually care	null	0.6434
28	704	OTC Markets Group Announces the 2021 OTCQX Best 50	null	0.6369
28	1364	DOGE tweet volume up 1800 becomes first altcoin to surpass Bitcoin ever The Tie	null	0.7906
28	1244	FB Stock A Buy Facebook Crushes Q4 Earnings But Predicts High Opt Out Rates	null	0.9882
28	824	ALPHA surges 152 in one week What s behind its meteoric rally	null	0.9682
29	224	DeFi bulls continue to roar as Gamestop GME saga continues CryptoSlate	null	0.9325
29	464	FinTech Blockchain Market to Gain from Increasing Adoption in Financial Industry Worldwide says	null	0.9818
28	1004	Grimes Wrote A Poem About GameStop s Stock Market Chaos	null	-0.6908
28	944	Robinhood Slammed After Halting Users From Buying Surging Stocks	null	0.9325
28	944	American Airlines shares surge 80 thanks to Reddit after forum s revolution	null	0.6249
28	1304	Short Squeeze Volatility With GME AMC O Neil Portfolio Manager On Navigating Risk In Crazy	null	-0.5423
28	1184	New Grayscale trust filings spin rumour mill into overdrive for Cardano Polkadot Cosmos and more	null	0.5106
28	1124	Ray Dalio Calls Bitcoin One Hell of an Invention Considers It for New Funds	null	-0.6808
28	884	Square Stock Is a Great Pick in a Toxic Environment	null	0.6249
28	704	OTC Markets Group Announces the 2021 OTCQX Best 50	null	0.6369
28	1064	Crypto Whale One River Says Volatility to Ease as Prices Rise	null	0.9842
29	560	MicroStrategy Bond Buyers Rewarded With Win Tie Bitcoin Play	null	0.8555
28	944	Prime Trust tZERO Partner on Digital Asset Custody Trading	null	0.7003
29	560	How Do We Regain Trust in Institutions	null	0.5106
28	704	Wall Street s fear gauge just logged its biggest rise in two years as the battle between Reddit	null	0.9726
29	131	WallStreetsBets craze pushes dogecoin up 5x in 24 hours	null	0.7506
28	848	Cryptocurrency crime drops in 2020 but DeFi breaches rise study finds Reuters	null	0.9910
28	1126	Bitcoin What is the death cross that heralds the sharp fall of this cryptocurrency	null	-0.5994
28	1095	Here are the best investing app alternatives to Robinhood	null	0.6369
28	665	3 Popular Robinhood Stocks That Could Be Better Than Bitcoin in 2021	null	0.6908
28	1170	How much does H R Block cost Here s how much you ll pay to prepare and file your tax return	null	-0.5106
28	1291	After Robinhood Restricts GameStop Bitcoin And Crypto Market Suddenly Soars Toward 1 Trillion Dogecoin Price Rockets 200	null	0.9984
28	1068	Huge demand for Nvidia RTX 3000 cards led scalpers to 15 2 million in profit	null	0.5719
28	654	WallStreetBets Fever Hits Dogecoin Price Soars 142	null	0.9985
28	1374	Bitcoin soars 11 after Elon Musk namecheck on Twitter	null	0.9985
29	234	Bitcoin Shoots Up 11 Did Elon Musk Dogecoin Boost Help	null	0.9081
28	1014	Hot DOGE Meme Based Cryptocurrency Soars More Than 800 to Record High	null	0.9990
28	1014	Bitcoin Jumps Above 35 000 as Musk Tweets About Crypto	null	0.9970
29	114	WallStreetsBets craze pushes dogecoin up 5x in 24 hours	null	0.7506
28	1014	Silvergate Capital s Common Stock Issuance Is Another Sign of Confidence for the Company	null	0.5106
29	234	Bitcoin Shoots Up 11 Did Elon Musk DogeCoin Boost Help	null	0.9081
28	834	Cryptocurrency Crime Drops in 2020 but DeFi Breaches Rise Study Finds	null	0.9910
28	1434	Dogecoin DOGE shoots 270 higher as WallStreetBets starts to pick up on crypto CryptoSlate	null	0.7906
29	294	XRP Climbs 10 As Investors Gain Confidence By Investing com	null	0.9853
29	294	XRP Climbs 10 45 In Bullish Trade	null	0.9970
28	1374	Altcoins soar after 10 Bitcoin price breakout flips 33K back to support	null	0.9493
28	1134	Bitcoin What is the Death Cross That Heralds the Sharp Fall of This Cryptocurrency	null	-0.5994
29	54	Litecoin Climbs 10 11 In Rally	null	0.9682
29	54	Bitcoin Climbs 10 18 In Rally	null	0.9682
29	54	Litecoin Climbs 10 In Bullish Trade By Investing com	null	0.9970
28	1434	Bitcoin Climbs 10 In Bullish Trade By Investing com	null	0.9970
28	894	Cryptocurrency crime drops in 2020 but DeFi breaches rise study finds	null	0.9910
28	834	Grayscale prepares for DeFi future with new cryptocurrency trust filings	null	0.5106
28	894	Cryptocurrency crime drops in 2020 but DeFi breaches rise CyberNews	null	0.9910
29	174	Ray Dalio Clears His Stance On Bitcoin Calls Is Amazing Accomplishment	null	0.6249
28	1434	Bitcoin s Rebound Accelerates With Push Back Above 34 000	null	0.9818
29	174	Ray Dalio Clears His Stance On Bitcoin Calls Is Amazing Accomplishment	null	0.6249
28	954	Dogecoin hits new all time high amid Wall Street Bets mania	null	0.9682
28	954	Dalio Expects to Soon Offer Alt Cash Fund Says Bitcoin Won t Escape Our Scrutiny CoinDesk	null	0.6597
29	570	Australian Crypto Exchange to Delist BSV Over Bullying Threat to Bitcoin Developers	null	-0.8074
28	714	Digital Asset Manager Grayscale Eyes DeFi Space With New Trust Filings	null	0.7003
28	654	WallStreetBets Fever Hits Dogecoin Price Soars 142 After Twitter Mention CoinDesk	null	0.9985
28	1434	Bitcoin Climbs 10 18 In Rally By Investing com	null	0.9682
28	654	Analyst Chinese New Year could drive Bitcoin selling pressure	null	-0.9451
28	834	DOJ charges suspect in NetWalker ransomware attacks	null	-0.7351
28	894	Europol Spanish Police Bust Alleged Scam Posing as Crypto Investment Training Firm	null	-0.5719
29	474	Dogecoin s 600 rally could jumpstart the next altseason	null	0.9682
28	1134	How the far right harnessed tech in the lead up to the Capitol riot	null	0.5267
28	1134	How the far right harnessed tech in the lead up to the Capitol riot	null	0.5267
28	1134	Here are the best investing app alternatives to Robinhood	null	0.6369
28	1014	Value of holding bitcoin surpassing trading value	null	0.5859
28	1014	Bitcoin Rebounds From Early Losses Markets Still Distracted by GameStop CoinDesk	null	-0.6249
28	954	Ray Dalio Calls Bitcoin One Hell of an Invention Considers It for New Funds	null	-0.6808
28	954	Robinhood Slammed After Halting Users From Buying Surging Stocks	null	0.9325
28	954	Robinhood Slammed After Halting Users From Buying Surging Stocks	null	0.9325
28	954	Crypto Whale One River Says Volatility to Ease as Prices Rise	null	0.9842
28	894	Robinhood suspends buying for GameStop following stonks going to the moon	null	0.9325
28	774	It s never been more important to safeguard your data These ads might make you actually care	null	0.6434
28	714	OTC Markets Group Announces the 2021 OTCQX Best 50	null	0.6369
28	1374	DOGE tweet volume up 1800 becomes first altcoin to surpass Bitcoin ever The Tie	null	0.7906
28	1254	FB Stock A Buy Facebook Crushes Q4 Earnings But Predicts High Opt Out Rates	null	0.9882
28	834	ALPHA surges 152 in one week What s behind its meteoric rally	null	0.9682
29	234	DeFi bulls continue to roar as Gamestop GME saga continues CryptoSlate	null	0.9325
29	474	FinTech Blockchain Market to Gain from Increasing Adoption in Financial Industry Worldwide says	null	0.9818
28	1014	Grimes Wrote A Poem About GameStop s Stock Market Chaos	null	-0.6908
28	954	Robinhood Slammed After Halting Users From Buying Surging Stocks	null	0.9325
28	954	American Airlines shares surge 80 thanks to Reddit after forum s revolution	null	0.6249
28	1314	Short Squeeze Volatility With GME AMC O Neil Portfolio Manager On Navigating Risk In Crazy	null	-0.5423
28	1194	New Grayscale trust filings spin rumour mill into overdrive for Cardano Polkadot Cosmos and more	null	0.5106
28	1134	Ray Dalio Calls Bitcoin One Hell of an Invention Considers It for New Funds	null	-0.6808
28	894	Square Stock Is a Great Pick in a Toxic Environment	null	0.6249
28	714	OTC Markets Group Announces the 2021 OTCQX Best 50	null	0.6369
28	1074	Crypto Whale One River Says Volatility to Ease as Prices Rise	null	0.9842
29	570	MicroStrategy Bond Buyers Rewarded With Win Tie Bitcoin Play	null	0.8555
28	954	Prime Trust tZERO Partner on Digital Asset Custody Trading	null	0.7003
29	570	How Do We Regain Trust in Institutions	null	0.5106
28	714	Wall Street s fear gauge just logged its biggest rise in two years as the battle between Reddit	null	0.9726
29	131	WallStreetsBets craze pushes dogecoin up 5x in 24 hours	null	0.7506
28	848	Cryptocurrency crime drops in 2020 but DeFi breaches rise study finds Reuters	null	0.9910
28	1126	Bitcoin What is the death cross that heralds the sharp fall of this cryptocurrency	null	-0.5994
28	1095	Here are the best investing app alternatives to Robinhood	null	0.6369
28	665	3 Popular Robinhood Stocks That Could Be Better Than Bitcoin in 2021	null	0.6908
28	1170	How much does H R Block cost Here s how much you ll pay to prepare and file your tax return	null	-0.5106
28	1291	After Robinhood Restricts GameStop Bitcoin And Crypto Market Suddenly Soars Toward 1 Trillion Dogecoin Price Rockets 200	null	0.9984
28	1068	Huge demand for Nvidia RTX 3000 cards led scalpers to 15 2 million in profit	null	0.5719
29	1000	Robinhood blocks cryptocurrency trading blames extraordinary market conditions	null	-0.5574
29	820	Dogecoin Price Up 975 After Elon Musk s Tweet WallStreetBets Pump	null	0.7906
29	400	Reddit frenzy pumps up Dogecoin a cryptocurrency started as a joke by over 800	null	0.7845
28	1360	Will the SEC s Lawsuit Lead to Ripple Failing to Reach Its Potential	null	-0.6249
29	640	Stablecoin holdings on crypto exchanges hit a new all time high	null	0.9682
29	760	Bitcoin soars 14 after Elon Musk namecheck on Twitter	null	0.9985
29	1060	What s Next For Bitcoin In An Era Of Helicopter Money Negative	null	-0.5719
29	580	Price of worthless cryptocurrency skyrockets by 1 000 thanks to GameStop stock fiasco	null	-0.5106
29	280	WallStreetsBets craze pushes dogecoin up 5x in 24 hours	null	0.7506
29	880	Dogecoin Jumps 600 as Meme Crypto Rides GameStop Retail Wave	null	0.9970
29	820	Dogecoin soars 370 as Reddit group works to send the cryptocurrency to the moon	null	0.9985
29	580	Elon Musk sends Bitcoin soaring 20pc live updates	null	0.9985
28	1240	Bitcoin What is the Death Cross That Heralds the Sharp Fall of This Cryptocurrency	null	-0.5994
29	520	Robinhood restricts Instant Buying of crypto citing extraordinary market conditions	null	0.9136
29	1060	Cryptocurrency Crime Drops in 2020 but Decentralized Finance Losses Rise Study	null	0.9892
29	760	Dogecoin soars 370 as Reddit group works to send the cryptocurrency to the moon	null	0.9985
29	940	Robinhood restricts crypto trading as Dogecoin soars 300 percent	null	0.9984
29	760	Dogecoin soars 370 as Reddit group works to send the cryptocurrency to the moon	null	0.9985
29	880	Dogecoin soars 370 as Reddit group works to send the cryptocurrency to the moon	null	0.9985
29	760	Dogecoin Becomes Most Mentioned Crypto on Twitter Ever as Price Soars	null	0.9985
29	340	Bitcoin Shoots Up 11 Did Elon Musk DogeCoin Boost Help	null	0.9081
29	100	Bitcoin Jumps Above 38 000 as Musk Adds It to Twitter Profile	null	0.9970
29	700	Bitcoin Soars 14 After Elon Musk Namecheck on Twitter	null	0.9985
29	760	Bitcoin soars 14 after Elon Musk namecheck on Twitter	null	0.9985
29	340	Bitcoin Shoots Up 11 Did Elon Musk Dogecoin Boost Help	null	0.9081
29	640	Bitcoin soars 14 after Elon Musk namecheck on Twitter	null	0.9985
29	640	Bitcoin soars 14 after Elon Musk namecheck on Twitter	null	0.9985
29	460	Bitcoin soars 14 after Elon Musk namecheck on Twitter By Reuters	null	0.9985
29	460	Bitcoin soars 14 after Elon Musk namecheck on Twitter By Reuters	null	0.9985
29	460	Bitcoin soars 14 after Elon Musk namecheck on Twitter By Reuters	null	0.9985
29	460	XRP Climbs 10 45 In Bullish Trade	null	0.9970
29	460	XRP Climbs 10 45 In Bullish Trade	null	0.9970
29	460	XRP Climbs 10 As Investors Gain Confidence By Investing com	null	0.9853
29	100	Dogecoin DOGE shoots 270 higher as WallStreetBets starts to pick up on crypto CryptoSlate	null	0.7906
29	460	Wall Street Just Made the Best Case for Bitcoin Ethereum DeFi Get Ready for Mass Adoption	null	0.7717
29	700	Bitcoin soars 14 after Elon Musk namecheck on Twitter	null	0.9985
29	460	XRP Climbs 10 45 In Rally By Investing com	null	0.9682
29	820	Elon Musk changes Twitter bio to bitcoin chaos ensues	null	-0.5719
29	460	Bitcoin soars 14 after Elon Musk namecheck on Twitter By Reuters	null	0.9985
29	1122	Kraken Coinbase Suffer Outages Amid Market Volatility	null	-0.5423
29	940	How A Little Bird Is Delivering Trust	null	0.5106
29	1120	GLOBAL MARKETS Dollar stocks slide as virus social trading cools sentiment	null	-0.9970
29	1060	Who s getting rich off GameStop s stock The market makers and middlemen including Robinhood	null	0.5574
29	1060	Dow Jones Today Stocks Drop To Test Support Caterpillar Climbs Bitcoin Rallies Short Squeeze	null	-0.9968
29	1000	Ray Dalio Bitcoin is gold like but governments won t let it win	null	0.9186
29	940	Here s why Elon Musk s simple Twitter bio change rocketed Bitcoin up 18 CryptoSlate	null	0.7906
29	1000	Zombies not welcome Original altcoins lose ground to DeFi newcomers	null	-0.7304
29	880	GLOBAL MARKETS Wall Street set for weak open on hedge fund retail battle	null	-0.6705
29	820	Billionaire Leon Cooperman says GameStop surge will end very badly for the public and decries	null	-0.5256
29	580	Dogecoin s 600 rally could jumpstart the next altseason	null	0.9682
29	760	Join Us in Miami Love Masters of the Universe	null	0.7506
29	460	Google reportedly scraps thousands of negative Robinhood reviews By Cointelegraph	null	-0.5719
29	460	Robinhood Raises Over 1 Billion In Emergency Funds As Platform Struggles With Reddit Fuelled	null	-0.6249
29	460	GLOBAL MARKETS Dollar stocks slide as virus social trading cools sentiment	null	-0.9970
29	460	GLOBAL MARKETS Wall Street set for weak open on hedge fund retail battle	null	-0.6705
29	460	GLOBAL MARKETS Wall Street set for weak open on hedge fund retail battle	null	-0.6705
29	460	GLOBAL MARKETS Wall Street set for weak open on hedge fund retail battle By Reuters	null	-0.6705
29	1060	Opinion Who s getting rich off GameStop s stock The market makers and middlemen including	null	0.5574
29	1000	U S Stocks Open Lower as GameStop Frenzy Builds	null	-0.5423
29	1000	Dow slides 200 points on concerns of retail investors speculative trading	null	-0.9970
29	1000	World s richest man Elon Musk boosts Bitcoin price by 20 Is 40K back in play	null	0.7964
29	820	Elon Musk changes Twitter bio to bitcoin chaos ensues	null	-0.5719
29	700	Bitcoin soars by 5K in minutes BTC hits 38K after Elon Musk s Dogecoin treatment	null	0.9985
28	1240	Ray Dalio Calls Bitcoin One Hell of an Invention Considers It for New Funds	null	-0.6808
28	1240	The 8 best investing app alternatives to Robinhood	null	0.6369
28	1240	Here are the best investing app alternatives to Robinhood	null	0.6369
28	1240	The 8 best investing app alternatives to Robinhood	null	0.6369
29	1156	Crypto Whale One River Says Volatility to Ease as Prices Rise	null	0.9842
29	1156	The biggest investors in space are cheering on the GameStop trade	null	0.5106
29	460	GameStop back on the rise as Robinhood eases trading ban	null	0.9792
29	400	DeFi bulls continue to roar as Gamestop GME saga continues CryptoSlate	null	0.9325
29	40	DOGE tweet volume up 1800 becomes first altcoin to surpass Bitcoin ever The Tie	null	0.7906
29	460	GLOBAL MARKETS Wall Street set for weak open on hedge fund retail battle By Reuters	null	-0.6705
28	1420	FB Stock A Buy Facebook Crushes Q4 Earnings But Predicts High Opt Out Rates	null	0.9882
29	1140	Robinhood restricts instant buying of crypto citing extraordinary market conditions	null	0.9136
29	220	SEC issues warning as GameStop short selling war resumes	null	-0.9652
29	1156	Tim Cook says companies are misleading users and exploiting data as public feud with Facebook	null	-0.7906
29	100	Dollar stocks slide as virus social trading cools sentiment	null	-0.9970
29	100	Dollar stocks slide as virus social trading cools sentiment	null	-0.9970
29	100	Dollar stocks slide as virus social trading cools sentiment	null	-0.9970
29	100	Dollar stocks slide as virus social trading cools sentiment	null	-0.9970
29	820	Elon Musk changes Twitter bio to bitcoin chaos ensues	null	-0.5719
29	940	Jon Stewart gets a warm welcome on Twitter after joining to defend Reddit traders	null	0.5994
29	640	FinTech Blockchain Market to Gain from Increasing Adoption in Financial Industry Worldwide says	null	0.9818
29	520	FTSE 100 falls expected as GameStop Reddit fallout blows through global markets	null	-0.9993
28	1420	Short Squeeze Volatility With GME AMC O Neil Portfolio Manager On Navigating Risk In Crazy	null	-0.5423
28	1240	Here are the best investing app alternatives to Robinhood	null	0.6369
28	1240	How the far right harnessed tech in the lead up to the Capitol riot	null	0.5267
28	1240	How the far right harnessed tech in the lead up to the Capitol riot	null	0.5267
29	131	WallStreetsBets craze pushes dogecoin up 5x in 24 hours	null	0.7506
29	660	Elon Musk changes Twitter bio to bitcoin chaos ensues	null	-0.5719
29	586	Bitcoin soars 11 after Elon Musk namecheck on Twitter Reuters	null	0.9985
29	569	Bitcoin soars 11 after Elon Musk namecheck on Twitter Reuters	null	0.9985
28	848	Cryptocurrency crime drops in 2020 but DeFi breaches rise study finds Reuters	null	0.9910
28	1126	Bitcoin What is the death cross that heralds the sharp fall of this cryptocurrency	null	-0.5994
28	1095	Here are the best investing app alternatives to Robinhood	null	0.6369
28	665	3 Popular Robinhood Stocks That Could Be Better Than Bitcoin in 2021	null	0.6908
29	1001	Robinhood blocks cryptocurrency trading blames extraordinary market conditions	null	-0.5574
29	821	Dogecoin Price Up 975 After Elon Musk s Tweet WallStreetBets Pump	null	0.7906
29	401	Reddit frenzy pumps up Dogecoin a cryptocurrency started as a joke by over 800	null	0.7845
28	1361	Will the SEC s Lawsuit Lead to Ripple Failing to Reach Its Potential	null	-0.6249
29	641	Stablecoin holdings on crypto exchanges hit a new all time high	null	0.9682
29	761	Bitcoin soars 14 after Elon Musk namecheck on Twitter	null	0.9985
29	1061	What s Next For Bitcoin In An Era Of Helicopter Money Negative	null	-0.5719
29	581	Price of worthless cryptocurrency skyrockets by 1 000 thanks to GameStop stock fiasco	null	-0.5106
29	281	WallStreetsBets craze pushes dogecoin up 5x in 24 hours	null	0.7506
29	881	Dogecoin Jumps 600 as Meme Crypto Rides GameStop Retail Wave	null	0.9970
29	821	Dogecoin soars 370 as Reddit group works to send the cryptocurrency to the moon	null	0.9985
29	581	Elon Musk sends Bitcoin soaring 20pc live updates	null	0.9985
28	1241	Bitcoin What is the Death Cross That Heralds the Sharp Fall of This Cryptocurrency	null	-0.5994
29	521	Robinhood restricts Instant Buying of crypto citing extraordinary market conditions	null	0.9136
29	1061	Cryptocurrency Crime Drops in 2020 but Decentralized Finance Losses Rise Study	null	0.9892
29	761	Dogecoin soars 370 as Reddit group works to send the cryptocurrency to the moon	null	0.9985
29	941	Robinhood restricts crypto trading as Dogecoin soars 300 percent	null	0.9984
29	761	Dogecoin soars 370 as Reddit group works to send the cryptocurrency to the moon	null	0.9985
29	881	Dogecoin soars 370 as Reddit group works to send the cryptocurrency to the moon	null	0.9985
29	761	Dogecoin Becomes Most Mentioned Crypto on Twitter Ever as Price Soars	null	0.9985
29	341	Bitcoin Shoots Up 11 Did Elon Musk DogeCoin Boost Help	null	0.9081
29	101	Bitcoin Jumps Above 38 000 as Musk Adds It to Twitter Profile	null	0.9970
29	701	Bitcoin Soars 14 After Elon Musk Namecheck on Twitter	null	0.9985
29	761	Bitcoin soars 14 after Elon Musk namecheck on Twitter	null	0.9985
29	341	Bitcoin Shoots Up 11 Did Elon Musk Dogecoin Boost Help	null	0.9081
29	641	Bitcoin soars 14 after Elon Musk namecheck on Twitter	null	0.9985
29	641	Bitcoin soars 14 after Elon Musk namecheck on Twitter	null	0.9985
29	461	Bitcoin soars 14 after Elon Musk namecheck on Twitter By Reuters	null	0.9985
29	461	Bitcoin soars 14 after Elon Musk namecheck on Twitter By Reuters	null	0.9985
29	461	Bitcoin soars 14 after Elon Musk namecheck on Twitter By Reuters	null	0.9985
29	461	XRP Climbs 10 45 In Bullish Trade	null	0.9970
29	461	XRP Climbs 10 45 In Bullish Trade	null	0.9970
29	461	XRP Climbs 10 As Investors Gain Confidence By Investing com	null	0.9853
29	101	Dogecoin DOGE shoots 270 higher as WallStreetBets starts to pick up on crypto CryptoSlate	null	0.7906
29	461	Wall Street Just Made the Best Case for Bitcoin Ethereum DeFi Get Ready for Mass Adoption	null	0.7717
29	701	Bitcoin soars 14 after Elon Musk namecheck on Twitter	null	0.9985
29	461	XRP Climbs 10 45 In Rally By Investing com	null	0.9682
29	821	Elon Musk changes Twitter bio to bitcoin chaos ensues	null	-0.5719
29	461	Bitcoin soars 14 after Elon Musk namecheck on Twitter By Reuters	null	0.9985
29	1123	Kraken Coinbase Suffer Outages Amid Market Volatility	null	-0.5423
29	941	How A Little Bird Is Delivering Trust	null	0.5106
29	1121	GLOBAL MARKETS Dollar stocks slide as virus social trading cools sentiment	null	-0.9970
29	1061	Who s getting rich off GameStop s stock The market makers and middlemen including Robinhood	null	0.5574
29	1061	Dow Jones Today Stocks Drop To Test Support Caterpillar Climbs Bitcoin Rallies Short Squeeze	null	-0.9968
29	1001	Ray Dalio Bitcoin is gold like but governments won t let it win	null	0.9186
29	941	Here s why Elon Musk s simple Twitter bio change rocketed Bitcoin up 18 CryptoSlate	null	0.7906
29	1001	Zombies not welcome Original altcoins lose ground to DeFi newcomers	null	-0.7304
29	881	GLOBAL MARKETS Wall Street set for weak open on hedge fund retail battle	null	-0.6705
29	821	Billionaire Leon Cooperman says GameStop surge will end very badly for the public and decries	null	-0.5256
29	581	Dogecoin s 600 rally could jumpstart the next altseason	null	0.9682
29	761	Join Us in Miami Love Masters of the Universe	null	0.7506
29	461	Google reportedly scraps thousands of negative Robinhood reviews By Cointelegraph	null	-0.5719
29	461	Robinhood Raises Over 1 Billion In Emergency Funds As Platform Struggles With Reddit Fuelled	null	-0.6249
29	461	GLOBAL MARKETS Dollar stocks slide as virus social trading cools sentiment	null	-0.9970
29	461	GLOBAL MARKETS Wall Street set for weak open on hedge fund retail battle	null	-0.6705
29	461	GLOBAL MARKETS Wall Street set for weak open on hedge fund retail battle	null	-0.6705
29	461	GLOBAL MARKETS Wall Street set for weak open on hedge fund retail battle By Reuters	null	-0.6705
29	1061	Opinion Who s getting rich off GameStop s stock The market makers and middlemen including	null	0.5574
29	1001	U S Stocks Open Lower as GameStop Frenzy Builds	null	-0.5423
29	1001	Dow slides 200 points on concerns of retail investors speculative trading	null	-0.9970
29	1001	World s richest man Elon Musk boosts Bitcoin price by 20 Is 40K back in play	null	0.7964
29	821	Elon Musk changes Twitter bio to bitcoin chaos ensues	null	-0.5719
29	701	Bitcoin soars by 5K in minutes BTC hits 38K after Elon Musk s Dogecoin treatment	null	0.9985
28	1241	Ray Dalio Calls Bitcoin One Hell of an Invention Considers It for New Funds	null	-0.6808
28	1241	The 8 best investing app alternatives to Robinhood	null	0.6369
28	1241	Here are the best investing app alternatives to Robinhood	null	0.6369
28	1241	The 8 best investing app alternatives to Robinhood	null	0.6369
29	1157	Crypto Whale One River Says Volatility to Ease as Prices Rise	null	0.9842
29	1157	The biggest investors in space are cheering on the GameStop trade	null	0.5106
29	461	GameStop back on the rise as Robinhood eases trading ban	null	0.9792
29	401	DeFi bulls continue to roar as Gamestop GME saga continues CryptoSlate	null	0.9325
29	41	DOGE tweet volume up 1800 becomes first altcoin to surpass Bitcoin ever The Tie	null	0.7906
29	461	GLOBAL MARKETS Wall Street set for weak open on hedge fund retail battle By Reuters	null	-0.6705
28	1421	FB Stock A Buy Facebook Crushes Q4 Earnings But Predicts High Opt Out Rates	null	0.9882
29	1141	Robinhood restricts instant buying of crypto citing extraordinary market conditions	null	0.9136
29	221	SEC issues warning as GameStop short selling war resumes	null	-0.9652
29	1157	Tim Cook says companies are misleading users and exploiting data as public feud with Facebook	null	-0.7906
29	101	Dollar stocks slide as virus social trading cools sentiment	null	-0.9970
29	101	Dollar stocks slide as virus social trading cools sentiment	null	-0.9970
29	101	Dollar stocks slide as virus social trading cools sentiment	null	-0.9970
29	101	Dollar stocks slide as virus social trading cools sentiment	null	-0.9970
29	821	Elon Musk changes Twitter bio to bitcoin chaos ensues	null	-0.5719
29	941	Jon Stewart gets a warm welcome on Twitter after joining to defend Reddit traders	null	0.5994
29	641	FinTech Blockchain Market to Gain from Increasing Adoption in Financial Industry Worldwide says	null	0.9818
29	521	FTSE 100 falls expected as GameStop Reddit fallout blows through global markets	null	-0.9993
28	1421	Short Squeeze Volatility With GME AMC O Neil Portfolio Manager On Navigating Risk In Crazy	null	-0.5423
28	1241	Here are the best investing app alternatives to Robinhood	null	0.6369
28	1241	How the far right harnessed tech in the lead up to the Capitol riot	null	0.5267
28	1241	How the far right harnessed tech in the lead up to the Capitol riot	null	0.5267
29	131	WallStreetsBets craze pushes dogecoin up 5x in 24 hours	null	0.7506
29	660	Elon Musk changes Twitter bio to bitcoin chaos ensues	null	-0.5719
29	586	Bitcoin soars 11 after Elon Musk namecheck on Twitter Reuters	null	0.9985
29	569	Bitcoin soars 11 after Elon Musk namecheck on Twitter Reuters	null	0.9985
28	848	Cryptocurrency crime drops in 2020 but DeFi breaches rise study finds Reuters	null	0.9910
28	1126	Bitcoin What is the death cross that heralds the sharp fall of this cryptocurrency	null	-0.5994
28	1095	Here are the best investing app alternatives to Robinhood	null	0.6369
28	665	3 Popular Robinhood Stocks That Could Be Better Than Bitcoin in 2021	null	0.6908
29	1007	Robinhood blocks cryptocurrency trading blames extraordinary market conditions	null	-0.5574
29	827	Dogecoin Price Up 975 After Elon Musk s Tweet WallStreetBets Pump	null	0.7906
29	407	Reddit frenzy pumps up Dogecoin a cryptocurrency started as a joke by over 800	null	0.7845
28	1367	Will the SEC s Lawsuit Lead to Ripple Failing to Reach Its Potential	null	-0.6249
29	647	Stablecoin holdings on crypto exchanges hit a new all time high	null	0.9682
29	767	Bitcoin soars 14 after Elon Musk namecheck on Twitter	null	0.9985
29	1067	What s Next For Bitcoin In An Era Of Helicopter Money Negative	null	-0.5719
29	587	Price of worthless cryptocurrency skyrockets by 1 000 thanks to GameStop stock fiasco	null	-0.5106
29	287	WallStreetsBets craze pushes dogecoin up 5x in 24 hours	null	0.7506
29	887	Dogecoin Jumps 600 as Meme Crypto Rides GameStop Retail Wave	null	0.9970
29	827	Dogecoin soars 370 as Reddit group works to send the cryptocurrency to the moon	null	0.9985
29	587	Elon Musk sends Bitcoin soaring 20pc live updates	null	0.9985
28	1247	Bitcoin What is the Death Cross That Heralds the Sharp Fall of This Cryptocurrency	null	-0.5994
29	527	Robinhood restricts Instant Buying of crypto citing extraordinary market conditions	null	0.9136
29	1067	Cryptocurrency Crime Drops in 2020 but Decentralized Finance Losses Rise Study	null	0.9892
29	767	Dogecoin soars 370 as Reddit group works to send the cryptocurrency to the moon	null	0.9985
29	947	Robinhood restricts crypto trading as Dogecoin soars 300 percent	null	0.9984
29	767	Dogecoin soars 370 as Reddit group works to send the cryptocurrency to the moon	null	0.9985
29	887	Dogecoin soars 370 as Reddit group works to send the cryptocurrency to the moon	null	0.9985
29	767	Dogecoin Becomes Most Mentioned Crypto on Twitter Ever as Price Soars	null	0.9985
29	347	Bitcoin Shoots Up 11 Did Elon Musk DogeCoin Boost Help	null	0.9081
29	107	Bitcoin Jumps Above 38 000 as Musk Adds It to Twitter Profile	null	0.9970
29	707	Bitcoin Soars 14 After Elon Musk Namecheck on Twitter	null	0.9985
29	767	Bitcoin soars 14 after Elon Musk namecheck on Twitter	null	0.9985
29	347	Bitcoin Shoots Up 11 Did Elon Musk Dogecoin Boost Help	null	0.9081
29	647	Bitcoin soars 14 after Elon Musk namecheck on Twitter	null	0.9985
29	647	Bitcoin soars 14 after Elon Musk namecheck on Twitter	null	0.9985
29	467	Bitcoin soars 14 after Elon Musk namecheck on Twitter By Reuters	null	0.9985
29	467	Bitcoin soars 14 after Elon Musk namecheck on Twitter By Reuters	null	0.9985
29	467	Bitcoin soars 14 after Elon Musk namecheck on Twitter By Reuters	null	0.9985
29	467	XRP Climbs 10 45 In Bullish Trade	null	0.9970
29	467	XRP Climbs 10 45 In Bullish Trade	null	0.9970
29	467	XRP Climbs 10 As Investors Gain Confidence By Investing com	null	0.9853
29	107	Dogecoin DOGE shoots 270 higher as WallStreetBets starts to pick up on crypto CryptoSlate	null	0.7906
29	467	Wall Street Just Made the Best Case for Bitcoin Ethereum DeFi Get Ready for Mass Adoption	null	0.7717
29	707	Bitcoin soars 14 after Elon Musk namecheck on Twitter	null	0.9985
29	467	XRP Climbs 10 45 In Rally By Investing com	null	0.9682
29	827	Elon Musk changes Twitter bio to bitcoin chaos ensues	null	-0.5719
29	467	Bitcoin soars 14 after Elon Musk namecheck on Twitter By Reuters	null	0.9985
29	1129	Kraken Coinbase Suffer Outages Amid Market Volatility	null	-0.5423
29	947	How A Little Bird Is Delivering Trust	null	0.5106
29	1127	GLOBAL MARKETS Dollar stocks slide as virus social trading cools sentiment	null	-0.9970
29	1067	Who s getting rich off GameStop s stock The market makers and middlemen including Robinhood	null	0.5574
29	1067	Dow Jones Today Stocks Drop To Test Support Caterpillar Climbs Bitcoin Rallies Short Squeeze	null	-0.9968
29	1007	Ray Dalio Bitcoin is gold like but governments won t let it win	null	0.9186
29	947	Here s why Elon Musk s simple Twitter bio change rocketed Bitcoin up 18 CryptoSlate	null	0.7906
29	1007	Zombies not welcome Original altcoins lose ground to DeFi newcomers	null	-0.7304
29	887	GLOBAL MARKETS Wall Street set for weak open on hedge fund retail battle	null	-0.6705
29	827	Billionaire Leon Cooperman says GameStop surge will end very badly for the public and decries	null	-0.5256
29	587	Dogecoin s 600 rally could jumpstart the next altseason	null	0.9682
29	767	Join Us in Miami Love Masters of the Universe	null	0.7506
29	467	Google reportedly scraps thousands of negative Robinhood reviews By Cointelegraph	null	-0.5719
29	467	Robinhood Raises Over 1 Billion In Emergency Funds As Platform Struggles With Reddit Fuelled	null	-0.6249
29	467	GLOBAL MARKETS Dollar stocks slide as virus social trading cools sentiment	null	-0.9970
29	467	GLOBAL MARKETS Wall Street set for weak open on hedge fund retail battle	null	-0.6705
29	467	GLOBAL MARKETS Wall Street set for weak open on hedge fund retail battle	null	-0.6705
29	467	GLOBAL MARKETS Wall Street set for weak open on hedge fund retail battle By Reuters	null	-0.6705
29	1067	Opinion Who s getting rich off GameStop s stock The market makers and middlemen including	null	0.5574
29	1007	U S Stocks Open Lower as GameStop Frenzy Builds	null	-0.5423
29	1007	Dow slides 200 points on concerns of retail investors speculative trading	null	-0.9970
29	1007	World s richest man Elon Musk boosts Bitcoin price by 20 Is 40K back in play	null	0.7964
29	827	Elon Musk changes Twitter bio to bitcoin chaos ensues	null	-0.5719
29	707	Bitcoin soars by 5K in minutes BTC hits 38K after Elon Musk s Dogecoin treatment	null	0.9985
28	1247	Ray Dalio Calls Bitcoin One Hell of an Invention Considers It for New Funds	null	-0.6808
28	1247	The 8 best investing app alternatives to Robinhood	null	0.6369
28	1247	Here are the best investing app alternatives to Robinhood	null	0.6369
28	1247	The 8 best investing app alternatives to Robinhood	null	0.6369
29	1163	Crypto Whale One River Says Volatility to Ease as Prices Rise	null	0.9842
29	1163	The biggest investors in space are cheering on the GameStop trade	null	0.5106
29	467	GameStop back on the rise as Robinhood eases trading ban	null	0.9792
29	407	DeFi bulls continue to roar as Gamestop GME saga continues CryptoSlate	null	0.9325
29	47	DOGE tweet volume up 1800 becomes first altcoin to surpass Bitcoin ever The Tie	null	0.7906
29	467	GLOBAL MARKETS Wall Street set for weak open on hedge fund retail battle By Reuters	null	-0.6705
28	1427	FB Stock A Buy Facebook Crushes Q4 Earnings But Predicts High Opt Out Rates	null	0.9882
29	1147	Robinhood restricts instant buying of crypto citing extraordinary market conditions	null	0.9136
29	227	SEC issues warning as GameStop short selling war resumes	null	-0.9652
29	1163	Tim Cook says companies are misleading users and exploiting data as public feud with Facebook	null	-0.7906
29	107	Dollar stocks slide as virus social trading cools sentiment	null	-0.9970
29	107	Dollar stocks slide as virus social trading cools sentiment	null	-0.9970
29	107	Dollar stocks slide as virus social trading cools sentiment	null	-0.9970
29	107	Dollar stocks slide as virus social trading cools sentiment	null	-0.9970
29	827	Elon Musk changes Twitter bio to bitcoin chaos ensues	null	-0.5719
29	947	Jon Stewart gets a warm welcome on Twitter after joining to defend Reddit traders	null	0.5994
29	647	FinTech Blockchain Market to Gain from Increasing Adoption in Financial Industry Worldwide says	null	0.9818
40	1081	Bitcoin Miner Riot Blockchain Names Jason Les CEO	null	-0.5574
29	527	FTSE 100 falls expected as GameStop Reddit fallout blows through global markets	null	-0.9993
28	1427	Short Squeeze Volatility With GME AMC O Neil Portfolio Manager On Navigating Risk In Crazy	null	-0.5423
28	1247	Here are the best investing app alternatives to Robinhood	null	0.6369
28	1247	How the far right harnessed tech in the lead up to the Capitol riot	null	0.5267
28	1247	How the far right harnessed tech in the lead up to the Capitol riot	null	0.5267
29	131	WallStreetsBets craze pushes dogecoin up 5x in 24 hours	null	0.7506
29	660	Elon Musk changes Twitter bio to bitcoin chaos ensues	null	-0.5719
29	586	Bitcoin soars 11 after Elon Musk namecheck on Twitter Reuters	null	0.9985
29	569	Bitcoin soars 11 after Elon Musk namecheck on Twitter Reuters	null	0.9985
28	848	Cryptocurrency crime drops in 2020 but DeFi breaches rise study finds Reuters	null	0.9910
28	1126	Bitcoin What is the death cross that heralds the sharp fall of this cryptocurrency	null	-0.5994
28	1095	Here are the best investing app alternatives to Robinhood	null	0.6369
28	665	3 Popular Robinhood Stocks That Could Be Better Than Bitcoin in 2021	null	0.6908
29	1118	Robinhood blocks cryptocurrency trading blames extraordinary market conditions	null	-0.5574
29	938	Dogecoin Price Up 975 After Elon Musk s Tweet WallStreetBets Pump	null	0.7906
29	518	Reddit frenzy pumps up Dogecoin a cryptocurrency started as a joke by over 800	null	0.7845
29	38	Will the SEC s Lawsuit Lead to Ripple Failing to Reach Its Potential	null	-0.6249
29	758	Stablecoin holdings on crypto exchanges hit a new all time high	null	0.9682
29	878	Bitcoin soars 14 after Elon Musk namecheck on Twitter	null	0.9985
29	1178	What s Next For Bitcoin In An Era Of Helicopter Money Negative	null	-0.5719
29	698	Price of worthless cryptocurrency skyrockets by 1 000 thanks to GameStop stock fiasco	null	-0.5106
29	398	WallStreetsBets craze pushes dogecoin up 5x in 24 hours	null	0.7506
29	998	Dogecoin Jumps 600 as Meme Crypto Rides GameStop Retail Wave	null	0.9970
29	938	Dogecoin soars 370 as Reddit group works to send the cryptocurrency to the moon	null	0.9985
29	698	Elon Musk sends Bitcoin soaring 20pc live updates	null	0.9985
28	1358	Bitcoin What is the Death Cross That Heralds the Sharp Fall of This Cryptocurrency	null	-0.5994
29	638	Robinhood restricts Instant Buying of crypto citing extraordinary market conditions	null	0.9136
29	1178	Cryptocurrency Crime Drops in 2020 but Decentralized Finance Losses Rise Study	null	0.9892
29	878	Dogecoin soars 370 as Reddit group works to send the cryptocurrency to the moon	null	0.9985
29	1058	Robinhood restricts crypto trading as Dogecoin soars 300 percent	null	0.9984
29	878	Dogecoin soars 370 as Reddit group works to send the cryptocurrency to the moon	null	0.9985
29	998	Dogecoin soars 370 as Reddit group works to send the cryptocurrency to the moon	null	0.9985
29	878	Dogecoin Becomes Most Mentioned Crypto on Twitter Ever as Price Soars	null	0.9985
29	458	Bitcoin Shoots Up 11 Did Elon Musk DogeCoin Boost Help	null	0.9081
29	218	Bitcoin Jumps Above 38 000 as Musk Adds It to Twitter Profile	null	0.9970
29	818	Bitcoin Soars 14 After Elon Musk Namecheck on Twitter	null	0.9985
29	878	Bitcoin soars 14 after Elon Musk namecheck on Twitter	null	0.9985
29	458	Bitcoin Shoots Up 11 Did Elon Musk Dogecoin Boost Help	null	0.9081
29	758	Bitcoin soars 14 after Elon Musk namecheck on Twitter	null	0.9985
29	758	Bitcoin soars 14 after Elon Musk namecheck on Twitter	null	0.9985
29	578	Bitcoin soars 14 after Elon Musk namecheck on Twitter By Reuters	null	0.9985
29	578	Bitcoin soars 14 after Elon Musk namecheck on Twitter By Reuters	null	0.9985
29	578	Bitcoin soars 14 after Elon Musk namecheck on Twitter By Reuters	null	0.9985
29	578	XRP Climbs 10 45 In Bullish Trade	null	0.9970
29	578	XRP Climbs 10 45 In Bullish Trade	null	0.9970
29	578	XRP Climbs 10 As Investors Gain Confidence By Investing com	null	0.9853
29	218	Dogecoin DOGE shoots 270 higher as WallStreetBets starts to pick up on crypto CryptoSlate	null	0.7906
29	578	Wall Street Just Made the Best Case for Bitcoin Ethereum DeFi Get Ready for Mass Adoption	null	0.7717
29	818	Bitcoin soars 14 after Elon Musk namecheck on Twitter	null	0.9985
29	578	XRP Climbs 10 45 In Rally By Investing com	null	0.9682
29	938	Elon Musk changes Twitter bio to bitcoin chaos ensues	null	-0.5719
29	578	Bitcoin soars 14 after Elon Musk namecheck on Twitter By Reuters	null	0.9985
29	1240	Kraken Coinbase Suffer Outages Amid Market Volatility	null	-0.5423
29	1058	How A Little Bird Is Delivering Trust	null	0.5106
29	1238	GLOBAL MARKETS Dollar stocks slide as virus social trading cools sentiment	null	-0.9970
29	1178	Who s getting rich off GameStop s stock The market makers and middlemen including Robinhood	null	0.5574
29	1178	Dow Jones Today Stocks Drop To Test Support Caterpillar Climbs Bitcoin Rallies Short Squeeze	null	-0.9968
29	1118	Ray Dalio Bitcoin is gold like but governments won t let it win	null	0.9186
29	1058	Here s why Elon Musk s simple Twitter bio change rocketed Bitcoin up 18 CryptoSlate	null	0.7906
29	1118	Zombies not welcome Original altcoins lose ground to DeFi newcomers	null	-0.7304
29	998	GLOBAL MARKETS Wall Street set for weak open on hedge fund retail battle	null	-0.6705
29	938	Billionaire Leon Cooperman says GameStop surge will end very badly for the public and decries	null	-0.5256
29	698	Dogecoin s 600 rally could jumpstart the next altseason	null	0.9682
29	878	Join Us in Miami Love Masters of the Universe	null	0.7506
29	578	Google reportedly scraps thousands of negative Robinhood reviews By Cointelegraph	null	-0.5719
29	578	Robinhood Raises Over 1 Billion In Emergency Funds As Platform Struggles With Reddit Fuelled	null	-0.6249
29	578	GLOBAL MARKETS Dollar stocks slide as virus social trading cools sentiment	null	-0.9970
29	578	GLOBAL MARKETS Wall Street set for weak open on hedge fund retail battle	null	-0.6705
29	578	GLOBAL MARKETS Wall Street set for weak open on hedge fund retail battle	null	-0.6705
60	1381	Are You Buying Bitcoin or Joining a Cult	null	0.9325
29	578	GLOBAL MARKETS Wall Street set for weak open on hedge fund retail battle By Reuters	null	-0.6705
29	1178	Opinion Who s getting rich off GameStop s stock The market makers and middlemen including	null	0.5574
29	1118	U S Stocks Open Lower as GameStop Frenzy Builds	null	-0.5423
29	1118	Dow slides 200 points on concerns of retail investors speculative trading	null	-0.9970
29	1118	World s richest man Elon Musk boosts Bitcoin price by 20 Is 40K back in play	null	0.7964
29	938	Elon Musk changes Twitter bio to bitcoin chaos ensues	null	-0.5719
29	818	Bitcoin soars by 5K in minutes BTC hits 38K after Elon Musk s Dogecoin treatment	null	0.9985
28	1358	Ray Dalio Calls Bitcoin One Hell of an Invention Considers It for New Funds	null	-0.6808
28	1358	The 8 best investing app alternatives to Robinhood	null	0.6369
28	1358	Here are the best investing app alternatives to Robinhood	null	0.6369
28	1358	The 8 best investing app alternatives to Robinhood	null	0.6369
29	1274	Crypto Whale One River Says Volatility to Ease as Prices Rise	null	0.9842
29	1274	The biggest investors in space are cheering on the GameStop trade	null	0.5106
29	578	GameStop back on the rise as Robinhood eases trading ban	null	0.9792
29	518	DeFi bulls continue to roar as Gamestop GME saga continues CryptoSlate	null	0.9325
29	158	DOGE tweet volume up 1800 becomes first altcoin to surpass Bitcoin ever The Tie	null	0.7906
29	578	GLOBAL MARKETS Wall Street set for weak open on hedge fund retail battle By Reuters	null	-0.6705
29	98	FB Stock A Buy Facebook Crushes Q4 Earnings But Predicts High Opt Out Rates	null	0.9882
29	1258	Robinhood restricts instant buying of crypto citing extraordinary market conditions	null	0.9136
29	338	SEC issues warning as GameStop short selling war resumes	null	-0.9652
29	1274	Tim Cook says companies are misleading users and exploiting data as public feud with Facebook	null	-0.7906
29	218	Dollar stocks slide as virus social trading cools sentiment	null	-0.9970
29	218	Dollar stocks slide as virus social trading cools sentiment	null	-0.9970
29	218	Dollar stocks slide as virus social trading cools sentiment	null	-0.9970
29	218	Dollar stocks slide as virus social trading cools sentiment	null	-0.9970
29	938	Elon Musk changes Twitter bio to bitcoin chaos ensues	null	-0.5719
29	1058	Jon Stewart gets a warm welcome on Twitter after joining to defend Reddit traders	null	0.5994
29	758	FinTech Blockchain Market to Gain from Increasing Adoption in Financial Industry Worldwide says	null	0.9818
29	638	FTSE 100 falls expected as GameStop Reddit fallout blows through global markets	null	-0.9993
29	98	Short Squeeze Volatility With GME AMC O Neil Portfolio Manager On Navigating Risk In Crazy	null	-0.5423
28	1358	Here are the best investing app alternatives to Robinhood	null	0.6369
28	1358	How the far right harnessed tech in the lead up to the Capitol riot	null	0.5267
28	1358	How the far right harnessed tech in the lead up to the Capitol riot	null	0.5267
29	131	WallStreetsBets craze pushes dogecoin up 5x in 24 hours	null	0.7506
29	660	Elon Musk changes Twitter bio to bitcoin chaos ensues	null	-0.5719
29	586	Bitcoin soars 11 after Elon Musk namecheck on Twitter Reuters	null	0.9985
29	569	Bitcoin soars 11 after Elon Musk namecheck on Twitter Reuters	null	0.9985
28	848	Cryptocurrency crime drops in 2020 but DeFi breaches rise study finds Reuters	null	0.9910
28	1126	Bitcoin What is the death cross that heralds the sharp fall of this cryptocurrency	null	-0.5994
28	1095	Here are the best investing app alternatives to Robinhood	null	0.6369
28	665	3 Popular Robinhood Stocks That Could Be Better Than Bitcoin in 2021	null	0.6908
29	1118	Robinhood blocks cryptocurrency trading blames extraordinary market conditions	null	-0.5574
29	938	Dogecoin Price Up 975 After Elon Musk s Tweet WallStreetBets Pump	null	0.7906
29	518	Reddit frenzy pumps up Dogecoin a cryptocurrency started as a joke by over 800	null	0.7845
29	38	Will the SEC s Lawsuit Lead to Ripple Failing to Reach Its Potential	null	-0.6249
29	758	Stablecoin holdings on crypto exchanges hit a new all time high	null	0.9682
29	878	Bitcoin soars 14 after Elon Musk namecheck on Twitter	null	0.9985
29	1178	What s Next For Bitcoin In An Era Of Helicopter Money Negative	null	-0.5719
29	698	Price of worthless cryptocurrency skyrockets by 1 000 thanks to GameStop stock fiasco	null	-0.5106
29	398	WallStreetsBets craze pushes dogecoin up 5x in 24 hours	null	0.7506
29	998	Dogecoin Jumps 600 as Meme Crypto Rides GameStop Retail Wave	null	0.9970
29	938	Dogecoin soars 370 as Reddit group works to send the cryptocurrency to the moon	null	0.9985
29	698	Elon Musk sends Bitcoin soaring 20pc live updates	null	0.9985
28	1358	Bitcoin What is the Death Cross That Heralds the Sharp Fall of This Cryptocurrency	null	-0.5994
29	638	Robinhood restricts Instant Buying of crypto citing extraordinary market conditions	null	0.9136
29	1178	Cryptocurrency Crime Drops in 2020 but Decentralized Finance Losses Rise Study	null	0.9892
29	878	Dogecoin soars 370 as Reddit group works to send the cryptocurrency to the moon	null	0.9985
29	1058	Robinhood restricts crypto trading as Dogecoin soars 300 percent	null	0.9984
29	878	Dogecoin soars 370 as Reddit group works to send the cryptocurrency to the moon	null	0.9985
29	998	Dogecoin soars 370 as Reddit group works to send the cryptocurrency to the moon	null	0.9985
29	878	Dogecoin Becomes Most Mentioned Crypto on Twitter Ever as Price Soars	null	0.9985
29	458	Bitcoin Shoots Up 11 Did Elon Musk DogeCoin Boost Help	null	0.9081
29	218	Bitcoin Jumps Above 38 000 as Musk Adds It to Twitter Profile	null	0.9970
29	818	Bitcoin Soars 14 After Elon Musk Namecheck on Twitter	null	0.9985
29	878	Bitcoin soars 14 after Elon Musk namecheck on Twitter	null	0.9985
29	458	Bitcoin Shoots Up 11 Did Elon Musk Dogecoin Boost Help	null	0.9081
29	758	Bitcoin soars 14 after Elon Musk namecheck on Twitter	null	0.9985
29	758	Bitcoin soars 14 after Elon Musk namecheck on Twitter	null	0.9985
29	578	Bitcoin soars 14 after Elon Musk namecheck on Twitter By Reuters	null	0.9985
29	578	Bitcoin soars 14 after Elon Musk namecheck on Twitter By Reuters	null	0.9985
29	578	Bitcoin soars 14 after Elon Musk namecheck on Twitter By Reuters	null	0.9985
29	578	XRP Climbs 10 45 In Bullish Trade	null	0.9970
29	578	XRP Climbs 10 45 In Bullish Trade	null	0.9970
29	578	XRP Climbs 10 As Investors Gain Confidence By Investing com	null	0.9853
29	218	Dogecoin DOGE shoots 270 higher as WallStreetBets starts to pick up on crypto CryptoSlate	null	0.7906
29	578	Wall Street Just Made the Best Case for Bitcoin Ethereum DeFi Get Ready for Mass Adoption	null	0.7717
29	818	Bitcoin soars 14 after Elon Musk namecheck on Twitter	null	0.9985
29	578	XRP Climbs 10 45 In Rally By Investing com	null	0.9682
29	938	Elon Musk changes Twitter bio to bitcoin chaos ensues	null	-0.5719
29	578	Bitcoin soars 14 after Elon Musk namecheck on Twitter By Reuters	null	0.9985
29	1240	Kraken Coinbase Suffer Outages Amid Market Volatility	null	-0.5423
29	1058	How A Little Bird Is Delivering Trust	null	0.5106
29	1238	GLOBAL MARKETS Dollar stocks slide as virus social trading cools sentiment	null	-0.9970
29	1178	Who s getting rich off GameStop s stock The market makers and middlemen including Robinhood	null	0.5574
29	1178	Dow Jones Today Stocks Drop To Test Support Caterpillar Climbs Bitcoin Rallies Short Squeeze	null	-0.9968
29	1118	Ray Dalio Bitcoin is gold like but governments won t let it win	null	0.9186
29	1058	Here s why Elon Musk s simple Twitter bio change rocketed Bitcoin up 18 CryptoSlate	null	0.7906
29	1118	Zombies not welcome Original altcoins lose ground to DeFi newcomers	null	-0.7304
29	998	GLOBAL MARKETS Wall Street set for weak open on hedge fund retail battle	null	-0.6705
29	938	Billionaire Leon Cooperman says GameStop surge will end very badly for the public and decries	null	-0.5256
29	698	Dogecoin s 600 rally could jumpstart the next altseason	null	0.9682
29	878	Join Us in Miami Love Masters of the Universe	null	0.7506
29	578	Google reportedly scraps thousands of negative Robinhood reviews By Cointelegraph	null	-0.5719
29	578	Robinhood Raises Over 1 Billion In Emergency Funds As Platform Struggles With Reddit Fuelled	null	-0.6249
29	578	GLOBAL MARKETS Dollar stocks slide as virus social trading cools sentiment	null	-0.9970
29	578	GLOBAL MARKETS Wall Street set for weak open on hedge fund retail battle	null	-0.6705
29	578	GLOBAL MARKETS Wall Street set for weak open on hedge fund retail battle	null	-0.6705
29	578	GLOBAL MARKETS Wall Street set for weak open on hedge fund retail battle By Reuters	null	-0.6705
29	1178	Opinion Who s getting rich off GameStop s stock The market makers and middlemen including	null	0.5574
29	1118	U S Stocks Open Lower as GameStop Frenzy Builds	null	-0.5423
29	1118	Dow slides 200 points on concerns of retail investors speculative trading	null	-0.9970
29	1118	World s richest man Elon Musk boosts Bitcoin price by 20 Is 40K back in play	null	0.7964
29	938	Elon Musk changes Twitter bio to bitcoin chaos ensues	null	-0.5719
29	818	Bitcoin soars by 5K in minutes BTC hits 38K after Elon Musk s Dogecoin treatment	null	0.9985
28	1358	Ray Dalio Calls Bitcoin One Hell of an Invention Considers It for New Funds	null	-0.6808
28	1358	The 8 best investing app alternatives to Robinhood	null	0.6369
28	1358	Here are the best investing app alternatives to Robinhood	null	0.6369
28	1358	The 8 best investing app alternatives to Robinhood	null	0.6369
29	1274	Crypto Whale One River Says Volatility to Ease as Prices Rise	null	0.9842
29	1274	The biggest investors in space are cheering on the GameStop trade	null	0.5106
29	578	GameStop back on the rise as Robinhood eases trading ban	null	0.9792
29	518	DeFi bulls continue to roar as Gamestop GME saga continues CryptoSlate	null	0.9325
29	158	DOGE tweet volume up 1800 becomes first altcoin to surpass Bitcoin ever The Tie	null	0.7906
29	578	GLOBAL MARKETS Wall Street set for weak open on hedge fund retail battle By Reuters	null	-0.6705
29	98	FB Stock A Buy Facebook Crushes Q4 Earnings But Predicts High Opt Out Rates	null	0.9882
29	1258	Robinhood restricts instant buying of crypto citing extraordinary market conditions	null	0.9136
29	338	SEC issues warning as GameStop short selling war resumes	null	-0.9652
29	1274	Tim Cook says companies are misleading users and exploiting data as public feud with Facebook	null	-0.7906
29	218	Dollar stocks slide as virus social trading cools sentiment	null	-0.9970
29	218	Dollar stocks slide as virus social trading cools sentiment	null	-0.9970
29	218	Dollar stocks slide as virus social trading cools sentiment	null	-0.9970
29	218	Dollar stocks slide as virus social trading cools sentiment	null	-0.9970
29	938	Elon Musk changes Twitter bio to bitcoin chaos ensues	null	-0.5719
29	1058	Jon Stewart gets a warm welcome on Twitter after joining to defend Reddit traders	null	0.5994
29	758	FinTech Blockchain Market to Gain from Increasing Adoption in Financial Industry Worldwide says	null	0.9818
29	638	FTSE 100 falls expected as GameStop Reddit fallout blows through global markets	null	-0.9993
29	98	Short Squeeze Volatility With GME AMC O Neil Portfolio Manager On Navigating Risk In Crazy	null	-0.5423
28	1358	Here are the best investing app alternatives to Robinhood	null	0.6369
28	1358	How the far right harnessed tech in the lead up to the Capitol riot	null	0.5267
28	1358	How the far right harnessed tech in the lead up to the Capitol riot	null	0.5267
29	131	WallStreetsBets craze pushes dogecoin up 5x in 24 hours	null	0.7506
29	660	Elon Musk changes Twitter bio to bitcoin chaos ensues	null	-0.5719
29	586	Bitcoin soars 11 after Elon Musk namecheck on Twitter Reuters	null	0.9985
29	569	Bitcoin soars 11 after Elon Musk namecheck on Twitter Reuters	null	0.9985
28	848	Cryptocurrency crime drops in 2020 but DeFi breaches rise study finds Reuters	null	0.9910
28	1126	Bitcoin What is the death cross that heralds the sharp fall of this cryptocurrency	null	-0.5994
28	1095	Here are the best investing app alternatives to Robinhood	null	0.6369
28	665	3 Popular Robinhood Stocks That Could Be Better Than Bitcoin in 2021	null	0.6908
29	1089	India Would Ban Private Cryptocurrencies Under Proposed Legislation CoinDesk	null	-0.5574
29	1149	Two Bars for Bitcoins Owner in New York s Hell s Kitchen Selling Out for Cryptocurrency	null	-0.9618
29	1089	Robinhood Halts Instant Buying Power For Crypto	null	0.9325
29	249	Reddit frenzy pumps up Dogecoin a cryptocurrency started as a joke by over 800	null	0.7845
29	849	Robinhood blocks cryptocurrency trading blames extraordinary market conditions	null	-0.5574
29	1209	Dogecoin jumps more than 300 as Reddit tries to take on Wall Street	null	0.9970
29	669	Dogecoin Price Up 975 After Elon Musk s Tweet WallStreetBets Pump	null	0.7906
29	969	Bitcoin s spike drives rebound in hard hit crypto mining stocks	null	0.9810
29	549	Stablecoin holdings on crypto exchanges hit a new all time high	null	0.9682
29	129	WallStreetsBets craze pushes dogecoin up 5x in 24 hours	null	0.7506
29	429	Price of worthless cryptocurrency skyrockets by 1 000 thanks to GameStop stock fiasco	null	-0.5106
29	909	What s Next For Bitcoin In An Era Of Helicopter Money Negative	null	-0.5719
29	309	Two bars for bitcoins owner in New York s Hell s Kitchen selling out for cryptocurrency By Reuters	null	-0.9618
29	669	Dogecoin Becomes Most Mentioned Crypto on Twitter Ever as Price Soars CoinDesk	null	0.9985
29	429	Elon Musk sends Bitcoin soaring 20pc	null	0.9985
29	909	Cryptocurrency Crime Drops in 2020 but Decentralized Finance Losses Rise Study	null	0.9892
29	609	Dogecoin soars 370 as Reddit group works to send the cryptocurrency to the moon	null	0.9985
29	609	Dogecoin soars 370 as Reddit group works to send the cryptocurrency to the moon	null	0.9985
29	1149	Two bars for bitcoins owner in New York s Hell s Kitchen selling out for cryptocurrency	null	-0.9618
29	789	Robinhood restricts crypto trading as Dogecoin soars 300 percent	null	0.9984
29	669	Dogecoin Becomes Most Mentioned Crypto on Twitter Ever as Price Soars	null	0.9985
29	1149	Two bars for bitcoins owner in New York s Hell s Kitchen selling out for cryptocurrency	null	-0.9618
29	1149	Two bars for bitcoins owner in New York s Hell s Kitchen selling out for cryptocurrency	null	-0.9618
29	969	Kraken Coinbase Suffer Outages Amid Market Volatility CoinDesk	null	-0.5423
29	1149	Two bars for bitcoins owner in New York s Hell s Kitchen selling out for cryptocurrency	null	-0.9618
29	789	Dogecoin soars 370 as Reddit group works to send the cryptocurrency to the moon	null	0.9985
29	729	Dogecoin soars 370 as Reddit group works to send the cryptocurrency to the moon	null	0.9985
29	609	Dogecoin soars 370 as Reddit group works to send the cryptocurrency to the moon NewsChannel	null	0.9985
29	189	Bitcoin Shoots Up 11 Did Elon Musk DogeCoin Boost Help	null	0.9081
29	669	Bitcoin soars 14 after Elon Musk namecheck on Twitter	null	0.9985
29	729	Dogecoin soars 370 as Reddit group works to send the cryptocurrency to the moon	null	0.9985
29	1089	India Would Ban Private Cryptocurrencies Under Proposed Legislation	null	-0.5574
29	729	Dogecoin soars 370 as Reddit group works to send the cryptocurrency to the moon KION546	null	0.9985
29	609	Bitcoin soars 14 after Elon Musk namecheck on Twitter	null	0.9985
29	1029	Robinhood restricts Instant Buying of crypto citing extraordinary market conditions	null	0.9136
29	489	Bitcoin soars 14 after Elon Musk namecheck on Twitter	null	0.9985
29	489	Dogecoin soars 370 as Reddit group works to send the cryptocurrency to the moon	null	0.9985
29	1029	Robinhood restricts Instant Buying of crypto citing extraordinary market conditions	null	0.9136
29	309	Bitcoin soars 14 after Elon Musk namecheck on Twitter By Reuters	null	0.9985
29	549	Bitcoin Soars 14 After Elon Musk Namecheck on Twitter	null	0.9985
29	609	Bitcoin soars 14 after Elon Musk namecheck on Twitter	null	0.9985
29	1209	Everything we know about the GameStop stock insanity	null	-0.5719
29	729	Dogecoin soars 370 as Reddit group works to send the cryptocurrency to the moon	null	0.9985
29	729	Dogecoin soars 370 as Reddit group works to send the cryptocurrency to the moon	null	0.9985
29	729	Dogecoin soars 370 as Reddit group works to send the cryptocurrency to the moon	null	0.9985
29	729	Dogecoin soars 370 as Reddit group works to send the cryptocurrency to the moon	null	0.9985
29	669	Elon Musk changes Twitter bio to bitcoin chaos ensues	null	-0.5719
29	309	Bitcoin soars 14 after Elon Musk namecheck on Twitter By Reuters	null	0.9985
29	309	Bitcoin soars 14 after Elon Musk namecheck on Twitter By Reuters	null	0.9985
29	309	Bitcoin soars 14 after Elon Musk namecheck on Twitter By Reuters	null	0.9985
29	189	Bitcoin Shoots Up 11 Did Elon Musk Dogecoin Boost Help	null	0.9081
29	309	XRP Climbs 10 45 In Rally By Investing com	null	0.9682
29	69	Litecoin Climbs 10 11 In Rally	null	0.9682
29	189	Ray Dalio Clears His Stance On Bitcoin Calls It Amazing Accomplishment	null	0.6249
29	69	Bitcoin Climbs 10 18 In Rally	null	0.9682
29	9	Litecoin Climbs 10 11 In Rally By Investing com	null	0.9682
29	9	Bitcoin Climbs 10 In Bullish Trade By Investing com	null	0.9970
29	9	Litecoin Climbs 10 In Bullish Trade By Investing com	null	0.9970
29	9	Bitcoin Climbs 10 18 In Rally By Investing com	null	0.9682
29	189	Ray Dalio Clears His Stance On Bitcoin Calls Is Amazing Accomplishment	null	0.6249
29	849	Dogecoin soars 370 as Reddit group works to send the cryptocurrency to the moon	null	0.9985
29	1209	Elon Musk and Ray Dalio Send Bitcoin Stocks Soaring	null	0.9985
29	1209	Elon Musk and Ray Dalio Send Bitcoin Stocks Soaring The Motley Fool	null	0.9984
29	1329	Analysis GameStop s Reddit Rally Puts Scrutiny on Social Media Forums	null	0.9682
29	1209	Bitcoin Soars After Tesla CEO Elon Musk Says This 1 Word on Twitter	null	0.9985
29	789	How A Little Bird Is Delivering Trust	null	0.5106
29	1209	GLOBAL MARKETS Dollar stocks slide as virus social trading cools sentiment	null	-0.9970
29	1149	Short selling What it is why it s risky and how the squeeze happens	null	-0.9413
29	1089	Downtown Weatherford building damaged after man crashes into it officials say	null	-0.9993
29	1029	Robinhood restricts instant buying of crypto citing extraordinary market conditions	null	0.9136
29	1329	Analysis GameStop s Reddit rally puts scrutiny on social media forums	null	0.9682
29	1329	Analysis GameStop s Reddit rally puts scrutiny on social media forums	null	0.9682
29	969	5 best stock trading apps for iPhone 9to5Mac	null	0.6369
29	909	U S Stocks Open Lower as GameStop Frenzy Builds	null	-0.5423
29	909	Dow slides 200 points on concerns of retail investors speculative trading	null	-0.9970
29	909	World s richest man Elon Musk boosts Bitcoin price by 20 Is 40K back in play	null	0.7964
29	1360	Dogecoin soars another 600 as Reddit frenzy pushes the token into the top 10 cryptocurrencies by	null	0.9985
29	669	Elon Musk changes Twitter bio to bitcoin chaos ensues	null	-0.5719
29	729	GLOBAL MARKETS Wall Street set for weak open on hedge fund retail battle	null	-0.6705
29	669	Billionaire Leon Cooperman says GameStop surge will end very badly for the public and decries	null	-0.5256
29	429	Dogecoin s 600 rally could jumpstart the next altseason	null	0.9682
29	609	Join Us in Miami Love Masters of the Universe	null	0.7506
29	549	Bitcoin soars by 5K in minutes BTC hits 38K after Elon Musk s Dogecoin treatment	null	0.9985
29	309	GLOBAL MARKETS Dollar stocks slide as virus social trading cools sentiment By Reuters	null	-0.9970
29	309	GLOBAL MARKETS Wall Street set for weak open on hedge fund retail battle	null	-0.6705
29	309	GLOBAL MARKETS Wall Street set for weak open on hedge fund retail battle	null	-0.6705
29	309	GLOBAL MARKETS Wall Street set for weak open on hedge fund retail battle By Reuters	null	-0.6705
29	309	GLOBAL MARKETS Wall Street set for weak open on hedge fund retail battle By Reuters	null	-0.6705
29	309	GameStop back on the rise as Robinhood eases trading ban	null	0.9792
29	489	FinTech Blockchain Market to Gain from Increasing Adoption in Financial Industry Worldwide says	null	0.9818
29	309	Google reportedly scraps thousands of negative Robinhood reviews By Cointelegraph	null	-0.5719
29	909	Who s getting rich off GameStop s stock The market makers and middlemen including Robinhood	null	0.5574
29	909	Dow Jones Today Stocks Drop To Test Support Caterpillar Climbs Bitcoin Rallies Short Squeeze	null	-0.9968
29	789	Here s why Elon Musk s simple Twitter bio change rocketed Bitcoin up 18 CryptoSlate	null	0.7906
29	309	Bitcoin to Win From Short Squeeze Financial Rebellion Experts Say	null	0.5106
29	309	Bitcoin to Win From Short Squeeze Financial Rebellion Experts By Investing com	null	0.5106
29	309	Robinhood Raises Over 1 Billion In Emergency Funds As Platform Struggles With Reddit Fuelled	null	-0.6249
29	309	GLOBAL MARKETS Dollar stocks slide as virus social trading cools sentiment	null	-0.9970
29	309	GLOBAL MARKETS Dollar stocks slide as virus social trading cools sentiment	null	-0.9970
29	309	GLOBAL MARKETS Wall Street set for weak open on hedge fund retail battle By Reuters	null	-0.6705
29	249	DeFi bulls continue to roar as Gamestop GME saga continues CryptoSlate	null	0.9325
29	189	Alleged dog fighting ring busted 11 people arrested also face drug charges	null	-0.7717
29	1269	US stocks suffer worst week since October amid Reddit fueled trading craze	null	-0.9906
29	309	Bitcoin to Win From Short Squeeze Financial Rebellion Experts Say	null	0.5106
29	309	Bitcoin to Win From Short Squeeze Financial Rebellion Experts Say By Investing com	null	0.5106
29	309	Bitcoin to Win From Short Squeeze Financial Rebellion Experts Say By Investing com	null	0.5106
29	309	Bitcoin to Win From Short Squeeze Financial Rebellion Experts Say By Investing com	null	0.5106
29	309	Bitcoin to Win From Short Squeeze Financial Rebellion Experts Say By Investing com	null	0.5106
29	309	GLOBAL MARKETS Dollar stocks slide as virus social trading cools sentiment	null	-0.9970
29	309	GLOBAL MARKETS Dollar stocks slide as virus social trading cools sentiment By Reuters	null	-0.9970
29	969	GLOBAL MARKETS Dollar stocks slide as virus social trading cools sentiment	null	-0.9970
29	909	Zombies not welcome Original altcoins lose ground to DeFi newcomers	null	-0.7304
29	69	SEC issues warning as GameStop short selling war resumes	null	-0.9652
29	129	Global Markets Dollar stocks slide as virus social trading cools sentiment	null	-0.9970
29	131	WallStreetsBets craze pushes dogecoin up 5x in 24 hours	null	0.7506
29	660	Elon Musk changes Twitter bio to bitcoin chaos ensues	null	-0.5719
29	586	Bitcoin soars 11 after Elon Musk namecheck on Twitter Reuters	null	0.9985
29	1095	Bitcoin soars 14 on Musk namecheck on Twitter Reuters	null	0.9985
29	569	Bitcoin soars 11 after Elon Musk namecheck on Twitter Reuters	null	0.9985
28	848	Cryptocurrency crime drops in 2020 but DeFi breaches rise study finds Reuters	null	0.9910
28	1126	Bitcoin What is the death cross that heralds the sharp fall of this cryptocurrency	null	-0.5994
29	1223	Dogecoin jumps more than 300 as Reddit tries to take on Wall Street CNET	null	0.9970
29	1147	Two Bars for Bitcoins Owner in New York s Hell s Kitchen Selling Out for Cryptocurrency	null	-0.9618
29	1327	Bitcoin s spike drives rebound in hard hit crypto mining stocks	null	0.9810
29	1087	India Would Ban Private Cryptocurrencies Under Proposed Legislation CoinDesk	null	-0.5574
29	847	Robinhood blocks cryptocurrency trading blames extraordinary market conditions	null	-0.5574
30	67	GMI Model Estimates Bitcoin Fair Value At 300K By October 2021	null	0.5719
30	643	Dogecoin Price Up 975 After Elon Musk s Tweet WallStreetBets Pump	null	0.7906
29	1087	Robinhood Halts Instant Buying Power For Crypto	null	0.9325
29	1267	What is Dogecoin and Why Are People Buying It	null	0.9325
29	907	What s Next For Bitcoin In An Era Of Helicopter Money Negative	null	-0.5719
29	727	Dogecoin soars 370 as Reddit group works to send the cryptocurrency to the moon KION546	null	0.9985
29	907	Cryptocurrency Crime Drops in 2020 but Decentralized Finance Losses Rise Study	null	0.9892
29	1147	Two bars for bitcoins owner in New York s Hell s Kitchen selling out for cryptocurrency	null	-0.9618
29	1147	Two bars for bitcoins owner in New York s Hell s Kitchen selling out for cryptocurrency	null	-0.9618
29	1147	CORRECTED Two bars for bitcoins owner in New York s Hell s Kitchen selling out for cryptocurrency	null	-0.9618
29	1207	Two bars for bitcoins owner in New York s Hell s Kitchen selling out for cryptocurrency	null	-0.9618
29	1147	Two bars for bitcoins owner in New York s Hell s Kitchen selling out for cryptocurrency	null	-0.9618
29	1147	Two bars for bitcoins owner in New York s Hell s Kitchen selling out for cryptocurrency	null	-0.9618
29	727	Dogecoin soars 370 as Reddit group works to send the cryptocurrency to the moon	null	0.9985
30	427	India Plans to Introduce Legislation to Ban Cryptocurrencies	null	-0.5574
29	1027	Robinhood restricts Instant Buying of crypto citing extraordinary market conditions	null	0.9136
29	1087	Bitcoin soars 14 on Musk namecheck on Twitter	null	0.9985
30	7	Robinhood users are furious that it intervened in GameStop trading This map reveals where they are	null	-0.5719
29	1087	Ray Dalio clarifies his position on Bitcoin saying he greatly admires it CryptoSlate	null	0.5709
29	1327	Analysis GameStop s Reddit rally puts scrutiny on social media forums	null	0.9682
29	1087	India Would Ban Private Cryptocurrencies Under Proposed Legislation	null	-0.5574
29	787	Dogecoin soars 370 as Reddit group works to send the cryptocurrency to the moon	null	0.9985
30	7	Robinhood users are furious that it intervened in GameStop trading This map reveals where they are	null	-0.5719
29	787	Robinhood restricts crypto trading as Dogecoin soars 300 percent	null	0.9984
29	727	Dogecoin soars 370 as Reddit group works to send the cryptocurrency to the moon	null	0.9985
29	727	Dogecoin soars 370 as Reddit group works to send the cryptocurrency to the moon	null	0.9985
29	727	Dogecoin soars 370 as Reddit group works to send the cryptocurrency to the moon	null	0.9985
29	727	Dogecoin soars 370 as Reddit group works to send the cryptocurrency to the moon	null	0.9985
29	1027	Tron Ticker Confusion Would Be TRX Crypto Investors Mistakenly Buy Tanzanian Gold TRX Stock	null	-0.5267
29	1207	KDKA Investigates Financial Advisors Explain Dangers Of Treating Buying Stocks Like Sports Gambling	null	0.9231
29	1207	Everything we know about the GameStop stock insanity	null	-0.5719
29	847	Dogecoin soars 370 as Reddit group works to send the cryptocurrency to the moon	null	0.9985
29	1327	Analysis GameStop s Reddit Rally Puts Scrutiny on Social Media Forums	null	0.9682
29	1267	Analysis GameStop s Reddit rally puts scrutiny on social media forums	null	0.9682
30	7	After a tumultuous week some fear Robinhood s actions set a horrible precedent	null	-0.7717
30	7	After a tumultuous week some fear Robinhood s actions set a horrible precedent	null	-0.7717
29	1207	Bitcoin Soars After Tesla CEO Elon Musk Says This 1 Word on Twitter	null	0.9985
29	1207	Elon Musk and Ray Dalio Send Bitcoin Stocks Soaring The Motley Fool	null	0.9984
29	1327	Analysis GameStop s Reddit rally puts scrutiny on social media forums	null	0.9682
29	1327	Analysis GameStop s Reddit rally puts scrutiny on social media forums	null	0.9682
29	1207	Bitcoin Soars After Tesla CEO Elon Musk Says This 1 Word on Twitter The Motley Fool	null	0.9984
29	1387	Dogecoin soars another 600 as Reddit frenzy pushes the token into the top 10 cryptocurrencies by	null	0.9985
29	1087	Downtown Weatherford building damaged after man crashes into it officials say	null	-0.9993
29	907	World s richest man Elon Musk boosts Bitcoin price by 20 Is 40K back in play	null	0.7964
29	907	Ray Dalio Bitcoin is gold like but governments won t let it win	null	0.9186
29	907	Zombies not welcome Original altcoins lose ground to DeFi newcomers	null	-0.7304
29	907	Opinion Who s getting rich off GameStop s stock The market makers and middlemen including	null	0.5574
29	907	U S Stocks Open Lower as GameStop Frenzy Builds	null	-0.5423
29	907	Dow slides 200 points on concerns of retail investors speculative trading	null	-0.9970
29	907	Who s getting rich off GameStop s stock The market makers and middlemen including Robinhood	null	0.5574
29	907	Dow Jones Today Stocks Drop To Test Support Caterpillar Climbs Bitcoin Rallies Short Squeeze	null	-0.9968
29	727	GLOBAL MARKETS Wall Street set for weak open on hedge fund retail battle	null	-0.6705
30	643	Billionaire Leon Cooperman says GameStop surge will end very badly for the public and decries	null	-0.5256
29	967	Kraken Coinbase Suffer Outages Amid Market Volatility	null	-0.5423
29	787	How A Little Bird Is Delivering Trust	null	0.5106
30	307	These 3 Red Hot Stocks Could Plunge More than 50 If Wall Street s Right	null	-0.9988
30	127	Analysis GameStop s Reddit rally puts scrutiny on social media forums	null	0.9682
30	307	Fun and GameStop National Review	null	0.5106
29	1207	Govt may introduce bill to ban control and regulate cryptocurrencies	null	-0.5574
30	307	These 3 Red Hot Stocks Could Plunge More than 50 If Wall Street s Right The Motley Fool	null	-0.9989
29	1327	Analysis GameStop s Reddit rally puts scrutiny on social media forums	null	0.9682
29	1207	Elon Musk and Ray Dalio Send Bitcoin Stocks Soaring	null	0.9985
29	1147	Short selling What it is why it s risky and how the squeeze happens	null	-0.9413
29	1267	US stocks suffer worst week since October amid Reddit fueled trading craze	null	-0.9906
29	1207	GLOBAL MARKETS Dollar stocks slide as virus social trading cools sentiment	null	-0.9970
29	967	GLOBAL MARKETS Dollar stocks slide as virus social trading cools sentiment	null	-0.9970
29	967	5 best stock trading apps for iPhone 9to5Mac	null	0.6369
29	1027	Robinhood restricts instant buying of crypto citing extraordinary market conditions	null	0.9136
29	847	Here s why Elon Musk s simple Twitter bio change rocketed Bitcoin up 18 CryptoSlate	null	0.7906
29	787	Jon Stewart gets a warm welcome on Twitter after joining to defend Reddit traders	null	0.5994
29	727	Far right extremists use GameStop chaos to radicalize and recruit on Telegram	null	-0.5719
29	131	WallStreetsBets craze pushes dogecoin up 5x in 24 hours	null	0.7506
29	660	Elon Musk changes Twitter bio to bitcoin chaos ensues	null	-0.5719
29	586	Bitcoin soars 11 after Elon Musk namecheck on Twitter Reuters	null	0.9985
29	1095	Bitcoin soars 14 on Musk namecheck on Twitter Reuters	null	0.9985
29	569	Bitcoin soars 11 after Elon Musk namecheck on Twitter Reuters	null	0.9985
29	1223	Dogecoin jumps more than 300 as Reddit tries to take on Wall Street CNET	null	0.9970
30	247	Meme Based Cryptocurrency Dogecoin Surges 822 to Record High	null	0.9682
29	1309	Analysis GameStop s Reddit rally puts scrutiny on social media forums Reuters	null	0.9682
30	704	India plans to introduce law to ban Bitcoin other private cryptocurrencies	null	-0.5574
29	1184	Two Bars for Bitcoins Owner in New York s Hell s Kitchen Selling Out for Cryptocurrency	null	-0.9618
29	1244	Dogecoin jumps more than 300 as Reddit tries to take on Wall Street	null	0.9970
29	1124	India Would Ban Private Cryptocurrencies Under Proposed Legislation CoinDesk	null	-0.5574
29	1124	Robinhood Halts Instant Buying Power For Crypto	null	0.9325
29	1304	Bitcoin s spike drives rebound in hard hit crypto mining stocks	null	0.9810
30	44	GMI Model Estimates Bitcoin Fair Value At 300K By October 2021	null	0.5719
29	1304	What is Dogecoin and Why Are People Buying It	null	0.9325
29	1124	Two bars for bitcoins owner in New York s Hell s Kitchen selling out for cryptocurrency	null	-0.9618
29	1424	Robinhood users are furious that it intervened in GameStop trading This map reveals where they are	null	-0.5719
29	1184	Two bars for bitcoins owner in New York s Hell s Kitchen selling out for cryptocurrency	null	-0.9618
29	1124	CORRECTED Two bars for bitcoins owner in New York s Hell s Kitchen selling out for cryptocurrency	null	-0.9618
30	284	Litecoin Falls 11 39 In Selloff	null	-0.9997
30	284	XRP Soars 30 63 In Rally By Investing com	null	0.9990
30	284	Litecoin Falls 11 39 In Selloff By Investing com	null	-0.9997
30	284	XRP Climbs 10 65 In Rally By Investing com	null	0.9682
30	404	India Plans to Introduce Legislation to Ban Cryptocurrencies	null	-0.5574
30	284	XRP Climbs 10 65 In Bullish Trade	null	0.9970
29	1124	Ray Dalio clarifies his position on Bitcoin saying he greatly admires it CryptoSlate	null	0.5709
29	1304	Analysis GameStop s Reddit rally puts scrutiny on social media forums	null	0.9682
29	1184	KDKA Investigates Financial Advisors Explain Dangers Of Treating Buying Stocks Like Sports Gambling	null	0.9231
29	1124	India Would Ban Private Cryptocurrencies Under Proposed Legislation	null	-0.5574
29	1184	Everything we know about the GameStop stock insanity	null	-0.5719
30	284	Bitcoin Falls 10 22 In Rout	null	-0.9993
30	980	Robinhood restricts Instant Buying of crypto citing extraordinary market conditions	null	0.9136
29	1424	Robinhood users are furious that it intervened in GameStop trading This map reveals where they are	null	-0.5719
30	764	9 great reads from CNET this week	null	0.6249
30	644	5 Awful Stocks Robinhood Investors Can t Stop Buying	null	0.8689
30	344	These 3 Red Hot Stocks Could Plunge More than 50 If Wall Street s Right	null	-0.9988
30	344	These 3 Red Hot Stocks Could Plunge More than 50 If Wall Street s Right The Motley Fool	null	-0.9989
30	344	Fun and GameStop National Review	null	0.5106
30	344	Fun and GameStop	null	0.5106
29	1244	Analysis GameStop s Reddit rally puts scrutiny on social media forums	null	0.9682
29	1424	After a tumultuous week some fear Robinhood s actions set a horrible precedent	null	-0.7717
29	1424	After a tumultuous week some fear Robinhood s actions set a horrible precedent	null	-0.7717
29	1244	Bitcoin Soars After Tesla CEO Elon Musk Says This 1 Word on Twitter	null	0.9985
29	1304	US stocks suffer worst week since October amid Reddit fueled trading craze	null	-0.9906
29	1244	GLOBAL MARKETS Dollar stocks slide as virus social trading cools sentiment	null	-0.9970
29	1064	Downtown Weatherford building damaged after man crashes into it officials say	null	-0.9993
30	980	Robinhood restricts instant buying of crypto citing extraordinary market conditions	null	0.9136
29	1184	Govt may introduce bill to ban control and regulate cryptocurrencies	null	-0.5574
30	164	Analysis GameStop s Reddit rally puts scrutiny on social media forums	null	0.9682
29	1184	Elon Musk and Ray Dalio Send Bitcoin Stocks Soaring	null	0.9985
29	1184	Elon Musk and Ray Dalio Send Bitcoin Stocks Soaring The Motley Fool	null	0.9984
29	1304	Analysis GameStop s Reddit rally puts scrutiny on social media forums	null	0.9682
29	1304	Analysis GameStop s Reddit rally puts scrutiny on social media forums	null	0.9682
29	1304	Analysis GameStop s Reddit Rally Puts Scrutiny on Social Media Forums	null	0.9682
29	1364	Dogecoin soars another 600 as Reddit frenzy pushes the token into the top 10 cryptocurrencies by	null	0.9985
29	1304	Ethereum Price Prediction ETH on the verge of a 30 breakout towards 1 900	null	0.9325
29	1184	Short selling What it is why it s risky and how the squeeze happens	null	-0.9413
30	692	India plans to introduce law to ban Bitcoin other private cryptocurrencies	null	-0.5574
29	131	WallStreetsBets craze pushes dogecoin up 5x in 24 hours	null	0.7506
29	660	Elon Musk changes Twitter bio to bitcoin chaos ensues	null	-0.5719
29	586	Bitcoin soars 11 after Elon Musk namecheck on Twitter Reuters	null	0.9985
29	1095	Bitcoin soars 14 on Musk namecheck on Twitter Reuters	null	0.9985
29	569	Bitcoin soars 11 after Elon Musk namecheck on Twitter Reuters	null	0.9985
29	1223	Dogecoin jumps more than 300 as Reddit tries to take on Wall Street CNET	null	0.9970
30	247	Meme Based Cryptocurrency Dogecoin Surges 822 to Record High	null	0.9682
29	1309	Analysis GameStop s Reddit rally puts scrutiny on social media forums Reuters	null	0.9682
30	724	India plans to introduce law to ban Bitcoin other private cryptocurrencies	null	-0.5574
29	1144	Two Bars for Bitcoins Owner in New York s Hell s Kitchen Selling Out for Cryptocurrency	null	-0.9618
29	1204	Dogecoin jumps more than 300 as Reddit tries to take on Wall Street	null	0.9970
29	1144	India Would Ban Private Cryptocurrencies Under Proposed Legislation CoinDesk	null	-0.5574
29	1324	Bitcoin s spike drives rebound in hard hit crypto mining stocks	null	0.9810
30	64	GMI Model Estimates Bitcoin Fair Value At 300K By October 2021	null	0.5719
29	1204	Two bars for bitcoins owner in New York s Hell s Kitchen selling out for cryptocurrency	null	-0.9618
29	1144	Two bars for bitcoins owner in New York s Hell s Kitchen selling out for cryptocurrency	null	-0.9618
29	1144	Two bars for bitcoins owner in New York s Hell s Kitchen selling out for cryptocurrency	null	-0.9618
29	1084	Robinhood Halts Instant Buying Power For Crypto	null	0.9325
29	1144	Two bars for bitcoins owner in New York s Hell s Kitchen selling out for cryptocurrency	null	-0.9618
29	1144	Two bars for bitcoins owner in New York s Hell s Kitchen selling out for cryptocurrency	null	-0.9618
30	304	XRP Jumps 20 32 In Rally By Investing com	null	0.9982
30	304	XRP Climbs 10 65 In Rally By Investing com	null	0.9682
30	304	Litecoin Falls 11 39 In Selloff By Investing com	null	-0.9997
30	1000	Robinhood restricts Instant Buying of crypto citing extraordinary market conditions	null	0.9136
29	1084	Bitcoin soars 14 on Musk namecheck on Twitter	null	0.9985
30	304	XRP Soars 30 63 In Rally By Investing com	null	0.9990
30	1000	Tron Ticker Confusion Would Be TRX Crypto Investors Mistakenly Buy Tanzanian Gold TRX Stock	null	-0.5267
29	1384	180M Bitcoin Trust Completes Canadian IPO Fully Invested on First Day CoinDesk	null	0.5106
30	4	Robinhood users are furious that it intervened in GameStop trading This map reveals where they are	null	-0.5719
29	1384	180M Bitcoin Trust Completes Canadian IPO Fully Invested on First Day	null	0.5106
29	1324	Analysis GameStop s Reddit rally puts scrutiny on social media forums	null	0.9682
29	1084	India Would Ban Private Cryptocurrencies Under Proposed Legislation	null	-0.5574
30	4	Robinhood users are furious that it intervened in GameStop trading This map reveals where they are	null	-0.5719
30	304	Litecoin Falls 11 39 In Selloff	null	-0.9997
30	304	XRP Climbs 10 65 In Bullish Trade	null	0.9970
30	424	India Plans to Introduce Legislation to Ban Cryptocurrencies	null	-0.5574
30	304	Bitcoin Falls 10 22 In Rout	null	-0.9993
30	1000	Robinhood restricts Instant Buying of crypto citing extraordinary market conditions	null	0.9136
29	1084	Ray Dalio clarifies his position on Bitcoin saying he greatly admires it CryptoSlate	null	0.5709
29	1204	KDKA Investigates Financial Advisors Explain Dangers Of Treating Buying Stocks Like Sports Gambling	null	0.9231
29	1204	Everything we know about the GameStop stock insanity	null	-0.5719
30	784	9 great reads from CNET this week	null	0.6249
30	664	5 Awful Stocks Robinhood Investors Can t Stop Buying	null	0.8689
30	304	These 3 Red Hot Stocks Could Plunge More than 50 If Wall Street s Right The Motley Fool	null	-0.9989
29	1204	Elon Musk and Ray Dalio Send Bitcoin Stocks Soaring	null	0.9985
30	304	Fun and GameStop	null	0.5106
29	1204	Elon Musk and Ray Dalio Send Bitcoin Stocks Soaring The Motley Fool	null	0.9984
29	1324	Analysis GameStop s Reddit rally puts scrutiny on social media forums	null	0.9682
29	1264	Analysis GameStop s Reddit rally puts scrutiny on social media forums	null	0.9682
30	4	After a tumultuous week some fear Robinhood s actions set a horrible precedent	null	-0.7717
29	1264	Bitcoin Soars After Tesla CEO Elon Musk Says This 1 Word on Twitter The Motley Fool	null	0.9984
29	1264	US stocks suffer worst week since October amid Reddit fueled trading craze	null	-0.9906
29	1204	GLOBAL MARKETS Dollar stocks slide as virus social trading cools sentiment	null	-0.9970
29	1084	Downtown Weatherford building damaged after man crashes into it officials say	null	-0.9993
29	1204	Govt may introduce bill to ban control and regulate cryptocurrencies	null	-0.5574
30	664	5 Awful Stocks Robinhood Investors Can t Stop Buying The Motley Fool	null	0.7845
30	304	These 3 Red Hot Stocks Could Plunge More than 50 If Wall Street s Right	null	-0.9988
30	124	Analysis GameStop s Reddit rally puts scrutiny on social media forums	null	0.9682
30	304	Fun and GameStop National Review	null	0.5106
29	1324	Analysis GameStop s Reddit rally puts scrutiny on social media forums	null	0.9682
29	1324	Analysis GameStop s Reddit rally puts scrutiny on social media forums	null	0.9682
29	1384	Dogecoin soars another 600 as Reddit frenzy pushes the token into the top 10 cryptocurrencies by	null	0.9985
29	1264	Ethereum Price Prediction ETH on the verge of a 30 breakout towards 1 900	null	0.9325
30	692	India plans to introduce law to ban Bitcoin other private cryptocurrencies	null	-0.5574
29	131	WallStreetsBets craze pushes dogecoin up 5x in 24 hours	null	0.7506
29	660	Elon Musk changes Twitter bio to bitcoin chaos ensues	null	-0.5719
29	586	Bitcoin soars 11 after Elon Musk namecheck on Twitter Reuters	null	0.9985
29	1095	Bitcoin soars 14 on Musk namecheck on Twitter Reuters	null	0.9985
29	569	Bitcoin soars 11 after Elon Musk namecheck on Twitter Reuters	null	0.9985
29	1223	Dogecoin jumps more than 300 as Reddit tries to take on Wall Street CNET	null	0.9970
30	247	Meme Based Cryptocurrency Dogecoin Surges 822 to Record High	null	0.9682
29	1309	Analysis GameStop s Reddit rally puts scrutiny on social media forums Reuters	null	0.9682
30	724	India plans to introduce law to ban Bitcoin other private cryptocurrencies	null	-0.5574
29	1144	Two Bars for Bitcoins Owner in New York s Hell s Kitchen Selling Out for Cryptocurrency	null	-0.9618
29	1204	Dogecoin jumps more than 300 as Reddit tries to take on Wall Street	null	0.9970
29	1144	India Would Ban Private Cryptocurrencies Under Proposed Legislation CoinDesk	null	-0.5574
29	1324	Bitcoin s spike drives rebound in hard hit crypto mining stocks	null	0.9810
30	64	GMI Model Estimates Bitcoin Fair Value At 300K By October 2021	null	0.5719
29	1204	Two bars for bitcoins owner in New York s Hell s Kitchen selling out for cryptocurrency	null	-0.9618
29	1264	What is Dogecoin and Why Are People Buying It	null	0.9325
29	1144	Two bars for bitcoins owner in New York s Hell s Kitchen selling out for cryptocurrency	null	-0.9618
29	1144	Two bars for bitcoins owner in New York s Hell s Kitchen selling out for cryptocurrency	null	-0.9618
29	1084	Robinhood Halts Instant Buying Power For Crypto	null	0.9325
29	1144	Two bars for bitcoins owner in New York s Hell s Kitchen selling out for cryptocurrency	null	-0.9618
62	1081	Oil up ahead of OPEC gold under pressure MarketPulse	null	0.7003
29	1144	Two bars for bitcoins owner in New York s Hell s Kitchen selling out for cryptocurrency	null	-0.9618
30	304	XRP Jumps 20 32 In Rally By Investing com	null	0.9982
30	304	XRP Climbs 10 65 In Rally By Investing com	null	0.9682
30	304	Litecoin Falls 11 39 In Selloff By Investing com	null	-0.9997
30	1000	Robinhood restricts Instant Buying of crypto citing extraordinary market conditions	null	0.9136
29	1084	Bitcoin soars 14 on Musk namecheck on Twitter	null	0.9985
30	304	XRP Soars 30 63 In Rally By Investing com	null	0.9990
30	1000	Tron Ticker Confusion Would Be TRX Crypto Investors Mistakenly Buy Tanzanian Gold TRX Stock	null	-0.5267
29	1384	180M Bitcoin Trust Completes Canadian IPO Fully Invested on First Day CoinDesk	null	0.5106
30	4	Robinhood users are furious that it intervened in GameStop trading This map reveals where they are	null	-0.5719
29	1384	180M Bitcoin Trust Completes Canadian IPO Fully Invested on First Day	null	0.5106
29	1324	Analysis GameStop s Reddit rally puts scrutiny on social media forums	null	0.9682
29	1084	India Would Ban Private Cryptocurrencies Under Proposed Legislation	null	-0.5574
30	4	Robinhood users are furious that it intervened in GameStop trading This map reveals where they are	null	-0.5719
30	304	Litecoin Falls 11 39 In Selloff	null	-0.9997
30	304	XRP Climbs 10 65 In Bullish Trade	null	0.9970
30	424	India Plans to Introduce Legislation to Ban Cryptocurrencies	null	-0.5574
30	304	Bitcoin Falls 10 22 In Rout	null	-0.9993
30	1000	Robinhood restricts Instant Buying of crypto citing extraordinary market conditions	null	0.9136
29	1084	Ray Dalio clarifies his position on Bitcoin saying he greatly admires it CryptoSlate	null	0.5709
29	1204	KDKA Investigates Financial Advisors Explain Dangers Of Treating Buying Stocks Like Sports Gambling	null	0.9231
29	1204	Everything we know about the GameStop stock insanity	null	-0.5719
30	784	9 great reads from CNET this week	null	0.6249
30	664	5 Awful Stocks Robinhood Investors Can t Stop Buying	null	0.8689
30	304	These 3 Red Hot Stocks Could Plunge More than 50 If Wall Street s Right The Motley Fool	null	-0.9989
29	1204	Elon Musk and Ray Dalio Send Bitcoin Stocks Soaring	null	0.9985
30	304	Fun and GameStop	null	0.5106
29	1204	Elon Musk and Ray Dalio Send Bitcoin Stocks Soaring The Motley Fool	null	0.9984
29	1324	Analysis GameStop s Reddit rally puts scrutiny on social media forums	null	0.9682
29	1264	Analysis GameStop s Reddit rally puts scrutiny on social media forums	null	0.9682
30	4	After a tumultuous week some fear Robinhood s actions set a horrible precedent	null	-0.7717
29	1264	Bitcoin Soars After Tesla CEO Elon Musk Says This 1 Word on Twitter The Motley Fool	null	0.9984
29	1264	US stocks suffer worst week since October amid Reddit fueled trading craze	null	-0.9906
29	1204	GLOBAL MARKETS Dollar stocks slide as virus social trading cools sentiment	null	-0.9970
29	1084	Downtown Weatherford building damaged after man crashes into it officials say	null	-0.9993
29	1204	Govt may introduce bill to ban control and regulate cryptocurrencies	null	-0.5574
30	664	5 Awful Stocks Robinhood Investors Can t Stop Buying The Motley Fool	null	0.7845
30	304	These 3 Red Hot Stocks Could Plunge More than 50 If Wall Street s Right	null	-0.9988
30	124	Analysis GameStop s Reddit rally puts scrutiny on social media forums	null	0.9682
30	304	Fun and GameStop National Review	null	0.5106
29	1324	Analysis GameStop s Reddit rally puts scrutiny on social media forums	null	0.9682
29	1324	Analysis GameStop s Reddit rally puts scrutiny on social media forums	null	0.9682
29	1384	Dogecoin soars another 600 as Reddit frenzy pushes the token into the top 10 cryptocurrencies by	null	0.9985
29	1264	Ethereum Price Prediction ETH on the verge of a 30 breakout towards 1 900	null	0.9325
30	692	India plans to introduce law to ban Bitcoin other private cryptocurrencies	null	-0.5574
29	131	WallStreetsBets craze pushes dogecoin up 5x in 24 hours	null	0.7506
29	660	Elon Musk changes Twitter bio to bitcoin chaos ensues	null	-0.5719
29	586	Bitcoin soars 11 after Elon Musk namecheck on Twitter Reuters	null	0.9985
29	1095	Bitcoin soars 14 on Musk namecheck on Twitter Reuters	null	0.9985
29	569	Bitcoin soars 11 after Elon Musk namecheck on Twitter Reuters	null	0.9985
29	1223	Dogecoin jumps more than 300 as Reddit tries to take on Wall Street CNET	null	0.9970
30	247	Meme Based Cryptocurrency Dogecoin Surges 822 to Record High	null	0.9682
29	1309	Analysis GameStop s Reddit rally puts scrutiny on social media forums Reuters	null	0.9682
30	974	Dogecoin crashes as Reddit fuelled cryptocurrency joke falls flat	null	-0.9998
30	674	India plans to introduce law to ban Bitcoin other private cryptocurrencies	null	-0.5574
30	1094	India s Proposed Crypto Ban Has Investors Nervous May Feed Anti Bitcoin Narrative	null	-0.7906
30	74	GMI Model Estimates Bitcoin Fair Value At 300K By October 2021	null	0.5719
30	314	Litecoin Falls 11 39 In Selloff	null	-0.9997
30	314	XRP Soars 30 63 In Rally By Investing com	null	0.9990
30	314	XRP Jumps 20 32 In Rally By Investing com	null	0.9982
30	314	XRP Climbs 10 65 In Rally By Investing com	null	0.9682
30	314	Litecoin Falls 11 39 In Selloff By Investing com	null	-0.9997
30	434	India Plans to Introduce Legislation to Ban Cryptocurrencies	null	-0.5574
30	314	XRP Soars 31 In Rally By Investing com	null	0.9990
29	1394	180M Bitcoin Trust Completes Canadian IPO Fully Invested on First Day CoinDesk	null	0.5106
30	14	Robinhood users are furious that it intervened in GameStop trading This map reveals where they are	null	-0.5719
29	1394	180M Bitcoin Trust Completes Canadian IPO Fully Invested on First Day	null	0.5106
30	314	XRP Jumps 20 32 In Rally	null	0.9982
30	314	Bitcoin Falls 10 22 In Rout	null	-0.9993
30	314	XRP Climbs 10 65 In Bullish Trade	null	0.9970
30	1034	FB Stock A Buy Facebook Crushes Q4 Earnings But Predicts High Opt Out Rates	null	0.9882
30	794	9 great reads from CNET this week	null	0.6249
30	674	5 Awful Stocks Robinhood Investors Can t Stop Buying The Motley Fool	null	0.7845
30	314	These 3 Red Hot Stocks Could Plunge More than 50 If Wall Street s Right The Motley Fool	null	-0.9989
30	314	Fun and GameStop	null	0.5106
30	14	After a tumultuous week some fear Robinhood s actions set a horrible precedent	null	-0.7717
30	1310	Dogecoin soars another 600 as Reddit frenzy pushes the token into the top 10 cryptocurrencies by	null	0.9985
30	674	5 Awful Stocks Robinhood Investors Can t Stop Buying	null	0.8689
30	314	These 3 Red Hot Stocks Could Plunge More than 50 If Wall Street s Right	null	-0.9988
30	134	Analysis GameStop s Reddit rally puts scrutiny on social media forums	null	0.9682
30	314	Fun and GameStop National Review	null	0.5106
30	314	Bitcoin Market Looking for New Lows After Elon Musk s Pump Dump	null	-0.5267
30	692	India plans to introduce law to ban Bitcoin other private cryptocurrencies	null	-0.5574
29	131	WallStreetsBets craze pushes dogecoin up 5x in 24 hours	null	0.7506
29	660	Elon Musk changes Twitter bio to bitcoin chaos ensues	null	-0.5719
29	586	Bitcoin soars 11 after Elon Musk namecheck on Twitter Reuters	null	0.9985
29	1095	Bitcoin soars 14 on Musk namecheck on Twitter Reuters	null	0.9985
29	569	Bitcoin soars 11 after Elon Musk namecheck on Twitter Reuters	null	0.9985
29	1223	Dogecoin jumps more than 300 as Reddit tries to take on Wall Street CNET	null	0.9970
30	247	Meme Based Cryptocurrency Dogecoin Surges 822 to Record High	null	0.9682
30	1271	Reddit Frenzy Pumps Up Dogecoin A Cryptocurrency Started As A Joke	null	0.7845
29	1309	Analysis GameStop s Reddit rally puts scrutiny on social media forums Reuters	null	0.9682
30	980	Dogecoin crashes as Reddit fuelled cryptocurrency joke falls flat	null	-0.9998
30	1100	India s Proposed Crypto Ban Has Investors Nervous May Feed Anti Bitcoin Narrative	null	-0.7906
30	1160	Dogecoin crashes as Reddit fuelled cryptocurrency joke falls flat	null	-0.9998
30	1100	India s Proposed Crypto Ban Has Investors Nervous May Feed Anti Bitcoin Narrative CoinDesk	null	-0.7906
31	740	Two bars for bitcoins owner in New York s Hell s Kitchen selling out for cryptocurrency amNewYork	null	-0.9618
31	320	XRP Climbs 52 49 In Bullish Trade By Investing com	null	0.9970
31	80	EOS Climbs 10 In Bullish Trade By Investing com	null	0.9970
30	1160	XRP price gains 86 after Wall Street Bets crypto wing says pump it	null	0.9786
30	1280	Judge Rejects Virgil Griffith s Motion to Dismiss Charges of Aiding North Korea	null	-0.6486
31	320	EOS Climbs 10 07 In Bullish Trade	null	0.9970
31	80	EOS Climbs 10 07 In Rally By Investing com	null	0.9682
31	800	Robinhood Is a Perfect Example of Fintech s Insidious Power	null	0.5719
31	560	What you need to know on the markets this week Eat the rich Robinhood s reckoning after	null	0.5574
31	200	Analysts say Bitcoin could pop back up after accumulation CryptoSlate	null	0.7906
30	1040	FB Stock A Buy Facebook Crushes Q4 Earnings But Predicts High Opt Out Rates	null	0.9882
31	800	What shares were hot in the last week GameStop AMC Entertainment and more Investing com UK	null	0.6124
30	692	India plans to introduce law to ban Bitcoin other private cryptocurrencies	null	-0.5574
30	247	Meme Based Cryptocurrency Dogecoin Surges 822 to Record High	null	0.9682
30	1271	Reddit Frenzy Pumps Up Dogecoin A Cryptocurrency Started As A Joke	null	0.7845
30	351	FAA is Investigating SpaceX Over Launch License Violations During the Explosive Starship Test	null	-0.5267
31	651	After Massive Dogecoin Crash Ripple s XRP Has Suddenly Rocketed Higher In WallStreetBets Price Surge	null	-0.9993
30	751	Government plans to introduce legislation to ban cryptocurrencies	null	-0.5574
30	357	Government to introduce bills to set up DFI Digital Currency	null	0.7906
31	784	iPhone taken in crime spree and more Capitol rioters arrested in the Apple Crime Blotter	null	-0.8850
30	332	These 3 Red Hot Stocks Could Plunge More than 50 If Wall Street s Right	null	-0.9988
30	1091	India s Proposed Ban of Private Cryptos Has Many of the Nation s Investors Nervous	null	-0.6908
30	994	Dogecoin crashes as Reddit fuelled cryptocurrency joke falls flat	null	-0.9998
30	1293	Judge Rejects Virgil Griffith s Motion to Dismiss Charges of Aiding North Korea	null	-0.6486
32	608	XRP Erases SEC Led Drop as Supporters Pump Price Over 0 60	null	-0.9968
31	1195	XRP Posted Biggest Single Day Gain in 3 Years in a Coordinated Buying Attack	null	0.9905
32	535	A Good Thing Elon Musk Says He s a Supporter of Bitcoin	null	0.6124
31	1015	Dogecoin Caught Up In Reddit Frenzy Remains Low After Rally	null	0.6908
31	715	The 4 Most Dangerous Bitcoin Stocks	null	-0.5256
32	535	A Good Thing Elon Musk Says He s a Supporter of Bitcoin CoinDesk	null	0.6124
32	475	India proposes law to ban cryptocurrencies CyberNews	null	-0.5574
32	295	EOS Climbs 10 27 In Bullish Trade	null	0.9970
32	295	XRP Soars 30 09 In Rally By Investing com	null	0.9990
32	295	EOS Climbs 10 As Investors Gain Confidence By Investing com	null	0.9853
31	1075	Indian government looking to crack down on crypto scams with proposed ban Cashaa CEO	null	-0.8126
31	715	Stellar Lumens Is Worth Keeping An Eye On As Scarcity Should Drive Value	null	0.5106
32	295	XRP Soars 30 In Rally By Investing com	null	0.9990
32	295	XRP Soars 30 09 In Rally	null	0.9990
31	955	Redditors rally as Dogecoin halves in value following a sevenfold surge last week	null	0.9732
31	715	Two bars for bitcoins owner in New York s Hell s Kitchen selling out for cryptocurrency amNewYork	null	-0.9618
31	1255	Bitcoin Bears Erase the Elon Musk Candle as Sellers Take Control	null	-0.9325
32	475	Robinhood boss promises Elon Musk he ll relax GameStop limits live updates	null	0.6705
31	1135	Bitcoin Falls Back to 32K as Elon Musk s Bio Change Fades Into Memory	null	-0.9993
32	115	85 Dogecoin rally shows Wall Street Bets aren t done with DOGE yet	null	0.9682
31	715	The 4 Most Dangerous Bitcoin Stocks The Motley Fool	null	-0.7425
31	1195	XRP Posted Biggest Single Day Gain in 3 Years in a Coordinated Buying Attack CoinDesk	null	0.9905
31	1015	Dogecoin Caught Up In Reddit Frenzy Remains Low After Rally	null	0.6908
32	535	UK Research and Innovation suffers ransomware attack ZDNet	null	-0.5574
32	295	Will GameStop and Reddit Hurt My 401 k	null	-0.5267
32	115	Hedge fund Melvin Capital loses 7bn on GameStop frenzy	null	-0.5574
32	115	Hedge fund Melvin Capital loses 7bn on GameStop frenzy	null	-0.5574
31	775	MARK TO MARKET Hold on tight Bitcoin rally 2 0	null	0.9682
31	1195	Why Did Twitch Ban the Pogchamp Emote	null	-0.5574
31	1195	Robinhood boss shuts down Elon Musk s GameStop conspiracy theories live updates	null	-0.5267
31	1075	Robinhood Is a Perfect Example of Fintech s Insidious Power	null	0.5719
32	295	Switzerland s Crypto Broker AG Wins Securities House License From FINMA	null	0.7096
32	295	Switzerland s Crypto Broker AG Wins Securities House License From FINMA CoinDesk	null	0.7096
31	955	Mets owner Steve Cohen deletes Twitter after family receives threats amid stock market turmoil	null	-0.6486
31	955	Mets owner Steve Cohen deletes Twitter after family receives threats amid stock market turmoil	null	-0.6486
31	955	Mets owner Steve Cohen deletes Twitter after family receives threats amid stock market turmoil	null	-0.6486
32	295	A Rally in Bitcoin Sparked by Elon Musk Has Almost Evaporated	null	0.9682
31	1135	Bitcoin Falls Back to 32K as Elon Musk s Bio Change Fades Into Memory CoinDesk	null	-0.9993
31	1015	Fed s Powell just talked up a classic Buffett market bogeyman Inflation	null	0.7906
31	955	What you need to know on the markets this week Eat the rich Robinhood s reckoning after	null	0.5574
31	895	What shares were hot in the last week GameStop AMC Entertainment and more Investing com UK	null	0.6124
30	692	India plans to introduce law to ban Bitcoin other private cryptocurrencies	null	-0.5574
30	247	Meme Based Cryptocurrency Dogecoin Surges 822 to Record High	null	0.9682
30	1271	Reddit Frenzy Pumps Up Dogecoin A Cryptocurrency Started As A Joke	null	0.7845
30	351	FAA is Investigating SpaceX Over Launch License Violations During the Explosive Starship Test	null	-0.5267
31	651	After Massive Dogecoin Crash Ripple s XRP Has Suddenly Rocketed Higher In WallStreetBets Price Surge	null	-0.9993
30	751	Government plans to introduce legislation to ban cryptocurrencies	null	-0.5574
30	357	Government to introduce bills to set up DFI Digital Currency	null	0.7906
31	784	iPhone taken in crime spree and more Capitol rioters arrested in the Apple Crime Blotter	null	-0.8850
30	332	These 3 Red Hot Stocks Could Plunge More than 50 If Wall Street s Right	null	-0.9988
30	1091	India s Proposed Ban of Private Cryptos Has Many of the Nation s Investors Nervous	null	-0.6908
30	994	Dogecoin crashes as Reddit fuelled cryptocurrency joke falls flat	null	-0.9998
32	844	XRP Pump Fails to Materialize as Price Crashes 40 From Day s High	null	-0.9990
33	4	Steven Seagal a Missing Private Eye and an Alleged Crypto Fraud	null	-0.7184
33	580	XRP Erases SEC Led Drop as Supporters Pump Price Over 0 60	null	-0.9968
32	784	XRP soars as much as 50 and Dogecoin jumps as day traders flex their muscles and Elon Musk adds to	null	0.9995
33	4	Sham crypto exec who partnered with Steven Seagal busted for investor fraud	null	-0.5859
33	304	XRP Plunges 30 91 In Bearish Trade By Investing com	null	-0.9997
32	1264	Here s What The World s Richest Person Thinks About Bitcoin	null	0.5267
33	304	XRP Plunges 30 91 In Bearish Trade	null	-0.9997
33	304	XRP Plunges 31 In Bearish Trade By Investing com	null	-0.9997
32	1324	Feds arrest crypto fraudster accusing of bilking investors out of millions	null	-0.7650
33	124	Santa Ana man accused of connection to 11 million securities fraud	null	-0.5859
33	580	XRP Erases SEC Led Drop as Supporters Pump Price Over 0 60 CoinDesk	null	-0.9968
33	184	Santa Ana Man Charged in NY With Cryptocurrency Scam MyNewsLA com	null	-0.6705
32	1084	How risky is Ripple s XRP The dangers of buying the cryptocurrency explained	null	0.8750
32	664	Bitcoin Posts Comeback Rally on Elon Musk Comment Analyst Sees ATH	null	0.9682
33	580	Cryptocurrencies Like Bitcoin Are Far From Safe Investments	null	0.6597
32	844	Reddit rage as XRP price crashes 50 hours after hitting two week highs	null	-0.9993
32	1324	Feds arrest crypto fraudster accusing of bilking investors out of millions	null	-0.7650
32	1324	Feds arrest crypto fraudster accusing of bilking investors out of millions	null	-0.7650
33	64	California man charged in 11 million cryptocurrency fraud that bilked New Yorkers sources and	null	-0.6808
32	784	Dogecoin Price Up 37 After Weekend Plunge Bullish Push From Reddit Group Expected	null	-0.9882
32	1024	Two Main Reasons for HSBT Hits a Record High	null	0.9682
32	724	Top 3 Price Prediction Bitcoin Ethereum Ripple XRP pumps towards 1 as the Bitcoin rally cools	null	0.9712
32	844	XRP Pump Fails to Materialize as Price Crashes 40 From Day s High CoinDesk	null	-0.9990
32	664	US Man Pleads Guilty to Money Laundering Charges Involving 13M in Bitcoin	null	-0.5994
32	664	US Man Pleads Guilty to Money Laundering Charges Involving 13M in Bitcoin CoinDesk	null	-0.5994
32	1324	Bitcoin price is sideways silver hits a 7 year high and XRP s rally pops	null	0.9918
33	4	CryptoQuant CEO says Coinbase Bitcoin outflows are a bullish signal	null	0.9970
32	904	Grayscale Reopens Its Ethereum Trust to Investors	null	0.5106
32	664	Elon Musk says he s a supporter of bitcoin and thinks it will get broad acceptance in finance	null	0.6249
33	364	Man wanted in Carlos Ghosn s escape accuses US of betrayal WTOP	null	-0.6705
33	544	Former Green Beret wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
33	424	On chain metrics reveal buying power ready to flow into Bitcoin for the ultimate push to 50 000	null	0.9477
33	304	Former Green Beret wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
33	64	Man wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
33	64	Man wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
32	1324	Man wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
32	1324	Man wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
32	1324	Man wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
32	1324	Man wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
32	1324	Man wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
32	1324	Man wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
32	1324	Man wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
32	1324	Man wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
32	1324	Man wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
32	1324	Man wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
32	1324	Man wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
32	1324	Man wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
32	1324	Man wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
32	1324	Man wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
32	1324	Man wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
32	1324	Man wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
32	1324	Man wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
32	1324	Man wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
32	1324	Man wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
32	1204	WhatsApp Assures Users of Its Commitment to Your Privacy	null	0.5994
32	1144	Man wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
32	1084	Mark Cuban How selling stamps as a kid helped me see why digital assets are the future of business	null	-0.9231
32	964	Shares of audio technology company Agora soar as investors try to jump on Clubhouse app s growth	null	0.5859
32	964	Leaving Robinhood Here s Are 5 Robinhood Alternatives for Frustrated Reddit Investors	null	-0.5267
32	904	Bitcoin bounces back as main street invades Wall Street	null	0.9818
32	904	Grayscale Reopens Its Ethereum Trust to Investors CoinDesk	null	0.5106
33	184	Man wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
33	184	Man wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
33	64	Man wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
33	64	Man wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
33	64	Man Wanted in Carlos Ghosn s Escape Accuses US of Betrayal	null	-0.6705
33	4	MONEY MONDAY The Gamestop stock fiasco explained	null	-0.5106
33	4	Former Green Beret accuses US of betrayal for OK ing extradition to Japan in smuggling case	null	-0.7482
32	1324	Man wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
32	1324	Man wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
32	1324	Man wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
32	1324	Man wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
32	1324	Man wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
32	1324	Man wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
32	1324	Man wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
32	1324	Man wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
32	1324	Man wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
32	1324	Man wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
32	1324	Man wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
32	1324	Man wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
32	724	Why the Bitcoin price dropped immediately after Musk s positive comments CryptoSlate	null	0.5574
32	1324	Man wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
32	1324	Man wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
32	1324	Man wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
32	974	How a Series of Elon Musk Tweets Helped Lead Investors to Dogecoin a Meme Inspired Cryptocurrency Worth 4 Cents	null	0.6249
32	384	Indian gov t proposes to ban private cryptocurrency	null	-0.5574
32	120	India plans national digital currency plus a ban on private crypto cash	null	-0.5574
32	363	India Wants to Ban Bitcoin and Other Private Cryptocurrencies	null	-0.5574
32	867	XRP Pump Fails to Materialize as Price Crashes 40 From Day s High	null	-0.9990
32	605	XRP Erases SEC Led Drop as Supporters Pump Price Over 0 60	null	-0.9968
32	550	A Good Thing Elon Musk Says He s a Supporter of Bitcoin	null	0.6124
35	1310	Market Wrap Bitcoin Drops to 36 3K as DeFi Jumps to 32B on Ether FOMO	null	0.9970
35	950	Cryptocurrency live Latest as Dogecoin rockets up on Elon Musk Twitter endorsement	null	0.8519
35	1010	What is dogecoin Elon Musk has sent the meme cryptocurrency soaring	null	0.9985
36	590	Twitter s Jack Dorsey has fired up a full Bitcoin node	null	0.5267
36	50	Bitcoin Price Closing Above This Hurdle Sends Bulls Off To The Races	null	0.9325
35	950	Bitcoin Buying Will Rise This Year Says Survey ETF Trends	null	0.9918
36	290	It s the perfect time to own Bitcoin says City fund manager	null	0.5719
35	1070	Blockchain Bites The Rise of the Bitcoin Investment Fund CoinDesk	null	0.9818
35	890	Sweet Launches Broad Scale NFT Solution For Leading Entertainment And Consumer Brands In Partnership	null	0.7964
35	1250	Institutional Buyers the Likely Suspect Behind Latest Bitcoin Rally What s Next	null	0.9628
35	1310	Market Wrap Bitcoin Drops to 36 3K as DeFi Jumps to 32B on Ether FOMO CoinDesk	null	0.9970
36	650	Twitter CEO Jack Dorsey Has Set up His Own Bitcoin Node	null	0.7906
35	830	Top 3 Price Prediction Bitcoin Ethereum Ripple Bitcoin on the launchpad to 40 000 as ETH rally	null	0.9712
36	746	Dogecoin soars 50 after Elon Musk praises Bitcoin rival as the people s crypto	null	0.9986
35	1010	Tom Lee gives the long term bullish case for bitcoin and why it s better than gold	null	0.9972
35	890	Sweet Launches Broad Scale NFT Solution for Leading Entertainment and Consumer Brands in Partnership	null	0.7964
35	950	Sweet launches broad scale NFT solution in partnership with Bitcoin com	null	0.6486
36	746	Forget Bitcoin Inside the insane world of altcoin cryptocurrency trading	null	-0.5574
35	830	Bitcoin Rally Continues But Lacks Confirmation	null	0.9682
35	1130	Discord servers targeted in cryptocurrency exchange scam wave ZDNet	null	-0.7506
36	650	3 Catalysts That Propelled Cardano ADA to Its Three Year High	null	0.9682
36	590	Elon Musk s Dogecoin Tweets Worry Crypto Community Situation Seriously Damaging	null	-0.7845
35	1130	The Rise and Fall of Bitcoin Billionaire Arthur Hayes	null	0.9818
36	746	Is ether or elon musk pulling the crypto market up	null	0.7906
35	890	Ethereum catapults to new all time high past 1 600 as investors pile in ahead of next week s launch	null	0.9682
35	1010	What is dogecoin Elon Musk has sent the meme cryptocurrency soaring	null	0.9985
35	950	Croatia s Tifon Gas Stations Hope to Tap Tourist Trade With Crypto Payment Support	null	0.6808
36	746	Musk backs dogecoin Apple car euro slide continues BOE oil rises gold falls on strong dollar	null	-0.9997
35	1130	Book publishers scramble to sign Reddit rally authors	null	0.9682
35	1070	Elon Musk gets back on Twitter sends Dogecoin soaring	null	0.9985
35	830	Musk backs dogecoin Apple car euro slide continues BOE oil rises gold falls on strong dollar	null	-0.9997
36	290	Musk Helps Crypto Market Value Climb to Record in Volatile Week	null	0.9001
35	1070	Super Bowl LV HODL Or Bet	null	0.9619
36	350	Crypto escrow agent dodges jail after lying over stolen millions	null	-0.7650
36	530	Crypto Hedge Fund Founder Pleads Guilty to 90M Fraud CoinDesk	null	-0.7650
35	1430	PayPal is aiming to become a financial super app Silicon Valley Business Journal	null	0.5994
36	590	Robinhood lifts trading restrictions on Reddit darlings GameStop and AMC days after relaxing limits	null	0.7506
36	530	Online Casino with The Best Reward Program EconoTimes	null	0.8360
35	1370	Yearn Finance DAI Vault Has Suffered an Exploit 13 8M Drained CoinDesk	null	-0.7269
35	1370	Online Super Bowl Bets Expected to Increase 63 This Year	null	0.7351
35	1070	Instagram Unmasks High Profile OG Account Stealers Threatens to Sue	null	0.9451
35	1070	Dogecoin goes up over 40 after Elon Musk Mark Cuban tweet about it	null	0.7906
35	1010	Elon Musk Sent The Price Of Dogecoin Soaring With One Word Tweet	null	0.9985
35	950	Crypto Is the Libertarian Cheat Code in the Final Battle Over State Coercion	null	-0.5719
35	890	Sandstorm Gold briefly spikes 55 after Elon Musk praises a techno song with a similar name on	null	0.5267
35	1070	Dogecoin goes up over 40 after Elon Musk Mark Cuban tweet about it	null	0.7906
35	830	PayPal PYPL Soars 6 After Profit Triples Firms Raise Numbers and PTs Amid Super App	null	0.9987
35	830	Ethereum Triangle Breakout Shifts Price Target to Over 2 000	null	0.9325
35	830	Elon Musk s Twitter Comeback Sends Dogecoin Up Over 0 05	null	0.7906
35	766	Learn About Bitcoin So You Can Intelligently Invest in Cryptocurrency	null	0.5046
35	781	Forget Bitcoin Inside the insane world of altcoin cryptocurrency trading CNET	null	-0.5574
35	1061	Dogecoin goes up over 40 after Elon Musk Mark Cuban tweet about it	null	0.7906
37	1018	Bitcoin Rally Takes Crypto Market Value to New Record	null	0.9732
37	958	Bitcoin Reclaims 40K Mark Moving Closer To All Time High	null	0.9682
37	778	Bitcoin mining is horrible for the environment Here s what we can do about it	null	-0.5423
37	958	Bitcoin Reclaims 40K Mark Moving Closer To All Time High	null	0.9682
37	658	A bitcoin stash worth 68 million was seized by German police but the owner won t give up his	null	0.9517
36	1318	Market Wrap Bitcoin Rises to 38 3K While Ether s New High Takes Spotlight	null	0.9682
36	1438	Twitter CEO Jack Dorsey is setting up a bitcoin node	null	0.7906
37	298	God Of Dogecoin It s Not Just Tesla CEO Elon Musk Pumping The Joke Bitcoin Rival s Price	null	0.5106
36	1318	Market Wrap Bitcoin Rises to 38 3K While Ether s New High Takes Spotlight CoinDesk	null	0.9682
36	1378	Women make up only 15 of bitcoin traders highlighting the crypto world s glaring gender imbalance	null	0.7906
37	898	Bill Miller s Flagship Fund May Now Buy GBTC to Gain Bitcoin Exposure of Up to 15	null	0.9886
37	1078	Combined value of digital coins tops 1 2trn as Bitcoin hits 40 000 again	null	0.6908
37	1078	Combined value of digital coins tops 1 2trn as Bitcoin hits 40 000 again	null	0.6908
37	598	The institutionalization of BTC Mining may be more profitable than buying	null	0.9549
37	418	600M iGaming Platform Integrates FUN Token	null	0.6166
36	1258	German court can t cash 60M in bitcoin from man who won t give up passwords	null	0.8934
36	1258	German court can t cash 60M in bitcoin from man who won t give up passwords	null	0.8934
36	1258	German court can t cash 60M in bitcoin from man who won t give up passwords	null	0.8934
36	1258	German court can t cash 60M in bitcoin from man who won t give up passwords	null	0.8934
36	1258	German court can t cash 60M in bitcoin from man who won t give up passwords	null	0.8934
36	1258	German court can t cash 60M in bitcoin from man who won t give up passwords	null	0.8934
36	1258	German court can t cash 60M in bitcoin from man who won t give up passwords	null	0.8934
36	1258	German court can t cash 60M in bitcoin from man who won t give up passwords	null	0.8934
36	1258	German court can t cash 60M in bitcoin from man who won t give up passwords	null	0.8934
36	1258	German court can t cash 60M in bitcoin from man who won t give up passwords	null	0.8934
36	1258	German court can t cash 60M in bitcoin from man who won t give up passwords	null	0.8934
36	1258	German court can t cash 60M in bitcoin from man who won t give up passwords	null	0.8934
36	1258	German court can t cash 60M in bitcoin from man who won t give up passwords	null	0.8934
36	1258	German court can t cash 60M in bitcoin from man who won t give up passwords	null	0.8934
36	1258	German court can t cash 60M in bitcoin from man who won t give up passwords	null	0.8934
36	1258	German court can t cash 60M in bitcoin from man who won t give up passwords	null	0.8934
36	1378	MoneyLine Podcast The Chance to Profit From This 1 6T Industry Is Just Beginning	null	0.5994
62	1261	Why Square Stock Is Giving Away Gains From Yesterday	null	0.9840
37	1078	Serbian Man Extradited to US After Being Indicted In 70 Million Crypto Fraud CoinDesk	null	-0.5859
37	58	Altcoin Market Cap On The Verge Of Life Changing Breakout	null	0.9325
36	1258	German court can t cash 60M in bitcoin from man who won t give up passwords	null	0.8934
36	1258	German court can t cash 60M in bitcoin from man who won t give up passwords	null	0.8934
37	658	Elon Musk sent Dogecoin soaring last week Here are 6 times the Tesla boss has moved markets from	null	0.9985
36	1378	The IRS says teachers can deduct hand sanitizer costs and how Dolly Parton s Super Bowl ad glosses	null	0.7964
37	838	Thinking of Selling Stock Ask Yourself These Questions First The Motley Fool	null	-0.9509
37	838	Thinking of Selling Stock Ask Yourself These Questions First	null	-0.9325
37	778	New York Is Calling the Up and Comers	null	0.7906
37	298	Cardano Climbs 11 31 In Rally	null	0.9682
37	298	Cardano Climbs 11 As Investors Gain Confidence By Investing com	null	0.9853
37	298	Cardano Climbs 11 31 In Rally By Investing com	null	0.9682
37	238	It seems like a lifeline but it s not COVID 19 relief scams targeting Carolinians who are	null	-0.8308
37	178	Litecoin Climbs 10 14 In Bullish Trade By Investing com	null	0.9970
37	1078	Serbian Man Extradited to US After Being Indicted in 70M Crypto Fraud	null	-0.5859
37	958	Ethereum Price Prediction ETH ready to rise to new highs following crucial rebound	null	0.9957
37	778	9 great reads from CNET this week	null	0.6249
37	778	Cybersecurity An Attackers Perspective Model Portfolio Channel	null	-0.5719
36	1378	The IRS says teachers can deduct hand sanitizer costs and how Dolly Parton s Super Bowl ad glosses	null	0.7964
37	238	It seems like a lifeline but it s not COVID 19 relief scams targeting Carolinians who are	null	-0.8308
36	1438	Crypto exchange Bitfinex says it repaid 550 million Tether loan central to fraud probe	null	-0.5859
36	1378	The IRS says teachers can deduct hand sanitizer costs and how Dolly Parton s Super Bowl ad glosses	null	0.7964
35	766	Learn About Bitcoin So You Can Intelligently Invest in Cryptocurrency	null	0.5046
36	781	Is earning Bitcoin with each swipe the credit card reward of the future These cards think so	null	0.7430
36	841	NewsWatch U S gains just 49 000 jobs in January Labor market still under acute stress	null	0.9781
35	781	Forget Bitcoin Inside the insane world of altcoin cryptocurrency trading CNET	null	-0.5574
38	612	Dogecoin s price jumped as high as 35 after Elon Musk tweeted Dogecoin to the Moooonn in a	null	0.9682
37	1032	Bitcoin Rally Takes Crypto Market Value to New Record	null	0.9732
37	1272	Bitcoin Tops 40k Mark Ether At All Time High Amid Crypto Markets Boom	null	0.9758
37	732	Bitcoin eyes 50K less than a month after BTC price broke its 2017 all time high	null	0.9595
37	792	Bitcoin mining is horrible for the environment Here s what we can do about it	null	-0.5423
37	972	Bitcoin Reclaims 40K Mark Moving Closer To All Time High	null	0.9682
37	972	Bitcoin Reclaims 40K Mark Moving Closer To All Time High	null	0.9682
37	1272	Bitcoin Tops 40k Mark Ether At All Time High Amid Crypto Markets Boom	null	0.9758
37	912	Bill Miller s Flagship Fund May Now Buy GBTC to Gain Bitcoin Exposure of Up to 15	null	0.9886
37	912	Bill Miller s Flagship Fund May Now Buy GBTC to Gain Bitcoin Exposure of Up to 15 CoinDesk	null	0.9886
38	552	Bitcoin rally takes market cap of over 6 000 cryptocurrencies to whopping new high of 1 24 trillion	null	0.9918
37	1032	Serbian Man Extradited to US After Being Indicted In 70 Million Crypto Fraud CoinDesk	null	-0.5859
37	1032	Serbian Man Extradited to US After Being Indicted in 70M Crypto Fraud	null	-0.5859
37	972	Ethereum Price Prediction ETH ready to rise to new highs following crucial rebound	null	0.9957
37	852	Thinking of Selling Stock Ask Yourself These Questions First The Motley Fool	null	-0.9509
37	792	9 great reads from CNET this week	null	0.6249
37	732	Cybersecurity An Attackers Perspective Model Portfolio Channel	null	-0.5719
37	792	New York Is Calling the Up and Comers	null	0.7906
37	732	These are the top 10 US states where Dogecoin s popularity shot up after a group of Redditors	null	0.8979
35	766	Learn About Bitcoin So You Can Intelligently Invest in Cryptocurrency	null	0.5046
36	781	Is earning Bitcoin with each swipe the credit card reward of the future These cards think so	null	0.7430
36	841	NewsWatch U S gains just 49 000 jobs in January Labor market still under acute stress	null	0.9781
35	781	Forget Bitcoin Inside the insane world of altcoin cryptocurrency trading CNET	null	-0.5574
38	702	Dogecoin s price jumped as high as 35 after Elon Musk tweeted Dogecoin to the Moooonn in a	null	0.9682
37	1122	Bitcoin Rally Takes Crypto Market Value to New Record	null	0.9732
37	1362	Bitcoin Tops 40k Mark Ether At All Time High Amid Crypto Markets Boom	null	0.9758
37	822	Bitcoin eyes 50K less than a month after BTC price broke its 2017 all time high	null	0.9595
37	882	Bitcoin mining is horrible for the environment Here s what we can do about it	null	-0.5423
37	1062	Bitcoin Reclaims 40K Mark Moving Closer To All Time High	null	0.9682
37	1062	Bitcoin Reclaims 40K Mark Moving Closer To All Time High	null	0.9682
37	1362	Bitcoin Tops 40k Mark Ether At All Time High Amid Crypto Markets Boom	null	0.9758
37	1002	Bill Miller s Flagship Fund May Now Buy GBTC to Gain Bitcoin Exposure of Up to 15	null	0.9886
37	1002	Bill Miller s Flagship Fund May Now Buy GBTC to Gain Bitcoin Exposure of Up to 15 CoinDesk	null	0.9886
38	642	Bitcoin rally takes market cap of over 6 000 cryptocurrencies to whopping new high of 1 24 trillion	null	0.9918
37	1122	Serbian Man Extradited to US After Being Indicted In 70 Million Crypto Fraud CoinDesk	null	-0.5859
37	1122	Serbian Man Extradited to US After Being Indicted in 70M Crypto Fraud	null	-0.5859
37	1062	Ethereum Price Prediction ETH ready to rise to new highs following crucial rebound	null	0.9957
37	942	Thinking of Selling Stock Ask Yourself These Questions First The Motley Fool	null	-0.9509
37	882	9 great reads from CNET this week	null	0.6249
37	822	Cybersecurity An Attackers Perspective Model Portfolio Channel	null	-0.5719
37	882	New York Is Calling the Up and Comers	null	0.7906
37	822	These are the top 10 US states where Dogecoin s popularity shot up after a group of Redditors	null	0.8979
35	766	Learn About Bitcoin So You Can Intelligently Invest in Cryptocurrency	null	0.5046
35	781	Forget Bitcoin Inside the insane world of altcoin cryptocurrency trading CNET	null	-0.5574
36	781	Is earning Bitcoin with each swipe the credit card reward of the future These cards think so	null	0.7430
36	841	NewsWatch U S gains just 49 000 jobs in January Labor market still under acute stress	null	0.9781
37	1006	Bitcoin Rally Takes Crypto Market Value to New Record	null	0.9732
37	1126	Bitcoin breaks 40 000 and sets its sights on a new all time high ETH fees spike as a new price	null	0.9682
37	1306	Bitcoin Tops 40k Mark Ether At All Time High Amid Crypto Markets Boom	null	0.9758
37	1006	Bitcoin Reclaims 40K Mark Moving Closer To All Time High	null	0.9682
37	1006	Bitcoin Reclaims 40K Mark Moving Closer To All Time High	null	0.9682
37	1306	Bitcoin Tops 40k Mark Ether At All Time High Amid Crypto Markets Boom	null	0.9758
37	886	Bill Miller s Flagship Fund May Now Buy GBTC to Gain Bitcoin Exposure of Up to 15 CoinDesk	null	0.9886
37	886	Bill Miller s Flagship Fund May Now Buy GBTC to Gain Bitcoin Exposure of Up to 15	null	0.9886
37	1066	Why DeFi blue chips SUSHI and AAVE severely pulled back after Bitcoin rally CryptoSlate	null	0.9584
37	1246	The best business finance and retirement accounts to follow on Twitter in 2021	null	0.6369
37	886	Is PayPal Stock A Buy Right Now After Strong Q4 Earnings Here s What Earnings Charts Show	null	0.5106
37	826	Thinking of Selling Stock Ask Yourself These Questions First The Motley Fool	null	-0.9509
37	826	Thinking of Selling Stock Ask Yourself These Questions First	null	-0.9325
38	742	New York Is Calling the Up and Comers	null	0.7906
37	11	Twitter CEO Jack Dorsey is setting up a bitcoin node CNET	null	0.7906
37	593	God Of Dogecoin It s Not Just Tesla CEO Elon Musk Pumping The Joke Bitcoin Rival s Price	null	0.5106
37	892	Bill Miller Run 2 25B Fund May Buy GBTC to Gain Bitcoin Exposure of Up to 15	null	0.9882
37	1056	Serbian Man Extradited to US After Being Indicted In 70 Million Crypto Fraud	null	-0.5859
37	1286	Bitcoin Tops 40k Mark Ether At All Time High Amid Crypto Markets Boom	null	0.9758
38	515	Green hackers around the world let s destroy Bitcoin	null	-0.5423
38	606	Dogecoin s price jumped as high as 35 after Elon Musk tweeted Dogecoin to the Moooonn in a Twitter poll on the future of crypto	null	0.9682
37	1012	Bitcoin Rally Takes Crypto Market Value to New Record	null	0.9732
37	1132	Bitcoin breaks 40 000 and sets its sights on a new all time high ETH fees spike as a new price	null	0.9682
37	1072	Why DeFi blue chips SUSHI and AAVE severely pulled back after Bitcoin rally CryptoSlate	null	0.9584
37	1312	Bitcoin Tops 40k Mark Ether At All Time High Amid Crypto Markets Boom	null	0.9758
37	952	Bitcoin Reclaims 40K Mark Moving Closer To All Time High	null	0.9682
37	952	Bitcoin Reclaims 40K Mark Moving Closer To All Time High	null	0.9682
37	1312	Bitcoin Tops 40k Mark Ether At All Time High Amid Crypto Markets Boom	null	0.9758
37	892	Bill Miller s Flagship Fund May Now Buy GBTC to Gain Bitcoin Exposure of Up to 15 CoinDesk	null	0.9886
37	892	Bill Miller s Flagship Fund May Now Buy GBTC to Gain Bitcoin Exposure of Up to 15	null	0.9886
37	1072	Combined value of digital coins tops 1 2trn as Bitcoin hits 40 000 again	null	0.6908
37	1072	Combined value of digital coins tops 1 2trn as Bitcoin hits 40 000 again	null	0.6908
38	592	Bitcoin rally takes market cap of over 6 000 cryptocurrencies to whopping new high of 1 24 trillion	null	0.9918
37	1072	Serbian Man Extradited to US After Being Indicted In 70 Million Crypto Fraud CoinDesk	null	-0.5859
37	11	Twitter CEO Jack Dorsey is setting up a bitcoin node CNET	null	0.7906
37	593	God Of Dogecoin It s Not Just Tesla CEO Elon Musk Pumping The Joke Bitcoin Rival s Price	null	0.5106
37	892	Bill Miller Run 2 25B Fund May Buy GBTC to Gain Bitcoin Exposure of Up to 15	null	0.9882
37	1056	Serbian Man Extradited to US After Being Indicted In 70 Million Crypto Fraud	null	-0.5859
37	1286	Bitcoin Tops 40k Mark Ether At All Time High Amid Crypto Markets Boom	null	0.9758
38	515	Green hackers around the world let s destroy Bitcoin	null	-0.5423
38	606	Dogecoin s price jumped as high as 35 after Elon Musk tweeted Dogecoin to the Moooonn in a Twitter poll on the future of crypto	null	0.9682
37	11	Twitter CEO Jack Dorsey is setting up a bitcoin node CNET	null	0.7906
37	593	God Of Dogecoin It s Not Just Tesla CEO Elon Musk Pumping The Joke Bitcoin Rival s Price	null	0.5106
37	892	Bill Miller Run 2 25B Fund May Buy GBTC to Gain Bitcoin Exposure of Up to 15	null	0.9882
37	1056	Serbian Man Extradited to US After Being Indicted In 70 Million Crypto Fraud	null	-0.5859
37	1286	Bitcoin Tops 40k Mark Ether At All Time High Amid Crypto Markets Boom	null	0.9758
38	515	Green hackers around the world let s destroy Bitcoin	null	-0.5423
38	606	Dogecoin s price jumped as high as 35 after Elon Musk tweeted Dogecoin to the Moooonn in a Twitter poll on the future of crypto	null	0.9682
37	11	Twitter CEO Jack Dorsey is setting up a bitcoin node CNET	null	0.7906
37	593	God Of Dogecoin It s Not Just Tesla CEO Elon Musk Pumping The Joke Bitcoin Rival s Price	null	0.5106
37	892	Bill Miller Run 2 25B Fund May Buy GBTC to Gain Bitcoin Exposure of Up to 15	null	0.9882
37	1056	Serbian Man Extradited to US After Being Indicted In 70 Million Crypto Fraud	null	-0.5859
37	1286	Bitcoin Tops 40k Mark Ether At All Time High Amid Crypto Markets Boom	null	0.9758
38	515	Green hackers around the world let s destroy Bitcoin	null	-0.5423
38	606	Dogecoin s price jumped as high as 35 after Elon Musk tweeted Dogecoin to the Moooonn in a Twitter poll on the future of crypto	null	0.9682
37	11	Twitter CEO Jack Dorsey is setting up a bitcoin node CNET	null	0.7906
37	593	God Of Dogecoin It s Not Just Tesla CEO Elon Musk Pumping The Joke Bitcoin Rival s Price	null	0.5106
37	892	Bill Miller Run 2 25B Fund May Buy GBTC to Gain Bitcoin Exposure of Up to 15	null	0.9882
37	1056	Serbian Man Extradited to US After Being Indicted In 70 Million Crypto Fraud	null	-0.5859
37	1286	Bitcoin Tops 40k Mark Ether At All Time High Amid Crypto Markets Boom	null	0.9758
38	606	Dogecoin s price jumped as high as 35 after Elon Musk tweeted Dogecoin to the Moooonn in a Twitter poll on the future of crypto	null	0.9682
38	850	Beyond Doge Coin What Crypto s Are Worth Buying Besides Bitcoin	null	0.9423
38	934	Forbes Blockchain 50 Meet The Bitcoin Lovers In Corporate America	null	0.5267
38	669	Dogecoin s price jumped as high as 35 after Elon Musk tweeted Dogecoin to the Moooonn in a	null	0.9682
37	1149	Bitcoin breaks 40 000 and sets its sights on a new all time high ETH fees spike as a new price	null	0.9682
38	909	German Fraudster Refuses to Give Police Passwords to 60M Bitcoin Wallet	null	-0.5423
37	1329	Bitcoin Tops 40k Mark Ether At All Time High Amid Crypto Markets Boom	null	0.9758
37	1089	Why DeFi blue chips SUSHI and AAVE severely pulled back after Bitcoin rally CryptoSlate	null	0.9584
37	1089	Combined value of digital coins tops 1 2trn as Bitcoin hits 40 000 again	null	0.6908
37	1089	Combined value of digital coins tops 1 2trn as Bitcoin hits 40 000 again	null	0.6908
38	609	Bitcoin rally takes market cap of over 6 000 cryptocurrencies to whopping new high of 1 24 trillion	null	0.9918
38	909	DOGE and XRP rally as pump and dumps sneak back into crypto markets	null	0.9601
38	309	EOS Climbs 10 08 In Bullish Trade By Investing com	null	0.9970
37	1089	Serbian Man Extradited to US After Being Indicted In 70 Million Crypto Fraud CoinDesk	null	-0.5859
38	309	Cardano Climbs 19 82 In Rally	null	0.9682
38	309	Cardano Climbs 19 82 In Rally By Investing com	null	0.9682
38	309	Cardano Climbs 19 82 In Rally By Investing com	null	0.9682
38	309	Precious Metals Energy Weekly Review and Calendar Ahead	null	0.7003
38	309	Precious Metals Energy Weekly Review and Calendar Ahead By Investing com	null	0.7003
38	309	Precious Metals Energy Weekly Review and Calendar Ahead By Investing com	null	0.7003
38	309	Precious Metals Energy Weekly Review and Calendar Ahead By Investing com	null	0.7003
37	11	Twitter CEO Jack Dorsey is setting up a bitcoin node CNET	null	0.7906
37	593	God Of Dogecoin It s Not Just Tesla CEO Elon Musk Pumping The Joke Bitcoin Rival s Price	null	0.5106
37	892	Bill Miller Run 2 25B Fund May Buy GBTC to Gain Bitcoin Exposure of Up to 15	null	0.9882
37	1056	Serbian Man Extradited to US After Being Indicted In 70 Million Crypto Fraud	null	-0.5859
37	1286	Bitcoin Tops 40k Mark Ether At All Time High Amid Crypto Markets Boom	null	0.9758
38	515	Green hackers around the world let s destroy Bitcoin	null	-0.5423
38	606	Dogecoin s price jumped as high as 35 after Elon Musk tweeted Dogecoin to the Moooonn in a Twitter poll on the future of crypto	null	0.9682
38	850	Beyond Doge Coin What Crypto s Are Worth Buying Besides Bitcoin	null	0.9423
38	934	Forbes Blockchain 50 Meet The Bitcoin Lovers In Corporate America	null	0.5267
38	1006	Bitcoin Rally Takes Crypto Market Value to New Record	null	0.9732
38	670	Dogecoin s price jumped as high as 35 after Elon Musk tweeted Dogecoin to the Moooonn in a	null	0.9682
37	1150	Bitcoin breaks 40 000 and sets its sights on a new all time high ETH fees spike as a new price	null	0.9682
38	910	German Fraudster Refuses to Give Police Passwords to 60M Bitcoin Wallet	null	-0.5423
37	1330	Bitcoin Tops 40k Mark Ether At All Time High Amid Crypto Markets Boom	null	0.9758
37	1090	Why DeFi blue chips SUSHI and AAVE severely pulled back after Bitcoin rally CryptoSlate	null	0.9584
37	1090	Combined value of digital coins tops 1 2trn as Bitcoin hits 40 000 again	null	0.6908
37	1090	Combined value of digital coins tops 1 2trn as Bitcoin hits 40 000 again	null	0.6908
38	610	Bitcoin rally takes market cap of over 6 000 cryptocurrencies to whopping new high of 1 24 trillion	null	0.9918
38	910	DOGE and XRP rally as pump and dumps sneak back into crypto markets	null	0.9601
38	310	EOS Climbs 10 08 In Bullish Trade By Investing com	null	0.9970
37	1090	Serbian Man Extradited to US After Being Indicted In 70 Million Crypto Fraud CoinDesk	null	-0.5859
38	310	Cardano Climbs 19 82 In Rally	null	0.9682
38	310	Cardano Climbs 19 82 In Rally By Investing com	null	0.9682
38	310	Cardano Climbs 19 82 In Rally By Investing com	null	0.9682
38	310	Precious Metals Energy Weekly Review and Calendar Ahead	null	0.7003
38	310	Precious Metals Energy Weekly Review and Calendar Ahead By Investing com	null	0.7003
38	310	Precious Metals Energy Weekly Review and Calendar Ahead By Investing com	null	0.7003
38	310	Precious Metals Energy Weekly Review and Calendar Ahead By Investing com	null	0.7003
37	11	Twitter CEO Jack Dorsey is setting up a bitcoin node CNET	null	0.7906
37	593	God Of Dogecoin It s Not Just Tesla CEO Elon Musk Pumping The Joke Bitcoin Rival s Price	null	0.5106
37	892	Bill Miller Run 2 25B Fund May Buy GBTC to Gain Bitcoin Exposure of Up to 15	null	0.9882
37	1056	Serbian Man Extradited to US After Being Indicted In 70 Million Crypto Fraud	null	-0.5859
37	1286	Bitcoin Tops 40k Mark Ether At All Time High Amid Crypto Markets Boom	null	0.9758
38	515	Green hackers around the world let s destroy Bitcoin	null	-0.5423
38	606	Dogecoin s price jumped as high as 35 after Elon Musk tweeted Dogecoin to the Moooonn in a Twitter poll on the future of crypto	null	0.9682
38	850	Beyond Doge Coin What Crypto s Are Worth Buying Besides Bitcoin	null	0.9423
38	934	Forbes Blockchain 50 Meet The Bitcoin Lovers In Corporate America	null	0.5267
38	1006	Bitcoin Rally Takes Crypto Market Value to New Record	null	0.9732
38	674	Bitcoin rally incoming MicroStrategy Playbook Seminar a Smash Hit	null	0.9682
37	1094	Bitcoin breaks 40 000 and sets its sights on a new all time high ETH fees spike as a new price	null	0.9682
37	1094	Why DeFi blue chips SUSHI and AAVE severely pulled back after Bitcoin rally CryptoSlate	null	0.9584
38	854	German Fraudster Refuses to Give Police Passwords to 60M Bitcoin Wallet	null	-0.5423
37	1274	Bitcoin Tops 40k Mark Ether At All Time High Amid Crypto Markets Boom	null	0.9758
37	1274	Bitcoin Tops 40k Mark Ether At All Time High Amid Crypto Markets Boom	null	0.9758
37	1094	Combined value of digital coins tops 1 2trn as Bitcoin hits 40 000 again	null	0.6908
37	1094	Combined value of digital coins tops 1 2trn as Bitcoin hits 40 000 again	null	0.6908
38	554	Bitcoin rally takes market cap of over 6 000 cryptocurrencies to whopping new high of 1 24 trillion	null	0.9918
38	314	EOS Climbs 10 08 In Bullish Trade	null	0.9970
38	314	EOS Climbs 10 08 In Bullish Trade By Investing com	null	0.9970
38	1010	Serbian Man Extradited to US After Being Indicted In 70 Million Crypto Fraud CoinDesk	null	-0.5859
38	314	EOS Climbs 10 In Rally By Investing com	null	0.9682
38	314	Beyond Doge Coin What Crypto s Are Worth Buying Besides Bitcoin	null	0.9423
38	134	Success of digital financial services rests on rural India s shift from cash to digital payments	null	0.5719
38	614	Dogecoin s price jumped as high as 35 after Elon Musk tweeted Dogecoin to the Moooonn in a	null	0.9682
38	314	Cardano Climbs 19 82 In Rally	null	0.9682
38	314	Cardano Climbs 19 82 In Rally By Investing com	null	0.9682
38	314	Cardano Climbs 19 82 In Rally By Investing com	null	0.9682
38	314	Ethereum Falls 10 In Selloff By Investing com	null	-0.9997
38	314	Precious Metals Energy Weekly Review and Calendar Ahead	null	0.7003
38	314	Precious Metals Energy Weekly Review and Calendar Ahead	null	0.7003
38	314	Precious Metals Energy Weekly Review and Calendar Ahead	null	0.7003
38	314	Precious Metals Energy Weekly Review and Calendar Ahead By Investing com	null	0.7003
38	314	Precious Metals Energy Weekly Review and Calendar Ahead By Investing com	null	0.7003
38	554	Janet Yellen Re Cryptocurrencies and Terrorists	null	-0.6249
37	11	Twitter CEO Jack Dorsey is setting up a bitcoin node CNET	null	0.7906
37	593	God Of Dogecoin It s Not Just Tesla CEO Elon Musk Pumping The Joke Bitcoin Rival s Price	null	0.5106
37	892	Bill Miller Run 2 25B Fund May Buy GBTC to Gain Bitcoin Exposure of Up to 15	null	0.9882
37	1056	Serbian Man Extradited to US After Being Indicted In 70 Million Crypto Fraud	null	-0.5859
37	1286	Bitcoin Tops 40k Mark Ether At All Time High Amid Crypto Markets Boom	null	0.9758
38	515	Green hackers around the world let s destroy Bitcoin	null	-0.5423
38	606	Dogecoin s price jumped as high as 35 after Elon Musk tweeted Dogecoin to the Moooonn in a Twitter poll on the future of crypto	null	0.9682
38	850	Beyond Doge Coin What Crypto s Are Worth Buying Besides Bitcoin	null	0.9423
38	934	Forbes Blockchain 50 Meet The Bitcoin Lovers In Corporate America	null	0.5267
38	319	Cardano Climbs 19 82 In Rally	null	0.9682
38	319	Beyond Doge Coin What Crypto s Are Worth Buying Besides Bitcoin	null	0.9423
37	1099	Why DeFi blue chips SUSHI and AAVE severely pulled back after Bitcoin rally CryptoSlate	null	0.9584
37	1397	Growing list of billion dollar crypto unicorns suggest the best is yet to come	null	0.7096
38	850	Beyond Doge Coin What Crypto s Are Worth Buying Besides Bitcoin	null	0.9423
38	321	Cardano Climbs 19 82 In Rally	null	0.9682
38	321	Beyond Doge Coin What Crypto s Are Worth Buying Besides Bitcoin	null	0.9423
37	1101	Why DeFi blue chips SUSHI and AAVE severely pulled back after Bitcoin rally CryptoSlate	null	0.9584
37	1397	Growing list of billion dollar crypto unicorns suggest the best is yet to come	null	0.7096
38	850	Beyond Doge Coin What Crypto s Are Worth Buying Besides Bitcoin	null	0.9423
39	1239	FOREX Dollar steady after Friday s U S jobs related losses bitcoin soars	null	0.9984
39	985	Bitcoin price soars How much 100 would be worth today if you had invested earlier	null	0.9985
39	1165	What is Dogecoin the joke crypto loved by Elon Musk and growing faster than Bitcoin	null	0.7783
39	1105	Explainer Elon Musk loves it So what s all the buzz about bitcoin	null	0.5719
39	1045	Bitcoin Price Predictions Where Will BTC Go After Tesla Fueled Rally	null	0.9682
39	1045	Bitcoin jumps to record high after Tesla invests 1 5B accepts cryptocurrency	null	0.9983
39	865	Bitcoin Jumps 10 to Record High on Tesla Investment News	null	0.9982
39	805	Bitcoin Hits New Record High Over 43K on Tesla News	null	0.9682
39	985	Bitcoin surges to all time high as Tesla invests 1 5B	null	0.9682
39	565	CME Ethereum futures go live Bitcoin caps its best week ever 5 things to watch this week	null	0.6369
39	925	Bitcoin jumps to record 44 000 as Tesla invests 1 5 billion	null	0.9970
39	865	Bitcoin Price Alert Tesla s 1 5B Purchase and Payment Promise Send the Crypto Soaring	null	0.9986
39	805	Bitcoin hits 43K all time high as Tesla invests 1 5 billion in BTC	null	0.9682
39	1165	Bitcoin surges to record high as Tesla announces it has invested 1 5bn and will take it as payment	null	0.9682
39	685	Bitcoin Gets Support From Mexico s Third Richest Person Billionaire Follows Elon Musk s Move	null	0.7269
39	865	Cryptocurrency live Latest as bitcoin hits new all time high after massive Tesla investment	null	0.9682
39	805	Bitcoin Soars After Elon Musk Says Tesla Invested 1 5billion in BTC	null	0.9985
39	925	Bitcoin jumps to record 44 000 as Tesla invests 1 5 billion	null	0.9970
39	1045	Bitcoin soars to all time high as Musk s Tesla says it bought 1 5 billion	null	0.9990
39	925	Bitcoin soars to all time high as Musk s Tesla says it bought 1 5 billion	null	0.9990
39	805	Bitcoin soars 15 after Tesla says will accept it as payment	null	0.9985
39	865	Bitcoin retests 40 000 as active addresses hit new all time high	null	0.9741
39	325	Tesla s Bitcoin Buy Is a Reckless Destructive Troll	null	-0.7717
39	925	Bitcoin reaches all time high after Tesla discloses 1 5 billion purchase	null	0.9690
39	1165	Tesla s Buying of Bitcoin Briefly Made Bitcoin More Valuable Than Tesla	null	0.9545
39	325	Bitcoin Has Rallied More Than 50 This Year After Hitting A Fresh High	null	0.9729
39	325	Bitcoin Soars To New High After Tesla Says It Invested 1 5 Billion	null	0.9990
39	865	Bitcoin hits record high after Tesla invests 1 5bn live updates	null	0.9682
39	805	Bitcoin spikes 13 to record high after Tesla says it invested 1 5 billion in the cryptocurrency	null	0.9682
39	325	Bitcoin Climbs 11 In Rally By Investing com	null	0.9682
39	325	As Bitcoin Hits Record High Experts Say Others Will Follow Tesla s Bitcoin Bet By Investing com	null	0.9682
39	1105	EXPLAINER Elon Musk loves it So what s all the buzz about bitcoin	null	0.5719
39	865	Bitcoin jumps 10 to record high on Tesla investment news	null	0.9982
39	1045	Bitcoin reaches all time high of 44 000 following Tesla s 1 5 billion investment	null	0.9690
39	925	Bitcoin reaches all time high after Tesla discloses 1 5 billion purchase	null	0.9690
39	325	Bitcoin Climbs 11 42 In Bullish Trade	null	0.9970
39	805	UPDATE 1 Bitcoin jumps 10 to record high on Tesla investment news	null	0.9982
39	805	Bitcoin jumps 10 to record high on Tesla investment news	null	0.9982
39	1105	EXPLAINER Elon Musk loves it So what s all the buzz about bitcoin	null	0.5719
39	1045	Tesla buys 1 5 billion in bitcoin sending its price soaring	null	0.9985
39	805	Tesla buys 1 5 billion in bitcoin as Elon Musk jumps on board with cryptocurrency	null	0.9970
39	1045	Legendary investor Bill Miller has set up his flagship fund to buy into Grayscale Bitcoin Trust	null	0.8934
39	925	Tesla Buys 1 5 Billion in Bitcoin Sending Its Price Soaring	null	0.9985
39	925	Tesla Buys 1 5 Billion in Bitcoin Sending Its Price Soaring	null	0.9985
39	805	Tesla TSLA buys 1 5B in bitcoin pushing the crypto to all time high plans to accept as payment	null	0.9738
39	865	Tesla Sends Bitcoin Mooning Past 44K as Snoop Wins dogebowl CoinDesk	null	0.5719
39	1045	Tesla buys 1 5 billion in bitcoin sending its price soaring	null	0.9985
39	325	Tesla invests 1 5 billion in Bitcoin as Elon Musk praises cryptocurrencies	null	0.5267
39	1105	Elon Musk s big Bitcoin buy may have been to distract from bad Tesla news	null	-0.6908
39	1045	Dow Jones Rises To Record High As Tesla Buys Bitcoin Market Rally Warning Signs	null	0.9910
39	925	Elon Musk s Latest Move Sends Bitcoin Soaring	null	0.9985
39	685	GameStop s Plunge Could Spill Over Into Bitcoin	null	-0.9988
39	925	Tesla Buys 1 5 Billion in Bitcoin Sending Its Price Soaring	null	0.9985
39	925	Tesla Buys 1 5 Billion in Bitcoin Sending Its Price Soaring	null	0.9985
39	1105	Tesla Buying Bitcoin Is Bullish for Both TSLA Stock BTC	null	0.9979
39	565	Children s Charity Creates Bitcoin Superhero to Attract Crypto Donations CoinDesk	null	0.7506
39	745	Stock market news live updates Stocks rise to reach record highs Bitcoin prices spike	null	0.9819
39	985	Tesla invests 1 5 billion in bitcoin sending the price soaring to new heights	null	0.9985
39	1105	Square Stock Hits All Time High As Tesla Purchase Sends Bitcoin Price Soaring	null	0.9990
39	1225	Dow Jones Rises For Sixth Straight Session As Disney Stock Breaks Out Tesla Bullish On Bitcoin	null	0.9971
39	805	Tesla Buys 1 5 Billion Worth of Bitcoin May Accept the Cryptocurrency as Payment in the Future	null	0.5423
39	325	Tesla sends bitcoin soaring with 1 5 billion investment payment promise By Reuters	null	0.9985
39	1251	Square gains 10 as the payments company rides bitcoin s record breaking rise	null	0.9953
39	1105	Tesla buying 1 5 billion in bitcoin opens the company up to further scrutiny	null	0.9682
39	445	Bill Miller to Allow Opportunity Fund to Buy Into Bitcoin Trust	null	0.7906
39	325	Wall Street Opens Higher Tesla Bitcoin Buzz Helps Dow up By Investing com	null	0.8625
39	325	Wall Street Opens Higher Tesla Bitcoin Buzz Helps Dow up By Investing com	null	0.8625
39	805	Tesla buys 1 5 billion worth of bitcoin says may accept it for payment for products in the near	null	0.5423
39	805	Tesla buys 1 5 billion worth of bitcoin says may accept it for payment for products in the near	null	0.5423
39	385	Elon Musk Says Dogecoin s High Supply Relative To Bitcoin Can Actually Be An Advantage	null	0.9719
39	865	India Mulls Ordinance Route To Ban Cryptocurrencies	null	-0.5574
39	685	US stocks close at record highs as stimulus optimism continues	null	0.5423
39	925	Wall Street opens higher continuing win streak	null	0.5859
39	325	Indian parliament fast tracks bill to ban bitcoin and other cryptocurrencies By BTC Peers	null	-0.5574
39	445	Stocks open higher on Wall Street continuing strong streak	null	0.5106
39	925	Stocks open higher on Wall Street continuing strong streak	null	0.5106
39	745	Wall Street hits all time closing highs on stimulus euphoria vaccine rollout	null	0.6486
39	745	Wall Street hits all time closing highs on stimulus euphoria vaccine rollout	null	0.6486
39	445	Stocks push to more gains and record highs on Wall Street	null	0.9823
38	515	Green hackers around the world let s destroy Bitcoin	null	-0.5423
39	843	Bitcoin jumps 10 to record high on Tesla investment news Reuters	null	0.9982
39	912	Bitcoin hits record highs as Tesla jumps in but it s also great news for gold price Kitco NEWS	null	0.9916
39	919	Bitcoin Spikes 16 To Record High After Tesla Says It Invested 1 5 Billion in the Cryptocurrency and Will Begin Accepting It as Payment	null	0.9738
39	1079	EXPLAINER Elon Musk loves it So what s all the buzz about bitcoin Reuters	null	0.5719
39	1264	US STOCKS Wall Street hits all time closing highs on stimulus euphoria vaccine rollout Reuters	null	0.6486
40	578	Bitcoin price hits new all time high taking market cap value above Facebook and Tesla	null	0.9732
40	592	BREAKING Bitcoin pushes past 48 000 to new record high	null	0.9682
40	586	A Tesla for a bitcoin Musk drives up cryptocurrency price with 1 5 billion purchase	null	0.7906
40	1141	Bitcoin investors From buying a Bentley to losing it all	null	0.9081
40	1201	Here s Why Bitcoin Stocks Are Soaring Today	null	0.9985
41	421	Musk s bitcoin bet fuels gains in companies already invested	null	0.9818
41	361	Bitcoin soars 15 after Tesla says will accept it as payment	null	0.9985
40	1201	Legit Way to Play the Bitcoin Rally	null	0.9732
40	901	Bitcoin hits another record high after Tesla s 1 5 billion buy in	null	0.9682
41	181	Bitcoin Late January Breakout Held Now On Its Way To 50K Investing com	null	0.9325
40	1201	Bitcoin Driven Higher by TWAP Buying as Price Stabilizes at All Time Highs	null	0.9325
40	721	Bitcoin rockets to record high of 48 000 after Elon Musk s Tesla buys up 1 5 billion with one	null	0.9818
40	721	Bitcoin Could Rally Further as Tesla Leads Corporates on Treasury Investments CoinDesk	null	0.9712
40	841	Bitcoin s Tesla Driven Rally Fizzles After Prices Hit 48 000	null	0.9682
40	961	Bitcoin soars to new highs and oil jumps as outlook brightens with US stocks set to slip as markets	null	0.9995
40	721	Bitcoin Could Rally Further as Tesla Leads Corporates on Treasury Investments	null	0.9712
40	1201	Bitcoin Can t Be Stopped Nigerians Look to P2P Exchanges After Crypto Ban	null	-0.6705
40	1021	Bitcoin Miner Riot Blockchain Names Jason Les CEO	null	-0.5574
40	1381	Bitcoin soars above 48 000 to new record after Tesla s 1 5 billion investment CNBC After Hours	null	0.9985
40	1321	With Elon Musk at the wheel Bitcoin hits 95 on the 100 point extreme fear to extreme greed index	null	-0.7096
40	1381	The Bitcoin rally isn t enough to dethrone the mighty dollar NewsChannel 3 12	null	0.9682
40	1201	Here s Why Bitcoin Stocks Are Soaring Today The Motley Fool	null	0.9984
41	301	Musk s bitcoin bet fuels gains in companies already invested By Reuters	null	0.9818
41	301	Musk s bitcoin bet fuels gains in companies already invested By Reuters	null	0.9818
40	1321	The Bitcoin rally isn t enough to dethrone the mighty dollar	null	0.9682
40	781	Elon Musk s 1 5bn Bitcoin investment triggers record high as Dogecoin rockets	null	0.9682
40	1261	Tesla Will Accept Bitcoin for Cars Buys 1 5 Billion Worth of the Cryptocurrency	null	0.5423
40	841	How Long Will the Tesla Driven Bitcoin Rally Last	null	0.9682
40	1381	The Bitcoin rally isn t enough to dethrone the mighty dollar KION546	null	0.9682
40	1081	BlockFi s Bitcoin Trust Takes Aim at GBTC CoinDesk	null	0.5106
41	181	Former MP Central Banks Should Ban Bitcoin	null	-0.5574
41	121	Dollar wallows at two week low bitcoin steadies after surge past 48 000	null	-0.9682
40	1081	BlockFi s Bitcoin Trust Takes Aim at GBTC	null	0.5106
40	1261	ETFs to Ride the Tesla Driven Bitcoin Rally	null	0.9682
40	901	Cryptocurrency Related Stocks Soar as Bitcoin Hits Record High	null	0.9682
40	1021	Forget Bitcoin Buy PayPal and Square Instead The Motley Fool	null	-0.5859
40	1261	FOREX U S dollar drops to two week low bitcoin eyes 50 000	null	-0.9682
41	361	Musk s Bitcoin Bet Fuels Gains in Companies Already Invested	null	0.9818
41	181	Reddit User Who Leaked Tesla s Bitcoin Investment News Was Just High	null	0.9623
40	1381	Ethereum Surpasses Bitcoin To Become Largest Network For Trustless Money Settlement	null	-0.5106
40	1081	GLOBAL MARKETS Stocks mostly ease off record highs bitcoin rise again	null	0.9842
41	181	Reddit User Who Leaked Tesla s Bitcoin Investment News Was Just High	null	0.9623
40	1261	Former British MP says central banks should ban Bitcoin	null	-0.5574
41	301	Musk s bitcoin bet fuels gains in companies already invested By Reuters	null	0.9818
41	361	Musk s bitcoin bet fuels gains in companies already invested	null	0.9818
40	1381	Ethereum Surpasses Bitcoin To Become Largest Network For Trustless Money Settlement	null	-0.5106
40	1081	Woman Charged In Failed Murder For Hire Plot Using Bitcoin	null	-0.8689
41	301	Musk s bitcoin bet fuels gains in companies already invested	null	0.9818
41	301	Musk s bitcoin bet fuels gains in companies already invested	null	0.9818
40	1021	Wisconsin woman allegedly paid in bitcoin for murder for hire on dark web	null	-0.6908
41	361	Why This Tesla Bitcoin Marriage Won t Live Up To The Hype Investing com	null	0.8934
41	301	Dollar wallows at two week low bitcoin steadies after surge past 48 000 By Reuters	null	-0.9682
40	841	Before Tesla s bitcoin play this company bought first and may have inspired Elon Musk	null	0.6808
40	1081	Woman Charged In Failed Murder For Hire Plot Using Bitcoin	null	-0.8689
40	1081	Woman Charged In Failed Murder For Hire Plot Using Bitcoin	null	-0.8689
40	841	Will other companies follow Tesla s lead and load up on Bitcoin	null	0.7906
40	721	Tesla s 1 5 billion bitcoin investment is already up 37 as regulatory scrutiny ratchets up	null	0.9325
40	721	Tesla s 1 5 billion bitcoin investment is already up 37 as regulatory scrutiny ratchets up	null	0.9325
41	361	Business Report GTA 1M homes Bitcoin tops 48K overnight thanks to Elon Twitter earnings	null	0.7351
40	1021	Tesla insider leaked huge bitcoin investment on Reddit over a month ago but was laughed at	null	0.6124
40	1	Bitcoin extends gains above 47 000 in Asia Reuters	null	0.9826
40	1	Bitcoin extends gains above 47 000 in Asia Reuters	null	0.9826
40	361	GLOBAL MARKETS Stocks oil rise in Asia after U S records dollar weakens Reuters	null	0.9792
40	661	Tesla s 1 5 billion bitcoin investment is already up 37 as regulatory scrutiny ratchets up Yahoo Canada Finance	null	0.9325
40	661	FOREX Dollar struggles as U S yields soften Bitcoin soars Reuters	null	0.9984
41	361	Musk s bitcoin bet fuels gains in companies already invested Reuters	null	0.9818
41	361	Musk s bitcoin bet fuels gains in companies already invested Reuters	null	0.9818
40	1201	Bitcoin investors From buying a Bentley to losing it all	null	0.9081
40	1261	Here s Why Bitcoin Stocks Are Soaring Today	null	0.9985
41	481	Musk s bitcoin bet fuels gains in companies already invested	null	0.9818
41	421	Bitcoin soars 15 after Tesla says will accept it as payment	null	0.9985
40	1261	Legit Way to Play the Bitcoin Rally	null	0.9732
40	961	Bitcoin hits another record high after Tesla s 1 5 billion buy in	null	0.9682
41	241	Bitcoin Late January Breakout Held Now On Its Way To 50K Investing com	null	0.9325
40	1261	Bitcoin Driven Higher by TWAP Buying as Price Stabilizes at All Time Highs	null	0.9325
40	781	Bitcoin rockets to record high of 48 000 after Elon Musk s Tesla buys up 1 5 billion with one	null	0.9818
40	781	Bitcoin Could Rally Further as Tesla Leads Corporates on Treasury Investments CoinDesk	null	0.9712
40	901	Bitcoin s Tesla Driven Rally Fizzles After Prices Hit 48 000	null	0.9682
40	1021	Bitcoin soars to new highs and oil jumps as outlook brightens with US stocks set to slip as markets	null	0.9995
40	781	Bitcoin Could Rally Further as Tesla Leads Corporates on Treasury Investments	null	0.9712
40	1261	Bitcoin Can t Be Stopped Nigerians Look to P2P Exchanges After Crypto Ban	null	-0.6705
41	1	Bitcoin soars above 48 000 to new record after Tesla s 1 5 billion investment CNBC After Hours	null	0.9985
40	1381	With Elon Musk at the wheel Bitcoin hits 95 on the 100 point extreme fear to extreme greed index	null	-0.7096
41	1	The Bitcoin rally isn t enough to dethrone the mighty dollar NewsChannel 3 12	null	0.9682
40	1261	Here s Why Bitcoin Stocks Are Soaring Today The Motley Fool	null	0.9984
41	361	Musk s bitcoin bet fuels gains in companies already invested By Reuters	null	0.9818
41	361	Musk s bitcoin bet fuels gains in companies already invested By Reuters	null	0.9818
40	1381	The Bitcoin rally isn t enough to dethrone the mighty dollar	null	0.9682
40	841	Elon Musk s 1 5bn Bitcoin investment triggers record high as Dogecoin rockets	null	0.9682
40	1321	Tesla Will Accept Bitcoin for Cars Buys 1 5 Billion Worth of the Cryptocurrency	null	0.5423
40	901	How Long Will the Tesla Driven Bitcoin Rally Last	null	0.9682
41	1	The Bitcoin rally isn t enough to dethrone the mighty dollar KION546	null	0.9682
40	1141	BlockFi s Bitcoin Trust Takes Aim at GBTC CoinDesk	null	0.5106
41	241	Former MP Central Banks Should Ban Bitcoin	null	-0.5574
41	181	Dollar wallows at two week low bitcoin steadies after surge past 48 000	null	-0.9682
40	1141	BlockFi s Bitcoin Trust Takes Aim at GBTC	null	0.5106
40	1321	ETFs to Ride the Tesla Driven Bitcoin Rally	null	0.9682
40	961	Cryptocurrency Related Stocks Soar as Bitcoin Hits Record High	null	0.9682
40	1081	Forget Bitcoin Buy PayPal and Square Instead The Motley Fool	null	-0.5859
40	1321	FOREX U S dollar drops to two week low bitcoin eyes 50 000	null	-0.9682
41	421	Musk s Bitcoin Bet Fuels Gains in Companies Already Invested	null	0.9818
41	241	Reddit User Who Leaked Tesla s Bitcoin Investment News Was Just High	null	0.9623
41	1	Ethereum Surpasses Bitcoin To Become Largest Network For Trustless Money Settlement	null	-0.5106
40	1141	GLOBAL MARKETS Stocks mostly ease off record highs bitcoin rise again	null	0.9842
41	241	Reddit User Who Leaked Tesla s Bitcoin Investment News Was Just High	null	0.9623
40	1321	Former British MP says central banks should ban Bitcoin	null	-0.5574
41	361	Musk s bitcoin bet fuels gains in companies already invested By Reuters	null	0.9818
41	421	Musk s bitcoin bet fuels gains in companies already invested	null	0.9818
41	1	Ethereum Surpasses Bitcoin To Become Largest Network For Trustless Money Settlement	null	-0.5106
40	1141	Woman Charged In Failed Murder For Hire Plot Using Bitcoin	null	-0.8689
41	361	Musk s bitcoin bet fuels gains in companies already invested	null	0.9818
41	361	Musk s bitcoin bet fuels gains in companies already invested	null	0.9818
40	1081	Wisconsin woman allegedly paid in bitcoin for murder for hire on dark web	null	-0.6908
41	421	Why This Tesla Bitcoin Marriage Won t Live Up To The Hype Investing com	null	0.8934
41	361	Dollar wallows at two week low bitcoin steadies after surge past 48 000 By Reuters	null	-0.9682
40	901	Before Tesla s bitcoin play this company bought first and may have inspired Elon Musk	null	0.6808
40	1141	Woman Charged In Failed Murder For Hire Plot Using Bitcoin	null	-0.8689
40	1141	Woman Charged In Failed Murder For Hire Plot Using Bitcoin	null	-0.8689
40	901	Will other companies follow Tesla s lead and load up on Bitcoin	null	0.7906
40	781	Tesla s 1 5 billion bitcoin investment is already up 37 as regulatory scrutiny ratchets up	null	0.9325
40	781	Tesla s 1 5 billion bitcoin investment is already up 37 as regulatory scrutiny ratchets up	null	0.9325
41	421	Business Report GTA 1M homes Bitcoin tops 48K overnight thanks to Elon Twitter earnings	null	0.7351
40	1081	Tesla insider leaked huge bitcoin investment on Reddit over a month ago but was laughed at	null	0.6124
40	1	Bitcoin extends gains above 47 000 in Asia Reuters	null	0.9826
40	1	Bitcoin extends gains above 47 000 in Asia Reuters	null	0.9826
40	361	GLOBAL MARKETS Stocks oil rise in Asia after U S records dollar weakens Reuters	null	0.9792
40	661	Tesla s 1 5 billion bitcoin investment is already up 37 as regulatory scrutiny ratchets up Yahoo Canada Finance	null	0.9325
40	661	FOREX Dollar struggles as U S yields soften Bitcoin soars Reuters	null	0.9984
41	361	Musk s bitcoin bet fuels gains in companies already invested Reuters	null	0.9818
41	361	Musk s bitcoin bet fuels gains in companies already invested Reuters	null	0.9818
41	601	Tesla s decision to accept Bitcoin opens it up to currency of thieves	null	0.7430
40	1081	Bitcoin investors From buying a Bentley to losing it all	null	0.9081
40	1141	Here s Why Bitcoin Stocks Are Soaring Today	null	0.9985
40	1141	Legit Way to Play the Bitcoin Rally	null	0.9732
41	301	Bitcoin soars 15 after Tesla says will accept it as payment	null	0.9985
40	841	Bitcoin hits another record high after Tesla s 1 5 billion buy in	null	0.9682
41	121	Bitcoin Late January Breakout Held Now On Its Way To 50K Investing com	null	0.9325
40	1141	Bitcoin Driven Higher by TWAP Buying as Price Stabilizes at All Time Highs	null	0.9325
40	781	Bitcoin s Tesla Driven Rally Fizzles After Prices Hit 48 000	null	0.9682
40	901	Bitcoin soars to new highs and oil jumps as outlook brightens with US stocks set to slip as markets	null	0.9995
40	961	Bitcoin Miner Riot Blockchain Names Jason Les CEO	null	-0.5574
40	1261	With Elon Musk at the wheel Bitcoin hits 95 on the 100 point extreme fear to extreme greed index	null	-0.7096
40	1321	Bitcoin soars above 48 000 to new record after Tesla s 1 5 billion investment CNBC After Hours	null	0.9985
40	1261	The Bitcoin rally isn t enough to dethrone the mighty dollar NewsChannel 3 12	null	0.9682
40	1141	Here s Why Bitcoin Stocks Are Soaring Today The Motley Fool	null	0.9984
41	241	Musk s bitcoin bet fuels gains in companies already invested By Reuters	null	0.9818
41	241	Musk s bitcoin bet fuels gains in companies already invested By Reuters	null	0.9818
41	301	Musk s bitcoin bet fuels gains in companies already invested	null	0.9818
41	361	Elrond Cryptocurrency Has Soared 723 This Year Dwarfing Bitcoin Dogecoin Gains Here s Why	null	0.9818
40	1201	The Bitcoin rally isn t enough to dethrone the mighty dollar	null	0.9682
40	1201	The Bitcoin rally isn t enough to dethrone the mighty dollar	null	0.9682
41	301	Musk s bitcoin bet fuels gains in companies already invested	null	0.9818
41	301	Musk s bitcoin bet fuels gains in companies already invested	null	0.9818
40	1201	The Bitcoin rally isn t enough to dethrone the mighty dollar KVIA	null	0.9682
41	61	Dollar wallows at two week low bitcoin steadies after surge past 48 000	null	-0.9682
41	121	Dollar wallows at two week low bitcoin steadies after surge past 48 000	null	-0.9682
40	961	Forget Bitcoin Buy PayPal and Square Instead The Motley Fool	null	-0.5859
41	241	Musk s bitcoin bet fuels gains in companies already invested	null	0.9818
41	241	Musk s bitcoin bet fuels gains in companies already invested	null	0.9818
41	121	Former MP Central Banks Should Ban Bitcoin	null	-0.5574
40	1201	FOREX U S dollar drops to two week low bitcoin eyes 50 000	null	-0.9682
40	1201	ETFs to Ride the Tesla Driven Bitcoin Rally	null	0.9682
40	961	Wisconsin woman allegedly paid in bitcoin for murder for hire on dark web	null	-0.6908
41	121	Reddit User Who Leaked Tesla s Bitcoin Investment News Was Just High	null	0.9623
40	961	GLOBAL MARKETS Stocks mostly ease off record highs bitcoin rise again	null	0.9842
41	121	Reddit User Who Leaked Tesla s Bitcoin Investment News Was Just High	null	0.9623
41	301	Musk s Bitcoin Bet Fuels Gains in Companies Already Invested	null	0.9818
40	1321	Ethereum Surpasses Bitcoin To Become Largest Network For Trustless Money Settlement	null	-0.5106
40	901	Opening Bell Economic Rebound Hopes Lift Futures Global Stocks Oil Bitcoin Investing com	null	0.9846
40	1201	Tesla Will Accept Bitcoin for Cars Buys 1 5 Billion Worth of the Cryptocurrency	null	0.5423
40	1021	Woman Charged In Failed Murder For Hire Plot Using Bitcoin	null	-0.8689
40	1021	Woman Charged In Failed Murder For Hire Plot Using Bitcoin	null	-0.8689
40	1201	The Bitcoin rally isn t enough to dethrone the mighty dollar	null	0.9682
41	541	Why This Tesla Bitcoin Marriage Won t Live Up To The Hype Investing com	null	0.8934
41	241	Dollar wallows at two week low bitcoin steadies after surge past 48 000 By Reuters	null	-0.9682
40	1201	Former British MP says central banks should ban Bitcoin	null	-0.5574
41	61	Opening Bell Economic Rebound Hopes Lift Futures Global Stocks Oil Bitcoin Investing com CA	null	0.9846
40	841	First Mover Elon Musk s bitcoin Bet Pays Off With 270M Gain on First Day	null	0.9818
40	781	Will other companies follow Tesla s lead and load up on Bitcoin	null	0.7906
41	301	Business Report GTA 1M homes Bitcoin tops 48K overnight thanks to Elon Twitter earnings	null	0.7351
40	1	Bitcoin extends gains above 47 000 in Asia Reuters	null	0.9826
40	1	Bitcoin extends gains above 47 000 in Asia Reuters	null	0.9826
40	661	FOREX Dollar struggles as U S yields soften Bitcoin soars Reuters	null	0.9984
40	661	Tesla s 1 5 billion bitcoin investment is already up 37 as regulatory scrutiny ratchets up Yahoo Canada Finance	null	0.9325
41	361	Musk s bitcoin bet fuels gains in companies already invested Reuters	null	0.9818
41	361	Musk s bitcoin bet fuels gains in companies already invested Reuters	null	0.9818
42	1141	Bitcoin donations surge to jailed Kremlin critic Navalny s cause data	null	-0.6486
42	1261	Price Of Bitcoin Hits High As Two More Financial Giants Add Crypto Support	null	0.9741
42	1141	Bitcoin donations surge to jailed Kremlin critic Navalny s cause data	null	-0.6486
42	961	Bitcoin s big moment Mastercard jumps on the bandwagon NewsChannel 3 12	null	0.9970
42	781	Bitcoin Options Market Sees Low Odds of Sky High Rally in 2021 CoinDesk	null	0.9682
42	961	Bitcoin s big moment Mastercard jumps on the bandwagon	null	0.9970
42	1021	Bitcoin surges 7 to a record high amid new adoption from Mastercard and BNY Mellon	null	0.9682
42	841	Bitcoin Surges to All Time High After BNY Mellon Embraces Cryptocurrencies	null	0.9682
42	841	Bitcoin blows past 48 000 to hit another record high as major financial firms warm to crypto	null	0.9716
42	661	Bitcoin price rally to record highs might resemble a bubble but on chain metrics disapprove	null	0.8885
42	841	Bitcoin soars to all time high after BNY Mellon announces crypto venture	null	0.9990
42	841	Bitcoin at Center Stage and Record High as Mastercard BNY Go Crypto CoinDesk	null	0.9682
42	781	Bitcoin Options Market Sees Low Odds of Sky High Rally in 2021	null	0.9682
42	961	Bitcoin price hits new all time high as Mastercard and America s oldest bank welcome cryptocurrency	null	0.9750
42	841	Bitcoin surges to all time high after BNY Mellon embraces cryptocurrencies	null	0.9682
42	181	Bitcoin s pullback slashes 23 from crypto evangelist Michael Saylor s MicroStrategy	null	-0.9955
42	841	Bitcoin surges to all time high after BNY Mellon embraces cryptocurrencies	null	0.9682
42	841	Bitcoin surges to all time high after BNY Mellon embraces cryptocurrencies	null	0.9682
42	301	Bitcoin Pop Pot Stock Drop Bumble Debut 3 Things to Watch	null	-0.9970
42	841	Bitcoin soars to all time high after BNY Mellon announces crypto venture	null	0.9990
42	841	Bitcoin Hits New All Time High as BNY Mellon Announces Crypto Custody	null	0.9682
42	1081	Bitcoin soars on crypto love from Mastercard and BNY Mellon	null	0.9986
42	841	Bitcoin surges to all time high after BNY Mellon embraces cryptocurrencies	null	0.9682
42	301	Bitcoin Pop Pot Stock Drop Bumble Debut 3 Things to Watch By Investing com	null	-0.9970
42	1081	Bitcoin donations surge to jailed Kremlin critic Navalny s cause data	null	-0.6486
42	1141	Bitcoin donations to jailed Kremlin critic Navalny s cause surge data	null	-0.6486
42	1	Bitcoin Litecoin Ripple Outlook Mastercard to Embrace Certain Cryptocurrencies	null	0.5267
42	301	Bitcoin Pop Pot Stock Drop Bumble Debut 3 Things to Watch By Investing com	null	-0.9970
42	301	Bitcoin donations surge to jailed Kremlin critic Navalny s cause data By Reuters	null	-0.6486
42	1141	Bitcoin Donations Surge to Jailed Kremlin Critic Navalny s Cause Data	null	-0.6486
42	1021	Wall Street player BNY Mellon jumps on bitcoin bandwagon	null	0.9970
42	1081	Bitcoin donations surge to jailed Kremlin critic Navalny s cause data	null	-0.6486
42	61	Avalanche AVAX Matic and Celo rally while Bitcoin price pulls back	null	0.9682
42	1021	Wall Street Player BNY Mellon Jumps On Bitcoin Bandwagon	null	0.9970
42	241	Why Ethereum Killers Cardano Polkadot Avalanche Are Surging Despite Bitcoin Slump	null	-0.6486
42	1081	Market digest Bitcoin rallies to new record high after big dip what s behind it	null	0.9682
42	841	First Mover Bitcoin at Center Stage and Record High as Mastercard BNY Go Crypto	null	0.9682
42	1201	UPDATE 1 Bitcoin soars to all time high after BNY Mellon announces crypto venture	null	0.9990
42	961	FOREX U S dollar dips for 4th day after weak data bitcoin hits record high	null	0.9590
42	1261	FOREX U S dollar falls vs some currencies bitcoin climbs to record peak	null	-0.9993
42	1021	Reddit User Who Predicted Elon Musk Bitcoin Buy Was High On Acid	null	0.9682
42	1021	Riot Blockchain jumps 24 as bitcoin momentum continues and the company notches new mining milestone	null	0.9967
42	901	RIOT Stock News Why Bitcoin Mining Company Riot Blockchain Is Climbing Today	null	-0.8374
42	1081	Ethereum is struggling again vs Bitcoin Why is ETH BTC showing weakness	null	-0.6808
42	901	Uber won t buy bitcoin with its cash but would consider accepting it as payment CEO says	null	0.7092
42	61	U S dollar dips for 4th day after weak data bitcoin hits record high	null	0.9590
41	61	Dollar wallows at two week low bitcoin steadies after surge past 48 000 Reuters	null	-0.9682
41	361	Musk s bitcoin bet fuels gains in companies already invested Reuters	null	0.9818
41	361	Musk s bitcoin bet fuels gains in companies already invested Reuters	null	0.9818
42	781	UPDATE 1 BNY Mellon joins cryptocurrency party with new Digital Assets division Reuters	null	0.5267
42	841	Bitcoin surges to all time high after BNY Mellon embraces cryptocurrencies Reuters	null	0.9682
42	841	BNY Mellon joins cryptocurrency party with new Digital Assets division Reuters	null	0.5267
42	1141	Bitcoin donations surge to jailed Kremlin critic Navalny s cause data Reuters	null	-0.6486
42	1141	UPDATE 1 Bitcoin soars to all time high after BNY Mellon announces crypto venture Reuters	null	0.9990
43	1	First North American Bitcoin ETF Approved by Canadian Securities Regulator	null	0.6124
42	961	Bitcoin price hits new all time high as Mastercard and America s oldest bank welcome cryptocurrency	null	0.9750
42	1261	Bitcoin surges to record high as Mastercard and Uber show cryptocurrency interest	null	0.9757
42	721	Bitcoin jumps by 2 000 after Elon Musk posts an image of a crypto themed ring and makes a vague	null	0.9970
42	961	Bitcoin s big moment Mastercard jumps on the bandwagon	null	0.9970
42	1321	Bitcoin surges 7 to a record high amid new adoption from Mastercard and BNY Mellon	null	0.9682
42	1261	Bitcoin Just Set a New All Time High Here Are What Analysts Are Saying	null	0.9682
42	961	Bitcoin s big moment Mastercard jumps on the bandwagon NewsChannel 3 12	null	0.9970
42	781	Bitcoin Options Market Sees Low Odds of Sky High Rally in 2021 CoinDesk	null	0.9682
42	841	Bitcoin blows past 48 000 to hit another record high as major financial firms warm to crypto	null	0.9716
42	661	Bitcoin price rally to record highs might resemble a bubble but on chain metrics disapprove	null	0.8885
42	1141	Bitcoin donations surge to jailed Kremlin critic Navalny s cause data	null	-0.6486
42	841	Bitcoin at Center Stage and Record High as Mastercard BNY Go Crypto CoinDesk	null	0.9682
42	1261	Bitcoin surges to record high as Mastercard and Uber show cryptocurrency interest	null	0.9757
42	781	Bitcoin Options Market Sees Low Odds of Sky High Rally in 2021	null	0.9682
42	841	Bitcoin surges to all time high after BNY Mellon embraces cryptocurrencies	null	0.9682
42	841	Bitcoin surges to all time high after BNY Mellon embraces cryptocurrencies	null	0.9682
42	841	Bitcoin surges to all time high after BNY Mellon embraces cryptocurrencies	null	0.9682
42	841	Bitcoin soars to all time high after BNY Mellon announces crypto venture	null	0.9990
42	1141	Bitcoin donations to jailed Kremlin critic Navalny s cause surge data	null	-0.6486
42	841	Bitcoin soars to all time high after BNY Mellon announces crypto venture	null	0.9990
42	841	Bitcoin soars to all time high after BNY Mellon announces crypto venture	null	0.9990
42	1021	Bitcoin soars on crypto love from Mastercard and BNY Mellon	null	0.9986
42	841	Bitcoin Hits New All Time High as BNY Mellon Announces Crypto Custody	null	0.9682
42	841	Bitcoin surges to all time high after BNY Mellon embraces cryptocurrencies	null	0.9682
43	1	Bitcoin clings to Tesla gains dollar set for weekly loss	null	0.7906
42	1141	Bitcoin donations surge to jailed Kremlin critic Navalny s cause data	null	-0.6486
42	1141	Bitcoin donations surge to jailed Kremlin critic Navalny s cause data	null	-0.6486
42	1141	Bitcoin donations surge to jailed Kremlin critic Navalny s cause data	null	-0.6486
42	1081	Bitcoin donations surge to jailed Kremlin critic Navalny s cause data	null	-0.6486
42	1021	Wall Street player BNY Mellon jumps on bitcoin bandwagon	null	0.9970
42	1021	Wall Street Player BNY Mellon Jumps On Bitcoin Bandwagon	null	0.9970
42	1141	Bitcoin Donations Surge to Jailed Kremlin Critic Navalny s Cause Data	null	-0.6486
43	61	Forget 2021 Here s How High Bitcoin Price Can Go By 2026	null	0.9643
43	121	European shares dip Bitcoin hits record high	null	0.9726
42	841	First Mover Bitcoin at Center Stage and Record High as Mastercard BNY Go Crypto	null	0.9682
42	1261	UPDATE 1 Bitcoin donations surge to jailed Kremlin critic Navalny s cause data	null	-0.6486
43	301	FOREX Dollar headed for weekly loss bitcoin hits record 49 000	null	-0.9682
42	1201	UPDATE 1 Bitcoin soars to all time high after BNY Mellon announces crypto venture	null	0.9990
43	361	Markets Oil Drop In Asia But Bitcoin Edges Towards 50 000	null	-0.9970
43	1	European shares dip Bitcoin hits record high	null	0.9726
43	1	European shares dip Bitcoin hits record high	null	0.9726
43	1	European shares dip Bitcoin hits record high	null	0.9726
63	961	Suze Orman I love bitcoin	null	0.6369
42	1261	Price Of Bitcoin Hits High As Two More Financial Giants Add Crypto Support	null	0.9741
43	121	Markets Oil Drop In Asia But Bitcoin Targets 50 000	null	-0.9970
43	541	Jack Dorsey and Jay Z to set up 500 BTC blind Bitcoin trust in India Africa	null	0.8225
43	1	European shares dip Bitcoin hits record high	null	0.9726
42	1261	Key financial crisis regulator Sheila Bair says stay away frombitcoin while it is at nosebleed	null	-0.6249
42	901	Uber won t buy bitcoin with its cash but would consider accepting it as payment CEO says	null	0.7092
42	1381	Dollar headed for weekly loss bitcoin renews record above 48 000	null	-0.9682
43	301	FOREX Dollar headed for weekly loss bitcoin hits record 49 000	null	-0.9682
43	1	Dollar headed for weekly loss bitcoin renews record above 48 000	null	-0.9682
43	301	GLOBAL MARKETS European shares dip Bitcoin hits record high	null	0.9726
43	241	Can the fast growth of Bitcoin BTC affect the rise of Ethereum ETH or XRP	null	0.9843
42	1381	Forget Bitcoin Inside the insane world of altcoin cryptocurrency trading	null	-0.5574
43	121	Markets oil drop in Asia but bitcoin edges towards 50 000	null	-0.9882
43	241	Miami passes resolution to allow paying city workers in Bitcoin in attempt to woo big tech	null	0.6124
42	1021	Reddit User Who Predicted Elon Musk Bitcoin Buy Was High On Acid	null	0.9682
42	1261	FOREX U S dollar falls vs some currencies bitcoin climbs to record peak	null	-0.9993
43	61	Black investors view Bitcoin other cryptocurrencies as way to fix economic injustice	null	-0.5719
43	1	Dollar Headed for Weekly Loss Bitcoin Renews Record Above 48 000	null	-0.9682
43	1	Dollar headed for weekly loss bitcoin renews record above 48 000	null	-0.9682
42	481	S P 500 to rise another 10 despite high valuations Pictet Asset Mgmt Reuters	null	0.9371
42	481	S P 500 to rise another 10 despite high valuations Pictet Asset Mgmt Reuters UK	null	0.9371
42	781	UPDATE 1 BNY Mellon joins cryptocurrency party with new Digital Assets division Reuters	null	0.5267
42	841	Bitcoin surges to all time high after BNY Mellon embraces cryptocurrencies Reuters	null	0.9682
42	841	BNY Mellon joins cryptocurrency party with new Digital Assets division Reuters	null	0.5267
42	1141	Bitcoin donations surge to jailed Kremlin critic Navalny s cause data Reuters	null	-0.6486
42	1141	UPDATE 1 Bitcoin soars to all time high after BNY Mellon announces crypto venture Reuters	null	0.9990
43	1	Dollar headed for weekly loss bitcoin renews record above 48 000 Reuters	null	-0.9682
43	1141	Bitcoin price enters consolidation but is a rally past 50K now inevitable	null	0.9855
43	1021	Bitcoin climbs 4 to a new high before paring gains as the cryptocurrency s record breaking surge	null	0.9939
43	841	Bitcoin aiming high MarketPulse	null	0.9682
43	1261	Can Bitcoin Surge Above 50 000 Amid Flurry Of Positive News Investing com	null	0.5574
43	1261	Traders say there aren t many reasons to be bearish on Bitcoin	null	-0.9970
43	781	Regulator gears up for Bitcoin crackdown amid digital coin frenzy	null	0.6908
43	841	How bad is bitcoin for the environment really	null	-0.5423
43	781	More Bullish Tailwinds for Bitcoin as US Committee Approves 593B in Benefits	null	0.9974
43	1261	Banks Might Treat Bitcoin Like Real Money These Experts Weigh the Pros and Cons	null	0.6369
43	1381	Canada approves first bitcoin ETF raising hopes that the US SEC will soon follow	null	0.6705
44	601	Jack Dorsey Jay Z to set up Bitcoin development fund as internet currency goes mainstream	null	0.7906
43	1021	XRP jumps 15 while bitcoin and ether trade near record highs as Tesla BNY Mellon and Mastercard	null	0.9970
43	841	Beyond Bitcoin Little known project jumps 116 on 2 75M EU new money grant	null	0.9972
43	1261	Canada approves first bitcoin ETF raising hopes that the US SEC will soon follow	null	0.6705
43	1201	Major companies and banks are now buying into bitcoin If you want exposure here s how	null	0.9360
43	1321	Stocks Still Buoyant As Bitcoin Retreats From All time High	null	0.9716
44	601	A senator has urged Elon Musk to move to Wyoming as it has the best laws for bitcoin and is the	null	0.6369
43	1141	Black Swan Author Calls Bitcoin a Failure at Least for Now	null	-0.5106
43	1021	Jay Z Jack Dorsey Link Up For New Bitcoin Venture	null	0.7906
43	1261	Banks Might Treat Bitcoin Like Real Money These Experts Weigh the Pros and Cons	null	0.6369
43	1021	Seems like a good price Video of 1m bitcoin pizza order from 2011 resurfaces as value hits	null	0.7783
43	841	A Bullish 1 Million Bitcoin Forecast as Year of Ox Begins CoinDesk	null	0.9970
43	841	First Mover Bullish 1 Million Bitcoin Forecast as Year of Ox Begins	null	0.9970
44	601	A senator has urged Elon Musk to move to Wyoming as it has the best laws for bitcoin and is the	null	0.6369
43	1	Dollar headed for weekly loss bitcoin renews record above 48 000 Reuters	null	-0.9682
43	721	Bitcoin clings to Tesla gains dollar set for weekly loss Reuters	null	0.7906
43	1021	Top Ten Weekend reads a marijuana friendly retirement location	null	0.6124
46	121	Bitcoin Retreats After Weekend Rally to Record of Nearly 50 000	null	0.9682
46	121	Bitcoin rally falters just short of 50 000 as investors take profit	null	0.9747
45	1081	Bitcoin approaches 50 000 wider adoption fuels record rally	null	0.9682
46	121	Bitcoin rally falters just short of 50 000 as investors take profit	null	0.9747
45	1261	Bitcoin soars nearing 50 000 for the first time KION546	null	0.9985
45	781	Bitcoin Sets New All Time High of 49 7K Putting 50K Within Striking Distance CoinDesk	null	0.9682
45	901	Bitcoin soars nearing 50 000 for the first time	null	0.9985
45	1141	Bitcoin s Epic Run Is Winning More Attention From Wall Street	null	0.5267
45	781	Bitcoin Sets New All Time High of 49 7K Putting 50K Within Striking Distance	null	0.9682
45	781	Bitcoin nears 50 000 wider adoption fuels record rally	null	0.9682
45	841	Bitcoin nears 50 000 wider adoption fuels record rally	null	0.9682
45	841	Bitcoin nears 50 000 wider adoption fuels record rally	null	0.9682
45	841	Bitcoin approaches 50 000 wider adoption fuels record rally	null	0.9682
45	781	Bitcoin nears 50 000 wider adoption fuels record rally	null	0.9682
45	841	Bitcoin nears 50 000 wider adoption fuels record rally amNewYork	null	0.9682
45	841	Bitcoin approaches 50 000 wider adoption fuels record rally	null	0.9682
45	841	Bitcoin approaches 50 000 wider adoption fuels record rally	null	0.9682
45	841	Bitcoin approaches 50 000 wider adoption fuels record rally	null	0.9682
45	901	Bitcoin soars nearing 50 000 for the first time	null	0.9985
45	841	Bitcoin nears 50 000 wider adoption fuels record rally Reuters	null	0.9682
45	841	Bitcoin nears 50 000 wider adoption fuels record rally Reuters	null	0.9682
45	841	Bitcoin nears 50 000 wider adoption fuels record rally Reuters	null	0.9682
45	961	UPDATE 1 Bitcoin approaches 50 000 wider adoption fuels record rally Reuters	null	0.9682
46	1	Elon Musk says he supports top dogecoin holders selling most of their coins Reuters	null	-0.8934
46	301	Dollar held down by doubts over pace of U S recovery bitcoin retreats from record high Reuters	null	0.9628
47	1261	Evolve Becomes Second Canadian Issuer to Win Approval for Bitcoin ETF	null	0.7845
47	841	Osprey Fund s Bitcoin Trust Is Now Available to Retail Investors via OTC	null	0.5106
48	481	Bitcoin Hits New All Time High Above 51 000 Squeezing Altcoins	null	0.9682
47	901	Bitcoin jumps to within 2 of 50 000 as currency hits new high thanks to Wall Street interest	null	0.9984
47	841	Bitcoin tops 50 000 for the first time ever in dizzying rally	null	0.9758
48	421	Bitcoin Jumps to All Time High as Cryptocurrency Fever Continues	null	0.9982
47	1021	Bitcoin Hit All Time High at Over 50 000 Leaving Us in Dire Need of Sound Financial Advice	null	0.9584
47	781	Bitcoin soars past 50 000 for the first time	null	0.9985
48	481	Bitcoin Hits New High Above 51K Shrugging Off Rising Bond Yields	null	0.9682
48	481	Bitcoin hits a new high of 51 3K as analyst declares historic parabolic advance	null	0.9682
47	1381	Bitcoin Price Tops 50K for the First Time	null	0.5106
47	781	Bitcoin hits 50 000 milestone as world s No 1 cryptocurrency extends gain in 2021	null	0.9805
47	841	Bitcoin tops 50 000 for the first time	null	0.5106
47	781	Bitcoin soars past 50 000 for the first time	null	0.9985
47	781	Bitcoin soars past 50 000 for the first time	null	0.9985
48	481	JPMorgan Says Bitcoin Rally Unsustainable Unless Volatility Ebbs	null	0.9682
47	841	Bitcoin Jumps to 50 000 as Record Breaking Rally Accelerates	null	0.9982
47	781	Instant View Bitcoin Tops 50 000 for the First Time	null	0.5106
47	1081	Bitcoin s Growth Will Continue to Boost Square Stock	null	0.6486
47	1021	After Breaching 50K Bitcoin Gives Up Earlier Gains	null	0.9882
47	781	Here s what 5 experts said about bitcoin s momentous record setting rally above 50 000	null	0.9682
47	781	Instant View Bitcoin tops 50 000 for the first time	null	0.5106
48	481	JPMorgan Says Bitcoin Rally Unsustainable Unless Volatility Ebbs	null	0.9682
47	841	NYDIG Files for Bitcoin ETF Adding to Firms Hoping 2021 Is When SEC Finally Says Yes	null	0.6705
47	1081	Why I still need some convincing over the prospects for Bitcoin	null	0.5994
47	1201	FOREX Dollar gains as Treasury yields rise bitcoin breaches 50 000	null	0.9955
47	1021	Tesla Helps Push Bitcoin Price to New High	null	0.9738
47	1261	Fed s Bullard says bitcoin s meteoric rise will have little effect on the dollar global economy	null	0.9818
47	1261	Evolve wins second Canadian Bitcoin ETF as Ontario regulator approves application	null	0.7506
47	781	JP Morgan hints it could join party as Bitcoin continues to flirt with 50k	null	0.7531
47	1081	Nasdaq Gives Up Early Gains but Crypto Stocks Are Getting a 50 000 Bitcoin Boost The Motley Fool	null	0.9531
48	361	Banks seek advice on Bitcoin compliance as digital coin hits record high	null	0.9682
47	1141	Markets respond after Bitcoin pierces 50 000 to reach new all time high	null	0.9686
47	1141	5 Easy Methods to Maintain Your Bitcoin Investment Safely Cascade Business News	null	0.7269
47	841	MicroStrategy to borrow 600 million to fund bitcoin buying	null	0.9325
47	1201	FOREX Dollar gains as Treasury yields rise bitcoin breaches 50 000	null	0.9955
47	1201	Dow Rallies As Bulls Battle Bears Boeing Stock Makes Key Move Bitcoin Play Pares Gains	null	0.9814
47	841	Mining Machine Maker Canaan Rises 20 as Bitcoin Reaches a New All Time High	null	0.9690
47	901	Dow Jones Today Stocks Rise Amid Stimulus Pandemic Optimism Bitcoin Hits 50 000	null	0.9855
47	121	If Bitcoin Creator Satoshi Nakamoto Is Alive He s Sitting On One Of The Largest Personal Fortunes On The Planet Celebrity Net Worth	null	0.5423
47	241	Bitcoin Extends Its Rally to an All Time High Close to 50 000 Bloomberg	null	0.9920
47	781	Instant View Bitcoin tops 50 000 for the first time Reuters	null	0.5106
47	781	Bitcoin Tops 50K and Crypto s Nouveau Riche Move In CoinDesk CoinDesk	null	0.5106
47	841	INSTANT VIEW Bitcoin tops 50 000 for the first time Reuters	null	0.5106
47	901	Bitcoin Jumps To 50 000 as Record Breaking Rally Accelerates	null	0.9982
47	1021	Bitcoin Breaks 50 000 for the First Time as Record Shattering 2021 Rally Extends to 74 Amid Wall Street Adoption	null	0.9702
47	1021	Bitcoin Hit All Time High at Over 50 000 Leaving Us in Dire Need of Sound Financial Advice	null	0.9584
49	181	Dow Falls As Bitcoin Tops 52 000 Tesla Cuts Prices While Walmart Dives On Earnings	null	-0.9992
48	1141	Bitcoin soars to over 51 000 What s going on We answer your questions	null	0.9985
48	1381	Bitcoin Surges Past 52k Verizon Stock Up	null	0.7906
48	1201	Bitcoin Punches Above 51 700 Is This Rally Different	null	0.9682
49	781	Bitcoin is eating Gold GOLD BTC ratio falls to an all time low	null	-0.9994
48	1201	Bitcoin ATMs ripe for fraud without more oversight N J watchdog says	null	-0.5859
49	1	CleanSpark Bitcoin Surge Merits a Price Target Boost	null	0.6597
49	1	Bitcoin at 1 million Some analysts are bullish but others warn of risks ahead	null	0.9858
49	841	First Mover Who ISN T Dabbling as Bitcoin Passes 52K Ether Tops 1 900	null	0.5106
65	781	1 Question I m Trying to Answer About Riot Blockchain	null	-0.5574
49	841	Opinion Why buying a Tesla with bitcoin would be environmentally unfriendly	null	0.9100
48	1021	Dow Falls As Bitcoin Jumps Toward 52 000 Apple Tesla Hit Key Support Level While Shopify Tumbles	null	-0.9992
49	721	Forget Bitcoin Buy These Dominant Tech Stocks Instead The Motley Fool	null	-0.5859
49	661	Kia Motors America Victim of Ransomware Attack Demanding 20M in Bitcoin Report Claims	null	-0.8834
49	301	FOREX Dollar buoyed by strong U S data Bitcoin near record 52 640 By Reuters	null	0.5106
49	541	FOREX Dollar buoyed by strong U S data Bitcoin near record 52 640	null	0.5106
48	721	Bitcoin jumps to a new high above 51 700 but JPMorgan says the cryptocurrency s rise could be unsustainable BTC	null	0.9981
48	1321	U S Charges Members of North Korean Hacker Group of Allegedly Stealing Over 1 Billion in Bitcoin	null	-0.7003
49	541	PRECIOUS Gold rebounds as rally in U S Treasury yields abate Reuters	null	0.9803
49	841	FOREX Dollar snaps two day winning streak bitcoin hovers near record highs Reuters	null	0.5267
49	901	CANADA STOCKS TSX falls on dour jobless data vaccine rollout delays Reuters	null	-0.9993
49	661	Bitcoin Could Rise 20 000 Prior To Overbought Territory Investing com	null	0.9818
49	721	Bitcoin hits new high of above 52 600 before paring gains as the currency s market value nears 1	null	0.9944
49	1261	Bitcoin Miner Ebang Closes 70M Follow Up Public Offering	null	0.7906
50	361	Bitcoin Nears 1 Trillion Value as Crypto Jump Tops Other Assets	null	0.7506
49	1201	What s the Best Bitcoin Wallet	null	0.6369
49	781	Bitcoin is eating Gold GOLD BTC ratio falls to an all time low	null	-0.9994
50	1	2 Key Reasons Why Bitcoin Bulls Expect Further Upside	null	0.9325
49	841	First Mover Who ISN T Dabbling as Bitcoin Passes 52K Ether Tops 1 900	null	0.5106
49	721	Forget Bitcoin Buy These Dominant Tech Stocks Instead The Motley Fool	null	-0.5859
50	181	Altcoins breakout to new highs while Bitcoin price retests a key support	null	0.9493
49	1321	Recovery Unplugged Treatment Centers Now Accepting Bitcoin For Addiction Care	null	0.7003
49	841	Opinion Why buying a Tesla with bitcoin would be environmentally unfriendly	null	0.9100
50	361	Bill Gates explains why he associates Bitcoin with tax avoidance and illegal activity CryptoSlate	null	-0.7430
49	1261	Cathie Wood Adds to Tesla Wager After Post Bitcoin Pullback	null	-0.9953
49	721	Kia Motors America Victim of Ransomware Attack Demanding 20M in Bitcoin Report Claims	null	-0.8834
49	901	FOREX Dollar snaps two day winning streak bitcoin hovers near record highs	null	0.5267
49	1081	Dow Falls As Bitcoin Tops 52 000 Tesla Cuts Prices While Walmart Dives On Earnings	null	-0.9992
49	1021	Cathie Wood Adds to Tesla Wager After Post Bitcoin Pullback	null	-0.9953
49	541	PRECIOUS Gold rebounds as rally in U S Treasury yields abate Reuters	null	0.9803
49	841	FOREX Dollar snaps two day winning streak bitcoin hovers near record highs Reuters	null	0.5267
49	901	CANADA STOCKS TSX falls on dour jobless data vaccine rollout delays Reuters	null	-0.9993
49	1201	Dollar snaps two day winning streak bitcoin hovers near record highs Reuters	null	0.5267
49	1261	Cryptocurrency Ethereum hits record high lifted by bitcoin institutional demand Reuters	null	0.9661
49	1261	Cryptocurrency Ethereum hits record high lifted by bitcoin institutional demand Reuters	null	0.9661
53	601	Record Moves Bitcoin Jumps To 57 000 Ethereum Crosses 2 000 As Elon Musk Calls Prices High	null	0.9982
53	301	Bitcoin Rally Faces Potential Test From Falling Market Liquidity	null	0.9657
53	301	Bitcoin Rally Faces Potential Test From Falling Market Liquidity	null	0.9657
53	601	Bitcoin Is Up Nearly 100 This Year As Bull Market Continues	null	0.7906
53	421	Bitcoin extends two month rally to surpass 58 000 live updates	null	0.9702
53	601	Bitcoin s market value tops 1 trillion	null	0.6908
52	1141	Bitcoin hits fresh high	null	0.9729
53	481	Bitcoin hits fresh high	null	0.9729
52	1081	Bitcoin extends two month rally to surpass 58 000 live updates	null	0.9702
53	601	Bitcoin Faces Price Turbulence as Market Liquidity Falls Says JPMorgan	null	-0.9993
52	1141	Bitcoin hits fresh high	null	0.9729
53	601	Bitcoin and ethereum prices seem high says Musk	null	0.9682
53	601	Bitcoin and ethereum prices seem high says Musk	null	0.9682
53	601	Bitcoin and ethereum prices seem high says Musk	null	0.9682
52	1141	Bitcoin hits fresh high	null	0.9729
52	1201	Bitcoin Scales 58K for First Time YTD Gain Over 98	null	0.9818
52	1141	Bitcoin hits fresh high	null	0.9729
53	601	Bitcoin reaches new high RBI tightens digital security	null	0.9738
53	601	Bitcoin and ethereum prices seem high says Musk	null	0.9682
53	601	Bitcoin and ethereum prices seem high says Musk	null	0.9682
53	601	Bitcoin and ethereum prices seem high says Musk	null	0.9682
53	661	Bitcoin and ethereum prices seem high says Musk	null	0.9682
53	601	Bitcoin is increasingly cultist and supported by magical thinking says Barclays wealth	null	0.6705
53	601	Bitcoin market value tops 1 trillion for first time ever as crypto price soars	null	0.9986
53	601	Bitcoin market value tops 1 trillion for first time ever as crypto price soars	null	0.9986
53	601	Bitcoin and ethereum prices seem high says Musk By Reuters	null	0.9682
53	601	Bitcoin and ethereum prices seem high says Musk By Reuters	null	0.9682
53	601	Bitcoin market value tops 1 trillion for first time ever as crypto price soars	null	0.9986
53	601	Bitcoin s Rise Should Make Regulators Ask if the Fed s Policies Have a Hand in It WaPo	null	0.9851
53	601	Elon Musk Says Bitcoin Prices Seem High After Record Week	null	0.9682
53	601	Bitcoin and ethereum prices seem high says Musk By Reuters	null	0.9682
53	601	Record Moves Bitcoin Jumps To 57 000 Ethereum Crosses 2 000 As Elon Musk Calls Prices High	null	0.9982
52	961	Tesla Is Up 1 Billion on Bitcoin Investment	null	0.7906
53	601	Crypto Surge Continues Market Up 750 Billion Nearly Doubling This Month As Bitcoin Hits New Highs	null	0.7906
53	661	Even If Bitcoin Falls Again Company Adoption Of Crypto Is Not Going Away	null	-0.9993
53	601	Elon Musk admits that bitcoin and ethereum seem high in exchange with gold bug Peter Schiff	null	0.9726
53	661	Ether breaks 2 000 Bitcoin breaks a trillion market cap and Elon Musk is still loving crypto	null	0.5994
53	541	Tesla has scored profits worth 1 billion on its bitcoin bet a Wedbush analyst estimates	null	0.5859
53	541	Tesla has scored profits worth 1 billion on its bitcoin bet a Wedbush analyst estimates	null	0.5859
53	421	Elon Musk is the Bitcoin buying hypocrite we deserve	null	0.9325
52	781	Americans are becoming increasingly bullish on cryptocurrency as bitcoin soars to new records	null	0.9995
53	601	Elon Musk Says Bitcoin Prices Seem High After Record Week	null	0.9682
53	361	The best time to invest in bitcoin was yesterday says strategist as the cryptocurrency soars	null	0.9986
53	601	Opinion Bitcoin s boom won t dethrone the dollar but that doesn t mean there s no danger	null	-0.7227
53	601	Elon Musk admits that bitcoin and ethereum seem high in exchange with gold bug Peter Schiff	null	0.9726
53	601	The BTC Breakout Continues as New Bitcoin ETF Launches	null	0.9325
53	661	Bitcoin s value tops 1T for first time	null	0.6908
52	721	Tesla is ideally positioned to become the world s most important Bitcoin bank TSLA	null	0.5984
52	781	A hedge fund chief and crypto bull shares a SPAC investing strategy set to benefit in the inevitable bear market and breaks down why digital assets will be the next big beneficiary of the SPAC boom	null	0.8402
52	901	Bloomberg Best Bitcoin Gold and Gamestop Podcast	null	0.6369
52	1141	Bitcoin hits fresh high Reuters	null	0.9729
53	1	Asia shares edge up as bond yields resources steal the show Reuters	null	0.7184
53	1	Dollar falls as improving sentiment boosts riskier currencies Reuters	null	-0.9992
53	1	Dollar falls as improving sentiment boosts riskier currencies Reuters	null	-0.9992
53	1	Asia shares edge up as bond yields resources steal the show Reuters	null	0.7184
53	121	Shares make guarded gains as bond yields resources spike Reuters	null	0.9837
53	181	PRECIOUS Gold off 7 month low on dollar weakness but yields weigh Reuters	null	-0.8652
53	601	Bitcoin slides 6 to below 55 000 Reuters UK	null	-0.9970
54	421	3 Bitcoin Stocks That Could Crash 31 to 66 According to Wall Street	null	-0.9993
53	1321	Retail suckers with FOMO will eventually get crushed on Bitcoin says Roubini	null	-0.7269
53	1261	Market Wrap Bitcoin Stabilizes After Margin Calls Fuel Biggest Plunge in Month	null	-0.9988
54	181	Bitcoin tumbles 17 as doubts grow over valuations	null	-0.9972
54	181	Bitcoin Slumps Below 50 000 as Caution Sweeps Over Crypto Rally	null	-0.9963
54	301	Bitcoin Needs a Safe Space for Redditors to Play	null	0.6486
54	181	Bitcoin tumbles 17 as doubts grow over valuations	null	-0.9972
54	541	Bitcoin drops after climbing to all time high	null	0.9682
54	181	Bitcoin Falls as Much as 6 as It Pulls Back From Record High	null	-0.9990
54	421	Bitcoin Drops Below 50K After Elon Musk Janet Yellen s Bearish Comments	null	-0.9970
53	1261	Bitcoin Price Suffers Pullback Damaging Technical Landscape	null	-0.9962
53	901	Bitcoin pares drop after tumbling on Elon Musk s price remarks	null	-0.9970
53	961	Bitcoin drops after weekend climb to all time high	null	0.9818
53	961	Bitcoin tumbles over 16 down below 50 000 in New York	null	-0.9970
53	841	Bitcoin plunges 8 as record shattering rally succumbs to valuation fears	null	-0.9990
54	241	Bitcoin falls as much as 6 as it pulls back from record high	null	-0.9990
53	841	Bitcoin price crashes below 48K but is the bull market in danger	null	-0.9974
54	121	Bitcoin falls as much as 6 as it pulls back from record high	null	-0.9990
54	481	Bitcoin Slumps Below 50 000 as Caution Sweeps Over Crypto Rally	null	-0.9963
53	721	Bitcoin Pulls Back From Record as Prices Give Up Weekend Gains	null	0.9882
53	841	Bitcoin Sinks After Reaching Record High	null	0.9712
53	721	Bitcoin Briefly Drops Below 48K as Analysts Say Rally Overdone Yellen Comments	null	0.9682
53	1201	Bitcoin price crashes spectacularly wiping 10k from value	null	-0.9992
54	181	Bitcoin falls as much as 6 as it pulls back from record high	null	-0.9990
54	241	Bitcoin Might Be Tanking But These Ethereum Killers Are Posting Major Gains Today	null	0.9741
53	1081	3 Bitcoin price metrics show bulls were not fazed by today s 1 6B liquidation	null	0.9325
53	841	Bitcoin may suffer several corrections on its way to 200k suggests Peter Brandt CryptoSlate	null	-0.5423
54	361	UPDATE 2 Bitcoin tumbles 17 as doubts grow over valuations	null	-0.9972
54	541	Whale who sold Bitcoin before 2020 crash cashed out 156M before this week s 20 dip	null	-0.9993
54	301	Bitcoin falls as much as 6 as it pulls back from record high By Reuters	null	-0.9990
54	301	Fed President Reveals Bitcoin Rally Surprise As Price Falls Under 50 000	null	-0.9989
53	841	First Mover Laser Eyes Can t Stop Correction as Bitcoin Tumbles to 53K	null	-0.9972
53	1021	Why Another March Crash Is Not Likely For Bitcoin	null	-0.9993
53	781	Tesla has made 1B on Bitcoin but Elon Musk says price looks high	null	0.9855
54	541	Not Bitcoin but fintech is biggest COVID 19 story says JP Morgan	null	0.5105
54	121	Bill Gates I m Not Bullish on Bitcoin	null	-0.9946
54	541	Indian billionaire says the country s regulators need to step in and ban bitcoin	null	-0.5574
53	1381	Did a tweet from Elon Musk cause the Bitcoin crash This is what we know	null	-0.9993
53	1321	Retail suckers with FOMO will eventually get crushed on Bitcoin says Roubini	null	-0.7269
53	1081	Tesla earns profit worth 1B in Bitcoin Wedbush s Dan Ives says	null	0.5859
53	1381	Did a tweet from Elon Musk cause the Bitcoin crash This is what we know	null	-0.9993
53	841	Bitcoin Falls Below 50 000 Hits Lowest Since Mid February	null	-0.9993
53	181	PRECIOUS Gold off 7 month low on dollar weakness but yields weigh Reuters	null	-0.8652
53	601	Bitcoin slides 6 to below 55 000 Reuters UK	null	-0.9970
53	841	Bitcoin falls below 50 000 hits lowest since mid February Reuters	null	-0.9993
53	841	Bitcoin falls below 50 000 hits lowest since mid February Reuters	null	-0.9993
53	901	Bitcoin drops after weekend climb to all time high Reuters	null	0.9818
53	1381	Did a tweet from Elon Musk cause the Bitcoin crash This is what we know	null	-0.9993
54	181	Bitcoin falls as much as 6 as it pulls back from record high Reuters	null	-0.9990
54	181	Bitcoin falls as much as 6 as it pulls back from record high Reuters	null	-0.9990
54	541	Elon Musk s wealth tumbles by 15 billion after Tesla shares dropped 9 in one day	null	-0.9966
55	1021	Here s how you could win 8 000 in Bitcoin investing classes and more	null	0.5859
55	841	Bitcoin bounces back over 50K after Square MicroStrategy buy more	null	0.9818
55	841	Bitcoin s Second North American ETF Just Started a Price War	null	-0.5994
55	841	Bitcoin s Second North American ETF Just Started a Price War	null	-0.5994
55	841	Bitcoin surges back above 51 000 after Square s 170 million investment Cathie Wood s positive	null	0.5574
55	1261	Bitcoin s 2021 rally is minting thousands of crypto diamond hands millionaires	null	0.9732
55	721	Bitcoin rally boosts searches for crypto debit cards	null	0.9729
55	721	MARA Stock Is a Great Crypto Play Here as Bitcoin Keeps Soaring	null	0.9987
55	841	Buy on the Dip This ETF Is Racking Up Bitcoin Exposure ETF Trends	null	0.7906
55	1201	Fintech Stocks Win Why Boring Beats Bitcoin	null	0.8591
56	361	Crypto Exchange Asks Customers To Return Bitcoin After Selling It At 88 Discount	null	-0.9325
55	661	Ark s Cathie Wood says she s still very positive on bitcoin helping the price rise back past	null	0.9873
55	1021	MicroStrategy Square Bought Bitcoin High Then the Price Fell	null	0.9682
56	421	It s Gates Versus Musk as World s Richest Spar Over Bitcoin	null	0.5267
55	961	Stock Price at Japan s Top Brokerage Riding High Thanks to Bitcoin Boom Report	null	0.9769
55	901	Enter to win 10K worth in bitcoin when you donate to The Playing For Change Foundation	null	0.7579
55	1261	Bitcoin s 2021 rally is minting thousands of crypto diamond hands millionaires	null	0.9732
55	781	IRS loophole on cryptocurrency could help you on save on taxes	null	0.7096
55	61	GLOBAL MARKETS Asian stocks open lower on inflation fears Reuters	null	-0.6124
55	121	Bitcoin Tumbles Below 50 000	null	-0.9970
55	361	Analysis High flying ARK ETF falters sparks fear of ripple effect Reuters	null	0.9571
55	361	RPT ANALYSIS Bubbles bubbles bound for trouble Reuters	null	-0.9325
55	841	Business intelligence firm MicroStrategy buys 19 452 Bitcoin worth 1 0261B and now holds 90K Bitcoin worth 4 5B at current prices Scott Chipolina Decrypt	null	0.7096
55	961	Dow Rallies Tech Stocks Reverse As Bitcoin Tesla Rebound Nvidia Earnings Due While Square Dives On Sales Miss Investor s Business Daily	null	0.9806
55	1201	Cryptos Bitcoin s 2021 rally is minting thousands of crypto diamond hands millionaires	null	0.9732
57	361	Bitcoin Heads for Worst Weekly Slide in a Year Amid Selloff	null	-0.9996
57	361	Bitcoin on track for worst week in a year live updates	null	-0.9882
57	241	Bitcoin Falls 10 15 In Rout	null	-0.9993
57	121	Bitcoin Heads for Worst Weekly Slide in a Year Amid Risk Selloff	null	-0.9996
57	241	Bitcoin Falls 10 In Selloff By Investing com	null	-0.9997
56	1081	Bitcoin Will Rise To 75 000 Investing com	null	0.9818
57	241	Bitcoin falls over 6 to lowest in two weeks By Reuters	null	-0.9993
57	241	Bitcoin falls over 6 to lowest in two weeks By Reuters	null	-0.9993
56	1021	Bitcoin BTC USD Outlook Bitcoin Bulls Back Down 50K back in Play	null	0.9468
56	1021	Bitcoin Bulls Back in Control as Market Correction Seems Like Old News	null	0.9477
56	781	Bitcoin s 2021 rally is minting thousands of crypto diamond hands millionaires	null	0.9732
56	781	Bitcoin Outflows From Coinbase Suggest Institutions Are Buying the Dip	null	0.9325
56	1021	Institutions Are Taking Profits In Bitcoin Altcoins Are Selling Off Investing com	null	-0.9022
57	241	What to Make of Bitcoin s Drop	null	-0.9970
56	1321	MicroStrategy CEO Saylor on Bitcoin Buying Spree	null	0.9325
56	1261	World s first bitcoin ETF soars past 500 million in assets under management	null	0.9985
56	1261	World s first bitcoin ETF soars past 500 million in assets under management	null	0.9985
56	1381	When Will Major Investors Start Buying Bitcoin	null	0.9325
56	1201	Men used bitcoin and the darknet to hide sales of illegal fentanyl laced opioids feds say	null	-0.6486
56	1081	JPMorgan Investors could consider shifting up to 1 of their portfolio to Bitcoin	null	0.7906
56	661	It can be super super easy or it can be insanely complicated Need to report bitcoin trades to	null	0.8934
57	1	It can be super super easy or it can be insanely complicated Need to report bitcoin trades to	null	0.8934
56	961	Man who claims to have invented Bitcoin starts 3 5 billion legal war with crypto developers	null	-0.5267
56	1201	Men used bitcoin and the darknet to hide sales of illegal fentanyl laced opioids feds say	null	-0.6486
56	1021	Arca Is Latest Crypto Fund to Launch a Bitcoin Trust	null	0.5106
56	1021	Cryptocurrency moves Coinbase files to go public after riding the bitcoin rally and doubling	null	0.9682
56	601	Here s how you could win 8 000 in Bitcoin investing classes and more	null	0.5859
56	721	Donate to Charity and Enter to Win 10 000 Worth of BTC ETH and Other Crypto Related Amenities	null	0.8176
56	781	Lapsis and the Rise of Gig Economy Sci Fi	null	0.9818
56	841	Tech stocks slide as inflation fears mount amid strong labor market data	null	-0.9970
57	1	Coinbase says unmasking Satoshi Nakamoto might harm its business	null	-0.5423
57	301	FOREX Dollar firms after U S yield spike hits six month high versus yen Reuters	null	0.9682
60	541	Citi and Ruffer predict breakout moment for bitcoin	null	0.9325
59	841	Bitcoin extends retreat from record high to hit lowest in 20 days	null	0.9670
59	901	Better Buy Grayscale Bitcoin Trust vs Osprey Bitcoin Trust	null	0.8591
59	961	Bitcoin falls 5 84 to 43 418	null	-0.9993
59	1081	Bitcoin extends retreat from record high to hit lowest in 20 days	null	0.9670
59	841	Bitcoin extends retreat from record high to hit lowest in 20 days	null	0.9670
59	841	Bitcoin extends retreat from record high to hit lowest in 20 days	null	0.9670
59	1021	Bitcoin Tumbles to 43K Lowest in Three Weeks	null	-0.9972
59	841	Bitcoin extends retreat from record high to hit lowest in 20 days	null	0.9670
59	961	Bitcoin falls 5 84 to 43 418	null	-0.9993
59	961	Bitcoin falls 5 84 to 43 418	null	-0.9993
59	1081	UPDATE 1 Bitcoin extends retreat from record high to hit lowest in 20 days	null	0.9670
59	781	REFILE Bitcoin extends retreat from record high to hit lowest in 20 days	null	0.9670
59	901	Better Buy Grayscale Bitcoin Trust vs Osprey Bitcoin Trust The Motley Fool	null	0.7650
59	1201	Is PayPal Stock A Buy Right As Bitcoin Falls Here s What Earnings Charts Show	null	-0.9993
59	121	Dropping Nearly 20 Bitcoin Suffers Worst Weekly Drop in a Year	null	-0.9987
59	721	Stephen Yiu is challenging big name investors as his fund surges 75 within its first 3 years He breaks down the winning strategy and the 4 components he looks for when hand picking stocks	null	0.8020
59	781	Bitcoin extends retreat from record high to hit lowest in 20 days Reuters	null	0.9670
59	841	Bitcoin extends retreat from record high to hit lowest in 20 days Reuters	null	0.9670
59	901	Better Buy Grayscale Bitcoin Trust vs Osprey Bitcoin Trust	null	0.8591
59	1081	Bitcoin extends retreat from record high to hit lowest in 20 days Reuters	null	0.9670
59	1201	Bodies frozen to wake up in future From baseball players to Bitcoin developers	null	0.7906
60	1	As Crypto Markets Plunge 400 Billion Coinbase Reveals Major Bitcoin And Ethereum Price Risks	null	-0.9989
59	121	Dropping Nearly 20 Bitcoin Suffers Worst Weekly Drop in a Year	null	-0.9987
59	781	Bitcoin extends retreat from record high to hit lowest in 20 days Reuters	null	0.9670
59	841	Bitcoin extends retreat from record high to hit lowest in 20 days Reuters	null	0.9670
59	1081	Bitcoin extends retreat from record high to hit lowest in 20 days Reuters	null	0.9670
60	601	China s Inner Mongolia to end cryptocurrency mining ban new steel coke projects Reuters	null	-0.5574
60	601	Investor Paul Singer warned of head smacking craziness in markets and said there could be trouble ahead	null	-0.9565
60	601	Investor Paul Singer warned of head smacking craziness in markets and said there could be trouble ahead	null	-0.9565
60	601	China s furtive bitcoin trade heats up again worrying regulators Reuters	null	0.6808
60	661	Big Short investor Michael Burry slams bitcoin as a speculative bubble and warns a crash is coming	null	-0.9993
59	121	Dropping Nearly 20 Bitcoin Suffers Worst Weekly Drop in a Year	null	-0.9987
59	781	Bitcoin extends retreat from record high to hit lowest in 20 days Reuters	null	0.9670
59	841	Bitcoin extends retreat from record high to hit lowest in 20 days Reuters	null	0.9670
59	1081	Bitcoin extends retreat from record high to hit lowest in 20 days Reuters	null	0.9670
60	601	China s Inner Mongolia to end cryptocurrency mining ban new steel coke projects Reuters	null	-0.5574
60	601	Investor Paul Singer warned of head smacking craziness in markets and said there could be trouble ahead	null	-0.9565
60	601	Investor Paul Singer warned of head smacking craziness in markets and said there could be trouble ahead	null	-0.9565
60	601	China s furtive bitcoin trade heats up again worrying regulators Reuters	null	0.6808
60	661	Big Short investor Michael Burry slams bitcoin as a speculative bubble and warns a crash is coming	null	-0.9993
59	121	Dropping Nearly 20 Bitcoin Suffers Worst Weekly Drop in a Year	null	-0.9987
59	781	Bitcoin extends retreat from record high to hit lowest in 20 days Reuters	null	0.9670
59	841	Bitcoin extends retreat from record high to hit lowest in 20 days Reuters	null	0.9670
59	1081	Bitcoin extends retreat from record high to hit lowest in 20 days Reuters	null	0.9670
60	601	China s Inner Mongolia to end cryptocurrency mining ban new steel coke projects Reuters	null	-0.5574
60	601	Investor Paul Singer warned of head smacking craziness in markets and said there could be trouble ahead	null	-0.9565
60	601	Investor Paul Singer warned of head smacking craziness in markets and said there could be trouble ahead	null	-0.9565
60	601	China s furtive bitcoin trade heats up again worrying regulators Reuters	null	0.6808
60	661	Big Short investor Michael Burry slams bitcoin as a speculative bubble and warns a crash is coming	null	-0.9993
59	121	Dropping Nearly 20 Bitcoin Suffers Worst Weekly Drop in a Year	null	-0.9987
59	781	Bitcoin extends retreat from record high to hit lowest in 20 days Reuters	null	0.9670
59	841	Bitcoin extends retreat from record high to hit lowest in 20 days Reuters	null	0.9670
59	1081	Bitcoin extends retreat from record high to hit lowest in 20 days Reuters	null	0.9670
60	601	Investor Paul Singer warned of head smacking craziness in markets and said there could be trouble ahead	null	-0.9565
60	601	Investor Paul Singer warned of head smacking craziness in markets and said there could be trouble ahead	null	-0.9565
60	601	China s furtive bitcoin trade heats up again worrying regulators Reuters	null	0.6808
60	661	Big Short investor Michael Burry slams bitcoin as a speculative bubble and warns a crash is coming	null	-0.9993
60	601	China s Inner Mongolia to end cryptocurrency mining ban new steel coke projects Reuters	null	-0.5574
60	601	Investor Paul Singer warned of head smacking craziness in markets and said there could be trouble ahead	null	-0.9565
60	601	Investor Paul Singer warned of head smacking craziness in markets and said there could be trouble ahead	null	-0.9565
60	601	China s furtive bitcoin trade heats up again worrying regulators Reuters	null	0.6808
60	661	Big Short investor Michael Burry slams bitcoin as a speculative bubble and warns a crash is coming	null	-0.9993
60	961	Here s your chance to win a 10k investment in crypto by donating to charity	null	0.8225
60	601	China s Inner Mongolia to end cryptocurrency mining ban new steel coke projects Reuters	null	-0.5574
60	601	Investor Paul Singer warned of head smacking craziness in markets and said there could be trouble ahead	null	-0.9565
60	601	Investor Paul Singer warned of head smacking craziness in markets and said there could be trouble ahead	null	-0.9565
60	601	China s furtive bitcoin trade heats up again worrying regulators Reuters	null	0.6808
60	661	Big Short investor Michael Burry slams bitcoin as a speculative bubble and warns a crash is coming	null	-0.9993
60	961	Here s your chance to win a 10k investment in crypto by donating to charity	null	0.8225
60	601	China s Inner Mongolia to end cryptocurrency mining ban new steel coke projects Reuters	null	-0.5574
60	601	Investor Paul Singer warned of head smacking craziness in markets and said there could be trouble ahead	null	-0.9565
60	601	Investor Paul Singer warned of head smacking craziness in markets and said there could be trouble ahead	null	-0.9565
60	601	China s furtive bitcoin trade heats up again worrying regulators Reuters	null	0.6808
60	661	Big Short investor Michael Burry slams bitcoin as a speculative bubble and warns a crash is coming	null	-0.9993
60	961	Here s your chance to win a 10k investment in crypto by donating to charity	null	0.8225
60	601	China s Inner Mongolia to end cryptocurrency mining ban new steel coke projects Reuters	null	-0.5574
60	601	Investor Paul Singer warned of head smacking craziness in markets and said there could be trouble ahead	null	-0.9565
60	601	Investor Paul Singer warned of head smacking craziness in markets and said there could be trouble ahead	null	-0.9565
60	601	China s furtive bitcoin trade heats up again worrying regulators Reuters	null	0.6808
60	661	Big Short investor Michael Burry slams bitcoin as a speculative bubble and warns a crash is coming	null	-0.9993
60	961	Here s your chance to win a 10k investment in crypto by donating to charity	null	0.8225
60	601	China s Inner Mongolia to end cryptocurrency mining ban new steel coke projects Reuters	null	-0.5574
60	601	Investor Paul Singer warned of head smacking craziness in markets and said there could be trouble ahead	null	-0.9565
60	601	Investor Paul Singer warned of head smacking craziness in markets and said there could be trouble ahead	null	-0.9565
60	601	China s furtive bitcoin trade heats up again worrying regulators Reuters	null	0.6808
60	661	Big Short investor Michael Burry slams bitcoin as a speculative bubble and warns a crash is coming	null	-0.9993
60	961	Here s your chance to win a 10k investment in crypto by donating to charity	null	0.8225
60	601	China s Inner Mongolia to end cryptocurrency mining ban new steel coke projects Reuters	null	-0.5574
60	601	Investor Paul Singer warned of head smacking craziness in markets and said there could be trouble ahead	null	-0.9565
60	601	Investor Paul Singer warned of head smacking craziness in markets and said there could be trouble ahead	null	-0.9565
60	601	China s furtive bitcoin trade heats up again worrying regulators Reuters	null	0.6808
60	661	Big Short investor Michael Burry slams bitcoin as a speculative bubble and warns a crash is coming	null	-0.9993
60	961	Here s your chance to win a 10k investment in crypto by donating to charity	null	0.8225
61	61	Stock futures lower after selloff in US Treasury bonds eased	null	-0.9984
60	601	China s Inner Mongolia to end cryptocurrency mining ban new steel coke projects Reuters	null	-0.5574
60	601	Investor Paul Singer warned of head smacking craziness in markets and said there could be trouble ahead	null	-0.9565
60	601	Investor Paul Singer warned of head smacking craziness in markets and said there could be trouble ahead	null	-0.9565
60	601	China s furtive bitcoin trade heats up again worrying regulators Reuters	null	0.6808
60	661	Big Short investor Michael Burry slams bitcoin as a speculative bubble and warns a crash is coming	null	-0.9993
60	961	Here s your chance to win a 10k investment in crypto by donating to charity	null	0.8225
60	601	China s Inner Mongolia to end cryptocurrency mining ban new steel coke projects Reuters	null	-0.5574
60	601	Investor Paul Singer warned of head smacking craziness in markets and said there could be trouble ahead	null	-0.9565
60	601	Investor Paul Singer warned of head smacking craziness in markets and said there could be trouble ahead	null	-0.9565
60	601	China s furtive bitcoin trade heats up again worrying regulators Reuters	null	0.6808
60	661	Big Short investor Michael Burry slams bitcoin as a speculative bubble and warns a crash is coming	null	-0.9993
60	961	Here s your chance to win a 10k investment in crypto by donating to charity	null	0.8225
60	601	China s Inner Mongolia to end cryptocurrency mining ban new steel coke projects Reuters	null	-0.5574
60	601	Investor Paul Singer warned of head smacking craziness in markets and said there could be trouble ahead	null	-0.9565
60	601	Investor Paul Singer warned of head smacking craziness in markets and said there could be trouble ahead	null	-0.9565
60	601	China s furtive bitcoin trade heats up again worrying regulators Reuters	null	0.6808
60	661	Big Short investor Michael Burry slams bitcoin as a speculative bubble and warns a crash is coming	null	-0.9993
60	961	Here s your chance to win a 10k investment in crypto by donating to charity	null	0.8225
60	601	Investor Paul Singer warned of head smacking craziness in markets and said there could be trouble ahead	null	-0.9565
60	601	Investor Paul Singer warned of head smacking craziness in markets and said there could be trouble ahead	null	-0.9565
60	601	China s furtive bitcoin trade heats up again worrying regulators Reuters	null	0.6808
60	661	Big Short investor Michael Burry slams bitcoin as a speculative bubble and warns a crash is coming	null	-0.9993
60	601	Investor Paul Singer warned of head smacking craziness in markets and said there could be trouble ahead	null	-0.9565
60	601	Investor Paul Singer warned of head smacking craziness in markets and said there could be trouble ahead	null	-0.9565
60	601	China s furtive bitcoin trade heats up again worrying regulators Reuters	null	0.6808
60	661	Big Short investor Michael Burry slams bitcoin as a speculative bubble and warns a crash is coming	null	-0.9993
60	601	Investor Paul Singer warned of head smacking craziness in markets and said there could be trouble ahead	null	-0.9565
60	601	Investor Paul Singer warned of head smacking craziness in markets and said there could be trouble ahead	null	-0.9565
60	601	China s furtive bitcoin trade heats up again worrying regulators Reuters	null	0.6808
60	661	Big Short investor Michael Burry slams bitcoin as a speculative bubble and warns a crash is coming	null	-0.9993
61	781	Cathie Wood breaks down why she was very comfortable as the stock market got rocked by last week s bond sell off and shares her outlook for what happens after the tech rout	null	0.6997
60	601	Investor Paul Singer warned of head smacking craziness in markets and said there could be trouble ahead	null	-0.9565
60	601	Investor Paul Singer warned of head smacking craziness in markets and said there could be trouble ahead	null	-0.9565
60	601	China s furtive bitcoin trade heats up again worrying regulators Reuters	null	0.6808
60	661	Big Short investor Michael Burry slams bitcoin as a speculative bubble and warns a crash is coming	null	-0.9993
60	601	Investor Paul Singer warned of head smacking craziness in markets and said there could be trouble ahead	null	-0.9565
60	601	Investor Paul Singer warned of head smacking craziness in markets and said there could be trouble ahead	null	-0.9565
60	601	China s furtive bitcoin trade heats up again worrying regulators Reuters	null	0.6808
60	661	Big Short investor Michael Burry slams bitcoin as a speculative bubble and warns a crash is coming	null	-0.9993
60	601	Investor Paul Singer warned of head smacking craziness in markets and said there could be trouble ahead	null	-0.9565
60	601	Investor Paul Singer warned of head smacking craziness in markets and said there could be trouble ahead	null	-0.9565
60	601	China s furtive bitcoin trade heats up again worrying regulators Reuters	null	0.6808
60	661	Big Short investor Michael Burry slams bitcoin as a speculative bubble and warns a crash is coming	null	-0.9993
60	601	Investor Paul Singer warned of head smacking craziness in markets and said there could be trouble ahead	null	-0.9565
60	601	Investor Paul Singer warned of head smacking craziness in markets and said there could be trouble ahead	null	-0.9565
60	601	China s furtive bitcoin trade heats up again worrying regulators Reuters	null	0.6808
60	661	Big Short investor Michael Burry slams bitcoin as a speculative bubble and warns a crash is coming	null	-0.9993
60	601	Investor Paul Singer warned of head smacking craziness in markets and said there could be trouble ahead	null	-0.9565
60	601	Investor Paul Singer warned of head smacking craziness in markets and said there could be trouble ahead	null	-0.9565
60	601	China s furtive bitcoin trade heats up again worrying regulators Reuters	null	0.6808
60	661	Big Short investor Michael Burry slams bitcoin as a speculative bubble and warns a crash is coming	null	-0.9993
60	601	Investor Paul Singer warned of head smacking craziness in markets and said there could be trouble ahead	null	-0.9565
60	601	Investor Paul Singer warned of head smacking craziness in markets and said there could be trouble ahead	null	-0.9565
60	601	China s furtive bitcoin trade heats up again worrying regulators Reuters	null	0.6808
60	661	Big Short investor Michael Burry slams bitcoin as a speculative bubble and warns a crash is coming	null	-0.9993
60	601	Investor Paul Singer warned of head smacking craziness in markets and said there could be trouble ahead	null	-0.9565
60	601	Investor Paul Singer warned of head smacking craziness in markets and said there could be trouble ahead	null	-0.9565
60	601	China s furtive bitcoin trade heats up again worrying regulators Reuters	null	0.6808
60	661	Big Short investor Michael Burry slams bitcoin as a speculative bubble and warns a crash is coming	null	-0.9993
61	1201	FOREX Dollar dips Aussie gains on improving risk sentiment Reuters	null	0.9829
60	601	Investor Paul Singer warned of head smacking craziness in markets and said there could be trouble ahead	null	-0.9565
60	601	Investor Paul Singer warned of head smacking craziness in markets and said there could be trouble ahead	null	-0.9565
60	601	China s furtive bitcoin trade heats up again worrying regulators Reuters	null	0.6808
60	661	Big Short investor Michael Burry slams bitcoin as a speculative bubble and warns a crash is coming	null	-0.9993
61	1201	FOREX Dollar dips Aussie gains on improving risk sentiment Reuters	null	0.9829
61	61	Dollar holds advantage over low yielders A looks to RBA Reuters UK	null	-0.9638
61	781	FOREX Dollar index in fourth straight session of gains Aussie picks up Reuters	null	0.9890
61	781	Cathie Wood breaks down why she was very comfortable as the stock market got rocked by last week s bond sell off and shares her outlook for what happens after the tech rout	null	0.6997
61	841	US stocks mixed as investors hit pause on Monday s rally	null	0.9682
61	1021	NewsWatch U S COVID vaccine supply to be boosted by Merck helping make J J vaccine	null	0.5719
61	1201	FOREX Dollar dips Aussie gains on improving risk sentiment Reuters	null	0.9829
61	1261	Tech stocks lead losses as US indices pull back from rally	null	0.9601
61	61	Dollar holds advantage over low yielders A looks to RBA Reuters UK	null	-0.9638
61	781	FOREX Dollar index in fourth straight session of gains Aussie picks up Reuters	null	0.9890
61	781	Cathie Wood breaks down why she was very comfortable as the stock market got rocked by last week s bond sell off and shares her outlook for what happens after the tech rout	null	0.6997
61	841	US stocks mixed as investors hit pause on Monday s rally	null	0.9682
61	1021	NewsWatch U S COVID vaccine supply to be boosted by Merck helping make J J vaccine	null	0.5719
61	1201	FOREX Dollar dips Aussie gains on improving risk sentiment Reuters	null	0.9829
61	1261	Tech stocks lead losses as US indices pull back from rally	null	0.9601
61	61	Dollar holds advantage over low yielders A looks to RBA Reuters UK	null	-0.9638
61	781	FOREX Dollar index in fourth straight session of gains Aussie picks up Reuters	null	0.9890
61	781	Cathie Wood breaks down why she was very comfortable as the stock market got rocked by last week s bond sell off and shares her outlook for what happens after the tech rout	null	0.6997
61	841	US stocks mixed as investors hit pause on Monday s rally	null	0.9682
61	1021	NewsWatch U S COVID vaccine supply to be boosted by Merck helping make J J vaccine	null	0.5719
61	1201	FOREX Dollar dips Aussie gains on improving risk sentiment Reuters	null	0.9829
61	1261	Tech stocks lead losses as US indices pull back from rally	null	0.9601
61	61	Dollar holds advantage over low yielders A looks to RBA Reuters UK	null	-0.9638
61	781	FOREX Dollar index in fourth straight session of gains Aussie picks up Reuters	null	0.9890
61	781	Cathie Wood breaks down why she was very comfortable as the stock market got rocked by last week s bond sell off and shares her outlook for what happens after the tech rout	null	0.6997
61	841	US stocks mixed as investors hit pause on Monday s rally	null	0.9682
61	1021	NewsWatch U S COVID vaccine supply to be boosted by Merck helping make J J vaccine	null	0.5719
61	1201	FOREX Dollar dips Aussie gains on improving risk sentiment Reuters	null	0.9829
61	1261	Tech stocks lead losses as US indices pull back from rally	null	0.9601
61	781	FOREX Dollar index in fourth straight session of gains Aussie picks up Reuters	null	0.9890
61	781	Cathie Wood breaks down why she was very comfortable as the stock market got rocked by last week s bond sell off and shares her outlook for what happens after the tech rout	null	0.6997
61	841	US stocks mixed as investors hit pause on Monday s rally	null	0.9682
61	1021	NewsWatch U S COVID vaccine supply to be boosted by Merck helping make J J vaccine	null	0.5719
61	1201	FOREX Dollar dips Aussie gains on improving risk sentiment Reuters	null	0.9829
61	1261	Tech stocks lead losses as US indices pull back from rally	null	0.9601
62	301	FOREX Dollar on defensive as risk sentiment recovers amid retreat in US yields Aussie gains Reuters	null	0.9814
62	361	GLOBAL MARKETS Asian stocks perk up on economic cheer as Treasuries stabilise Reuters	null	0.9042
62	481	BOJ shares hit limit up again on mix of memento traders liquidity Reuters	null	0.8481
61	781	FOREX Dollar index in fourth straight session of gains Aussie picks up Reuters	null	0.9890
61	781	Cathie Wood breaks down why she was very comfortable as the stock market got rocked by last week s bond sell off and shares her outlook for what happens after the tech rout	null	0.6997
61	841	US stocks mixed as investors hit pause on Monday s rally	null	0.9682
61	1021	NewsWatch U S COVID vaccine supply to be boosted by Merck helping make J J vaccine	null	0.5719
61	1201	FOREX Dollar dips Aussie gains on improving risk sentiment Reuters	null	0.9829
61	1261	Tech stocks lead losses as US indices pull back from rally	null	0.9601
62	301	FOREX Dollar on defensive as risk sentiment recovers amid retreat in US yields Aussie gains Reuters	null	0.9814
62	361	GLOBAL MARKETS Asian stocks perk up on economic cheer as Treasuries stabilise Reuters	null	0.9042
62	481	BOJ shares hit limit up again on mix of memento traders liquidity Reuters	null	0.8481
61	781	FOREX Dollar index in fourth straight session of gains Aussie picks up Reuters	null	0.9890
61	781	Cathie Wood breaks down why she was very comfortable as the stock market got rocked by last week s bond sell off and shares her outlook for what happens after the tech rout	null	0.6997
61	841	US stocks mixed as investors hit pause on Monday s rally	null	0.9682
61	1021	NewsWatch U S COVID vaccine supply to be boosted by Merck helping make J J vaccine	null	0.5719
61	1201	FOREX Dollar dips Aussie gains on improving risk sentiment Reuters	null	0.9829
61	1261	Tech stocks lead losses as US indices pull back from rally	null	0.9601
62	301	FOREX Dollar on defensive as risk sentiment recovers amid retreat in US yields Aussie gains Reuters	null	0.9814
62	361	GLOBAL MARKETS Asian stocks perk up on economic cheer as Treasuries stabilise Reuters	null	0.9042
62	481	BOJ shares hit limit up again on mix of memento traders liquidity Reuters	null	0.8481
62	121	Dow Jones Futures Cut Gains As Jobs Data Disappoints Bitcoin Surges Above 52 000	null	0.9758
61	781	FOREX Dollar index in fourth straight session of gains Aussie picks up Reuters	null	0.9890
61	781	Cathie Wood breaks down why she was very comfortable as the stock market got rocked by last week s bond sell off and shares her outlook for what happens after the tech rout	null	0.6997
61	841	US stocks mixed as investors hit pause on Monday s rally	null	0.9682
61	1021	NewsWatch U S COVID vaccine supply to be boosted by Merck helping make J J vaccine	null	0.5719
61	1201	FOREX Dollar dips Aussie gains on improving risk sentiment Reuters	null	0.9829
61	1261	Tech stocks lead losses as US indices pull back from rally	null	0.9601
62	301	FOREX Dollar on defensive as risk sentiment recovers amid retreat in US yields Aussie gains Reuters	null	0.9814
62	361	GLOBAL MARKETS Asian stocks perk up on economic cheer as Treasuries stabilise Reuters	null	0.9042
62	481	BOJ shares hit limit up again on mix of memento traders liquidity Reuters	null	0.8481
62	721	Stocks climb as Treasuries stabilise Reuters	null	0.8360
62	541	Bitcoin Jumps Above 50 000 in Recovery from Last Week s Rout	null	0.9970
62	661	Dow Rallies Tech Stocks Slide As Jobs Data Disappoints Bitcoin Surges Above 52 000	null	-0.9972
61	781	FOREX Dollar index in fourth straight session of gains Aussie picks up Reuters	null	0.9890
61	781	Cathie Wood breaks down why she was very comfortable as the stock market got rocked by last week s bond sell off and shares her outlook for what happens after the tech rout	null	0.6997
61	841	US stocks mixed as investors hit pause on Monday s rally	null	0.9682
61	1021	NewsWatch U S COVID vaccine supply to be boosted by Merck helping make J J vaccine	null	0.5719
61	1201	FOREX Dollar dips Aussie gains on improving risk sentiment Reuters	null	0.9829
61	1261	Tech stocks lead losses as US indices pull back from rally	null	0.9601
62	301	FOREX Dollar on defensive as risk sentiment recovers amid retreat in US yields Aussie gains Reuters	null	0.9814
62	361	GLOBAL MARKETS Asian stocks perk up on economic cheer as Treasuries stabilise Reuters	null	0.9042
62	721	Stocks climb as Treasuries stabilise Reuters	null	0.8360
61	781	FOREX Dollar index in fourth straight session of gains Aussie picks up Reuters	null	0.9890
61	781	Cathie Wood breaks down why she was very comfortable as the stock market got rocked by last week s bond sell off and shares her outlook for what happens after the tech rout	null	0.6997
61	841	US stocks mixed as investors hit pause on Monday s rally	null	0.9682
61	1021	NewsWatch U S COVID vaccine supply to be boosted by Merck helping make J J vaccine	null	0.5719
61	1201	FOREX Dollar dips Aussie gains on improving risk sentiment Reuters	null	0.9829
61	1261	Tech stocks lead losses as US indices pull back from rally	null	0.9601
62	361	GLOBAL MARKETS Asian stocks perk up on economic cheer as Treasuries stabilise Reuters	null	0.9042
62	481	BOJ shares hit limit up again on mix of memento traders liquidity Reuters	null	0.8481
62	721	Stocks climb as Treasuries stabilise Reuters	null	0.8360
61	781	FOREX Dollar index in fourth straight session of gains Aussie picks up Reuters	null	0.9890
61	781	Cathie Wood breaks down why she was very comfortable as the stock market got rocked by last week s bond sell off and shares her outlook for what happens after the tech rout	null	0.6997
61	841	US stocks mixed as investors hit pause on Monday s rally	null	0.9682
61	1021	NewsWatch U S COVID vaccine supply to be boosted by Merck helping make J J vaccine	null	0.5719
61	1201	FOREX Dollar dips Aussie gains on improving risk sentiment Reuters	null	0.9829
61	1261	Tech stocks lead losses as US indices pull back from rally	null	0.9601
62	361	GLOBAL MARKETS Asian stocks perk up on economic cheer as Treasuries stabilise Reuters	null	0.9042
62	481	BOJ shares hit limit up again on mix of memento traders liquidity Reuters	null	0.8481
62	721	Stocks climb as Treasuries stabilise Reuters	null	0.8360
61	781	FOREX Dollar index in fourth straight session of gains Aussie picks up Reuters	null	0.9890
61	781	Cathie Wood breaks down why she was very comfortable as the stock market got rocked by last week s bond sell off and shares her outlook for what happens after the tech rout	null	0.6997
61	841	US stocks mixed as investors hit pause on Monday s rally	null	0.9682
61	1021	NewsWatch U S COVID vaccine supply to be boosted by Merck helping make J J vaccine	null	0.5719
61	1201	FOREX Dollar dips Aussie gains on improving risk sentiment Reuters	null	0.9829
61	1261	Tech stocks lead losses as US indices pull back from rally	null	0.9601
62	721	Stocks climb as Treasuries stabilise Reuters	null	0.8360
61	781	FOREX Dollar index in fourth straight session of gains Aussie picks up Reuters	null	0.9890
61	781	Cathie Wood breaks down why she was very comfortable as the stock market got rocked by last week s bond sell off and shares her outlook for what happens after the tech rout	null	0.6997
61	841	US stocks mixed as investors hit pause on Monday s rally	null	0.9682
61	1021	NewsWatch U S COVID vaccine supply to be boosted by Merck helping make J J vaccine	null	0.5719
61	1201	FOREX Dollar dips Aussie gains on improving risk sentiment Reuters	null	0.9829
61	1261	Tech stocks lead losses as US indices pull back from rally	null	0.9601
62	721	Stocks climb as Treasuries stabilise Reuters	null	0.8360
61	781	FOREX Dollar index in fourth straight session of gains Aussie picks up Reuters	null	0.9890
62	301	FOREX Dollar on defensive as risk sentiment recovers amid retreat in U S yields Aussie gains Reuters	null	0.9814
61	781	Cathie Wood breaks down why she was very comfortable as the stock market got rocked by last week s bond sell off and shares her outlook for what happens after the tech rout	null	0.6997
61	841	US stocks mixed as investors hit pause on Monday s rally	null	0.9682
61	1021	NewsWatch U S COVID vaccine supply to be boosted by Merck helping make J J vaccine	null	0.5719
61	1201	FOREX Dollar dips Aussie gains on improving risk sentiment Reuters	null	0.9829
61	1261	Tech stocks lead losses as US indices pull back from rally	null	0.9601
62	721	Stocks climb as Treasuries stabilise Reuters	null	0.8360
62	601	Bitcoin Jumps Above 50 000 in Recovery from Last Week s Rout	null	0.9970
61	781	Cathie Wood breaks down why she was very comfortable as the stock market got rocked by last week s bond sell off and shares her outlook for what happens after the tech rout	null	0.6997
61	841	US stocks mixed as investors hit pause on Monday s rally	null	0.9682
61	1201	FOREX Dollar dips Aussie gains on improving risk sentiment Reuters	null	0.9829
61	1261	Tech stocks lead losses as US indices pull back from rally	null	0.9601
62	721	Stocks climb as Treasuries stabilise Reuters	null	0.8360
61	781	Cathie Wood breaks down why she was very comfortable as the stock market got rocked by last week s bond sell off and shares her outlook for what happens after the tech rout	null	0.6997
61	841	US stocks mixed as investors hit pause on Monday s rally	null	0.9682
61	1201	FOREX Dollar dips Aussie gains on improving risk sentiment Reuters	null	0.9829
61	1261	Tech stocks lead losses as US indices pull back from rally	null	0.9601
62	721	Stocks climb as Treasuries stabilise Reuters	null	0.8360
62	1261	Star stockpicker Cathie Wood remains bullish on bitcoin warns on banks Reuters	null	0.9970
62	301	FOREX Dollar on defensive as risk sentiment recovers amid retreat in U S yields Aussie gains Reuters	null	0.9814
62	301	FOREX Dollar on defensive as risk sentiment recovers amid retreat in US yields Aussie gains Reuters	null	0.9814
62	361	GLOBAL MARKETS Asian stocks perk up on economic cheer as Treasuries stabilise Reuters	null	0.9042
62	481	BOJ shares hit limit up again on mix of memento traders liquidity Reuters	null	0.8481
62	721	Stocks climb as Treasuries stabilise Reuters	null	0.8360
62	1021	Here s Why Canaan Stock Was Soaring Today	null	0.9985
62	1261	Why Square Stock Is Giving Away Gains From Yesterday	null	0.9840
62	1261	Star stockpicker Cathie Wood remains bullish on bitcoin warns on banks Reuters	null	0.9970
62	1381	Blockchain Losers Are Spending Millions On What Are Basically Useless Loot Boxes	null	-0.7351
62	301	FOREX Dollar on defensive as risk sentiment recovers amid retreat in U S yields Aussie gains Reuters	null	0.9814
62	301	FOREX Dollar on defensive as risk sentiment recovers amid retreat in US yields Aussie gains Reuters	null	0.9814
62	361	GLOBAL MARKETS Asian stocks perk up on economic cheer as Treasuries stabilise Reuters	null	0.9042
62	481	BOJ shares hit limit up again on mix of memento traders liquidity Reuters	null	0.8481
62	721	Stocks climb as Treasuries stabilise Reuters	null	0.8360
62	1021	Here s Why Canaan Stock Was Soaring Today	null	0.9985
62	1261	Star stockpicker Cathie Wood remains bullish on bitcoin warns on banks Reuters	null	0.9970
62	1381	Blockchain Losers Are Spending Millions On What Are Basically Useless Loot Boxes	null	-0.7351
62	301	FOREX Dollar on defensive as risk sentiment recovers amid retreat in U S yields Aussie gains Reuters	null	0.9814
62	301	FOREX Dollar on defensive as risk sentiment recovers amid retreat in US yields Aussie gains Reuters	null	0.9814
62	361	GLOBAL MARKETS Asian stocks perk up on economic cheer as Treasuries stabilise Reuters	null	0.9042
62	481	BOJ shares hit limit up again on mix of memento traders liquidity Reuters	null	0.8481
62	721	Stocks climb as Treasuries stabilise Reuters	null	0.8360
62	1021	Here s Why Canaan Stock Was Soaring Today	null	0.9985
62	1261	Star stockpicker Cathie Wood remains bullish on bitcoin warns on banks Reuters	null	0.9970
62	1381	Blockchain Losers Are Spending Millions On What Are Basically Useless Loot Boxes	null	-0.7351
62	301	FOREX Dollar on defensive as risk sentiment recovers amid retreat in U S yields Aussie gains Reuters	null	0.9814
62	301	FOREX Dollar on defensive as risk sentiment recovers amid retreat in US yields Aussie gains Reuters	null	0.9814
62	361	GLOBAL MARKETS Asian stocks perk up on economic cheer as Treasuries stabilise Reuters	null	0.9042
62	481	BOJ shares hit limit up again on mix of memento traders liquidity Reuters	null	0.8481
62	721	Stocks climb as Treasuries stabilise Reuters	null	0.8360
62	1021	Here s Why Canaan Stock Was Soaring Today	null	0.9985
62	1261	Star stockpicker Cathie Wood remains bullish on bitcoin warns on banks Reuters	null	0.9970
62	1381	Blockchain Losers Are Spending Millions On What Are Basically Useless Loot Boxes	null	-0.7351
62	301	FOREX Dollar on defensive as risk sentiment recovers amid retreat in U S yields Aussie gains Reuters	null	0.9814
62	301	FOREX Dollar on defensive as risk sentiment recovers amid retreat in US yields Aussie gains Reuters	null	0.9814
62	361	GLOBAL MARKETS Asian stocks perk up on economic cheer as Treasuries stabilise Reuters	null	0.9042
62	481	BOJ shares hit limit up again on mix of memento traders liquidity Reuters	null	0.8481
62	721	Stocks climb as Treasuries stabilise Reuters	null	0.8360
62	1021	Here s Why Canaan Stock Was Soaring Today	null	0.9985
62	1261	Star stockpicker Cathie Wood remains bullish on bitcoin warns on banks Reuters	null	0.9970
62	1381	Blockchain Losers Are Spending Millions On What Are Basically Useless Loot Boxes	null	-0.7351
62	301	FOREX Dollar on defensive as risk sentiment recovers amid retreat in US yields Aussie gains Reuters	null	0.9814
62	361	GLOBAL MARKETS Asian stocks perk up on economic cheer as Treasuries stabilise Reuters	null	0.9042
62	481	BOJ shares hit limit up again on mix of memento traders liquidity Reuters	null	0.8481
62	721	Stocks climb as Treasuries stabilise Reuters	null	0.8360
62	1021	Here s Why Canaan Stock Was Soaring Today	null	0.9985
62	1261	Star stockpicker Cathie Wood remains bullish on bitcoin warns on banks Reuters	null	0.9970
62	1381	Blockchain Losers Are Spending Millions On What Are Basically Useless Loot Boxes	null	-0.7351
62	301	FOREX Dollar on defensive as risk sentiment recovers amid retreat in U S yields Aussie gains Reuters	null	0.9814
62	301	FOREX Dollar on defensive as risk sentiment recovers amid retreat in US yields Aussie gains Reuters	null	0.9814
62	361	GLOBAL MARKETS Asian stocks perk up on economic cheer as Treasuries stabilise Reuters	null	0.9042
62	481	BOJ shares hit limit up again on mix of memento traders liquidity Reuters	null	0.8481
62	721	Stocks climb as Treasuries stabilise Reuters	null	0.8360
62	1021	Here s Why Canaan Stock Was Soaring Today	null	0.9985
62	1261	Star stockpicker Cathie Wood remains bullish on bitcoin warns on banks Reuters	null	0.9970
62	1381	Blockchain Losers Are Spending Millions On What Are Basically Useless Loot Boxes	null	-0.7351
64	541	Global stocks fall again after Jerome Powell fails to calm bond market nerves while oil hits 14 month high SPX DJI NDX IXIC TNX	null	0.9717
64	721	Bitfury Unit to Merge With SPAC to Create Bitcoin Mining Company With 2B Enterprise Value	null	0.5423
64	721	Tesla Facing 250 Billion Market Cap Loss As Bond Yields Surge Bitcoin Tumbles	null	-0.9982
64	541	Global stocks fall again after Jerome Powell fails to calm bond market nerves while oil hits 14 month high SPX DJI NDX IXIC TNX	null	0.9717
64	541	Global stocks fall again after Jerome Powell fails to calm bond market nerves while oil hits 14 month high SPX DJI NDX IXIC TNX	null	0.9717
64	781	ARK CEO Cathie Wood explains why she is very excited about NFTs the collectible tokens that are trading for millions online and shares her latest thoughts on 5 top holdings including bitcoin	null	0.6901
64	541	Global stocks fall again after Jerome Powell fails to calm bond market nerves while oil hits 14 month high SPX DJI NDX IXIC TNX	null	0.9717
64	781	ARK CEO Cathie Wood explains why she is very excited about NFTs the collectible tokens that are trading for millions online and shares her latest thoughts on 5 top holdings including bitcoin	null	0.6901
64	541	Global stocks fall again after Jerome Powell fails to calm bond market nerves while oil hits 14 month high SPX DJI NDX IXIC TNX	null	0.9717
64	781	ARK CEO Cathie Wood explains why she is very excited about NFTs the collectible tokens that are trading for millions online and shares her latest thoughts on 5 top holdings including bitcoin	null	0.6901
64	841	Big Short investor Michael Burry says he ll stop tweeting after warning of market bubbles for months	null	-0.5574
63	1381	Your self driving car still isn t ready Smarter roads might change that	null	0.6705
64	781	ARK CEO Cathie Wood explains why she is very excited about NFTs the collectible tokens that are trading for millions online and shares her latest thoughts on 5 top holdings including bitcoin	null	0.6901
64	841	Big Short investor Michael Burry says he ll stop tweeting after warning of market bubbles for months	null	-0.5574
64	781	ARK CEO Cathie Wood explains why she is very excited about NFTs the collectible tokens that are trading for millions online and shares her latest thoughts on 5 top holdings including bitcoin	null	0.6901
64	841	Big Short investor Michael Burry says he ll stop tweeting after warning of market bubbles for months	null	-0.5574
64	781	ARK CEO Cathie Wood explains why she is very excited about NFTs the collectible tokens that are trading for millions online and shares her latest thoughts on 5 top holdings including bitcoin	null	0.6901
64	841	Big Short investor Michael Burry says he ll stop tweeting after warning of market bubbles for months	null	-0.5574
64	1021	Cryptos Mark Cuban s Dallas Mavericks acceptance of dogecoin sparks crypto debate What s a joke coin	null	0.6369
64	1021	John McAfee charged with securities fraud for pump and dump cryptocurrency scheme	null	-0.7184
64	901	FOREX Dollar jumps as U S jobs growth beats expectations	null	0.9977
64	781	ARK CEO Cathie Wood explains why she is very excited about NFTs the collectible tokens that are trading for millions online and shares her latest thoughts on 5 top holdings including bitcoin	null	0.6901
64	841	Big Short investor Michael Burry says he ll stop tweeting after warning of market bubbles for months	null	-0.5574
64	1021	Cryptos Mark Cuban s Dallas Mavericks acceptance of dogecoin sparks crypto debate What s a joke coin	null	0.6369
64	1021	John McAfee charged with securities fraud for pump and dump cryptocurrency scheme	null	-0.7184
64	1081	Bitcoin mining stocks sink as the cryptocurrency struggles to reclaim 50 000 level MARA RIOT HVBTF TSLA MSTR	null	-0.7804
64	781	ARK CEO Cathie Wood explains why she is very excited about NFTs the collectible tokens that are trading for millions online and shares her latest thoughts on 5 top holdings including bitcoin	null	0.6901
64	841	Big Short investor Michael Burry says he ll stop tweeting after warning of market bubbles for months	null	-0.5574
64	1021	Cryptos Mark Cuban s Dallas Mavericks acceptance of dogecoin sparks crypto debate What s a joke coin	null	0.6369
64	1021	John McAfee charged with securities fraud for pump and dump cryptocurrency scheme	null	-0.7184
64	1081	Bitcoin mining stocks sink as the cryptocurrency struggles to reclaim 50 000 level MARA RIOT HVBTF TSLA MSTR	null	-0.7804
64	781	ARK CEO Cathie Wood explains why she is very excited about NFTs the collectible tokens that are trading for millions online and shares her latest thoughts on 5 top holdings including bitcoin	null	0.6901
64	841	Big Short investor Michael Burry says he ll stop tweeting after warning of market bubbles for months	null	-0.5574
64	1021	Cryptos Mark Cuban s Dallas Mavericks acceptance of dogecoin sparks crypto debate What s a joke coin	null	0.6369
64	1021	Retail Investors Elon Musk And The Rise Of Bitcoin Bitcoin Magazine	null	0.9818
64	1021	John McAfee charged with securities fraud for pump and dump cryptocurrency scheme	null	-0.7184
64	1081	Bitcoin mining stocks sink as the cryptocurrency struggles to reclaim 50 000 level MARA RIOT HVBTF TSLA MSTR	null	-0.7804
64	781	ARK CEO Cathie Wood explains why she is very excited about NFTs the collectible tokens that are trading for millions online and shares her latest thoughts on 5 top holdings including bitcoin	null	0.6901
64	841	Big Short investor Michael Burry says he ll stop tweeting after warning of market bubbles for months	null	-0.5574
64	1021	Cryptos Mark Cuban s Dallas Mavericks acceptance of dogecoin sparks crypto debate What s a joke coin	null	0.6369
64	1021	Retail Investors Elon Musk And The Rise Of Bitcoin Bitcoin Magazine	null	0.9818
64	1021	John McAfee charged with securities fraud for pump and dump cryptocurrency scheme	null	-0.7184
64	1081	Bitcoin mining stocks sink as the cryptocurrency struggles to reclaim 50 000 level MARA RIOT HVBTF TSLA MSTR	null	-0.7804
64	781	ARK CEO Cathie Wood explains why she is very excited about NFTs the collectible tokens that are trading for millions online and shares her latest thoughts on 5 top holdings including bitcoin	null	0.6901
64	841	Big Short investor Michael Burry says he ll stop tweeting after warning of market bubbles for months	null	-0.5574
64	1021	Cryptos Mark Cuban s Dallas Mavericks acceptance of dogecoin sparks crypto debate What s a joke coin	null	0.6369
64	1021	Retail Investors Elon Musk And The Rise Of Bitcoin Bitcoin Magazine	null	0.9818
64	1021	John McAfee charged with securities fraud for pump and dump cryptocurrency scheme	null	-0.7184
64	1081	Bitcoin mining stocks sink as the cryptocurrency struggles to reclaim 50 000 level MARA RIOT HVBTF TSLA MSTR	null	-0.7804
64	781	ARK CEO Cathie Wood explains why she is very excited about NFTs the collectible tokens that are trading for millions online and shares her latest thoughts on 5 top holdings including bitcoin	null	0.6901
64	841	Big Short investor Michael Burry says he ll stop tweeting after warning of market bubbles for months	null	-0.5574
64	1021	Cryptos Mark Cuban s Dallas Mavericks acceptance of dogecoin sparks crypto debate What s a joke coin	null	0.6369
64	1021	Retail Investors Elon Musk And The Rise Of Bitcoin Bitcoin Magazine	null	0.9818
64	1021	John McAfee charged with securities fraud for pump and dump cryptocurrency scheme	null	-0.7184
64	1081	Bitcoin mining stocks sink as the cryptocurrency struggles to reclaim 50 000 level MARA RIOT HVBTF TSLA MSTR	null	-0.7804
64	781	ARK CEO Cathie Wood explains why she is very excited about NFTs the collectible tokens that are trading for millions online and shares her latest thoughts on 5 top holdings including bitcoin	null	0.6901
64	841	Big Short investor Michael Burry says he ll stop tweeting after warning of market bubbles for months	null	-0.5574
64	1021	Cryptos Mark Cuban s Dallas Mavericks acceptance of dogecoin sparks crypto debate What s a joke coin	null	0.6369
64	1021	Retail Investors Elon Musk And The Rise Of Bitcoin Bitcoin Magazine	null	0.9818
64	1021	John McAfee charged with securities fraud for pump and dump cryptocurrency scheme	null	-0.7184
64	1081	Bitcoin mining stocks sink as the cryptocurrency struggles to reclaim 50 000 level MARA RIOT HVBTF TSLA MSTR	null	-0.7804
64	781	ARK CEO Cathie Wood explains why she is very excited about NFTs the collectible tokens that are trading for millions online and shares her latest thoughts on 5 top holdings including bitcoin	null	0.6901
64	841	Big Short investor Michael Burry says he ll stop tweeting after warning of market bubbles for months	null	-0.5574
64	1021	Cryptos Mark Cuban s Dallas Mavericks acceptance of dogecoin sparks crypto debate What s a joke coin	null	0.6369
64	1021	Retail Investors Elon Musk And The Rise Of Bitcoin Bitcoin Magazine	null	0.9818
64	1021	John McAfee charged with securities fraud for pump and dump cryptocurrency scheme	null	-0.7184
64	1081	Bitcoin mining stocks sink as the cryptocurrency struggles to reclaim 50 000 level MARA RIOT HVBTF TSLA MSTR	null	-0.7804
64	781	ARK CEO Cathie Wood explains why she is very excited about NFTs the collectible tokens that are trading for millions online and shares her latest thoughts on 5 top holdings including bitcoin	null	0.6901
64	841	Big Short investor Michael Burry says he ll stop tweeting after warning of market bubbles for months	null	-0.5574
64	1021	Cryptos Mark Cuban s Dallas Mavericks acceptance of dogecoin sparks crypto debate What s a joke coin	null	0.6369
64	1021	Retail Investors Elon Musk And The Rise Of Bitcoin Bitcoin Magazine	null	0.9818
64	1021	John McAfee charged with securities fraud for pump and dump cryptocurrency scheme	null	-0.7184
64	1081	Bitcoin mining stocks sink as the cryptocurrency struggles to reclaim 50 000 level MARA RIOT HVBTF TSLA MSTR	null	-0.7804
64	781	ARK CEO Cathie Wood explains why she is very excited about NFTs the collectible tokens that are trading for millions online and shares her latest thoughts on 5 top holdings including bitcoin	null	0.6901
64	841	Big Short investor Michael Burry says he ll stop tweeting after warning of market bubbles for months	null	-0.5574
64	1021	Cryptos Mark Cuban s Dallas Mavericks acceptance of dogecoin sparks crypto debate What s a joke coin	null	0.6369
64	1021	Retail Investors Elon Musk And The Rise Of Bitcoin Bitcoin Magazine	null	0.9818
64	1021	John McAfee charged with securities fraud for pump and dump cryptocurrency scheme	null	-0.7184
64	1081	Bitcoin mining stocks sink as the cryptocurrency struggles to reclaim 50 000 level MARA RIOT HVBTF TSLA MSTR	null	-0.7804
64	781	ARK CEO Cathie Wood explains why she is very excited about NFTs the collectible tokens that are trading for millions online and shares her latest thoughts on 5 top holdings including bitcoin	null	0.6901
64	841	Big Short investor Michael Burry says he ll stop tweeting after warning of market bubbles for months	null	-0.5574
64	1021	Cryptos Mark Cuban s Dallas Mavericks acceptance of dogecoin sparks crypto debate What s a joke coin	null	0.6369
64	1021	Retail Investors Elon Musk And The Rise Of Bitcoin Bitcoin Magazine	null	0.9818
64	1021	John McAfee charged with securities fraud for pump and dump cryptocurrency scheme	null	-0.7184
64	1081	Bitcoin mining stocks sink as the cryptocurrency struggles to reclaim 50 000 level MARA RIOT HVBTF TSLA MSTR	null	-0.7804
64	781	ARK CEO Cathie Wood explains why she is very excited about NFTs the collectible tokens that are trading for millions online and shares her latest thoughts on 5 top holdings including bitcoin	null	0.6901
64	841	Big Short investor Michael Burry says he ll stop tweeting after warning of market bubbles for months	null	-0.5574
64	1021	Cryptos Mark Cuban s Dallas Mavericks acceptance of dogecoin sparks crypto debate What s a joke coin	null	0.6369
64	1021	Retail Investors Elon Musk And The Rise Of Bitcoin Bitcoin Magazine	null	0.9818
64	1021	John McAfee charged with securities fraud for pump and dump cryptocurrency scheme	null	-0.7184
64	1081	Bitcoin mining stocks sink as the cryptocurrency struggles to reclaim 50 000 level MARA RIOT HVBTF TSLA MSTR	null	-0.7804
64	1261	Gold is feeling the heat as Powell ignores bond market selloff Kitco NEWS	null	-0.9985
64	781	ARK CEO Cathie Wood explains why she is very excited about NFTs the collectible tokens that are trading for millions online and shares her latest thoughts on 5 top holdings including bitcoin	null	0.6901
64	841	Big Short investor Michael Burry says he ll stop tweeting after warning of market bubbles for months	null	-0.5574
64	1021	Cryptos Mark Cuban s Dallas Mavericks acceptance of dogecoin sparks crypto debate What s a joke coin	null	0.6369
64	1021	Retail Investors Elon Musk And The Rise Of Bitcoin Bitcoin Magazine	null	0.9818
64	1021	John McAfee charged with securities fraud for pump and dump cryptocurrency scheme	null	-0.7184
64	1081	Bitcoin mining stocks sink as the cryptocurrency struggles to reclaim 50 000 level MARA RIOT HVBTF TSLA MSTR	null	-0.7804
64	1261	Gold is feeling the heat as Powell ignores bond market selloff Kitco NEWS	null	-0.9985
65	1	has listed his original tweet just setting up my twttr as an NFT on auction site Valuables Jay Peters The Verge	null	0.9081
65	241	Elon Musk loses 27 billion as historic wealth gains unravel	null	0.9833
65	301	Weekend edition China s here to win ethical bitcoin buttergate	null	0.7964
65	541	Why the rise of bitcoin could be the first shot in a currency revolution	null	0.9818
65	541	NFTs are a dangerous trap	null	-0.6597
65	661	Ethereum Rival Polkadot Futures Suffer 99 Flash Crash Forcing Binance To Enact Fresh Controls	null	-0.9993
65	661	Tesla Stock Price Tanks 30 Since Buying Bitcoin Could Netflix Or Apple Really Follow	null	0.9325
65	721	Cryptocurrencies or Stocks Here s What I m Buying and Why	null	0.9325
65	781	1 Question I m Trying to Answer About Riot Blockchain	null	-0.5574
65	1	has listed his original tweet just setting up my twttr as an NFT on auction site Valuables Jay Peters The Verge	null	0.9081
65	241	Elon Musk loses 27 billion as historic wealth gains unravel	null	0.9833
65	301	Weekend edition China s here to win ethical bitcoin buttergate	null	0.7964
65	541	Why the rise of bitcoin could be the first shot in a currency revolution	null	0.9818
65	541	NFTs are a dangerous trap	null	-0.6597
65	661	Ethereum Rival Polkadot Futures Suffer 99 Flash Crash Forcing Binance To Enact Fresh Controls	null	-0.9993
65	661	Tesla Stock Price Tanks 30 Since Buying Bitcoin Could Netflix Or Apple Really Follow	null	0.9325
65	721	Cryptocurrencies or Stocks Here s What I m Buying and Why	null	0.9325
65	781	1 Question I m Trying to Answer About Riot Blockchain	null	-0.5574
65	1	has listed his original tweet just setting up my twttr as an NFT on auction site Valuables Jay Peters The Verge	null	0.9081
65	241	Elon Musk loses 27 billion as historic wealth gains unravel	null	0.9833
65	301	Weekend edition China s here to win ethical bitcoin buttergate	null	0.7964
65	541	Why the rise of bitcoin could be the first shot in a currency revolution	null	0.9818
65	541	NFTs are a dangerous trap	null	-0.6597
65	661	Ethereum Rival Polkadot Futures Suffer 99 Flash Crash Forcing Binance To Enact Fresh Controls	null	-0.9993
65	661	Tesla Stock Price Tanks 30 Since Buying Bitcoin Could Netflix Or Apple Really Follow	null	0.9325
65	721	Cryptocurrencies or Stocks Here s What I m Buying and Why	null	0.9325
65	1	has listed his original tweet just setting up my twttr as an NFT on auction site Valuables Jay Peters The Verge	null	0.9081
65	241	Elon Musk loses 27 billion as historic wealth gains unravel	null	0.9833
65	301	Weekend edition China s here to win ethical bitcoin buttergate	null	0.7964
65	541	Why the rise of bitcoin could be the first shot in a currency revolution	null	0.9818
65	541	NFTs are a dangerous trap	null	-0.6597
65	661	Ethereum Rival Polkadot Futures Suffer 99 Flash Crash Forcing Binance To Enact Fresh Controls	null	-0.9993
65	661	Tesla Stock Price Tanks 30 Since Buying Bitcoin Could Netflix Or Apple Really Follow	null	0.9325
65	721	Cryptocurrencies or Stocks Here s What I m Buying and Why	null	0.9325
65	781	1 Question I m Trying to Answer About Riot Blockchain	null	-0.5574
65	1	has listed his original tweet just setting up my twttr as an NFT on auction site Valuables Jay Peters The Verge	null	0.9081
65	301	Weekend edition China s here to win ethical bitcoin buttergate	null	0.7964
65	541	NFTs are a dangerous trap	null	-0.6597
65	661	Tesla Stock Price Tanks 30 Since Buying Bitcoin Could Netflix Or Apple Really Follow	null	0.9325
65	721	Cryptocurrencies or Stocks Here s What I m Buying and Why	null	0.9325
65	781	1 Question I m Trying to Answer About Riot Blockchain	null	-0.5574
65	1261	Antivirus pioneer John McAfee charged with 13M cryptocurrency fraud	null	-0.6808
65	1	has listed his original tweet just setting up my twttr as an NFT on auction site Valuables Jay Peters The Verge	null	0.9081
65	301	Weekend edition China s here to win ethical bitcoin buttergate	null	0.7964
65	541	NFTs are a dangerous trap	null	-0.6597
65	661	Tesla Stock Price Tanks 30 Since Buying Bitcoin Could Netflix Or Apple Really Follow	null	0.9325
65	721	Cryptocurrencies or Stocks Here s What I m Buying and Why	null	0.9325
65	781	1 Question I m Trying to Answer About Riot Blockchain	null	-0.5574
65	1261	Antivirus pioneer John McAfee charged with 13M cryptocurrency fraud	null	-0.6808
65	1	has listed his original tweet just setting up my twttr as an NFT on auction site Valuables Jay Peters The Verge	null	0.9081
65	301	Weekend edition China s here to win ethical bitcoin buttergate	null	0.7964
65	541	NFTs are a dangerous trap	null	-0.6597
65	661	Tesla Stock Price Tanks 30 Since Buying Bitcoin Could Netflix Or Apple Really Follow	null	0.9325
65	721	Cryptocurrencies or Stocks Here s What I m Buying and Why	null	0.9325
65	781	1 Question I m Trying to Answer About Riot Blockchain	null	-0.5574
65	1261	Antivirus pioneer John McAfee charged with 13M cryptocurrency fraud	null	-0.6808
66	241	Chinese Beauty App Becomes First Major Company to Buy Ether	null	0.5859
66	1141	Bitcoin Retakes 50K on US Stimulus Progress Uniswap s UNI Cracks the Top 10	null	0.5574
66	601	Chinese beauty app Meitu shares surge after cryptocurrency investment	null	0.7184
66	721	Chinese beauty app Meitu shares surge after cryptocurrency investment	null	0.7184
66	241	Chinese beauty app Meitu shares surge after cryptocurrency investment	null	0.7184
66	601	Chinese beauty app Meitu shares surge after cryptocurrency investment	null	0.7184
66	1141	Bitcoin Retakes 50K on US Stimulus Progress Uniswap s UNI Cracks the Top 10	null	0.5574
66	1141	Bitcoin Retakes 50K on US Stimulus Progress Uniswap s UNI Cracks the Top 10	null	0.5574
67	121	Chinese beauty app Meitu shares surge after cryptocurrency investment Reuters	null	0.7184
67	301	Are most of the cryptocurrencies ready to keep the long term growth	null	0.6249
66	1141	Bitcoin Retakes 50K on US Stimulus Progress Uniswap s UNI Cracks the Top 10	null	0.5574
67	121	Chinese beauty app Meitu shares surge after cryptocurrency investment Reuters	null	0.7184
66	1141	Bitcoin Retakes 50K on US Stimulus Progress Uniswap s UNI Cracks the Top 10	null	0.5574
67	121	Chinese beauty app Meitu shares surge after cryptocurrency investment Reuters	null	0.7184
67	121	Chinese beauty app Meitu shares surge after cryptocurrency investment Reuters	null	0.7184
67	421	UPDATE 1 Norway s Aker ASA sets up bitcoin unit Reuters	null	0.7906
67	121	Chinese beauty app Meitu shares surge after cryptocurrency investment Reuters	null	0.7184
67	421	UPDATE 1 Norway s Aker ASA sets up bitcoin unit Reuters	null	0.7906
67	481	Breakingviews Capital Calls Crypto buy won t flatter beauty app Reuters	null	0.8360
67	121	Chinese beauty app Meitu shares surge after cryptocurrency investment Reuters	null	0.7184
67	421	UPDATE 1 Norway s Aker ASA sets up bitcoin unit Reuters	null	0.7906
67	481	Breakingviews Capital Calls Crypto buy won t flatter beauty app Reuters	null	0.8360
\.


--
-- Data for Name: articles_fact; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.articles_fact (id, dateid, timeid, title, url, comp_sentiment) FROM stdin;
1	25	747	Big Investors Stacked Up Ether as Price Rose to Record High	null	0.9818
2	25	927	Bitcoin price rises as second biggest cryptocurrency ether hits all time high	null	0.9682
3	25	747	ETH breaks out vs Bitcoin What s next for Ethereum after 100 gain in January	null	0.9818
4	25	927	Grayscale donates 1M to Coin Center pledges up to 1M more in matched contributions	null	0.7906
5	25	807	Here s Why Ethereum Could Beat Bitcoin As Best Asset Of 2021	null	0.7717
6	25	1227	All risk no gain The vague definition of stablecoins is causing problems	null	0.9705
7	25	927	First Mover Bitcoin Flushes Weak Hands as Ethereum Hits New All Time High	null	0.9590
8	25	747	Big Investors Stacked up Ether as Price Rose to Record High CoinDesk	null	0.9818
9	25	1047	I ve been convinced to buy Bitcoin the odds are in my favour	null	0.6808
10	25	987	Crypto Markets Show More Signs of Excess Amid Bitcoin Rebound	null	0.9818
11	25	1347	Crypto Hedge Funds Underperformed Bitcoin During Rally Last Year	null	0.9682
12	25	1167	Marathon Patent Is Not a Wise Play Even for Crypto Bulls	null	0.8862
13	25	507	FOREX Dollar gains as stimulus nerves nudge investors to safety	null	0.9840
14	25	1347	45B DeFi market cap and soaring TVL suggest the best is yet to come	null	0.9986
15	25	147	Warning Signal the messaging app s new features are causing internal turmoil	null	-0.5994
16	25	867	Two Arrested for Orchestrating Escape of Wirecard Exec Accused of Fraud CoinDesk	null	-0.8126
17	25	387	FOREX Dollar gains as stimulus nerves nudge investors to safety By Reuters	null	0.9840
18	25	1287	Substack Newsletters Are Being Used to Spread Crypto Scams	null	-0.5859
19	25	627	Global Markets Start Week On Positive Note Ethereum Rally In Focus	null	0.9766
20	25	987	Crypto Markets Show More Signs of Excess Amid Bitcoin Rebound	null	0.9818
21	26	1372	Is GBTC Stock A Good Buy After Bitcoin Tumbles From Highs	null	-0.9968
22	26	1432	Bitcoin Warren Buffett won t touch it and here s why	null	0.5719
23	26	1252	Bitcoin Falls as Miners Sell Institutions Watch Yellen	null	-0.9993
24	26	1372	DeFi tokens bag double digit gains as bears pin Bitcoin price below 33K	null	0.9325
25	26	1312	How scammers siphoned 36B in fraudulent unemployment payments from US	null	-0.7269
26	26	1432	SkyBridge s Anthony Scaramucci Talks Up New Bitcoin Fund Crypto s Exponential Liftoff	null	0.7906
27	26	1432	SkyBridge s Scaramucci Talks Up New Bitcoin Fund Crypto s Exponential Liftoff	null	0.7906
28	26	428	Signal is drama free for now but it should prepare for the worst	null	-0.9944
29	26	1185	Maybe Having A Crypto Expert At SEC s Helm Isn t So Great For Crypto Company Being Sued By SEC	null	0.6590
30	26	1372	Is GBTC Stock A Good Buy After Bitcoin Tumbles From Highs	null	-0.9968
31	26	1432	Bitcoin Warren Buffett won t touch it and here s why	null	0.5719
32	26	1252	Bitcoin Falls as Miners Sell Institutions Watch Yellen	null	-0.9993
33	26	1372	DeFi tokens bag double digit gains as bears pin Bitcoin price below 33K	null	0.9325
34	26	1312	How scammers siphoned 36B in fraudulent unemployment payments from US	null	-0.7269
35	26	1432	SkyBridge s Anthony Scaramucci Talks Up New Bitcoin Fund Crypto s Exponential Liftoff	null	0.7906
36	26	1432	SkyBridge s Scaramucci Talks Up New Bitcoin Fund Crypto s Exponential Liftoff	null	0.7906
37	26	428	Signal is drama free for now but it should prepare for the worst	null	-0.9944
38	26	1185	Maybe Having A Crypto Expert At SEC s Helm Isn t So Great For Crypto Company Being Sued By SEC	null	0.6590
39	26	147	Bearish Divergence Hints At First Major Chainlink Corrective Phase	null	-0.9970
40	26	1347	Harvard Yale Brown Endowments Have Been Buying Bitcoin for at Least a Year Sources	null	0.9325
41	26	1167	The Soul Killing Wallet Emptying Struggle to Buy a Video Card During a Pandemic	null	-0.8074
42	26	1407	More Institutional Investors Are Buying Ether Seeing It as a Store of Value CoinDesk	null	0.9468
43	26	387	FOREX Dollar gains as stimulus nerves nudge investors to safety	null	0.9840
44	27	652	American Cancer Society Launches 1M Cryptocurrency Fund	null	-0.6597
45	27	1168	Could meme stocks like GameStop kill bitcoin s rise	null	0.9771
46	27	1012	Bitcoin Bounces Off 30 000 as Record Momentum Fades	null	0.9818
47	27	652	American Cancer Society Launches 1M Cryptocurrency Fund CoinDesk	null	-0.6597
48	27	652	3 Unstoppable Stocks That ll Crush Bitcoin in 2021 The Motley Fool	null	-0.6486
49	27	892	American Cancer Society To Use Cryptocurrency To Fight Cancer	null	-0.9081
50	27	532	US Man Sentenced to Prison for Embezzling 20M of ICO Investors Funds CoinDesk	null	-0.5267
51	27	952	Silver Lake Co Founder Tells Davos Cash Is Used Far More in Crime Than Bitcoin	null	-0.5829
52	27	292	Litecoin Falls 10 In Rout By Investing com	null	-0.9993
53	27	292	Litecoin Falls 10 20 In Selloff By Investing com	null	-0.9997
54	27	292	Cardano Falls 10 17 In Selloff By Investing com	null	-0.9997
55	27	292	Litecoin Falls 10 20 In Rout	null	-0.9993
56	27	292	Cardano Falls 10 17 In Rout	null	-0.9993
57	27	532	US Man Sentenced to Prison for Embezzling 20M of ICO Investors Funds	null	-0.5267
58	27	1072	Polkadot Price Prediction DOT poised to rise higher as ecosystem continues to grow rapidly	null	0.9834
59	27	952	Stock trading platforms suffer tech problems amid market mayhem	null	-0.7351
60	27	292	Shorts Now Paying the Longs Funding Rates on BTC ETH Perps Going Negative Across the Board	null	-0.5719
61	27	592	Scams are driving South African authorities to regulate crypto trading	null	-0.5859
62	27	952	Big Name Ivy League Endowments Are Now Buying Bitcoin ETF Trends	null	0.9325
63	27	892	TronGo s Launch A New Era of Decentralized Reward Systems Begins	null	0.5719
64	27	892	Scaramucci Says the GameStop Saga Is Positive for Bitcoin	null	0.5574
65	27	712	Lawsuit Against Israeli Crypto Entrepreneur Moshe Hegog Fails in US Court CoinDesk	null	-0.5719
66	27	712	Opening Bell Earnings Virus Concerns Spur U S Tech Shares Gold Slumps Investing com CA	null	-0.9978
67	27	652	3 Unstoppable Stocks at All Time Highs That You Can Still Buy The Motley Fool	null	-0.5719
68	27	292	Crypterium to crowdfund on Seedrs monthly profits rise 10X during Coronavirus pandemic By BTC Peers	null	0.9847
69	27	352	GameStop Is Rage Against the Financial Machine	null	-0.5574
70	27	292	Scaramucci Says the GameStop Phenomenon Is Positive for Bitcoin	null	0.5574
71	27	1072	National Crime Agency warns novice and veteran traders alike of rise in clone company scams ZDNet	null	0.9652
72	27	952	Silver Lake Co Founder Tells Davos Cash Is Used Far More in Crime Than Bitcoin CoinDesk	null	-0.5829
73	27	712	Opening Bell Earnings Virus Concerns Spur U S Tech Shares Gold Slumps Investing com	null	-0.9978
74	27	292	Bitcoin Nearing 50 Day Moving Average Whales Are Back to Buying	null	0.9325
75	27	1165	Could meme stocks like GameStop kill bitcoin s rise	null	0.9771
76	27	676	American Cancer Society Launches 1M Cryptocurrency Fund	null	-0.6597
77	27	652	American Cancer Society Launches 1M Cryptocurrency Fund	null	-0.6597
78	27	1168	Could meme stocks like GameStop kill bitcoin s rise	null	0.9771
79	27	1012	Bitcoin Bounces Off 30 000 as Record Momentum Fades	null	0.9818
80	27	652	American Cancer Society Launches 1M Cryptocurrency Fund CoinDesk	null	-0.6597
81	27	652	3 Unstoppable Stocks That ll Crush Bitcoin in 2021 The Motley Fool	null	-0.6486
82	27	892	American Cancer Society To Use Cryptocurrency To Fight Cancer	null	-0.9081
83	27	532	US Man Sentenced to Prison for Embezzling 20M of ICO Investors Funds CoinDesk	null	-0.5267
84	27	952	Silver Lake Co Founder Tells Davos Cash Is Used Far More in Crime Than Bitcoin	null	-0.5829
85	27	292	Litecoin Falls 10 In Rout By Investing com	null	-0.9993
86	27	292	Litecoin Falls 10 20 In Selloff By Investing com	null	-0.9997
87	27	292	Cardano Falls 10 17 In Selloff By Investing com	null	-0.9997
88	27	292	Litecoin Falls 10 20 In Rout	null	-0.9993
89	27	292	Cardano Falls 10 17 In Rout	null	-0.9993
90	27	532	US Man Sentenced to Prison for Embezzling 20M of ICO Investors Funds	null	-0.5267
91	27	1072	Polkadot Price Prediction DOT poised to rise higher as ecosystem continues to grow rapidly	null	0.9834
92	27	952	Stock trading platforms suffer tech problems amid market mayhem	null	-0.7351
93	27	292	Shorts Now Paying the Longs Funding Rates on BTC ETH Perps Going Negative Across the Board	null	-0.5719
94	27	592	Scams are driving South African authorities to regulate crypto trading	null	-0.5859
95	27	952	Big Name Ivy League Endowments Are Now Buying Bitcoin ETF Trends	null	0.9325
96	27	892	TronGo s Launch A New Era of Decentralized Reward Systems Begins	null	0.5719
97	27	892	Scaramucci Says the GameStop Saga Is Positive for Bitcoin	null	0.5574
98	27	712	Lawsuit Against Israeli Crypto Entrepreneur Moshe Hegog Fails in US Court CoinDesk	null	-0.5719
99	27	712	Opening Bell Earnings Virus Concerns Spur U S Tech Shares Gold Slumps Investing com CA	null	-0.9978
100	27	652	3 Unstoppable Stocks at All Time Highs That You Can Still Buy The Motley Fool	null	-0.5719
101	27	292	Crypterium to crowdfund on Seedrs monthly profits rise 10X during Coronavirus pandemic By BTC Peers	null	0.9847
102	27	352	GameStop Is Rage Against the Financial Machine	null	-0.5574
103	27	292	Scaramucci Says the GameStop Phenomenon Is Positive for Bitcoin	null	0.5574
104	27	1072	National Crime Agency warns novice and veteran traders alike of rise in clone company scams ZDNet	null	0.9652
105	27	952	Silver Lake Co Founder Tells Davos Cash Is Used Far More in Crime Than Bitcoin CoinDesk	null	-0.5829
106	27	712	Opening Bell Earnings Virus Concerns Spur U S Tech Shares Gold Slumps Investing com	null	-0.9978
107	27	292	Bitcoin Nearing 50 Day Moving Average Whales Are Back to Buying	null	0.9325
108	27	1165	Could meme stocks like GameStop kill bitcoin s rise	null	0.9771
109	27	676	American Cancer Society Launches 1M Cryptocurrency Fund	null	-0.6597
110	27	1045	Bitcoin Bounces Off 30 000 as Record Momentum Fades	null	0.9818
111	27	685	American Cancer Society Launches 1M Cryptocurrency Fund	null	-0.6597
112	27	1165	Bitcoin s Best Days Lie Ahead	null	0.6369
113	27	685	3 Unstoppable Stocks That ll Crush Bitcoin in 2021 The Motley Fool	null	-0.6486
114	27	805	5 Hard to Believe Bitcoin Facts The Motley Fool	null	-0.5106
115	27	685	American Cancer Society Launches 1M Cryptocurrency Fund CoinDesk	null	-0.6597
116	27	925	American Cancer Society To Use Cryptocurrency To Fight Cancer	null	-0.9081
117	27	925	Bitcoin Bounces Off 30 000 as Record Momentum Fades	null	0.9818
118	27	1165	Reddit teams up with the Ethereum Foundation to bring the value and independence to millions of	null	0.8555
119	27	1405	Cybercops derail malware botnet FBI makes ransomware arrest	null	-0.5574
120	27	985	Bitcoin crashes below 30 000 as slump continues	null	-0.9993
121	27	1105	Polkadot Price Prediction DOT poised to rise higher as ecosystem continues to grow rapidly	null	0.9834
122	27	925	Silver Lake Co Founder Tells Davos Cash Is Used Far More in Crime Than Bitcoin	null	-0.5829
123	27	1405	Cybercops derail malware botnet FBI makes ransomware arrest Times Leader	null	-0.5574
124	27	925	Stock trading platforms suffer tech problems amid market mayhem	null	-0.7351
125	27	805	Cybercops derail malware botnet FBI makes ransomware arrest	null	-0.5574
126	27	805	Cybercops derail malware botnet FBI makes ransomware arrest	null	-0.5574
127	27	805	Cybercops derail malware botnet FBI makes ransomware arrest	null	-0.5574
128	27	805	Cybercops derail malware botnet FBI makes ransomware arrest	null	-0.5574
129	27	1405	3 reasons why Uniswap UNI token hit a new all time high above 15	null	0.9682
130	27	1225	International operation derails malware botnet FBI makes ransomware arrest	null	-0.5719
131	27	1285	Capitol riots Who has the FBI arrested so far	null	-0.7506
132	27	1225	Fed React Don t trigger a tantrum GameStop still rising Apple on deck Oil can t hold EIA gains	null	0.9781
133	27	1165	Could meme stocks like GameStop kill bitcoin s rise	null	0.9771
134	27	745	Bitcoin Briefly Dips Below 30K Dollar Bounces Ahead of Fed Reserve Rate Announcement	null	0.9818
135	27	1165	Bitcoin BTC Bulls Bid Support Refuse to Surrender	null	0.9382
136	27	1105	National Crime Agency warns novice and veteran traders alike of rise in clone company scams ZDNet	null	0.9652
137	27	1045	U S Opening Bell Earnings Virus Concerns Spur Tech Shares Gold Slumps Investing com UK	null	-0.9978
138	27	925	Silver Lake Co Founder Tells Davos Cash Is Used Far More in Crime Than Bitcoin CoinDesk	null	-0.5829
139	29	1264	What is Dogecoin and Why Are People Buying It	null	0.9325
140	27	745	Lawsuit Against Israeli Crypto Entrepreneur Moshe Hegog Fails in US Court CoinDesk	null	-0.5719
141	27	745	Opening Bell Earnings Virus Concerns Spur U S Tech Shares Gold Slumps Investing com CA	null	-0.9978
142	27	745	Opening Bell Earnings Virus Concerns Spur U S Tech Shares Gold Slumps Investing com	null	-0.9978
143	27	805	Cybercops derail malware botnet FBI makes ransomware arrest	null	-0.5574
144	27	1165	Could meme stocks like GameStop kill bitcoin s rise	null	0.9771
145	27	676	American Cancer Society Launches 1M Cryptocurrency Fund	null	-0.6597
146	27	557	US Man Sentenced to Prison for Embezzling 20M of ICO Investors Funds	null	-0.5267
147	27	1174	These are the best ways to invest 20 000	null	0.6369
148	27	1046	Bitcoin Bounces Off 30 000 as Record Momentum Fades	null	0.9818
149	27	686	American Cancer Society Launches 1M Cryptocurrency Fund	null	-0.6597
150	27	1166	Bitcoin s Best Days Lie Ahead	null	0.6369
151	27	686	3 Unstoppable Stocks That ll Crush Bitcoin in 2021 The Motley Fool	null	-0.6486
152	27	806	5 Hard to Believe Bitcoin Facts The Motley Fool	null	-0.5106
153	27	686	American Cancer Society Launches 1M Cryptocurrency Fund CoinDesk	null	-0.6597
154	27	926	American Cancer Society To Use Cryptocurrency To Fight Cancer	null	-0.9081
155	27	926	Bitcoin Bounces Off 30 000 as Record Momentum Fades	null	0.9818
156	27	1166	Reddit teams up with the Ethereum Foundation to bring the value and independence to millions of	null	0.8555
157	27	1406	Cybercops derail malware botnet FBI makes ransomware arrest	null	-0.5574
158	27	986	Bitcoin crashes below 30 000 as slump continues	null	-0.9993
159	27	1106	Polkadot Price Prediction DOT poised to rise higher as ecosystem continues to grow rapidly	null	0.9834
160	27	926	Silver Lake Co Founder Tells Davos Cash Is Used Far More in Crime Than Bitcoin	null	-0.5829
161	27	1406	Cybercops derail malware botnet FBI makes ransomware arrest Times Leader	null	-0.5574
162	27	926	Stock trading platforms suffer tech problems amid market mayhem	null	-0.7351
163	27	806	Cybercops derail malware botnet FBI makes ransomware arrest	null	-0.5574
164	27	806	Cybercops derail malware botnet FBI makes ransomware arrest	null	-0.5574
165	27	806	Cybercops derail malware botnet FBI makes ransomware arrest	null	-0.5574
166	27	806	Cybercops derail malware botnet FBI makes ransomware arrest	null	-0.5574
167	27	1406	3 reasons why Uniswap UNI token hit a new all time high above 15	null	0.9682
168	27	1226	International operation derails malware botnet FBI makes ransomware arrest	null	-0.5719
169	27	1286	Capitol riots Who has the FBI arrested so far	null	-0.7506
170	27	1226	Fed React Don t trigger a tantrum GameStop still rising Apple on deck Oil can t hold EIA gains	null	0.9781
171	27	1166	Could meme stocks like GameStop kill bitcoin s rise	null	0.9771
172	27	746	Bitcoin Briefly Dips Below 30K Dollar Bounces Ahead of Fed Reserve Rate Announcement	null	0.9818
173	27	1166	Bitcoin BTC Bulls Bid Support Refuse to Surrender	null	0.9382
174	27	1106	National Crime Agency warns novice and veteran traders alike of rise in clone company scams ZDNet	null	0.9652
175	27	1046	U S Opening Bell Earnings Virus Concerns Spur Tech Shares Gold Slumps Investing com UK	null	-0.9978
176	27	926	Silver Lake Co Founder Tells Davos Cash Is Used Far More in Crime Than Bitcoin CoinDesk	null	-0.5829
177	27	746	Lawsuit Against Israeli Crypto Entrepreneur Moshe Hegog Fails in US Court CoinDesk	null	-0.5719
178	27	746	Opening Bell Earnings Virus Concerns Spur U S Tech Shares Gold Slumps Investing com CA	null	-0.9978
179	27	746	Opening Bell Earnings Virus Concerns Spur U S Tech Shares Gold Slumps Investing com	null	-0.9978
180	27	806	Cybercops derail malware botnet FBI makes ransomware arrest	null	-0.5574
181	27	1165	Could meme stocks like GameStop kill bitcoin s rise	null	0.9771
182	27	676	American Cancer Society Launches 1M Cryptocurrency Fund	null	-0.6597
183	27	557	US Man Sentenced to Prison for Embezzling 20M of ICO Investors Funds	null	-0.5267
184	27	1174	These are the best ways to invest 20 000	null	0.6369
185	28	445	Reddit Ties Up With Ethereum Foundation To Hasten Bringing Community Points On Blockchain	null	0.7906
186	28	445	Reddit Ties Up With Ethereum Foundation To Hasten Bringing Community Points On Blockchain	null	0.7906
187	28	385	Cybercops derail malware botnet FBI makes ransomware arrest	null	-0.5574
188	28	265	Cybercops derail malware botnet FBI makes ransomware arrest	null	-0.5574
189	28	265	Cybercops derail malware botnet FBI makes ransomware arrest	null	-0.5574
190	28	265	Ethereum Price Forecast ETH on chain metrics remain strongly bullish upswing to 1 500 eyed	null	0.9971
191	28	505	The US Department of Justice unveils worldwide action against NetWalker ransomware seizes 450	null	0.5267
192	28	352	Dogecoin Shoots Up 62 As SatoshiStreetBets Looks To Emulate WallStreetBets Success With GameStop	null	0.8934
193	28	446	Reddit Ties Up With Ethereum Foundation To Hasten Bringing Community Points On Blockchain	null	0.7906
194	28	446	Reddit Ties Up With Ethereum Foundation To Hasten Bringing Community Points On Blockchain	null	0.7906
195	28	386	Cybercops derail malware botnet FBI makes ransomware arrest	null	-0.5574
196	28	266	Cybercops derail malware botnet FBI makes ransomware arrest	null	-0.5574
197	28	266	Cybercops derail malware botnet FBI makes ransomware arrest	null	-0.5574
198	28	266	Ethereum Price Forecast ETH on chain metrics remain strongly bullish upswing to 1 500 eyed	null	0.9971
199	28	506	The US Department of Justice unveils worldwide action against NetWalker ransomware seizes 450	null	0.5267
200	28	352	Dogecoin Shoots Up 62 As SatoshiStreetBets Looks To Emulate WallStreetBets Success With GameStop	null	0.8934
201	28	644	WallStreetBets Fever Hits Dogecoin Price Soars 142	null	0.9985
202	28	1364	Bitcoin soars 11 after Elon Musk namecheck on Twitter	null	0.9985
203	29	224	Bitcoin Shoots Up 11 Did Elon Musk Dogecoin Boost Help	null	0.9081
204	28	1004	Hot DOGE Meme Based Cryptocurrency Soars More Than 800 to Record High	null	0.9990
205	28	1004	Bitcoin Jumps Above 35 000 as Musk Tweets About Crypto	null	0.9970
206	29	104	WallStreetsBets craze pushes dogecoin up 5x in 24 hours	null	0.7506
207	28	1004	Silvergate Capital s Common Stock Issuance Is Another Sign of Confidence for the Company	null	0.5106
208	38	515	Green hackers around the world let s destroy Bitcoin	null	-0.5423
209	29	224	Bitcoin Shoots Up 11 Did Elon Musk DogeCoin Boost Help	null	0.9081
210	28	824	Cryptocurrency Crime Drops in 2020 but DeFi Breaches Rise Study Finds	null	0.9910
211	28	1424	Dogecoin DOGE shoots 270 higher as WallStreetBets starts to pick up on crypto CryptoSlate	null	0.7906
212	29	284	XRP Climbs 10 As Investors Gain Confidence By Investing com	null	0.9853
213	29	284	XRP Climbs 10 45 In Bullish Trade	null	0.9970
214	28	1364	Altcoins soar after 10 Bitcoin price breakout flips 33K back to support	null	0.9493
215	28	1124	Bitcoin What is the Death Cross That Heralds the Sharp Fall of This Cryptocurrency	null	-0.5994
216	29	44	Litecoin Climbs 10 11 In Rally	null	0.9682
217	29	44	Bitcoin Climbs 10 18 In Rally	null	0.9682
218	29	44	Litecoin Climbs 10 In Bullish Trade By Investing com	null	0.9970
219	28	1424	Bitcoin Climbs 10 In Bullish Trade By Investing com	null	0.9970
220	28	884	Cryptocurrency crime drops in 2020 but DeFi breaches rise study finds	null	0.9910
221	28	824	Grayscale prepares for DeFi future with new cryptocurrency trust filings	null	0.5106
222	28	884	Cryptocurrency crime drops in 2020 but DeFi breaches rise CyberNews	null	0.9910
223	29	164	Ray Dalio Clears His Stance On Bitcoin Calls Is Amazing Accomplishment	null	0.6249
224	28	1424	Bitcoin s Rebound Accelerates With Push Back Above 34 000	null	0.9818
225	29	164	Ray Dalio Clears His Stance On Bitcoin Calls Is Amazing Accomplishment	null	0.6249
226	28	944	Dogecoin hits new all time high amid Wall Street Bets mania	null	0.9682
227	28	944	Dalio Expects to Soon Offer Alt Cash Fund Says Bitcoin Won t Escape Our Scrutiny CoinDesk	null	0.6597
228	29	560	Australian Crypto Exchange to Delist BSV Over Bullying Threat to Bitcoin Developers	null	-0.8074
229	28	704	Digital Asset Manager Grayscale Eyes DeFi Space With New Trust Filings	null	0.7003
230	28	644	WallStreetBets Fever Hits Dogecoin Price Soars 142 After Twitter Mention CoinDesk	null	0.9985
231	28	1424	Bitcoin Climbs 10 18 In Rally By Investing com	null	0.9682
232	28	644	Analyst Chinese New Year could drive Bitcoin selling pressure	null	-0.9451
233	28	824	DOJ charges suspect in NetWalker ransomware attacks	null	-0.7351
234	28	884	Europol Spanish Police Bust Alleged Scam Posing as Crypto Investment Training Firm	null	-0.5719
235	29	464	Dogecoin s 600 rally could jumpstart the next altseason	null	0.9682
236	28	1124	How the far right harnessed tech in the lead up to the Capitol riot	null	0.5267
237	28	1124	How the far right harnessed tech in the lead up to the Capitol riot	null	0.5267
238	28	1124	Here are the best investing app alternatives to Robinhood	null	0.6369
239	28	1004	Value of holding bitcoin surpassing trading value	null	0.5859
240	28	1004	Bitcoin Rebounds From Early Losses Markets Still Distracted by GameStop CoinDesk	null	-0.6249
241	28	944	Ray Dalio Calls Bitcoin One Hell of an Invention Considers It for New Funds	null	-0.6808
242	28	944	Robinhood Slammed After Halting Users From Buying Surging Stocks	null	0.9325
243	28	944	Robinhood Slammed After Halting Users From Buying Surging Stocks	null	0.9325
244	28	944	Crypto Whale One River Says Volatility to Ease as Prices Rise	null	0.9842
245	28	884	Robinhood suspends buying for GameStop following stonks going to the moon	null	0.9325
246	28	764	It s never been more important to safeguard your data These ads might make you actually care	null	0.6434
247	28	704	OTC Markets Group Announces the 2021 OTCQX Best 50	null	0.6369
248	28	1364	DOGE tweet volume up 1800 becomes first altcoin to surpass Bitcoin ever The Tie	null	0.7906
249	28	1244	FB Stock A Buy Facebook Crushes Q4 Earnings But Predicts High Opt Out Rates	null	0.9882
250	28	824	ALPHA surges 152 in one week What s behind its meteoric rally	null	0.9682
251	29	224	DeFi bulls continue to roar as Gamestop GME saga continues CryptoSlate	null	0.9325
252	29	464	FinTech Blockchain Market to Gain from Increasing Adoption in Financial Industry Worldwide says	null	0.9818
253	28	1004	Grimes Wrote A Poem About GameStop s Stock Market Chaos	null	-0.6908
254	28	944	Robinhood Slammed After Halting Users From Buying Surging Stocks	null	0.9325
255	28	944	American Airlines shares surge 80 thanks to Reddit after forum s revolution	null	0.6249
256	28	1304	Short Squeeze Volatility With GME AMC O Neil Portfolio Manager On Navigating Risk In Crazy	null	-0.5423
257	28	1184	New Grayscale trust filings spin rumour mill into overdrive for Cardano Polkadot Cosmos and more	null	0.5106
258	28	1124	Ray Dalio Calls Bitcoin One Hell of an Invention Considers It for New Funds	null	-0.6808
259	28	884	Square Stock Is a Great Pick in a Toxic Environment	null	0.6249
260	28	704	OTC Markets Group Announces the 2021 OTCQX Best 50	null	0.6369
261	28	1064	Crypto Whale One River Says Volatility to Ease as Prices Rise	null	0.9842
262	29	560	MicroStrategy Bond Buyers Rewarded With Win Tie Bitcoin Play	null	0.8555
263	28	944	Prime Trust tZERO Partner on Digital Asset Custody Trading	null	0.7003
264	29	560	How Do We Regain Trust in Institutions	null	0.5106
265	28	704	Wall Street s fear gauge just logged its biggest rise in two years as the battle between Reddit	null	0.9726
266	29	131	WallStreetsBets craze pushes dogecoin up 5x in 24 hours	null	0.7506
267	28	848	Cryptocurrency crime drops in 2020 but DeFi breaches rise study finds Reuters	null	0.9910
268	28	1126	Bitcoin What is the death cross that heralds the sharp fall of this cryptocurrency	null	-0.5994
269	28	1095	Here are the best investing app alternatives to Robinhood	null	0.6369
270	28	665	3 Popular Robinhood Stocks That Could Be Better Than Bitcoin in 2021	null	0.6908
271	28	1170	How much does H R Block cost Here s how much you ll pay to prepare and file your tax return	null	-0.5106
272	28	1291	After Robinhood Restricts GameStop Bitcoin And Crypto Market Suddenly Soars Toward 1 Trillion Dogecoin Price Rockets 200	null	0.9984
273	28	1068	Huge demand for Nvidia RTX 3000 cards led scalpers to 15 2 million in profit	null	0.5719
274	28	654	WallStreetBets Fever Hits Dogecoin Price Soars 142	null	0.9985
275	28	1374	Bitcoin soars 11 after Elon Musk namecheck on Twitter	null	0.9985
276	29	234	Bitcoin Shoots Up 11 Did Elon Musk Dogecoin Boost Help	null	0.9081
277	28	1014	Hot DOGE Meme Based Cryptocurrency Soars More Than 800 to Record High	null	0.9990
278	28	1014	Bitcoin Jumps Above 35 000 as Musk Tweets About Crypto	null	0.9970
279	29	114	WallStreetsBets craze pushes dogecoin up 5x in 24 hours	null	0.7506
280	28	1014	Silvergate Capital s Common Stock Issuance Is Another Sign of Confidence for the Company	null	0.5106
281	29	234	Bitcoin Shoots Up 11 Did Elon Musk DogeCoin Boost Help	null	0.9081
282	28	834	Cryptocurrency Crime Drops in 2020 but DeFi Breaches Rise Study Finds	null	0.9910
283	28	1434	Dogecoin DOGE shoots 270 higher as WallStreetBets starts to pick up on crypto CryptoSlate	null	0.7906
284	29	294	XRP Climbs 10 As Investors Gain Confidence By Investing com	null	0.9853
285	29	294	XRP Climbs 10 45 In Bullish Trade	null	0.9970
286	28	1374	Altcoins soar after 10 Bitcoin price breakout flips 33K back to support	null	0.9493
287	28	1134	Bitcoin What is the Death Cross That Heralds the Sharp Fall of This Cryptocurrency	null	-0.5994
288	29	54	Litecoin Climbs 10 11 In Rally	null	0.9682
289	29	54	Bitcoin Climbs 10 18 In Rally	null	0.9682
290	29	54	Litecoin Climbs 10 In Bullish Trade By Investing com	null	0.9970
291	28	1434	Bitcoin Climbs 10 In Bullish Trade By Investing com	null	0.9970
292	28	894	Cryptocurrency crime drops in 2020 but DeFi breaches rise study finds	null	0.9910
293	28	834	Grayscale prepares for DeFi future with new cryptocurrency trust filings	null	0.5106
294	28	894	Cryptocurrency crime drops in 2020 but DeFi breaches rise CyberNews	null	0.9910
295	29	174	Ray Dalio Clears His Stance On Bitcoin Calls Is Amazing Accomplishment	null	0.6249
296	28	1434	Bitcoin s Rebound Accelerates With Push Back Above 34 000	null	0.9818
297	29	174	Ray Dalio Clears His Stance On Bitcoin Calls Is Amazing Accomplishment	null	0.6249
298	28	954	Dogecoin hits new all time high amid Wall Street Bets mania	null	0.9682
299	28	954	Dalio Expects to Soon Offer Alt Cash Fund Says Bitcoin Won t Escape Our Scrutiny CoinDesk	null	0.6597
300	29	570	Australian Crypto Exchange to Delist BSV Over Bullying Threat to Bitcoin Developers	null	-0.8074
301	28	714	Digital Asset Manager Grayscale Eyes DeFi Space With New Trust Filings	null	0.7003
302	28	654	WallStreetBets Fever Hits Dogecoin Price Soars 142 After Twitter Mention CoinDesk	null	0.9985
303	28	1434	Bitcoin Climbs 10 18 In Rally By Investing com	null	0.9682
304	28	654	Analyst Chinese New Year could drive Bitcoin selling pressure	null	-0.9451
305	28	834	DOJ charges suspect in NetWalker ransomware attacks	null	-0.7351
306	28	894	Europol Spanish Police Bust Alleged Scam Posing as Crypto Investment Training Firm	null	-0.5719
307	29	474	Dogecoin s 600 rally could jumpstart the next altseason	null	0.9682
308	28	1134	How the far right harnessed tech in the lead up to the Capitol riot	null	0.5267
309	28	1134	How the far right harnessed tech in the lead up to the Capitol riot	null	0.5267
310	28	1134	Here are the best investing app alternatives to Robinhood	null	0.6369
311	28	1014	Value of holding bitcoin surpassing trading value	null	0.5859
312	28	1014	Bitcoin Rebounds From Early Losses Markets Still Distracted by GameStop CoinDesk	null	-0.6249
313	28	954	Ray Dalio Calls Bitcoin One Hell of an Invention Considers It for New Funds	null	-0.6808
314	28	954	Robinhood Slammed After Halting Users From Buying Surging Stocks	null	0.9325
315	28	954	Robinhood Slammed After Halting Users From Buying Surging Stocks	null	0.9325
316	28	954	Crypto Whale One River Says Volatility to Ease as Prices Rise	null	0.9842
317	28	894	Robinhood suspends buying for GameStop following stonks going to the moon	null	0.9325
318	28	774	It s never been more important to safeguard your data These ads might make you actually care	null	0.6434
319	28	714	OTC Markets Group Announces the 2021 OTCQX Best 50	null	0.6369
320	28	1374	DOGE tweet volume up 1800 becomes first altcoin to surpass Bitcoin ever The Tie	null	0.7906
321	28	1254	FB Stock A Buy Facebook Crushes Q4 Earnings But Predicts High Opt Out Rates	null	0.9882
322	28	834	ALPHA surges 152 in one week What s behind its meteoric rally	null	0.9682
323	29	234	DeFi bulls continue to roar as Gamestop GME saga continues CryptoSlate	null	0.9325
324	29	474	FinTech Blockchain Market to Gain from Increasing Adoption in Financial Industry Worldwide says	null	0.9818
325	28	1014	Grimes Wrote A Poem About GameStop s Stock Market Chaos	null	-0.6908
326	28	954	Robinhood Slammed After Halting Users From Buying Surging Stocks	null	0.9325
327	28	954	American Airlines shares surge 80 thanks to Reddit after forum s revolution	null	0.6249
328	28	1314	Short Squeeze Volatility With GME AMC O Neil Portfolio Manager On Navigating Risk In Crazy	null	-0.5423
329	28	1194	New Grayscale trust filings spin rumour mill into overdrive for Cardano Polkadot Cosmos and more	null	0.5106
330	28	1134	Ray Dalio Calls Bitcoin One Hell of an Invention Considers It for New Funds	null	-0.6808
331	28	894	Square Stock Is a Great Pick in a Toxic Environment	null	0.6249
332	28	714	OTC Markets Group Announces the 2021 OTCQX Best 50	null	0.6369
333	28	1074	Crypto Whale One River Says Volatility to Ease as Prices Rise	null	0.9842
334	29	570	MicroStrategy Bond Buyers Rewarded With Win Tie Bitcoin Play	null	0.8555
335	28	954	Prime Trust tZERO Partner on Digital Asset Custody Trading	null	0.7003
336	29	570	How Do We Regain Trust in Institutions	null	0.5106
337	28	714	Wall Street s fear gauge just logged its biggest rise in two years as the battle between Reddit	null	0.9726
338	29	131	WallStreetsBets craze pushes dogecoin up 5x in 24 hours	null	0.7506
339	28	848	Cryptocurrency crime drops in 2020 but DeFi breaches rise study finds Reuters	null	0.9910
340	28	1126	Bitcoin What is the death cross that heralds the sharp fall of this cryptocurrency	null	-0.5994
341	28	1095	Here are the best investing app alternatives to Robinhood	null	0.6369
342	28	665	3 Popular Robinhood Stocks That Could Be Better Than Bitcoin in 2021	null	0.6908
343	28	1170	How much does H R Block cost Here s how much you ll pay to prepare and file your tax return	null	-0.5106
344	28	1291	After Robinhood Restricts GameStop Bitcoin And Crypto Market Suddenly Soars Toward 1 Trillion Dogecoin Price Rockets 200	null	0.9984
345	28	1068	Huge demand for Nvidia RTX 3000 cards led scalpers to 15 2 million in profit	null	0.5719
346	29	1000	Robinhood blocks cryptocurrency trading blames extraordinary market conditions	null	-0.5574
347	29	820	Dogecoin Price Up 975 After Elon Musk s Tweet WallStreetBets Pump	null	0.7906
348	29	400	Reddit frenzy pumps up Dogecoin a cryptocurrency started as a joke by over 800	null	0.7845
349	28	1360	Will the SEC s Lawsuit Lead to Ripple Failing to Reach Its Potential	null	-0.6249
350	29	640	Stablecoin holdings on crypto exchanges hit a new all time high	null	0.9682
351	29	760	Bitcoin soars 14 after Elon Musk namecheck on Twitter	null	0.9985
352	29	1060	What s Next For Bitcoin In An Era Of Helicopter Money Negative	null	-0.5719
353	29	580	Price of worthless cryptocurrency skyrockets by 1 000 thanks to GameStop stock fiasco	null	-0.5106
354	29	280	WallStreetsBets craze pushes dogecoin up 5x in 24 hours	null	0.7506
355	29	880	Dogecoin Jumps 600 as Meme Crypto Rides GameStop Retail Wave	null	0.9970
356	29	820	Dogecoin soars 370 as Reddit group works to send the cryptocurrency to the moon	null	0.9985
357	29	580	Elon Musk sends Bitcoin soaring 20pc live updates	null	0.9985
358	28	1240	Bitcoin What is the Death Cross That Heralds the Sharp Fall of This Cryptocurrency	null	-0.5994
359	29	520	Robinhood restricts Instant Buying of crypto citing extraordinary market conditions	null	0.9136
360	29	1060	Cryptocurrency Crime Drops in 2020 but Decentralized Finance Losses Rise Study	null	0.9892
361	29	760	Dogecoin soars 370 as Reddit group works to send the cryptocurrency to the moon	null	0.9985
362	29	940	Robinhood restricts crypto trading as Dogecoin soars 300 percent	null	0.9984
363	29	760	Dogecoin soars 370 as Reddit group works to send the cryptocurrency to the moon	null	0.9985
364	29	880	Dogecoin soars 370 as Reddit group works to send the cryptocurrency to the moon	null	0.9985
365	29	760	Dogecoin Becomes Most Mentioned Crypto on Twitter Ever as Price Soars	null	0.9985
366	29	340	Bitcoin Shoots Up 11 Did Elon Musk DogeCoin Boost Help	null	0.9081
367	29	100	Bitcoin Jumps Above 38 000 as Musk Adds It to Twitter Profile	null	0.9970
368	29	700	Bitcoin Soars 14 After Elon Musk Namecheck on Twitter	null	0.9985
369	29	760	Bitcoin soars 14 after Elon Musk namecheck on Twitter	null	0.9985
370	29	340	Bitcoin Shoots Up 11 Did Elon Musk Dogecoin Boost Help	null	0.9081
371	29	640	Bitcoin soars 14 after Elon Musk namecheck on Twitter	null	0.9985
372	29	640	Bitcoin soars 14 after Elon Musk namecheck on Twitter	null	0.9985
373	29	460	Bitcoin soars 14 after Elon Musk namecheck on Twitter By Reuters	null	0.9985
374	29	460	Bitcoin soars 14 after Elon Musk namecheck on Twitter By Reuters	null	0.9985
375	29	460	Bitcoin soars 14 after Elon Musk namecheck on Twitter By Reuters	null	0.9985
376	29	460	XRP Climbs 10 45 In Bullish Trade	null	0.9970
377	29	460	XRP Climbs 10 45 In Bullish Trade	null	0.9970
378	29	460	XRP Climbs 10 As Investors Gain Confidence By Investing com	null	0.9853
379	29	100	Dogecoin DOGE shoots 270 higher as WallStreetBets starts to pick up on crypto CryptoSlate	null	0.7906
380	29	460	Wall Street Just Made the Best Case for Bitcoin Ethereum DeFi Get Ready for Mass Adoption	null	0.7717
381	29	700	Bitcoin soars 14 after Elon Musk namecheck on Twitter	null	0.9985
382	29	460	XRP Climbs 10 45 In Rally By Investing com	null	0.9682
383	29	820	Elon Musk changes Twitter bio to bitcoin chaos ensues	null	-0.5719
384	29	460	Bitcoin soars 14 after Elon Musk namecheck on Twitter By Reuters	null	0.9985
385	29	1122	Kraken Coinbase Suffer Outages Amid Market Volatility	null	-0.5423
386	29	940	How A Little Bird Is Delivering Trust	null	0.5106
387	29	1120	GLOBAL MARKETS Dollar stocks slide as virus social trading cools sentiment	null	-0.9970
388	29	1060	Who s getting rich off GameStop s stock The market makers and middlemen including Robinhood	null	0.5574
389	29	1060	Dow Jones Today Stocks Drop To Test Support Caterpillar Climbs Bitcoin Rallies Short Squeeze	null	-0.9968
390	29	1000	Ray Dalio Bitcoin is gold like but governments won t let it win	null	0.9186
391	29	940	Here s why Elon Musk s simple Twitter bio change rocketed Bitcoin up 18 CryptoSlate	null	0.7906
392	29	1000	Zombies not welcome Original altcoins lose ground to DeFi newcomers	null	-0.7304
393	29	880	GLOBAL MARKETS Wall Street set for weak open on hedge fund retail battle	null	-0.6705
394	29	820	Billionaire Leon Cooperman says GameStop surge will end very badly for the public and decries	null	-0.5256
395	29	580	Dogecoin s 600 rally could jumpstart the next altseason	null	0.9682
396	29	760	Join Us in Miami Love Masters of the Universe	null	0.7506
397	29	460	Google reportedly scraps thousands of negative Robinhood reviews By Cointelegraph	null	-0.5719
398	29	460	Robinhood Raises Over 1 Billion In Emergency Funds As Platform Struggles With Reddit Fuelled	null	-0.6249
399	29	460	GLOBAL MARKETS Dollar stocks slide as virus social trading cools sentiment	null	-0.9970
400	29	460	GLOBAL MARKETS Wall Street set for weak open on hedge fund retail battle	null	-0.6705
401	29	460	GLOBAL MARKETS Wall Street set for weak open on hedge fund retail battle	null	-0.6705
1063	30	764	9 great reads from CNET this week	null	0.6249
402	29	460	GLOBAL MARKETS Wall Street set for weak open on hedge fund retail battle By Reuters	null	-0.6705
403	29	1060	Opinion Who s getting rich off GameStop s stock The market makers and middlemen including	null	0.5574
404	29	1000	U S Stocks Open Lower as GameStop Frenzy Builds	null	-0.5423
405	29	1000	Dow slides 200 points on concerns of retail investors speculative trading	null	-0.9970
406	29	1000	World s richest man Elon Musk boosts Bitcoin price by 20 Is 40K back in play	null	0.7964
407	29	820	Elon Musk changes Twitter bio to bitcoin chaos ensues	null	-0.5719
408	29	700	Bitcoin soars by 5K in minutes BTC hits 38K after Elon Musk s Dogecoin treatment	null	0.9985
409	28	1240	Ray Dalio Calls Bitcoin One Hell of an Invention Considers It for New Funds	null	-0.6808
410	28	1240	The 8 best investing app alternatives to Robinhood	null	0.6369
411	28	1240	Here are the best investing app alternatives to Robinhood	null	0.6369
412	28	1240	The 8 best investing app alternatives to Robinhood	null	0.6369
413	29	1156	Crypto Whale One River Says Volatility to Ease as Prices Rise	null	0.9842
414	29	1156	The biggest investors in space are cheering on the GameStop trade	null	0.5106
415	29	460	GameStop back on the rise as Robinhood eases trading ban	null	0.9792
416	29	400	DeFi bulls continue to roar as Gamestop GME saga continues CryptoSlate	null	0.9325
417	29	40	DOGE tweet volume up 1800 becomes first altcoin to surpass Bitcoin ever The Tie	null	0.7906
418	29	460	GLOBAL MARKETS Wall Street set for weak open on hedge fund retail battle By Reuters	null	-0.6705
419	28	1420	FB Stock A Buy Facebook Crushes Q4 Earnings But Predicts High Opt Out Rates	null	0.9882
420	29	1140	Robinhood restricts instant buying of crypto citing extraordinary market conditions	null	0.9136
421	29	220	SEC issues warning as GameStop short selling war resumes	null	-0.9652
422	29	1156	Tim Cook says companies are misleading users and exploiting data as public feud with Facebook	null	-0.7906
423	29	100	Dollar stocks slide as virus social trading cools sentiment	null	-0.9970
424	29	100	Dollar stocks slide as virus social trading cools sentiment	null	-0.9970
425	29	100	Dollar stocks slide as virus social trading cools sentiment	null	-0.9970
426	29	100	Dollar stocks slide as virus social trading cools sentiment	null	-0.9970
427	29	820	Elon Musk changes Twitter bio to bitcoin chaos ensues	null	-0.5719
428	29	940	Jon Stewart gets a warm welcome on Twitter after joining to defend Reddit traders	null	0.5994
429	29	640	FinTech Blockchain Market to Gain from Increasing Adoption in Financial Industry Worldwide says	null	0.9818
430	29	520	FTSE 100 falls expected as GameStop Reddit fallout blows through global markets	null	-0.9993
431	28	1420	Short Squeeze Volatility With GME AMC O Neil Portfolio Manager On Navigating Risk In Crazy	null	-0.5423
432	28	1240	Here are the best investing app alternatives to Robinhood	null	0.6369
433	28	1240	How the far right harnessed tech in the lead up to the Capitol riot	null	0.5267
434	28	1240	How the far right harnessed tech in the lead up to the Capitol riot	null	0.5267
435	29	131	WallStreetsBets craze pushes dogecoin up 5x in 24 hours	null	0.7506
436	29	660	Elon Musk changes Twitter bio to bitcoin chaos ensues	null	-0.5719
437	29	586	Bitcoin soars 11 after Elon Musk namecheck on Twitter Reuters	null	0.9985
438	29	569	Bitcoin soars 11 after Elon Musk namecheck on Twitter Reuters	null	0.9985
439	28	848	Cryptocurrency crime drops in 2020 but DeFi breaches rise study finds Reuters	null	0.9910
440	28	1126	Bitcoin What is the death cross that heralds the sharp fall of this cryptocurrency	null	-0.5994
441	28	1095	Here are the best investing app alternatives to Robinhood	null	0.6369
442	28	665	3 Popular Robinhood Stocks That Could Be Better Than Bitcoin in 2021	null	0.6908
443	29	1001	Robinhood blocks cryptocurrency trading blames extraordinary market conditions	null	-0.5574
444	29	821	Dogecoin Price Up 975 After Elon Musk s Tweet WallStreetBets Pump	null	0.7906
445	29	401	Reddit frenzy pumps up Dogecoin a cryptocurrency started as a joke by over 800	null	0.7845
446	28	1361	Will the SEC s Lawsuit Lead to Ripple Failing to Reach Its Potential	null	-0.6249
447	29	641	Stablecoin holdings on crypto exchanges hit a new all time high	null	0.9682
448	29	761	Bitcoin soars 14 after Elon Musk namecheck on Twitter	null	0.9985
449	29	1061	What s Next For Bitcoin In An Era Of Helicopter Money Negative	null	-0.5719
450	29	581	Price of worthless cryptocurrency skyrockets by 1 000 thanks to GameStop stock fiasco	null	-0.5106
451	29	281	WallStreetsBets craze pushes dogecoin up 5x in 24 hours	null	0.7506
452	29	881	Dogecoin Jumps 600 as Meme Crypto Rides GameStop Retail Wave	null	0.9970
453	29	821	Dogecoin soars 370 as Reddit group works to send the cryptocurrency to the moon	null	0.9985
454	29	581	Elon Musk sends Bitcoin soaring 20pc live updates	null	0.9985
455	28	1241	Bitcoin What is the Death Cross That Heralds the Sharp Fall of This Cryptocurrency	null	-0.5994
456	29	521	Robinhood restricts Instant Buying of crypto citing extraordinary market conditions	null	0.9136
457	29	1061	Cryptocurrency Crime Drops in 2020 but Decentralized Finance Losses Rise Study	null	0.9892
458	29	761	Dogecoin soars 370 as Reddit group works to send the cryptocurrency to the moon	null	0.9985
459	29	941	Robinhood restricts crypto trading as Dogecoin soars 300 percent	null	0.9984
460	29	761	Dogecoin soars 370 as Reddit group works to send the cryptocurrency to the moon	null	0.9985
461	29	881	Dogecoin soars 370 as Reddit group works to send the cryptocurrency to the moon	null	0.9985
462	29	761	Dogecoin Becomes Most Mentioned Crypto on Twitter Ever as Price Soars	null	0.9985
463	29	341	Bitcoin Shoots Up 11 Did Elon Musk DogeCoin Boost Help	null	0.9081
464	29	101	Bitcoin Jumps Above 38 000 as Musk Adds It to Twitter Profile	null	0.9970
465	29	701	Bitcoin Soars 14 After Elon Musk Namecheck on Twitter	null	0.9985
466	29	761	Bitcoin soars 14 after Elon Musk namecheck on Twitter	null	0.9985
467	29	341	Bitcoin Shoots Up 11 Did Elon Musk Dogecoin Boost Help	null	0.9081
1198	30	304	Fun and GameStop	null	0.5106
468	29	641	Bitcoin soars 14 after Elon Musk namecheck on Twitter	null	0.9985
469	29	641	Bitcoin soars 14 after Elon Musk namecheck on Twitter	null	0.9985
470	29	461	Bitcoin soars 14 after Elon Musk namecheck on Twitter By Reuters	null	0.9985
471	29	461	Bitcoin soars 14 after Elon Musk namecheck on Twitter By Reuters	null	0.9985
472	29	461	Bitcoin soars 14 after Elon Musk namecheck on Twitter By Reuters	null	0.9985
473	29	461	XRP Climbs 10 45 In Bullish Trade	null	0.9970
474	29	461	XRP Climbs 10 45 In Bullish Trade	null	0.9970
475	29	461	XRP Climbs 10 As Investors Gain Confidence By Investing com	null	0.9853
476	29	101	Dogecoin DOGE shoots 270 higher as WallStreetBets starts to pick up on crypto CryptoSlate	null	0.7906
477	29	461	Wall Street Just Made the Best Case for Bitcoin Ethereum DeFi Get Ready for Mass Adoption	null	0.7717
478	29	701	Bitcoin soars 14 after Elon Musk namecheck on Twitter	null	0.9985
479	29	461	XRP Climbs 10 45 In Rally By Investing com	null	0.9682
480	29	821	Elon Musk changes Twitter bio to bitcoin chaos ensues	null	-0.5719
481	29	461	Bitcoin soars 14 after Elon Musk namecheck on Twitter By Reuters	null	0.9985
482	29	1123	Kraken Coinbase Suffer Outages Amid Market Volatility	null	-0.5423
483	29	941	How A Little Bird Is Delivering Trust	null	0.5106
484	29	1121	GLOBAL MARKETS Dollar stocks slide as virus social trading cools sentiment	null	-0.9970
485	29	1061	Who s getting rich off GameStop s stock The market makers and middlemen including Robinhood	null	0.5574
486	29	1061	Dow Jones Today Stocks Drop To Test Support Caterpillar Climbs Bitcoin Rallies Short Squeeze	null	-0.9968
487	29	1001	Ray Dalio Bitcoin is gold like but governments won t let it win	null	0.9186
488	29	941	Here s why Elon Musk s simple Twitter bio change rocketed Bitcoin up 18 CryptoSlate	null	0.7906
489	29	1001	Zombies not welcome Original altcoins lose ground to DeFi newcomers	null	-0.7304
490	29	881	GLOBAL MARKETS Wall Street set for weak open on hedge fund retail battle	null	-0.6705
491	29	821	Billionaire Leon Cooperman says GameStop surge will end very badly for the public and decries	null	-0.5256
492	29	581	Dogecoin s 600 rally could jumpstart the next altseason	null	0.9682
493	29	761	Join Us in Miami Love Masters of the Universe	null	0.7506
494	29	461	Google reportedly scraps thousands of negative Robinhood reviews By Cointelegraph	null	-0.5719
495	29	461	Robinhood Raises Over 1 Billion In Emergency Funds As Platform Struggles With Reddit Fuelled	null	-0.6249
496	29	461	GLOBAL MARKETS Dollar stocks slide as virus social trading cools sentiment	null	-0.9970
497	29	461	GLOBAL MARKETS Wall Street set for weak open on hedge fund retail battle	null	-0.6705
498	29	461	GLOBAL MARKETS Wall Street set for weak open on hedge fund retail battle	null	-0.6705
499	29	461	GLOBAL MARKETS Wall Street set for weak open on hedge fund retail battle By Reuters	null	-0.6705
500	29	1061	Opinion Who s getting rich off GameStop s stock The market makers and middlemen including	null	0.5574
501	29	1001	U S Stocks Open Lower as GameStop Frenzy Builds	null	-0.5423
502	29	1001	Dow slides 200 points on concerns of retail investors speculative trading	null	-0.9970
503	29	1001	World s richest man Elon Musk boosts Bitcoin price by 20 Is 40K back in play	null	0.7964
504	29	821	Elon Musk changes Twitter bio to bitcoin chaos ensues	null	-0.5719
505	29	701	Bitcoin soars by 5K in minutes BTC hits 38K after Elon Musk s Dogecoin treatment	null	0.9985
506	28	1241	Ray Dalio Calls Bitcoin One Hell of an Invention Considers It for New Funds	null	-0.6808
507	28	1241	The 8 best investing app alternatives to Robinhood	null	0.6369
508	28	1241	Here are the best investing app alternatives to Robinhood	null	0.6369
509	28	1241	The 8 best investing app alternatives to Robinhood	null	0.6369
510	29	1157	Crypto Whale One River Says Volatility to Ease as Prices Rise	null	0.9842
511	29	1157	The biggest investors in space are cheering on the GameStop trade	null	0.5106
512	29	461	GameStop back on the rise as Robinhood eases trading ban	null	0.9792
513	29	401	DeFi bulls continue to roar as Gamestop GME saga continues CryptoSlate	null	0.9325
514	29	41	DOGE tweet volume up 1800 becomes first altcoin to surpass Bitcoin ever The Tie	null	0.7906
515	29	461	GLOBAL MARKETS Wall Street set for weak open on hedge fund retail battle By Reuters	null	-0.6705
516	28	1421	FB Stock A Buy Facebook Crushes Q4 Earnings But Predicts High Opt Out Rates	null	0.9882
517	29	1141	Robinhood restricts instant buying of crypto citing extraordinary market conditions	null	0.9136
518	29	221	SEC issues warning as GameStop short selling war resumes	null	-0.9652
519	29	1157	Tim Cook says companies are misleading users and exploiting data as public feud with Facebook	null	-0.7906
520	29	101	Dollar stocks slide as virus social trading cools sentiment	null	-0.9970
521	29	101	Dollar stocks slide as virus social trading cools sentiment	null	-0.9970
522	29	101	Dollar stocks slide as virus social trading cools sentiment	null	-0.9970
523	29	101	Dollar stocks slide as virus social trading cools sentiment	null	-0.9970
524	29	821	Elon Musk changes Twitter bio to bitcoin chaos ensues	null	-0.5719
525	29	941	Jon Stewart gets a warm welcome on Twitter after joining to defend Reddit traders	null	0.5994
526	29	641	FinTech Blockchain Market to Gain from Increasing Adoption in Financial Industry Worldwide says	null	0.9818
527	29	521	FTSE 100 falls expected as GameStop Reddit fallout blows through global markets	null	-0.9993
528	28	1421	Short Squeeze Volatility With GME AMC O Neil Portfolio Manager On Navigating Risk In Crazy	null	-0.5423
529	28	1241	Here are the best investing app alternatives to Robinhood	null	0.6369
530	28	1241	How the far right harnessed tech in the lead up to the Capitol riot	null	0.5267
531	28	1241	How the far right harnessed tech in the lead up to the Capitol riot	null	0.5267
532	29	131	WallStreetsBets craze pushes dogecoin up 5x in 24 hours	null	0.7506
533	29	660	Elon Musk changes Twitter bio to bitcoin chaos ensues	null	-0.5719
534	29	586	Bitcoin soars 11 after Elon Musk namecheck on Twitter Reuters	null	0.9985
535	29	569	Bitcoin soars 11 after Elon Musk namecheck on Twitter Reuters	null	0.9985
536	28	848	Cryptocurrency crime drops in 2020 but DeFi breaches rise study finds Reuters	null	0.9910
537	28	1126	Bitcoin What is the death cross that heralds the sharp fall of this cryptocurrency	null	-0.5994
538	28	1095	Here are the best investing app alternatives to Robinhood	null	0.6369
539	28	665	3 Popular Robinhood Stocks That Could Be Better Than Bitcoin in 2021	null	0.6908
540	29	1007	Robinhood blocks cryptocurrency trading blames extraordinary market conditions	null	-0.5574
541	29	827	Dogecoin Price Up 975 After Elon Musk s Tweet WallStreetBets Pump	null	0.7906
542	29	407	Reddit frenzy pumps up Dogecoin a cryptocurrency started as a joke by over 800	null	0.7845
543	28	1367	Will the SEC s Lawsuit Lead to Ripple Failing to Reach Its Potential	null	-0.6249
544	29	647	Stablecoin holdings on crypto exchanges hit a new all time high	null	0.9682
545	29	767	Bitcoin soars 14 after Elon Musk namecheck on Twitter	null	0.9985
546	29	1067	What s Next For Bitcoin In An Era Of Helicopter Money Negative	null	-0.5719
547	29	587	Price of worthless cryptocurrency skyrockets by 1 000 thanks to GameStop stock fiasco	null	-0.5106
548	29	287	WallStreetsBets craze pushes dogecoin up 5x in 24 hours	null	0.7506
549	29	887	Dogecoin Jumps 600 as Meme Crypto Rides GameStop Retail Wave	null	0.9970
550	29	827	Dogecoin soars 370 as Reddit group works to send the cryptocurrency to the moon	null	0.9985
551	29	587	Elon Musk sends Bitcoin soaring 20pc live updates	null	0.9985
552	28	1247	Bitcoin What is the Death Cross That Heralds the Sharp Fall of This Cryptocurrency	null	-0.5994
553	29	527	Robinhood restricts Instant Buying of crypto citing extraordinary market conditions	null	0.9136
554	29	1067	Cryptocurrency Crime Drops in 2020 but Decentralized Finance Losses Rise Study	null	0.9892
555	29	767	Dogecoin soars 370 as Reddit group works to send the cryptocurrency to the moon	null	0.9985
556	29	947	Robinhood restricts crypto trading as Dogecoin soars 300 percent	null	0.9984
557	29	767	Dogecoin soars 370 as Reddit group works to send the cryptocurrency to the moon	null	0.9985
558	29	887	Dogecoin soars 370 as Reddit group works to send the cryptocurrency to the moon	null	0.9985
559	29	767	Dogecoin Becomes Most Mentioned Crypto on Twitter Ever as Price Soars	null	0.9985
560	29	347	Bitcoin Shoots Up 11 Did Elon Musk DogeCoin Boost Help	null	0.9081
561	29	107	Bitcoin Jumps Above 38 000 as Musk Adds It to Twitter Profile	null	0.9970
562	29	707	Bitcoin Soars 14 After Elon Musk Namecheck on Twitter	null	0.9985
563	29	767	Bitcoin soars 14 after Elon Musk namecheck on Twitter	null	0.9985
564	29	347	Bitcoin Shoots Up 11 Did Elon Musk Dogecoin Boost Help	null	0.9081
565	29	647	Bitcoin soars 14 after Elon Musk namecheck on Twitter	null	0.9985
566	29	647	Bitcoin soars 14 after Elon Musk namecheck on Twitter	null	0.9985
567	29	467	Bitcoin soars 14 after Elon Musk namecheck on Twitter By Reuters	null	0.9985
568	29	467	Bitcoin soars 14 after Elon Musk namecheck on Twitter By Reuters	null	0.9985
569	29	467	Bitcoin soars 14 after Elon Musk namecheck on Twitter By Reuters	null	0.9985
570	29	467	XRP Climbs 10 45 In Bullish Trade	null	0.9970
571	29	467	XRP Climbs 10 45 In Bullish Trade	null	0.9970
572	29	467	XRP Climbs 10 As Investors Gain Confidence By Investing com	null	0.9853
573	29	107	Dogecoin DOGE shoots 270 higher as WallStreetBets starts to pick up on crypto CryptoSlate	null	0.7906
574	29	467	Wall Street Just Made the Best Case for Bitcoin Ethereum DeFi Get Ready for Mass Adoption	null	0.7717
575	29	707	Bitcoin soars 14 after Elon Musk namecheck on Twitter	null	0.9985
576	29	467	XRP Climbs 10 45 In Rally By Investing com	null	0.9682
577	29	827	Elon Musk changes Twitter bio to bitcoin chaos ensues	null	-0.5719
578	29	467	Bitcoin soars 14 after Elon Musk namecheck on Twitter By Reuters	null	0.9985
579	29	1129	Kraken Coinbase Suffer Outages Amid Market Volatility	null	-0.5423
580	29	947	How A Little Bird Is Delivering Trust	null	0.5106
581	29	1127	GLOBAL MARKETS Dollar stocks slide as virus social trading cools sentiment	null	-0.9970
582	29	1067	Who s getting rich off GameStop s stock The market makers and middlemen including Robinhood	null	0.5574
583	29	1067	Dow Jones Today Stocks Drop To Test Support Caterpillar Climbs Bitcoin Rallies Short Squeeze	null	-0.9968
584	29	1007	Ray Dalio Bitcoin is gold like but governments won t let it win	null	0.9186
585	29	947	Here s why Elon Musk s simple Twitter bio change rocketed Bitcoin up 18 CryptoSlate	null	0.7906
586	29	1007	Zombies not welcome Original altcoins lose ground to DeFi newcomers	null	-0.7304
587	29	887	GLOBAL MARKETS Wall Street set for weak open on hedge fund retail battle	null	-0.6705
588	29	827	Billionaire Leon Cooperman says GameStop surge will end very badly for the public and decries	null	-0.5256
589	29	587	Dogecoin s 600 rally could jumpstart the next altseason	null	0.9682
590	29	767	Join Us in Miami Love Masters of the Universe	null	0.7506
591	29	467	Google reportedly scraps thousands of negative Robinhood reviews By Cointelegraph	null	-0.5719
592	29	467	Robinhood Raises Over 1 Billion In Emergency Funds As Platform Struggles With Reddit Fuelled	null	-0.6249
593	29	467	GLOBAL MARKETS Dollar stocks slide as virus social trading cools sentiment	null	-0.9970
594	29	467	GLOBAL MARKETS Wall Street set for weak open on hedge fund retail battle	null	-0.6705
595	29	467	GLOBAL MARKETS Wall Street set for weak open on hedge fund retail battle	null	-0.6705
596	29	467	GLOBAL MARKETS Wall Street set for weak open on hedge fund retail battle By Reuters	null	-0.6705
597	29	1067	Opinion Who s getting rich off GameStop s stock The market makers and middlemen including	null	0.5574
598	29	1007	U S Stocks Open Lower as GameStop Frenzy Builds	null	-0.5423
599	29	1007	Dow slides 200 points on concerns of retail investors speculative trading	null	-0.9970
600	29	1007	World s richest man Elon Musk boosts Bitcoin price by 20 Is 40K back in play	null	0.7964
601	29	827	Elon Musk changes Twitter bio to bitcoin chaos ensues	null	-0.5719
602	29	707	Bitcoin soars by 5K in minutes BTC hits 38K after Elon Musk s Dogecoin treatment	null	0.9985
603	28	1247	Ray Dalio Calls Bitcoin One Hell of an Invention Considers It for New Funds	null	-0.6808
604	28	1247	The 8 best investing app alternatives to Robinhood	null	0.6369
605	28	1247	Here are the best investing app alternatives to Robinhood	null	0.6369
606	28	1247	The 8 best investing app alternatives to Robinhood	null	0.6369
607	29	1163	Crypto Whale One River Says Volatility to Ease as Prices Rise	null	0.9842
608	29	1163	The biggest investors in space are cheering on the GameStop trade	null	0.5106
609	29	467	GameStop back on the rise as Robinhood eases trading ban	null	0.9792
610	29	407	DeFi bulls continue to roar as Gamestop GME saga continues CryptoSlate	null	0.9325
611	29	47	DOGE tweet volume up 1800 becomes first altcoin to surpass Bitcoin ever The Tie	null	0.7906
612	29	467	GLOBAL MARKETS Wall Street set for weak open on hedge fund retail battle By Reuters	null	-0.6705
613	28	1427	FB Stock A Buy Facebook Crushes Q4 Earnings But Predicts High Opt Out Rates	null	0.9882
614	29	1147	Robinhood restricts instant buying of crypto citing extraordinary market conditions	null	0.9136
615	29	227	SEC issues warning as GameStop short selling war resumes	null	-0.9652
616	29	1163	Tim Cook says companies are misleading users and exploiting data as public feud with Facebook	null	-0.7906
617	29	107	Dollar stocks slide as virus social trading cools sentiment	null	-0.9970
618	29	107	Dollar stocks slide as virus social trading cools sentiment	null	-0.9970
619	29	107	Dollar stocks slide as virus social trading cools sentiment	null	-0.9970
620	29	107	Dollar stocks slide as virus social trading cools sentiment	null	-0.9970
621	29	827	Elon Musk changes Twitter bio to bitcoin chaos ensues	null	-0.5719
622	29	947	Jon Stewart gets a warm welcome on Twitter after joining to defend Reddit traders	null	0.5994
623	29	647	FinTech Blockchain Market to Gain from Increasing Adoption in Financial Industry Worldwide says	null	0.9818
624	40	1081	Bitcoin Miner Riot Blockchain Names Jason Les CEO	null	-0.5574
625	29	527	FTSE 100 falls expected as GameStop Reddit fallout blows through global markets	null	-0.9993
626	28	1427	Short Squeeze Volatility With GME AMC O Neil Portfolio Manager On Navigating Risk In Crazy	null	-0.5423
627	28	1247	Here are the best investing app alternatives to Robinhood	null	0.6369
628	28	1247	How the far right harnessed tech in the lead up to the Capitol riot	null	0.5267
629	28	1247	How the far right harnessed tech in the lead up to the Capitol riot	null	0.5267
630	29	131	WallStreetsBets craze pushes dogecoin up 5x in 24 hours	null	0.7506
631	29	660	Elon Musk changes Twitter bio to bitcoin chaos ensues	null	-0.5719
632	29	586	Bitcoin soars 11 after Elon Musk namecheck on Twitter Reuters	null	0.9985
633	29	569	Bitcoin soars 11 after Elon Musk namecheck on Twitter Reuters	null	0.9985
634	28	848	Cryptocurrency crime drops in 2020 but DeFi breaches rise study finds Reuters	null	0.9910
635	28	1126	Bitcoin What is the death cross that heralds the sharp fall of this cryptocurrency	null	-0.5994
636	28	1095	Here are the best investing app alternatives to Robinhood	null	0.6369
637	28	665	3 Popular Robinhood Stocks That Could Be Better Than Bitcoin in 2021	null	0.6908
638	29	1118	Robinhood blocks cryptocurrency trading blames extraordinary market conditions	null	-0.5574
639	29	938	Dogecoin Price Up 975 After Elon Musk s Tweet WallStreetBets Pump	null	0.7906
640	29	518	Reddit frenzy pumps up Dogecoin a cryptocurrency started as a joke by over 800	null	0.7845
641	29	38	Will the SEC s Lawsuit Lead to Ripple Failing to Reach Its Potential	null	-0.6249
642	29	758	Stablecoin holdings on crypto exchanges hit a new all time high	null	0.9682
643	29	878	Bitcoin soars 14 after Elon Musk namecheck on Twitter	null	0.9985
644	29	1178	What s Next For Bitcoin In An Era Of Helicopter Money Negative	null	-0.5719
645	29	698	Price of worthless cryptocurrency skyrockets by 1 000 thanks to GameStop stock fiasco	null	-0.5106
646	29	398	WallStreetsBets craze pushes dogecoin up 5x in 24 hours	null	0.7506
647	29	998	Dogecoin Jumps 600 as Meme Crypto Rides GameStop Retail Wave	null	0.9970
648	29	938	Dogecoin soars 370 as Reddit group works to send the cryptocurrency to the moon	null	0.9985
649	29	698	Elon Musk sends Bitcoin soaring 20pc live updates	null	0.9985
650	28	1358	Bitcoin What is the Death Cross That Heralds the Sharp Fall of This Cryptocurrency	null	-0.5994
651	29	638	Robinhood restricts Instant Buying of crypto citing extraordinary market conditions	null	0.9136
652	29	1178	Cryptocurrency Crime Drops in 2020 but Decentralized Finance Losses Rise Study	null	0.9892
653	29	878	Dogecoin soars 370 as Reddit group works to send the cryptocurrency to the moon	null	0.9985
654	29	1058	Robinhood restricts crypto trading as Dogecoin soars 300 percent	null	0.9984
655	29	878	Dogecoin soars 370 as Reddit group works to send the cryptocurrency to the moon	null	0.9985
656	29	998	Dogecoin soars 370 as Reddit group works to send the cryptocurrency to the moon	null	0.9985
657	29	878	Dogecoin Becomes Most Mentioned Crypto on Twitter Ever as Price Soars	null	0.9985
658	29	458	Bitcoin Shoots Up 11 Did Elon Musk DogeCoin Boost Help	null	0.9081
659	29	218	Bitcoin Jumps Above 38 000 as Musk Adds It to Twitter Profile	null	0.9970
660	29	818	Bitcoin Soars 14 After Elon Musk Namecheck on Twitter	null	0.9985
661	29	878	Bitcoin soars 14 after Elon Musk namecheck on Twitter	null	0.9985
662	29	458	Bitcoin Shoots Up 11 Did Elon Musk Dogecoin Boost Help	null	0.9081
663	29	758	Bitcoin soars 14 after Elon Musk namecheck on Twitter	null	0.9985
664	29	758	Bitcoin soars 14 after Elon Musk namecheck on Twitter	null	0.9985
665	29	578	Bitcoin soars 14 after Elon Musk namecheck on Twitter By Reuters	null	0.9985
666	29	578	Bitcoin soars 14 after Elon Musk namecheck on Twitter By Reuters	null	0.9985
667	29	578	Bitcoin soars 14 after Elon Musk namecheck on Twitter By Reuters	null	0.9985
668	29	578	XRP Climbs 10 45 In Bullish Trade	null	0.9970
669	29	578	XRP Climbs 10 45 In Bullish Trade	null	0.9970
670	29	578	XRP Climbs 10 As Investors Gain Confidence By Investing com	null	0.9853
671	29	218	Dogecoin DOGE shoots 270 higher as WallStreetBets starts to pick up on crypto CryptoSlate	null	0.7906
672	29	578	Wall Street Just Made the Best Case for Bitcoin Ethereum DeFi Get Ready for Mass Adoption	null	0.7717
673	29	818	Bitcoin soars 14 after Elon Musk namecheck on Twitter	null	0.9985
674	29	578	XRP Climbs 10 45 In Rally By Investing com	null	0.9682
675	29	938	Elon Musk changes Twitter bio to bitcoin chaos ensues	null	-0.5719
676	29	578	Bitcoin soars 14 after Elon Musk namecheck on Twitter By Reuters	null	0.9985
677	29	1240	Kraken Coinbase Suffer Outages Amid Market Volatility	null	-0.5423
678	29	1058	How A Little Bird Is Delivering Trust	null	0.5106
679	29	1238	GLOBAL MARKETS Dollar stocks slide as virus social trading cools sentiment	null	-0.9970
680	29	1178	Who s getting rich off GameStop s stock The market makers and middlemen including Robinhood	null	0.5574
681	29	1178	Dow Jones Today Stocks Drop To Test Support Caterpillar Climbs Bitcoin Rallies Short Squeeze	null	-0.9968
682	29	1118	Ray Dalio Bitcoin is gold like but governments won t let it win	null	0.9186
683	29	1058	Here s why Elon Musk s simple Twitter bio change rocketed Bitcoin up 18 CryptoSlate	null	0.7906
684	29	1118	Zombies not welcome Original altcoins lose ground to DeFi newcomers	null	-0.7304
685	29	998	GLOBAL MARKETS Wall Street set for weak open on hedge fund retail battle	null	-0.6705
686	29	938	Billionaire Leon Cooperman says GameStop surge will end very badly for the public and decries	null	-0.5256
687	29	698	Dogecoin s 600 rally could jumpstart the next altseason	null	0.9682
688	29	878	Join Us in Miami Love Masters of the Universe	null	0.7506
689	29	578	Google reportedly scraps thousands of negative Robinhood reviews By Cointelegraph	null	-0.5719
690	29	578	Robinhood Raises Over 1 Billion In Emergency Funds As Platform Struggles With Reddit Fuelled	null	-0.6249
691	29	578	GLOBAL MARKETS Dollar stocks slide as virus social trading cools sentiment	null	-0.9970
692	29	578	GLOBAL MARKETS Wall Street set for weak open on hedge fund retail battle	null	-0.6705
693	29	578	GLOBAL MARKETS Wall Street set for weak open on hedge fund retail battle	null	-0.6705
694	29	578	GLOBAL MARKETS Wall Street set for weak open on hedge fund retail battle By Reuters	null	-0.6705
695	29	1178	Opinion Who s getting rich off GameStop s stock The market makers and middlemen including	null	0.5574
696	29	1118	U S Stocks Open Lower as GameStop Frenzy Builds	null	-0.5423
697	29	1118	Dow slides 200 points on concerns of retail investors speculative trading	null	-0.9970
698	29	1118	World s richest man Elon Musk boosts Bitcoin price by 20 Is 40K back in play	null	0.7964
699	29	938	Elon Musk changes Twitter bio to bitcoin chaos ensues	null	-0.5719
700	29	818	Bitcoin soars by 5K in minutes BTC hits 38K after Elon Musk s Dogecoin treatment	null	0.9985
701	28	1358	Ray Dalio Calls Bitcoin One Hell of an Invention Considers It for New Funds	null	-0.6808
702	28	1358	The 8 best investing app alternatives to Robinhood	null	0.6369
703	28	1358	Here are the best investing app alternatives to Robinhood	null	0.6369
704	28	1358	The 8 best investing app alternatives to Robinhood	null	0.6369
705	29	1274	Crypto Whale One River Says Volatility to Ease as Prices Rise	null	0.9842
706	29	1274	The biggest investors in space are cheering on the GameStop trade	null	0.5106
707	29	578	GameStop back on the rise as Robinhood eases trading ban	null	0.9792
708	29	518	DeFi bulls continue to roar as Gamestop GME saga continues CryptoSlate	null	0.9325
709	29	158	DOGE tweet volume up 1800 becomes first altcoin to surpass Bitcoin ever The Tie	null	0.7906
710	29	578	GLOBAL MARKETS Wall Street set for weak open on hedge fund retail battle By Reuters	null	-0.6705
711	29	98	FB Stock A Buy Facebook Crushes Q4 Earnings But Predicts High Opt Out Rates	null	0.9882
712	29	1258	Robinhood restricts instant buying of crypto citing extraordinary market conditions	null	0.9136
713	29	338	SEC issues warning as GameStop short selling war resumes	null	-0.9652
714	29	1274	Tim Cook says companies are misleading users and exploiting data as public feud with Facebook	null	-0.7906
715	29	218	Dollar stocks slide as virus social trading cools sentiment	null	-0.9970
716	29	218	Dollar stocks slide as virus social trading cools sentiment	null	-0.9970
717	29	218	Dollar stocks slide as virus social trading cools sentiment	null	-0.9970
718	29	218	Dollar stocks slide as virus social trading cools sentiment	null	-0.9970
719	29	938	Elon Musk changes Twitter bio to bitcoin chaos ensues	null	-0.5719
720	29	1058	Jon Stewart gets a warm welcome on Twitter after joining to defend Reddit traders	null	0.5994
721	29	758	FinTech Blockchain Market to Gain from Increasing Adoption in Financial Industry Worldwide says	null	0.9818
722	29	638	FTSE 100 falls expected as GameStop Reddit fallout blows through global markets	null	-0.9993
723	29	98	Short Squeeze Volatility With GME AMC O Neil Portfolio Manager On Navigating Risk In Crazy	null	-0.5423
724	28	1358	Here are the best investing app alternatives to Robinhood	null	0.6369
725	28	1358	How the far right harnessed tech in the lead up to the Capitol riot	null	0.5267
726	28	1358	How the far right harnessed tech in the lead up to the Capitol riot	null	0.5267
727	29	131	WallStreetsBets craze pushes dogecoin up 5x in 24 hours	null	0.7506
728	29	660	Elon Musk changes Twitter bio to bitcoin chaos ensues	null	-0.5719
729	29	586	Bitcoin soars 11 after Elon Musk namecheck on Twitter Reuters	null	0.9985
730	29	569	Bitcoin soars 11 after Elon Musk namecheck on Twitter Reuters	null	0.9985
731	28	848	Cryptocurrency crime drops in 2020 but DeFi breaches rise study finds Reuters	null	0.9910
732	28	1126	Bitcoin What is the death cross that heralds the sharp fall of this cryptocurrency	null	-0.5994
733	28	1095	Here are the best investing app alternatives to Robinhood	null	0.6369
734	28	665	3 Popular Robinhood Stocks That Could Be Better Than Bitcoin in 2021	null	0.6908
735	29	1118	Robinhood blocks cryptocurrency trading blames extraordinary market conditions	null	-0.5574
736	29	938	Dogecoin Price Up 975 After Elon Musk s Tweet WallStreetBets Pump	null	0.7906
737	29	518	Reddit frenzy pumps up Dogecoin a cryptocurrency started as a joke by over 800	null	0.7845
738	29	38	Will the SEC s Lawsuit Lead to Ripple Failing to Reach Its Potential	null	-0.6249
739	29	758	Stablecoin holdings on crypto exchanges hit a new all time high	null	0.9682
740	29	878	Bitcoin soars 14 after Elon Musk namecheck on Twitter	null	0.9985
741	29	1178	What s Next For Bitcoin In An Era Of Helicopter Money Negative	null	-0.5719
742	29	698	Price of worthless cryptocurrency skyrockets by 1 000 thanks to GameStop stock fiasco	null	-0.5106
743	29	398	WallStreetsBets craze pushes dogecoin up 5x in 24 hours	null	0.7506
744	29	998	Dogecoin Jumps 600 as Meme Crypto Rides GameStop Retail Wave	null	0.9970
745	29	938	Dogecoin soars 370 as Reddit group works to send the cryptocurrency to the moon	null	0.9985
746	29	698	Elon Musk sends Bitcoin soaring 20pc live updates	null	0.9985
747	28	1358	Bitcoin What is the Death Cross That Heralds the Sharp Fall of This Cryptocurrency	null	-0.5994
748	29	638	Robinhood restricts Instant Buying of crypto citing extraordinary market conditions	null	0.9136
749	29	1178	Cryptocurrency Crime Drops in 2020 but Decentralized Finance Losses Rise Study	null	0.9892
750	29	878	Dogecoin soars 370 as Reddit group works to send the cryptocurrency to the moon	null	0.9985
751	29	1058	Robinhood restricts crypto trading as Dogecoin soars 300 percent	null	0.9984
752	29	878	Dogecoin soars 370 as Reddit group works to send the cryptocurrency to the moon	null	0.9985
753	29	998	Dogecoin soars 370 as Reddit group works to send the cryptocurrency to the moon	null	0.9985
754	29	878	Dogecoin Becomes Most Mentioned Crypto on Twitter Ever as Price Soars	null	0.9985
755	29	458	Bitcoin Shoots Up 11 Did Elon Musk DogeCoin Boost Help	null	0.9081
756	29	218	Bitcoin Jumps Above 38 000 as Musk Adds It to Twitter Profile	null	0.9970
757	29	818	Bitcoin Soars 14 After Elon Musk Namecheck on Twitter	null	0.9985
758	29	878	Bitcoin soars 14 after Elon Musk namecheck on Twitter	null	0.9985
759	29	458	Bitcoin Shoots Up 11 Did Elon Musk Dogecoin Boost Help	null	0.9081
760	29	758	Bitcoin soars 14 after Elon Musk namecheck on Twitter	null	0.9985
761	29	758	Bitcoin soars 14 after Elon Musk namecheck on Twitter	null	0.9985
762	29	578	Bitcoin soars 14 after Elon Musk namecheck on Twitter By Reuters	null	0.9985
763	29	578	Bitcoin soars 14 after Elon Musk namecheck on Twitter By Reuters	null	0.9985
764	29	578	Bitcoin soars 14 after Elon Musk namecheck on Twitter By Reuters	null	0.9985
765	29	578	XRP Climbs 10 45 In Bullish Trade	null	0.9970
766	29	578	XRP Climbs 10 45 In Bullish Trade	null	0.9970
767	29	578	XRP Climbs 10 As Investors Gain Confidence By Investing com	null	0.9853
768	29	218	Dogecoin DOGE shoots 270 higher as WallStreetBets starts to pick up on crypto CryptoSlate	null	0.7906
769	29	578	Wall Street Just Made the Best Case for Bitcoin Ethereum DeFi Get Ready for Mass Adoption	null	0.7717
770	29	818	Bitcoin soars 14 after Elon Musk namecheck on Twitter	null	0.9985
771	29	578	XRP Climbs 10 45 In Rally By Investing com	null	0.9682
772	29	938	Elon Musk changes Twitter bio to bitcoin chaos ensues	null	-0.5719
773	29	578	Bitcoin soars 14 after Elon Musk namecheck on Twitter By Reuters	null	0.9985
774	29	1240	Kraken Coinbase Suffer Outages Amid Market Volatility	null	-0.5423
775	29	1058	How A Little Bird Is Delivering Trust	null	0.5106
776	29	1238	GLOBAL MARKETS Dollar stocks slide as virus social trading cools sentiment	null	-0.9970
777	29	1178	Who s getting rich off GameStop s stock The market makers and middlemen including Robinhood	null	0.5574
778	29	1178	Dow Jones Today Stocks Drop To Test Support Caterpillar Climbs Bitcoin Rallies Short Squeeze	null	-0.9968
779	29	1118	Ray Dalio Bitcoin is gold like but governments won t let it win	null	0.9186
780	29	1058	Here s why Elon Musk s simple Twitter bio change rocketed Bitcoin up 18 CryptoSlate	null	0.7906
781	29	1118	Zombies not welcome Original altcoins lose ground to DeFi newcomers	null	-0.7304
782	29	998	GLOBAL MARKETS Wall Street set for weak open on hedge fund retail battle	null	-0.6705
783	29	938	Billionaire Leon Cooperman says GameStop surge will end very badly for the public and decries	null	-0.5256
784	29	698	Dogecoin s 600 rally could jumpstart the next altseason	null	0.9682
785	29	878	Join Us in Miami Love Masters of the Universe	null	0.7506
786	29	578	Google reportedly scraps thousands of negative Robinhood reviews By Cointelegraph	null	-0.5719
787	29	578	Robinhood Raises Over 1 Billion In Emergency Funds As Platform Struggles With Reddit Fuelled	null	-0.6249
788	29	578	GLOBAL MARKETS Dollar stocks slide as virus social trading cools sentiment	null	-0.9970
789	29	578	GLOBAL MARKETS Wall Street set for weak open on hedge fund retail battle	null	-0.6705
790	29	578	GLOBAL MARKETS Wall Street set for weak open on hedge fund retail battle	null	-0.6705
791	29	578	GLOBAL MARKETS Wall Street set for weak open on hedge fund retail battle By Reuters	null	-0.6705
792	29	1178	Opinion Who s getting rich off GameStop s stock The market makers and middlemen including	null	0.5574
793	29	1118	U S Stocks Open Lower as GameStop Frenzy Builds	null	-0.5423
794	29	1118	Dow slides 200 points on concerns of retail investors speculative trading	null	-0.9970
795	29	1118	World s richest man Elon Musk boosts Bitcoin price by 20 Is 40K back in play	null	0.7964
796	29	938	Elon Musk changes Twitter bio to bitcoin chaos ensues	null	-0.5719
797	29	818	Bitcoin soars by 5K in minutes BTC hits 38K after Elon Musk s Dogecoin treatment	null	0.9985
798	28	1358	Ray Dalio Calls Bitcoin One Hell of an Invention Considers It for New Funds	null	-0.6808
799	28	1358	The 8 best investing app alternatives to Robinhood	null	0.6369
800	28	1358	Here are the best investing app alternatives to Robinhood	null	0.6369
801	28	1358	The 8 best investing app alternatives to Robinhood	null	0.6369
802	29	1274	Crypto Whale One River Says Volatility to Ease as Prices Rise	null	0.9842
2313	53	601	Bitcoin and ethereum prices seem high says Musk	null	0.9682
803	29	1274	The biggest investors in space are cheering on the GameStop trade	null	0.5106
804	29	578	GameStop back on the rise as Robinhood eases trading ban	null	0.9792
805	29	518	DeFi bulls continue to roar as Gamestop GME saga continues CryptoSlate	null	0.9325
806	29	158	DOGE tweet volume up 1800 becomes first altcoin to surpass Bitcoin ever The Tie	null	0.7906
807	29	578	GLOBAL MARKETS Wall Street set for weak open on hedge fund retail battle By Reuters	null	-0.6705
808	29	98	FB Stock A Buy Facebook Crushes Q4 Earnings But Predicts High Opt Out Rates	null	0.9882
809	29	1258	Robinhood restricts instant buying of crypto citing extraordinary market conditions	null	0.9136
810	29	338	SEC issues warning as GameStop short selling war resumes	null	-0.9652
811	29	1274	Tim Cook says companies are misleading users and exploiting data as public feud with Facebook	null	-0.7906
812	29	218	Dollar stocks slide as virus social trading cools sentiment	null	-0.9970
813	29	218	Dollar stocks slide as virus social trading cools sentiment	null	-0.9970
814	29	218	Dollar stocks slide as virus social trading cools sentiment	null	-0.9970
815	29	218	Dollar stocks slide as virus social trading cools sentiment	null	-0.9970
816	29	938	Elon Musk changes Twitter bio to bitcoin chaos ensues	null	-0.5719
817	29	1058	Jon Stewart gets a warm welcome on Twitter after joining to defend Reddit traders	null	0.5994
818	29	758	FinTech Blockchain Market to Gain from Increasing Adoption in Financial Industry Worldwide says	null	0.9818
819	29	638	FTSE 100 falls expected as GameStop Reddit fallout blows through global markets	null	-0.9993
820	29	98	Short Squeeze Volatility With GME AMC O Neil Portfolio Manager On Navigating Risk In Crazy	null	-0.5423
821	28	1358	Here are the best investing app alternatives to Robinhood	null	0.6369
822	28	1358	How the far right harnessed tech in the lead up to the Capitol riot	null	0.5267
823	28	1358	How the far right harnessed tech in the lead up to the Capitol riot	null	0.5267
824	29	131	WallStreetsBets craze pushes dogecoin up 5x in 24 hours	null	0.7506
825	29	660	Elon Musk changes Twitter bio to bitcoin chaos ensues	null	-0.5719
826	29	586	Bitcoin soars 11 after Elon Musk namecheck on Twitter Reuters	null	0.9985
827	29	569	Bitcoin soars 11 after Elon Musk namecheck on Twitter Reuters	null	0.9985
828	28	848	Cryptocurrency crime drops in 2020 but DeFi breaches rise study finds Reuters	null	0.9910
829	28	1126	Bitcoin What is the death cross that heralds the sharp fall of this cryptocurrency	null	-0.5994
830	28	1095	Here are the best investing app alternatives to Robinhood	null	0.6369
831	28	665	3 Popular Robinhood Stocks That Could Be Better Than Bitcoin in 2021	null	0.6908
832	29	1089	India Would Ban Private Cryptocurrencies Under Proposed Legislation CoinDesk	null	-0.5574
833	29	1149	Two Bars for Bitcoins Owner in New York s Hell s Kitchen Selling Out for Cryptocurrency	null	-0.9618
834	29	1089	Robinhood Halts Instant Buying Power For Crypto	null	0.9325
835	29	249	Reddit frenzy pumps up Dogecoin a cryptocurrency started as a joke by over 800	null	0.7845
836	29	849	Robinhood blocks cryptocurrency trading blames extraordinary market conditions	null	-0.5574
837	29	1209	Dogecoin jumps more than 300 as Reddit tries to take on Wall Street	null	0.9970
838	29	669	Dogecoin Price Up 975 After Elon Musk s Tweet WallStreetBets Pump	null	0.7906
839	29	969	Bitcoin s spike drives rebound in hard hit crypto mining stocks	null	0.9810
840	29	549	Stablecoin holdings on crypto exchanges hit a new all time high	null	0.9682
841	29	129	WallStreetsBets craze pushes dogecoin up 5x in 24 hours	null	0.7506
842	29	429	Price of worthless cryptocurrency skyrockets by 1 000 thanks to GameStop stock fiasco	null	-0.5106
843	29	909	What s Next For Bitcoin In An Era Of Helicopter Money Negative	null	-0.5719
844	29	309	Two bars for bitcoins owner in New York s Hell s Kitchen selling out for cryptocurrency By Reuters	null	-0.9618
845	29	669	Dogecoin Becomes Most Mentioned Crypto on Twitter Ever as Price Soars CoinDesk	null	0.9985
846	29	429	Elon Musk sends Bitcoin soaring 20pc	null	0.9985
847	29	909	Cryptocurrency Crime Drops in 2020 but Decentralized Finance Losses Rise Study	null	0.9892
848	29	609	Dogecoin soars 370 as Reddit group works to send the cryptocurrency to the moon	null	0.9985
849	29	609	Dogecoin soars 370 as Reddit group works to send the cryptocurrency to the moon	null	0.9985
850	29	1149	Two bars for bitcoins owner in New York s Hell s Kitchen selling out for cryptocurrency	null	-0.9618
851	29	789	Robinhood restricts crypto trading as Dogecoin soars 300 percent	null	0.9984
852	29	669	Dogecoin Becomes Most Mentioned Crypto on Twitter Ever as Price Soars	null	0.9985
853	29	1149	Two bars for bitcoins owner in New York s Hell s Kitchen selling out for cryptocurrency	null	-0.9618
854	29	1149	Two bars for bitcoins owner in New York s Hell s Kitchen selling out for cryptocurrency	null	-0.9618
855	29	969	Kraken Coinbase Suffer Outages Amid Market Volatility CoinDesk	null	-0.5423
856	29	1149	Two bars for bitcoins owner in New York s Hell s Kitchen selling out for cryptocurrency	null	-0.9618
857	29	789	Dogecoin soars 370 as Reddit group works to send the cryptocurrency to the moon	null	0.9985
858	29	729	Dogecoin soars 370 as Reddit group works to send the cryptocurrency to the moon	null	0.9985
859	29	609	Dogecoin soars 370 as Reddit group works to send the cryptocurrency to the moon NewsChannel	null	0.9985
860	29	189	Bitcoin Shoots Up 11 Did Elon Musk DogeCoin Boost Help	null	0.9081
861	29	669	Bitcoin soars 14 after Elon Musk namecheck on Twitter	null	0.9985
862	29	729	Dogecoin soars 370 as Reddit group works to send the cryptocurrency to the moon	null	0.9985
863	29	1089	India Would Ban Private Cryptocurrencies Under Proposed Legislation	null	-0.5574
864	29	729	Dogecoin soars 370 as Reddit group works to send the cryptocurrency to the moon KION546	null	0.9985
865	29	609	Bitcoin soars 14 after Elon Musk namecheck on Twitter	null	0.9985
866	29	1029	Robinhood restricts Instant Buying of crypto citing extraordinary market conditions	null	0.9136
867	29	489	Bitcoin soars 14 after Elon Musk namecheck on Twitter	null	0.9985
868	29	489	Dogecoin soars 370 as Reddit group works to send the cryptocurrency to the moon	null	0.9985
869	29	1029	Robinhood restricts Instant Buying of crypto citing extraordinary market conditions	null	0.9136
870	29	309	Bitcoin soars 14 after Elon Musk namecheck on Twitter By Reuters	null	0.9985
871	29	549	Bitcoin Soars 14 After Elon Musk Namecheck on Twitter	null	0.9985
872	29	609	Bitcoin soars 14 after Elon Musk namecheck on Twitter	null	0.9985
873	29	1209	Everything we know about the GameStop stock insanity	null	-0.5719
874	29	729	Dogecoin soars 370 as Reddit group works to send the cryptocurrency to the moon	null	0.9985
875	29	729	Dogecoin soars 370 as Reddit group works to send the cryptocurrency to the moon	null	0.9985
876	29	729	Dogecoin soars 370 as Reddit group works to send the cryptocurrency to the moon	null	0.9985
877	29	729	Dogecoin soars 370 as Reddit group works to send the cryptocurrency to the moon	null	0.9985
878	29	669	Elon Musk changes Twitter bio to bitcoin chaos ensues	null	-0.5719
879	29	309	Bitcoin soars 14 after Elon Musk namecheck on Twitter By Reuters	null	0.9985
880	29	309	Bitcoin soars 14 after Elon Musk namecheck on Twitter By Reuters	null	0.9985
881	29	309	Bitcoin soars 14 after Elon Musk namecheck on Twitter By Reuters	null	0.9985
882	29	189	Bitcoin Shoots Up 11 Did Elon Musk Dogecoin Boost Help	null	0.9081
883	29	309	XRP Climbs 10 45 In Rally By Investing com	null	0.9682
884	29	69	Litecoin Climbs 10 11 In Rally	null	0.9682
885	29	189	Ray Dalio Clears His Stance On Bitcoin Calls It Amazing Accomplishment	null	0.6249
886	29	69	Bitcoin Climbs 10 18 In Rally	null	0.9682
887	29	9	Litecoin Climbs 10 11 In Rally By Investing com	null	0.9682
888	29	9	Bitcoin Climbs 10 In Bullish Trade By Investing com	null	0.9970
889	29	9	Litecoin Climbs 10 In Bullish Trade By Investing com	null	0.9970
890	29	9	Bitcoin Climbs 10 18 In Rally By Investing com	null	0.9682
891	29	189	Ray Dalio Clears His Stance On Bitcoin Calls Is Amazing Accomplishment	null	0.6249
892	29	849	Dogecoin soars 370 as Reddit group works to send the cryptocurrency to the moon	null	0.9985
893	29	1209	Elon Musk and Ray Dalio Send Bitcoin Stocks Soaring	null	0.9985
894	29	1209	Elon Musk and Ray Dalio Send Bitcoin Stocks Soaring The Motley Fool	null	0.9984
895	29	1329	Analysis GameStop s Reddit Rally Puts Scrutiny on Social Media Forums	null	0.9682
896	29	1209	Bitcoin Soars After Tesla CEO Elon Musk Says This 1 Word on Twitter	null	0.9985
897	29	789	How A Little Bird Is Delivering Trust	null	0.5106
898	29	1209	GLOBAL MARKETS Dollar stocks slide as virus social trading cools sentiment	null	-0.9970
899	29	1149	Short selling What it is why it s risky and how the squeeze happens	null	-0.9413
900	29	1089	Downtown Weatherford building damaged after man crashes into it officials say	null	-0.9993
901	29	1029	Robinhood restricts instant buying of crypto citing extraordinary market conditions	null	0.9136
902	29	1329	Analysis GameStop s Reddit rally puts scrutiny on social media forums	null	0.9682
903	29	1329	Analysis GameStop s Reddit rally puts scrutiny on social media forums	null	0.9682
904	29	969	5 best stock trading apps for iPhone 9to5Mac	null	0.6369
905	29	909	U S Stocks Open Lower as GameStop Frenzy Builds	null	-0.5423
906	29	909	Dow slides 200 points on concerns of retail investors speculative trading	null	-0.9970
907	29	909	World s richest man Elon Musk boosts Bitcoin price by 20 Is 40K back in play	null	0.7964
908	29	1360	Dogecoin soars another 600 as Reddit frenzy pushes the token into the top 10 cryptocurrencies by	null	0.9985
909	29	669	Elon Musk changes Twitter bio to bitcoin chaos ensues	null	-0.5719
910	29	729	GLOBAL MARKETS Wall Street set for weak open on hedge fund retail battle	null	-0.6705
911	29	669	Billionaire Leon Cooperman says GameStop surge will end very badly for the public and decries	null	-0.5256
912	29	429	Dogecoin s 600 rally could jumpstart the next altseason	null	0.9682
913	29	609	Join Us in Miami Love Masters of the Universe	null	0.7506
914	29	549	Bitcoin soars by 5K in minutes BTC hits 38K after Elon Musk s Dogecoin treatment	null	0.9985
915	29	309	GLOBAL MARKETS Dollar stocks slide as virus social trading cools sentiment By Reuters	null	-0.9970
916	29	309	GLOBAL MARKETS Wall Street set for weak open on hedge fund retail battle	null	-0.6705
917	29	309	GLOBAL MARKETS Wall Street set for weak open on hedge fund retail battle	null	-0.6705
918	29	309	GLOBAL MARKETS Wall Street set for weak open on hedge fund retail battle By Reuters	null	-0.6705
919	29	309	GLOBAL MARKETS Wall Street set for weak open on hedge fund retail battle By Reuters	null	-0.6705
920	29	309	GameStop back on the rise as Robinhood eases trading ban	null	0.9792
921	29	489	FinTech Blockchain Market to Gain from Increasing Adoption in Financial Industry Worldwide says	null	0.9818
922	29	309	Google reportedly scraps thousands of negative Robinhood reviews By Cointelegraph	null	-0.5719
923	29	909	Who s getting rich off GameStop s stock The market makers and middlemen including Robinhood	null	0.5574
924	29	909	Dow Jones Today Stocks Drop To Test Support Caterpillar Climbs Bitcoin Rallies Short Squeeze	null	-0.9968
925	29	789	Here s why Elon Musk s simple Twitter bio change rocketed Bitcoin up 18 CryptoSlate	null	0.7906
926	29	309	Bitcoin to Win From Short Squeeze Financial Rebellion Experts Say	null	0.5106
927	29	309	Bitcoin to Win From Short Squeeze Financial Rebellion Experts By Investing com	null	0.5106
928	29	309	Robinhood Raises Over 1 Billion In Emergency Funds As Platform Struggles With Reddit Fuelled	null	-0.6249
929	29	309	GLOBAL MARKETS Dollar stocks slide as virus social trading cools sentiment	null	-0.9970
930	29	309	GLOBAL MARKETS Dollar stocks slide as virus social trading cools sentiment	null	-0.9970
931	29	309	GLOBAL MARKETS Wall Street set for weak open on hedge fund retail battle By Reuters	null	-0.6705
932	29	249	DeFi bulls continue to roar as Gamestop GME saga continues CryptoSlate	null	0.9325
933	29	189	Alleged dog fighting ring busted 11 people arrested also face drug charges	null	-0.7717
934	29	1269	US stocks suffer worst week since October amid Reddit fueled trading craze	null	-0.9906
935	29	309	Bitcoin to Win From Short Squeeze Financial Rebellion Experts Say	null	0.5106
936	29	309	Bitcoin to Win From Short Squeeze Financial Rebellion Experts Say By Investing com	null	0.5106
937	29	309	Bitcoin to Win From Short Squeeze Financial Rebellion Experts Say By Investing com	null	0.5106
938	29	309	Bitcoin to Win From Short Squeeze Financial Rebellion Experts Say By Investing com	null	0.5106
939	29	309	Bitcoin to Win From Short Squeeze Financial Rebellion Experts Say By Investing com	null	0.5106
940	29	309	GLOBAL MARKETS Dollar stocks slide as virus social trading cools sentiment	null	-0.9970
941	29	309	GLOBAL MARKETS Dollar stocks slide as virus social trading cools sentiment By Reuters	null	-0.9970
942	29	969	GLOBAL MARKETS Dollar stocks slide as virus social trading cools sentiment	null	-0.9970
943	29	909	Zombies not welcome Original altcoins lose ground to DeFi newcomers	null	-0.7304
944	29	69	SEC issues warning as GameStop short selling war resumes	null	-0.9652
945	29	129	Global Markets Dollar stocks slide as virus social trading cools sentiment	null	-0.9970
946	29	131	WallStreetsBets craze pushes dogecoin up 5x in 24 hours	null	0.7506
947	29	660	Elon Musk changes Twitter bio to bitcoin chaos ensues	null	-0.5719
948	29	586	Bitcoin soars 11 after Elon Musk namecheck on Twitter Reuters	null	0.9985
949	29	1095	Bitcoin soars 14 on Musk namecheck on Twitter Reuters	null	0.9985
950	29	569	Bitcoin soars 11 after Elon Musk namecheck on Twitter Reuters	null	0.9985
951	28	848	Cryptocurrency crime drops in 2020 but DeFi breaches rise study finds Reuters	null	0.9910
952	28	1126	Bitcoin What is the death cross that heralds the sharp fall of this cryptocurrency	null	-0.5994
953	29	1223	Dogecoin jumps more than 300 as Reddit tries to take on Wall Street CNET	null	0.9970
954	29	1147	Two Bars for Bitcoins Owner in New York s Hell s Kitchen Selling Out for Cryptocurrency	null	-0.9618
955	29	1327	Bitcoin s spike drives rebound in hard hit crypto mining stocks	null	0.9810
956	29	1087	India Would Ban Private Cryptocurrencies Under Proposed Legislation CoinDesk	null	-0.5574
957	29	847	Robinhood blocks cryptocurrency trading blames extraordinary market conditions	null	-0.5574
958	30	67	GMI Model Estimates Bitcoin Fair Value At 300K By October 2021	null	0.5719
959	30	643	Dogecoin Price Up 975 After Elon Musk s Tweet WallStreetBets Pump	null	0.7906
960	29	1087	Robinhood Halts Instant Buying Power For Crypto	null	0.9325
961	29	1267	What is Dogecoin and Why Are People Buying It	null	0.9325
962	29	907	What s Next For Bitcoin In An Era Of Helicopter Money Negative	null	-0.5719
963	29	727	Dogecoin soars 370 as Reddit group works to send the cryptocurrency to the moon KION546	null	0.9985
964	29	907	Cryptocurrency Crime Drops in 2020 but Decentralized Finance Losses Rise Study	null	0.9892
965	29	1147	Two bars for bitcoins owner in New York s Hell s Kitchen selling out for cryptocurrency	null	-0.9618
966	29	1147	Two bars for bitcoins owner in New York s Hell s Kitchen selling out for cryptocurrency	null	-0.9618
967	29	1147	CORRECTED Two bars for bitcoins owner in New York s Hell s Kitchen selling out for cryptocurrency	null	-0.9618
968	29	1207	Two bars for bitcoins owner in New York s Hell s Kitchen selling out for cryptocurrency	null	-0.9618
969	29	1147	Two bars for bitcoins owner in New York s Hell s Kitchen selling out for cryptocurrency	null	-0.9618
970	29	1147	Two bars for bitcoins owner in New York s Hell s Kitchen selling out for cryptocurrency	null	-0.9618
971	29	727	Dogecoin soars 370 as Reddit group works to send the cryptocurrency to the moon	null	0.9985
972	30	427	India Plans to Introduce Legislation to Ban Cryptocurrencies	null	-0.5574
973	29	1027	Robinhood restricts Instant Buying of crypto citing extraordinary market conditions	null	0.9136
974	29	1087	Bitcoin soars 14 on Musk namecheck on Twitter	null	0.9985
975	30	7	Robinhood users are furious that it intervened in GameStop trading This map reveals where they are	null	-0.5719
976	29	1087	Ray Dalio clarifies his position on Bitcoin saying he greatly admires it CryptoSlate	null	0.5709
977	29	1327	Analysis GameStop s Reddit rally puts scrutiny on social media forums	null	0.9682
978	29	1087	India Would Ban Private Cryptocurrencies Under Proposed Legislation	null	-0.5574
979	29	787	Dogecoin soars 370 as Reddit group works to send the cryptocurrency to the moon	null	0.9985
980	30	7	Robinhood users are furious that it intervened in GameStop trading This map reveals where they are	null	-0.5719
981	29	787	Robinhood restricts crypto trading as Dogecoin soars 300 percent	null	0.9984
982	29	727	Dogecoin soars 370 as Reddit group works to send the cryptocurrency to the moon	null	0.9985
983	29	727	Dogecoin soars 370 as Reddit group works to send the cryptocurrency to the moon	null	0.9985
984	29	727	Dogecoin soars 370 as Reddit group works to send the cryptocurrency to the moon	null	0.9985
985	29	727	Dogecoin soars 370 as Reddit group works to send the cryptocurrency to the moon	null	0.9985
986	29	1027	Tron Ticker Confusion Would Be TRX Crypto Investors Mistakenly Buy Tanzanian Gold TRX Stock	null	-0.5267
987	29	1207	KDKA Investigates Financial Advisors Explain Dangers Of Treating Buying Stocks Like Sports Gambling	null	0.9231
988	29	1207	Everything we know about the GameStop stock insanity	null	-0.5719
989	29	847	Dogecoin soars 370 as Reddit group works to send the cryptocurrency to the moon	null	0.9985
990	29	1327	Analysis GameStop s Reddit Rally Puts Scrutiny on Social Media Forums	null	0.9682
991	29	1267	Analysis GameStop s Reddit rally puts scrutiny on social media forums	null	0.9682
992	30	7	After a tumultuous week some fear Robinhood s actions set a horrible precedent	null	-0.7717
993	30	7	After a tumultuous week some fear Robinhood s actions set a horrible precedent	null	-0.7717
994	29	1207	Bitcoin Soars After Tesla CEO Elon Musk Says This 1 Word on Twitter	null	0.9985
995	29	1207	Elon Musk and Ray Dalio Send Bitcoin Stocks Soaring The Motley Fool	null	0.9984
996	29	1327	Analysis GameStop s Reddit rally puts scrutiny on social media forums	null	0.9682
997	29	1327	Analysis GameStop s Reddit rally puts scrutiny on social media forums	null	0.9682
998	29	1207	Bitcoin Soars After Tesla CEO Elon Musk Says This 1 Word on Twitter The Motley Fool	null	0.9984
999	29	1387	Dogecoin soars another 600 as Reddit frenzy pushes the token into the top 10 cryptocurrencies by	null	0.9985
1000	29	1087	Downtown Weatherford building damaged after man crashes into it officials say	null	-0.9993
1001	29	907	World s richest man Elon Musk boosts Bitcoin price by 20 Is 40K back in play	null	0.7964
1002	29	907	Ray Dalio Bitcoin is gold like but governments won t let it win	null	0.9186
1003	29	907	Zombies not welcome Original altcoins lose ground to DeFi newcomers	null	-0.7304
1004	29	907	Opinion Who s getting rich off GameStop s stock The market makers and middlemen including	null	0.5574
1005	29	907	U S Stocks Open Lower as GameStop Frenzy Builds	null	-0.5423
1006	29	907	Dow slides 200 points on concerns of retail investors speculative trading	null	-0.9970
1007	29	907	Who s getting rich off GameStop s stock The market makers and middlemen including Robinhood	null	0.5574
1008	29	907	Dow Jones Today Stocks Drop To Test Support Caterpillar Climbs Bitcoin Rallies Short Squeeze	null	-0.9968
1009	29	727	GLOBAL MARKETS Wall Street set for weak open on hedge fund retail battle	null	-0.6705
1010	30	643	Billionaire Leon Cooperman says GameStop surge will end very badly for the public and decries	null	-0.5256
1011	29	967	Kraken Coinbase Suffer Outages Amid Market Volatility	null	-0.5423
1012	29	787	How A Little Bird Is Delivering Trust	null	0.5106
1013	30	307	These 3 Red Hot Stocks Could Plunge More than 50 If Wall Street s Right	null	-0.9988
1014	30	127	Analysis GameStop s Reddit rally puts scrutiny on social media forums	null	0.9682
1015	30	307	Fun and GameStop National Review	null	0.5106
1016	29	1207	Govt may introduce bill to ban control and regulate cryptocurrencies	null	-0.5574
1017	30	307	These 3 Red Hot Stocks Could Plunge More than 50 If Wall Street s Right The Motley Fool	null	-0.9989
1018	29	1327	Analysis GameStop s Reddit rally puts scrutiny on social media forums	null	0.9682
1019	29	1207	Elon Musk and Ray Dalio Send Bitcoin Stocks Soaring	null	0.9985
1020	29	1147	Short selling What it is why it s risky and how the squeeze happens	null	-0.9413
1021	29	1267	US stocks suffer worst week since October amid Reddit fueled trading craze	null	-0.9906
1022	29	1207	GLOBAL MARKETS Dollar stocks slide as virus social trading cools sentiment	null	-0.9970
1023	29	967	GLOBAL MARKETS Dollar stocks slide as virus social trading cools sentiment	null	-0.9970
1024	29	967	5 best stock trading apps for iPhone 9to5Mac	null	0.6369
1025	29	1027	Robinhood restricts instant buying of crypto citing extraordinary market conditions	null	0.9136
1026	29	847	Here s why Elon Musk s simple Twitter bio change rocketed Bitcoin up 18 CryptoSlate	null	0.7906
1027	29	787	Jon Stewart gets a warm welcome on Twitter after joining to defend Reddit traders	null	0.5994
1028	29	727	Far right extremists use GameStop chaos to radicalize and recruit on Telegram	null	-0.5719
1029	29	131	WallStreetsBets craze pushes dogecoin up 5x in 24 hours	null	0.7506
1030	29	660	Elon Musk changes Twitter bio to bitcoin chaos ensues	null	-0.5719
1031	29	586	Bitcoin soars 11 after Elon Musk namecheck on Twitter Reuters	null	0.9985
1032	29	1095	Bitcoin soars 14 on Musk namecheck on Twitter Reuters	null	0.9985
1033	29	569	Bitcoin soars 11 after Elon Musk namecheck on Twitter Reuters	null	0.9985
1034	29	1223	Dogecoin jumps more than 300 as Reddit tries to take on Wall Street CNET	null	0.9970
1035	30	247	Meme Based Cryptocurrency Dogecoin Surges 822 to Record High	null	0.9682
1036	29	1309	Analysis GameStop s Reddit rally puts scrutiny on social media forums Reuters	null	0.9682
1037	30	704	India plans to introduce law to ban Bitcoin other private cryptocurrencies	null	-0.5574
1038	29	1184	Two Bars for Bitcoins Owner in New York s Hell s Kitchen Selling Out for Cryptocurrency	null	-0.9618
1039	29	1244	Dogecoin jumps more than 300 as Reddit tries to take on Wall Street	null	0.9970
1040	29	1124	India Would Ban Private Cryptocurrencies Under Proposed Legislation CoinDesk	null	-0.5574
1041	29	1124	Robinhood Halts Instant Buying Power For Crypto	null	0.9325
1042	29	1304	Bitcoin s spike drives rebound in hard hit crypto mining stocks	null	0.9810
1043	30	44	GMI Model Estimates Bitcoin Fair Value At 300K By October 2021	null	0.5719
1044	29	1304	What is Dogecoin and Why Are People Buying It	null	0.9325
1045	29	1124	Two bars for bitcoins owner in New York s Hell s Kitchen selling out for cryptocurrency	null	-0.9618
1046	29	1424	Robinhood users are furious that it intervened in GameStop trading This map reveals where they are	null	-0.5719
1047	29	1184	Two bars for bitcoins owner in New York s Hell s Kitchen selling out for cryptocurrency	null	-0.9618
1048	29	1124	CORRECTED Two bars for bitcoins owner in New York s Hell s Kitchen selling out for cryptocurrency	null	-0.9618
1049	30	284	Litecoin Falls 11 39 In Selloff	null	-0.9997
1050	30	284	XRP Soars 30 63 In Rally By Investing com	null	0.9990
1051	30	284	Litecoin Falls 11 39 In Selloff By Investing com	null	-0.9997
1052	30	284	XRP Climbs 10 65 In Rally By Investing com	null	0.9682
1053	30	404	India Plans to Introduce Legislation to Ban Cryptocurrencies	null	-0.5574
1054	30	284	XRP Climbs 10 65 In Bullish Trade	null	0.9970
1055	29	1124	Ray Dalio clarifies his position on Bitcoin saying he greatly admires it CryptoSlate	null	0.5709
1056	29	1304	Analysis GameStop s Reddit rally puts scrutiny on social media forums	null	0.9682
1057	29	1184	KDKA Investigates Financial Advisors Explain Dangers Of Treating Buying Stocks Like Sports Gambling	null	0.9231
1058	29	1124	India Would Ban Private Cryptocurrencies Under Proposed Legislation	null	-0.5574
1059	29	1184	Everything we know about the GameStop stock insanity	null	-0.5719
1060	30	284	Bitcoin Falls 10 22 In Rout	null	-0.9993
1061	30	980	Robinhood restricts Instant Buying of crypto citing extraordinary market conditions	null	0.9136
1062	29	1424	Robinhood users are furious that it intervened in GameStop trading This map reveals where they are	null	-0.5719
1064	30	644	5 Awful Stocks Robinhood Investors Can t Stop Buying	null	0.8689
1065	30	344	These 3 Red Hot Stocks Could Plunge More than 50 If Wall Street s Right	null	-0.9988
1066	30	344	These 3 Red Hot Stocks Could Plunge More than 50 If Wall Street s Right The Motley Fool	null	-0.9989
1067	30	344	Fun and GameStop National Review	null	0.5106
1068	30	344	Fun and GameStop	null	0.5106
1069	29	1244	Analysis GameStop s Reddit rally puts scrutiny on social media forums	null	0.9682
1070	29	1424	After a tumultuous week some fear Robinhood s actions set a horrible precedent	null	-0.7717
1071	29	1424	After a tumultuous week some fear Robinhood s actions set a horrible precedent	null	-0.7717
1072	29	1244	Bitcoin Soars After Tesla CEO Elon Musk Says This 1 Word on Twitter	null	0.9985
1073	29	1304	US stocks suffer worst week since October amid Reddit fueled trading craze	null	-0.9906
1074	29	1244	GLOBAL MARKETS Dollar stocks slide as virus social trading cools sentiment	null	-0.9970
1075	29	1064	Downtown Weatherford building damaged after man crashes into it officials say	null	-0.9993
1076	30	980	Robinhood restricts instant buying of crypto citing extraordinary market conditions	null	0.9136
1077	29	1184	Govt may introduce bill to ban control and regulate cryptocurrencies	null	-0.5574
1078	30	164	Analysis GameStop s Reddit rally puts scrutiny on social media forums	null	0.9682
1079	29	1184	Elon Musk and Ray Dalio Send Bitcoin Stocks Soaring	null	0.9985
1080	29	1184	Elon Musk and Ray Dalio Send Bitcoin Stocks Soaring The Motley Fool	null	0.9984
1081	29	1304	Analysis GameStop s Reddit rally puts scrutiny on social media forums	null	0.9682
1082	29	1304	Analysis GameStop s Reddit rally puts scrutiny on social media forums	null	0.9682
1083	29	1304	Analysis GameStop s Reddit Rally Puts Scrutiny on Social Media Forums	null	0.9682
1084	29	1364	Dogecoin soars another 600 as Reddit frenzy pushes the token into the top 10 cryptocurrencies by	null	0.9985
1085	29	1304	Ethereum Price Prediction ETH on the verge of a 30 breakout towards 1 900	null	0.9325
1086	29	1184	Short selling What it is why it s risky and how the squeeze happens	null	-0.9413
1087	30	692	India plans to introduce law to ban Bitcoin other private cryptocurrencies	null	-0.5574
1088	29	131	WallStreetsBets craze pushes dogecoin up 5x in 24 hours	null	0.7506
1089	29	660	Elon Musk changes Twitter bio to bitcoin chaos ensues	null	-0.5719
1090	29	586	Bitcoin soars 11 after Elon Musk namecheck on Twitter Reuters	null	0.9985
1091	29	1095	Bitcoin soars 14 on Musk namecheck on Twitter Reuters	null	0.9985
1092	29	569	Bitcoin soars 11 after Elon Musk namecheck on Twitter Reuters	null	0.9985
1093	29	1223	Dogecoin jumps more than 300 as Reddit tries to take on Wall Street CNET	null	0.9970
1094	30	247	Meme Based Cryptocurrency Dogecoin Surges 822 to Record High	null	0.9682
1095	29	1309	Analysis GameStop s Reddit rally puts scrutiny on social media forums Reuters	null	0.9682
1096	30	724	India plans to introduce law to ban Bitcoin other private cryptocurrencies	null	-0.5574
1097	29	1144	Two Bars for Bitcoins Owner in New York s Hell s Kitchen Selling Out for Cryptocurrency	null	-0.9618
1098	29	1204	Dogecoin jumps more than 300 as Reddit tries to take on Wall Street	null	0.9970
1099	29	1144	India Would Ban Private Cryptocurrencies Under Proposed Legislation CoinDesk	null	-0.5574
1100	29	1324	Bitcoin s spike drives rebound in hard hit crypto mining stocks	null	0.9810
1101	30	64	GMI Model Estimates Bitcoin Fair Value At 300K By October 2021	null	0.5719
1102	29	1204	Two bars for bitcoins owner in New York s Hell s Kitchen selling out for cryptocurrency	null	-0.9618
1103	29	1144	Two bars for bitcoins owner in New York s Hell s Kitchen selling out for cryptocurrency	null	-0.9618
1104	29	1144	Two bars for bitcoins owner in New York s Hell s Kitchen selling out for cryptocurrency	null	-0.9618
1105	29	1084	Robinhood Halts Instant Buying Power For Crypto	null	0.9325
1106	29	1144	Two bars for bitcoins owner in New York s Hell s Kitchen selling out for cryptocurrency	null	-0.9618
1107	29	1144	Two bars for bitcoins owner in New York s Hell s Kitchen selling out for cryptocurrency	null	-0.9618
1108	30	304	XRP Jumps 20 32 In Rally By Investing com	null	0.9982
1109	30	304	XRP Climbs 10 65 In Rally By Investing com	null	0.9682
1110	30	304	Litecoin Falls 11 39 In Selloff By Investing com	null	-0.9997
1111	30	1000	Robinhood restricts Instant Buying of crypto citing extraordinary market conditions	null	0.9136
1112	29	1084	Bitcoin soars 14 on Musk namecheck on Twitter	null	0.9985
1113	30	304	XRP Soars 30 63 In Rally By Investing com	null	0.9990
1114	30	1000	Tron Ticker Confusion Would Be TRX Crypto Investors Mistakenly Buy Tanzanian Gold TRX Stock	null	-0.5267
1115	29	1384	180M Bitcoin Trust Completes Canadian IPO Fully Invested on First Day CoinDesk	null	0.5106
1116	30	4	Robinhood users are furious that it intervened in GameStop trading This map reveals where they are	null	-0.5719
1117	29	1384	180M Bitcoin Trust Completes Canadian IPO Fully Invested on First Day	null	0.5106
1118	29	1324	Analysis GameStop s Reddit rally puts scrutiny on social media forums	null	0.9682
1119	29	1084	India Would Ban Private Cryptocurrencies Under Proposed Legislation	null	-0.5574
1120	30	4	Robinhood users are furious that it intervened in GameStop trading This map reveals where they are	null	-0.5719
1121	30	304	Litecoin Falls 11 39 In Selloff	null	-0.9997
1122	30	304	XRP Climbs 10 65 In Bullish Trade	null	0.9970
1123	30	424	India Plans to Introduce Legislation to Ban Cryptocurrencies	null	-0.5574
1124	30	304	Bitcoin Falls 10 22 In Rout	null	-0.9993
1125	30	1000	Robinhood restricts Instant Buying of crypto citing extraordinary market conditions	null	0.9136
1126	29	1084	Ray Dalio clarifies his position on Bitcoin saying he greatly admires it CryptoSlate	null	0.5709
1127	29	1204	KDKA Investigates Financial Advisors Explain Dangers Of Treating Buying Stocks Like Sports Gambling	null	0.9231
1128	29	1204	Everything we know about the GameStop stock insanity	null	-0.5719
1129	30	784	9 great reads from CNET this week	null	0.6249
1130	30	664	5 Awful Stocks Robinhood Investors Can t Stop Buying	null	0.8689
1131	30	304	These 3 Red Hot Stocks Could Plunge More than 50 If Wall Street s Right The Motley Fool	null	-0.9989
1132	29	1204	Elon Musk and Ray Dalio Send Bitcoin Stocks Soaring	null	0.9985
1133	30	304	Fun and GameStop	null	0.5106
1134	29	1204	Elon Musk and Ray Dalio Send Bitcoin Stocks Soaring The Motley Fool	null	0.9984
1135	29	1324	Analysis GameStop s Reddit rally puts scrutiny on social media forums	null	0.9682
1136	29	1264	Analysis GameStop s Reddit rally puts scrutiny on social media forums	null	0.9682
1137	30	4	After a tumultuous week some fear Robinhood s actions set a horrible precedent	null	-0.7717
1138	29	1264	Bitcoin Soars After Tesla CEO Elon Musk Says This 1 Word on Twitter The Motley Fool	null	0.9984
1139	29	1264	US stocks suffer worst week since October amid Reddit fueled trading craze	null	-0.9906
1140	29	1204	GLOBAL MARKETS Dollar stocks slide as virus social trading cools sentiment	null	-0.9970
1141	29	1084	Downtown Weatherford building damaged after man crashes into it officials say	null	-0.9993
1142	29	1204	Govt may introduce bill to ban control and regulate cryptocurrencies	null	-0.5574
1143	30	664	5 Awful Stocks Robinhood Investors Can t Stop Buying The Motley Fool	null	0.7845
1144	30	304	These 3 Red Hot Stocks Could Plunge More than 50 If Wall Street s Right	null	-0.9988
1145	30	124	Analysis GameStop s Reddit rally puts scrutiny on social media forums	null	0.9682
1146	30	304	Fun and GameStop National Review	null	0.5106
1147	29	1324	Analysis GameStop s Reddit rally puts scrutiny on social media forums	null	0.9682
1148	29	1324	Analysis GameStop s Reddit rally puts scrutiny on social media forums	null	0.9682
1149	29	1384	Dogecoin soars another 600 as Reddit frenzy pushes the token into the top 10 cryptocurrencies by	null	0.9985
1150	29	1264	Ethereum Price Prediction ETH on the verge of a 30 breakout towards 1 900	null	0.9325
1151	30	692	India plans to introduce law to ban Bitcoin other private cryptocurrencies	null	-0.5574
1152	29	131	WallStreetsBets craze pushes dogecoin up 5x in 24 hours	null	0.7506
1153	29	660	Elon Musk changes Twitter bio to bitcoin chaos ensues	null	-0.5719
1154	29	586	Bitcoin soars 11 after Elon Musk namecheck on Twitter Reuters	null	0.9985
1155	29	1095	Bitcoin soars 14 on Musk namecheck on Twitter Reuters	null	0.9985
1156	29	569	Bitcoin soars 11 after Elon Musk namecheck on Twitter Reuters	null	0.9985
1157	29	1223	Dogecoin jumps more than 300 as Reddit tries to take on Wall Street CNET	null	0.9970
1158	30	247	Meme Based Cryptocurrency Dogecoin Surges 822 to Record High	null	0.9682
1159	29	1309	Analysis GameStop s Reddit rally puts scrutiny on social media forums Reuters	null	0.9682
1160	30	724	India plans to introduce law to ban Bitcoin other private cryptocurrencies	null	-0.5574
1161	29	1144	Two Bars for Bitcoins Owner in New York s Hell s Kitchen Selling Out for Cryptocurrency	null	-0.9618
1162	29	1204	Dogecoin jumps more than 300 as Reddit tries to take on Wall Street	null	0.9970
1163	29	1144	India Would Ban Private Cryptocurrencies Under Proposed Legislation CoinDesk	null	-0.5574
1164	29	1324	Bitcoin s spike drives rebound in hard hit crypto mining stocks	null	0.9810
1165	30	64	GMI Model Estimates Bitcoin Fair Value At 300K By October 2021	null	0.5719
1166	29	1204	Two bars for bitcoins owner in New York s Hell s Kitchen selling out for cryptocurrency	null	-0.9618
1167	29	1264	What is Dogecoin and Why Are People Buying It	null	0.9325
1168	29	1144	Two bars for bitcoins owner in New York s Hell s Kitchen selling out for cryptocurrency	null	-0.9618
1169	29	1144	Two bars for bitcoins owner in New York s Hell s Kitchen selling out for cryptocurrency	null	-0.9618
1170	29	1084	Robinhood Halts Instant Buying Power For Crypto	null	0.9325
1171	29	1144	Two bars for bitcoins owner in New York s Hell s Kitchen selling out for cryptocurrency	null	-0.9618
1172	29	1144	Two bars for bitcoins owner in New York s Hell s Kitchen selling out for cryptocurrency	null	-0.9618
1173	30	304	XRP Jumps 20 32 In Rally By Investing com	null	0.9982
1174	30	304	XRP Climbs 10 65 In Rally By Investing com	null	0.9682
1175	30	304	Litecoin Falls 11 39 In Selloff By Investing com	null	-0.9997
1176	30	1000	Robinhood restricts Instant Buying of crypto citing extraordinary market conditions	null	0.9136
1177	29	1084	Bitcoin soars 14 on Musk namecheck on Twitter	null	0.9985
1178	30	304	XRP Soars 30 63 In Rally By Investing com	null	0.9990
1179	30	1000	Tron Ticker Confusion Would Be TRX Crypto Investors Mistakenly Buy Tanzanian Gold TRX Stock	null	-0.5267
1180	29	1384	180M Bitcoin Trust Completes Canadian IPO Fully Invested on First Day CoinDesk	null	0.5106
1181	30	4	Robinhood users are furious that it intervened in GameStop trading This map reveals where they are	null	-0.5719
1182	29	1384	180M Bitcoin Trust Completes Canadian IPO Fully Invested on First Day	null	0.5106
1183	29	1324	Analysis GameStop s Reddit rally puts scrutiny on social media forums	null	0.9682
1184	29	1084	India Would Ban Private Cryptocurrencies Under Proposed Legislation	null	-0.5574
1185	30	4	Robinhood users are furious that it intervened in GameStop trading This map reveals where they are	null	-0.5719
1186	30	304	Litecoin Falls 11 39 In Selloff	null	-0.9997
1187	30	304	XRP Climbs 10 65 In Bullish Trade	null	0.9970
1188	30	424	India Plans to Introduce Legislation to Ban Cryptocurrencies	null	-0.5574
1189	30	304	Bitcoin Falls 10 22 In Rout	null	-0.9993
1190	30	1000	Robinhood restricts Instant Buying of crypto citing extraordinary market conditions	null	0.9136
1191	29	1084	Ray Dalio clarifies his position on Bitcoin saying he greatly admires it CryptoSlate	null	0.5709
1192	29	1204	KDKA Investigates Financial Advisors Explain Dangers Of Treating Buying Stocks Like Sports Gambling	null	0.9231
1193	29	1204	Everything we know about the GameStop stock insanity	null	-0.5719
1194	30	784	9 great reads from CNET this week	null	0.6249
1195	30	664	5 Awful Stocks Robinhood Investors Can t Stop Buying	null	0.8689
1196	30	304	These 3 Red Hot Stocks Could Plunge More than 50 If Wall Street s Right The Motley Fool	null	-0.9989
1197	29	1204	Elon Musk and Ray Dalio Send Bitcoin Stocks Soaring	null	0.9985
1199	29	1204	Elon Musk and Ray Dalio Send Bitcoin Stocks Soaring The Motley Fool	null	0.9984
1200	29	1324	Analysis GameStop s Reddit rally puts scrutiny on social media forums	null	0.9682
1201	29	1264	Analysis GameStop s Reddit rally puts scrutiny on social media forums	null	0.9682
1202	30	4	After a tumultuous week some fear Robinhood s actions set a horrible precedent	null	-0.7717
1203	29	1264	Bitcoin Soars After Tesla CEO Elon Musk Says This 1 Word on Twitter The Motley Fool	null	0.9984
1204	29	1264	US stocks suffer worst week since October amid Reddit fueled trading craze	null	-0.9906
1205	29	1204	GLOBAL MARKETS Dollar stocks slide as virus social trading cools sentiment	null	-0.9970
1206	29	1084	Downtown Weatherford building damaged after man crashes into it officials say	null	-0.9993
1207	29	1204	Govt may introduce bill to ban control and regulate cryptocurrencies	null	-0.5574
1208	30	664	5 Awful Stocks Robinhood Investors Can t Stop Buying The Motley Fool	null	0.7845
1209	30	304	These 3 Red Hot Stocks Could Plunge More than 50 If Wall Street s Right	null	-0.9988
1210	30	124	Analysis GameStop s Reddit rally puts scrutiny on social media forums	null	0.9682
1211	30	304	Fun and GameStop National Review	null	0.5106
1212	29	1324	Analysis GameStop s Reddit rally puts scrutiny on social media forums	null	0.9682
1213	29	1324	Analysis GameStop s Reddit rally puts scrutiny on social media forums	null	0.9682
1214	29	1384	Dogecoin soars another 600 as Reddit frenzy pushes the token into the top 10 cryptocurrencies by	null	0.9985
1215	29	1264	Ethereum Price Prediction ETH on the verge of a 30 breakout towards 1 900	null	0.9325
1216	30	692	India plans to introduce law to ban Bitcoin other private cryptocurrencies	null	-0.5574
1217	29	131	WallStreetsBets craze pushes dogecoin up 5x in 24 hours	null	0.7506
1218	29	660	Elon Musk changes Twitter bio to bitcoin chaos ensues	null	-0.5719
1219	29	586	Bitcoin soars 11 after Elon Musk namecheck on Twitter Reuters	null	0.9985
1220	29	1095	Bitcoin soars 14 on Musk namecheck on Twitter Reuters	null	0.9985
1221	29	569	Bitcoin soars 11 after Elon Musk namecheck on Twitter Reuters	null	0.9985
1222	29	1223	Dogecoin jumps more than 300 as Reddit tries to take on Wall Street CNET	null	0.9970
1223	30	247	Meme Based Cryptocurrency Dogecoin Surges 822 to Record High	null	0.9682
1224	29	1309	Analysis GameStop s Reddit rally puts scrutiny on social media forums Reuters	null	0.9682
1225	30	974	Dogecoin crashes as Reddit fuelled cryptocurrency joke falls flat	null	-0.9998
1226	30	674	India plans to introduce law to ban Bitcoin other private cryptocurrencies	null	-0.5574
1227	30	1094	India s Proposed Crypto Ban Has Investors Nervous May Feed Anti Bitcoin Narrative	null	-0.7906
1228	30	74	GMI Model Estimates Bitcoin Fair Value At 300K By October 2021	null	0.5719
1229	30	314	Litecoin Falls 11 39 In Selloff	null	-0.9997
1230	30	314	XRP Soars 30 63 In Rally By Investing com	null	0.9990
1231	30	314	XRP Jumps 20 32 In Rally By Investing com	null	0.9982
1232	30	314	XRP Climbs 10 65 In Rally By Investing com	null	0.9682
1233	30	314	Litecoin Falls 11 39 In Selloff By Investing com	null	-0.9997
1234	30	434	India Plans to Introduce Legislation to Ban Cryptocurrencies	null	-0.5574
1235	30	314	XRP Soars 31 In Rally By Investing com	null	0.9990
1236	29	1394	180M Bitcoin Trust Completes Canadian IPO Fully Invested on First Day CoinDesk	null	0.5106
1237	30	14	Robinhood users are furious that it intervened in GameStop trading This map reveals where they are	null	-0.5719
1238	29	1394	180M Bitcoin Trust Completes Canadian IPO Fully Invested on First Day	null	0.5106
1239	30	314	XRP Jumps 20 32 In Rally	null	0.9982
1240	30	314	Bitcoin Falls 10 22 In Rout	null	-0.9993
1241	30	314	XRP Climbs 10 65 In Bullish Trade	null	0.9970
1242	30	1034	FB Stock A Buy Facebook Crushes Q4 Earnings But Predicts High Opt Out Rates	null	0.9882
1243	30	794	9 great reads from CNET this week	null	0.6249
1244	30	674	5 Awful Stocks Robinhood Investors Can t Stop Buying The Motley Fool	null	0.7845
1245	30	314	These 3 Red Hot Stocks Could Plunge More than 50 If Wall Street s Right The Motley Fool	null	-0.9989
1246	30	314	Fun and GameStop	null	0.5106
1247	30	14	After a tumultuous week some fear Robinhood s actions set a horrible precedent	null	-0.7717
1248	30	1310	Dogecoin soars another 600 as Reddit frenzy pushes the token into the top 10 cryptocurrencies by	null	0.9985
1249	30	674	5 Awful Stocks Robinhood Investors Can t Stop Buying	null	0.8689
1250	30	314	These 3 Red Hot Stocks Could Plunge More than 50 If Wall Street s Right	null	-0.9988
1251	30	134	Analysis GameStop s Reddit rally puts scrutiny on social media forums	null	0.9682
1252	30	314	Fun and GameStop National Review	null	0.5106
1253	30	314	Bitcoin Market Looking for New Lows After Elon Musk s Pump Dump	null	-0.5267
1254	30	692	India plans to introduce law to ban Bitcoin other private cryptocurrencies	null	-0.5574
1255	29	131	WallStreetsBets craze pushes dogecoin up 5x in 24 hours	null	0.7506
1256	29	660	Elon Musk changes Twitter bio to bitcoin chaos ensues	null	-0.5719
1257	29	586	Bitcoin soars 11 after Elon Musk namecheck on Twitter Reuters	null	0.9985
1258	29	1095	Bitcoin soars 14 on Musk namecheck on Twitter Reuters	null	0.9985
1259	29	569	Bitcoin soars 11 after Elon Musk namecheck on Twitter Reuters	null	0.9985
1260	29	1223	Dogecoin jumps more than 300 as Reddit tries to take on Wall Street CNET	null	0.9970
1261	30	247	Meme Based Cryptocurrency Dogecoin Surges 822 to Record High	null	0.9682
1262	30	1271	Reddit Frenzy Pumps Up Dogecoin A Cryptocurrency Started As A Joke	null	0.7845
1263	29	1309	Analysis GameStop s Reddit rally puts scrutiny on social media forums Reuters	null	0.9682
1264	30	980	Dogecoin crashes as Reddit fuelled cryptocurrency joke falls flat	null	-0.9998
1265	30	1100	India s Proposed Crypto Ban Has Investors Nervous May Feed Anti Bitcoin Narrative	null	-0.7906
1266	30	1160	Dogecoin crashes as Reddit fuelled cryptocurrency joke falls flat	null	-0.9998
1267	30	1100	India s Proposed Crypto Ban Has Investors Nervous May Feed Anti Bitcoin Narrative CoinDesk	null	-0.7906
1268	31	740	Two bars for bitcoins owner in New York s Hell s Kitchen selling out for cryptocurrency amNewYork	null	-0.9618
1269	31	320	XRP Climbs 52 49 In Bullish Trade By Investing com	null	0.9970
1270	31	80	EOS Climbs 10 In Bullish Trade By Investing com	null	0.9970
1271	30	1160	XRP price gains 86 after Wall Street Bets crypto wing says pump it	null	0.9786
1272	30	1280	Judge Rejects Virgil Griffith s Motion to Dismiss Charges of Aiding North Korea	null	-0.6486
1273	31	320	EOS Climbs 10 07 In Bullish Trade	null	0.9970
1274	31	80	EOS Climbs 10 07 In Rally By Investing com	null	0.9682
1275	31	800	Robinhood Is a Perfect Example of Fintech s Insidious Power	null	0.5719
1276	31	560	What you need to know on the markets this week Eat the rich Robinhood s reckoning after	null	0.5574
1277	31	200	Analysts say Bitcoin could pop back up after accumulation CryptoSlate	null	0.7906
1278	30	1040	FB Stock A Buy Facebook Crushes Q4 Earnings But Predicts High Opt Out Rates	null	0.9882
1279	31	800	What shares were hot in the last week GameStop AMC Entertainment and more Investing com UK	null	0.6124
1280	30	692	India plans to introduce law to ban Bitcoin other private cryptocurrencies	null	-0.5574
1281	30	247	Meme Based Cryptocurrency Dogecoin Surges 822 to Record High	null	0.9682
1282	30	1271	Reddit Frenzy Pumps Up Dogecoin A Cryptocurrency Started As A Joke	null	0.7845
1283	30	351	FAA is Investigating SpaceX Over Launch License Violations During the Explosive Starship Test	null	-0.5267
1284	31	651	After Massive Dogecoin Crash Ripple s XRP Has Suddenly Rocketed Higher In WallStreetBets Price Surge	null	-0.9993
1285	30	751	Government plans to introduce legislation to ban cryptocurrencies	null	-0.5574
1286	30	357	Government to introduce bills to set up DFI Digital Currency	null	0.7906
1287	31	784	iPhone taken in crime spree and more Capitol rioters arrested in the Apple Crime Blotter	null	-0.8850
1288	30	332	These 3 Red Hot Stocks Could Plunge More than 50 If Wall Street s Right	null	-0.9988
1289	30	1091	India s Proposed Ban of Private Cryptos Has Many of the Nation s Investors Nervous	null	-0.6908
1290	30	994	Dogecoin crashes as Reddit fuelled cryptocurrency joke falls flat	null	-0.9998
1291	30	1293	Judge Rejects Virgil Griffith s Motion to Dismiss Charges of Aiding North Korea	null	-0.6486
1292	32	608	XRP Erases SEC Led Drop as Supporters Pump Price Over 0 60	null	-0.9968
1293	31	1195	XRP Posted Biggest Single Day Gain in 3 Years in a Coordinated Buying Attack	null	0.9905
1294	32	535	A Good Thing Elon Musk Says He s a Supporter of Bitcoin	null	0.6124
1295	31	1015	Dogecoin Caught Up In Reddit Frenzy Remains Low After Rally	null	0.6908
1296	31	715	The 4 Most Dangerous Bitcoin Stocks	null	-0.5256
1297	32	535	A Good Thing Elon Musk Says He s a Supporter of Bitcoin CoinDesk	null	0.6124
1298	32	475	India proposes law to ban cryptocurrencies CyberNews	null	-0.5574
1299	32	295	EOS Climbs 10 27 In Bullish Trade	null	0.9970
1300	32	295	XRP Soars 30 09 In Rally By Investing com	null	0.9990
1301	32	295	EOS Climbs 10 As Investors Gain Confidence By Investing com	null	0.9853
1302	31	1075	Indian government looking to crack down on crypto scams with proposed ban Cashaa CEO	null	-0.8126
1303	31	715	Stellar Lumens Is Worth Keeping An Eye On As Scarcity Should Drive Value	null	0.5106
1304	32	295	XRP Soars 30 In Rally By Investing com	null	0.9990
1305	32	295	XRP Soars 30 09 In Rally	null	0.9990
1306	31	955	Redditors rally as Dogecoin halves in value following a sevenfold surge last week	null	0.9732
1307	31	715	Two bars for bitcoins owner in New York s Hell s Kitchen selling out for cryptocurrency amNewYork	null	-0.9618
1308	31	1255	Bitcoin Bears Erase the Elon Musk Candle as Sellers Take Control	null	-0.9325
1309	32	475	Robinhood boss promises Elon Musk he ll relax GameStop limits live updates	null	0.6705
1310	31	1135	Bitcoin Falls Back to 32K as Elon Musk s Bio Change Fades Into Memory	null	-0.9993
1311	32	115	85 Dogecoin rally shows Wall Street Bets aren t done with DOGE yet	null	0.9682
1312	31	715	The 4 Most Dangerous Bitcoin Stocks The Motley Fool	null	-0.7425
1313	31	1195	XRP Posted Biggest Single Day Gain in 3 Years in a Coordinated Buying Attack CoinDesk	null	0.9905
1314	31	1015	Dogecoin Caught Up In Reddit Frenzy Remains Low After Rally	null	0.6908
1315	32	535	UK Research and Innovation suffers ransomware attack ZDNet	null	-0.5574
1316	32	295	Will GameStop and Reddit Hurt My 401 k	null	-0.5267
1317	32	115	Hedge fund Melvin Capital loses 7bn on GameStop frenzy	null	-0.5574
1318	32	115	Hedge fund Melvin Capital loses 7bn on GameStop frenzy	null	-0.5574
1319	31	775	MARK TO MARKET Hold on tight Bitcoin rally 2 0	null	0.9682
1320	31	1195	Why Did Twitch Ban the Pogchamp Emote	null	-0.5574
1321	31	1195	Robinhood boss shuts down Elon Musk s GameStop conspiracy theories live updates	null	-0.5267
1322	31	1075	Robinhood Is a Perfect Example of Fintech s Insidious Power	null	0.5719
1323	32	295	Switzerland s Crypto Broker AG Wins Securities House License From FINMA	null	0.7096
1324	32	295	Switzerland s Crypto Broker AG Wins Securities House License From FINMA CoinDesk	null	0.7096
1325	31	955	Mets owner Steve Cohen deletes Twitter after family receives threats amid stock market turmoil	null	-0.6486
1326	31	955	Mets owner Steve Cohen deletes Twitter after family receives threats amid stock market turmoil	null	-0.6486
1327	31	955	Mets owner Steve Cohen deletes Twitter after family receives threats amid stock market turmoil	null	-0.6486
1328	32	295	A Rally in Bitcoin Sparked by Elon Musk Has Almost Evaporated	null	0.9682
1329	31	1135	Bitcoin Falls Back to 32K as Elon Musk s Bio Change Fades Into Memory CoinDesk	null	-0.9993
1330	31	1015	Fed s Powell just talked up a classic Buffett market bogeyman Inflation	null	0.7906
1331	31	955	What you need to know on the markets this week Eat the rich Robinhood s reckoning after	null	0.5574
1332	31	895	What shares were hot in the last week GameStop AMC Entertainment and more Investing com UK	null	0.6124
1333	30	692	India plans to introduce law to ban Bitcoin other private cryptocurrencies	null	-0.5574
1334	30	247	Meme Based Cryptocurrency Dogecoin Surges 822 to Record High	null	0.9682
1335	30	1271	Reddit Frenzy Pumps Up Dogecoin A Cryptocurrency Started As A Joke	null	0.7845
1336	30	351	FAA is Investigating SpaceX Over Launch License Violations During the Explosive Starship Test	null	-0.5267
1337	31	651	After Massive Dogecoin Crash Ripple s XRP Has Suddenly Rocketed Higher In WallStreetBets Price Surge	null	-0.9993
1338	30	751	Government plans to introduce legislation to ban cryptocurrencies	null	-0.5574
1339	30	357	Government to introduce bills to set up DFI Digital Currency	null	0.7906
1340	31	784	iPhone taken in crime spree and more Capitol rioters arrested in the Apple Crime Blotter	null	-0.8850
1341	30	332	These 3 Red Hot Stocks Could Plunge More than 50 If Wall Street s Right	null	-0.9988
1342	30	1091	India s Proposed Ban of Private Cryptos Has Many of the Nation s Investors Nervous	null	-0.6908
1343	30	994	Dogecoin crashes as Reddit fuelled cryptocurrency joke falls flat	null	-0.9998
1344	32	844	XRP Pump Fails to Materialize as Price Crashes 40 From Day s High	null	-0.9990
1345	33	4	Steven Seagal a Missing Private Eye and an Alleged Crypto Fraud	null	-0.7184
1346	33	580	XRP Erases SEC Led Drop as Supporters Pump Price Over 0 60	null	-0.9968
1347	32	784	XRP soars as much as 50 and Dogecoin jumps as day traders flex their muscles and Elon Musk adds to	null	0.9995
1348	33	4	Sham crypto exec who partnered with Steven Seagal busted for investor fraud	null	-0.5859
1349	33	304	XRP Plunges 30 91 In Bearish Trade By Investing com	null	-0.9997
1350	32	1264	Here s What The World s Richest Person Thinks About Bitcoin	null	0.5267
1351	33	304	XRP Plunges 30 91 In Bearish Trade	null	-0.9997
1352	33	304	XRP Plunges 31 In Bearish Trade By Investing com	null	-0.9997
1353	32	1324	Feds arrest crypto fraudster accusing of bilking investors out of millions	null	-0.7650
1354	33	124	Santa Ana man accused of connection to 11 million securities fraud	null	-0.5859
1355	33	580	XRP Erases SEC Led Drop as Supporters Pump Price Over 0 60 CoinDesk	null	-0.9968
1356	33	184	Santa Ana Man Charged in NY With Cryptocurrency Scam MyNewsLA com	null	-0.6705
1357	32	1084	How risky is Ripple s XRP The dangers of buying the cryptocurrency explained	null	0.8750
1358	32	664	Bitcoin Posts Comeback Rally on Elon Musk Comment Analyst Sees ATH	null	0.9682
1359	33	580	Cryptocurrencies Like Bitcoin Are Far From Safe Investments	null	0.6597
1360	32	844	Reddit rage as XRP price crashes 50 hours after hitting two week highs	null	-0.9993
1361	32	1324	Feds arrest crypto fraudster accusing of bilking investors out of millions	null	-0.7650
1362	32	1324	Feds arrest crypto fraudster accusing of bilking investors out of millions	null	-0.7650
1363	33	64	California man charged in 11 million cryptocurrency fraud that bilked New Yorkers sources and	null	-0.6808
1364	32	784	Dogecoin Price Up 37 After Weekend Plunge Bullish Push From Reddit Group Expected	null	-0.9882
1365	32	1024	Two Main Reasons for HSBT Hits a Record High	null	0.9682
1366	32	724	Top 3 Price Prediction Bitcoin Ethereum Ripple XRP pumps towards 1 as the Bitcoin rally cools	null	0.9712
1367	32	844	XRP Pump Fails to Materialize as Price Crashes 40 From Day s High CoinDesk	null	-0.9990
1368	32	664	US Man Pleads Guilty to Money Laundering Charges Involving 13M in Bitcoin	null	-0.5994
1369	32	664	US Man Pleads Guilty to Money Laundering Charges Involving 13M in Bitcoin CoinDesk	null	-0.5994
1370	32	1324	Bitcoin price is sideways silver hits a 7 year high and XRP s rally pops	null	0.9918
1371	33	4	CryptoQuant CEO says Coinbase Bitcoin outflows are a bullish signal	null	0.9970
1372	32	904	Grayscale Reopens Its Ethereum Trust to Investors	null	0.5106
1373	32	664	Elon Musk says he s a supporter of bitcoin and thinks it will get broad acceptance in finance	null	0.6249
1374	33	364	Man wanted in Carlos Ghosn s escape accuses US of betrayal WTOP	null	-0.6705
1375	33	544	Former Green Beret wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
1376	33	424	On chain metrics reveal buying power ready to flow into Bitcoin for the ultimate push to 50 000	null	0.9477
1377	33	304	Former Green Beret wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
1378	33	64	Man wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
1379	33	64	Man wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
1380	32	1324	Man wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
1381	32	1324	Man wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
1382	32	1324	Man wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
1383	32	1324	Man wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
1384	32	1324	Man wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
1385	32	1324	Man wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
1386	32	1324	Man wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
1387	32	1324	Man wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
1388	32	1324	Man wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
1389	32	1324	Man wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
1390	32	1324	Man wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
1391	32	1324	Man wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
1392	32	1324	Man wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
1393	32	1324	Man wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
1394	32	1324	Man wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
1395	32	1324	Man wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
1396	32	1324	Man wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
1397	32	1324	Man wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
1398	32	1324	Man wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
1399	32	1204	WhatsApp Assures Users of Its Commitment to Your Privacy	null	0.5994
1400	32	1144	Man wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
1401	32	1084	Mark Cuban How selling stamps as a kid helped me see why digital assets are the future of business	null	-0.9231
1402	32	964	Shares of audio technology company Agora soar as investors try to jump on Clubhouse app s growth	null	0.5859
1403	32	964	Leaving Robinhood Here s Are 5 Robinhood Alternatives for Frustrated Reddit Investors	null	-0.5267
1404	32	904	Bitcoin bounces back as main street invades Wall Street	null	0.9818
1405	32	904	Grayscale Reopens Its Ethereum Trust to Investors CoinDesk	null	0.5106
1406	33	184	Man wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
1407	33	184	Man wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
1408	33	64	Man wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
1409	33	64	Man wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
1410	33	64	Man Wanted in Carlos Ghosn s Escape Accuses US of Betrayal	null	-0.6705
1411	33	4	MONEY MONDAY The Gamestop stock fiasco explained	null	-0.5106
1412	33	4	Former Green Beret accuses US of betrayal for OK ing extradition to Japan in smuggling case	null	-0.7482
1413	32	1324	Man wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
1414	32	1324	Man wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
1415	32	1324	Man wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
1416	32	1324	Man wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
1417	32	1324	Man wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
1418	32	1324	Man wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
1419	32	1324	Man wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
1420	32	1324	Man wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
1421	32	1324	Man wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
1422	32	1324	Man wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
1423	32	1324	Man wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
1424	32	1324	Man wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
1425	32	724	Why the Bitcoin price dropped immediately after Musk s positive comments CryptoSlate	null	0.5574
1426	32	1324	Man wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
1427	32	1324	Man wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
1428	32	1324	Man wanted in Carlos Ghosn s escape accuses US of betrayal	null	-0.6705
1429	32	974	How a Series of Elon Musk Tweets Helped Lead Investors to Dogecoin a Meme Inspired Cryptocurrency Worth 4 Cents	null	0.6249
1430	32	384	Indian gov t proposes to ban private cryptocurrency	null	-0.5574
1431	32	120	India plans national digital currency plus a ban on private crypto cash	null	-0.5574
1432	32	363	India Wants to Ban Bitcoin and Other Private Cryptocurrencies	null	-0.5574
1433	32	867	XRP Pump Fails to Materialize as Price Crashes 40 From Day s High	null	-0.9990
1434	32	605	XRP Erases SEC Led Drop as Supporters Pump Price Over 0 60	null	-0.9968
1435	32	550	A Good Thing Elon Musk Says He s a Supporter of Bitcoin	null	0.6124
1436	35	1310	Market Wrap Bitcoin Drops to 36 3K as DeFi Jumps to 32B on Ether FOMO	null	0.9970
1437	35	950	Cryptocurrency live Latest as Dogecoin rockets up on Elon Musk Twitter endorsement	null	0.8519
1438	35	1010	What is dogecoin Elon Musk has sent the meme cryptocurrency soaring	null	0.9985
1439	36	590	Twitter s Jack Dorsey has fired up a full Bitcoin node	null	0.5267
1440	36	50	Bitcoin Price Closing Above This Hurdle Sends Bulls Off To The Races	null	0.9325
1441	35	950	Bitcoin Buying Will Rise This Year Says Survey ETF Trends	null	0.9918
1442	36	290	It s the perfect time to own Bitcoin says City fund manager	null	0.5719
1443	35	1070	Blockchain Bites The Rise of the Bitcoin Investment Fund CoinDesk	null	0.9818
1444	35	890	Sweet Launches Broad Scale NFT Solution For Leading Entertainment And Consumer Brands In Partnership	null	0.7964
1445	35	1250	Institutional Buyers the Likely Suspect Behind Latest Bitcoin Rally What s Next	null	0.9628
1446	35	1310	Market Wrap Bitcoin Drops to 36 3K as DeFi Jumps to 32B on Ether FOMO CoinDesk	null	0.9970
1447	36	650	Twitter CEO Jack Dorsey Has Set up His Own Bitcoin Node	null	0.7906
1448	35	830	Top 3 Price Prediction Bitcoin Ethereum Ripple Bitcoin on the launchpad to 40 000 as ETH rally	null	0.9712
1449	36	746	Dogecoin soars 50 after Elon Musk praises Bitcoin rival as the people s crypto	null	0.9986
1450	35	1010	Tom Lee gives the long term bullish case for bitcoin and why it s better than gold	null	0.9972
1451	35	890	Sweet Launches Broad Scale NFT Solution for Leading Entertainment and Consumer Brands in Partnership	null	0.7964
1452	35	950	Sweet launches broad scale NFT solution in partnership with Bitcoin com	null	0.6486
1453	36	746	Forget Bitcoin Inside the insane world of altcoin cryptocurrency trading	null	-0.5574
1454	35	830	Bitcoin Rally Continues But Lacks Confirmation	null	0.9682
1455	35	1130	Discord servers targeted in cryptocurrency exchange scam wave ZDNet	null	-0.7506
1456	36	650	3 Catalysts That Propelled Cardano ADA to Its Three Year High	null	0.9682
1457	36	590	Elon Musk s Dogecoin Tweets Worry Crypto Community Situation Seriously Damaging	null	-0.7845
1458	35	1130	The Rise and Fall of Bitcoin Billionaire Arthur Hayes	null	0.9818
1459	36	746	Is ether or elon musk pulling the crypto market up	null	0.7906
1460	35	890	Ethereum catapults to new all time high past 1 600 as investors pile in ahead of next week s launch	null	0.9682
1461	35	1010	What is dogecoin Elon Musk has sent the meme cryptocurrency soaring	null	0.9985
1462	35	950	Croatia s Tifon Gas Stations Hope to Tap Tourist Trade With Crypto Payment Support	null	0.6808
1463	36	746	Musk backs dogecoin Apple car euro slide continues BOE oil rises gold falls on strong dollar	null	-0.9997
1464	35	1130	Book publishers scramble to sign Reddit rally authors	null	0.9682
1465	35	1070	Elon Musk gets back on Twitter sends Dogecoin soaring	null	0.9985
1466	35	830	Musk backs dogecoin Apple car euro slide continues BOE oil rises gold falls on strong dollar	null	-0.9997
1467	36	290	Musk Helps Crypto Market Value Climb to Record in Volatile Week	null	0.9001
1468	35	1070	Super Bowl LV HODL Or Bet	null	0.9619
1469	36	350	Crypto escrow agent dodges jail after lying over stolen millions	null	-0.7650
1470	36	530	Crypto Hedge Fund Founder Pleads Guilty to 90M Fraud CoinDesk	null	-0.7650
1471	35	1430	PayPal is aiming to become a financial super app Silicon Valley Business Journal	null	0.5994
1472	36	590	Robinhood lifts trading restrictions on Reddit darlings GameStop and AMC days after relaxing limits	null	0.7506
1473	36	530	Online Casino with The Best Reward Program EconoTimes	null	0.8360
1474	35	1370	Yearn Finance DAI Vault Has Suffered an Exploit 13 8M Drained CoinDesk	null	-0.7269
1475	35	1370	Online Super Bowl Bets Expected to Increase 63 This Year	null	0.7351
1476	35	1070	Instagram Unmasks High Profile OG Account Stealers Threatens to Sue	null	0.9451
1477	35	1070	Dogecoin goes up over 40 after Elon Musk Mark Cuban tweet about it	null	0.7906
1478	35	1010	Elon Musk Sent The Price Of Dogecoin Soaring With One Word Tweet	null	0.9985
1479	35	950	Crypto Is the Libertarian Cheat Code in the Final Battle Over State Coercion	null	-0.5719
1480	35	890	Sandstorm Gold briefly spikes 55 after Elon Musk praises a techno song with a similar name on	null	0.5267
1481	35	1070	Dogecoin goes up over 40 after Elon Musk Mark Cuban tweet about it	null	0.7906
1482	35	830	PayPal PYPL Soars 6 After Profit Triples Firms Raise Numbers and PTs Amid Super App	null	0.9987
1483	35	830	Ethereum Triangle Breakout Shifts Price Target to Over 2 000	null	0.9325
1484	35	830	Elon Musk s Twitter Comeback Sends Dogecoin Up Over 0 05	null	0.7906
1485	35	766	Learn About Bitcoin So You Can Intelligently Invest in Cryptocurrency	null	0.5046
1486	35	781	Forget Bitcoin Inside the insane world of altcoin cryptocurrency trading CNET	null	-0.5574
1487	35	1061	Dogecoin goes up over 40 after Elon Musk Mark Cuban tweet about it	null	0.7906
1488	37	1018	Bitcoin Rally Takes Crypto Market Value to New Record	null	0.9732
1489	37	958	Bitcoin Reclaims 40K Mark Moving Closer To All Time High	null	0.9682
1490	37	778	Bitcoin mining is horrible for the environment Here s what we can do about it	null	-0.5423
1491	37	958	Bitcoin Reclaims 40K Mark Moving Closer To All Time High	null	0.9682
1492	37	658	A bitcoin stash worth 68 million was seized by German police but the owner won t give up his	null	0.9517
1493	36	1318	Market Wrap Bitcoin Rises to 38 3K While Ether s New High Takes Spotlight	null	0.9682
1494	36	1438	Twitter CEO Jack Dorsey is setting up a bitcoin node	null	0.7906
1495	37	298	God Of Dogecoin It s Not Just Tesla CEO Elon Musk Pumping The Joke Bitcoin Rival s Price	null	0.5106
1496	36	1318	Market Wrap Bitcoin Rises to 38 3K While Ether s New High Takes Spotlight CoinDesk	null	0.9682
1497	36	1378	Women make up only 15 of bitcoin traders highlighting the crypto world s glaring gender imbalance	null	0.7906
1498	37	898	Bill Miller s Flagship Fund May Now Buy GBTC to Gain Bitcoin Exposure of Up to 15	null	0.9886
1499	37	1078	Combined value of digital coins tops 1 2trn as Bitcoin hits 40 000 again	null	0.6908
1500	37	1078	Combined value of digital coins tops 1 2trn as Bitcoin hits 40 000 again	null	0.6908
1501	37	598	The institutionalization of BTC Mining may be more profitable than buying	null	0.9549
1502	37	418	600M iGaming Platform Integrates FUN Token	null	0.6166
1503	36	1258	German court can t cash 60M in bitcoin from man who won t give up passwords	null	0.8934
1504	36	1258	German court can t cash 60M in bitcoin from man who won t give up passwords	null	0.8934
1505	36	1258	German court can t cash 60M in bitcoin from man who won t give up passwords	null	0.8934
1506	36	1258	German court can t cash 60M in bitcoin from man who won t give up passwords	null	0.8934
1507	36	1258	German court can t cash 60M in bitcoin from man who won t give up passwords	null	0.8934
1508	36	1258	German court can t cash 60M in bitcoin from man who won t give up passwords	null	0.8934
1509	36	1258	German court can t cash 60M in bitcoin from man who won t give up passwords	null	0.8934
1510	36	1258	German court can t cash 60M in bitcoin from man who won t give up passwords	null	0.8934
1511	36	1258	German court can t cash 60M in bitcoin from man who won t give up passwords	null	0.8934
1512	36	1258	German court can t cash 60M in bitcoin from man who won t give up passwords	null	0.8934
1513	36	1258	German court can t cash 60M in bitcoin from man who won t give up passwords	null	0.8934
1514	36	1258	German court can t cash 60M in bitcoin from man who won t give up passwords	null	0.8934
1515	36	1258	German court can t cash 60M in bitcoin from man who won t give up passwords	null	0.8934
1516	36	1258	German court can t cash 60M in bitcoin from man who won t give up passwords	null	0.8934
1517	36	1258	German court can t cash 60M in bitcoin from man who won t give up passwords	null	0.8934
1518	36	1258	German court can t cash 60M in bitcoin from man who won t give up passwords	null	0.8934
1519	36	1378	MoneyLine Podcast The Chance to Profit From This 1 6T Industry Is Just Beginning	null	0.5994
1520	37	1078	Serbian Man Extradited to US After Being Indicted In 70 Million Crypto Fraud CoinDesk	null	-0.5859
1521	37	58	Altcoin Market Cap On The Verge Of Life Changing Breakout	null	0.9325
1522	36	1258	German court can t cash 60M in bitcoin from man who won t give up passwords	null	0.8934
1523	36	1258	German court can t cash 60M in bitcoin from man who won t give up passwords	null	0.8934
1524	37	658	Elon Musk sent Dogecoin soaring last week Here are 6 times the Tesla boss has moved markets from	null	0.9985
1525	36	1378	The IRS says teachers can deduct hand sanitizer costs and how Dolly Parton s Super Bowl ad glosses	null	0.7964
1526	37	838	Thinking of Selling Stock Ask Yourself These Questions First The Motley Fool	null	-0.9509
1527	37	838	Thinking of Selling Stock Ask Yourself These Questions First	null	-0.9325
1528	37	778	New York Is Calling the Up and Comers	null	0.7906
1529	37	298	Cardano Climbs 11 31 In Rally	null	0.9682
1530	37	298	Cardano Climbs 11 As Investors Gain Confidence By Investing com	null	0.9853
1531	37	298	Cardano Climbs 11 31 In Rally By Investing com	null	0.9682
1532	37	238	It seems like a lifeline but it s not COVID 19 relief scams targeting Carolinians who are	null	-0.8308
1533	37	178	Litecoin Climbs 10 14 In Bullish Trade By Investing com	null	0.9970
1534	37	1078	Serbian Man Extradited to US After Being Indicted in 70M Crypto Fraud	null	-0.5859
1535	37	958	Ethereum Price Prediction ETH ready to rise to new highs following crucial rebound	null	0.9957
1536	37	778	9 great reads from CNET this week	null	0.6249
1537	37	778	Cybersecurity An Attackers Perspective Model Portfolio Channel	null	-0.5719
1538	36	1378	The IRS says teachers can deduct hand sanitizer costs and how Dolly Parton s Super Bowl ad glosses	null	0.7964
1539	37	238	It seems like a lifeline but it s not COVID 19 relief scams targeting Carolinians who are	null	-0.8308
1540	36	1438	Crypto exchange Bitfinex says it repaid 550 million Tether loan central to fraud probe	null	-0.5859
1541	36	1378	The IRS says teachers can deduct hand sanitizer costs and how Dolly Parton s Super Bowl ad glosses	null	0.7964
1542	35	766	Learn About Bitcoin So You Can Intelligently Invest in Cryptocurrency	null	0.5046
1543	36	781	Is earning Bitcoin with each swipe the credit card reward of the future These cards think so	null	0.7430
1544	36	841	NewsWatch U S gains just 49 000 jobs in January Labor market still under acute stress	null	0.9781
1545	35	781	Forget Bitcoin Inside the insane world of altcoin cryptocurrency trading CNET	null	-0.5574
1546	38	612	Dogecoin s price jumped as high as 35 after Elon Musk tweeted Dogecoin to the Moooonn in a	null	0.9682
1547	37	1032	Bitcoin Rally Takes Crypto Market Value to New Record	null	0.9732
1548	37	1272	Bitcoin Tops 40k Mark Ether At All Time High Amid Crypto Markets Boom	null	0.9758
1549	37	732	Bitcoin eyes 50K less than a month after BTC price broke its 2017 all time high	null	0.9595
1550	37	792	Bitcoin mining is horrible for the environment Here s what we can do about it	null	-0.5423
1551	37	972	Bitcoin Reclaims 40K Mark Moving Closer To All Time High	null	0.9682
1552	37	972	Bitcoin Reclaims 40K Mark Moving Closer To All Time High	null	0.9682
1553	37	1272	Bitcoin Tops 40k Mark Ether At All Time High Amid Crypto Markets Boom	null	0.9758
1554	37	912	Bill Miller s Flagship Fund May Now Buy GBTC to Gain Bitcoin Exposure of Up to 15	null	0.9886
1555	37	912	Bill Miller s Flagship Fund May Now Buy GBTC to Gain Bitcoin Exposure of Up to 15 CoinDesk	null	0.9886
1556	38	552	Bitcoin rally takes market cap of over 6 000 cryptocurrencies to whopping new high of 1 24 trillion	null	0.9918
1557	37	1032	Serbian Man Extradited to US After Being Indicted In 70 Million Crypto Fraud CoinDesk	null	-0.5859
1558	37	1032	Serbian Man Extradited to US After Being Indicted in 70M Crypto Fraud	null	-0.5859
1559	37	972	Ethereum Price Prediction ETH ready to rise to new highs following crucial rebound	null	0.9957
1560	37	852	Thinking of Selling Stock Ask Yourself These Questions First The Motley Fool	null	-0.9509
1561	37	792	9 great reads from CNET this week	null	0.6249
1562	37	732	Cybersecurity An Attackers Perspective Model Portfolio Channel	null	-0.5719
1563	37	792	New York Is Calling the Up and Comers	null	0.7906
1564	37	732	These are the top 10 US states where Dogecoin s popularity shot up after a group of Redditors	null	0.8979
1565	35	766	Learn About Bitcoin So You Can Intelligently Invest in Cryptocurrency	null	0.5046
1566	36	781	Is earning Bitcoin with each swipe the credit card reward of the future These cards think so	null	0.7430
1567	36	841	NewsWatch U S gains just 49 000 jobs in January Labor market still under acute stress	null	0.9781
1568	35	781	Forget Bitcoin Inside the insane world of altcoin cryptocurrency trading CNET	null	-0.5574
1569	38	702	Dogecoin s price jumped as high as 35 after Elon Musk tweeted Dogecoin to the Moooonn in a	null	0.9682
1570	37	1122	Bitcoin Rally Takes Crypto Market Value to New Record	null	0.9732
1571	37	1362	Bitcoin Tops 40k Mark Ether At All Time High Amid Crypto Markets Boom	null	0.9758
1572	37	822	Bitcoin eyes 50K less than a month after BTC price broke its 2017 all time high	null	0.9595
1573	37	882	Bitcoin mining is horrible for the environment Here s what we can do about it	null	-0.5423
1574	37	1062	Bitcoin Reclaims 40K Mark Moving Closer To All Time High	null	0.9682
1575	37	1062	Bitcoin Reclaims 40K Mark Moving Closer To All Time High	null	0.9682
1576	37	1362	Bitcoin Tops 40k Mark Ether At All Time High Amid Crypto Markets Boom	null	0.9758
1577	37	1002	Bill Miller s Flagship Fund May Now Buy GBTC to Gain Bitcoin Exposure of Up to 15	null	0.9886
1578	37	1002	Bill Miller s Flagship Fund May Now Buy GBTC to Gain Bitcoin Exposure of Up to 15 CoinDesk	null	0.9886
1579	38	642	Bitcoin rally takes market cap of over 6 000 cryptocurrencies to whopping new high of 1 24 trillion	null	0.9918
1580	37	1122	Serbian Man Extradited to US After Being Indicted In 70 Million Crypto Fraud CoinDesk	null	-0.5859
1581	37	1122	Serbian Man Extradited to US After Being Indicted in 70M Crypto Fraud	null	-0.5859
1582	37	1062	Ethereum Price Prediction ETH ready to rise to new highs following crucial rebound	null	0.9957
1583	37	942	Thinking of Selling Stock Ask Yourself These Questions First The Motley Fool	null	-0.9509
1584	37	882	9 great reads from CNET this week	null	0.6249
1585	37	822	Cybersecurity An Attackers Perspective Model Portfolio Channel	null	-0.5719
1586	37	882	New York Is Calling the Up and Comers	null	0.7906
1587	37	822	These are the top 10 US states where Dogecoin s popularity shot up after a group of Redditors	null	0.8979
1588	35	766	Learn About Bitcoin So You Can Intelligently Invest in Cryptocurrency	null	0.5046
1589	35	781	Forget Bitcoin Inside the insane world of altcoin cryptocurrency trading CNET	null	-0.5574
1590	36	781	Is earning Bitcoin with each swipe the credit card reward of the future These cards think so	null	0.7430
1591	36	841	NewsWatch U S gains just 49 000 jobs in January Labor market still under acute stress	null	0.9781
1592	37	1006	Bitcoin Rally Takes Crypto Market Value to New Record	null	0.9732
1593	37	1126	Bitcoin breaks 40 000 and sets its sights on a new all time high ETH fees spike as a new price	null	0.9682
1594	37	1306	Bitcoin Tops 40k Mark Ether At All Time High Amid Crypto Markets Boom	null	0.9758
1595	37	1006	Bitcoin Reclaims 40K Mark Moving Closer To All Time High	null	0.9682
1596	37	1006	Bitcoin Reclaims 40K Mark Moving Closer To All Time High	null	0.9682
1597	37	1306	Bitcoin Tops 40k Mark Ether At All Time High Amid Crypto Markets Boom	null	0.9758
1598	37	886	Bill Miller s Flagship Fund May Now Buy GBTC to Gain Bitcoin Exposure of Up to 15 CoinDesk	null	0.9886
1599	37	886	Bill Miller s Flagship Fund May Now Buy GBTC to Gain Bitcoin Exposure of Up to 15	null	0.9886
1600	37	1066	Why DeFi blue chips SUSHI and AAVE severely pulled back after Bitcoin rally CryptoSlate	null	0.9584
1601	37	1246	The best business finance and retirement accounts to follow on Twitter in 2021	null	0.6369
1602	37	886	Is PayPal Stock A Buy Right Now After Strong Q4 Earnings Here s What Earnings Charts Show	null	0.5106
1603	37	826	Thinking of Selling Stock Ask Yourself These Questions First The Motley Fool	null	-0.9509
1604	37	826	Thinking of Selling Stock Ask Yourself These Questions First	null	-0.9325
1605	38	742	New York Is Calling the Up and Comers	null	0.7906
1606	37	11	Twitter CEO Jack Dorsey is setting up a bitcoin node CNET	null	0.7906
1607	37	593	God Of Dogecoin It s Not Just Tesla CEO Elon Musk Pumping The Joke Bitcoin Rival s Price	null	0.5106
1608	37	892	Bill Miller Run 2 25B Fund May Buy GBTC to Gain Bitcoin Exposure of Up to 15	null	0.9882
1609	37	1056	Serbian Man Extradited to US After Being Indicted In 70 Million Crypto Fraud	null	-0.5859
1610	37	1286	Bitcoin Tops 40k Mark Ether At All Time High Amid Crypto Markets Boom	null	0.9758
1611	38	515	Green hackers around the world let s destroy Bitcoin	null	-0.5423
1612	38	606	Dogecoin s price jumped as high as 35 after Elon Musk tweeted Dogecoin to the Moooonn in a Twitter poll on the future of crypto	null	0.9682
1613	37	1012	Bitcoin Rally Takes Crypto Market Value to New Record	null	0.9732
1614	37	1132	Bitcoin breaks 40 000 and sets its sights on a new all time high ETH fees spike as a new price	null	0.9682
1615	37	1072	Why DeFi blue chips SUSHI and AAVE severely pulled back after Bitcoin rally CryptoSlate	null	0.9584
1616	37	1312	Bitcoin Tops 40k Mark Ether At All Time High Amid Crypto Markets Boom	null	0.9758
1617	37	952	Bitcoin Reclaims 40K Mark Moving Closer To All Time High	null	0.9682
1618	37	952	Bitcoin Reclaims 40K Mark Moving Closer To All Time High	null	0.9682
1619	37	1312	Bitcoin Tops 40k Mark Ether At All Time High Amid Crypto Markets Boom	null	0.9758
1620	37	892	Bill Miller s Flagship Fund May Now Buy GBTC to Gain Bitcoin Exposure of Up to 15 CoinDesk	null	0.9886
1621	37	892	Bill Miller s Flagship Fund May Now Buy GBTC to Gain Bitcoin Exposure of Up to 15	null	0.9886
1622	37	1072	Combined value of digital coins tops 1 2trn as Bitcoin hits 40 000 again	null	0.6908
1623	37	1072	Combined value of digital coins tops 1 2trn as Bitcoin hits 40 000 again	null	0.6908
1624	38	592	Bitcoin rally takes market cap of over 6 000 cryptocurrencies to whopping new high of 1 24 trillion	null	0.9918
1625	37	1072	Serbian Man Extradited to US After Being Indicted In 70 Million Crypto Fraud CoinDesk	null	-0.5859
1626	37	11	Twitter CEO Jack Dorsey is setting up a bitcoin node CNET	null	0.7906
1627	37	593	God Of Dogecoin It s Not Just Tesla CEO Elon Musk Pumping The Joke Bitcoin Rival s Price	null	0.5106
1628	37	892	Bill Miller Run 2 25B Fund May Buy GBTC to Gain Bitcoin Exposure of Up to 15	null	0.9882
1629	37	1056	Serbian Man Extradited to US After Being Indicted In 70 Million Crypto Fraud	null	-0.5859
1630	37	1286	Bitcoin Tops 40k Mark Ether At All Time High Amid Crypto Markets Boom	null	0.9758
1631	38	515	Green hackers around the world let s destroy Bitcoin	null	-0.5423
1632	38	606	Dogecoin s price jumped as high as 35 after Elon Musk tweeted Dogecoin to the Moooonn in a Twitter poll on the future of crypto	null	0.9682
1633	37	11	Twitter CEO Jack Dorsey is setting up a bitcoin node CNET	null	0.7906
1634	37	593	God Of Dogecoin It s Not Just Tesla CEO Elon Musk Pumping The Joke Bitcoin Rival s Price	null	0.5106
1635	37	892	Bill Miller Run 2 25B Fund May Buy GBTC to Gain Bitcoin Exposure of Up to 15	null	0.9882
1636	37	1056	Serbian Man Extradited to US After Being Indicted In 70 Million Crypto Fraud	null	-0.5859
1637	37	1286	Bitcoin Tops 40k Mark Ether At All Time High Amid Crypto Markets Boom	null	0.9758
1638	38	515	Green hackers around the world let s destroy Bitcoin	null	-0.5423
1639	38	606	Dogecoin s price jumped as high as 35 after Elon Musk tweeted Dogecoin to the Moooonn in a Twitter poll on the future of crypto	null	0.9682
1640	37	11	Twitter CEO Jack Dorsey is setting up a bitcoin node CNET	null	0.7906
1641	37	593	God Of Dogecoin It s Not Just Tesla CEO Elon Musk Pumping The Joke Bitcoin Rival s Price	null	0.5106
1642	37	892	Bill Miller Run 2 25B Fund May Buy GBTC to Gain Bitcoin Exposure of Up to 15	null	0.9882
1643	37	1056	Serbian Man Extradited to US After Being Indicted In 70 Million Crypto Fraud	null	-0.5859
1644	37	1286	Bitcoin Tops 40k Mark Ether At All Time High Amid Crypto Markets Boom	null	0.9758
1645	38	515	Green hackers around the world let s destroy Bitcoin	null	-0.5423
1646	38	606	Dogecoin s price jumped as high as 35 after Elon Musk tweeted Dogecoin to the Moooonn in a Twitter poll on the future of crypto	null	0.9682
1647	37	11	Twitter CEO Jack Dorsey is setting up a bitcoin node CNET	null	0.7906
1648	37	593	God Of Dogecoin It s Not Just Tesla CEO Elon Musk Pumping The Joke Bitcoin Rival s Price	null	0.5106
1649	37	892	Bill Miller Run 2 25B Fund May Buy GBTC to Gain Bitcoin Exposure of Up to 15	null	0.9882
1650	37	1056	Serbian Man Extradited to US After Being Indicted In 70 Million Crypto Fraud	null	-0.5859
1651	37	1286	Bitcoin Tops 40k Mark Ether At All Time High Amid Crypto Markets Boom	null	0.9758
1652	38	606	Dogecoin s price jumped as high as 35 after Elon Musk tweeted Dogecoin to the Moooonn in a Twitter poll on the future of crypto	null	0.9682
1653	38	850	Beyond Doge Coin What Crypto s Are Worth Buying Besides Bitcoin	null	0.9423
1654	38	934	Forbes Blockchain 50 Meet The Bitcoin Lovers In Corporate America	null	0.5267
1655	38	669	Dogecoin s price jumped as high as 35 after Elon Musk tweeted Dogecoin to the Moooonn in a	null	0.9682
1656	37	1149	Bitcoin breaks 40 000 and sets its sights on a new all time high ETH fees spike as a new price	null	0.9682
1657	38	909	German Fraudster Refuses to Give Police Passwords to 60M Bitcoin Wallet	null	-0.5423
1658	37	1329	Bitcoin Tops 40k Mark Ether At All Time High Amid Crypto Markets Boom	null	0.9758
1659	37	1089	Why DeFi blue chips SUSHI and AAVE severely pulled back after Bitcoin rally CryptoSlate	null	0.9584
1660	37	1089	Combined value of digital coins tops 1 2trn as Bitcoin hits 40 000 again	null	0.6908
1661	37	1089	Combined value of digital coins tops 1 2trn as Bitcoin hits 40 000 again	null	0.6908
1662	38	609	Bitcoin rally takes market cap of over 6 000 cryptocurrencies to whopping new high of 1 24 trillion	null	0.9918
1663	38	909	DOGE and XRP rally as pump and dumps sneak back into crypto markets	null	0.9601
1664	38	309	EOS Climbs 10 08 In Bullish Trade By Investing com	null	0.9970
1665	37	1089	Serbian Man Extradited to US After Being Indicted In 70 Million Crypto Fraud CoinDesk	null	-0.5859
1666	38	309	Cardano Climbs 19 82 In Rally	null	0.9682
1667	38	309	Cardano Climbs 19 82 In Rally By Investing com	null	0.9682
1668	38	309	Cardano Climbs 19 82 In Rally By Investing com	null	0.9682
1669	38	309	Precious Metals Energy Weekly Review and Calendar Ahead	null	0.7003
1670	38	309	Precious Metals Energy Weekly Review and Calendar Ahead By Investing com	null	0.7003
1671	38	309	Precious Metals Energy Weekly Review and Calendar Ahead By Investing com	null	0.7003
1672	38	309	Precious Metals Energy Weekly Review and Calendar Ahead By Investing com	null	0.7003
1673	37	11	Twitter CEO Jack Dorsey is setting up a bitcoin node CNET	null	0.7906
1674	37	593	God Of Dogecoin It s Not Just Tesla CEO Elon Musk Pumping The Joke Bitcoin Rival s Price	null	0.5106
1675	37	892	Bill Miller Run 2 25B Fund May Buy GBTC to Gain Bitcoin Exposure of Up to 15	null	0.9882
1676	37	1056	Serbian Man Extradited to US After Being Indicted In 70 Million Crypto Fraud	null	-0.5859
1677	37	1286	Bitcoin Tops 40k Mark Ether At All Time High Amid Crypto Markets Boom	null	0.9758
1678	38	515	Green hackers around the world let s destroy Bitcoin	null	-0.5423
1679	38	606	Dogecoin s price jumped as high as 35 after Elon Musk tweeted Dogecoin to the Moooonn in a Twitter poll on the future of crypto	null	0.9682
1680	38	850	Beyond Doge Coin What Crypto s Are Worth Buying Besides Bitcoin	null	0.9423
1681	38	934	Forbes Blockchain 50 Meet The Bitcoin Lovers In Corporate America	null	0.5267
1682	38	1006	Bitcoin Rally Takes Crypto Market Value to New Record	null	0.9732
1683	38	670	Dogecoin s price jumped as high as 35 after Elon Musk tweeted Dogecoin to the Moooonn in a	null	0.9682
1684	37	1150	Bitcoin breaks 40 000 and sets its sights on a new all time high ETH fees spike as a new price	null	0.9682
1685	38	910	German Fraudster Refuses to Give Police Passwords to 60M Bitcoin Wallet	null	-0.5423
1686	37	1330	Bitcoin Tops 40k Mark Ether At All Time High Amid Crypto Markets Boom	null	0.9758
1687	37	1090	Why DeFi blue chips SUSHI and AAVE severely pulled back after Bitcoin rally CryptoSlate	null	0.9584
1688	37	1090	Combined value of digital coins tops 1 2trn as Bitcoin hits 40 000 again	null	0.6908
1689	37	1090	Combined value of digital coins tops 1 2trn as Bitcoin hits 40 000 again	null	0.6908
1690	38	610	Bitcoin rally takes market cap of over 6 000 cryptocurrencies to whopping new high of 1 24 trillion	null	0.9918
1691	38	910	DOGE and XRP rally as pump and dumps sneak back into crypto markets	null	0.9601
1692	38	310	EOS Climbs 10 08 In Bullish Trade By Investing com	null	0.9970
1693	37	1090	Serbian Man Extradited to US After Being Indicted In 70 Million Crypto Fraud CoinDesk	null	-0.5859
1694	38	310	Cardano Climbs 19 82 In Rally	null	0.9682
1695	38	310	Cardano Climbs 19 82 In Rally By Investing com	null	0.9682
1696	38	310	Cardano Climbs 19 82 In Rally By Investing com	null	0.9682
1697	38	310	Precious Metals Energy Weekly Review and Calendar Ahead	null	0.7003
1698	38	310	Precious Metals Energy Weekly Review and Calendar Ahead By Investing com	null	0.7003
1699	38	310	Precious Metals Energy Weekly Review and Calendar Ahead By Investing com	null	0.7003
1700	38	310	Precious Metals Energy Weekly Review and Calendar Ahead By Investing com	null	0.7003
1701	37	11	Twitter CEO Jack Dorsey is setting up a bitcoin node CNET	null	0.7906
1702	37	593	God Of Dogecoin It s Not Just Tesla CEO Elon Musk Pumping The Joke Bitcoin Rival s Price	null	0.5106
1703	37	892	Bill Miller Run 2 25B Fund May Buy GBTC to Gain Bitcoin Exposure of Up to 15	null	0.9882
1704	37	1056	Serbian Man Extradited to US After Being Indicted In 70 Million Crypto Fraud	null	-0.5859
1705	37	1286	Bitcoin Tops 40k Mark Ether At All Time High Amid Crypto Markets Boom	null	0.9758
1706	38	515	Green hackers around the world let s destroy Bitcoin	null	-0.5423
1707	38	606	Dogecoin s price jumped as high as 35 after Elon Musk tweeted Dogecoin to the Moooonn in a Twitter poll on the future of crypto	null	0.9682
1708	38	850	Beyond Doge Coin What Crypto s Are Worth Buying Besides Bitcoin	null	0.9423
1709	38	934	Forbes Blockchain 50 Meet The Bitcoin Lovers In Corporate America	null	0.5267
1710	38	1006	Bitcoin Rally Takes Crypto Market Value to New Record	null	0.9732
1711	38	674	Bitcoin rally incoming MicroStrategy Playbook Seminar a Smash Hit	null	0.9682
1712	37	1094	Bitcoin breaks 40 000 and sets its sights on a new all time high ETH fees spike as a new price	null	0.9682
1713	37	1094	Why DeFi blue chips SUSHI and AAVE severely pulled back after Bitcoin rally CryptoSlate	null	0.9584
1714	38	854	German Fraudster Refuses to Give Police Passwords to 60M Bitcoin Wallet	null	-0.5423
1715	37	1274	Bitcoin Tops 40k Mark Ether At All Time High Amid Crypto Markets Boom	null	0.9758
1716	37	1274	Bitcoin Tops 40k Mark Ether At All Time High Amid Crypto Markets Boom	null	0.9758
1717	37	1094	Combined value of digital coins tops 1 2trn as Bitcoin hits 40 000 again	null	0.6908
1718	37	1094	Combined value of digital coins tops 1 2trn as Bitcoin hits 40 000 again	null	0.6908
1719	38	554	Bitcoin rally takes market cap of over 6 000 cryptocurrencies to whopping new high of 1 24 trillion	null	0.9918
1720	38	314	EOS Climbs 10 08 In Bullish Trade	null	0.9970
1721	38	314	EOS Climbs 10 08 In Bullish Trade By Investing com	null	0.9970
2314	53	601	Bitcoin and ethereum prices seem high says Musk	null	0.9682
1722	38	1010	Serbian Man Extradited to US After Being Indicted In 70 Million Crypto Fraud CoinDesk	null	-0.5859
1723	38	314	EOS Climbs 10 In Rally By Investing com	null	0.9682
1724	38	314	Beyond Doge Coin What Crypto s Are Worth Buying Besides Bitcoin	null	0.9423
1725	38	134	Success of digital financial services rests on rural India s shift from cash to digital payments	null	0.5719
1726	38	614	Dogecoin s price jumped as high as 35 after Elon Musk tweeted Dogecoin to the Moooonn in a	null	0.9682
1727	38	314	Cardano Climbs 19 82 In Rally	null	0.9682
1728	38	314	Cardano Climbs 19 82 In Rally By Investing com	null	0.9682
1729	38	314	Cardano Climbs 19 82 In Rally By Investing com	null	0.9682
1730	38	314	Ethereum Falls 10 In Selloff By Investing com	null	-0.9997
1731	38	314	Precious Metals Energy Weekly Review and Calendar Ahead	null	0.7003
1732	38	314	Precious Metals Energy Weekly Review and Calendar Ahead	null	0.7003
1733	38	314	Precious Metals Energy Weekly Review and Calendar Ahead	null	0.7003
1734	38	314	Precious Metals Energy Weekly Review and Calendar Ahead By Investing com	null	0.7003
1735	38	314	Precious Metals Energy Weekly Review and Calendar Ahead By Investing com	null	0.7003
1736	38	554	Janet Yellen Re Cryptocurrencies and Terrorists	null	-0.6249
1737	37	11	Twitter CEO Jack Dorsey is setting up a bitcoin node CNET	null	0.7906
1738	37	593	God Of Dogecoin It s Not Just Tesla CEO Elon Musk Pumping The Joke Bitcoin Rival s Price	null	0.5106
1739	37	892	Bill Miller Run 2 25B Fund May Buy GBTC to Gain Bitcoin Exposure of Up to 15	null	0.9882
1740	37	1056	Serbian Man Extradited to US After Being Indicted In 70 Million Crypto Fraud	null	-0.5859
1741	37	1286	Bitcoin Tops 40k Mark Ether At All Time High Amid Crypto Markets Boom	null	0.9758
1742	38	515	Green hackers around the world let s destroy Bitcoin	null	-0.5423
1743	38	606	Dogecoin s price jumped as high as 35 after Elon Musk tweeted Dogecoin to the Moooonn in a Twitter poll on the future of crypto	null	0.9682
1744	38	850	Beyond Doge Coin What Crypto s Are Worth Buying Besides Bitcoin	null	0.9423
1745	38	934	Forbes Blockchain 50 Meet The Bitcoin Lovers In Corporate America	null	0.5267
1746	38	319	Cardano Climbs 19 82 In Rally	null	0.9682
1747	38	319	Beyond Doge Coin What Crypto s Are Worth Buying Besides Bitcoin	null	0.9423
1748	37	1099	Why DeFi blue chips SUSHI and AAVE severely pulled back after Bitcoin rally CryptoSlate	null	0.9584
1749	37	1397	Growing list of billion dollar crypto unicorns suggest the best is yet to come	null	0.7096
1750	38	850	Beyond Doge Coin What Crypto s Are Worth Buying Besides Bitcoin	null	0.9423
1751	38	321	Cardano Climbs 19 82 In Rally	null	0.9682
1752	38	321	Beyond Doge Coin What Crypto s Are Worth Buying Besides Bitcoin	null	0.9423
1753	37	1101	Why DeFi blue chips SUSHI and AAVE severely pulled back after Bitcoin rally CryptoSlate	null	0.9584
1754	37	1397	Growing list of billion dollar crypto unicorns suggest the best is yet to come	null	0.7096
1755	38	850	Beyond Doge Coin What Crypto s Are Worth Buying Besides Bitcoin	null	0.9423
1756	39	1239	FOREX Dollar steady after Friday s U S jobs related losses bitcoin soars	null	0.9984
1757	39	985	Bitcoin price soars How much 100 would be worth today if you had invested earlier	null	0.9985
1758	39	1165	What is Dogecoin the joke crypto loved by Elon Musk and growing faster than Bitcoin	null	0.7783
1759	39	1105	Explainer Elon Musk loves it So what s all the buzz about bitcoin	null	0.5719
1760	39	1045	Bitcoin Price Predictions Where Will BTC Go After Tesla Fueled Rally	null	0.9682
1761	39	1045	Bitcoin jumps to record high after Tesla invests 1 5B accepts cryptocurrency	null	0.9983
1762	39	865	Bitcoin Jumps 10 to Record High on Tesla Investment News	null	0.9982
1763	39	805	Bitcoin Hits New Record High Over 43K on Tesla News	null	0.9682
1764	39	985	Bitcoin surges to all time high as Tesla invests 1 5B	null	0.9682
1765	39	565	CME Ethereum futures go live Bitcoin caps its best week ever 5 things to watch this week	null	0.6369
1766	39	925	Bitcoin jumps to record 44 000 as Tesla invests 1 5 billion	null	0.9970
1767	39	865	Bitcoin Price Alert Tesla s 1 5B Purchase and Payment Promise Send the Crypto Soaring	null	0.9986
1768	39	805	Bitcoin hits 43K all time high as Tesla invests 1 5 billion in BTC	null	0.9682
1769	39	1165	Bitcoin surges to record high as Tesla announces it has invested 1 5bn and will take it as payment	null	0.9682
1770	39	685	Bitcoin Gets Support From Mexico s Third Richest Person Billionaire Follows Elon Musk s Move	null	0.7269
1771	39	865	Cryptocurrency live Latest as bitcoin hits new all time high after massive Tesla investment	null	0.9682
1772	39	805	Bitcoin Soars After Elon Musk Says Tesla Invested 1 5billion in BTC	null	0.9985
1773	39	925	Bitcoin jumps to record 44 000 as Tesla invests 1 5 billion	null	0.9970
1774	39	1045	Bitcoin soars to all time high as Musk s Tesla says it bought 1 5 billion	null	0.9990
1775	39	925	Bitcoin soars to all time high as Musk s Tesla says it bought 1 5 billion	null	0.9990
1776	39	805	Bitcoin soars 15 after Tesla says will accept it as payment	null	0.9985
1777	39	865	Bitcoin retests 40 000 as active addresses hit new all time high	null	0.9741
1778	39	325	Tesla s Bitcoin Buy Is a Reckless Destructive Troll	null	-0.7717
1779	39	925	Bitcoin reaches all time high after Tesla discloses 1 5 billion purchase	null	0.9690
1780	39	1165	Tesla s Buying of Bitcoin Briefly Made Bitcoin More Valuable Than Tesla	null	0.9545
1781	39	325	Bitcoin Has Rallied More Than 50 This Year After Hitting A Fresh High	null	0.9729
1782	39	325	Bitcoin Soars To New High After Tesla Says It Invested 1 5 Billion	null	0.9990
1783	39	865	Bitcoin hits record high after Tesla invests 1 5bn live updates	null	0.9682
1784	39	805	Bitcoin spikes 13 to record high after Tesla says it invested 1 5 billion in the cryptocurrency	null	0.9682
1785	39	325	Bitcoin Climbs 11 In Rally By Investing com	null	0.9682
1786	39	325	As Bitcoin Hits Record High Experts Say Others Will Follow Tesla s Bitcoin Bet By Investing com	null	0.9682
1787	39	1105	EXPLAINER Elon Musk loves it So what s all the buzz about bitcoin	null	0.5719
1788	39	865	Bitcoin jumps 10 to record high on Tesla investment news	null	0.9982
1789	39	1045	Bitcoin reaches all time high of 44 000 following Tesla s 1 5 billion investment	null	0.9690
1790	39	925	Bitcoin reaches all time high after Tesla discloses 1 5 billion purchase	null	0.9690
1791	39	325	Bitcoin Climbs 11 42 In Bullish Trade	null	0.9970
1792	39	805	UPDATE 1 Bitcoin jumps 10 to record high on Tesla investment news	null	0.9982
1793	39	805	Bitcoin jumps 10 to record high on Tesla investment news	null	0.9982
1794	39	1105	EXPLAINER Elon Musk loves it So what s all the buzz about bitcoin	null	0.5719
1795	39	1045	Tesla buys 1 5 billion in bitcoin sending its price soaring	null	0.9985
1796	39	805	Tesla buys 1 5 billion in bitcoin as Elon Musk jumps on board with cryptocurrency	null	0.9970
1797	39	1045	Legendary investor Bill Miller has set up his flagship fund to buy into Grayscale Bitcoin Trust	null	0.8934
1798	39	925	Tesla Buys 1 5 Billion in Bitcoin Sending Its Price Soaring	null	0.9985
1799	39	925	Tesla Buys 1 5 Billion in Bitcoin Sending Its Price Soaring	null	0.9985
1800	39	805	Tesla TSLA buys 1 5B in bitcoin pushing the crypto to all time high plans to accept as payment	null	0.9738
1801	39	865	Tesla Sends Bitcoin Mooning Past 44K as Snoop Wins dogebowl CoinDesk	null	0.5719
1802	39	1045	Tesla buys 1 5 billion in bitcoin sending its price soaring	null	0.9985
1803	39	325	Tesla invests 1 5 billion in Bitcoin as Elon Musk praises cryptocurrencies	null	0.5267
1804	39	1105	Elon Musk s big Bitcoin buy may have been to distract from bad Tesla news	null	-0.6908
1805	39	1045	Dow Jones Rises To Record High As Tesla Buys Bitcoin Market Rally Warning Signs	null	0.9910
1806	39	925	Elon Musk s Latest Move Sends Bitcoin Soaring	null	0.9985
1807	39	685	GameStop s Plunge Could Spill Over Into Bitcoin	null	-0.9988
1808	39	925	Tesla Buys 1 5 Billion in Bitcoin Sending Its Price Soaring	null	0.9985
1809	39	925	Tesla Buys 1 5 Billion in Bitcoin Sending Its Price Soaring	null	0.9985
1810	39	1105	Tesla Buying Bitcoin Is Bullish for Both TSLA Stock BTC	null	0.9979
1811	39	565	Children s Charity Creates Bitcoin Superhero to Attract Crypto Donations CoinDesk	null	0.7506
1812	39	745	Stock market news live updates Stocks rise to reach record highs Bitcoin prices spike	null	0.9819
1813	39	985	Tesla invests 1 5 billion in bitcoin sending the price soaring to new heights	null	0.9985
1814	39	1105	Square Stock Hits All Time High As Tesla Purchase Sends Bitcoin Price Soaring	null	0.9990
1815	39	1225	Dow Jones Rises For Sixth Straight Session As Disney Stock Breaks Out Tesla Bullish On Bitcoin	null	0.9971
1816	39	805	Tesla Buys 1 5 Billion Worth of Bitcoin May Accept the Cryptocurrency as Payment in the Future	null	0.5423
1817	39	325	Tesla sends bitcoin soaring with 1 5 billion investment payment promise By Reuters	null	0.9985
1818	39	1251	Square gains 10 as the payments company rides bitcoin s record breaking rise	null	0.9953
1819	39	1105	Tesla buying 1 5 billion in bitcoin opens the company up to further scrutiny	null	0.9682
1820	39	445	Bill Miller to Allow Opportunity Fund to Buy Into Bitcoin Trust	null	0.7906
1821	39	325	Wall Street Opens Higher Tesla Bitcoin Buzz Helps Dow up By Investing com	null	0.8625
1822	39	325	Wall Street Opens Higher Tesla Bitcoin Buzz Helps Dow up By Investing com	null	0.8625
1823	39	805	Tesla buys 1 5 billion worth of bitcoin says may accept it for payment for products in the near	null	0.5423
1824	39	805	Tesla buys 1 5 billion worth of bitcoin says may accept it for payment for products in the near	null	0.5423
1825	39	385	Elon Musk Says Dogecoin s High Supply Relative To Bitcoin Can Actually Be An Advantage	null	0.9719
1826	39	865	India Mulls Ordinance Route To Ban Cryptocurrencies	null	-0.5574
1827	39	685	US stocks close at record highs as stimulus optimism continues	null	0.5423
1828	39	925	Wall Street opens higher continuing win streak	null	0.5859
1829	39	325	Indian parliament fast tracks bill to ban bitcoin and other cryptocurrencies By BTC Peers	null	-0.5574
1830	39	445	Stocks open higher on Wall Street continuing strong streak	null	0.5106
1831	39	925	Stocks open higher on Wall Street continuing strong streak	null	0.5106
1832	39	745	Wall Street hits all time closing highs on stimulus euphoria vaccine rollout	null	0.6486
1833	39	745	Wall Street hits all time closing highs on stimulus euphoria vaccine rollout	null	0.6486
1834	39	445	Stocks push to more gains and record highs on Wall Street	null	0.9823
1835	38	515	Green hackers around the world let s destroy Bitcoin	null	-0.5423
1836	39	843	Bitcoin jumps 10 to record high on Tesla investment news Reuters	null	0.9982
1837	39	912	Bitcoin hits record highs as Tesla jumps in but it s also great news for gold price Kitco NEWS	null	0.9916
1838	39	919	Bitcoin Spikes 16 To Record High After Tesla Says It Invested 1 5 Billion in the Cryptocurrency and Will Begin Accepting It as Payment	null	0.9738
1839	39	1079	EXPLAINER Elon Musk loves it So what s all the buzz about bitcoin Reuters	null	0.5719
1840	39	1264	US STOCKS Wall Street hits all time closing highs on stimulus euphoria vaccine rollout Reuters	null	0.6486
1841	40	578	Bitcoin price hits new all time high taking market cap value above Facebook and Tesla	null	0.9732
1842	40	592	BREAKING Bitcoin pushes past 48 000 to new record high	null	0.9682
1843	40	586	A Tesla for a bitcoin Musk drives up cryptocurrency price with 1 5 billion purchase	null	0.7906
1844	40	1141	Bitcoin investors From buying a Bentley to losing it all	null	0.9081
1845	40	1201	Here s Why Bitcoin Stocks Are Soaring Today	null	0.9985
1846	41	421	Musk s bitcoin bet fuels gains in companies already invested	null	0.9818
1847	41	361	Bitcoin soars 15 after Tesla says will accept it as payment	null	0.9985
1848	40	1201	Legit Way to Play the Bitcoin Rally	null	0.9732
1849	40	901	Bitcoin hits another record high after Tesla s 1 5 billion buy in	null	0.9682
1850	41	181	Bitcoin Late January Breakout Held Now On Its Way To 50K Investing com	null	0.9325
1851	40	1201	Bitcoin Driven Higher by TWAP Buying as Price Stabilizes at All Time Highs	null	0.9325
1852	40	721	Bitcoin rockets to record high of 48 000 after Elon Musk s Tesla buys up 1 5 billion with one	null	0.9818
1853	40	721	Bitcoin Could Rally Further as Tesla Leads Corporates on Treasury Investments CoinDesk	null	0.9712
1854	40	841	Bitcoin s Tesla Driven Rally Fizzles After Prices Hit 48 000	null	0.9682
1855	40	961	Bitcoin soars to new highs and oil jumps as outlook brightens with US stocks set to slip as markets	null	0.9995
1856	40	721	Bitcoin Could Rally Further as Tesla Leads Corporates on Treasury Investments	null	0.9712
1857	40	1201	Bitcoin Can t Be Stopped Nigerians Look to P2P Exchanges After Crypto Ban	null	-0.6705
1858	40	1021	Bitcoin Miner Riot Blockchain Names Jason Les CEO	null	-0.5574
1859	40	1381	Bitcoin soars above 48 000 to new record after Tesla s 1 5 billion investment CNBC After Hours	null	0.9985
1860	40	1321	With Elon Musk at the wheel Bitcoin hits 95 on the 100 point extreme fear to extreme greed index	null	-0.7096
1861	40	1381	The Bitcoin rally isn t enough to dethrone the mighty dollar NewsChannel 3 12	null	0.9682
1862	40	1201	Here s Why Bitcoin Stocks Are Soaring Today The Motley Fool	null	0.9984
1863	41	301	Musk s bitcoin bet fuels gains in companies already invested By Reuters	null	0.9818
1864	41	301	Musk s bitcoin bet fuels gains in companies already invested By Reuters	null	0.9818
1865	40	1321	The Bitcoin rally isn t enough to dethrone the mighty dollar	null	0.9682
1866	40	781	Elon Musk s 1 5bn Bitcoin investment triggers record high as Dogecoin rockets	null	0.9682
1867	40	1261	Tesla Will Accept Bitcoin for Cars Buys 1 5 Billion Worth of the Cryptocurrency	null	0.5423
1868	40	841	How Long Will the Tesla Driven Bitcoin Rally Last	null	0.9682
1869	40	1381	The Bitcoin rally isn t enough to dethrone the mighty dollar KION546	null	0.9682
1870	40	1081	BlockFi s Bitcoin Trust Takes Aim at GBTC CoinDesk	null	0.5106
1871	41	181	Former MP Central Banks Should Ban Bitcoin	null	-0.5574
1872	41	121	Dollar wallows at two week low bitcoin steadies after surge past 48 000	null	-0.9682
1873	40	1081	BlockFi s Bitcoin Trust Takes Aim at GBTC	null	0.5106
1874	40	1261	ETFs to Ride the Tesla Driven Bitcoin Rally	null	0.9682
1875	40	901	Cryptocurrency Related Stocks Soar as Bitcoin Hits Record High	null	0.9682
1876	40	1021	Forget Bitcoin Buy PayPal and Square Instead The Motley Fool	null	-0.5859
1877	40	1261	FOREX U S dollar drops to two week low bitcoin eyes 50 000	null	-0.9682
1878	41	361	Musk s Bitcoin Bet Fuels Gains in Companies Already Invested	null	0.9818
1879	41	181	Reddit User Who Leaked Tesla s Bitcoin Investment News Was Just High	null	0.9623
1880	40	1381	Ethereum Surpasses Bitcoin To Become Largest Network For Trustless Money Settlement	null	-0.5106
1881	40	1081	GLOBAL MARKETS Stocks mostly ease off record highs bitcoin rise again	null	0.9842
1882	41	181	Reddit User Who Leaked Tesla s Bitcoin Investment News Was Just High	null	0.9623
1883	40	1261	Former British MP says central banks should ban Bitcoin	null	-0.5574
1884	41	301	Musk s bitcoin bet fuels gains in companies already invested By Reuters	null	0.9818
1885	41	361	Musk s bitcoin bet fuels gains in companies already invested	null	0.9818
1886	40	1381	Ethereum Surpasses Bitcoin To Become Largest Network For Trustless Money Settlement	null	-0.5106
1887	40	1081	Woman Charged In Failed Murder For Hire Plot Using Bitcoin	null	-0.8689
1888	41	301	Musk s bitcoin bet fuels gains in companies already invested	null	0.9818
1889	41	301	Musk s bitcoin bet fuels gains in companies already invested	null	0.9818
1890	40	1021	Wisconsin woman allegedly paid in bitcoin for murder for hire on dark web	null	-0.6908
1891	41	361	Why This Tesla Bitcoin Marriage Won t Live Up To The Hype Investing com	null	0.8934
1892	41	301	Dollar wallows at two week low bitcoin steadies after surge past 48 000 By Reuters	null	-0.9682
1893	40	841	Before Tesla s bitcoin play this company bought first and may have inspired Elon Musk	null	0.6808
1894	40	1081	Woman Charged In Failed Murder For Hire Plot Using Bitcoin	null	-0.8689
1895	40	1081	Woman Charged In Failed Murder For Hire Plot Using Bitcoin	null	-0.8689
1896	40	841	Will other companies follow Tesla s lead and load up on Bitcoin	null	0.7906
1897	40	721	Tesla s 1 5 billion bitcoin investment is already up 37 as regulatory scrutiny ratchets up	null	0.9325
1898	40	721	Tesla s 1 5 billion bitcoin investment is already up 37 as regulatory scrutiny ratchets up	null	0.9325
1899	41	361	Business Report GTA 1M homes Bitcoin tops 48K overnight thanks to Elon Twitter earnings	null	0.7351
1900	40	1021	Tesla insider leaked huge bitcoin investment on Reddit over a month ago but was laughed at	null	0.6124
1901	40	1	Bitcoin extends gains above 47 000 in Asia Reuters	null	0.9826
1902	40	1	Bitcoin extends gains above 47 000 in Asia Reuters	null	0.9826
1903	40	361	GLOBAL MARKETS Stocks oil rise in Asia after U S records dollar weakens Reuters	null	0.9792
1904	40	661	Tesla s 1 5 billion bitcoin investment is already up 37 as regulatory scrutiny ratchets up Yahoo Canada Finance	null	0.9325
1905	40	661	FOREX Dollar struggles as U S yields soften Bitcoin soars Reuters	null	0.9984
1906	41	361	Musk s bitcoin bet fuels gains in companies already invested Reuters	null	0.9818
1907	41	361	Musk s bitcoin bet fuels gains in companies already invested Reuters	null	0.9818
1908	40	1201	Bitcoin investors From buying a Bentley to losing it all	null	0.9081
1909	40	1261	Here s Why Bitcoin Stocks Are Soaring Today	null	0.9985
1910	41	481	Musk s bitcoin bet fuels gains in companies already invested	null	0.9818
1911	41	421	Bitcoin soars 15 after Tesla says will accept it as payment	null	0.9985
1912	40	1261	Legit Way to Play the Bitcoin Rally	null	0.9732
1913	40	961	Bitcoin hits another record high after Tesla s 1 5 billion buy in	null	0.9682
1914	41	241	Bitcoin Late January Breakout Held Now On Its Way To 50K Investing com	null	0.9325
1915	40	1261	Bitcoin Driven Higher by TWAP Buying as Price Stabilizes at All Time Highs	null	0.9325
1916	40	781	Bitcoin rockets to record high of 48 000 after Elon Musk s Tesla buys up 1 5 billion with one	null	0.9818
1917	40	781	Bitcoin Could Rally Further as Tesla Leads Corporates on Treasury Investments CoinDesk	null	0.9712
1918	40	901	Bitcoin s Tesla Driven Rally Fizzles After Prices Hit 48 000	null	0.9682
1919	40	1021	Bitcoin soars to new highs and oil jumps as outlook brightens with US stocks set to slip as markets	null	0.9995
1920	40	781	Bitcoin Could Rally Further as Tesla Leads Corporates on Treasury Investments	null	0.9712
1921	40	1261	Bitcoin Can t Be Stopped Nigerians Look to P2P Exchanges After Crypto Ban	null	-0.6705
1922	41	1	Bitcoin soars above 48 000 to new record after Tesla s 1 5 billion investment CNBC After Hours	null	0.9985
1923	40	1381	With Elon Musk at the wheel Bitcoin hits 95 on the 100 point extreme fear to extreme greed index	null	-0.7096
1924	41	1	The Bitcoin rally isn t enough to dethrone the mighty dollar NewsChannel 3 12	null	0.9682
1925	40	1261	Here s Why Bitcoin Stocks Are Soaring Today The Motley Fool	null	0.9984
1926	41	361	Musk s bitcoin bet fuels gains in companies already invested By Reuters	null	0.9818
1927	41	361	Musk s bitcoin bet fuels gains in companies already invested By Reuters	null	0.9818
1928	40	1381	The Bitcoin rally isn t enough to dethrone the mighty dollar	null	0.9682
1929	40	841	Elon Musk s 1 5bn Bitcoin investment triggers record high as Dogecoin rockets	null	0.9682
1930	40	1321	Tesla Will Accept Bitcoin for Cars Buys 1 5 Billion Worth of the Cryptocurrency	null	0.5423
1931	40	901	How Long Will the Tesla Driven Bitcoin Rally Last	null	0.9682
1932	41	1	The Bitcoin rally isn t enough to dethrone the mighty dollar KION546	null	0.9682
1933	40	1141	BlockFi s Bitcoin Trust Takes Aim at GBTC CoinDesk	null	0.5106
1934	41	241	Former MP Central Banks Should Ban Bitcoin	null	-0.5574
1935	41	181	Dollar wallows at two week low bitcoin steadies after surge past 48 000	null	-0.9682
1936	40	1141	BlockFi s Bitcoin Trust Takes Aim at GBTC	null	0.5106
1937	40	1321	ETFs to Ride the Tesla Driven Bitcoin Rally	null	0.9682
1938	40	961	Cryptocurrency Related Stocks Soar as Bitcoin Hits Record High	null	0.9682
1939	40	1081	Forget Bitcoin Buy PayPal and Square Instead The Motley Fool	null	-0.5859
1940	40	1321	FOREX U S dollar drops to two week low bitcoin eyes 50 000	null	-0.9682
1941	41	421	Musk s Bitcoin Bet Fuels Gains in Companies Already Invested	null	0.9818
1942	41	241	Reddit User Who Leaked Tesla s Bitcoin Investment News Was Just High	null	0.9623
1943	41	1	Ethereum Surpasses Bitcoin To Become Largest Network For Trustless Money Settlement	null	-0.5106
1944	40	1141	GLOBAL MARKETS Stocks mostly ease off record highs bitcoin rise again	null	0.9842
1945	41	241	Reddit User Who Leaked Tesla s Bitcoin Investment News Was Just High	null	0.9623
1946	40	1321	Former British MP says central banks should ban Bitcoin	null	-0.5574
1947	41	361	Musk s bitcoin bet fuels gains in companies already invested By Reuters	null	0.9818
1948	41	421	Musk s bitcoin bet fuels gains in companies already invested	null	0.9818
1949	41	1	Ethereum Surpasses Bitcoin To Become Largest Network For Trustless Money Settlement	null	-0.5106
1950	40	1141	Woman Charged In Failed Murder For Hire Plot Using Bitcoin	null	-0.8689
1951	41	361	Musk s bitcoin bet fuels gains in companies already invested	null	0.9818
1952	41	361	Musk s bitcoin bet fuels gains in companies already invested	null	0.9818
1953	40	1081	Wisconsin woman allegedly paid in bitcoin for murder for hire on dark web	null	-0.6908
1954	41	421	Why This Tesla Bitcoin Marriage Won t Live Up To The Hype Investing com	null	0.8934
1955	41	361	Dollar wallows at two week low bitcoin steadies after surge past 48 000 By Reuters	null	-0.9682
1956	40	901	Before Tesla s bitcoin play this company bought first and may have inspired Elon Musk	null	0.6808
1957	40	1141	Woman Charged In Failed Murder For Hire Plot Using Bitcoin	null	-0.8689
1958	40	1141	Woman Charged In Failed Murder For Hire Plot Using Bitcoin	null	-0.8689
1959	40	901	Will other companies follow Tesla s lead and load up on Bitcoin	null	0.7906
1960	40	781	Tesla s 1 5 billion bitcoin investment is already up 37 as regulatory scrutiny ratchets up	null	0.9325
1961	40	781	Tesla s 1 5 billion bitcoin investment is already up 37 as regulatory scrutiny ratchets up	null	0.9325
1962	41	421	Business Report GTA 1M homes Bitcoin tops 48K overnight thanks to Elon Twitter earnings	null	0.7351
1963	40	1081	Tesla insider leaked huge bitcoin investment on Reddit over a month ago but was laughed at	null	0.6124
1964	40	1	Bitcoin extends gains above 47 000 in Asia Reuters	null	0.9826
1965	40	1	Bitcoin extends gains above 47 000 in Asia Reuters	null	0.9826
1966	40	361	GLOBAL MARKETS Stocks oil rise in Asia after U S records dollar weakens Reuters	null	0.9792
1967	40	661	Tesla s 1 5 billion bitcoin investment is already up 37 as regulatory scrutiny ratchets up Yahoo Canada Finance	null	0.9325
1968	40	661	FOREX Dollar struggles as U S yields soften Bitcoin soars Reuters	null	0.9984
1969	41	361	Musk s bitcoin bet fuels gains in companies already invested Reuters	null	0.9818
1970	41	361	Musk s bitcoin bet fuels gains in companies already invested Reuters	null	0.9818
1971	41	601	Tesla s decision to accept Bitcoin opens it up to currency of thieves	null	0.7430
1972	40	1081	Bitcoin investors From buying a Bentley to losing it all	null	0.9081
1973	40	1141	Here s Why Bitcoin Stocks Are Soaring Today	null	0.9985
1974	40	1141	Legit Way to Play the Bitcoin Rally	null	0.9732
1975	41	301	Bitcoin soars 15 after Tesla says will accept it as payment	null	0.9985
1976	40	841	Bitcoin hits another record high after Tesla s 1 5 billion buy in	null	0.9682
1977	41	121	Bitcoin Late January Breakout Held Now On Its Way To 50K Investing com	null	0.9325
1978	40	1141	Bitcoin Driven Higher by TWAP Buying as Price Stabilizes at All Time Highs	null	0.9325
1979	40	781	Bitcoin s Tesla Driven Rally Fizzles After Prices Hit 48 000	null	0.9682
1980	40	901	Bitcoin soars to new highs and oil jumps as outlook brightens with US stocks set to slip as markets	null	0.9995
1981	40	961	Bitcoin Miner Riot Blockchain Names Jason Les CEO	null	-0.5574
1982	40	1261	With Elon Musk at the wheel Bitcoin hits 95 on the 100 point extreme fear to extreme greed index	null	-0.7096
1983	40	1321	Bitcoin soars above 48 000 to new record after Tesla s 1 5 billion investment CNBC After Hours	null	0.9985
1984	40	1261	The Bitcoin rally isn t enough to dethrone the mighty dollar NewsChannel 3 12	null	0.9682
1985	40	1141	Here s Why Bitcoin Stocks Are Soaring Today The Motley Fool	null	0.9984
1986	41	241	Musk s bitcoin bet fuels gains in companies already invested By Reuters	null	0.9818
1987	41	241	Musk s bitcoin bet fuels gains in companies already invested By Reuters	null	0.9818
1988	41	301	Musk s bitcoin bet fuels gains in companies already invested	null	0.9818
1989	41	361	Elrond Cryptocurrency Has Soared 723 This Year Dwarfing Bitcoin Dogecoin Gains Here s Why	null	0.9818
1990	40	1201	The Bitcoin rally isn t enough to dethrone the mighty dollar	null	0.9682
1991	40	1201	The Bitcoin rally isn t enough to dethrone the mighty dollar	null	0.9682
1992	41	301	Musk s bitcoin bet fuels gains in companies already invested	null	0.9818
1993	41	301	Musk s bitcoin bet fuels gains in companies already invested	null	0.9818
1994	40	1201	The Bitcoin rally isn t enough to dethrone the mighty dollar KVIA	null	0.9682
1995	41	61	Dollar wallows at two week low bitcoin steadies after surge past 48 000	null	-0.9682
1996	41	121	Dollar wallows at two week low bitcoin steadies after surge past 48 000	null	-0.9682
1997	40	961	Forget Bitcoin Buy PayPal and Square Instead The Motley Fool	null	-0.5859
1998	41	241	Musk s bitcoin bet fuels gains in companies already invested	null	0.9818
1999	41	241	Musk s bitcoin bet fuels gains in companies already invested	null	0.9818
2000	41	121	Former MP Central Banks Should Ban Bitcoin	null	-0.5574
2001	40	1201	FOREX U S dollar drops to two week low bitcoin eyes 50 000	null	-0.9682
2002	40	1201	ETFs to Ride the Tesla Driven Bitcoin Rally	null	0.9682
2003	40	961	Wisconsin woman allegedly paid in bitcoin for murder for hire on dark web	null	-0.6908
2004	41	121	Reddit User Who Leaked Tesla s Bitcoin Investment News Was Just High	null	0.9623
2005	40	961	GLOBAL MARKETS Stocks mostly ease off record highs bitcoin rise again	null	0.9842
2006	41	121	Reddit User Who Leaked Tesla s Bitcoin Investment News Was Just High	null	0.9623
2007	41	301	Musk s Bitcoin Bet Fuels Gains in Companies Already Invested	null	0.9818
2008	40	1321	Ethereum Surpasses Bitcoin To Become Largest Network For Trustless Money Settlement	null	-0.5106
2009	40	901	Opening Bell Economic Rebound Hopes Lift Futures Global Stocks Oil Bitcoin Investing com	null	0.9846
2010	40	1201	Tesla Will Accept Bitcoin for Cars Buys 1 5 Billion Worth of the Cryptocurrency	null	0.5423
2011	40	1021	Woman Charged In Failed Murder For Hire Plot Using Bitcoin	null	-0.8689
2012	40	1021	Woman Charged In Failed Murder For Hire Plot Using Bitcoin	null	-0.8689
2013	40	1201	The Bitcoin rally isn t enough to dethrone the mighty dollar	null	0.9682
2014	41	541	Why This Tesla Bitcoin Marriage Won t Live Up To The Hype Investing com	null	0.8934
2015	41	241	Dollar wallows at two week low bitcoin steadies after surge past 48 000 By Reuters	null	-0.9682
2016	40	1201	Former British MP says central banks should ban Bitcoin	null	-0.5574
2017	41	61	Opening Bell Economic Rebound Hopes Lift Futures Global Stocks Oil Bitcoin Investing com CA	null	0.9846
2018	40	841	First Mover Elon Musk s bitcoin Bet Pays Off With 270M Gain on First Day	null	0.9818
2019	40	781	Will other companies follow Tesla s lead and load up on Bitcoin	null	0.7906
2020	41	301	Business Report GTA 1M homes Bitcoin tops 48K overnight thanks to Elon Twitter earnings	null	0.7351
2021	40	1	Bitcoin extends gains above 47 000 in Asia Reuters	null	0.9826
2022	40	1	Bitcoin extends gains above 47 000 in Asia Reuters	null	0.9826
2023	40	661	FOREX Dollar struggles as U S yields soften Bitcoin soars Reuters	null	0.9984
2024	40	661	Tesla s 1 5 billion bitcoin investment is already up 37 as regulatory scrutiny ratchets up Yahoo Canada Finance	null	0.9325
2025	41	361	Musk s bitcoin bet fuels gains in companies already invested Reuters	null	0.9818
2026	41	361	Musk s bitcoin bet fuels gains in companies already invested Reuters	null	0.9818
2027	42	1141	Bitcoin donations surge to jailed Kremlin critic Navalny s cause data	null	-0.6486
2028	42	1261	Price Of Bitcoin Hits High As Two More Financial Giants Add Crypto Support	null	0.9741
2029	42	1141	Bitcoin donations surge to jailed Kremlin critic Navalny s cause data	null	-0.6486
2030	42	961	Bitcoin s big moment Mastercard jumps on the bandwagon NewsChannel 3 12	null	0.9970
2031	42	781	Bitcoin Options Market Sees Low Odds of Sky High Rally in 2021 CoinDesk	null	0.9682
2032	42	961	Bitcoin s big moment Mastercard jumps on the bandwagon	null	0.9970
2033	42	1021	Bitcoin surges 7 to a record high amid new adoption from Mastercard and BNY Mellon	null	0.9682
2034	42	841	Bitcoin Surges to All Time High After BNY Mellon Embraces Cryptocurrencies	null	0.9682
2035	42	841	Bitcoin blows past 48 000 to hit another record high as major financial firms warm to crypto	null	0.9716
2036	42	661	Bitcoin price rally to record highs might resemble a bubble but on chain metrics disapprove	null	0.8885
2037	42	841	Bitcoin soars to all time high after BNY Mellon announces crypto venture	null	0.9990
2038	42	841	Bitcoin at Center Stage and Record High as Mastercard BNY Go Crypto CoinDesk	null	0.9682
2039	42	781	Bitcoin Options Market Sees Low Odds of Sky High Rally in 2021	null	0.9682
2040	42	961	Bitcoin price hits new all time high as Mastercard and America s oldest bank welcome cryptocurrency	null	0.9750
2041	42	841	Bitcoin surges to all time high after BNY Mellon embraces cryptocurrencies	null	0.9682
2042	42	181	Bitcoin s pullback slashes 23 from crypto evangelist Michael Saylor s MicroStrategy	null	-0.9955
2043	42	841	Bitcoin surges to all time high after BNY Mellon embraces cryptocurrencies	null	0.9682
2044	42	841	Bitcoin surges to all time high after BNY Mellon embraces cryptocurrencies	null	0.9682
2045	42	301	Bitcoin Pop Pot Stock Drop Bumble Debut 3 Things to Watch	null	-0.9970
2046	42	841	Bitcoin soars to all time high after BNY Mellon announces crypto venture	null	0.9990
2047	42	841	Bitcoin Hits New All Time High as BNY Mellon Announces Crypto Custody	null	0.9682
2048	42	1081	Bitcoin soars on crypto love from Mastercard and BNY Mellon	null	0.9986
2049	42	841	Bitcoin surges to all time high after BNY Mellon embraces cryptocurrencies	null	0.9682
2050	42	301	Bitcoin Pop Pot Stock Drop Bumble Debut 3 Things to Watch By Investing com	null	-0.9970
2051	42	1081	Bitcoin donations surge to jailed Kremlin critic Navalny s cause data	null	-0.6486
2052	42	1141	Bitcoin donations to jailed Kremlin critic Navalny s cause surge data	null	-0.6486
2053	42	1	Bitcoin Litecoin Ripple Outlook Mastercard to Embrace Certain Cryptocurrencies	null	0.5267
2054	42	301	Bitcoin Pop Pot Stock Drop Bumble Debut 3 Things to Watch By Investing com	null	-0.9970
2055	42	301	Bitcoin donations surge to jailed Kremlin critic Navalny s cause data By Reuters	null	-0.6486
2056	42	1141	Bitcoin Donations Surge to Jailed Kremlin Critic Navalny s Cause Data	null	-0.6486
2057	42	1021	Wall Street player BNY Mellon jumps on bitcoin bandwagon	null	0.9970
2058	42	1081	Bitcoin donations surge to jailed Kremlin critic Navalny s cause data	null	-0.6486
2059	42	61	Avalanche AVAX Matic and Celo rally while Bitcoin price pulls back	null	0.9682
2060	42	1021	Wall Street Player BNY Mellon Jumps On Bitcoin Bandwagon	null	0.9970
2061	42	241	Why Ethereum Killers Cardano Polkadot Avalanche Are Surging Despite Bitcoin Slump	null	-0.6486
2062	42	1081	Market digest Bitcoin rallies to new record high after big dip what s behind it	null	0.9682
2063	42	841	First Mover Bitcoin at Center Stage and Record High as Mastercard BNY Go Crypto	null	0.9682
2064	42	1201	UPDATE 1 Bitcoin soars to all time high after BNY Mellon announces crypto venture	null	0.9990
2065	42	961	FOREX U S dollar dips for 4th day after weak data bitcoin hits record high	null	0.9590
2066	42	1261	FOREX U S dollar falls vs some currencies bitcoin climbs to record peak	null	-0.9993
2067	42	1021	Reddit User Who Predicted Elon Musk Bitcoin Buy Was High On Acid	null	0.9682
2068	42	1021	Riot Blockchain jumps 24 as bitcoin momentum continues and the company notches new mining milestone	null	0.9967
2069	42	901	RIOT Stock News Why Bitcoin Mining Company Riot Blockchain Is Climbing Today	null	-0.8374
2070	42	1081	Ethereum is struggling again vs Bitcoin Why is ETH BTC showing weakness	null	-0.6808
2071	42	901	Uber won t buy bitcoin with its cash but would consider accepting it as payment CEO says	null	0.7092
2072	42	61	U S dollar dips for 4th day after weak data bitcoin hits record high	null	0.9590
2073	41	61	Dollar wallows at two week low bitcoin steadies after surge past 48 000 Reuters	null	-0.9682
2074	41	361	Musk s bitcoin bet fuels gains in companies already invested Reuters	null	0.9818
2075	41	361	Musk s bitcoin bet fuels gains in companies already invested Reuters	null	0.9818
2076	42	781	UPDATE 1 BNY Mellon joins cryptocurrency party with new Digital Assets division Reuters	null	0.5267
2077	42	841	Bitcoin surges to all time high after BNY Mellon embraces cryptocurrencies Reuters	null	0.9682
2078	42	841	BNY Mellon joins cryptocurrency party with new Digital Assets division Reuters	null	0.5267
2079	42	1141	Bitcoin donations surge to jailed Kremlin critic Navalny s cause data Reuters	null	-0.6486
2080	42	1141	UPDATE 1 Bitcoin soars to all time high after BNY Mellon announces crypto venture Reuters	null	0.9990
2081	43	1	First North American Bitcoin ETF Approved by Canadian Securities Regulator	null	0.6124
2082	42	961	Bitcoin price hits new all time high as Mastercard and America s oldest bank welcome cryptocurrency	null	0.9750
2083	42	1261	Bitcoin surges to record high as Mastercard and Uber show cryptocurrency interest	null	0.9757
2084	42	721	Bitcoin jumps by 2 000 after Elon Musk posts an image of a crypto themed ring and makes a vague	null	0.9970
2085	42	961	Bitcoin s big moment Mastercard jumps on the bandwagon	null	0.9970
2086	42	1321	Bitcoin surges 7 to a record high amid new adoption from Mastercard and BNY Mellon	null	0.9682
2087	42	1261	Bitcoin Just Set a New All Time High Here Are What Analysts Are Saying	null	0.9682
2088	42	961	Bitcoin s big moment Mastercard jumps on the bandwagon NewsChannel 3 12	null	0.9970
2089	42	781	Bitcoin Options Market Sees Low Odds of Sky High Rally in 2021 CoinDesk	null	0.9682
2090	42	841	Bitcoin blows past 48 000 to hit another record high as major financial firms warm to crypto	null	0.9716
2091	42	661	Bitcoin price rally to record highs might resemble a bubble but on chain metrics disapprove	null	0.8885
2092	42	1141	Bitcoin donations surge to jailed Kremlin critic Navalny s cause data	null	-0.6486
2093	42	841	Bitcoin at Center Stage and Record High as Mastercard BNY Go Crypto CoinDesk	null	0.9682
2094	42	1261	Bitcoin surges to record high as Mastercard and Uber show cryptocurrency interest	null	0.9757
2095	42	781	Bitcoin Options Market Sees Low Odds of Sky High Rally in 2021	null	0.9682
2096	42	841	Bitcoin surges to all time high after BNY Mellon embraces cryptocurrencies	null	0.9682
2097	42	841	Bitcoin surges to all time high after BNY Mellon embraces cryptocurrencies	null	0.9682
2098	42	841	Bitcoin surges to all time high after BNY Mellon embraces cryptocurrencies	null	0.9682
2099	42	841	Bitcoin soars to all time high after BNY Mellon announces crypto venture	null	0.9990
2100	42	1141	Bitcoin donations to jailed Kremlin critic Navalny s cause surge data	null	-0.6486
2101	42	841	Bitcoin soars to all time high after BNY Mellon announces crypto venture	null	0.9990
2102	42	841	Bitcoin soars to all time high after BNY Mellon announces crypto venture	null	0.9990
2103	42	1021	Bitcoin soars on crypto love from Mastercard and BNY Mellon	null	0.9986
2104	42	841	Bitcoin Hits New All Time High as BNY Mellon Announces Crypto Custody	null	0.9682
2105	42	841	Bitcoin surges to all time high after BNY Mellon embraces cryptocurrencies	null	0.9682
2106	43	1	Bitcoin clings to Tesla gains dollar set for weekly loss	null	0.7906
2107	42	1141	Bitcoin donations surge to jailed Kremlin critic Navalny s cause data	null	-0.6486
2108	42	1141	Bitcoin donations surge to jailed Kremlin critic Navalny s cause data	null	-0.6486
2109	42	1141	Bitcoin donations surge to jailed Kremlin critic Navalny s cause data	null	-0.6486
2110	42	1081	Bitcoin donations surge to jailed Kremlin critic Navalny s cause data	null	-0.6486
2111	42	1021	Wall Street player BNY Mellon jumps on bitcoin bandwagon	null	0.9970
2112	42	1021	Wall Street Player BNY Mellon Jumps On Bitcoin Bandwagon	null	0.9970
2113	42	1141	Bitcoin Donations Surge to Jailed Kremlin Critic Navalny s Cause Data	null	-0.6486
2315	53	661	Bitcoin and ethereum prices seem high says Musk	null	0.9682
2114	43	61	Forget 2021 Here s How High Bitcoin Price Can Go By 2026	null	0.9643
2115	43	121	European shares dip Bitcoin hits record high	null	0.9726
2116	42	841	First Mover Bitcoin at Center Stage and Record High as Mastercard BNY Go Crypto	null	0.9682
2117	42	1261	UPDATE 1 Bitcoin donations surge to jailed Kremlin critic Navalny s cause data	null	-0.6486
2118	43	301	FOREX Dollar headed for weekly loss bitcoin hits record 49 000	null	-0.9682
2119	42	1201	UPDATE 1 Bitcoin soars to all time high after BNY Mellon announces crypto venture	null	0.9990
2120	43	361	Markets Oil Drop In Asia But Bitcoin Edges Towards 50 000	null	-0.9970
2121	43	1	European shares dip Bitcoin hits record high	null	0.9726
2122	43	1	European shares dip Bitcoin hits record high	null	0.9726
2123	43	1	European shares dip Bitcoin hits record high	null	0.9726
2124	42	1261	Price Of Bitcoin Hits High As Two More Financial Giants Add Crypto Support	null	0.9741
2125	43	121	Markets Oil Drop In Asia But Bitcoin Targets 50 000	null	-0.9970
2126	43	541	Jack Dorsey and Jay Z to set up 500 BTC blind Bitcoin trust in India Africa	null	0.8225
2127	43	1	European shares dip Bitcoin hits record high	null	0.9726
2128	42	1261	Key financial crisis regulator Sheila Bair says stay away frombitcoin while it is at nosebleed	null	-0.6249
2129	42	901	Uber won t buy bitcoin with its cash but would consider accepting it as payment CEO says	null	0.7092
2130	42	1381	Dollar headed for weekly loss bitcoin renews record above 48 000	null	-0.9682
2131	43	301	FOREX Dollar headed for weekly loss bitcoin hits record 49 000	null	-0.9682
2132	43	1	Dollar headed for weekly loss bitcoin renews record above 48 000	null	-0.9682
2133	43	301	GLOBAL MARKETS European shares dip Bitcoin hits record high	null	0.9726
2134	43	241	Can the fast growth of Bitcoin BTC affect the rise of Ethereum ETH or XRP	null	0.9843
2135	42	1381	Forget Bitcoin Inside the insane world of altcoin cryptocurrency trading	null	-0.5574
2136	43	121	Markets oil drop in Asia but bitcoin edges towards 50 000	null	-0.9882
2137	43	241	Miami passes resolution to allow paying city workers in Bitcoin in attempt to woo big tech	null	0.6124
2138	42	1021	Reddit User Who Predicted Elon Musk Bitcoin Buy Was High On Acid	null	0.9682
2139	42	1261	FOREX U S dollar falls vs some currencies bitcoin climbs to record peak	null	-0.9993
2140	43	61	Black investors view Bitcoin other cryptocurrencies as way to fix economic injustice	null	-0.5719
2141	43	1	Dollar Headed for Weekly Loss Bitcoin Renews Record Above 48 000	null	-0.9682
2142	43	1	Dollar headed for weekly loss bitcoin renews record above 48 000	null	-0.9682
2143	42	481	S P 500 to rise another 10 despite high valuations Pictet Asset Mgmt Reuters	null	0.9371
2144	42	481	S P 500 to rise another 10 despite high valuations Pictet Asset Mgmt Reuters UK	null	0.9371
2145	42	781	UPDATE 1 BNY Mellon joins cryptocurrency party with new Digital Assets division Reuters	null	0.5267
2146	42	841	Bitcoin surges to all time high after BNY Mellon embraces cryptocurrencies Reuters	null	0.9682
2147	42	841	BNY Mellon joins cryptocurrency party with new Digital Assets division Reuters	null	0.5267
2148	42	1141	Bitcoin donations surge to jailed Kremlin critic Navalny s cause data Reuters	null	-0.6486
2149	42	1141	UPDATE 1 Bitcoin soars to all time high after BNY Mellon announces crypto venture Reuters	null	0.9990
2150	43	1	Dollar headed for weekly loss bitcoin renews record above 48 000 Reuters	null	-0.9682
2151	43	1141	Bitcoin price enters consolidation but is a rally past 50K now inevitable	null	0.9855
2152	43	1021	Bitcoin climbs 4 to a new high before paring gains as the cryptocurrency s record breaking surge	null	0.9939
2153	43	841	Bitcoin aiming high MarketPulse	null	0.9682
2154	43	1261	Can Bitcoin Surge Above 50 000 Amid Flurry Of Positive News Investing com	null	0.5574
2155	43	1261	Traders say there aren t many reasons to be bearish on Bitcoin	null	-0.9970
2156	43	781	Regulator gears up for Bitcoin crackdown amid digital coin frenzy	null	0.6908
2157	43	841	How bad is bitcoin for the environment really	null	-0.5423
2158	43	781	More Bullish Tailwinds for Bitcoin as US Committee Approves 593B in Benefits	null	0.9974
2159	43	1261	Banks Might Treat Bitcoin Like Real Money These Experts Weigh the Pros and Cons	null	0.6369
2160	43	1381	Canada approves first bitcoin ETF raising hopes that the US SEC will soon follow	null	0.6705
2161	44	601	Jack Dorsey Jay Z to set up Bitcoin development fund as internet currency goes mainstream	null	0.7906
2162	43	1021	XRP jumps 15 while bitcoin and ether trade near record highs as Tesla BNY Mellon and Mastercard	null	0.9970
2163	43	841	Beyond Bitcoin Little known project jumps 116 on 2 75M EU new money grant	null	0.9972
2164	43	1261	Canada approves first bitcoin ETF raising hopes that the US SEC will soon follow	null	0.6705
2165	43	1201	Major companies and banks are now buying into bitcoin If you want exposure here s how	null	0.9360
2166	43	1321	Stocks Still Buoyant As Bitcoin Retreats From All time High	null	0.9716
2167	44	601	A senator has urged Elon Musk to move to Wyoming as it has the best laws for bitcoin and is the	null	0.6369
2168	43	1141	Black Swan Author Calls Bitcoin a Failure at Least for Now	null	-0.5106
2169	43	1021	Jay Z Jack Dorsey Link Up For New Bitcoin Venture	null	0.7906
2170	43	1261	Banks Might Treat Bitcoin Like Real Money These Experts Weigh the Pros and Cons	null	0.6369
2171	43	1021	Seems like a good price Video of 1m bitcoin pizza order from 2011 resurfaces as value hits	null	0.7783
2172	43	841	A Bullish 1 Million Bitcoin Forecast as Year of Ox Begins CoinDesk	null	0.9970
2173	43	841	First Mover Bullish 1 Million Bitcoin Forecast as Year of Ox Begins	null	0.9970
2174	44	601	A senator has urged Elon Musk to move to Wyoming as it has the best laws for bitcoin and is the	null	0.6369
2175	43	1	Dollar headed for weekly loss bitcoin renews record above 48 000 Reuters	null	-0.9682
2176	43	721	Bitcoin clings to Tesla gains dollar set for weekly loss Reuters	null	0.7906
2177	43	1021	Top Ten Weekend reads a marijuana friendly retirement location	null	0.6124
2178	46	121	Bitcoin Retreats After Weekend Rally to Record of Nearly 50 000	null	0.9682
2179	46	121	Bitcoin rally falters just short of 50 000 as investors take profit	null	0.9747
2180	45	1081	Bitcoin approaches 50 000 wider adoption fuels record rally	null	0.9682
2181	46	121	Bitcoin rally falters just short of 50 000 as investors take profit	null	0.9747
2182	45	1261	Bitcoin soars nearing 50 000 for the first time KION546	null	0.9985
2183	45	781	Bitcoin Sets New All Time High of 49 7K Putting 50K Within Striking Distance CoinDesk	null	0.9682
2184	45	901	Bitcoin soars nearing 50 000 for the first time	null	0.9985
2185	45	1141	Bitcoin s Epic Run Is Winning More Attention From Wall Street	null	0.5267
2186	45	781	Bitcoin Sets New All Time High of 49 7K Putting 50K Within Striking Distance	null	0.9682
2187	45	781	Bitcoin nears 50 000 wider adoption fuels record rally	null	0.9682
2188	45	841	Bitcoin nears 50 000 wider adoption fuels record rally	null	0.9682
2189	45	841	Bitcoin nears 50 000 wider adoption fuels record rally	null	0.9682
2190	45	841	Bitcoin approaches 50 000 wider adoption fuels record rally	null	0.9682
2191	45	781	Bitcoin nears 50 000 wider adoption fuels record rally	null	0.9682
2192	45	841	Bitcoin nears 50 000 wider adoption fuels record rally amNewYork	null	0.9682
2193	45	841	Bitcoin approaches 50 000 wider adoption fuels record rally	null	0.9682
2194	45	841	Bitcoin approaches 50 000 wider adoption fuels record rally	null	0.9682
2195	45	841	Bitcoin approaches 50 000 wider adoption fuels record rally	null	0.9682
2196	45	901	Bitcoin soars nearing 50 000 for the first time	null	0.9985
2197	45	841	Bitcoin nears 50 000 wider adoption fuels record rally Reuters	null	0.9682
2198	45	841	Bitcoin nears 50 000 wider adoption fuels record rally Reuters	null	0.9682
2199	45	841	Bitcoin nears 50 000 wider adoption fuels record rally Reuters	null	0.9682
2200	45	961	UPDATE 1 Bitcoin approaches 50 000 wider adoption fuels record rally Reuters	null	0.9682
2201	46	1	Elon Musk says he supports top dogecoin holders selling most of their coins Reuters	null	-0.8934
2202	46	301	Dollar held down by doubts over pace of U S recovery bitcoin retreats from record high Reuters	null	0.9628
2203	47	1261	Evolve Becomes Second Canadian Issuer to Win Approval for Bitcoin ETF	null	0.7845
2204	47	841	Osprey Fund s Bitcoin Trust Is Now Available to Retail Investors via OTC	null	0.5106
2205	48	481	Bitcoin Hits New All Time High Above 51 000 Squeezing Altcoins	null	0.9682
2206	47	901	Bitcoin jumps to within 2 of 50 000 as currency hits new high thanks to Wall Street interest	null	0.9984
2207	47	841	Bitcoin tops 50 000 for the first time ever in dizzying rally	null	0.9758
2208	48	421	Bitcoin Jumps to All Time High as Cryptocurrency Fever Continues	null	0.9982
2209	47	1021	Bitcoin Hit All Time High at Over 50 000 Leaving Us in Dire Need of Sound Financial Advice	null	0.9584
2210	47	781	Bitcoin soars past 50 000 for the first time	null	0.9985
2211	48	481	Bitcoin Hits New High Above 51K Shrugging Off Rising Bond Yields	null	0.9682
2212	48	481	Bitcoin hits a new high of 51 3K as analyst declares historic parabolic advance	null	0.9682
2213	47	1381	Bitcoin Price Tops 50K for the First Time	null	0.5106
2214	47	781	Bitcoin hits 50 000 milestone as world s No 1 cryptocurrency extends gain in 2021	null	0.9805
2215	47	841	Bitcoin tops 50 000 for the first time	null	0.5106
2216	47	781	Bitcoin soars past 50 000 for the first time	null	0.9985
2217	47	781	Bitcoin soars past 50 000 for the first time	null	0.9985
2218	48	481	JPMorgan Says Bitcoin Rally Unsustainable Unless Volatility Ebbs	null	0.9682
2219	47	841	Bitcoin Jumps to 50 000 as Record Breaking Rally Accelerates	null	0.9982
2220	47	781	Instant View Bitcoin Tops 50 000 for the First Time	null	0.5106
2221	47	1081	Bitcoin s Growth Will Continue to Boost Square Stock	null	0.6486
2222	47	1021	After Breaching 50K Bitcoin Gives Up Earlier Gains	null	0.9882
2223	47	781	Here s what 5 experts said about bitcoin s momentous record setting rally above 50 000	null	0.9682
2224	47	781	Instant View Bitcoin tops 50 000 for the first time	null	0.5106
2225	48	481	JPMorgan Says Bitcoin Rally Unsustainable Unless Volatility Ebbs	null	0.9682
2226	47	841	NYDIG Files for Bitcoin ETF Adding to Firms Hoping 2021 Is When SEC Finally Says Yes	null	0.6705
2227	47	1081	Why I still need some convincing over the prospects for Bitcoin	null	0.5994
2228	47	1201	FOREX Dollar gains as Treasury yields rise bitcoin breaches 50 000	null	0.9955
2229	47	1021	Tesla Helps Push Bitcoin Price to New High	null	0.9738
2230	47	1261	Fed s Bullard says bitcoin s meteoric rise will have little effect on the dollar global economy	null	0.9818
2231	47	1261	Evolve wins second Canadian Bitcoin ETF as Ontario regulator approves application	null	0.7506
2232	47	781	JP Morgan hints it could join party as Bitcoin continues to flirt with 50k	null	0.7531
2233	47	1081	Nasdaq Gives Up Early Gains but Crypto Stocks Are Getting a 50 000 Bitcoin Boost The Motley Fool	null	0.9531
2234	48	361	Banks seek advice on Bitcoin compliance as digital coin hits record high	null	0.9682
2235	47	1141	Markets respond after Bitcoin pierces 50 000 to reach new all time high	null	0.9686
2236	47	1141	5 Easy Methods to Maintain Your Bitcoin Investment Safely Cascade Business News	null	0.7269
2237	47	841	MicroStrategy to borrow 600 million to fund bitcoin buying	null	0.9325
2238	47	1201	FOREX Dollar gains as Treasury yields rise bitcoin breaches 50 000	null	0.9955
2239	47	1201	Dow Rallies As Bulls Battle Bears Boeing Stock Makes Key Move Bitcoin Play Pares Gains	null	0.9814
2240	47	841	Mining Machine Maker Canaan Rises 20 as Bitcoin Reaches a New All Time High	null	0.9690
2241	47	901	Dow Jones Today Stocks Rise Amid Stimulus Pandemic Optimism Bitcoin Hits 50 000	null	0.9855
2242	47	121	If Bitcoin Creator Satoshi Nakamoto Is Alive He s Sitting On One Of The Largest Personal Fortunes On The Planet Celebrity Net Worth	null	0.5423
2243	47	241	Bitcoin Extends Its Rally to an All Time High Close to 50 000 Bloomberg	null	0.9920
2244	47	781	Instant View Bitcoin tops 50 000 for the first time Reuters	null	0.5106
2245	47	781	Bitcoin Tops 50K and Crypto s Nouveau Riche Move In CoinDesk CoinDesk	null	0.5106
2246	47	841	INSTANT VIEW Bitcoin tops 50 000 for the first time Reuters	null	0.5106
2247	47	901	Bitcoin Jumps To 50 000 as Record Breaking Rally Accelerates	null	0.9982
2248	47	1021	Bitcoin Breaks 50 000 for the First Time as Record Shattering 2021 Rally Extends to 74 Amid Wall Street Adoption	null	0.9702
2249	47	1021	Bitcoin Hit All Time High at Over 50 000 Leaving Us in Dire Need of Sound Financial Advice	null	0.9584
2250	49	181	Dow Falls As Bitcoin Tops 52 000 Tesla Cuts Prices While Walmart Dives On Earnings	null	-0.9992
2251	48	1141	Bitcoin soars to over 51 000 What s going on We answer your questions	null	0.9985
2252	48	1381	Bitcoin Surges Past 52k Verizon Stock Up	null	0.7906
2253	48	1201	Bitcoin Punches Above 51 700 Is This Rally Different	null	0.9682
2254	49	781	Bitcoin is eating Gold GOLD BTC ratio falls to an all time low	null	-0.9994
2255	48	1201	Bitcoin ATMs ripe for fraud without more oversight N J watchdog says	null	-0.5859
2256	49	1	CleanSpark Bitcoin Surge Merits a Price Target Boost	null	0.6597
2257	49	1	Bitcoin at 1 million Some analysts are bullish but others warn of risks ahead	null	0.9858
2258	49	841	First Mover Who ISN T Dabbling as Bitcoin Passes 52K Ether Tops 1 900	null	0.5106
2259	49	841	Opinion Why buying a Tesla with bitcoin would be environmentally unfriendly	null	0.9100
2260	48	1021	Dow Falls As Bitcoin Jumps Toward 52 000 Apple Tesla Hit Key Support Level While Shopify Tumbles	null	-0.9992
2261	49	721	Forget Bitcoin Buy These Dominant Tech Stocks Instead The Motley Fool	null	-0.5859
2262	49	661	Kia Motors America Victim of Ransomware Attack Demanding 20M in Bitcoin Report Claims	null	-0.8834
2263	49	301	FOREX Dollar buoyed by strong U S data Bitcoin near record 52 640 By Reuters	null	0.5106
2264	49	541	FOREX Dollar buoyed by strong U S data Bitcoin near record 52 640	null	0.5106
2265	48	721	Bitcoin jumps to a new high above 51 700 but JPMorgan says the cryptocurrency s rise could be unsustainable BTC	null	0.9981
2266	48	1321	U S Charges Members of North Korean Hacker Group of Allegedly Stealing Over 1 Billion in Bitcoin	null	-0.7003
2267	49	541	PRECIOUS Gold rebounds as rally in U S Treasury yields abate Reuters	null	0.9803
2268	49	841	FOREX Dollar snaps two day winning streak bitcoin hovers near record highs Reuters	null	0.5267
2269	49	901	CANADA STOCKS TSX falls on dour jobless data vaccine rollout delays Reuters	null	-0.9993
2270	49	661	Bitcoin Could Rise 20 000 Prior To Overbought Territory Investing com	null	0.9818
2271	49	721	Bitcoin hits new high of above 52 600 before paring gains as the currency s market value nears 1	null	0.9944
2272	49	1261	Bitcoin Miner Ebang Closes 70M Follow Up Public Offering	null	0.7906
2273	50	361	Bitcoin Nears 1 Trillion Value as Crypto Jump Tops Other Assets	null	0.7506
2274	49	1201	What s the Best Bitcoin Wallet	null	0.6369
2275	49	781	Bitcoin is eating Gold GOLD BTC ratio falls to an all time low	null	-0.9994
2276	50	1	2 Key Reasons Why Bitcoin Bulls Expect Further Upside	null	0.9325
2277	49	841	First Mover Who ISN T Dabbling as Bitcoin Passes 52K Ether Tops 1 900	null	0.5106
2278	49	721	Forget Bitcoin Buy These Dominant Tech Stocks Instead The Motley Fool	null	-0.5859
2279	50	181	Altcoins breakout to new highs while Bitcoin price retests a key support	null	0.9493
2280	49	1321	Recovery Unplugged Treatment Centers Now Accepting Bitcoin For Addiction Care	null	0.7003
2281	49	841	Opinion Why buying a Tesla with bitcoin would be environmentally unfriendly	null	0.9100
2282	50	361	Bill Gates explains why he associates Bitcoin with tax avoidance and illegal activity CryptoSlate	null	-0.7430
2283	49	1261	Cathie Wood Adds to Tesla Wager After Post Bitcoin Pullback	null	-0.9953
2284	49	721	Kia Motors America Victim of Ransomware Attack Demanding 20M in Bitcoin Report Claims	null	-0.8834
2285	49	901	FOREX Dollar snaps two day winning streak bitcoin hovers near record highs	null	0.5267
2286	49	1081	Dow Falls As Bitcoin Tops 52 000 Tesla Cuts Prices While Walmart Dives On Earnings	null	-0.9992
2287	49	1021	Cathie Wood Adds to Tesla Wager After Post Bitcoin Pullback	null	-0.9953
2288	49	541	PRECIOUS Gold rebounds as rally in U S Treasury yields abate Reuters	null	0.9803
2289	49	841	FOREX Dollar snaps two day winning streak bitcoin hovers near record highs Reuters	null	0.5267
2290	49	901	CANADA STOCKS TSX falls on dour jobless data vaccine rollout delays Reuters	null	-0.9993
2291	49	1201	Dollar snaps two day winning streak bitcoin hovers near record highs Reuters	null	0.5267
2292	49	1261	Cryptocurrency Ethereum hits record high lifted by bitcoin institutional demand Reuters	null	0.9661
2293	49	1261	Cryptocurrency Ethereum hits record high lifted by bitcoin institutional demand Reuters	null	0.9661
2294	53	601	Record Moves Bitcoin Jumps To 57 000 Ethereum Crosses 2 000 As Elon Musk Calls Prices High	null	0.9982
2295	53	301	Bitcoin Rally Faces Potential Test From Falling Market Liquidity	null	0.9657
2296	53	301	Bitcoin Rally Faces Potential Test From Falling Market Liquidity	null	0.9657
2297	53	601	Bitcoin Is Up Nearly 100 This Year As Bull Market Continues	null	0.7906
2298	53	421	Bitcoin extends two month rally to surpass 58 000 live updates	null	0.9702
2299	53	601	Bitcoin s market value tops 1 trillion	null	0.6908
2300	52	1141	Bitcoin hits fresh high	null	0.9729
2301	53	481	Bitcoin hits fresh high	null	0.9729
2302	52	1081	Bitcoin extends two month rally to surpass 58 000 live updates	null	0.9702
2303	53	601	Bitcoin Faces Price Turbulence as Market Liquidity Falls Says JPMorgan	null	-0.9993
2304	52	1141	Bitcoin hits fresh high	null	0.9729
2305	53	601	Bitcoin and ethereum prices seem high says Musk	null	0.9682
2306	53	601	Bitcoin and ethereum prices seem high says Musk	null	0.9682
2307	53	601	Bitcoin and ethereum prices seem high says Musk	null	0.9682
2308	52	1141	Bitcoin hits fresh high	null	0.9729
2309	52	1201	Bitcoin Scales 58K for First Time YTD Gain Over 98	null	0.9818
2310	52	1141	Bitcoin hits fresh high	null	0.9729
2311	53	601	Bitcoin reaches new high RBI tightens digital security	null	0.9738
2312	53	601	Bitcoin and ethereum prices seem high says Musk	null	0.9682
2316	53	601	Bitcoin is increasingly cultist and supported by magical thinking says Barclays wealth	null	0.6705
2317	53	601	Bitcoin market value tops 1 trillion for first time ever as crypto price soars	null	0.9986
2318	53	601	Bitcoin market value tops 1 trillion for first time ever as crypto price soars	null	0.9986
2319	53	601	Bitcoin and ethereum prices seem high says Musk By Reuters	null	0.9682
2320	53	601	Bitcoin and ethereum prices seem high says Musk By Reuters	null	0.9682
2321	53	601	Bitcoin market value tops 1 trillion for first time ever as crypto price soars	null	0.9986
2322	53	601	Bitcoin s Rise Should Make Regulators Ask if the Fed s Policies Have a Hand in It WaPo	null	0.9851
2323	53	601	Elon Musk Says Bitcoin Prices Seem High After Record Week	null	0.9682
2324	53	601	Bitcoin and ethereum prices seem high says Musk By Reuters	null	0.9682
2325	53	601	Record Moves Bitcoin Jumps To 57 000 Ethereum Crosses 2 000 As Elon Musk Calls Prices High	null	0.9982
2326	52	961	Tesla Is Up 1 Billion on Bitcoin Investment	null	0.7906
2327	53	601	Crypto Surge Continues Market Up 750 Billion Nearly Doubling This Month As Bitcoin Hits New Highs	null	0.7906
2328	53	661	Even If Bitcoin Falls Again Company Adoption Of Crypto Is Not Going Away	null	-0.9993
2329	53	601	Elon Musk admits that bitcoin and ethereum seem high in exchange with gold bug Peter Schiff	null	0.9726
2330	53	661	Ether breaks 2 000 Bitcoin breaks a trillion market cap and Elon Musk is still loving crypto	null	0.5994
2331	53	541	Tesla has scored profits worth 1 billion on its bitcoin bet a Wedbush analyst estimates	null	0.5859
2332	53	541	Tesla has scored profits worth 1 billion on its bitcoin bet a Wedbush analyst estimates	null	0.5859
2333	53	421	Elon Musk is the Bitcoin buying hypocrite we deserve	null	0.9325
2334	52	781	Americans are becoming increasingly bullish on cryptocurrency as bitcoin soars to new records	null	0.9995
2335	53	601	Elon Musk Says Bitcoin Prices Seem High After Record Week	null	0.9682
2336	53	361	The best time to invest in bitcoin was yesterday says strategist as the cryptocurrency soars	null	0.9986
2337	53	601	Opinion Bitcoin s boom won t dethrone the dollar but that doesn t mean there s no danger	null	-0.7227
2338	53	601	Elon Musk admits that bitcoin and ethereum seem high in exchange with gold bug Peter Schiff	null	0.9726
2339	53	601	The BTC Breakout Continues as New Bitcoin ETF Launches	null	0.9325
2340	53	661	Bitcoin s value tops 1T for first time	null	0.6908
2341	52	721	Tesla is ideally positioned to become the world s most important Bitcoin bank TSLA	null	0.5984
2342	52	781	A hedge fund chief and crypto bull shares a SPAC investing strategy set to benefit in the inevitable bear market and breaks down why digital assets will be the next big beneficiary of the SPAC boom	null	0.8402
2343	52	901	Bloomberg Best Bitcoin Gold and Gamestop Podcast	null	0.6369
2344	52	1141	Bitcoin hits fresh high Reuters	null	0.9729
2345	53	1	Asia shares edge up as bond yields resources steal the show Reuters	null	0.7184
2346	53	1	Dollar falls as improving sentiment boosts riskier currencies Reuters	null	-0.9992
2347	53	1	Dollar falls as improving sentiment boosts riskier currencies Reuters	null	-0.9992
2348	53	1	Asia shares edge up as bond yields resources steal the show Reuters	null	0.7184
2349	53	121	Shares make guarded gains as bond yields resources spike Reuters	null	0.9837
2350	53	181	PRECIOUS Gold off 7 month low on dollar weakness but yields weigh Reuters	null	-0.8652
2351	53	601	Bitcoin slides 6 to below 55 000 Reuters UK	null	-0.9970
2352	54	421	3 Bitcoin Stocks That Could Crash 31 to 66 According to Wall Street	null	-0.9993
2353	53	1321	Retail suckers with FOMO will eventually get crushed on Bitcoin says Roubini	null	-0.7269
2354	53	1261	Market Wrap Bitcoin Stabilizes After Margin Calls Fuel Biggest Plunge in Month	null	-0.9988
2355	54	181	Bitcoin tumbles 17 as doubts grow over valuations	null	-0.9972
2356	54	181	Bitcoin Slumps Below 50 000 as Caution Sweeps Over Crypto Rally	null	-0.9963
2357	54	301	Bitcoin Needs a Safe Space for Redditors to Play	null	0.6486
2358	54	181	Bitcoin tumbles 17 as doubts grow over valuations	null	-0.9972
2359	54	541	Bitcoin drops after climbing to all time high	null	0.9682
2360	54	181	Bitcoin Falls as Much as 6 as It Pulls Back From Record High	null	-0.9990
2361	54	421	Bitcoin Drops Below 50K After Elon Musk Janet Yellen s Bearish Comments	null	-0.9970
2362	53	1261	Bitcoin Price Suffers Pullback Damaging Technical Landscape	null	-0.9962
2363	53	901	Bitcoin pares drop after tumbling on Elon Musk s price remarks	null	-0.9970
2364	53	961	Bitcoin drops after weekend climb to all time high	null	0.9818
2365	53	961	Bitcoin tumbles over 16 down below 50 000 in New York	null	-0.9970
2366	53	841	Bitcoin plunges 8 as record shattering rally succumbs to valuation fears	null	-0.9990
2367	54	241	Bitcoin falls as much as 6 as it pulls back from record high	null	-0.9990
2368	53	841	Bitcoin price crashes below 48K but is the bull market in danger	null	-0.9974
2369	54	121	Bitcoin falls as much as 6 as it pulls back from record high	null	-0.9990
2370	54	481	Bitcoin Slumps Below 50 000 as Caution Sweeps Over Crypto Rally	null	-0.9963
2371	53	721	Bitcoin Pulls Back From Record as Prices Give Up Weekend Gains	null	0.9882
2372	53	841	Bitcoin Sinks After Reaching Record High	null	0.9712
2373	53	721	Bitcoin Briefly Drops Below 48K as Analysts Say Rally Overdone Yellen Comments	null	0.9682
2374	53	1201	Bitcoin price crashes spectacularly wiping 10k from value	null	-0.9992
2375	54	181	Bitcoin falls as much as 6 as it pulls back from record high	null	-0.9990
2376	54	241	Bitcoin Might Be Tanking But These Ethereum Killers Are Posting Major Gains Today	null	0.9741
2377	53	1081	3 Bitcoin price metrics show bulls were not fazed by today s 1 6B liquidation	null	0.9325
2378	53	841	Bitcoin may suffer several corrections on its way to 200k suggests Peter Brandt CryptoSlate	null	-0.5423
2379	54	361	UPDATE 2 Bitcoin tumbles 17 as doubts grow over valuations	null	-0.9972
2380	54	541	Whale who sold Bitcoin before 2020 crash cashed out 156M before this week s 20 dip	null	-0.9993
2381	54	301	Bitcoin falls as much as 6 as it pulls back from record high By Reuters	null	-0.9990
2382	54	301	Fed President Reveals Bitcoin Rally Surprise As Price Falls Under 50 000	null	-0.9989
2383	53	841	First Mover Laser Eyes Can t Stop Correction as Bitcoin Tumbles to 53K	null	-0.9972
2384	53	1021	Why Another March Crash Is Not Likely For Bitcoin	null	-0.9993
2385	53	781	Tesla has made 1B on Bitcoin but Elon Musk says price looks high	null	0.9855
2386	54	541	Not Bitcoin but fintech is biggest COVID 19 story says JP Morgan	null	0.5105
2387	54	121	Bill Gates I m Not Bullish on Bitcoin	null	-0.9946
2388	54	541	Indian billionaire says the country s regulators need to step in and ban bitcoin	null	-0.5574
2389	53	1381	Did a tweet from Elon Musk cause the Bitcoin crash This is what we know	null	-0.9993
2390	53	1321	Retail suckers with FOMO will eventually get crushed on Bitcoin says Roubini	null	-0.7269
2391	53	1081	Tesla earns profit worth 1B in Bitcoin Wedbush s Dan Ives says	null	0.5859
2392	53	1381	Did a tweet from Elon Musk cause the Bitcoin crash This is what we know	null	-0.9993
2393	53	841	Bitcoin Falls Below 50 000 Hits Lowest Since Mid February	null	-0.9993
2394	53	181	PRECIOUS Gold off 7 month low on dollar weakness but yields weigh Reuters	null	-0.8652
2395	53	601	Bitcoin slides 6 to below 55 000 Reuters UK	null	-0.9970
2396	53	841	Bitcoin falls below 50 000 hits lowest since mid February Reuters	null	-0.9993
2397	53	841	Bitcoin falls below 50 000 hits lowest since mid February Reuters	null	-0.9993
2398	53	901	Bitcoin drops after weekend climb to all time high Reuters	null	0.9818
2399	53	1381	Did a tweet from Elon Musk cause the Bitcoin crash This is what we know	null	-0.9993
2400	54	181	Bitcoin falls as much as 6 as it pulls back from record high Reuters	null	-0.9990
2401	54	181	Bitcoin falls as much as 6 as it pulls back from record high Reuters	null	-0.9990
2402	54	541	Elon Musk s wealth tumbles by 15 billion after Tesla shares dropped 9 in one day	null	-0.9966
2403	55	1021	Here s how you could win 8 000 in Bitcoin investing classes and more	null	0.5859
2404	55	841	Bitcoin bounces back over 50K after Square MicroStrategy buy more	null	0.9818
2405	55	841	Bitcoin s Second North American ETF Just Started a Price War	null	-0.5994
2406	55	841	Bitcoin s Second North American ETF Just Started a Price War	null	-0.5994
2407	55	841	Bitcoin surges back above 51 000 after Square s 170 million investment Cathie Wood s positive	null	0.5574
2408	55	1261	Bitcoin s 2021 rally is minting thousands of crypto diamond hands millionaires	null	0.9732
2409	55	721	Bitcoin rally boosts searches for crypto debit cards	null	0.9729
2410	55	721	MARA Stock Is a Great Crypto Play Here as Bitcoin Keeps Soaring	null	0.9987
2411	55	841	Buy on the Dip This ETF Is Racking Up Bitcoin Exposure ETF Trends	null	0.7906
2412	55	1201	Fintech Stocks Win Why Boring Beats Bitcoin	null	0.8591
2413	56	361	Crypto Exchange Asks Customers To Return Bitcoin After Selling It At 88 Discount	null	-0.9325
2414	55	661	Ark s Cathie Wood says she s still very positive on bitcoin helping the price rise back past	null	0.9873
2415	55	1021	MicroStrategy Square Bought Bitcoin High Then the Price Fell	null	0.9682
2416	56	421	It s Gates Versus Musk as World s Richest Spar Over Bitcoin	null	0.5267
2417	55	961	Stock Price at Japan s Top Brokerage Riding High Thanks to Bitcoin Boom Report	null	0.9769
2418	55	901	Enter to win 10K worth in bitcoin when you donate to The Playing For Change Foundation	null	0.7579
2419	55	1261	Bitcoin s 2021 rally is minting thousands of crypto diamond hands millionaires	null	0.9732
2420	55	781	IRS loophole on cryptocurrency could help you on save on taxes	null	0.7096
2421	55	61	GLOBAL MARKETS Asian stocks open lower on inflation fears Reuters	null	-0.6124
2422	55	121	Bitcoin Tumbles Below 50 000	null	-0.9970
2423	55	361	Analysis High flying ARK ETF falters sparks fear of ripple effect Reuters	null	0.9571
2424	55	361	RPT ANALYSIS Bubbles bubbles bound for trouble Reuters	null	-0.9325
2425	55	841	Business intelligence firm MicroStrategy buys 19 452 Bitcoin worth 1 0261B and now holds 90K Bitcoin worth 4 5B at current prices Scott Chipolina Decrypt	null	0.7096
2426	55	961	Dow Rallies Tech Stocks Reverse As Bitcoin Tesla Rebound Nvidia Earnings Due While Square Dives On Sales Miss Investor s Business Daily	null	0.9806
2427	55	1201	Cryptos Bitcoin s 2021 rally is minting thousands of crypto diamond hands millionaires	null	0.9732
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add question	1	add_question
2	Can change question	1	change_question
3	Can delete question	1	delete_question
4	Can view question	1	view_question
5	Can add choice	2	add_choice
6	Can change choice	2	change_choice
7	Can delete choice	2	delete_choice
8	Can view choice	2	view_choice
9	Can add log entry	3	add_logentry
10	Can change log entry	3	change_logentry
11	Can delete log entry	3	delete_logentry
12	Can view log entry	3	view_logentry
13	Can add permission	4	add_permission
14	Can change permission	4	change_permission
15	Can delete permission	4	delete_permission
16	Can view permission	4	view_permission
17	Can add group	5	add_group
18	Can change group	5	change_group
19	Can delete group	5	delete_group
20	Can view group	5	view_group
21	Can add user	6	add_user
22	Can change user	6	change_user
23	Can delete user	6	delete_user
24	Can view user	6	view_user
25	Can add content type	7	add_contenttype
26	Can change content type	7	change_contenttype
27	Can delete content type	7	delete_contenttype
28	Can view content type	7	view_contenttype
29	Can add session	8	add_session
30	Can change session	8	change_session
31	Can delete session	8	delete_session
32	Can view session	8	view_session
33	Can add profile	9	add_profile
34	Can change profile	9	change_profile
35	Can delete profile	9	delete_profile
36	Can view profile	9	view_profile
37	Can add sentiment	10	add_sentiment
38	Can change sentiment	10	change_sentiment
39	Can delete sentiment	10	delete_sentiment
40	Can view sentiment	10	view_sentiment
41	Can add article fact	11	add_articlefact
42	Can change article fact	11	change_articlefact
43	Can delete article fact	11	delete_articlefact
44	Can view article fact	11	view_articlefact
45	Can add date dim	12	add_datedim
46	Can change date dim	12	change_datedim
47	Can delete date dim	12	delete_datedim
48	Can view date dim	12	view_datedim
49	Can add sentiment dim	13	add_sentimentdim
50	Can change sentiment dim	13	change_sentimentdim
51	Can delete sentiment dim	13	delete_sentimentdim
52	Can view sentiment dim	13	view_sentimentdim
53	Can add time dim	14	add_timedim
54	Can change time dim	14	change_timedim
55	Can delete time dim	14	delete_timedim
56	Can view time dim	14	view_timedim
57	Can add articles fact	15	add_articlesfact
58	Can change articles fact	15	change_articlesfact
59	Can delete articles fact	15	delete_articlesfact
60	Can view articles fact	15	view_articlesfact
61	Can add sentiment fact	16	add_sentimentfact
62	Can change sentiment fact	16	change_sentimentfact
63	Can delete sentiment fact	16	delete_sentimentfact
64	Can view sentiment fact	16	view_sentimentfact
65	Can add ma sentiment dim	17	add_masentimentdim
66	Can change ma sentiment dim	17	change_masentimentdim
67	Can delete ma sentiment dim	17	delete_masentimentdim
68	Can view ma sentiment dim	17	view_masentimentdim
69	Can add sent view	18	add_sentview
70	Can change sent view	18	change_sentview
71	Can delete sent view	18	delete_sentview
72	Can view sent view	18	view_sentview
73	Can add article	19	add_article
74	Can change article	19	change_article
75	Can delete article	19	delete_article
76	Can view article	19	view_article
77	Can add comments	20	add_comments
78	Can change comments	20	change_comments
79	Can delete comments	20	delete_comments
80	Can view comments	20	view_comments
81	Can add like	21	add_like
82	Can change like	21	change_like
83	Can delete like	21	delete_like
84	Can view like	21	view_like
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
2	pbkdf2_sha256$216000$uhYud5PCkJZr$V5Jgn0EUd+NkEAF0IxjH3M6hiK2eeKHn/5QaHmJS+OU=	2021-03-01 22:10:09.122331+00	f	ianmacwilliam@gmail.com				f	t	2021-03-01 22:09:43.707866+00
3	pbkdf2_sha256$216000$oKxyPfXooyoC$3sKIP1ZWwSIN3/BdE0EQkEwt/r22Wu70Sap5t7gpiAw=	2021-03-02 14:07:34.736108+00	f	Payyd				f	t	2021-03-02 14:07:18.124397+00
4	pbkdf2_sha256$216000$DcwI6iawIw0h$guUKCqe2B7c/ncRfVXJEOYAhdwWFJDT6/VGFEgQeT7Q=	2021-03-02 14:08:50.804254+00	f	kingdeco				f	t	2021-03-02 14:07:40.726119+00
5	pbkdf2_sha256$216000$L65rWagn8sJA$4HefSdsnj47/ouQiQMo1gy8jZVsr7ndoH4GSBE0H0b8=	2021-03-06 17:12:51.699846+00	f	Brenno98				f	t	2021-03-06 17:12:34.10007+00
6	pbkdf2_sha256$216000$cqYbLv9CAA2k$a0Kzoco9THoyAXX537GclUR9ERU9H23AqSYa/5EGWr8=	2021-03-07 15:22:46.950167+00	f	craigwhelan				f	t	2021-03-07 15:22:36.612939+00
7	pbkdf2_sha256$216000$3ta3rnaQphqp$/LT62CEtw38BwoJjnODkf7TrxL0lfPuBeJmJ/WRj4og=	2021-03-08 15:05:44.823175+00	f	milo				f	t	2021-03-08 15:05:38.770938+00
1	pbkdf2_sha256$216000$Y4epOnJrQeKo$Q1m7j3ZvfIa6M7liIi9XQT727J82unAmzHQuNJ/LBQw=	2021-03-08 15:09:14.28826+00	t	rmacw				t	t	2021-02-16 12:27:34.534149+00
8	pbkdf2_sha256$216000$pgFzbwlpgYod$eY6cHB47Z+5NS3pp07dO/dMLCs0li5lBininPvzyVHA=	2021-03-08 15:10:02.322829+00	f	Jip				f	t	2021-03-08 15:09:53.372227+00
9	pbkdf2_sha256$216000$MdoJuXRZSoj5$Ry2pjcOV8hT41lry67p29q31hN8GldgJLsbowacmlR8=	2021-03-08 15:10:26.54565+00	f	jdooley99				f	t	2021-03-08 15:10:12.24166+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: date_dim; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.date_dim (dateid, full_date, dd, mm, yy) FROM stdin;
1	01/01/2021	1	1	2021
2	02/01/2021	2	1	2021
3	03/01/2021	3	1	2021
4	04/01/2021	4	1	2021
5	05/01/2021	5	1	2021
6	06/01/2021	6	1	2021
7	07/01/2021	7	1	2021
8	08/01/2021	8	1	2021
9	09/01/2021	9	1	2021
10	10/01/2021	10	1	2021
11	11/01/2021	11	1	2021
12	12/01/2021	12	1	2021
13	13/01/2021	13	1	2021
14	14/01/2021	14	1	2021
15	15/01/2021	15	1	2021
16	16/01/2021	16	1	2021
17	17/01/2021	17	1	2021
18	18/01/2021	18	1	2021
19	19/01/2021	19	1	2021
20	20/01/2021	20	1	2021
21	21/01/2021	21	1	2021
22	22/01/2021	22	1	2021
23	23/01/2021	23	1	2021
24	24/01/2021	24	1	2021
25	25/01/2021	25	1	2021
26	26/01/2021	26	1	2021
27	27/01/2021	27	1	2021
28	28/01/2021	28	1	2021
29	29/01/2021	29	1	2021
30	30/01/2021	30	1	2021
31	31/01/2021	31	1	2021
32	01/02/2021	1	2	2021
33	02/02/2021	2	2	2021
34	03/02/2021	3	2	2021
35	04/02/2021	4	2	2021
36	05/02/2021	5	2	2021
37	06/02/2021	6	2	2021
38	07/02/2021	7	2	2021
39	08/02/2021	8	2	2021
40	09/02/2021	9	2	2021
41	10/02/2021	10	2	2021
42	11/02/2021	11	2	2021
43	12/02/2021	12	2	2021
44	13/02/2021	13	2	2021
45	14/02/2021	14	2	2021
46	15/02/2021	15	2	2021
47	16/02/2021	16	2	2021
48	17/02/2021	17	2	2021
49	18/02/2021	18	2	2021
50	19/02/2021	19	2	2021
51	20/02/2021	20	2	2021
52	21/02/2021	21	2	2021
53	22/02/2021	22	2	2021
54	23/02/2021	23	2	2021
55	24/02/2021	24	2	2021
56	25/02/2021	25	2	2021
57	26/02/2021	26	2	2021
58	27/02/2021	27	2	2021
59	28/02/2021	28	2	2021
60	01/03/2021	1	3	2021
61	02/03/2021	2	3	2021
62	03/03/2021	3	3	2021
63	04/03/2021	4	3	2021
64	05/03/2021	5	3	2021
65	06/03/2021	6	3	2021
66	07/03/2021	7	3	2021
67	08/03/2021	8	3	2021
68	09/03/2021	9	3	2021
69	10/03/2021	10	3	2021
70	11/03/2021	11	3	2021
71	12/03/2021	12	3	2021
72	13/03/2021	13	3	2021
73	14/03/2021	14	3	2021
74	15/03/2021	15	3	2021
75	16/03/2021	16	3	2021
76	17/03/2021	17	3	2021
77	18/03/2021	18	3	2021
78	19/03/2021	19	3	2021
79	20/03/2021	20	3	2021
80	21/03/2021	21	3	2021
81	22/03/2021	22	3	2021
82	23/03/2021	23	3	2021
83	24/03/2021	24	3	2021
84	25/03/2021	25	3	2021
85	26/03/2021	26	3	2021
86	27/03/2021	27	3	2021
87	28/03/2021	28	3	2021
88	29/03/2021	29	3	2021
89	30/03/2021	30	3	2021
90	31/03/2021	31	3	2021
91	01/04/2021	1	4	2021
92	02/04/2021	2	4	2021
93	03/04/2021	3	4	2021
94	04/04/2021	4	4	2021
95	05/04/2021	5	4	2021
96	06/04/2021	6	4	2021
97	07/04/2021	7	4	2021
98	08/04/2021	8	4	2021
99	09/04/2021	9	4	2021
100	10/04/2021	10	4	2021
101	11/04/2021	11	4	2021
102	12/04/2021	12	4	2021
103	13/04/2021	13	4	2021
104	14/04/2021	14	4	2021
105	15/04/2021	15	4	2021
106	16/04/2021	16	4	2021
107	17/04/2021	17	4	2021
108	18/04/2021	18	4	2021
109	19/04/2021	19	4	2021
110	20/04/2021	20	4	2021
111	21/04/2021	21	4	2021
112	22/04/2021	22	4	2021
113	23/04/2021	23	4	2021
114	24/04/2021	24	4	2021
115	25/04/2021	25	4	2021
116	26/04/2021	26	4	2021
117	27/04/2021	27	4	2021
118	28/04/2021	28	4	2021
119	29/04/2021	29	4	2021
120	30/04/2021	30	4	2021
121	01/05/2021	1	5	2021
122	02/05/2021	2	5	2021
123	03/05/2021	3	5	2021
124	04/05/2021	4	5	2021
125	05/05/2021	5	5	2021
126	06/05/2021	6	5	2021
127	07/05/2021	7	5	2021
128	08/05/2021	8	5	2021
129	09/05/2021	9	5	2021
130	10/05/2021	10	5	2021
131	11/05/2021	11	5	2021
132	12/05/2021	12	5	2021
133	13/05/2021	13	5	2021
134	14/05/2021	14	5	2021
135	15/05/2021	15	5	2021
136	16/05/2021	16	5	2021
137	17/05/2021	17	5	2021
138	18/05/2021	18	5	2021
139	19/05/2021	19	5	2021
140	20/05/2021	20	5	2021
141	21/05/2021	21	5	2021
142	22/05/2021	22	5	2021
143	23/05/2021	23	5	2021
144	24/05/2021	24	5	2021
145	25/05/2021	25	5	2021
146	26/05/2021	26	5	2021
147	27/05/2021	27	5	2021
148	28/05/2021	28	5	2021
149	29/05/2021	29	5	2021
150	30/05/2021	30	5	2021
151	31/05/2021	31	5	2021
152	01/06/2021	1	6	2021
153	02/06/2021	2	6	2021
154	03/06/2021	3	6	2021
155	04/06/2021	4	6	2021
156	05/06/2021	5	6	2021
157	06/06/2021	6	6	2021
158	07/06/2021	7	6	2021
159	08/06/2021	8	6	2021
160	09/06/2021	9	6	2021
161	10/06/2021	10	6	2021
162	11/06/2021	11	6	2021
163	12/06/2021	12	6	2021
164	13/06/2021	13	6	2021
165	14/06/2021	14	6	2021
166	15/06/2021	15	6	2021
167	16/06/2021	16	6	2021
168	17/06/2021	17	6	2021
169	18/06/2021	18	6	2021
170	19/06/2021	19	6	2021
171	20/06/2021	20	6	2021
172	21/06/2021	21	6	2021
173	22/06/2021	22	6	2021
174	23/06/2021	23	6	2021
175	24/06/2021	24	6	2021
176	25/06/2021	25	6	2021
177	26/06/2021	26	6	2021
178	27/06/2021	27	6	2021
179	28/06/2021	28	6	2021
180	29/06/2021	29	6	2021
181	30/06/2021	30	6	2021
182	01/07/2021	1	7	2021
183	02/07/2021	2	7	2021
184	03/07/2021	3	7	2021
185	04/07/2021	4	7	2021
186	05/07/2021	5	7	2021
187	06/07/2021	6	7	2021
188	07/07/2021	7	7	2021
189	08/07/2021	8	7	2021
190	09/07/2021	9	7	2021
191	10/07/2021	10	7	2021
192	11/07/2021	11	7	2021
193	12/07/2021	12	7	2021
194	13/07/2021	13	7	2021
195	14/07/2021	14	7	2021
196	15/07/2021	15	7	2021
197	16/07/2021	16	7	2021
198	17/07/2021	17	7	2021
199	18/07/2021	18	7	2021
200	19/07/2021	19	7	2021
201	20/07/2021	20	7	2021
202	21/07/2021	21	7	2021
203	22/07/2021	22	7	2021
204	23/07/2021	23	7	2021
205	24/07/2021	24	7	2021
206	25/07/2021	25	7	2021
207	26/07/2021	26	7	2021
208	27/07/2021	27	7	2021
209	28/07/2021	28	7	2021
210	29/07/2021	29	7	2021
211	30/07/2021	30	7	2021
212	31/07/2021	31	7	2021
213	01/08/2021	1	8	2021
214	02/08/2021	2	8	2021
215	03/08/2021	3	8	2021
216	04/08/2021	4	8	2021
217	05/08/2021	5	8	2021
218	06/08/2021	6	8	2021
219	07/08/2021	7	8	2021
220	08/08/2021	8	8	2021
221	09/08/2021	9	8	2021
222	10/08/2021	10	8	2021
223	11/08/2021	11	8	2021
224	12/08/2021	12	8	2021
225	13/08/2021	13	8	2021
226	14/08/2021	14	8	2021
227	15/08/2021	15	8	2021
228	16/08/2021	16	8	2021
229	17/08/2021	17	8	2021
230	18/08/2021	18	8	2021
231	19/08/2021	19	8	2021
232	20/08/2021	20	8	2021
233	21/08/2021	21	8	2021
234	22/08/2021	22	8	2021
235	23/08/2021	23	8	2021
236	24/08/2021	24	8	2021
237	25/08/2021	25	8	2021
238	26/08/2021	26	8	2021
239	27/08/2021	27	8	2021
240	28/08/2021	28	8	2021
241	29/08/2021	29	8	2021
242	30/08/2021	30	8	2021
243	31/08/2021	31	8	2021
244	01/09/2021	1	9	2021
245	02/09/2021	2	9	2021
246	03/09/2021	3	9	2021
247	04/09/2021	4	9	2021
248	05/09/2021	5	9	2021
249	06/09/2021	6	9	2021
250	07/09/2021	7	9	2021
251	08/09/2021	8	9	2021
252	09/09/2021	9	9	2021
253	10/09/2021	10	9	2021
254	11/09/2021	11	9	2021
255	12/09/2021	12	9	2021
256	13/09/2021	13	9	2021
257	14/09/2021	14	9	2021
258	15/09/2021	15	9	2021
259	16/09/2021	16	9	2021
260	17/09/2021	17	9	2021
261	18/09/2021	18	9	2021
262	19/09/2021	19	9	2021
263	20/09/2021	20	9	2021
264	21/09/2021	21	9	2021
265	22/09/2021	22	9	2021
266	23/09/2021	23	9	2021
267	24/09/2021	24	9	2021
268	25/09/2021	25	9	2021
269	26/09/2021	26	9	2021
270	27/09/2021	27	9	2021
271	28/09/2021	28	9	2021
272	29/09/2021	29	9	2021
273	30/09/2021	30	9	2021
274	01/10/2021	1	10	2021
275	02/10/2021	2	10	2021
276	03/10/2021	3	10	2021
277	04/10/2021	4	10	2021
278	05/10/2021	5	10	2021
279	06/10/2021	6	10	2021
280	07/10/2021	7	10	2021
281	08/10/2021	8	10	2021
282	09/10/2021	9	10	2021
283	10/10/2021	10	10	2021
284	11/10/2021	11	10	2021
285	12/10/2021	12	10	2021
286	13/10/2021	13	10	2021
287	14/10/2021	14	10	2021
288	15/10/2021	15	10	2021
289	16/10/2021	16	10	2021
290	17/10/2021	17	10	2021
291	18/10/2021	18	10	2021
292	19/10/2021	19	10	2021
293	20/10/2021	20	10	2021
294	21/10/2021	21	10	2021
295	22/10/2021	22	10	2021
296	23/10/2021	23	10	2021
297	24/10/2021	24	10	2021
298	25/10/2021	25	10	2021
299	26/10/2021	26	10	2021
300	27/10/2021	27	10	2021
301	28/10/2021	28	10	2021
302	29/10/2021	29	10	2021
303	30/10/2021	30	10	2021
304	31/10/2021	31	10	2021
305	01/11/2021	1	11	2021
306	02/11/2021	2	11	2021
307	03/11/2021	3	11	2021
308	04/11/2021	4	11	2021
309	05/11/2021	5	11	2021
310	06/11/2021	6	11	2021
311	07/11/2021	7	11	2021
312	08/11/2021	8	11	2021
313	09/11/2021	9	11	2021
314	10/11/2021	10	11	2021
315	11/11/2021	11	11	2021
316	12/11/2021	12	11	2021
317	13/11/2021	13	11	2021
318	14/11/2021	14	11	2021
319	15/11/2021	15	11	2021
320	16/11/2021	16	11	2021
321	17/11/2021	17	11	2021
322	18/11/2021	18	11	2021
323	19/11/2021	19	11	2021
324	20/11/2021	20	11	2021
325	21/11/2021	21	11	2021
326	22/11/2021	22	11	2021
327	23/11/2021	23	11	2021
328	24/11/2021	24	11	2021
329	25/11/2021	25	11	2021
330	26/11/2021	26	11	2021
331	27/11/2021	27	11	2021
332	28/11/2021	28	11	2021
333	29/11/2021	29	11	2021
334	30/11/2021	30	11	2021
335	01/12/2021	1	12	2021
336	02/12/2021	2	12	2021
337	03/12/2021	3	12	2021
338	04/12/2021	4	12	2021
339	05/12/2021	5	12	2021
340	06/12/2021	6	12	2021
341	07/12/2021	7	12	2021
342	08/12/2021	8	12	2021
343	09/12/2021	9	12	2021
344	10/12/2021	10	12	2021
345	11/12/2021	11	12	2021
346	12/12/2021	12	12	2021
347	13/12/2021	13	12	2021
348	14/12/2021	14	12	2021
349	15/12/2021	15	12	2021
350	16/12/2021	16	12	2021
351	17/12/2021	17	12	2021
352	18/12/2021	18	12	2021
353	19/12/2021	19	12	2021
354	20/12/2021	20	12	2021
355	21/12/2021	21	12	2021
356	22/12/2021	22	12	2021
357	23/12/2021	23	12	2021
358	24/12/2021	24	12	2021
359	25/12/2021	25	12	2021
360	26/12/2021	26	12	2021
361	27/12/2021	27	12	2021
362	28/12/2021	28	12	2021
363	29/12/2021	29	12	2021
364	30/12/2021	30	12	2021
365	31/12/2021	31	12	2021
366	01/01/2022	1	1	2022
367	02/01/2022	2	1	2022
368	03/01/2022	3	1	2022
369	04/01/2022	4	1	2022
370	05/01/2022	5	1	2022
371	06/01/2022	6	1	2022
372	07/01/2022	7	1	2022
373	08/01/2022	8	1	2022
374	09/01/2022	9	1	2022
375	10/01/2022	10	1	2022
376	11/01/2022	11	1	2022
377	12/01/2022	12	1	2022
378	13/01/2022	13	1	2022
379	14/01/2022	14	1	2022
380	15/01/2022	15	1	2022
381	16/01/2022	16	1	2022
382	17/01/2022	17	1	2022
383	18/01/2022	18	1	2022
384	19/01/2022	19	1	2022
385	20/01/2022	20	1	2022
386	21/01/2022	21	1	2022
387	22/01/2022	22	1	2022
388	23/01/2022	23	1	2022
389	24/01/2022	24	1	2022
390	25/01/2022	25	1	2022
391	26/01/2022	26	1	2022
392	27/01/2022	27	1	2022
393	28/01/2022	28	1	2022
394	29/01/2022	29	1	2022
395	30/01/2022	30	1	2022
396	31/01/2022	31	1	2022
397	01/02/2022	1	2	2022
398	02/02/2022	2	2	2022
399	03/02/2022	3	2	2022
400	04/02/2022	4	2	2022
401	05/02/2022	5	2	2022
402	06/02/2022	6	2	2022
403	07/02/2022	7	2	2022
404	08/02/2022	8	2	2022
405	09/02/2022	9	2	2022
406	10/02/2022	10	2	2022
407	11/02/2022	11	2	2022
408	12/02/2022	12	2	2022
409	13/02/2022	13	2	2022
410	14/02/2022	14	2	2022
411	15/02/2022	15	2	2022
412	16/02/2022	16	2	2022
413	17/02/2022	17	2	2022
414	18/02/2022	18	2	2022
415	19/02/2022	19	2	2022
416	20/02/2022	20	2	2022
417	21/02/2022	21	2	2022
418	22/02/2022	22	2	2022
419	23/02/2022	23	2	2022
420	24/02/2022	24	2	2022
421	25/02/2022	25	2	2022
422	26/02/2022	26	2	2022
423	27/02/2022	27	2	2022
424	28/02/2022	28	2	2022
425	01/03/2022	1	3	2022
426	02/03/2022	2	3	2022
427	03/03/2022	3	3	2022
428	04/03/2022	4	3	2022
429	05/03/2022	5	3	2022
430	06/03/2022	6	3	2022
431	07/03/2022	7	3	2022
432	08/03/2022	8	3	2022
433	09/03/2022	9	3	2022
434	10/03/2022	10	3	2022
435	11/03/2022	11	3	2022
436	12/03/2022	12	3	2022
437	13/03/2022	13	3	2022
438	14/03/2022	14	3	2022
439	15/03/2022	15	3	2022
440	16/03/2022	16	3	2022
441	17/03/2022	17	3	2022
442	18/03/2022	18	3	2022
443	19/03/2022	19	3	2022
444	20/03/2022	20	3	2022
445	21/03/2022	21	3	2022
446	22/03/2022	22	3	2022
447	23/03/2022	23	3	2022
448	24/03/2022	24	3	2022
449	25/03/2022	25	3	2022
450	26/03/2022	26	3	2022
451	27/03/2022	27	3	2022
452	28/03/2022	28	3	2022
453	29/03/2022	29	3	2022
454	30/03/2022	30	3	2022
455	31/03/2022	31	3	2022
456	01/04/2022	1	4	2022
457	02/04/2022	2	4	2022
458	03/04/2022	3	4	2022
459	04/04/2022	4	4	2022
460	05/04/2022	5	4	2022
461	06/04/2022	6	4	2022
462	07/04/2022	7	4	2022
463	08/04/2022	8	4	2022
464	09/04/2022	9	4	2022
465	10/04/2022	10	4	2022
466	11/04/2022	11	4	2022
467	12/04/2022	12	4	2022
468	13/04/2022	13	4	2022
469	14/04/2022	14	4	2022
470	15/04/2022	15	4	2022
471	16/04/2022	16	4	2022
472	17/04/2022	17	4	2022
473	18/04/2022	18	4	2022
474	19/04/2022	19	4	2022
475	20/04/2022	20	4	2022
476	21/04/2022	21	4	2022
477	22/04/2022	22	4	2022
478	23/04/2022	23	4	2022
479	24/04/2022	24	4	2022
480	25/04/2022	25	4	2022
481	26/04/2022	26	4	2022
482	27/04/2022	27	4	2022
483	28/04/2022	28	4	2022
484	29/04/2022	29	4	2022
485	30/04/2022	30	4	2022
486	01/05/2022	1	5	2022
487	02/05/2022	2	5	2022
488	03/05/2022	3	5	2022
489	04/05/2022	4	5	2022
490	05/05/2022	5	5	2022
491	06/05/2022	6	5	2022
492	07/05/2022	7	5	2022
493	08/05/2022	8	5	2022
494	09/05/2022	9	5	2022
495	10/05/2022	10	5	2022
496	11/05/2022	11	5	2022
497	12/05/2022	12	5	2022
498	13/05/2022	13	5	2022
499	14/05/2022	14	5	2022
500	15/05/2022	15	5	2022
501	16/05/2022	16	5	2022
502	17/05/2022	17	5	2022
503	18/05/2022	18	5	2022
504	19/05/2022	19	5	2022
505	20/05/2022	20	5	2022
506	21/05/2022	21	5	2022
507	22/05/2022	22	5	2022
508	23/05/2022	23	5	2022
509	24/05/2022	24	5	2022
510	25/05/2022	25	5	2022
511	26/05/2022	26	5	2022
512	27/05/2022	27	5	2022
513	28/05/2022	28	5	2022
514	29/05/2022	29	5	2022
515	30/05/2022	30	5	2022
516	31/05/2022	31	5	2022
517	01/06/2022	1	6	2022
518	02/06/2022	2	6	2022
519	03/06/2022	3	6	2022
520	04/06/2022	4	6	2022
521	05/06/2022	5	6	2022
522	06/06/2022	6	6	2022
523	07/06/2022	7	6	2022
524	08/06/2022	8	6	2022
525	09/06/2022	9	6	2022
526	10/06/2022	10	6	2022
527	11/06/2022	11	6	2022
528	12/06/2022	12	6	2022
529	13/06/2022	13	6	2022
530	14/06/2022	14	6	2022
531	15/06/2022	15	6	2022
532	16/06/2022	16	6	2022
533	17/06/2022	17	6	2022
534	18/06/2022	18	6	2022
535	19/06/2022	19	6	2022
536	20/06/2022	20	6	2022
537	21/06/2022	21	6	2022
538	22/06/2022	22	6	2022
539	23/06/2022	23	6	2022
540	24/06/2022	24	6	2022
541	25/06/2022	25	6	2022
542	26/06/2022	26	6	2022
543	27/06/2022	27	6	2022
544	28/06/2022	28	6	2022
545	29/06/2022	29	6	2022
546	30/06/2022	30	6	2022
547	01/07/2022	1	7	2022
548	02/07/2022	2	7	2022
549	03/07/2022	3	7	2022
550	04/07/2022	4	7	2022
551	05/07/2022	5	7	2022
552	06/07/2022	6	7	2022
553	07/07/2022	7	7	2022
554	08/07/2022	8	7	2022
555	09/07/2022	9	7	2022
556	10/07/2022	10	7	2022
557	11/07/2022	11	7	2022
558	12/07/2022	12	7	2022
559	13/07/2022	13	7	2022
560	14/07/2022	14	7	2022
561	15/07/2022	15	7	2022
562	16/07/2022	16	7	2022
563	17/07/2022	17	7	2022
564	18/07/2022	18	7	2022
565	19/07/2022	19	7	2022
566	20/07/2022	20	7	2022
567	21/07/2022	21	7	2022
568	22/07/2022	22	7	2022
569	23/07/2022	23	7	2022
570	24/07/2022	24	7	2022
571	25/07/2022	25	7	2022
572	26/07/2022	26	7	2022
573	27/07/2022	27	7	2022
574	28/07/2022	28	7	2022
575	29/07/2022	29	7	2022
576	30/07/2022	30	7	2022
577	31/07/2022	31	7	2022
578	01/08/2022	1	8	2022
579	02/08/2022	2	8	2022
580	03/08/2022	3	8	2022
581	04/08/2022	4	8	2022
582	05/08/2022	5	8	2022
583	06/08/2022	6	8	2022
584	07/08/2022	7	8	2022
585	08/08/2022	8	8	2022
586	09/08/2022	9	8	2022
587	10/08/2022	10	8	2022
588	11/08/2022	11	8	2022
589	12/08/2022	12	8	2022
590	13/08/2022	13	8	2022
591	14/08/2022	14	8	2022
592	15/08/2022	15	8	2022
593	16/08/2022	16	8	2022
594	17/08/2022	17	8	2022
595	18/08/2022	18	8	2022
596	19/08/2022	19	8	2022
597	20/08/2022	20	8	2022
598	21/08/2022	21	8	2022
599	22/08/2022	22	8	2022
600	23/08/2022	23	8	2022
601	24/08/2022	24	8	2022
602	25/08/2022	25	8	2022
603	26/08/2022	26	8	2022
604	27/08/2022	27	8	2022
605	28/08/2022	28	8	2022
606	29/08/2022	29	8	2022
607	30/08/2022	30	8	2022
608	31/08/2022	31	8	2022
609	01/09/2022	1	9	2022
610	02/09/2022	2	9	2022
611	03/09/2022	3	9	2022
612	04/09/2022	4	9	2022
613	05/09/2022	5	9	2022
614	06/09/2022	6	9	2022
615	07/09/2022	7	9	2022
616	08/09/2022	8	9	2022
617	09/09/2022	9	9	2022
618	10/09/2022	10	9	2022
619	11/09/2022	11	9	2022
620	12/09/2022	12	9	2022
621	13/09/2022	13	9	2022
622	14/09/2022	14	9	2022
623	15/09/2022	15	9	2022
624	16/09/2022	16	9	2022
625	17/09/2022	17	9	2022
626	18/09/2022	18	9	2022
627	19/09/2022	19	9	2022
628	20/09/2022	20	9	2022
629	21/09/2022	21	9	2022
630	22/09/2022	22	9	2022
631	23/09/2022	23	9	2022
632	24/09/2022	24	9	2022
633	25/09/2022	25	9	2022
634	26/09/2022	26	9	2022
635	27/09/2022	27	9	2022
636	28/09/2022	28	9	2022
637	29/09/2022	29	9	2022
638	30/09/2022	30	9	2022
639	01/10/2022	1	10	2022
640	02/10/2022	2	10	2022
641	03/10/2022	3	10	2022
642	04/10/2022	4	10	2022
643	05/10/2022	5	10	2022
644	06/10/2022	6	10	2022
645	07/10/2022	7	10	2022
646	08/10/2022	8	10	2022
647	09/10/2022	9	10	2022
648	10/10/2022	10	10	2022
649	11/10/2022	11	10	2022
650	12/10/2022	12	10	2022
651	13/10/2022	13	10	2022
652	14/10/2022	14	10	2022
653	15/10/2022	15	10	2022
654	16/10/2022	16	10	2022
655	17/10/2022	17	10	2022
656	18/10/2022	18	10	2022
657	19/10/2022	19	10	2022
658	20/10/2022	20	10	2022
659	21/10/2022	21	10	2022
660	22/10/2022	22	10	2022
661	23/10/2022	23	10	2022
662	24/10/2022	24	10	2022
663	25/10/2022	25	10	2022
664	26/10/2022	26	10	2022
665	27/10/2022	27	10	2022
666	28/10/2022	28	10	2022
667	29/10/2022	29	10	2022
668	30/10/2022	30	10	2022
669	31/10/2022	31	10	2022
670	01/11/2022	1	11	2022
671	02/11/2022	2	11	2022
672	03/11/2022	3	11	2022
673	04/11/2022	4	11	2022
674	05/11/2022	5	11	2022
675	06/11/2022	6	11	2022
676	07/11/2022	7	11	2022
677	08/11/2022	8	11	2022
678	09/11/2022	9	11	2022
679	10/11/2022	10	11	2022
680	11/11/2022	11	11	2022
681	12/11/2022	12	11	2022
682	13/11/2022	13	11	2022
683	14/11/2022	14	11	2022
684	15/11/2022	15	11	2022
685	16/11/2022	16	11	2022
686	17/11/2022	17	11	2022
687	18/11/2022	18	11	2022
688	19/11/2022	19	11	2022
689	20/11/2022	20	11	2022
690	21/11/2022	21	11	2022
691	22/11/2022	22	11	2022
692	23/11/2022	23	11	2022
693	24/11/2022	24	11	2022
694	25/11/2022	25	11	2022
695	26/11/2022	26	11	2022
696	27/11/2022	27	11	2022
697	28/11/2022	28	11	2022
698	29/11/2022	29	11	2022
699	30/11/2022	30	11	2022
700	01/12/2022	1	12	2022
701	02/12/2022	2	12	2022
702	03/12/2022	3	12	2022
703	04/12/2022	4	12	2022
704	05/12/2022	5	12	2022
705	06/12/2022	6	12	2022
706	07/12/2022	7	12	2022
707	08/12/2022	8	12	2022
708	09/12/2022	9	12	2022
709	10/12/2022	10	12	2022
710	11/12/2022	11	12	2022
711	12/12/2022	12	12	2022
712	13/12/2022	13	12	2022
713	14/12/2022	14	12	2022
714	15/12/2022	15	12	2022
715	16/12/2022	16	12	2022
716	17/12/2022	17	12	2022
717	18/12/2022	18	12	2022
718	19/12/2022	19	12	2022
719	20/12/2022	20	12	2022
720	21/12/2022	21	12	2022
721	22/12/2022	22	12	2022
722	23/12/2022	23	12	2022
723	24/12/2022	24	12	2022
724	25/12/2022	25	12	2022
725	26/12/2022	26	12	2022
726	27/12/2022	27	12	2022
727	28/12/2022	28	12	2022
728	29/12/2022	29	12	2022
729	30/12/2022	30	12	2022
730	31/12/2022	31	12	2022
731	01/01/2023	1	1	2023
732	02/01/2023	2	1	2023
733	03/01/2023	3	1	2023
734	04/01/2023	4	1	2023
735	05/01/2023	5	1	2023
736	06/01/2023	6	1	2023
737	07/01/2023	7	1	2023
738	08/01/2023	8	1	2023
739	09/01/2023	9	1	2023
740	10/01/2023	10	1	2023
741	11/01/2023	11	1	2023
742	12/01/2023	12	1	2023
743	13/01/2023	13	1	2023
744	14/01/2023	14	1	2023
745	15/01/2023	15	1	2023
746	16/01/2023	16	1	2023
747	17/01/2023	17	1	2023
748	18/01/2023	18	1	2023
749	19/01/2023	19	1	2023
750	20/01/2023	20	1	2023
751	21/01/2023	21	1	2023
752	22/01/2023	22	1	2023
753	23/01/2023	23	1	2023
754	24/01/2023	24	1	2023
755	25/01/2023	25	1	2023
756	26/01/2023	26	1	2023
757	27/01/2023	27	1	2023
758	28/01/2023	28	1	2023
759	29/01/2023	29	1	2023
760	30/01/2023	30	1	2023
761	31/01/2023	31	1	2023
762	01/02/2023	1	2	2023
763	02/02/2023	2	2	2023
764	03/02/2023	3	2	2023
765	04/02/2023	4	2	2023
766	05/02/2023	5	2	2023
767	06/02/2023	6	2	2023
768	07/02/2023	7	2	2023
769	08/02/2023	8	2	2023
770	09/02/2023	9	2	2023
771	10/02/2023	10	2	2023
772	11/02/2023	11	2	2023
773	12/02/2023	12	2	2023
774	13/02/2023	13	2	2023
775	14/02/2023	14	2	2023
776	15/02/2023	15	2	2023
777	16/02/2023	16	2	2023
778	17/02/2023	17	2	2023
779	18/02/2023	18	2	2023
780	19/02/2023	19	2	2023
781	20/02/2023	20	2	2023
782	21/02/2023	21	2	2023
783	22/02/2023	22	2	2023
784	23/02/2023	23	2	2023
785	24/02/2023	24	2	2023
786	25/02/2023	25	2	2023
787	26/02/2023	26	2	2023
788	27/02/2023	27	2	2023
789	28/02/2023	28	2	2023
790	01/03/2023	1	3	2023
791	02/03/2023	2	3	2023
792	03/03/2023	3	3	2023
793	04/03/2023	4	3	2023
794	05/03/2023	5	3	2023
795	06/03/2023	6	3	2023
796	07/03/2023	7	3	2023
797	08/03/2023	8	3	2023
798	09/03/2023	9	3	2023
799	10/03/2023	10	3	2023
800	11/03/2023	11	3	2023
801	12/03/2023	12	3	2023
802	13/03/2023	13	3	2023
803	14/03/2023	14	3	2023
804	15/03/2023	15	3	2023
805	16/03/2023	16	3	2023
806	17/03/2023	17	3	2023
807	18/03/2023	18	3	2023
808	19/03/2023	19	3	2023
809	20/03/2023	20	3	2023
810	21/03/2023	21	3	2023
811	22/03/2023	22	3	2023
812	23/03/2023	23	3	2023
813	24/03/2023	24	3	2023
814	25/03/2023	25	3	2023
815	26/03/2023	26	3	2023
816	27/03/2023	27	3	2023
817	28/03/2023	28	3	2023
818	29/03/2023	29	3	2023
819	30/03/2023	30	3	2023
820	31/03/2023	31	3	2023
821	01/04/2023	1	4	2023
822	02/04/2023	2	4	2023
823	03/04/2023	3	4	2023
824	04/04/2023	4	4	2023
825	05/04/2023	5	4	2023
826	06/04/2023	6	4	2023
827	07/04/2023	7	4	2023
828	08/04/2023	8	4	2023
829	09/04/2023	9	4	2023
830	10/04/2023	10	4	2023
831	11/04/2023	11	4	2023
832	12/04/2023	12	4	2023
833	13/04/2023	13	4	2023
834	14/04/2023	14	4	2023
835	15/04/2023	15	4	2023
836	16/04/2023	16	4	2023
837	17/04/2023	17	4	2023
838	18/04/2023	18	4	2023
839	19/04/2023	19	4	2023
840	20/04/2023	20	4	2023
841	21/04/2023	21	4	2023
842	22/04/2023	22	4	2023
843	23/04/2023	23	4	2023
844	24/04/2023	24	4	2023
845	25/04/2023	25	4	2023
846	26/04/2023	26	4	2023
847	27/04/2023	27	4	2023
848	28/04/2023	28	4	2023
849	29/04/2023	29	4	2023
850	30/04/2023	30	4	2023
851	01/05/2023	1	5	2023
852	02/05/2023	2	5	2023
853	03/05/2023	3	5	2023
854	04/05/2023	4	5	2023
855	05/05/2023	5	5	2023
856	06/05/2023	6	5	2023
857	07/05/2023	7	5	2023
858	08/05/2023	8	5	2023
859	09/05/2023	9	5	2023
860	10/05/2023	10	5	2023
861	11/05/2023	11	5	2023
862	12/05/2023	12	5	2023
863	13/05/2023	13	5	2023
864	14/05/2023	14	5	2023
865	15/05/2023	15	5	2023
866	16/05/2023	16	5	2023
867	17/05/2023	17	5	2023
868	18/05/2023	18	5	2023
869	19/05/2023	19	5	2023
870	20/05/2023	20	5	2023
871	21/05/2023	21	5	2023
872	22/05/2023	22	5	2023
873	23/05/2023	23	5	2023
874	24/05/2023	24	5	2023
875	25/05/2023	25	5	2023
876	26/05/2023	26	5	2023
877	27/05/2023	27	5	2023
878	28/05/2023	28	5	2023
879	29/05/2023	29	5	2023
880	30/05/2023	30	5	2023
881	31/05/2023	31	5	2023
882	01/06/2023	1	6	2023
883	02/06/2023	2	6	2023
884	03/06/2023	3	6	2023
885	04/06/2023	4	6	2023
886	05/06/2023	5	6	2023
887	06/06/2023	6	6	2023
888	07/06/2023	7	6	2023
889	08/06/2023	8	6	2023
890	09/06/2023	9	6	2023
891	10/06/2023	10	6	2023
892	11/06/2023	11	6	2023
893	12/06/2023	12	6	2023
894	13/06/2023	13	6	2023
895	14/06/2023	14	6	2023
896	15/06/2023	15	6	2023
897	16/06/2023	16	6	2023
898	17/06/2023	17	6	2023
899	18/06/2023	18	6	2023
900	19/06/2023	19	6	2023
901	20/06/2023	20	6	2023
902	21/06/2023	21	6	2023
903	22/06/2023	22	6	2023
904	23/06/2023	23	6	2023
905	24/06/2023	24	6	2023
906	25/06/2023	25	6	2023
907	26/06/2023	26	6	2023
908	27/06/2023	27	6	2023
909	28/06/2023	28	6	2023
910	29/06/2023	29	6	2023
911	30/06/2023	30	6	2023
912	01/07/2023	1	7	2023
913	02/07/2023	2	7	2023
914	03/07/2023	3	7	2023
915	04/07/2023	4	7	2023
916	05/07/2023	5	7	2023
917	06/07/2023	6	7	2023
918	07/07/2023	7	7	2023
919	08/07/2023	8	7	2023
920	09/07/2023	9	7	2023
921	10/07/2023	10	7	2023
922	11/07/2023	11	7	2023
923	12/07/2023	12	7	2023
924	13/07/2023	13	7	2023
925	14/07/2023	14	7	2023
926	15/07/2023	15	7	2023
927	16/07/2023	16	7	2023
928	17/07/2023	17	7	2023
929	18/07/2023	18	7	2023
930	19/07/2023	19	7	2023
931	20/07/2023	20	7	2023
932	21/07/2023	21	7	2023
933	22/07/2023	22	7	2023
934	23/07/2023	23	7	2023
935	24/07/2023	24	7	2023
936	25/07/2023	25	7	2023
937	26/07/2023	26	7	2023
938	27/07/2023	27	7	2023
939	28/07/2023	28	7	2023
940	29/07/2023	29	7	2023
941	30/07/2023	30	7	2023
942	31/07/2023	31	7	2023
943	01/08/2023	1	8	2023
944	02/08/2023	2	8	2023
945	03/08/2023	3	8	2023
946	04/08/2023	4	8	2023
947	05/08/2023	5	8	2023
948	06/08/2023	6	8	2023
949	07/08/2023	7	8	2023
950	08/08/2023	8	8	2023
951	09/08/2023	9	8	2023
952	10/08/2023	10	8	2023
953	11/08/2023	11	8	2023
954	12/08/2023	12	8	2023
955	13/08/2023	13	8	2023
956	14/08/2023	14	8	2023
957	15/08/2023	15	8	2023
958	16/08/2023	16	8	2023
959	17/08/2023	17	8	2023
960	18/08/2023	18	8	2023
961	19/08/2023	19	8	2023
962	20/08/2023	20	8	2023
963	21/08/2023	21	8	2023
964	22/08/2023	22	8	2023
965	23/08/2023	23	8	2023
966	24/08/2023	24	8	2023
967	25/08/2023	25	8	2023
968	26/08/2023	26	8	2023
969	27/08/2023	27	8	2023
970	28/08/2023	28	8	2023
971	29/08/2023	29	8	2023
972	30/08/2023	30	8	2023
973	31/08/2023	31	8	2023
974	01/09/2023	1	9	2023
975	02/09/2023	2	9	2023
976	03/09/2023	3	9	2023
977	04/09/2023	4	9	2023
978	05/09/2023	5	9	2023
979	06/09/2023	6	9	2023
980	07/09/2023	7	9	2023
981	08/09/2023	8	9	2023
982	09/09/2023	9	9	2023
983	10/09/2023	10	9	2023
984	11/09/2023	11	9	2023
985	12/09/2023	12	9	2023
986	13/09/2023	13	9	2023
987	14/09/2023	14	9	2023
988	15/09/2023	15	9	2023
989	16/09/2023	16	9	2023
990	17/09/2023	17	9	2023
991	18/09/2023	18	9	2023
992	19/09/2023	19	9	2023
993	20/09/2023	20	9	2023
994	21/09/2023	21	9	2023
995	22/09/2023	22	9	2023
996	23/09/2023	23	9	2023
997	24/09/2023	24	9	2023
998	25/09/2023	25	9	2023
999	26/09/2023	26	9	2023
1000	27/09/2023	27	9	2023
1001	28/09/2023	28	9	2023
1002	29/09/2023	29	9	2023
1003	30/09/2023	30	9	2023
1004	01/10/2023	1	10	2023
1005	02/10/2023	2	10	2023
1006	03/10/2023	3	10	2023
1007	04/10/2023	4	10	2023
1008	05/10/2023	5	10	2023
1009	06/10/2023	6	10	2023
1010	07/10/2023	7	10	2023
1011	08/10/2023	8	10	2023
1012	09/10/2023	9	10	2023
1013	10/10/2023	10	10	2023
1014	11/10/2023	11	10	2023
1015	12/10/2023	12	10	2023
1016	13/10/2023	13	10	2023
1017	14/10/2023	14	10	2023
1018	15/10/2023	15	10	2023
1019	16/10/2023	16	10	2023
1020	17/10/2023	17	10	2023
1021	18/10/2023	18	10	2023
1022	19/10/2023	19	10	2023
1023	20/10/2023	20	10	2023
1024	21/10/2023	21	10	2023
1025	22/10/2023	22	10	2023
1026	23/10/2023	23	10	2023
1027	24/10/2023	24	10	2023
1028	25/10/2023	25	10	2023
1029	26/10/2023	26	10	2023
1030	27/10/2023	27	10	2023
1031	28/10/2023	28	10	2023
1032	29/10/2023	29	10	2023
1033	30/10/2023	30	10	2023
1034	31/10/2023	31	10	2023
1035	01/11/2023	1	11	2023
1036	02/11/2023	2	11	2023
1037	03/11/2023	3	11	2023
1038	04/11/2023	4	11	2023
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2021-02-16 12:33:32.008216+00	1	What is your sentiment towards the CryptoCurrency Market currently?	1	[{"added": {}}]	1	1
2	2021-02-16 12:33:39.344405+00	1	Bullish	1	[{"added": {}}]	2	1
3	2021-02-16 12:33:43.255309+00	2	Bearish	1	[{"added": {}}]	2	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	polls	question
2	polls	choice
3	admin	logentry
4	auth	permission
5	auth	group
6	auth	user
7	contenttypes	contenttype
8	sessions	session
9	polls	profile
10	polls	sentiment
11	polls	articlefact
12	polls	datedim
13	polls	sentimentdim
14	polls	timedim
15	polls	articlesfact
16	polls	sentimentfact
17	polls	masentimentdim
18	polls	sentview
19	newsApp	article
20	newsApp	comments
21	newsApp	like
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2021-02-16 10:21:39.922452+00
2	auth	0001_initial	2021-02-16 10:21:40.046541+00
3	admin	0001_initial	2021-02-16 10:21:40.105538+00
4	admin	0002_logentry_remove_auto_add	2021-02-16 10:21:40.119538+00
5	admin	0003_logentry_add_action_flag_choices	2021-02-16 10:21:40.125541+00
6	contenttypes	0002_remove_content_type_name	2021-02-16 10:21:40.141537+00
7	auth	0002_alter_permission_name_max_length	2021-02-16 10:21:40.226539+00
8	auth	0003_alter_user_email_max_length	2021-02-16 10:21:40.233547+00
9	auth	0004_alter_user_username_opts	2021-02-16 10:21:40.239539+00
10	auth	0005_alter_user_last_login_null	2021-02-16 10:21:40.247547+00
11	auth	0006_require_contenttypes_0002	2021-02-16 10:21:40.249547+00
12	auth	0007_alter_validators_add_error_messages	2021-02-16 10:21:40.25654+00
13	auth	0008_alter_user_username_max_length	2021-02-16 10:21:40.269537+00
14	auth	0009_alter_user_last_name_max_length	2021-02-16 10:21:40.276537+00
15	auth	0010_alter_group_name_max_length	2021-02-16 10:21:40.287538+00
16	auth	0011_update_proxy_permissions	2021-02-16 10:21:40.293537+00
17	auth	0012_alter_user_first_name_max_length	2021-02-16 10:21:40.300537+00
18	polls	0001_initial	2021-02-16 10:21:40.313539+00
19	sessions	0001_initial	2021-02-16 12:32:05.407317+00
20	polls	0002_profile	2021-02-16 12:33:04.651354+00
21	polls	0003_sentiment	2021-02-25 10:10:17.925312+00
22	polls	0003_articlefact_datedim_sentimentdim_timedim	2021-02-25 10:15:06.389655+00
23	polls	0003_articlesfact_datedim_sentimentfact_timedim	2021-02-25 11:20:13.699342+00
24	polls	0004_masentimentdim	2021-02-25 16:36:59.466901+00
25	newsApp	0001_initial	2021-03-06 16:50:58.406224+00
26	polls	0005_sentview	2021-03-06 16:50:58.539323+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
f55pu1s7qnvdw7yv9ae3s0av34l09f3e	e30:1lBzWh:WOPS8MwflgH7rudrDxGKtHvYkZBH8ZLLm_Elsx14zz4	2021-03-02 12:32:23.515538+00
c3xax73j5sg6ctuhehfkom23n13kemws	e30:1lBzWv:xIGg8x5ujbgrMCe3z5OpLvtdqBL0XprlW_R6HjtMqfo	2021-03-02 12:32:37.228932+00
n0oq9919nz75atqsrj32cmq6orl5q4x7	.eJxVjDkOwjAUBe_iGln5P8YLJX3OYD1vOIAcKUuFuDtESgHtm5n3Eh7bWv225NmPSVwEidPvFhAfue0g3dFuk4xTW-cxyF2RB13kMKX8vB7u30HFUr917zpyio1lUpSUIQsCI_dBR0PKKKtQuCDmLrGzBaSz47Nj3UUATrw_sI03Ng:1lBzYf:UeO_r4zyyHW_lH2wzgthpVTOpwc-M0H3mcNTnKY4GO0	2021-03-02 12:34:25.923792+00
o92rdb221aoydiroj3p8sujg6eb8dp7l	.eJxVjDkOwjAUBe_iGln5P8YLJX3OYD1vOIAcKUuFuDtESgHtm5n3Eh7bWv225NmPSVwEidPvFhAfue0g3dFuk4xTW-cxyF2RB13kMKX8vB7u30HFUr917zpyio1lUpSUIQsCI_dBR0PKKKtQuCDmLrGzBaSz47Nj3UUATrw_sI03Ng:1lGhyL:cYt6qMk35DfqlfesFfFf2_yK1SmzvH26ND5JPMKPZTk	2021-03-15 12:48:25.816163+00
103svvo7z8dzwqd7su23oxmcakhfr9jl	.eJxVjDkOwjAUBe_iGln5P8YLJX3OYD1vOIAcKUuFuDtESgHtm5n3Eh7bWv225NmPSVwEidPvFhAfue0g3dFuk4xTW-cxyF2RB13kMKX8vB7u30HFUr917zpyio1lUpSUIQsCI_dBR0PKKKtQuCDmLrGzBaSz47Nj3UUATrw_sI03Ng:1lGqAU:uLFGFdiewCNcwTGVjY8nADQ5aAdjY9QBU85uwUHI5Co	2021-03-15 21:33:30.905398+00
4cqg6x0t1dxys1gxb05roivrkj9nyndj	.eJxVjDkOwjAUBe_iGln5P8YLJX3OYD1vOIAcKUuFuDtESgHtm5n3Eh7bWv225NmPSVwEidPvFhAfue0g3dFuk4xTW-cxyF2RB13kMKX8vB7u30HFUr917zpyio1lUpSUIQsCI_dBR0PKKKtQuCDmLrGzBaSz47Nj3UUATrw_sI03Ng:1lGqDh:pVRzM4JKPJSR0Wq2ujRdX43A3qRjNe_voT8cbjNvqus	2021-03-15 21:36:49.367361+00
1vlweppfjh71bvjl82d0lwgcgfp3rn6b	.eJxVjMEOwiAQRP-FsyGwLaV69O43kF3YlaqBpLQn47_bJj3oHOe9mbcKuC45rI3nMCV1UaBOvx1hfHLZQXpguVcda1nmifSu6IM2fauJX9fD_TvI2PK27pwxMQli5Gih846EjAUCFG-Ex14EIfXOC4xwdoNxdsC4RYCYEqvPFwZDOTQ:1lGqjx:-oYiHZhwoj6an70e-YG2DQj1xPfJm9CcOyoQpC6F56E	2021-03-15 22:10:09.134748+00
swymy01rpj4gki8e0hvnl192nuyv8dac	.eJxVjDkOwjAUBe_iGln5P8YLJX3OYD1vOIAcKUuFuDtESgHtm5n3Eh7bWv225NmPSVwEidPvFhAfue0g3dFuk4xTW-cxyF2RB13kMKX8vB7u30HFUr917zpyio1lUpSUIQsCI_dBR0PKKKtQuCDmLrGzBaSz47Nj3UUATrw_sI03Ng:1lH1h2:ZJw0-tM12wqlmc7PhgZsjflyBJDMHma6K_EIENo-yxU	2021-03-16 09:51:52.315771+00
0v8bi96ct3aiaxuubs8owu0o33ogddgo	.eJxVjEEOwiAQRe_C2pACzggu3XsGMsNQqRpISrsy3l2bdKHb_977LxVpXUpce57jJOqsnDr8bkzpkesG5E711nRqdZkn1puid9r1tUl-Xnb376BQL9-aEZEHEArJSoZMmZMjQQ_oxFoKHMBAcGZMAnb05BhQ5OgHb-wJjXp_AAI8OAQ:1lH5gU:I-IYxUZWMAAV-x8HuGi38p6BqK_yDFCoLHGi1CFFCFk	2021-03-16 14:07:34.744831+00
z5ttb71w68uvg2ux1gfc41cow8egywzy	.eJxVjMsOwiAQRf-FtSFDeYy4dN9vIMMAUjU0Ke3K-O_apAvd3nPOfYlA21rD1vMSpiQuwojT7xaJH7ntIN2p3WbJc1uXKcpdkQftcpxTfl4P9--gUq_f2qHNKQI6OPuiDTPq4nFgSwqUZyQHBMgDkFPJIiaFOlsPymoyBVm8P8sNNxE:1lH5hi:mwuCitZyCCvTt5F-jG__itByMP1pL3x2Pl0lH7FF1X8	2021-03-16 14:08:50.812082+00
y9pw5aa0sid1asw51f4dz6yy88515lsn	.eJxVjDkOwjAUBe_iGln5P8YLJX3OYD1vOIAcKUuFuDtESgHtm5n3Eh7bWv225NmPSVwEidPvFhAfue0g3dFuk4xTW-cxyF2RB13kMKX8vB7u30HFUr917zpyio1lUpSUIQsCI_dBR0PKKKtQuCDmLrGzBaSz47Nj3UUATrw_sI03Ng:1lHOHJ:V3afeOCqOtLMOv_dX36ygXdl7gg3_o8JCJ0MO8zGWJE	2021-03-17 09:58:49.747492+00
p6hefogann22emb5fb92iv9szdi1p3yr	.eJxVjDkOwjAUBe_iGln5P8YLJX3OYD1vOIAcKUuFuDtESgHtm5n3Eh7bWv225NmPSVwEidPvFhAfue0g3dFuk4xTW-cxyF2RB13kMKX8vB7u30HFUr917zpyio1lUpSUIQsCI_dBR0PKKKtQuCDmLrGzBaSz47Nj3UUATrw_sI03Ng:1lHW5U:OU3WVBjwH3d-al6b24xccoj08iCbjxps3r6GluYf9tA	2021-03-17 18:19:08.252952+00
677xc0v91sccrylmku7zhn9ttfbpdm1z	.eJxVjDkOwjAUBe_iGln5P8YLJX3OYD1vOIAcKUuFuDtESgHtm5n3Eh7bWv225NmPSVwEidPvFhAfue0g3dFuk4xTW-cxyF2RB13kMKX8vB7u30HFUr917zpyio1lUpSUIQsCI_dBR0PKKKtQuCDmLrGzBaSz47Nj3UUATrw_sI03Ng:1lIZXn:pSmJ64q-Jloe-xC6JiVCXgjymJMv4h9vAXUkMJKKfXM	2021-03-20 16:12:43.724404+00
vn5iwpeijuq7bss5yijn26daeyy0mqip	.eJxVjDkOwjAUBe_iGlle4o2SPmeI_gYOoESKkwpxd4iUAto3M--lBtjWOmxNlmFkdVZBnX43BHrItAO-w3SbNc3Tuoyod0UftOl-ZnleDvfvoEKr35oiGxNsyAHJAUTykrxBKgLcsRTM0bMrZLMXl5K1iN3VILCLyWdr1fsD8ZQ38Q:1lIaTz:ClsZ_y-yUjMGQfJJ26S0Cd-crrXGZBzNG_WMjlP-HZc	2021-03-20 17:12:51.709586+00
hklgfbza4qn41jjx4l515cmy5tbpdc1g	.eJxVjDkOwjAUBe_iGln5P8YLJX3OYD1vOIAcKUuFuDtESgHtm5n3Eh7bWv225NmPSVwEidPvFhAfue0g3dFuk4xTW-cxyF2RB13kMKX8vB7u30HFUr917zpyio1lUpSUIQsCI_dBR0PKKKtQuCDmLrGzBaSz47Nj3UUATrw_sI03Ng:1lIf5g:yNV_MHigQYtd_uNs7RcubXN8UG8GELCFs8b_3XeoR6g	2021-03-20 22:08:04.964244+00
oak77b3izyey47ya9x1bvpoxs5eh5o5q	.eJxVjMsOwiAQRf-FtSEzFFpw6d5vIDM8pGogKe3K-O_apAvd3nPOfQlP21r81tPi5yjOYhSn340pPFLdQbxTvTUZWl2XmeWuyIN2eW0xPS-H-3dQqJdvPTlwoOOgMyql2ViFqEE5Oxq2nKylkAPj5JCREIDikCArMhYpag7i_QGzHDdX:1lIvF0:SzaLcGo3k2u6M29fRHpJHhIvYp59e8nNr68PnxiV518	2021-03-21 15:22:46.959541+00
e8t8hbmuf1gt6ej90lh3dedmmrjusloj	.eJxVjDEOwjAMRe-SGUVQUidmZOcMlWM7pIASqWknxN1ppQ6w_vfef5uBljkPS9NpGMVcjDeH3y0SP7VsQB5U7tVyLfM0RrspdqfN3qro67q7fweZWl5rBemIOkVQ0jO5XpRFwAWmlYgPEI-YNHpBhhNS6l1Q7zE5B5GRzOcLJQY5SQ:1lJHS4:gSAHwRaQd6SsUmS41Owvj_pV4DcLQ_s7dUqEu468co8	2021-03-22 15:05:44.831889+00
pj0dstzoghivqv7w1mz771k6d2bf5ma7	.eJxVjDkOwjAUBe_iGln5P8YLJX3OYD1vOIAcKUuFuDtESgHtm5n3Eh7bWv225NmPSVwEidPvFhAfue0g3dFuk4xTW-cxyF2RB13kMKX8vB7u30HFUr917zpyio1lUpSUIQsCI_dBR0PKKKtQuCDmLrGzBaSz47Nj3UUATrw_sI03Ng:1lJHVS:TbHWV_teHiVDStFT97SnBGEC4FaGww1ST4AydTx5UcY	2021-03-22 15:09:14.300123+00
fp4h2zzvm6v0s3vimxqywd2nqwyyl1eo	.eJxVjDsOwjAQBe_iGlleZ_2jpOcM1nrt4ABypDipEHeHSCmgfTPzXiLStta49bLEKYuz8OL0uyXiR2k7yHdqt1ny3NZlSnJX5EG7vM65PC-H-3dQqddvPRAm5VW2oDxjNqBAUx4LGgh25KAJA2m2wAqcc4FDsZbVgGiCc1DE-wPLaDbk:1lJHWE:msgFBdNEywsJ9VlPt6DcPQZZmYTFEIG0PEcR40d_RKo	2021-03-22 15:10:02.352835+00
4qoxxaxoz3qn68duh6ad0yf6z8zt3sy0	.eJxVjEsOAiEQBe_C2hA-pgGX7j0DaaBbRg0kw8zKeHdDMgvdvqp6bxFx32rcB61xKeIigjj9bgnzk9oE5YHt3mXubVuXJKciDzrkrRd6XQ_376DiqLNO4AJaAARnrUdigsxn1okVoLaejA4maIfsSavgQiEqyhTnPCerxOcL8004Hg:1lJHWc:f-TIWh5HjrfeL5KL2peHe_PQyVofxNhGBmFShsAQcjI	2021-03-22 15:10:26.55483+00
\.


--
-- Data for Name: ma_sentiment_dim; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ma_sentiment_dim (dateid, timeid, trading_symbol, comp_sentiment, sma, ema, id) FROM stdin;
25	121	BTC	0.5267	0.5267	0.5267	1
25	181	BTC	\N	0.5267	0.5267	2
25	241	BTC	\N	0.5267	0.5267	3
25	301	BTC	\N	0.5267	0.5267	4
25	361	BTC	0.0044	0.2655	0.1928	5
25	421	BTC	\N	0.2655	0.1928	6
25	481	BTC	0.3433	0.2915	0.2620	7
25	541	BTC	\N	0.2915	0.2620	8
25	601	BTC	-0.9990	-0.0312	-0.2168	9
25	661	BTC	\N	-0.0312	-0.2168	10
25	721	BTC	0.4412	0.0633	0.0041	11
25	781	BTC	0.7430	0.1766	0.2105	12
25	841	BTC	0.8934	0.2790	0.3769	13
25	901	BTC	-0.0339	0.2399	0.2867	14
25	961	BTC	-0.9990	0.1022	0.0269	15
25	1021	BTC	0.9732	0.1893	0.2058	16
25	1081	BTC	\N	0.1893	0.2058	17
25	1141	BTC	-0.9953	0.0816	-0.0357	18
25	1201	BTC	0.9982	0.1580	0.1590	19
25	1261	BTC	-0.5859	0.1008	0.0260	20
25	1321	BTC	0.9858	0.1640	0.1900	21
25	1381	BTC	\N	0.1640	0.1900	22
26	1	BTC	\N	0.1640	0.1900	23
26	61	BTC	\N	0.1640	0.1900	24
26	121	BTC	0.9682	0.2176	0.3708	25
26	181	BTC	\N	0.2176	0.3708	26
26	241	BTC	\N	0.2176	0.3708	27
26	301	BTC	\N	0.2176	0.3708	28
26	361	BTC	-0.9996	0.1415	-0.0290	29
26	421	BTC	0.9818	0.1910	0.2256	30
26	481	BTC	\N	0.1910	0.2256	31
26	541	BTC	\N	0.1910	0.2256	32
26	601	BTC	\N	0.1910	0.2256	33
26	661	BTC	\N	0.1910	0.2256	34
26	721	BTC	\N	0.1910	0.2256	35
26	781	BTC	\N	0.1910	0.2256	36
26	841	BTC	\N	0.1910	0.2256	37
26	901	BTC	\N	0.1910	0.2256	38
26	961	BTC	\N	0.1910	0.2256	39
26	1021	BTC	\N	0.1910	0.2256	40
26	1081	BTC	\N	0.1910	0.2256	41
26	1141	BTC	0.0000	0.1804	0.0939	42
26	1201	BTC	0.0550	0.1738	0.0782	43
26	1261	BTC	0.7964	0.2049	0.3060	44
26	1321	BTC	0.3082	0.2098	0.3066	45
26	1381	BTC	0.0710	0.2035	0.2510	46
27	1	BTC	\N	0.2035	0.2510	47
27	61	BTC	\N	0.2035	0.2510	48
27	121	BTC	\N	0.1881	0.2510	49
27	181	BTC	\N	0.1881	0.2510	50
27	241	BTC	0.9325	0.2220	0.4729	51
27	301	BTC	-0.9993	0.1689	0.0708	52
27	361	BTC	\N	0.1763	0.0708	53
27	421	BTC	\N	0.1763	0.0708	54
27	481	BTC	0.6705	0.1912	0.2481	55
27	541	BTC	0.5994	0.2089	0.3374	56
27	601	BTC	-0.0010	0.2523	0.2606	57
27	661	BTC	0.9682	0.2822	0.4074	58
27	721	BTC	0.9682	0.3041	0.5157	59
27	781	BTC	0.9682	0.3135	0.5982	60
27	841	BTC	-0.9970	0.2347	0.3210	61
27	901	BTC	0.9531	0.2759	0.4266	62
27	961	BTC	0.9985	0.3591	0.5190	63
27	1021	BTC	0.9792	0.3593	0.5913	64
27	1081	BTC	0.9984	0.3849	0.6538	65
27	1141	BTC	0.0737	0.4277	0.5665	66
27	1201	BTC	0.4108	0.4042	0.5435	67
27	1261	BTC	0.0476	0.4295	0.4712	68
27	1321	BTC	\N	0.4063	0.4712	69
27	1381	BTC	-0.0007	0.3901	0.3945	70
28	1	BTC	\N	0.3901	0.3945	71
28	61	BTC	\N	0.3901	0.3945	72
28	121	BTC	\N	0.3660	0.3945	73
28	181	BTC	\N	0.3660	0.3945	74
28	241	BTC	0.9682	0.3901	0.5376	75
28	301	BTC	0.2047	0.3829	0.4632	76
28	361	BTC	0.6124	0.4449	0.4938	77
28	421	BTC	-0.5574	0.3857	0.2927	78
28	481	BTC	0.9682	0.4073	0.4148	79
28	541	BTC	\N	0.4073	0.4148	80
28	601	BTC	0.9855	0.4279	0.5256	81
28	661	BTC	0.7096	0.4377	0.5592	82
28	721	BTC	-0.9970	0.3898	0.2880	83
28	781	BTC	-0.3265	0.3667	0.1851	84
28	841	BTC	0.9682	0.3855	0.3119	85
28	901	BTC	-0.3371	0.3636	0.2097	86
28	961	BTC	0.9732	0.3816	0.3271	87
28	1021	BTC	-0.0175	0.3702	0.2752	88
28	1081	BTC	0.9325	0.3858	0.3725	89
28	1141	BTC	0.3873	0.3965	0.3747	90
28	1201	BTC	-0.9994	0.3672	0.1767	91
28	1261	BTC	0.0064	0.3453	0.1524	92
28	1321	BTC	-0.9992	0.3090	-0.0103	93
28	1381	BTC	-0.8308	0.2839	-0.1253	94
29	1	BTC	-0.9955	0.2494	-0.2464	95
29	61	BTC	0.9918	0.2689	-0.0751	96
29	121	BTC	0.9842	0.2872	0.0708	97
29	181	BTC	-0.3362	0.2716	0.0150	98
29	241	BTC	0.3178	0.2563	0.0563	99
29	301	BTC	0.0982	0.2837	0.0620	100
29	361	BTC	0.7906	0.2961	0.1610	101
29	421	BTC	0.6486	0.3045	0.2270	102
29	481	BTC	-0.5205	0.2761	0.1260	103
29	541	BTC	0.9325	0.2840	0.2348	104
29	601	BTC	-0.0311	0.2833	0.1990	105
29	661	BTC	-0.2726	0.2538	0.1355	106
29	721	BTC	0.9985	0.2545	0.2515	107
29	781	BTC	0.5984	0.2457	0.2980	108
29	841	BTC	0.9985	0.2932	0.3920	109
29	901	BTC	-0.6808	0.2543	0.2482	110
29	961	BTC	0.9935	0.2542	0.3480	111
29	1021	BTC	0.9882	0.2544	0.4337	112
29	1081	BTC	0.9970	0.2544	0.5090	113
29	1141	BTC	0.5719	0.2662	0.5174	114
29	1201	BTC	0.9985	0.2802	0.5817	115
29	1261	BTC	-0.1484	0.2756	0.4842	116
29	1321	BTC	0.9657	0.2916	0.5485	117
29	1381	BTC	0.7906	0.3100	0.5808	118
30	1	BTC	0.9818	0.3253	0.6344	119
30	61	BTC	0.9371	0.3389	0.6748	120
30	121	BTC	0.7906	0.3487	0.6902	121
30	181	BTC	\N	0.3487	0.6902	122
30	241	BTC	0.0876	0.3296	0.5993	123
30	301	BTC	0.9974	0.3468	0.6583	124
30	361	BTC	-0.0008	0.3335	0.5620	125
30	421	BTC	0.9682	0.3666	0.6206	126
30	481	BTC	\N	0.3533	0.6206	127
30	541	BTC	\N	0.3533	0.6206	128
30	601	BTC	0.2165	0.3362	0.5473	129
30	661	BTC	0.8176	0.3386	0.5941	130
30	721	BTC	0.9682	0.3822	0.6564	131
30	781	BTC	-0.0007	0.3895	0.5505	132
30	841	BTC	\N	0.3763	0.5505	133
30	901	BTC	\N	0.3929	0.5505	134
30	961	BTC	-0.5267	0.3580	0.3368	135
30	1021	BTC	0.6369	0.3733	0.3927	136
30	1081	BTC	0.9818	0.3744	0.4969	137
30	1141	BTC	0.9806	0.3882	0.5789	138
30	1201	BTC	\N	0.4212	0.5789	139
30	1261	BTC	-0.0439	0.4200	0.4642	140
30	1321	BTC	\N	0.4547	0.4642	141
30	1381	BTC	\N	0.4868	0.4642	142
31	1	BTC	\N	0.5248	0.4642	143
31	61	BTC	0.9477	0.5237	0.5832	144
31	121	BTC	\N	0.5115	0.5832	145
31	181	BTC	0.9981	0.5467	0.6856	146
31	241	BTC	\N	0.5528	0.6856	147
31	301	BTC	0.9716	0.5765	0.7563	148
31	361	BTC	\N	0.5705	0.7563	149
31	421	BTC	\N	0.5683	0.7563	150
31	481	BTC	\N	0.6003	0.7563	151
31	541	BTC	0.9493	0.6008	0.8151	152
31	601	BTC	0.9747	0.6304	0.8566	153
31	661	BTC	-0.9325	0.6110	0.4436	154
31	721	BTC	0.3721	0.5925	0.4285	155
31	781	BTC	0.0377	0.5760	0.3522	156
31	841	BTC	0.9818	0.5756	0.4680	157
31	901	BTC	0.0044	0.5957	0.3868	158
31	961	BTC	0.0742	0.5687	0.3343	159
31	1021	BTC	0.2559	0.5471	0.3216	160
31	1081	BTC	-0.9993	0.4884	0.1131	161
31	1141	BTC	-0.0144	0.4712	0.0935	162
31	1201	BTC	0.9990	0.4712	0.2301	163
31	1261	BTC	\N	0.4900	0.2301	164
31	1321	BTC	\N	0.4751	0.2301	165
31	1381	BTC	\N	0.4649	0.2301	166
32	1	BTC	\N	0.4477	0.2301	167
32	61	BTC	0.9840	0.4493	0.4079	168
32	121	BTC	\N	0.4375	0.4079	169
32	181	BTC	\N	0.4375	0.4079	170
32	241	BTC	0.3246	0.4457	0.3858	171
32	301	BTC	\N	0.4259	0.3858	172
32	361	BTC	0.7506	0.4528	0.4812	173
32	421	BTC	0.9628	0.4526	0.5928	174
32	481	BTC	-0.5574	0.4178	0.3501	175
32	541	BTC	0.7906	0.4302	0.4364	176
32	601	BTC	-0.2407	0.4150	0.3116	177
32	661	BTC	-0.9997	0.3544	0.0816	178
32	721	BTC	0.9970	0.3553	0.2357	179
32	781	BTC	0.9990	0.3887	0.3598	180
32	841	BTC	0.8885	0.4048	0.4433	181
32	901	BTC	0.6808	0.4134	0.4799	182
32	961	BTC	0.6369	0.4498	0.5036	183
32	1021	BTC	-0.0281	0.4290	0.4247	184
32	1081	BTC	-0.0011	0.3983	0.3625	185
32	1141	BTC	0.3824	0.3796	0.3653	186
32	1201	BTC	0.2488	0.3756	0.3487	187
32	1261	BTC	-0.6705	0.3566	0.2046	188
32	1321	BTC	0.7717	0.3688	0.2841	189
32	1381	BTC	\N	0.3688	0.2841	190
33	1	BTC	-0.6705	0.3391	0.1339	191
33	61	BTC	0.9953	0.3405	0.2663	192
33	121	BTC	0.9682	0.3579	0.3720	193
33	181	BTC	0.3280	0.3393	0.3655	194
33	241	BTC	\N	0.3393	0.3655	195
33	301	BTC	0.0015	0.3124	0.3055	196
33	361	BTC	0.9468	0.3295	0.4079	197
33	421	BTC	0.0015	0.3209	0.3447	198
33	481	BTC	\N	0.3209	0.3447	199
33	541	BTC	0.4266	0.3071	0.3588	200
33	601	BTC	\N	0.2891	0.3588	201
33	661	BTC	\N	0.3230	0.3588	202
33	721	BTC	\N	0.3216	0.3588	203
33	781	BTC	\N	0.3300	0.3588	204
33	841	BTC	\N	0.3102	0.3588	205
33	901	BTC	\N	0.3198	0.3588	206
33	961	BTC	\N	0.3277	0.3588	207
33	1021	BTC	\N	0.3301	0.3588	208
33	1081	BTC	\N	0.3759	0.3588	209
33	1141	BTC	\N	0.3899	0.3588	210
33	1201	BTC	\N	0.3673	0.3588	211
33	1261	BTC	\N	0.3673	0.3588	212
33	1321	BTC	\N	0.3673	0.3588	213
33	1381	BTC	\N	0.3673	0.3588	214
34	1	BTC	\N	0.3673	0.3588	215
34	61	BTC	-0.9984	0.2939	-0.4946	216
34	121	BTC	\N	0.2939	-0.4946	217
34	181	BTC	\N	0.2939	-0.4946	218
34	241	BTC	\N	0.2927	-0.4946	219
34	301	BTC	\N	0.2927	-0.4946	220
34	361	BTC	\N	0.2744	-0.4946	221
34	421	BTC	\N	0.2457	-0.4946	222
34	481	BTC	\N	0.2806	-0.4946	223
34	541	BTC	\N	0.2575	-0.4946	224
34	601	BTC	\N	0.2812	-0.4946	225
34	661	BTC	\N	0.3452	-0.4946	226
34	721	BTC	\N	0.3109	-0.4946	227
34	781	BTC	0.6997	0.2952	0.4344	228
34	841	BTC	0.9682	0.2994	0.6869	229
34	901	BTC	\N	0.2782	0.6869	230
34	961	BTC	\N	0.2571	0.6869	231
34	1021	BTC	0.5719	0.2924	0.6385	232
34	1081	BTC	\N	0.3107	0.6385	233
34	1141	BTC	\N	0.3059	0.6385	234
34	1201	BTC	0.9829	0.3549	0.7737	235
34	1261	BTC	0.9601	0.4636	0.8318	236
34	1321	BTC	\N	0.4416	0.8318	237
34	1381	BTC	\N	0.4416	0.8318	238
35	1	BTC	\N	0.5271	0.8318	239
35	61	BTC	\N	0.4881	0.8318	240
35	121	BTC	\N	0.4444	0.8318	241
35	181	BTC	\N	0.4561	0.8318	242
35	241	BTC	\N	0.4561	0.8318	243
35	301	BTC	\N	0.5066	0.8318	244
35	361	BTC	\N	0.4516	0.8318	245
35	421	BTC	\N	0.5159	0.8318	246
35	481	BTC	\N	0.5159	0.8318	247
35	541	BTC	\N	0.5307	0.8318	248
35	601	BTC	\N	0.5307	0.8318	249
35	661	BTC	\N	0.5307	0.8318	250
35	721	BTC	0.9726	0.5939	0.9342	251
35	781	BTC	0.0731	0.5288	0.5413	252
35	841	BTC	0.2268	0.4952	0.4328	253
35	901	BTC	0.2793	0.4736	0.3891	254
35	961	BTC	0.0246	0.4328	0.2990	255
35	1021	BTC	-0.0239	0.3947	0.2273	256
35	1081	BTC	0.7906	0.4252	0.3422	257
35	1141	BTC	\N	0.4252	0.3422	258
35	1201	BTC	0.5994	0.4376	0.3971	259
35	1261	BTC	0.7096	0.4558	0.4589	260
35	1321	BTC	0.9984	0.4897	0.5591	261
35	1381	BTC	-0.6597	0.4221	0.3440	262
36	1	BTC	0.7906	0.4425	0.4195	263
36	61	BTC	\N	0.5273	0.4195	264
36	121	BTC	\N	0.5273	0.4195	265
36	181	BTC	\N	0.5273	0.4195	266
36	241	BTC	-0.5859	0.4655	0.1876	267
36	301	BTC	0.7906	0.4826	0.3144	268
36	361	BTC	\N	0.4826	0.3144	269
36	421	BTC	\N	0.4826	0.3144	270
36	481	BTC	0.3074	0.4738	0.3127	271
36	541	BTC	0.9990	0.4988	0.4635	272
36	601	BTC	0.0000	0.4761	0.3697	273
36	661	BTC	\N	0.4761	0.3697	274
36	721	BTC	-0.9997	0.4120	0.0792	275
36	781	BTC	0.5574	0.4058	0.1732	276
36	841	BTC	0.9853	0.4065	0.3234	277
36	901	BTC	\N	0.4065	0.3234	278
36	961	BTC	\N	0.4065	0.3234	279
36	1021	BTC	\N	0.3990	0.3234	280
36	1081	BTC	\N	0.3990	0.3234	281
36	1141	BTC	\N	0.3990	0.3234	282
36	1201	BTC	0.9771	0.3988	0.5220	283
36	1261	BTC	-0.5574	0.3298	0.2418	284
36	1321	BTC	0.0078	0.3158	0.1879	285
36	1381	BTC	-0.0212	0.3017	0.1440	286
37	1	BTC	0.9970	0.3296	0.3104	287
37	61	BTC	\N	0.3296	0.3104	288
37	121	BTC	0.0904	0.3204	0.2650	289
37	181	BTC	0.9682	0.3443	0.4002	290
37	241	BTC	-0.6486	0.3089	0.2098	291
37	301	BTC	\N	0.3089	0.2098	292
37	361	BTC	0.4266	0.3129	0.2520	293
37	421	BTC	\N	0.3129	0.2520	294
37	481	BTC	\N	0.3129	0.2520	295
37	541	BTC	0.0245	0.3033	0.1996	296
37	601	BTC	-0.2719	0.2848	0.1007	297
37	661	BTC	\N	0.2848	0.1007	298
37	721	BTC	0.3688	0.2653	0.1592	299
37	781	BTC	-0.5423	0.2454	0.0181	300
37	841	BTC	0.9686	0.2694	0.1972	301
37	901	BTC	0.1131	0.2640	0.1822	302
37	961	BTC	0.9985	0.2954	0.3217	303
37	1021	BTC	0.7906	0.3217	0.3989	304
37	1081	BTC	0.4191	0.3097	0.4021	305
37	1141	BTC	-0.0152	0.2996	0.3372	306
37	1201	BTC	0.4108	0.2937	0.3484	307
37	1261	BTC	0.3873	0.2836	0.3542	308
37	1321	BTC	-0.0311	0.2514	0.2976	309
37	1381	BTC	0.9628	0.3021	0.3940	310
38	1	BTC	\N	0.2864	0.3940	311
38	61	BTC	\N	0.2864	0.3940	312
38	121	BTC	-0.9992	0.2462	0.1402	313
38	181	BTC	\N	0.2462	0.1402	314
38	241	BTC	\N	0.2730	0.1402	315
38	301	BTC	0.1153	0.2513	0.1347	316
38	361	BTC	\N	0.2513	0.1347	317
38	421	BTC	\N	0.2513	0.1347	318
38	481	BTC	0.9955	0.2735	0.3512	319
38	541	BTC	0.8862	0.2698	0.4715	320
38	601	BTC	-0.6486	0.2489	0.2407	321
38	661	BTC	0.4549	0.2553	0.2819	322
38	721	BTC	0.3669	0.2980	0.2973	323
38	781	BTC	\N	0.2897	0.2973	324
38	841	BTC	0.2273	0.2652	0.2837	325
38	901	BTC	-0.9325	0.2278	0.0607	326
38	961	BTC	0.5267	0.2368	0.1421	327
38	1021	BTC	\N	0.2368	0.1421	328
38	1081	BTC	\N	0.2368	0.1421	329
38	1141	BTC	\N	0.2368	0.1421	330
38	1201	BTC	\N	0.2137	0.1421	331
38	1261	BTC	\N	0.2386	0.1421	332
38	1321	BTC	\N	0.2463	0.1421	333
38	1381	BTC	\N	0.2555	0.1421	334
39	1	BTC	\N	0.2290	0.1421	335
39	61	BTC	\N	0.2290	0.1421	336
39	121	BTC	\N	0.2342	0.1421	337
39	181	BTC	\N	0.2059	0.1421	338
39	241	BTC	\N	0.2401	0.1421	339
39	301	BTC	0.9732	0.2683	0.5815	340
39	361	BTC	-0.6705	0.2261	0.1071	341
39	421	BTC	0.9818	0.2541	0.3732	342
39	481	BTC	\N	0.2541	0.3732	343
39	541	BTC	0.9985	0.2902	0.5534	344
39	601	BTC	\N	0.3118	0.5534	345
39	661	BTC	0.5106	0.3192	0.5416	346
39	721	BTC	-0.9978	0.2685	0.1684	347
39	781	BTC	0.0015	0.2887	0.1319	348
39	841	BTC	-0.7506	0.2250	-0.0458	349
39	901	BTC	0.0675	0.2233	-0.0245	350
39	961	BTC	0.0113	0.1868	-0.0181	351
39	1021	BTC	0.5719	0.1787	0.0828	352
39	1081	BTC	0.9970	0.2001	0.2334	353
39	1141	BTC	0.9985	0.2376	0.3556	354
39	1201	BTC	-0.7906	0.1931	0.1772	355
39	1261	BTC	0.9984	0.2157	0.3022	356
39	1321	BTC	\N	0.2252	0.3022	357
39	1381	BTC	\N	0.1957	0.3022	358
40	1	BTC	-0.0009	0.1882	0.2448	359
40	61	BTC	\N	0.1882	0.2448	360
40	121	BTC	\N	0.2357	0.2448	361
40	181	BTC	\N	0.2357	0.2448	362
40	241	BTC	\N	0.2357	0.2448	363
40	301	BTC	\N	0.2407	0.2448	364
40	361	BTC	-0.1998	0.2231	0.1074	365
40	421	BTC	\N	0.2231	0.1074	366
40	481	BTC	\N	0.1909	0.1074	367
40	541	BTC	0.7579	0.1855	0.3168	368
40	601	BTC	\N	0.2218	0.3168	369
40	661	BTC	0.3115	0.2156	0.3152	370
40	721	BTC	0.9682	0.2417	0.4831	371
40	781	BTC	-0.5574	0.2084	0.2450	372
40	841	BTC	0.9882	0.2401	0.4003	373
40	901	BTC	-0.9993	0.2373	0.1285	374
40	961	BTC	0.9803	0.2562	0.2844	375
40	1021	BTC	0.9758	0.2850	0.4050	376
40	1081	BTC	0.9682	0.3113	0.4993	377
40	1141	BTC	0.4178	0.3152	0.4861	378
40	1201	BTC	0.4547	0.3202	0.4812	379
40	1261	BTC	0.8225	0.3375	0.5336	380
40	1321	BTC	-0.2808	0.3169	0.4109	381
40	1381	BTC	0.9792	0.3383	0.4951	382
41	1	BTC	0.9840	0.3585	0.5665	383
41	61	BTC	0.0091	0.3479	0.4861	384
41	121	BTC	-0.8652	0.3122	0.2934	385
41	181	BTC	0.2268	0.3098	0.2840	386
41	241	BTC	-0.9993	0.2734	0.1041	387
41	301	BTC	0.9818	0.2736	0.2263	388
41	361	BTC	-0.0249	0.2916	0.1916	389
41	421	BTC	-0.8934	0.2395	0.0421	390
41	481	BTC	-0.9944	0.2061	-0.1000	391
41	541	BTC	0.9682	0.2053	0.0459	392
41	601	BTC	-0.5574	0.1852	-0.0362	393
41	661	BTC	\N	0.1764	-0.0362	394
41	721	BTC	\N	0.2091	-0.0362	395
41	781	BTC	\N	0.2150	-0.0362	396
41	841	BTC	\N	0.2434	-0.0362	397
41	901	BTC	\N	0.2487	-0.0362	398
41	961	BTC	\N	0.2561	-0.0362	399
41	1021	BTC	\N	0.2460	-0.0362	400
41	1081	BTC	\N	0.2209	-0.0362	401
41	1141	BTC	\N	0.1941	-0.0362	402
41	1201	BTC	\N	0.2293	-0.0362	403
41	1261	BTC	\N	0.2008	-0.0362	404
41	1321	BTC	\N	0.2008	-0.0362	405
41	1381	BTC	\N	0.2008	-0.0362	406
42	1	BTC	0.0082	0.2011	-0.0139	407
42	61	BTC	0.9682	0.2285	0.3465	408
42	121	BTC	\N	0.2285	0.3465	409
42	181	BTC	0.5106	0.2383	0.4003	410
42	241	BTC	0.5859	0.2498	0.4513	411
42	301	BTC	0.4331	0.2558	0.4469	412
42	361	BTC	\N	0.2709	0.4469	413
42	421	BTC	\N	0.2709	0.4469	414
42	481	BTC	0.4098	0.2754	0.4369	415
42	541	BTC	\N	0.2593	0.4369	416
42	601	BTC	\N	0.2593	0.4369	417
42	661	BTC	-0.5859	0.2294	0.1371	418
42	721	BTC	0.9766	0.2297	0.3493	419
42	781	BTC	0.9985	0.2816	0.4959	420
42	841	BTC	0.9360	0.2798	0.5868	421
42	901	BTC	-0.9963	0.2799	0.2820	422
42	961	BTC	-0.5574	0.2287	0.1294	423
42	1021	BTC	-0.0160	0.1956	0.1042	424
42	1081	BTC	-0.0244	0.1625	0.0828	425
42	1141	BTC	0.6369	0.1698	0.1722	426
42	1201	BTC	-0.9970	0.1214	-0.0113	427
42	1261	BTC	-0.0292	0.0930	-0.0141	428
42	1321	BTC	-0.0152	0.1019	-0.0142	429
42	1381	BTC	0.0660	0.0715	-0.0024	430
43	1	BTC	0.9719	0.0711	0.1396	431
43	61	BTC	0.3177	0.0813	0.1652	432
43	121	BTC	0.9705	0.1425	0.2799	433
43	181	BTC	\N	0.1396	0.2799	434
43	241	BTC	0.3082	0.1847	0.2844	435
43	301	BTC	0.9818	0.1847	0.3927	436
43	361	BTC	-0.7003	0.1614	0.2266	437
43	421	BTC	\N	0.1991	0.2266	438
43	481	BTC	\N	0.2433	0.2266	439
43	541	BTC	0.9985	0.2444	0.3727	440
43	601	BTC	\N	0.2753	0.3727	441
43	661	BTC	\N	0.2753	0.3727	442
43	721	BTC	0.9970	0.3020	0.5133	443
43	781	BTC	-0.0007	0.2912	0.4073	444
43	841	BTC	0.4062	0.2951	0.4071	445
43	901	BTC	\N	0.2951	0.4071	446
43	961	BTC	\N	0.2951	0.4071	447
43	1021	BTC	-0.9992	0.2520	0.0864	448
43	1081	BTC	\N	0.2520	0.0864	449
43	1141	BTC	0.9818	0.2755	0.2949	450
43	1201	BTC	0.9837	0.2977	0.4408	451
43	1261	BTC	0.9781	0.3183	0.5463	452
43	1321	BTC	0.9702	0.3375	0.6246	453
43	1381	BTC	0.9920	0.3562	0.6892	454
44	1	BTC	\N	0.3664	0.6892	455
44	61	BTC	\N	0.3482	0.6892	456
44	121	BTC	\N	0.3482	0.6892	457
44	181	BTC	\N	0.3431	0.6892	458
44	241	BTC	\N	0.3353	0.6892	459
44	301	BTC	\N	0.3320	0.6892	460
44	361	BTC	\N	0.3320	0.6892	461
44	421	BTC	\N	0.3320	0.6892	462
44	481	BTC	\N	0.3293	0.6892	463
44	541	BTC	\N	0.3293	0.6892	464
44	601	BTC	0.3499	0.3300	0.5335	465
44	661	BTC	\N	0.3616	0.5335	466
44	721	BTC	\N	0.3396	0.5335	467
44	781	BTC	\N	0.3152	0.5335	468
44	841	BTC	\N	0.2913	0.5335	469
44	901	BTC	\N	0.3428	0.5335	470
44	961	BTC	\N	0.3803	0.5335	471
44	1021	BTC	\N	0.3976	0.5335	472
44	1081	BTC	\N	0.4168	0.5335	473
44	1141	BTC	\N	0.4063	0.5335	474
44	1201	BTC	\N	0.4764	0.5335	475
44	1261	BTC	\N	0.5031	0.5335	476
44	1321	BTC	\N	0.5318	0.5335	477
44	1381	BTC	\N	0.5593	0.5335	478
45	1	BTC	\N	0.5335	0.5335	479
45	61	BTC	\N	0.5478	0.5335	480
45	121	BTC	\N	0.5177	0.5335	481
45	181	BTC	\N	0.5177	0.5335	482
45	241	BTC	\N	0.5338	0.5335	483
45	301	BTC	\N	0.4964	0.5335	484
45	361	BTC	\N	0.6052	0.5335	485
45	421	BTC	\N	0.6052	0.5335	486
45	481	BTC	\N	0.6052	0.5335	487
45	541	BTC	\N	0.5659	0.5335	488
45	601	BTC	\N	0.5659	0.5335	489
45	661	BTC	\N	0.5659	0.5335	490
45	721	BTC	\N	0.5180	0.5335	491
45	781	BTC	0.9682	0.6257	0.9492	492
45	841	BTC	-0.7650	0.4955	0.0500	493
45	901	BTC	0.7003	0.5160	0.2952	494
45	961	BTC	-0.9970	0.3785	-0.0966	495
45	1021	BTC	\N	0.5162	-0.0966	496
45	1081	BTC	0.9729	0.5577	0.2110	497
45	1141	BTC	-0.9972	0.3778	-0.0900	498
45	1201	BTC	\N	0.3172	-0.0900	499
45	1261	BTC	-0.0862	0.2108	-0.0891	500
45	1321	BTC	\N	0.1264	-0.0891	501
45	1381	BTC	\N	0.0182	-0.0891	502
46	1	BTC	0.6166	0.0847	0.1062	503
46	61	BTC	\N	0.0847	0.1062	504
46	121	BTC	0.9325	0.1695	0.3287	505
46	181	BTC	\N	0.1695	0.3287	506
46	241	BTC	\N	0.1695	0.3287	507
46	301	BTC	-0.5994	0.0996	0.0571	508
46	361	BTC	\N	0.0996	0.0571	509
46	421	BTC	\N	0.0996	0.0571	510
46	481	BTC	\N	0.0996	0.0571	511
46	541	BTC	\N	0.0996	0.0571	512
46	601	BTC	\N	0.0746	0.0571	513
46	661	BTC	\N	0.0746	0.0571	514
46	721	BTC	\N	0.0746	0.0571	515
46	781	BTC	\N	0.0746	0.0571	516
46	841	BTC	\N	0.0746	0.0571	517
46	901	BTC	\N	0.0746	0.0571	518
46	961	BTC	\N	0.0746	0.0571	519
46	1021	BTC	\N	0.0746	0.0571	520
46	1081	BTC	\N	0.0746	0.0571	521
46	1141	BTC	\N	0.0746	0.0571	522
46	1201	BTC	\N	0.0746	0.0571	523
46	1261	BTC	\N	0.0746	0.0571	524
46	1321	BTC	\N	0.0746	0.0571	525
46	1381	BTC	\N	0.0746	0.0571	526
47	1	BTC	\N	0.0746	0.0571	527
47	61	BTC	\N	0.0746	0.0571	528
47	121	BTC	0.9325	0.1526	0.8058	529
47	181	BTC	\N	0.1526	0.8058	530
47	241	BTC	-0.0643	0.1345	0.3425	531
47	301	BTC	\N	0.1345	0.3425	532
47	361	BTC	\N	0.1345	0.3425	533
47	421	BTC	\N	0.1345	0.3425	534
47	481	BTC	\N	0.1345	0.3425	535
47	541	BTC	\N	0.1345	0.3425	536
47	601	BTC	\N	0.1345	0.3425	537
47	661	BTC	\N	0.1345	0.3425	538
47	721	BTC	\N	0.1345	0.3425	539
47	781	BTC	0.9970	0.1369	0.7736	540
47	841	BTC	0.9957	0.2836	0.8695	541
47	901	BTC	0.9882	0.3076	0.9090	542
47	961	BTC	\N	0.4262	0.9090	543
47	1021	BTC	0.9840	0.4727	0.9320	544
47	1081	BTC	-0.5267	0.3477	0.5506	545
47	1141	BTC	0.3876	0.4631	0.5128	546
47	1201	BTC	0.4879	0.4650	0.5075	547
47	1261	BTC	0.9100	0.5417	0.5863	548
47	1321	BTC	\N	0.5417	0.5863	549
47	1381	BTC	0.8934	0.5668	0.6498	550
48	1	BTC	\N	0.5630	0.6498	551
48	61	BTC	\N	0.5630	0.6498	552
48	121	BTC	\N	0.5322	0.6498	553
48	181	BTC	\N	0.5322	0.6498	554
48	241	BTC	\N	0.5322	0.6498	555
48	301	BTC	\N	0.6350	0.6498	556
48	361	BTC	-0.7269	0.5215	0.1539	557
48	421	BTC	0.9792	0.5567	0.3962	558
48	481	BTC	0.4397	0.5484	0.4072	559
48	541	BTC	\N	0.5484	0.4072	560
48	601	BTC	\N	0.5484	0.4072	561
48	661	BTC	\N	0.5484	0.4072	562
48	721	BTC	-0.9996	0.4452	-0.0284	563
48	781	BTC	\N	0.4452	-0.0284	564
48	841	BTC	\N	0.4452	-0.0284	565
48	901	BTC	\N	0.4452	-0.0284	566
48	961	BTC	\N	0.4452	-0.0284	567
48	1021	BTC	-0.4512	0.3892	-0.1923	568
48	1081	BTC	\N	0.3892	-0.1923	569
48	1141	BTC	0.9819	0.4240	0.2075	570
48	1201	BTC	0.9712	0.4544	0.4229	571
48	1261	BTC	\N	0.4544	0.4229	572
48	1321	BTC	0.0017	0.4306	0.3079	573
48	1381	BTC	0.4749	0.4328	0.3479	574
49	1	BTC	0.4561	0.4339	0.3713	575
49	61	BTC	\N	0.4339	0.3713	576
49	121	BTC	\N	0.4090	0.3713	577
49	181	BTC	0.7430	0.4249	0.4641	578
49	241	BTC	\N	0.4494	0.4641	579
49	301	BTC	-0.0008	0.4279	0.3481	580
49	361	BTC	\N	0.4279	0.3481	581
49	421	BTC	\N	0.4279	0.3481	582
49	481	BTC	\N	0.4279	0.3481	583
49	541	BTC	0.4000	0.4266	0.3640	584
49	601	BTC	\N	0.4266	0.3640	585
49	661	BTC	-0.9993	0.3647	-0.0311	586
49	721	BTC	0.9818	0.3904	0.2227	587
49	781	BTC	0.3272	0.3625	0.2462	588
49	841	BTC	0.6249	0.3470	0.3240	589
49	901	BTC	-0.9993	0.2642	0.0703	590
49	961	BTC	\N	0.2642	0.0703	591
49	1021	BTC	-0.0481	0.2212	0.0462	592
49	1081	BTC	0.9682	0.2835	0.2214	593
49	1141	BTC	\N	0.2790	0.2214	594
49	1201	BTC	0.0271	0.2589	0.1822	595
49	1261	BTC	0.8934	0.2582	0.3166	596
49	1321	BTC	-0.9992	0.2058	0.0811	597
49	1381	BTC	\N	0.1759	0.0811	598
50	1	BTC	0.0015	0.1686	0.0657	599
50	61	BTC	\N	0.1686	0.0657	600
50	121	BTC	\N	0.1686	0.0657	601
50	181	BTC	0.9985	0.2018	0.2786	602
50	241	BTC	\N	0.2018	0.2786	603
50	301	BTC	\N	0.2018	0.2786	604
50	361	BTC	0.5859	0.2543	0.3584	605
50	421	BTC	\N	0.2241	0.3584	606
50	481	BTC	\N	0.2148	0.3584	607
50	541	BTC	\N	0.2148	0.3584	608
50	601	BTC	\N	0.2148	0.3584	609
50	661	BTC	\N	0.2148	0.3584	610
50	721	BTC	\N	0.2700	0.3584	611
50	781	BTC	\N	0.2700	0.3584	612
50	841	BTC	\N	0.2700	0.3584	613
50	901	BTC	\N	0.2700	0.3584	614
50	961	BTC	\N	0.2700	0.3584	615
50	1021	BTC	\N	0.3043	0.3584	616
50	1081	BTC	\N	0.3043	0.3584	617
50	1141	BTC	\N	0.2704	0.3584	618
50	1201	BTC	\N	0.2336	0.3584	619
50	1261	BTC	\N	0.2336	0.3584	620
50	1321	BTC	\N	0.2464	0.3584	621
50	1381	BTC	\N	0.2330	0.3584	622
51	1	BTC	\N	0.2190	0.3584	623
51	61	BTC	\N	0.2190	0.3584	624
51	121	BTC	\N	0.2190	0.3584	625
51	181	BTC	\N	0.1841	0.3584	626
51	241	BTC	\N	0.1841	0.3584	627
51	301	BTC	\N	0.1973	0.3584	628
51	361	BTC	\N	0.1973	0.3584	629
51	421	BTC	\N	0.1973	0.3584	630
51	481	BTC	\N	0.1973	0.3584	631
51	541	BTC	\N	0.1817	0.3584	632
51	601	BTC	\N	0.1817	0.3584	633
51	661	BTC	\N	0.2802	0.3584	634
51	721	BTC	\N	0.2164	0.3584	635
51	781	BTC	\N	0.2053	0.3584	636
51	841	BTC	\N	0.1587	0.3584	637
51	901	BTC	\N	0.3034	0.3584	638
51	961	BTC	\N	0.3034	0.3584	639
51	1021	BTC	\N	0.3536	0.3584	640
51	1081	BTC	\N	0.2512	0.3584	641
51	1141	BTC	\N	0.2512	0.3584	642
51	1201	BTC	\N	0.2960	0.3584	643
51	1261	BTC	\N	0.1467	0.3584	644
51	1321	BTC	\N	0.5286	0.3584	645
51	1381	BTC	\N	0.5286	0.3584	646
52	1	BTC	\N	0.7922	0.3584	647
52	61	BTC	\N	0.7922	0.3584	648
52	121	BTC	\N	0.7922	0.3584	649
52	181	BTC	\N	0.5859	0.3584	650
52	241	BTC	\N	0.5859	0.3584	651
52	301	BTC	\N	0.5859	0.3584	652
52	361	BTC	\N	\N	0.3584	653
52	421	BTC	\N	\N	0.3584	654
52	481	BTC	\N	\N	0.3584	655
52	541	BTC	\N	\N	0.3584	656
52	601	BTC	\N	\N	0.3584	657
52	661	BTC	\N	\N	0.3584	658
52	721	BTC	0.0086	0.0086	0.0092	659
52	781	BTC	0.3504	0.1795	0.1918	660
52	841	BTC	\N	0.1795	0.1918	661
52	901	BTC	0.6434	0.3341	0.3797	662
52	961	BTC	-0.9993	0.0008	-0.0676	663
52	1021	BTC	\N	0.0008	-0.0676	664
52	1081	BTC	0.9826	0.1971	0.2492	665
52	1141	BTC	0.3924	0.2297	0.2861	666
52	1201	BTC	0.0164	0.1992	0.2242	667
52	1261	BTC	\N	0.1992	0.2242	668
52	1321	BTC	\N	0.1992	0.2242	669
52	1381	BTC	\N	0.1992	0.2242	670
53	1	BTC	0.9873	0.2977	0.4449	671
53	61	BTC	\N	0.2977	0.4449	672
53	121	BTC	-0.9968	0.1539	0.0441	673
53	181	BTC	0.0015	0.1386	0.0338	674
53	241	BTC	\N	0.1386	0.0338	675
53	301	BTC	-0.8126	0.0522	-0.1730	676
53	361	BTC	0.9729	0.1289	0.0790	677
53	421	BTC	0.9983	0.1958	0.2651	678
53	481	BTC	-0.0008	0.1817	0.2147	679
53	541	BTC	0.9990	0.2362	0.3553	680
53	601	BTC	-0.2064	0.2086	0.2590	681
53	661	BTC	-0.3504	0.1757	0.1584	682
53	721	BTC	0.9682	0.2197	0.2880	683
53	781	BTC	0.5267	0.2359	0.3252	684
53	841	BTC	0.5267	0.2504	0.3559	685
53	901	BTC	0.5046	0.2625	0.3782	686
53	961	BTC	0.5423	0.2752	0.4023	687
53	1021	BTC	0.0534	0.2656	0.3517	688
53	1081	BTC	0.9987	0.2961	0.4445	689
53	1141	BTC	\N	0.2961	0.4445	690
53	1201	BTC	-0.1910	0.2766	0.3426	691
53	1261	BTC	0.0448	0.2677	0.2961	692
53	1321	BTC	0.3280	0.2700	0.3010	693
53	1381	BTC	-0.6124	0.2384	0.1642	694
54	1	BTC	\N	0.2384	0.1642	695
54	61	BTC	\N	0.2384	0.1642	696
54	121	BTC	-0.0027	0.2301	0.1329	697
54	181	BTC	0.5267	0.2400	0.2028	698
54	241	BTC	0.9843	0.2640	0.3357	699
54	301	BTC	0.9985	0.2870	0.4444	700
54	361	BTC	0.9995	0.3086	0.5327	701
54	421	BTC	0.0000	0.2995	0.4501	702
54	481	BTC	0.9834	0.3190	0.5310	703
54	541	BTC	0.9702	0.3371	0.5965	704
54	601	BTC	\N	0.3371	0.5965	705
54	661	BTC	\N	0.3371	0.5965	706
54	721	BTC	\N	0.3465	0.5965	707
54	781	BTC	\N	0.3464	0.5965	708
54	841	BTC	\N	0.3464	0.5965	709
54	901	BTC	\N	0.3374	0.5965	710
54	961	BTC	\N	0.3792	0.5965	711
54	1021	BTC	\N	0.3792	0.5965	712
54	1081	BTC	\N	0.3597	0.5965	713
54	1141	BTC	\N	0.3586	0.5965	714
54	1201	BTC	\N	0.3704	0.5965	715
54	1261	BTC	\N	0.3704	0.5965	716
54	1321	BTC	\N	0.3704	0.5965	717
54	1381	BTC	\N	0.3704	0.5965	718
55	1	BTC	\N	0.3484	0.5965	719
55	61	BTC	0.9970	0.3707	0.8349	720
55	121	BTC	-0.7269	0.3801	0.1989	721
55	181	BTC	\N	0.3936	0.1989	722
55	241	BTC	\N	0.3936	0.1989	723
55	301	BTC	\N	0.4382	0.1989	724
55	361	BTC	0.9325	0.4367	0.5065	725
55	421	BTC	\N	0.4151	0.5065	726
55	481	BTC	\N	0.4318	0.5065	727
55	541	BTC	\N	0.4082	0.5065	728
55	601	BTC	\N	0.4349	0.5065	729
55	661	BTC	0.9970	0.4935	0.7329	730
55	721	BTC	0.2312	0.4614	0.5585	731
55	781	BTC	0.6124	0.4651	0.5740	732
55	841	BTC	0.4415	0.4614	0.5411	733
55	901	BTC	0.9982	0.4829	0.6429	734
55	961	BTC	0.3034	0.4725	0.5735	735
55	1021	BTC	0.4199	0.4884	0.5442	736
55	1081	BTC	\N	0.4652	0.5442	737
55	1141	BTC	\N	0.4652	0.5442	738
55	1201	BTC	0.9986	0.5193	0.6472	739
55	1261	BTC	0.9682	0.5613	0.7137	740
55	1321	BTC	\N	0.5724	0.7137	741
55	1381	BTC	\N	0.6316	0.7137	742
56	1	BTC	\N	0.6316	0.7137	743
56	61	BTC	\N	0.6316	0.7137	744
56	121	BTC	\N	0.6650	0.7137	745
56	181	BTC	\N	0.6727	0.7137	746
56	241	BTC	\N	0.6544	0.7137	747
56	301	BTC	\N	0.6329	0.7137	748
56	361	BTC	-0.9682	0.5099	-0.0080	749
56	421	BTC	0.9758	0.5709	0.3178	750
56	481	BTC	\N	0.5434	0.3178	751
56	541	BTC	\N	0.5129	0.3178	752
56	601	BTC	0.4723	0.5102	0.3699	753
56	661	BTC	-0.1282	0.4703	0.2304	754
56	721	BTC	0.3823	0.4651	0.2675	755
56	781	BTC	0.8934	0.4889	0.4051	756
56	841	BTC	0.9682	0.5141	0.5190	757
56	901	BTC	\N	0.5141	0.5190	758
56	961	BTC	0.9823	0.5375	0.6174	759
56	1021	BTC	-0.0150	0.5112	0.4930	760
56	1081	BTC	0.0015	0.4881	0.4021	761
56	1141	BTC	\N	0.4881	0.4021	762
56	1201	BTC	0.3511	0.4821	0.3920	763
56	1261	BTC	-0.9970	0.4205	0.1341	764
56	1321	BTC	0.9549	0.4419	0.2789	765
56	1381	BTC	-0.9988	0.3864	0.0628	766
57	1	BTC	0.0076	0.3724	0.0538	767
57	61	BTC	\N	0.3484	0.0538	768
57	121	BTC	0.9986	0.4148	0.2225	769
57	181	BTC	\N	0.4148	0.2225	770
57	241	BTC	0.9001	0.4327	0.3527	771
57	301	BTC	0.9325	0.4506	0.4579	772
57	361	BTC	0.0136	0.4178	0.3810	773
57	421	BTC	\N	0.4178	0.3810	774
57	481	BTC	\N	0.4178	0.3810	775
57	541	BTC	\N	0.4178	0.3810	776
57	601	BTC	\N	0.4178	0.3810	777
57	661	BTC	\N	0.3963	0.3810	778
57	721	BTC	\N	0.4027	0.3810	779
57	781	BTC	\N	0.3943	0.3810	780
57	841	BTC	\N	0.3923	0.3810	781
57	901	BTC	\N	0.3660	0.3810	782
57	961	BTC	\N	0.3688	0.3810	783
57	1021	BTC	\N	0.3664	0.3810	784
57	1081	BTC	\N	0.3664	0.3810	785
57	1141	BTC	\N	0.3664	0.3810	786
57	1201	BTC	\N	0.3348	0.3810	787
57	1261	BTC	\N	0.3014	0.3810	788
57	1321	BTC	\N	0.3014	0.3810	789
57	1381	BTC	\N	0.3014	0.3810	790
58	1	BTC	\N	0.3014	0.3810	791
58	61	BTC	\N	0.3014	0.3810	792
58	121	BTC	\N	0.3014	0.3810	793
58	181	BTC	\N	0.3014	0.3810	794
58	241	BTC	\N	0.3014	0.3810	795
58	301	BTC	\N	0.3014	0.3810	796
58	361	BTC	\N	0.3720	0.3810	797
58	421	BTC	\N	0.3364	0.3810	798
58	481	BTC	\N	0.3364	0.3810	799
58	541	BTC	\N	0.3364	0.3810	800
58	601	BTC	\N	0.3279	0.3810	801
58	661	BTC	\N	0.3584	0.3810	802
58	721	BTC	\N	0.3566	0.3810	803
58	781	BTC	\N	0.3154	0.3810	804
58	841	BTC	\N	0.2610	0.3810	805
58	901	BTC	\N	0.2610	0.3810	806
58	961	BTC	\N	0.1954	0.3810	807
58	1021	BTC	\N	0.2164	0.3810	808
58	1081	BTC	\N	0.2403	0.3810	809
58	1141	BTC	\N	0.2403	0.3810	810
58	1201	BTC	\N	0.2264	0.3810	811
58	1261	BTC	\N	0.4012	0.3810	812
58	1321	BTC	\N	0.3089	0.3810	813
58	1381	BTC	\N	0.5705	0.3810	814
59	1	BTC	\N	0.7112	0.3810	815
59	61	BTC	\N	0.7112	0.3810	816
59	121	BTC	-0.9987	0.2119	-0.9842	817
59	181	BTC	\N	0.2119	-0.9842	818
59	241	BTC	\N	-0.0175	-0.9842	819
59	301	BTC	\N	-0.4925	-0.9842	820
59	361	BTC	\N	-0.9987	-0.9842	821
59	421	BTC	\N	-0.9987	-0.9842	822
59	481	BTC	\N	-0.9987	-0.9842	823
59	541	BTC	\N	-0.9987	-0.9842	824
59	601	BTC	\N	-0.9987	-0.9842	825
59	661	BTC	\N	-0.9987	-0.9842	826
59	721	BTC	\N	-0.9987	-0.9842	827
59	781	BTC	0.9670	-0.0158	0.6292	828
59	841	BTC	0.9670	0.3118	0.7941	829
59	901	BTC	\N	0.3118	0.7941	830
59	961	BTC	\N	0.3118	0.7941	831
59	1021	BTC	\N	0.3118	0.7941	832
59	1081	BTC	0.9670	0.4756	0.8743	833
59	1141	BTC	\N	0.4756	0.8743	834
59	1201	BTC	\N	0.4756	0.8743	835
59	1261	BTC	\N	0.4756	0.8743	836
59	1321	BTC	\N	0.4756	0.8743	837
59	1381	BTC	\N	0.4756	0.8743	838
60	1	BTC	\N	0.4756	0.8743	839
60	61	BTC	\N	0.4756	0.8743	840
60	121	BTC	\N	0.4756	0.8743	841
60	181	BTC	\N	0.4756	0.8743	842
60	241	BTC	\N	0.4756	0.8743	843
60	301	BTC	\N	0.4756	0.8743	844
60	361	BTC	\N	0.4756	0.8743	845
60	421	BTC	\N	0.4756	0.8743	846
60	481	BTC	\N	0.4756	0.8743	847
60	541	BTC	\N	0.4756	0.8743	848
60	601	BTC	-0.2757	0.3253	-0.0696	849
60	661	BTC	-0.9993	0.1046	-0.5218	850
60	721	BTC	\N	0.1046	-0.5218	851
60	781	BTC	\N	0.1046	-0.5218	852
60	841	BTC	\N	0.1046	-0.5218	853
60	901	BTC	\N	0.1046	-0.5218	854
60	961	BTC	\N	0.1046	-0.5218	855
60	1021	BTC	\N	0.1046	-0.5218	856
60	1081	BTC	\N	0.1046	-0.5218	857
60	1141	BTC	\N	0.1046	-0.5218	858
60	1201	BTC	\N	0.1046	-0.5218	859
60	1261	BTC	\N	0.1046	-0.5218	860
60	1321	BTC	\N	0.1046	-0.5218	861
60	1381	BTC	\N	0.1046	-0.5218	862
61	1	BTC	\N	0.1046	-0.5218	863
61	61	BTC	\N	0.1046	-0.5218	864
61	121	BTC	\N	0.3252	-0.5218	865
61	181	BTC	\N	0.3252	-0.5218	866
61	241	BTC	\N	0.3252	-0.5218	867
61	301	BTC	\N	0.3252	-0.5218	868
61	361	BTC	\N	0.3252	-0.5218	869
61	421	BTC	\N	0.3252	-0.5218	870
61	481	BTC	\N	0.3252	-0.5218	871
61	541	BTC	\N	0.3252	-0.5218	872
61	601	BTC	\N	0.3252	-0.5218	873
61	661	BTC	\N	0.3252	-0.5218	874
61	721	BTC	\N	0.3252	-0.5218	875
61	781	BTC	\N	0.1648	-0.5218	876
61	841	BTC	\N	-0.1027	-0.5218	877
61	901	BTC	\N	-0.1027	-0.5218	878
61	961	BTC	\N	-0.1027	-0.5218	879
61	1021	BTC	\N	-0.1027	-0.5218	880
61	1081	BTC	\N	-0.6375	-0.5218	881
61	1141	BTC	\N	-0.6375	-0.5218	882
61	1201	BTC	\N	-0.6375	-0.5218	883
61	1261	BTC	\N	-0.6375	-0.5218	884
61	1321	BTC	\N	-0.6375	-0.5218	885
61	1381	BTC	\N	-0.6375	-0.5218	886
62	1	BTC	\N	-0.6375	-0.5218	887
62	61	BTC	\N	-0.6375	-0.5218	888
62	121	BTC	0.9758	-0.0997	0.9643	889
62	181	BTC	\N	-0.0997	0.9643	890
62	241	BTC	\N	-0.0997	0.9643	891
62	301	BTC	0.9814	0.1706	0.9746	892
62	361	BTC	0.9042	0.3173	0.9457	893
62	421	BTC	\N	0.3173	0.9457	894
62	481	BTC	0.8481	0.4058	0.9112	895
62	541	BTC	0.9970	0.4902	0.9361	896
62	601	BTC	0.9970	0.6720	0.9513	897
62	661	BTC	-0.9972	0.6723	0.5144	898
62	721	BTC	0.8360	0.6928	0.5805	899
62	781	BTC	\N	0.6928	0.5805	900
62	841	BTC	\N	0.6928	0.5805	901
62	901	BTC	\N	0.6928	0.5805	902
62	961	BTC	\N	0.6928	0.5805	903
62	1021	BTC	0.9985	0.7268	0.7042	904
62	1081	BTC	0.7003	0.7241	0.7032	905
63	961	BTC	0.6369	0.6369	0.6369	906
63	1021	BTC	\N	0.6369	0.6369	907
63	1081	BTC	\N	0.6369	0.6369	908
63	1141	BTC	\N	0.6369	0.6369	909
63	1201	BTC	\N	0.6369	0.6369	910
63	1261	BTC	\N	0.6369	0.6369	911
63	1321	BTC	\N	0.6369	0.6369	912
63	1381	BTC	0.6705	0.6537	0.6537	913
64	1	BTC	\N	0.6537	0.6537	914
64	61	BTC	\N	0.6537	0.6537	915
64	121	BTC	\N	0.6537	0.6537	916
64	181	BTC	\N	0.6537	0.6537	917
64	241	BTC	\N	0.6537	0.6537	918
64	301	BTC	\N	0.6537	0.6537	919
64	361	BTC	\N	0.6537	0.6537	920
64	421	BTC	\N	0.6537	0.6537	921
64	481	BTC	\N	0.6537	0.6537	922
64	541	BTC	0.9717	0.8155	0.8623	923
64	601	BTC	\N	0.6705	0.6705	924
64	661	BTC	\N	0.6705	0.6705	925
64	721	BTC	\N	0.6705	0.6705	926
64	781	BTC	0.6901	0.6895	0.6900	927
64	841	BTC	-0.5574	0.0790	0.0242	928
64	901	BTC	0.9977	0.0886	0.0484	929
64	961	BTC	\N	0.0886	0.0484	930
64	1021	BTC	0.1895	0.1249	0.1160	931
64	1081	BTC	-0.7804	-0.0912	-0.1790	932
64	1141	BTC	\N	-0.0961	-0.1812	933
64	1201	BTC	\N	-0.0961	-0.1812	934
64	1261	BTC	-0.9985	-0.2766	-0.4630	935
65	1	BTC	0.9081	0.9081	0.9081	936
65	61	BTC	\N	0.9081	0.9081	937
65	121	BTC	\N	0.9081	0.9081	938
65	181	BTC	\N	0.9081	0.9081	939
65	241	BTC	0.9833	0.9296	0.9356	940
65	301	BTC	0.7964	0.8772	0.8646	941
65	361	BTC	\N	0.8772	0.8646	942
65	421	BTC	\N	0.8772	0.8646	943
65	481	BTC	\N	0.8772	0.8646	944
65	541	BTC	-0.0987	0.5793	0.3780	945
66	1141	BTC	0.5574	0.5574	0.5574	946
66	1201	BTC	\N	0.5574	0.5574	947
66	1261	BTC	\N	0.5574	0.5574	948
66	1321	BTC	\N	0.5574	0.5574	949
66	1381	BTC	\N	0.5574	0.5574	950
67	1	BTC	\N	0.5574	0.5574	951
67	61	BTC	\N	0.5574	0.5574	952
67	121	BTC	0.7184	0.6882	0.7022	953
67	181	BTC	\N	0.6983	0.7076	954
67	241	BTC	\N	0.6983	0.7076	955
67	301	BTC	0.6249	0.6972	0.7010	956
67	361	BTC	\N	0.7184	0.7184	957
67	421	BTC	0.7906	0.7545	0.7669	958
67	481	BTC	0.8360	0.7817	0.7971	959
67	721	BTC	\N	0.4312	0.7425	\N
67	721	BTC	\N	0.4312	0.7425	\N
67	721	BTC	\N	0.4312	0.7425	\N
67	721	BTC	\N	0.4312	0.7425	\N
67	721	BTC	\N	0.4312	0.7425	\N
67	721	BTC	\N	0.4312	0.7425	\N
67	781	BTC	\N	0.5410	0.7425	\N
67	781	BTC	\N	0.5410	0.7425	\N
67	781	BTC	\N	0.5410	0.7425	\N
67	781	BTC	\N	0.5410	0.7425	\N
67	781	BTC	\N	0.5410	0.7425	\N
67	781	BTC	\N	0.5410	0.7425	\N
67	841	BTC	\N	0.5410	0.7425	\N
67	841	BTC	\N	0.5410	0.7425	\N
67	841	BTC	\N	0.5410	0.7425	\N
67	841	BTC	\N	0.5410	0.7425	\N
67	841	BTC	\N	0.5410	0.7425	\N
67	841	BTC	\N	0.5410	0.7425	\N
67	901	BTC	\N	0.5410	0.7425	\N
67	901	BTC	\N	0.5410	0.7425	\N
67	901	BTC	\N	0.5410	0.7425	\N
67	901	BTC	\N	0.5410	0.7425	\N
67	901	BTC	\N	0.5410	0.7425	\N
67	901	BTC	\N	0.5410	0.7425	\N
67	961	BTC	\N	0.5410	0.7425	\N
67	961	BTC	\N	0.5410	0.7425	\N
67	961	BTC	\N	0.5410	0.7425	\N
67	961	BTC	\N	0.5410	0.7425	\N
67	961	BTC	\N	0.5410	0.7425	\N
67	961	BTC	\N	0.5410	0.7425	\N
67	1021	BTC	\N	0.5410	0.7425	\N
67	1021	BTC	\N	0.5410	0.7425	\N
67	1021	BTC	\N	0.5410	0.7425	\N
67	1021	BTC	\N	0.5410	0.7425	\N
67	1021	BTC	\N	0.5410	0.7425	\N
67	1021	BTC	\N	0.5410	0.7425	\N
67	1081	BTC	\N	0.5410	0.7425	\N
67	1081	BTC	\N	0.5410	0.7425	\N
67	1081	BTC	\N	0.5410	0.7425	\N
67	1081	BTC	\N	0.5410	0.7425	\N
67	1081	BTC	\N	0.5410	0.7425	\N
67	1081	BTC	\N	0.5410	0.7425	\N
67	1141	BTC	\N	0.5410	0.7425	\N
67	1141	BTC	\N	0.5410	0.7425	\N
67	1141	BTC	\N	0.5410	0.7425	\N
67	1141	BTC	\N	0.5410	0.7425	\N
67	1141	BTC	\N	0.5410	0.7425	\N
67	1141	BTC	\N	0.5410	0.7425	\N
67	1201	BTC	\N	0.5410	0.7425	\N
67	1201	BTC	\N	0.5410	0.7425	\N
67	1201	BTC	\N	0.5410	0.7425	\N
67	1201	BTC	\N	0.5410	0.7425	\N
67	1201	BTC	\N	0.5410	0.7425	\N
67	1201	BTC	\N	0.5410	0.7425	\N
67	1261	BTC	\N	0.6938	0.7425	\N
67	1261	BTC	\N	0.6938	0.7425	\N
67	1261	BTC	\N	0.6938	0.7425	\N
67	1261	BTC	\N	0.6938	0.7425	\N
67	1261	BTC	\N	0.6938	0.7425	\N
67	1261	BTC	\N	0.6938	0.7425	\N
67	1321	BTC	\N	0.6938	0.7425	\N
67	1321	BTC	\N	0.6938	0.7425	\N
67	1321	BTC	\N	0.6938	0.7425	\N
67	1321	BTC	\N	0.6938	0.7425	\N
67	1321	BTC	\N	0.6938	0.7425	\N
67	1321	BTC	\N	0.6938	0.7425	\N
67	1381	BTC	\N	0.6938	0.7425	\N
67	1381	BTC	\N	0.6938	0.7425	\N
67	1381	BTC	\N	0.6938	0.7425	\N
67	1381	BTC	\N	0.6938	0.7425	\N
67	1381	BTC	\N	0.6938	0.7425	\N
67	1381	BTC	\N	0.6938	0.7425	\N
68	1	BTC	\N	0.6938	0.7425	\N
68	1	BTC	\N	0.6938	0.7425	\N
68	1	BTC	\N	0.6938	0.7425	\N
68	1	BTC	\N	0.6938	0.7425	\N
68	1	BTC	\N	0.6938	0.7425	\N
68	1	BTC	\N	0.6938	0.7425	\N
68	61	BTC	\N	0.6938	0.7425	\N
68	61	BTC	\N	0.6938	0.7425	\N
68	61	BTC	\N	0.6938	0.7425	\N
68	61	BTC	\N	0.6938	0.7425	\N
68	61	BTC	\N	0.6938	0.7425	\N
68	61	BTC	\N	0.6938	0.7425	\N
68	121	BTC	\N	0.6938	0.7425	\N
68	121	BTC	\N	0.6938	0.7425	\N
68	121	BTC	\N	0.6938	0.7425	\N
68	121	BTC	\N	0.6938	0.7425	\N
68	121	BTC	\N	0.6938	0.7425	\N
68	121	BTC	\N	0.6938	0.7425	\N
68	181	BTC	\N	0.6938	0.7425	\N
68	181	BTC	\N	0.6938	0.7425	\N
68	181	BTC	\N	0.6938	0.7425	\N
68	181	BTC	\N	0.6938	0.7425	\N
68	181	BTC	\N	0.6938	0.7425	\N
68	181	BTC	\N	0.6938	0.7425	\N
68	241	BTC	\N	0.7092	0.7425	\N
68	241	BTC	\N	0.7092	0.7425	\N
68	241	BTC	\N	0.7092	0.7425	\N
68	241	BTC	\N	0.7092	0.7425	\N
68	241	BTC	\N	0.7092	0.7425	\N
68	241	BTC	\N	0.7092	0.7425	\N
68	301	BTC	\N	0.7092	0.7425	\N
68	301	BTC	\N	0.7092	0.7425	\N
68	301	BTC	\N	0.7092	0.7425	\N
68	301	BTC	\N	0.7092	0.7425	\N
68	301	BTC	\N	0.7092	0.7425	\N
68	301	BTC	\N	0.7092	0.7425	\N
68	361	BTC	\N	0.7092	0.7425	\N
68	361	BTC	\N	0.7092	0.7425	\N
68	361	BTC	\N	0.7092	0.7425	\N
68	361	BTC	\N	0.7092	0.7425	\N
68	361	BTC	\N	0.7092	0.7425	\N
68	361	BTC	\N	0.7092	0.7425	\N
68	421	BTC	\N	0.7092	0.7425	\N
68	421	BTC	\N	0.7092	0.7425	\N
68	421	BTC	\N	0.7092	0.7425	\N
68	421	BTC	\N	0.7092	0.7425	\N
68	421	BTC	\N	0.7092	0.7425	\N
68	421	BTC	\N	0.7092	0.7425	\N
68	481	BTC	\N	0.7092	0.7425	\N
68	481	BTC	\N	0.7092	0.7425	\N
68	481	BTC	\N	0.7092	0.7425	\N
68	481	BTC	\N	0.7092	0.7425	\N
68	481	BTC	\N	0.7092	0.7425	\N
68	481	BTC	\N	0.7092	0.7425	\N
68	541	BTC	\N	0.7092	0.7425	\N
68	541	BTC	\N	0.7092	0.7425	\N
68	541	BTC	\N	0.7092	0.7425	\N
68	541	BTC	\N	0.7092	0.7425	\N
68	541	BTC	\N	0.7092	0.7425	\N
68	541	BTC	\N	0.7092	0.7425	\N
\.


--
-- Data for Name: ma_temp_dim; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ma_temp_dim (dateid, timeid, trading_symbol, comp_sentiment, sma, ema, id) FROM stdin;
25	121	BTC	0.5267	0.5267	0.5267	1
25	181	BTC	\N	0.5267	0.5267	2
25	241	BTC	\N	0.5267	0.5267	3
25	301	BTC	\N	0.5267	0.5267	4
25	361	BTC	0.0044	0.2655	0.1928	5
25	421	BTC	\N	0.2655	0.1928	6
25	481	BTC	0.3433	0.2915	0.2620	7
25	541	BTC	\N	0.2915	0.2620	8
25	601	BTC	-0.9990	-0.0312	-0.2168	9
25	661	BTC	\N	-0.0312	-0.2168	10
25	721	BTC	0.4412	0.0633	0.0041	11
25	781	BTC	0.7430	0.1766	0.2105	12
25	841	BTC	0.8934	0.2790	0.3769	13
25	901	BTC	-0.0339	0.2399	0.2867	14
25	961	BTC	-0.9990	0.1022	0.0269	15
25	1021	BTC	0.9732	0.1893	0.2058	16
25	1081	BTC	\N	0.1893	0.2058	17
25	1141	BTC	-0.9953	0.0816	-0.0357	18
25	1201	BTC	0.9982	0.1580	0.1590	19
25	1261	BTC	-0.5859	0.1008	0.0260	20
25	1321	BTC	0.9858	0.1640	0.1900	21
25	1381	BTC	\N	0.1640	0.1900	22
26	1	BTC	\N	0.1640	0.1900	23
26	61	BTC	\N	0.1640	0.1900	24
26	121	BTC	0.9682	0.2176	0.3708	25
26	181	BTC	\N	0.2176	0.3708	26
26	241	BTC	\N	0.2176	0.3708	27
26	301	BTC	\N	0.2176	0.3708	28
26	361	BTC	-0.9996	0.1415	-0.0290	29
26	421	BTC	0.9818	0.1910	0.2256	30
26	481	BTC	\N	0.1910	0.2256	31
26	541	BTC	\N	0.1910	0.2256	32
26	601	BTC	\N	0.1910	0.2256	33
26	661	BTC	\N	0.1910	0.2256	34
26	721	BTC	\N	0.1910	0.2256	35
26	781	BTC	\N	0.1910	0.2256	36
26	841	BTC	\N	0.1910	0.2256	37
26	901	BTC	\N	0.1910	0.2256	38
26	961	BTC	\N	0.1910	0.2256	39
26	1021	BTC	\N	0.1910	0.2256	40
26	1081	BTC	\N	0.1910	0.2256	41
26	1141	BTC	0.0000	0.1804	0.0939	42
26	1201	BTC	0.0550	0.1738	0.0782	43
26	1261	BTC	0.7964	0.2049	0.3060	44
26	1321	BTC	0.3082	0.2098	0.3066	45
26	1381	BTC	0.0710	0.2035	0.2510	46
27	1	BTC	\N	0.2035	0.2510	47
27	61	BTC	\N	0.2035	0.2510	48
27	121	BTC	\N	0.1881	0.2510	49
27	181	BTC	\N	0.1881	0.2510	50
27	241	BTC	0.9325	0.2220	0.4729	51
27	301	BTC	-0.9993	0.1689	0.0708	52
27	361	BTC	\N	0.1763	0.0708	53
27	421	BTC	\N	0.1763	0.0708	54
27	481	BTC	0.6705	0.1912	0.2481	55
27	541	BTC	0.5994	0.2089	0.3374	56
27	601	BTC	-0.0010	0.2523	0.2606	57
27	661	BTC	0.9682	0.2822	0.4074	58
27	721	BTC	0.9682	0.3041	0.5157	59
27	781	BTC	0.9682	0.3135	0.5982	60
27	841	BTC	-0.9970	0.2347	0.3210	61
27	901	BTC	0.9531	0.2759	0.4266	62
27	961	BTC	0.9985	0.3591	0.5190	63
27	1021	BTC	0.9792	0.3593	0.5913	64
27	1081	BTC	0.9984	0.3849	0.6538	65
27	1141	BTC	0.0737	0.4277	0.5665	66
27	1201	BTC	0.4108	0.4042	0.5435	67
27	1261	BTC	0.0476	0.4295	0.4712	68
27	1321	BTC	\N	0.4063	0.4712	69
27	1381	BTC	-0.0007	0.3901	0.3945	70
28	1	BTC	\N	0.3901	0.3945	71
28	61	BTC	\N	0.3901	0.3945	72
28	121	BTC	\N	0.3660	0.3945	73
28	181	BTC	\N	0.3660	0.3945	74
28	241	BTC	0.9682	0.3901	0.5376	75
28	301	BTC	0.2047	0.3829	0.4632	76
28	361	BTC	0.6124	0.4449	0.4938	77
28	421	BTC	-0.5574	0.3857	0.2927	78
28	481	BTC	0.9682	0.4073	0.4148	79
28	541	BTC	\N	0.4073	0.4148	80
28	601	BTC	0.9855	0.4279	0.5256	81
28	661	BTC	0.7096	0.4377	0.5592	82
28	721	BTC	-0.9970	0.3898	0.2880	83
28	781	BTC	-0.3265	0.3667	0.1851	84
28	841	BTC	0.9682	0.3855	0.3119	85
28	901	BTC	-0.3371	0.3636	0.2097	86
28	961	BTC	0.9732	0.3816	0.3271	87
28	1021	BTC	-0.0175	0.3702	0.2752	88
28	1081	BTC	0.9325	0.3858	0.3725	89
28	1141	BTC	0.3873	0.3965	0.3747	90
28	1201	BTC	-0.9994	0.3672	0.1767	91
28	1261	BTC	0.0064	0.3453	0.1524	92
28	1321	BTC	-0.9992	0.3090	-0.0103	93
28	1381	BTC	-0.8308	0.2839	-0.1253	94
29	1	BTC	-0.9955	0.2494	-0.2464	95
29	61	BTC	0.9918	0.2689	-0.0751	96
29	121	BTC	0.9842	0.2872	0.0708	97
29	181	BTC	-0.3362	0.2716	0.0150	98
29	241	BTC	0.3178	0.2563	0.0563	99
29	301	BTC	0.0982	0.2837	0.0620	100
29	361	BTC	0.7906	0.2961	0.1610	101
29	421	BTC	0.6486	0.3045	0.2270	102
29	481	BTC	-0.5205	0.2761	0.1260	103
29	541	BTC	0.9325	0.2840	0.2348	104
29	601	BTC	-0.0311	0.2833	0.1990	105
29	661	BTC	-0.2726	0.2538	0.1355	106
29	721	BTC	0.9985	0.2545	0.2515	107
29	781	BTC	0.5984	0.2457	0.2980	108
29	841	BTC	0.9985	0.2932	0.3920	109
29	901	BTC	-0.6808	0.2543	0.2482	110
29	961	BTC	0.9935	0.2542	0.3480	111
29	1021	BTC	0.9882	0.2544	0.4337	112
29	1081	BTC	0.9970	0.2544	0.5090	113
29	1141	BTC	0.5719	0.2662	0.5174	114
29	1201	BTC	0.9985	0.2802	0.5817	115
29	1261	BTC	-0.1484	0.2756	0.4842	116
29	1321	BTC	0.9657	0.2916	0.5485	117
29	1381	BTC	0.7906	0.3100	0.5808	118
30	1	BTC	0.9818	0.3253	0.6344	119
30	61	BTC	0.9371	0.3389	0.6748	120
30	121	BTC	0.7906	0.3487	0.6902	121
30	181	BTC	\N	0.3487	0.6902	122
30	241	BTC	0.0876	0.3296	0.5993	123
30	301	BTC	0.9974	0.3468	0.6583	124
30	361	BTC	-0.0008	0.3335	0.5620	125
30	421	BTC	0.9682	0.3666	0.6206	126
30	481	BTC	\N	0.3533	0.6206	127
30	541	BTC	\N	0.3533	0.6206	128
30	601	BTC	0.2165	0.3362	0.5473	129
30	661	BTC	0.8176	0.3386	0.5941	130
30	721	BTC	0.9682	0.3822	0.6564	131
30	781	BTC	-0.0007	0.3895	0.5505	132
30	841	BTC	\N	0.3763	0.5505	133
30	901	BTC	\N	0.3929	0.5505	134
30	961	BTC	-0.5267	0.3580	0.3368	135
30	1021	BTC	0.6369	0.3733	0.3927	136
30	1081	BTC	0.9818	0.3744	0.4969	137
30	1141	BTC	0.9806	0.3882	0.5789	138
30	1201	BTC	\N	0.4212	0.5789	139
30	1261	BTC	-0.0439	0.4200	0.4642	140
30	1321	BTC	\N	0.4547	0.4642	141
30	1381	BTC	\N	0.4868	0.4642	142
31	1	BTC	\N	0.5248	0.4642	143
31	61	BTC	0.9477	0.5237	0.5832	144
31	121	BTC	\N	0.5115	0.5832	145
31	181	BTC	0.9981	0.5467	0.6856	146
31	241	BTC	\N	0.5528	0.6856	147
31	301	BTC	0.9716	0.5765	0.7563	148
31	361	BTC	\N	0.5705	0.7563	149
31	421	BTC	\N	0.5683	0.7563	150
31	481	BTC	\N	0.6003	0.7563	151
31	541	BTC	0.9493	0.6008	0.8151	152
31	601	BTC	0.9747	0.6304	0.8566	153
31	661	BTC	-0.9325	0.6110	0.4436	154
31	721	BTC	0.3721	0.5925	0.4285	155
31	781	BTC	0.0377	0.5760	0.3522	156
31	841	BTC	0.9818	0.5756	0.4680	157
31	901	BTC	0.0044	0.5957	0.3868	158
31	961	BTC	0.0742	0.5687	0.3343	159
31	1021	BTC	0.2559	0.5471	0.3216	160
31	1081	BTC	-0.9993	0.4884	0.1131	161
31	1141	BTC	-0.0144	0.4712	0.0935	162
31	1201	BTC	0.9990	0.4712	0.2301	163
31	1261	BTC	\N	0.4900	0.2301	164
31	1321	BTC	\N	0.4751	0.2301	165
31	1381	BTC	\N	0.4649	0.2301	166
32	1	BTC	\N	0.4477	0.2301	167
32	61	BTC	0.9840	0.4493	0.4079	168
32	121	BTC	\N	0.4375	0.4079	169
32	181	BTC	\N	0.4375	0.4079	170
32	241	BTC	0.3246	0.4457	0.3858	171
32	301	BTC	\N	0.4259	0.3858	172
32	361	BTC	0.7506	0.4528	0.4812	173
32	421	BTC	0.9628	0.4526	0.5928	174
32	481	BTC	-0.5574	0.4178	0.3501	175
32	541	BTC	0.7906	0.4302	0.4364	176
32	601	BTC	-0.2407	0.4150	0.3116	177
32	661	BTC	-0.9997	0.3544	0.0816	178
32	721	BTC	0.9970	0.3553	0.2357	179
32	781	BTC	0.9990	0.3887	0.3598	180
32	841	BTC	0.8885	0.4048	0.4433	181
32	901	BTC	0.6808	0.4134	0.4799	182
32	961	BTC	0.6369	0.4498	0.5036	183
32	1021	BTC	-0.0281	0.4290	0.4247	184
32	1081	BTC	-0.0011	0.3983	0.3625	185
32	1141	BTC	0.3824	0.3796	0.3653	186
32	1201	BTC	0.2488	0.3756	0.3487	187
32	1261	BTC	-0.6705	0.3566	0.2046	188
32	1321	BTC	0.7717	0.3688	0.2841	189
32	1381	BTC	\N	0.3688	0.2841	190
33	1	BTC	-0.6705	0.3391	0.1339	191
33	61	BTC	0.9953	0.3405	0.2663	192
33	121	BTC	0.9682	0.3579	0.3720	193
33	181	BTC	0.3280	0.3393	0.3655	194
33	241	BTC	\N	0.3393	0.3655	195
33	301	BTC	0.0015	0.3124	0.3055	196
33	361	BTC	0.9468	0.3295	0.4079	197
33	421	BTC	0.0015	0.3209	0.3447	198
33	481	BTC	\N	0.3209	0.3447	199
33	541	BTC	0.4266	0.3071	0.3588	200
33	601	BTC	\N	0.2891	0.3588	201
33	661	BTC	\N	0.3230	0.3588	202
33	721	BTC	\N	0.3216	0.3588	203
33	781	BTC	\N	0.3300	0.3588	204
33	841	BTC	\N	0.3102	0.3588	205
33	901	BTC	\N	0.3198	0.3588	206
33	961	BTC	\N	0.3277	0.3588	207
33	1021	BTC	\N	0.3301	0.3588	208
33	1081	BTC	\N	0.3759	0.3588	209
33	1141	BTC	\N	0.3899	0.3588	210
33	1201	BTC	\N	0.3673	0.3588	211
33	1261	BTC	\N	0.3673	0.3588	212
33	1321	BTC	\N	0.3673	0.3588	213
33	1381	BTC	\N	0.3673	0.3588	214
34	1	BTC	\N	0.3673	0.3588	215
34	61	BTC	-0.9984	0.2939	-0.4946	216
34	121	BTC	\N	0.2939	-0.4946	217
34	181	BTC	\N	0.2939	-0.4946	218
34	241	BTC	\N	0.2927	-0.4946	219
34	301	BTC	\N	0.2927	-0.4946	220
34	361	BTC	\N	0.2744	-0.4946	221
34	421	BTC	\N	0.2457	-0.4946	222
34	481	BTC	\N	0.2806	-0.4946	223
34	541	BTC	\N	0.2575	-0.4946	224
34	601	BTC	\N	0.2812	-0.4946	225
34	661	BTC	\N	0.3452	-0.4946	226
34	721	BTC	\N	0.3109	-0.4946	227
34	781	BTC	0.6997	0.2952	0.4344	228
34	841	BTC	0.9682	0.2994	0.6869	229
34	901	BTC	\N	0.2782	0.6869	230
34	961	BTC	\N	0.2571	0.6869	231
34	1021	BTC	0.5719	0.2924	0.6385	232
34	1081	BTC	\N	0.3107	0.6385	233
34	1141	BTC	\N	0.3059	0.6385	234
34	1201	BTC	0.9829	0.3549	0.7737	235
34	1261	BTC	0.9601	0.4636	0.8318	236
34	1321	BTC	\N	0.4416	0.8318	237
34	1381	BTC	\N	0.4416	0.8318	238
35	1	BTC	\N	0.5271	0.8318	239
35	61	BTC	\N	0.4881	0.8318	240
35	121	BTC	\N	0.4444	0.8318	241
35	181	BTC	\N	0.4561	0.8318	242
35	241	BTC	\N	0.4561	0.8318	243
35	301	BTC	\N	0.5066	0.8318	244
35	361	BTC	\N	0.4516	0.8318	245
35	421	BTC	\N	0.5159	0.8318	246
35	481	BTC	\N	0.5159	0.8318	247
35	541	BTC	\N	0.5307	0.8318	248
35	601	BTC	\N	0.5307	0.8318	249
35	661	BTC	\N	0.5307	0.8318	250
35	721	BTC	0.9726	0.5939	0.9342	251
35	781	BTC	0.0731	0.5288	0.5413	252
35	841	BTC	0.2268	0.4952	0.4328	253
35	901	BTC	0.2793	0.4736	0.3891	254
35	961	BTC	0.0246	0.4328	0.2990	255
35	1021	BTC	-0.0239	0.3947	0.2273	256
35	1081	BTC	0.7906	0.4252	0.3422	257
35	1141	BTC	\N	0.4252	0.3422	258
35	1201	BTC	0.5994	0.4376	0.3971	259
35	1261	BTC	0.7096	0.4558	0.4589	260
35	1321	BTC	0.9984	0.4897	0.5591	261
35	1381	BTC	-0.6597	0.4221	0.3440	262
36	1	BTC	0.7906	0.4425	0.4195	263
36	61	BTC	\N	0.5273	0.4195	264
36	121	BTC	\N	0.5273	0.4195	265
36	181	BTC	\N	0.5273	0.4195	266
36	241	BTC	-0.5859	0.4655	0.1876	267
36	301	BTC	0.7906	0.4826	0.3144	268
36	361	BTC	\N	0.4826	0.3144	269
36	421	BTC	\N	0.4826	0.3144	270
36	481	BTC	0.3074	0.4738	0.3127	271
36	541	BTC	0.9990	0.4988	0.4635	272
36	601	BTC	0.0000	0.4761	0.3697	273
36	661	BTC	\N	0.4761	0.3697	274
36	721	BTC	-0.9997	0.4120	0.0792	275
36	781	BTC	0.5574	0.4058	0.1732	276
36	841	BTC	0.9853	0.4065	0.3234	277
36	901	BTC	\N	0.4065	0.3234	278
36	961	BTC	\N	0.4065	0.3234	279
36	1021	BTC	\N	0.3990	0.3234	280
36	1081	BTC	\N	0.3990	0.3234	281
36	1141	BTC	\N	0.3990	0.3234	282
36	1201	BTC	0.9771	0.3988	0.5220	283
36	1261	BTC	-0.5574	0.3298	0.2418	284
36	1321	BTC	0.0078	0.3158	0.1879	285
36	1381	BTC	-0.0212	0.3017	0.1440	286
37	1	BTC	0.9970	0.3296	0.3104	287
37	61	BTC	\N	0.3296	0.3104	288
37	121	BTC	0.0904	0.3204	0.2650	289
37	181	BTC	0.9682	0.3443	0.4002	290
37	241	BTC	-0.6486	0.3089	0.2098	291
37	301	BTC	\N	0.3089	0.2098	292
37	361	BTC	0.4266	0.3129	0.2520	293
37	421	BTC	\N	0.3129	0.2520	294
37	481	BTC	\N	0.3129	0.2520	295
37	541	BTC	0.0245	0.3033	0.1996	296
37	601	BTC	-0.2719	0.2848	0.1007	297
37	661	BTC	\N	0.2848	0.1007	298
37	721	BTC	0.3688	0.2653	0.1592	299
37	781	BTC	-0.5423	0.2454	0.0181	300
37	841	BTC	0.9686	0.2694	0.1972	301
37	901	BTC	0.1131	0.2640	0.1822	302
37	961	BTC	0.9985	0.2954	0.3217	303
37	1021	BTC	0.7906	0.3217	0.3989	304
37	1081	BTC	0.4191	0.3097	0.4021	305
37	1141	BTC	-0.0152	0.2996	0.3372	306
37	1201	BTC	0.4108	0.2937	0.3484	307
37	1261	BTC	0.3873	0.2836	0.3542	308
37	1321	BTC	-0.0311	0.2514	0.2976	309
37	1381	BTC	0.9628	0.3021	0.3940	310
38	1	BTC	\N	0.2864	0.3940	311
38	61	BTC	\N	0.2864	0.3940	312
38	121	BTC	-0.9992	0.2462	0.1402	313
38	181	BTC	\N	0.2462	0.1402	314
38	241	BTC	\N	0.2730	0.1402	315
38	301	BTC	0.1153	0.2513	0.1347	316
38	361	BTC	\N	0.2513	0.1347	317
38	421	BTC	\N	0.2513	0.1347	318
38	481	BTC	0.9955	0.2735	0.3512	319
38	541	BTC	0.8862	0.2698	0.4715	320
38	601	BTC	-0.6486	0.2489	0.2407	321
38	661	BTC	0.4549	0.2553	0.2819	322
38	721	BTC	0.3669	0.2980	0.2973	323
38	781	BTC	\N	0.2897	0.2973	324
38	841	BTC	0.2273	0.2652	0.2837	325
38	901	BTC	-0.9325	0.2278	0.0607	326
38	961	BTC	0.5267	0.2368	0.1421	327
38	1021	BTC	\N	0.2368	0.1421	328
38	1081	BTC	\N	0.2368	0.1421	329
38	1141	BTC	\N	0.2368	0.1421	330
38	1201	BTC	\N	0.2137	0.1421	331
38	1261	BTC	\N	0.2386	0.1421	332
38	1321	BTC	\N	0.2463	0.1421	333
38	1381	BTC	\N	0.2555	0.1421	334
39	1	BTC	\N	0.2290	0.1421	335
39	61	BTC	\N	0.2290	0.1421	336
39	121	BTC	\N	0.2342	0.1421	337
39	181	BTC	\N	0.2059	0.1421	338
39	241	BTC	\N	0.2401	0.1421	339
39	301	BTC	0.9732	0.2683	0.5815	340
39	361	BTC	-0.6705	0.2261	0.1071	341
39	421	BTC	0.9818	0.2541	0.3732	342
39	481	BTC	\N	0.2541	0.3732	343
39	541	BTC	0.9985	0.2902	0.5534	344
39	601	BTC	\N	0.3118	0.5534	345
39	661	BTC	0.5106	0.3192	0.5416	346
39	721	BTC	-0.9978	0.2685	0.1684	347
39	781	BTC	0.0015	0.2887	0.1319	348
39	841	BTC	-0.7506	0.2250	-0.0458	349
39	901	BTC	0.0675	0.2233	-0.0245	350
39	961	BTC	0.0113	0.1868	-0.0181	351
39	1021	BTC	0.5719	0.1787	0.0828	352
39	1081	BTC	0.9970	0.2001	0.2334	353
39	1141	BTC	0.9985	0.2376	0.3556	354
39	1201	BTC	-0.7906	0.1931	0.1772	355
39	1261	BTC	0.9984	0.2157	0.3022	356
39	1321	BTC	\N	0.2252	0.3022	357
39	1381	BTC	\N	0.1957	0.3022	358
40	1	BTC	-0.0009	0.1882	0.2448	359
40	61	BTC	\N	0.1882	0.2448	360
40	121	BTC	\N	0.2357	0.2448	361
40	181	BTC	\N	0.2357	0.2448	362
40	241	BTC	\N	0.2357	0.2448	363
40	301	BTC	\N	0.2407	0.2448	364
40	361	BTC	-0.1998	0.2231	0.1074	365
40	421	BTC	\N	0.2231	0.1074	366
40	481	BTC	\N	0.1909	0.1074	367
40	541	BTC	0.7579	0.1855	0.3168	368
40	601	BTC	\N	0.2218	0.3168	369
40	661	BTC	0.3115	0.2156	0.3152	370
40	721	BTC	0.9682	0.2417	0.4831	371
40	781	BTC	-0.5574	0.2084	0.2450	372
40	841	BTC	0.9882	0.2401	0.4003	373
40	901	BTC	-0.9993	0.2373	0.1285	374
40	961	BTC	0.9803	0.2562	0.2844	375
40	1021	BTC	0.9758	0.2850	0.4050	376
40	1081	BTC	0.9682	0.3113	0.4993	377
40	1141	BTC	0.4178	0.3152	0.4861	378
40	1201	BTC	0.4547	0.3202	0.4812	379
40	1261	BTC	0.8225	0.3375	0.5336	380
40	1321	BTC	-0.2808	0.3169	0.4109	381
40	1381	BTC	0.9792	0.3383	0.4951	382
41	1	BTC	0.9840	0.3585	0.5665	383
41	61	BTC	0.0091	0.3479	0.4861	384
41	121	BTC	-0.8652	0.3122	0.2934	385
41	181	BTC	0.2268	0.3098	0.2840	386
41	241	BTC	-0.9993	0.2734	0.1041	387
41	301	BTC	0.9818	0.2736	0.2263	388
41	361	BTC	-0.0249	0.2916	0.1916	389
41	421	BTC	-0.8934	0.2395	0.0421	390
41	481	BTC	-0.9944	0.2061	-0.1000	391
41	541	BTC	0.9682	0.2053	0.0459	392
41	601	BTC	-0.5574	0.1852	-0.0362	393
41	661	BTC	\N	0.1764	-0.0362	394
41	721	BTC	\N	0.2091	-0.0362	395
41	781	BTC	\N	0.2150	-0.0362	396
41	841	BTC	\N	0.2434	-0.0362	397
41	901	BTC	\N	0.2487	-0.0362	398
41	961	BTC	\N	0.2561	-0.0362	399
41	1021	BTC	\N	0.2460	-0.0362	400
41	1081	BTC	\N	0.2209	-0.0362	401
41	1141	BTC	\N	0.1941	-0.0362	402
41	1201	BTC	\N	0.2293	-0.0362	403
41	1261	BTC	\N	0.2008	-0.0362	404
41	1321	BTC	\N	0.2008	-0.0362	405
41	1381	BTC	\N	0.2008	-0.0362	406
42	1	BTC	0.0082	0.2011	-0.0139	407
42	61	BTC	0.9682	0.2285	0.3465	408
42	121	BTC	\N	0.2285	0.3465	409
42	181	BTC	0.5106	0.2383	0.4003	410
42	241	BTC	0.5859	0.2498	0.4513	411
42	301	BTC	0.4331	0.2558	0.4469	412
42	361	BTC	\N	0.2709	0.4469	413
42	421	BTC	\N	0.2709	0.4469	414
42	481	BTC	0.4098	0.2754	0.4369	415
42	541	BTC	\N	0.2593	0.4369	416
42	601	BTC	\N	0.2593	0.4369	417
42	661	BTC	-0.5859	0.2294	0.1371	418
42	721	BTC	0.9766	0.2297	0.3493	419
42	781	BTC	0.9985	0.2816	0.4959	420
42	841	BTC	0.9360	0.2798	0.5868	421
42	901	BTC	-0.9963	0.2799	0.2820	422
42	961	BTC	-0.5574	0.2287	0.1294	423
42	1021	BTC	-0.0160	0.1956	0.1042	424
42	1081	BTC	-0.0244	0.1625	0.0828	425
42	1141	BTC	0.6369	0.1698	0.1722	426
42	1201	BTC	-0.9970	0.1214	-0.0113	427
42	1261	BTC	-0.0292	0.0930	-0.0141	428
42	1321	BTC	-0.0152	0.1019	-0.0142	429
42	1381	BTC	0.0660	0.0715	-0.0024	430
43	1	BTC	0.9719	0.0711	0.1396	431
43	61	BTC	0.3177	0.0813	0.1652	432
43	121	BTC	0.9705	0.1425	0.2799	433
43	181	BTC	\N	0.1396	0.2799	434
43	241	BTC	0.3082	0.1847	0.2844	435
43	301	BTC	0.9818	0.1847	0.3927	436
43	361	BTC	-0.7003	0.1614	0.2266	437
43	421	BTC	\N	0.1991	0.2266	438
43	481	BTC	\N	0.2433	0.2266	439
43	541	BTC	0.9985	0.2444	0.3727	440
43	601	BTC	\N	0.2753	0.3727	441
43	661	BTC	\N	0.2753	0.3727	442
43	721	BTC	0.9970	0.3020	0.5133	443
43	781	BTC	-0.0007	0.2912	0.4073	444
43	841	BTC	0.4062	0.2951	0.4071	445
43	901	BTC	\N	0.2951	0.4071	446
43	961	BTC	\N	0.2951	0.4071	447
43	1021	BTC	-0.9992	0.2520	0.0864	448
43	1081	BTC	\N	0.2520	0.0864	449
43	1141	BTC	0.9818	0.2755	0.2949	450
43	1201	BTC	0.9837	0.2977	0.4408	451
43	1261	BTC	0.9781	0.3183	0.5463	452
43	1321	BTC	0.9702	0.3375	0.6246	453
43	1381	BTC	0.9920	0.3562	0.6892	454
44	1	BTC	\N	0.3664	0.6892	455
44	61	BTC	\N	0.3482	0.6892	456
44	121	BTC	\N	0.3482	0.6892	457
44	181	BTC	\N	0.3431	0.6892	458
44	241	BTC	\N	0.3353	0.6892	459
44	301	BTC	\N	0.3320	0.6892	460
44	361	BTC	\N	0.3320	0.6892	461
44	421	BTC	\N	0.3320	0.6892	462
44	481	BTC	\N	0.3293	0.6892	463
44	541	BTC	\N	0.3293	0.6892	464
44	601	BTC	0.3499	0.3300	0.5335	465
44	661	BTC	\N	0.3616	0.5335	466
44	721	BTC	\N	0.3396	0.5335	467
44	781	BTC	\N	0.3152	0.5335	468
44	841	BTC	\N	0.2913	0.5335	469
44	901	BTC	\N	0.3428	0.5335	470
44	961	BTC	\N	0.3803	0.5335	471
44	1021	BTC	\N	0.3976	0.5335	472
44	1081	BTC	\N	0.4168	0.5335	473
44	1141	BTC	\N	0.4063	0.5335	474
44	1201	BTC	\N	0.4764	0.5335	475
44	1261	BTC	\N	0.5031	0.5335	476
44	1321	BTC	\N	0.5318	0.5335	477
44	1381	BTC	\N	0.5593	0.5335	478
45	1	BTC	\N	0.5335	0.5335	479
45	61	BTC	\N	0.5478	0.5335	480
45	121	BTC	\N	0.5177	0.5335	481
45	181	BTC	\N	0.5177	0.5335	482
45	241	BTC	\N	0.5338	0.5335	483
45	301	BTC	\N	0.4964	0.5335	484
45	361	BTC	\N	0.6052	0.5335	485
45	421	BTC	\N	0.6052	0.5335	486
45	481	BTC	\N	0.6052	0.5335	487
45	541	BTC	\N	0.5659	0.5335	488
45	601	BTC	\N	0.5659	0.5335	489
45	661	BTC	\N	0.5659	0.5335	490
45	721	BTC	\N	0.5180	0.5335	491
45	781	BTC	0.9682	0.6257	0.9492	492
45	841	BTC	-0.7650	0.4955	0.0500	493
45	901	BTC	0.7003	0.5160	0.2952	494
45	961	BTC	-0.9970	0.3785	-0.0966	495
45	1021	BTC	\N	0.5162	-0.0966	496
45	1081	BTC	0.9729	0.5577	0.2110	497
45	1141	BTC	-0.9972	0.3778	-0.0900	498
45	1201	BTC	\N	0.3172	-0.0900	499
45	1261	BTC	-0.0862	0.2108	-0.0891	500
45	1321	BTC	\N	0.1264	-0.0891	501
45	1381	BTC	\N	0.0182	-0.0891	502
46	1	BTC	0.6166	0.0847	0.1062	503
46	61	BTC	\N	0.0847	0.1062	504
46	121	BTC	0.9325	0.1695	0.3287	505
46	181	BTC	\N	0.1695	0.3287	506
46	241	BTC	\N	0.1695	0.3287	507
46	301	BTC	-0.5994	0.0996	0.0571	508
46	361	BTC	\N	0.0996	0.0571	509
46	421	BTC	\N	0.0996	0.0571	510
46	481	BTC	\N	0.0996	0.0571	511
46	541	BTC	\N	0.0996	0.0571	512
46	601	BTC	\N	0.0746	0.0571	513
46	661	BTC	\N	0.0746	0.0571	514
46	721	BTC	\N	0.0746	0.0571	515
46	781	BTC	\N	0.0746	0.0571	516
46	841	BTC	\N	0.0746	0.0571	517
46	901	BTC	\N	0.0746	0.0571	518
46	961	BTC	\N	0.0746	0.0571	519
46	1021	BTC	\N	0.0746	0.0571	520
46	1081	BTC	\N	0.0746	0.0571	521
46	1141	BTC	\N	0.0746	0.0571	522
46	1201	BTC	\N	0.0746	0.0571	523
46	1261	BTC	\N	0.0746	0.0571	524
46	1321	BTC	\N	0.0746	0.0571	525
46	1381	BTC	\N	0.0746	0.0571	526
47	1	BTC	\N	0.0746	0.0571	527
47	61	BTC	\N	0.0746	0.0571	528
47	121	BTC	0.9325	0.1526	0.8058	529
47	181	BTC	\N	0.1526	0.8058	530
47	241	BTC	-0.0643	0.1345	0.3425	531
47	301	BTC	\N	0.1345	0.3425	532
47	361	BTC	\N	0.1345	0.3425	533
47	421	BTC	\N	0.1345	0.3425	534
47	481	BTC	\N	0.1345	0.3425	535
47	541	BTC	\N	0.1345	0.3425	536
47	601	BTC	\N	0.1345	0.3425	537
47	661	BTC	\N	0.1345	0.3425	538
47	721	BTC	\N	0.1345	0.3425	539
47	781	BTC	0.9970	0.1369	0.7736	540
47	841	BTC	0.9957	0.2836	0.8695	541
47	901	BTC	0.9882	0.3076	0.9090	542
47	961	BTC	\N	0.4262	0.9090	543
47	1021	BTC	0.9840	0.4727	0.9320	544
47	1081	BTC	-0.5267	0.3477	0.5506	545
47	1141	BTC	0.3876	0.4631	0.5128	546
47	1201	BTC	0.4879	0.4650	0.5075	547
47	1261	BTC	0.9100	0.5417	0.5863	548
47	1321	BTC	\N	0.5417	0.5863	549
47	1381	BTC	0.8934	0.5668	0.6498	550
48	1	BTC	\N	0.5630	0.6498	551
48	61	BTC	\N	0.5630	0.6498	552
48	121	BTC	\N	0.5322	0.6498	553
48	181	BTC	\N	0.5322	0.6498	554
48	241	BTC	\N	0.5322	0.6498	555
48	301	BTC	\N	0.6350	0.6498	556
48	361	BTC	-0.7269	0.5215	0.1539	557
48	421	BTC	0.9792	0.5567	0.3962	558
48	481	BTC	0.4397	0.5484	0.4072	559
48	541	BTC	\N	0.5484	0.4072	560
48	601	BTC	\N	0.5484	0.4072	561
48	661	BTC	\N	0.5484	0.4072	562
48	721	BTC	-0.9996	0.4452	-0.0284	563
48	781	BTC	\N	0.4452	-0.0284	564
48	841	BTC	\N	0.4452	-0.0284	565
48	901	BTC	\N	0.4452	-0.0284	566
48	961	BTC	\N	0.4452	-0.0284	567
48	1021	BTC	-0.4512	0.3892	-0.1923	568
48	1081	BTC	\N	0.3892	-0.1923	569
48	1141	BTC	0.9819	0.4240	0.2075	570
48	1201	BTC	0.9712	0.4544	0.4229	571
48	1261	BTC	\N	0.4544	0.4229	572
48	1321	BTC	0.0017	0.4306	0.3079	573
48	1381	BTC	0.4749	0.4328	0.3479	574
49	1	BTC	0.4561	0.4339	0.3713	575
49	61	BTC	\N	0.4339	0.3713	576
49	121	BTC	\N	0.4090	0.3713	577
49	181	BTC	0.7430	0.4249	0.4641	578
49	241	BTC	\N	0.4494	0.4641	579
49	301	BTC	-0.0008	0.4279	0.3481	580
49	361	BTC	\N	0.4279	0.3481	581
49	421	BTC	\N	0.4279	0.3481	582
49	481	BTC	\N	0.4279	0.3481	583
49	541	BTC	0.4000	0.4266	0.3640	584
49	601	BTC	\N	0.4266	0.3640	585
49	661	BTC	-0.9993	0.3647	-0.0311	586
49	721	BTC	0.9818	0.3904	0.2227	587
49	781	BTC	0.3272	0.3625	0.2462	588
49	841	BTC	0.6249	0.3470	0.3240	589
49	901	BTC	-0.9993	0.2642	0.0703	590
49	961	BTC	\N	0.2642	0.0703	591
49	1021	BTC	-0.0481	0.2212	0.0462	592
49	1081	BTC	0.9682	0.2835	0.2214	593
49	1141	BTC	\N	0.2790	0.2214	594
49	1201	BTC	0.0271	0.2589	0.1822	595
49	1261	BTC	0.8934	0.2582	0.3166	596
49	1321	BTC	-0.9992	0.2058	0.0811	597
49	1381	BTC	\N	0.1759	0.0811	598
50	1	BTC	0.0015	0.1686	0.0657	599
50	61	BTC	\N	0.1686	0.0657	600
50	121	BTC	\N	0.1686	0.0657	601
50	181	BTC	0.9985	0.2018	0.2786	602
50	241	BTC	\N	0.2018	0.2786	603
50	301	BTC	\N	0.2018	0.2786	604
50	361	BTC	0.5859	0.2543	0.3584	605
50	421	BTC	\N	0.2241	0.3584	606
50	481	BTC	\N	0.2148	0.3584	607
50	541	BTC	\N	0.2148	0.3584	608
50	601	BTC	\N	0.2148	0.3584	609
50	661	BTC	\N	0.2148	0.3584	610
50	721	BTC	\N	0.2700	0.3584	611
50	781	BTC	\N	0.2700	0.3584	612
50	841	BTC	\N	0.2700	0.3584	613
50	901	BTC	\N	0.2700	0.3584	614
50	961	BTC	\N	0.2700	0.3584	615
50	1021	BTC	\N	0.3043	0.3584	616
50	1081	BTC	\N	0.3043	0.3584	617
50	1141	BTC	\N	0.2704	0.3584	618
50	1201	BTC	\N	0.2336	0.3584	619
50	1261	BTC	\N	0.2336	0.3584	620
50	1321	BTC	\N	0.2464	0.3584	621
50	1381	BTC	\N	0.2330	0.3584	622
51	1	BTC	\N	0.2190	0.3584	623
51	61	BTC	\N	0.2190	0.3584	624
51	121	BTC	\N	0.2190	0.3584	625
51	181	BTC	\N	0.1841	0.3584	626
51	241	BTC	\N	0.1841	0.3584	627
51	301	BTC	\N	0.1973	0.3584	628
51	361	BTC	\N	0.1973	0.3584	629
51	421	BTC	\N	0.1973	0.3584	630
51	481	BTC	\N	0.1973	0.3584	631
51	541	BTC	\N	0.1817	0.3584	632
51	601	BTC	\N	0.1817	0.3584	633
51	661	BTC	\N	0.2802	0.3584	634
51	721	BTC	\N	0.2164	0.3584	635
51	781	BTC	\N	0.2053	0.3584	636
51	841	BTC	\N	0.1587	0.3584	637
51	901	BTC	\N	0.3034	0.3584	638
51	961	BTC	\N	0.3034	0.3584	639
51	1021	BTC	\N	0.3536	0.3584	640
51	1081	BTC	\N	0.2512	0.3584	641
51	1141	BTC	\N	0.2512	0.3584	642
51	1201	BTC	\N	0.2960	0.3584	643
51	1261	BTC	\N	0.1467	0.3584	644
51	1321	BTC	\N	0.5286	0.3584	645
51	1381	BTC	\N	0.5286	0.3584	646
52	1	BTC	\N	0.7922	0.3584	647
52	61	BTC	\N	0.7922	0.3584	648
52	121	BTC	\N	0.7922	0.3584	649
52	181	BTC	\N	0.5859	0.3584	650
52	241	BTC	\N	0.5859	0.3584	651
52	301	BTC	\N	0.5859	0.3584	652
52	361	BTC	\N	\N	0.3584	653
52	421	BTC	\N	\N	0.3584	654
52	481	BTC	\N	\N	0.3584	655
52	541	BTC	\N	\N	0.3584	656
52	601	BTC	\N	\N	0.3584	657
52	661	BTC	\N	\N	0.3584	658
52	721	BTC	0.0086	0.0086	0.0092	659
52	781	BTC	0.3504	0.1795	0.1918	660
52	841	BTC	\N	0.1795	0.1918	661
52	901	BTC	0.6434	0.3341	0.3797	662
52	961	BTC	-0.9993	0.0008	-0.0676	663
52	1021	BTC	\N	0.0008	-0.0676	664
52	1081	BTC	0.9826	0.1971	0.2492	665
52	1141	BTC	0.3924	0.2297	0.2861	666
52	1201	BTC	0.0164	0.1992	0.2242	667
52	1261	BTC	\N	0.1992	0.2242	668
52	1321	BTC	\N	0.1992	0.2242	669
52	1381	BTC	\N	0.1992	0.2242	670
53	1	BTC	0.9873	0.2977	0.4449	671
53	61	BTC	\N	0.2977	0.4449	672
53	121	BTC	-0.9968	0.1539	0.0441	673
53	181	BTC	0.0015	0.1386	0.0338	674
53	241	BTC	\N	0.1386	0.0338	675
53	301	BTC	-0.8126	0.0522	-0.1730	676
53	361	BTC	0.9729	0.1289	0.0790	677
53	421	BTC	0.9983	0.1958	0.2651	678
53	481	BTC	-0.0008	0.1817	0.2147	679
53	541	BTC	0.9990	0.2362	0.3553	680
53	601	BTC	-0.2064	0.2086	0.2590	681
53	661	BTC	-0.3504	0.1757	0.1584	682
53	721	BTC	0.9682	0.2197	0.2880	683
53	781	BTC	0.5267	0.2359	0.3252	684
53	841	BTC	0.5267	0.2504	0.3559	685
53	901	BTC	0.5046	0.2625	0.3782	686
53	961	BTC	0.5423	0.2752	0.4023	687
53	1021	BTC	0.0534	0.2656	0.3517	688
53	1081	BTC	0.9987	0.2961	0.4445	689
53	1141	BTC	\N	0.2961	0.4445	690
53	1201	BTC	-0.1910	0.2766	0.3426	691
53	1261	BTC	0.0448	0.2677	0.2961	692
53	1321	BTC	0.3280	0.2700	0.3010	693
53	1381	BTC	-0.6124	0.2384	0.1642	694
54	1	BTC	\N	0.2384	0.1642	695
54	61	BTC	\N	0.2384	0.1642	696
54	121	BTC	-0.0027	0.2301	0.1329	697
54	181	BTC	0.5267	0.2400	0.2028	698
54	241	BTC	0.9843	0.2640	0.3357	699
54	301	BTC	0.9985	0.2870	0.4444	700
54	361	BTC	0.9995	0.3086	0.5327	701
54	421	BTC	0.0000	0.2995	0.4501	702
54	481	BTC	0.9834	0.3190	0.5310	703
54	541	BTC	0.9702	0.3371	0.5965	704
54	601	BTC	\N	0.3371	0.5965	705
54	661	BTC	\N	0.3371	0.5965	706
54	721	BTC	\N	0.3465	0.5965	707
54	781	BTC	\N	0.3464	0.5965	708
54	841	BTC	\N	0.3464	0.5965	709
54	901	BTC	\N	0.3374	0.5965	710
54	961	BTC	\N	0.3792	0.5965	711
54	1021	BTC	\N	0.3792	0.5965	712
54	1081	BTC	\N	0.3597	0.5965	713
54	1141	BTC	\N	0.3586	0.5965	714
54	1201	BTC	\N	0.3704	0.5965	715
54	1261	BTC	\N	0.3704	0.5965	716
54	1321	BTC	\N	0.3704	0.5965	717
54	1381	BTC	\N	0.3704	0.5965	718
55	1	BTC	\N	0.3484	0.5965	719
55	61	BTC	0.9970	0.3707	0.8349	720
55	121	BTC	-0.7269	0.3801	0.1989	721
55	181	BTC	\N	0.3936	0.1989	722
55	241	BTC	\N	0.3936	0.1989	723
55	301	BTC	\N	0.4382	0.1989	724
55	361	BTC	0.9325	0.4367	0.5065	725
55	421	BTC	\N	0.4151	0.5065	726
55	481	BTC	\N	0.4318	0.5065	727
55	541	BTC	\N	0.4082	0.5065	728
55	601	BTC	\N	0.4349	0.5065	729
55	661	BTC	0.9970	0.4935	0.7329	730
55	721	BTC	0.2312	0.4614	0.5585	731
55	781	BTC	0.6124	0.4651	0.5740	732
55	841	BTC	0.4415	0.4614	0.5411	733
55	901	BTC	0.9982	0.4829	0.6429	734
55	961	BTC	0.3034	0.4725	0.5735	735
55	1021	BTC	0.4199	0.4884	0.5442	736
55	1081	BTC	\N	0.4652	0.5442	737
55	1141	BTC	\N	0.4652	0.5442	738
55	1201	BTC	0.9986	0.5193	0.6472	739
55	1261	BTC	0.9682	0.5613	0.7137	740
55	1321	BTC	\N	0.5724	0.7137	741
55	1381	BTC	\N	0.6316	0.7137	742
56	1	BTC	\N	0.6316	0.7137	743
56	61	BTC	\N	0.6316	0.7137	744
56	121	BTC	\N	0.6650	0.7137	745
56	181	BTC	\N	0.6727	0.7137	746
56	241	BTC	\N	0.6544	0.7137	747
56	301	BTC	\N	0.6329	0.7137	748
56	361	BTC	-0.9682	0.5099	-0.0080	749
56	421	BTC	0.9758	0.5709	0.3178	750
56	481	BTC	\N	0.5434	0.3178	751
56	541	BTC	\N	0.5129	0.3178	752
56	601	BTC	0.4723	0.5102	0.3699	753
56	661	BTC	-0.1282	0.4703	0.2304	754
56	721	BTC	0.3823	0.4651	0.2675	755
56	781	BTC	0.8934	0.4889	0.4051	756
56	841	BTC	0.9682	0.5141	0.5190	757
56	901	BTC	\N	0.5141	0.5190	758
56	961	BTC	0.9823	0.5375	0.6174	759
56	1021	BTC	-0.0150	0.5112	0.4930	760
56	1081	BTC	0.0015	0.4881	0.4021	761
56	1141	BTC	\N	0.4881	0.4021	762
56	1201	BTC	0.3511	0.4821	0.3920	763
56	1261	BTC	-0.9970	0.4205	0.1341	764
56	1321	BTC	0.9549	0.4419	0.2789	765
56	1381	BTC	-0.9988	0.3864	0.0628	766
57	1	BTC	0.0076	0.3724	0.0538	767
57	61	BTC	\N	0.3484	0.0538	768
57	121	BTC	0.9986	0.4148	0.2225	769
57	181	BTC	\N	0.4148	0.2225	770
57	241	BTC	0.9001	0.4327	0.3527	771
57	301	BTC	0.9325	0.4506	0.4579	772
57	361	BTC	0.0136	0.4178	0.3810	773
57	421	BTC	\N	0.4178	0.3810	774
57	481	BTC	\N	0.4178	0.3810	775
57	541	BTC	\N	0.4178	0.3810	776
57	601	BTC	\N	0.4178	0.3810	777
57	661	BTC	\N	0.3963	0.3810	778
57	721	BTC	\N	0.4027	0.3810	779
57	781	BTC	\N	0.3943	0.3810	780
57	841	BTC	\N	0.3923	0.3810	781
57	901	BTC	\N	0.3660	0.3810	782
57	961	BTC	\N	0.3688	0.3810	783
57	1021	BTC	\N	0.3664	0.3810	784
57	1081	BTC	\N	0.3664	0.3810	785
57	1141	BTC	\N	0.3664	0.3810	786
57	1201	BTC	\N	0.3348	0.3810	787
57	1261	BTC	\N	0.3014	0.3810	788
57	1321	BTC	\N	0.3014	0.3810	789
57	1381	BTC	\N	0.3014	0.3810	790
58	1	BTC	\N	0.3014	0.3810	791
58	61	BTC	\N	0.3014	0.3810	792
58	121	BTC	\N	0.3014	0.3810	793
58	181	BTC	\N	0.3014	0.3810	794
58	241	BTC	\N	0.3014	0.3810	795
58	301	BTC	\N	0.3014	0.3810	796
58	361	BTC	\N	0.3720	0.3810	797
58	421	BTC	\N	0.3364	0.3810	798
58	481	BTC	\N	0.3364	0.3810	799
58	541	BTC	\N	0.3364	0.3810	800
58	601	BTC	\N	0.3279	0.3810	801
58	661	BTC	\N	0.3584	0.3810	802
58	721	BTC	\N	0.3566	0.3810	803
58	781	BTC	\N	0.3154	0.3810	804
58	841	BTC	\N	0.2610	0.3810	805
58	901	BTC	\N	0.2610	0.3810	806
58	961	BTC	\N	0.1954	0.3810	807
58	1021	BTC	\N	0.2164	0.3810	808
58	1081	BTC	\N	0.2403	0.3810	809
58	1141	BTC	\N	0.2403	0.3810	810
58	1201	BTC	\N	0.2264	0.3810	811
58	1261	BTC	\N	0.4012	0.3810	812
58	1321	BTC	\N	0.3089	0.3810	813
58	1381	BTC	\N	0.5705	0.3810	814
59	1	BTC	\N	0.7112	0.3810	815
59	61	BTC	\N	0.7112	0.3810	816
59	121	BTC	-0.9987	0.2119	-0.9842	817
59	181	BTC	\N	0.2119	-0.9842	818
59	241	BTC	\N	-0.0175	-0.9842	819
59	301	BTC	\N	-0.4925	-0.9842	820
59	361	BTC	\N	-0.9987	-0.9842	821
59	421	BTC	\N	-0.9987	-0.9842	822
59	481	BTC	\N	-0.9987	-0.9842	823
59	541	BTC	\N	-0.9987	-0.9842	824
59	601	BTC	\N	-0.9987	-0.9842	825
59	661	BTC	\N	-0.9987	-0.9842	826
59	721	BTC	\N	-0.9987	-0.9842	827
59	781	BTC	0.9670	-0.0158	0.6292	828
59	841	BTC	0.9670	0.3118	0.7941	829
59	901	BTC	\N	0.3118	0.7941	830
59	961	BTC	\N	0.3118	0.7941	831
59	1021	BTC	\N	0.3118	0.7941	832
59	1081	BTC	0.9670	0.4756	0.8743	833
59	1141	BTC	\N	0.4756	0.8743	834
59	1201	BTC	\N	0.4756	0.8743	835
59	1261	BTC	\N	0.4756	0.8743	836
59	1321	BTC	\N	0.4756	0.8743	837
59	1381	BTC	\N	0.4756	0.8743	838
60	1	BTC	\N	0.4756	0.8743	839
60	61	BTC	\N	0.4756	0.8743	840
60	121	BTC	\N	0.4756	0.8743	841
60	181	BTC	\N	0.4756	0.8743	842
60	241	BTC	\N	0.4756	0.8743	843
60	301	BTC	\N	0.4756	0.8743	844
60	361	BTC	\N	0.4756	0.8743	845
60	421	BTC	\N	0.4756	0.8743	846
60	481	BTC	\N	0.4756	0.8743	847
60	541	BTC	\N	0.4756	0.8743	848
60	601	BTC	-0.2757	0.3253	-0.0696	849
60	661	BTC	-0.9993	0.1046	-0.5218	850
60	721	BTC	\N	0.1046	-0.5218	851
60	781	BTC	\N	0.1046	-0.5218	852
60	841	BTC	\N	0.1046	-0.5218	853
60	901	BTC	\N	0.1046	-0.5218	854
60	961	BTC	\N	0.1046	-0.5218	855
60	1021	BTC	\N	0.1046	-0.5218	856
60	1081	BTC	\N	0.1046	-0.5218	857
60	1141	BTC	\N	0.1046	-0.5218	858
60	1201	BTC	\N	0.1046	-0.5218	859
60	1261	BTC	\N	0.1046	-0.5218	860
60	1321	BTC	\N	0.1046	-0.5218	861
60	1381	BTC	\N	0.1046	-0.5218	862
61	1	BTC	\N	0.1046	-0.5218	863
61	61	BTC	\N	0.1046	-0.5218	864
61	121	BTC	\N	0.3252	-0.5218	865
61	181	BTC	\N	0.3252	-0.5218	866
61	241	BTC	\N	0.3252	-0.5218	867
61	301	BTC	\N	0.3252	-0.5218	868
61	361	BTC	\N	0.3252	-0.5218	869
61	421	BTC	\N	0.3252	-0.5218	870
61	481	BTC	\N	0.3252	-0.5218	871
61	541	BTC	\N	0.3252	-0.5218	872
61	601	BTC	\N	0.3252	-0.5218	873
61	661	BTC	\N	0.3252	-0.5218	874
61	721	BTC	\N	0.3252	-0.5218	875
61	781	BTC	\N	0.1648	-0.5218	876
61	841	BTC	\N	-0.1027	-0.5218	877
61	901	BTC	\N	-0.1027	-0.5218	878
61	961	BTC	\N	-0.1027	-0.5218	879
61	1021	BTC	\N	-0.1027	-0.5218	880
61	1081	BTC	\N	-0.6375	-0.5218	881
61	1141	BTC	\N	-0.6375	-0.5218	882
61	1201	BTC	\N	-0.6375	-0.5218	883
61	1261	BTC	\N	-0.6375	-0.5218	884
61	1321	BTC	\N	-0.6375	-0.5218	885
61	1381	BTC	\N	-0.6375	-0.5218	886
62	1	BTC	\N	-0.6375	-0.5218	887
62	61	BTC	\N	-0.6375	-0.5218	888
62	121	BTC	0.9758	-0.0997	0.9643	889
62	181	BTC	\N	-0.0997	0.9643	890
62	241	BTC	\N	-0.0997	0.9643	891
62	301	BTC	0.9814	0.1706	0.9746	892
62	361	BTC	0.9042	0.3173	0.9457	893
62	421	BTC	\N	0.3173	0.9457	894
62	481	BTC	0.8481	0.4058	0.9112	895
62	541	BTC	0.9970	0.4902	0.9361	896
62	601	BTC	0.9970	0.6720	0.9513	897
62	661	BTC	-0.9972	0.6723	0.5144	898
62	721	BTC	0.8360	0.6928	0.5805	899
62	781	BTC	\N	0.6928	0.5805	900
62	841	BTC	\N	0.6928	0.5805	901
62	901	BTC	\N	0.6928	0.5805	902
62	961	BTC	\N	0.6928	0.5805	903
62	1021	BTC	0.9985	0.7268	0.7042	904
62	1081	BTC	0.7003	0.7241	0.7032	905
63	961	BTC	0.6369	0.6369	0.6369	906
63	1021	BTC	\N	0.6369	0.6369	907
63	1081	BTC	\N	0.6369	0.6369	908
63	1141	BTC	\N	0.6369	0.6369	909
63	1201	BTC	\N	0.6369	0.6369	910
63	1261	BTC	\N	0.6369	0.6369	911
63	1321	BTC	\N	0.6369	0.6369	912
63	1381	BTC	0.6705	0.6537	0.6537	913
64	1	BTC	\N	0.6537	0.6537	914
64	61	BTC	\N	0.6537	0.6537	915
64	121	BTC	\N	0.6537	0.6537	916
64	181	BTC	\N	0.6537	0.6537	917
64	241	BTC	\N	0.6537	0.6537	918
64	301	BTC	\N	0.6537	0.6537	919
64	361	BTC	\N	0.6537	0.6537	920
64	421	BTC	\N	0.6537	0.6537	921
64	481	BTC	\N	0.6537	0.6537	922
64	541	BTC	0.9717	0.8155	0.8623	923
64	601	BTC	\N	0.6705	0.6705	924
64	661	BTC	\N	0.6705	0.6705	925
64	721	BTC	\N	0.6705	0.6705	926
64	781	BTC	0.6901	0.6895	0.6900	927
64	841	BTC	-0.5574	0.0790	0.0242	928
64	901	BTC	0.9977	0.0886	0.0484	929
64	961	BTC	\N	0.0886	0.0484	930
64	1021	BTC	0.1895	0.1249	0.1160	931
64	1081	BTC	-0.7804	-0.0912	-0.1790	932
64	1141	BTC	\N	-0.0961	-0.1812	933
64	1201	BTC	\N	-0.0961	-0.1812	934
64	1261	BTC	-0.9985	-0.2766	-0.4630	935
65	1	BTC	0.9081	0.9081	0.9081	936
65	61	BTC	\N	0.9081	0.9081	937
65	121	BTC	\N	0.9081	0.9081	938
65	181	BTC	\N	0.9081	0.9081	939
65	241	BTC	0.9833	0.9296	0.9356	940
65	301	BTC	0.7964	0.8772	0.8646	941
65	361	BTC	\N	0.8772	0.8646	942
65	421	BTC	\N	0.8772	0.8646	943
65	481	BTC	\N	0.8772	0.8646	944
65	541	BTC	-0.0987	0.5793	0.3780	945
66	1141	BTC	0.5574	0.5574	0.5574	946
66	1201	BTC	\N	0.5574	0.5574	947
66	1261	BTC	\N	0.5574	0.5574	948
66	1321	BTC	\N	0.5574	0.5574	949
66	1381	BTC	\N	0.5574	0.5574	950
67	1	BTC	\N	0.5574	0.5574	951
67	61	BTC	\N	0.5574	0.5574	952
67	121	BTC	0.7184	0.6882	0.7022	953
67	181	BTC	\N	0.6983	0.7076	954
67	241	BTC	\N	0.6983	0.7076	955
67	301	BTC	0.6249	0.6972	0.7010	956
67	361	BTC	\N	0.7184	0.7184	957
67	421	BTC	0.7906	0.7545	0.7669	958
67	481	BTC	0.8360	0.7817	0.7971	959
\.


--
-- Data for Name: newsApp_article; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."newsApp_article" (id, title, description, pic, url, date_posted, outlet) FROM stdin;
22	Jack Dorsey is trying to sell his first tweet as an NFT - The Verge	Jack Dorsey, the billionaire co-founder and CEO of Twitter, a man who stans bitcoin right on his Twitter bio, is attempting to sell his very first tweet as an NFT — a digital good that lives on the Ethereum blockchain.	https://cdn.vox-cdn.com/thumbor/IqEh_mLXZBP9ZaS7kxeu7mMvNI0=/0x255:3000x1826/fit-in/1200x630/cdn.vox-cdn.com/uploads/chorus_asset/file/22349292/1229328421.jpg	https://www.theverge.com/2021/3/5/22316320/jack-dorsey-original-tweet-nft-cent-valuables	2021-03-06 00:38:00+00	The Verge
23	Surfing The Crypto Waves: The Next BTC Buying Opportunity - Seeking Alpha	Bitcoin is in the late-middle stage of the bullish cycle off the 2018 lows. Price is pulling back correctively.	https://static.seekingalpha.com/uploads/2021/3/4/saupload_vpUJeHeGjRTZRV9OLFnVIwPGwW11MB3O6hLI7kmBuThWktOFh450W0o7hn79W05qly2GfwMq32JaosFIw9FXmG_69UGhqPcdZ-OodqHdRamh0A2233LMLyz7W8zSi9KZ0Yg08dwK_thumb1.png	https://seekingalpha.com/article/4411930-next-btc-buying-opportunity	2021-03-05 23:31:00+00	Seeking Alpha
24	Wealth Managers Want Clarity on Bitcoin Rules: Reuters - Yahoo Finance	Leuthold Group Chief Investment Officer Jim Paulsen told Reuters he is frustrated by not being able to hold bitcoin for his clients.	https://s.yimg.com/uu/api/res/1.2/W5MHGRuBwVRccI0A8oRg6A--~B/aD0xMDAwO3c9MTUwMDthcHBpZD15dGFjaHlvbg--/https://media.zenfs.com/en/coindesk_75/fb0fb3a3a9e30135f128ed8a8c8140ba	https://finance.yahoo.com/news/wealth-managers-want-clarity-bitcoin-205800023.html	2021-03-05 20:58:00+00	Yahoo Entertainment
25	Don't buy Bitcoin if you care about the planet - Stuff.co.nz	OPINION: Bitcoin will cost a lot of people money they can’t really afford to lose. Worse than that, it’s a technology with a carbon footprint that’s totally unjustified.	https://resources.stuff.co.nz/content/dam/images/4/y/q/u/3/u/image.related.StuffLandscapeSixteenByNine.1420x800.4yra0t.png/1614812024488.jpg	https://www.stuff.co.nz/business/opinion-analysis/300244349/dont-buy-bitcoin-if-you-care-about-the-planet	2021-03-05 16:00:00+00	Stuff.co.nz
26	Cipher Mining Inc., a Newly Formed US-based Bitcoin Mining Company, to Become a Publicly Traded Company via a Merger with Good Works Acquisition Corp. - Business Wire	Cipher Mining Technologies Inc. (“Cipher Mining”), a newly formed U.S.-based Bitcoin mining operation, and Good Works Acquisition Corp. (Nasdaq: GWAC)	http://www.businesswire.com/images/bwlogo_square.png	https://www.businesswire.com/news/home/20210305005234/en/Cipher-Mining-Inc.-a-Newly-Formed-US-based-Bitcoin-Mining-Company-to-Become-a-Publicly-Traded-Company-via-a-Merger-with-Good-Works-Acquisition-Corp.	2021-03-05 11:46:00+00	Business Wire
27	Wealth managers frustrated over bitcoin, anxious for piece of the action - CNA	The rollercoster ride in bitcoin since the start of the year has not dampened wealth manager Jim Paulsen's enthusiasm for the cryptocurrency.	https://cna-sg-res.cloudinary.com/image/upload/q_auto,f_auto/image/14340566/16x9/991/557/64ffe47af5897fa49c85c0097b0160ef/IV/file-photo--representation-of-the-virtual-currency-bitcoin-is-seen-on-a-motherboard-in-this-picture-illustration-5.jpg	https://www.channelnewsasia.com/news/business/wealth-managers-frustrated-over-bitcoin-anxious-for-piece-of-the-14340568	2021-03-05 07:35:00+00	CNA
28	Bitcoin could hit $1 million or more in the next decade – Kraken CEO - MyBroadband	As the leader of crypto exchange Kraken, Jesse Powell is bound to be bullish on Bitcoin. Yet he’s projecting a disruptive future that would stretch the imagination of even the most ardent crypto fans.	https://mybroadband.co.za/news/wp-content/uploads/2018/03/Bitcoin.jpg	https://mybroadband.co.za/news/cryptocurrency/388508-bitcoin-could-hit-1-million-or-more-in-the-next-decade-kraken-ceo.html	2021-03-04 14:05:00+00	MyBroadband
1	Do I have to pay tax on my Bitcoin profits? A tax expert replies - This is Money	Like any form of asset, there are various UK tax implications from buying and selling cryptoassets. Here, tax expert David Britton answers some the most common questions currently being asked.	https://i.dailymail.co.uk/1s/2021/03/05/15/40087482-0-image-a-46_1614957685427.jpg	https://www.thisismoney.co.uk/money/investing/article-9330575/Do-pay-tax-Bitcoin-profits-tax-expert-replies.html	2021-03-08 08:09:00+00	This is Money
2	Chinese app Meitu buys $40 million worth of bitcoin and ethereum - CNBC	Meitu follows the likes of Tesla and Square in purchasing bitcoin. But the Chinese appmaker appears to be the first major company to buy ether.	https://image.cnbcfm.com/api/v1/image/106850425-1615175928363-gettyimages-1231337563-Active_App_Meitu.jpeg?v=1615176004	https://www.cnbc.com/2021/03/08/crypto-chinese-app-meitu-buys-millions-worth-of-bitcoin-and-ethereum.html	2021-03-08 06:19:00+00	CNBC
3	Rush to bitcoin? Not so fast, say keepers of corporate coffers - Yahoo Finance	When Elon Musk's Tesla became the biggest name to reveal it had added bitcoin to its coffers last month, many pundits were swift to call a corporate rush...	https://s.yimg.com/uu/api/res/1.2/JCl4Nf3M2UhOs41Cni4KOg--~B/aD01MzM7dz04MDA7YXBwaWQ9eXRhY2h5b24-/https://media.zenfs.com/en/reuters-finance.com/86054f2e56b0b0f95079d34564e163a3	https://finance.yahoo.com/news/rush-bitcoin-not-fast-keepers-060913263.html	2021-03-08 06:18:00+00	Yahoo Entertainment
4	Active ETFs top European investors' wish list - Financial Times	Cryptocurrency craving is also strong amid surge in bitcoin fund assets	https://www.ft.com/__origami/service/image/v2/images/raw/https%3A%2F%2Fd1e00ek4ebabms.cloudfront.net%2Fproduction%2Fa076dbd2-39a5-4de8-9530-d20b393a59f4.jpg?source=next-opengraph&fit=scale-down&width=900	https://www.ft.com/content/dfa4a4e4-c75a-4127-b086-81610aabc597	2021-03-08 05:01:00+00	Financial Times
5	Why Bitcoin Won't 'Break': Expert Explains Crypto Boom - TheStreet	CEO of Flipside Crypto discusses why Bitcoin has surged, the SEC's role in crypto, new projects to watch and why we won't likely see a fall back to $10,000.	https://www.thestreet.com/.image/t_share/MTc5MjkzMzE1MDE0MzM4MTk5/bitcoins-appeal-grows-as-more-investment-platforms-facilitate-dollar-loans-backed-by-cryptocurrencies.jpg	https://www.thestreet.com/investing/cryptocurrency/bitcoin-wont-break-expert-explains-the-rise-in-crypto	2021-03-07 17:24:00+00	TheStreet
6	The next Bitcoin? Investors flock to new cryptocurrency 'ADA' - 9News	<p>It&#x27;s called ADA, and it is the native token of the Cardano blockchain (a similar technology to Bitcoin, where all transactions are recorded on a single ledger).</p>	https://imageresizer.static9.net.au/sjx4UB7tkw16j4pNVELyZdBpZ44=/0x443:4258x2839/1200x628/smart/https%3A%2F%2Fprod.static9.net.au%2Ffs%2Fb7e69037-6c14-48de-b979-e8fe125ebde8	https://www.9news.com.au/national/bitcoin-news-investors-hunt-for-next-big-cryptocurrency-as-ada-explodes/5cf444f8-c01f-4059-a9a5-ec673d6a6999	2021-03-06 22:16:00+00	9News
7	Southeast Asia's first Bitcoin fund launches to meet local institutional demand - Cointelegraph	The BCMG Genesis Bitcoin Fund-I is fully insured and regulated in Malaysia, and promises at least 12% annual returns.	https://images.cointelegraph.com/images/1200_aHR0cHM6Ly9zMy5jb2ludGVsZWdyYXBoLmNvbS91cGxvYWRzLzIwMjEtMDMvYWRhOThkNTQtM2Q4YS00ZDdkLWI2ODktYmVkYzJjMmNiNGMwLmpwZw==.jpg	https://cointelegraph.com/news/southeast-asia-s-first-bitcoin-fund-launches-to-meet-local-institutional-demand	2021-03-09 04:11:00+00	Cointelegraph
8	Publicly Listed Maker of Billion-User Chinese App Meitu Buys $40 Million of Bitcoin and Ether for Its Treasury – Bitcoin News - Bitcoin News	One of China's top internet app makers, Meitu Inc., is adding up to $100 million worth of cryptocurrencies to its treasury, joining a growing list of companies worldwide to do so. The company has already purchased $40 million worth of bitcoin and ether for it…	https://news.bitcoin.com/wp-content/uploads/2019/09/meitu-bitcoin.jpg	https://news.bitcoin.com/publicly-listed-maker-billion-user-chinese-app-meitu-40-million-bitcoin-ether-treasury/	2021-03-09 00:47:00+00	Bitcoin.com
9	Historic tweet by Jack Dorsey hits $2.5M in digital auction - Fox Business	The tweet is being sold as a non-fungible token, or NTF. An NTF is a unique digital token which verifies authenticity and ownership by encrypting the creator's signature on the blockchain, a digital ledger used in cryptocurrencies such as bitcoin.	https://a57.foxnews.com/static.foxbusiness.com/foxbusiness.com/content/uploads/2020/06/0/0/Jack-Dorsey-AP.jpg?ve=1&tl=1	https://www.foxbusiness.com/markets/historic-tweet-by-jack-dorsey-hits-2-5m-in-digital-auction	2021-03-09 00:00:00+00	Fox Business
10	Commentary: Elon Musk gambles big on bitcoin to keep Tesla going strong - CNA	Elon Musk has managed to turn in a profitable year for Tesla but he faces challenges in sustaining that financial growth, says David Kuo.	https://cna-sg-res.cloudinary.com/image/upload/q_auto,f_auto/image/14320256/16x9/991/557/a7b9b436cacff756a7c7a68f3fbfd81a/Ik/file-photo--spacex-founder-and-chief-engineer-elon-musk-attends-a-news-conference-at-the-kennedy-space-center-1.jpg	https://www.channelnewsasia.com/news/commentary/elon-musk-bitcoins-tweet-tesla-price-investment-crypto-14360906	2021-03-08 22:03:00+00	CNA
11	Cathie Wood sees bitcoin joining stocks and bonds as part of the classic balanced portfolio - CNBC	The Ark Investment Management CEO told CNBC's "Closing Bell" that bitcoin could eventually trade like fixed income.	https://image.cnbcfm.com/api/v1/image/105677669-1547505346611preview.jpg?v=1615237856	https://www.cnbc.com/2021/03/08/cathie-wood-sees-bitcoin-joining-stocks-and-bonds-as-part-of-the-classic-investor-allocation-model.html	2021-03-08 21:35:00+00	CNBC
12	What Biden's $2 Trillion Stimulus Package Means for Bitcoin - Decrypt	President Biden’s $1.9 trillion COVID-19 stimulus package passed the Senate over the weekend—and another round of checks could send Bitcoin higher.	https://cdn.decrypt.co/resize/1024/height/512/wp-content/uploads/2021/03/COVID-Stimulus-Package-gID_4.jpg	https://decrypt.co/60564/what-bidens-2-trillion-stimulus-package-means-for-bitcoin	2021-03-08 17:38:00+00	Decrypt
13	Norwegian oil billionaire joins the bets on Bitcoin - The Edge Markets MY	(March 8): Oil billionaire Kjell Inge Rokke has come out strongly in favour of Bitcoin, as he bets the cryptocurrency will prove the best defence against the disruption facing the finance industry and central banking.Rokke’s Aker ASA, which controls oil and o…	https://assets.theedgemarkets.com/bitcoin-4121654_reuters_2.jpg?B1eLf7qK.UqXnm97wDiL586FRmlFOEAa	https://www.theedgemarkets.com/article/norwegian-oil-billionaire-joins-bets-bitcoin	2021-03-08 10:02:00+00	The Edge Markets MY
14	Do I have to pay tax on my Bitcoin profits? A tax expert replies - This is Money	Like any form of asset, there are various UK tax implications from buying and selling cryptoassets. Here, tax expert David Britton answers some the most common questions currently being asked.	https://i.dailymail.co.uk/1s/2021/03/05/15/40087482-0-image-a-46_1614957685427.jpg	https://www.thisismoney.co.uk/money/investing/article-9330575/Do-pay-tax-Bitcoin-profits-tax-expert-replies.html	2021-03-08 08:09:00+00	This is Money
15	Active ETFs top European investors' wish list - Financial Times	Cryptocurrency craving is also strong amid surge in bitcoin fund assets	https://www.ft.com/__origami/service/image/v2/images/raw/https%3A%2F%2Fd1e00ek4ebabms.cloudfront.net%2Fproduction%2Fa076dbd2-39a5-4de8-9530-d20b393a59f4.jpg?source=next-opengraph&fit=scale-down&width=900	https://www.ft.com/content/dfa4a4e4-c75a-4127-b086-81610aabc597	2021-03-08 05:01:00+00	Financial Times
16	Crypto coin outperforming bitcoin is about to see supply reduced - Moneyweb.co.za	Second-largest cryptocurrency has surged in past year.	https://www.moneyweb.co.za/wp-content/uploads/2021/02/368862267-1024x682.jpg	https://www.moneyweb.co.za/moneyweb-crypto/bitcoin/crypto-coin-outperforming-bitcoin-is-about-to-see-supply-reduced/	2021-03-08 04:33:00+00	Moneyweb.co.za
\.


--
-- Data for Name: newsApp_comments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."newsApp_comments" (id, comment, comment_date, article_id, username_id) FROM stdin;
1	Very cool	2021-03-07 10:51:41.553928+00	22	1
2	Wow very cool	2021-03-08 10:31:52.5249+00	22	1
\.


--
-- Data for Name: newsApp_like; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."newsApp_like" (id, article_id, user_id) FROM stdin;
\.


--
-- Data for Name: polls_choice; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.polls_choice (id, choice_text, votes, question_id) FROM stdin;
1	Bullish	11	1
2	Bearish	12	1
\.


--
-- Data for Name: polls_profile; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.polls_profile (id, created, modified, user_id) FROM stdin;
2	2021-03-01 22:09:43.896262+00	2021-03-01 22:10:09.131032+00	2
3	2021-03-02 14:07:18.298821+00	2021-03-02 14:07:34.741632+00	3
4	2021-03-02 14:07:40.896822+00	2021-03-02 14:08:50.808883+00	4
5	2021-03-06 17:12:34.290718+00	2021-03-06 17:12:51.704973+00	5
6	2021-03-07 15:22:36.943632+00	2021-03-07 15:22:46.955886+00	6
7	2021-03-08 15:05:38.94272+00	2021-03-08 15:05:44.828488+00	7
1	2021-02-16 12:33:21.273029+00	2021-03-08 15:09:14.296112+00	1
8	2021-03-08 15:09:53.554973+00	2021-03-08 15:10:02.348383+00	8
9	2021-03-08 15:10:12.411117+00	2021-03-08 15:10:26.551087+00	9
\.


--
-- Data for Name: polls_question; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.polls_question (id, question_text, pub_date) FROM stdin;
1	What is your sentiment towards the CryptoCurrency Market currently?	2021-02-16 12:33:30+00
\.


--
-- Data for Name: polls_sentiment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.polls_sentiment (id, dateid, timeid, trading_symbol, comp_sentiment) FROM stdin;
\.


--
-- Data for Name: sentiment_dim; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sentiment_dim (dateid, timeid, trading_symbol, comp_sentiment) FROM stdin;
25	601	BTC	0.9766
25	721	BTC	0.9818
25	781	BTC	0.7717
25	841	BTC	-0.8126
25	901	BTC	0.9682
25	961	BTC	0.9818
25	1021	BTC	0.6808
25	1141	BTC	0.8862
25	1201	BTC	0.9705
25	1261	BTC	-0.5859
25	1321	BTC	0.9986
25	121	BTC	-0.5994
25	361	BTC	0.9840
25	481	BTC	0.9840
26	1141	BTC	-0.1484
26	1201	BTC	-0.9993
26	1261	BTC	-0.7269
26	1321	BTC	-0.0643
26	1381	BTC	0.9468
26	121	BTC	-0.9970
26	361	BTC	0.9840
26	421	BTC	-0.9944
27	601	BTC	-0.6597
27	661	BTC	-0.9978
27	721	BTC	-0.0160
27	781	BTC	-0.5574
27	841	BTC	-0.3362
27	901	BTC	0.0737
27	961	BTC	-0.0175
27	1021	BTC	-0.0144
27	1081	BTC	0.9834
27	1141	BTC	0.9771
27	1201	BTC	0.4062
27	1261	BTC	-0.7506
27	1381	BTC	0.4108
27	241	BTC	-0.0150
27	301	BTC	-0.5574
27	481	BTC	-0.5267
27	541	BTC	-0.5859
28	601	BTC	0.0534
28	661	BTC	0.9726
28	721	BTC	0.6434
28	781	BTC	0.2559
28	841	BTC	0.4191
28	901	BTC	0.3034
28	961	BTC	0.3082
28	1021	BTC	0.9842
28	1081	BTC	-0.0439
28	1141	BTC	0.0000
28	1201	BTC	0.3074
28	1261	BTC	0.4561
28	1321	BTC	0.3177
28	1381	BTC	0.4547
28	241	BTC	0.4397
28	301	BTC	0.8934
28	361	BTC	-0.5574
28	421	BTC	0.7906
28	481	BTC	0.5267
29	1	BTC	0.3721
29	601	BTC	-0.0008
29	661	BTC	0.4266
29	721	BTC	0.3280
29	781	BTC	0.4266
29	841	BTC	0.3280
29	901	BTC	0.0015
29	961	BTC	0.0015
29	1021	BTC	-0.0009
29	1081	BTC	-0.0008
29	1141	BTC	0.0017
29	61	BTC	0.0000
29	1201	BTC	0.0015
29	1261	BTC	0.0078
29	1321	BTC	0.9985
29	1381	BTC	0.2268
29	121	BTC	-0.2064
29	181	BTC	0.0000
29	241	BTC	0.9970
29	301	BTC	0.0015
29	361	BTC	0.9325
29	421	BTC	0.0015
29	481	BTC	-0.0008
29	541	BTC	0.0015
30	1	BTC	-0.1998
30	601	BTC	0.3433
30	661	BTC	0.3115
30	721	BTC	0.0675
30	781	BTC	0.6249
30	961	BTC	-0.0862
30	1021	BTC	0.9882
30	1081	BTC	-0.7906
30	1141	BTC	-0.0212
30	61	BTC	0.5719
30	1261	BTC	0.3499
30	121	BTC	0.9682
30	241	BTC	-0.0007
30	301	BTC	-0.0007
30	361	BTC	-0.5574
30	421	BTC	-0.5574
31	601	BTC	-0.9993
31	661	BTC	-0.4512
31	721	BTC	0.0064
31	781	BTC	-0.2726
31	841	BTC	0.6124
31	901	BTC	0.3246
31	961	BTC	0.7906
31	1021	BTC	-0.2407
31	1081	BTC	-0.9993
31	1141	BTC	0.4331
31	61	BTC	0.9970
31	1201	BTC	-0.9325
31	181	BTC	0.7906
31	301	BTC	0.9970
31	541	BTC	0.5574
32	601	BTC	-0.9968
32	661	BTC	0.3688
32	721	BTC	0.9712
32	781	BTC	0.0113
32	841	BTC	-0.9993
32	901	BTC	0.9818
32	961	BTC	0.0982
32	1021	BTC	0.9682
32	1081	BTC	-0.0481
32	1141	BTC	-0.6705
32	61	BTC	0.4108
32	1201	BTC	0.5994
32	1261	BTC	0.5267
32	1321	BTC	0.2268
32	241	BTC	0.4723
32	361	BTC	-0.5574
32	421	BTC	0.1131
32	481	BTC	0.0550
32	541	BTC	0.6124
33	1	BTC	0.2488
33	61	BTC	-0.6808
33	121	BTC	-0.5859
33	181	BTC	-0.6705
33	301	BTC	-0.9997
33	361	BTC	-0.6705
33	421	BTC	0.9477
33	541	BTC	-0.3371
35	721	BTC	0.5046
35	781	BTC	-0.0010
35	841	BTC	0.9682
35	901	BTC	0.4199
35	961	BTC	0.9985
35	1021	BTC	0.9985
35	1081	BTC	0.2312
35	1201	BTC	0.9628
35	1261	BTC	0.9970
35	1321	BTC	0.0082
35	1381	BTC	0.5994
36	1	BTC	0.9325
36	601	BTC	0.9682
36	721	BTC	-0.0011
36	781	BTC	0.7430
36	841	BTC	0.9781
36	1201	BTC	0.8934
36	1261	BTC	0.9682
36	1321	BTC	0.7964
36	1381	BTC	0.2047
36	241	BTC	0.9001
36	301	BTC	-0.7650
36	481	BTC	0.0710
36	541	BTC	-0.0339
37	1	BTC	0.9325
37	601	BTC	0.9985
37	721	BTC	0.3876
37	781	BTC	0.0086
37	841	BTC	0.0377
37	901	BTC	0.0448
37	961	BTC	0.9957
37	1021	BTC	0.4098
37	1081	BTC	0.3873
37	1141	BTC	0.9682
37	1201	BTC	0.6369
37	1261	BTC	0.9758
37	1321	BTC	0.9758
37	1381	BTC	0.7096
37	121	BTC	0.9970
37	181	BTC	-0.8308
37	241	BTC	0.9853
37	361	BTC	0.6166
37	541	BTC	0.9549
38	601	BTC	0.9918
38	661	BTC	0.9682
38	721	BTC	0.7906
38	841	BTC	0.4000
38	901	BTC	0.4178
38	961	BTC	0.3873
38	121	BTC	0.5719
38	301	BTC	-0.0027
38	481	BTC	-0.5423
38	541	BTC	0.3669
39	661	BTC	-0.2719
39	721	BTC	0.9819
39	781	BTC	0.9985
39	841	BTC	0.4412
39	901	BTC	0.9990
39	961	BTC	0.9985
39	1021	BTC	0.9990
39	1081	BTC	0.3082
39	1141	BTC	0.9682
39	1201	BTC	0.9984
39	1261	BTC	0.6486
39	301	BTC	0.2273
39	361	BTC	0.9719
39	421	BTC	0.9823
39	541	BTC	0.7506
40	1	BTC	0.9826
40	661	BTC	0.9984
40	721	BTC	0.9818
40	781	BTC	0.9682
40	841	BTC	0.9682
40	901	BTC	0.9682
40	961	BTC	0.9995
40	1021	BTC	-0.0784
40	1081	BTC	0.1153
40	1141	BTC	0.9081
40	1201	BTC	0.3280
40	1261	BTC	0.0000
40	1321	BTC	0.2586
40	1381	BTC	0.4879
40	361	BTC	0.9792
40	541	BTC	0.9732
41	121	BTC	-0.9682
41	181	BTC	0.4049
41	301	BTC	0.0136
41	361	BTC	0.9985
41	421	BTC	0.9818
25	601	BTC	0.9766
25	721	BTC	0.9818
25	781	BTC	0.7717
25	841	BTC	-0.8126
25	901	BTC	0.9682
25	961	BTC	0.9818
25	1021	BTC	0.6808
25	1141	BTC	0.8862
25	1201	BTC	0.9705
25	1261	BTC	-0.5859
25	1321	BTC	0.9986
25	121	BTC	-0.5994
25	361	BTC	0.9840
25	481	BTC	0.9840
26	1141	BTC	-0.1484
26	1201	BTC	-0.9993
26	1261	BTC	-0.7269
26	1321	BTC	-0.0643
26	1381	BTC	0.9468
26	121	BTC	-0.9970
26	361	BTC	0.9840
26	421	BTC	-0.9944
27	601	BTC	-0.6597
27	661	BTC	-0.9978
27	721	BTC	-0.0160
27	781	BTC	-0.5574
27	841	BTC	-0.3362
27	901	BTC	0.0737
27	961	BTC	-0.0175
27	1021	BTC	-0.0144
27	1081	BTC	0.9834
27	1141	BTC	0.9771
27	1201	BTC	0.4062
27	1261	BTC	-0.7506
27	1381	BTC	0.4108
27	241	BTC	-0.0150
27	301	BTC	-0.5574
27	481	BTC	-0.5267
27	541	BTC	-0.5859
28	601	BTC	0.0534
28	661	BTC	0.9726
28	721	BTC	0.6434
28	781	BTC	0.2559
28	841	BTC	0.4191
28	901	BTC	0.3034
28	961	BTC	0.3082
28	1021	BTC	0.9842
28	1081	BTC	-0.0439
28	1141	BTC	0.0000
28	1201	BTC	0.3074
28	1261	BTC	0.4561
28	1321	BTC	0.3177
28	1381	BTC	0.4547
28	241	BTC	0.4397
28	301	BTC	0.8934
28	361	BTC	-0.5574
28	421	BTC	0.7906
28	481	BTC	0.5267
29	1	BTC	0.3721
29	601	BTC	-0.0008
29	661	BTC	0.4266
29	721	BTC	0.3280
29	781	BTC	0.4266
29	841	BTC	0.3280
29	901	BTC	0.0015
29	961	BTC	0.0015
29	1021	BTC	-0.0009
29	1081	BTC	-0.0008
29	1141	BTC	0.0017
29	61	BTC	0.0000
29	1201	BTC	0.0015
29	1261	BTC	0.0078
29	1321	BTC	0.9985
29	1381	BTC	0.2268
29	121	BTC	-0.2064
29	181	BTC	0.0000
29	241	BTC	0.9970
29	301	BTC	0.0015
29	361	BTC	0.9325
29	421	BTC	0.0015
29	481	BTC	-0.0008
29	541	BTC	0.0015
30	1	BTC	-0.1998
30	601	BTC	0.3433
30	661	BTC	0.3115
30	721	BTC	0.0675
30	781	BTC	0.6249
30	961	BTC	-0.0862
30	1021	BTC	0.9882
30	1081	BTC	-0.7906
30	1141	BTC	-0.0212
30	61	BTC	0.5719
30	1261	BTC	0.3499
30	121	BTC	0.9682
30	241	BTC	-0.0007
30	301	BTC	-0.0007
30	361	BTC	-0.5574
30	421	BTC	-0.5574
31	601	BTC	-0.9993
31	661	BTC	-0.4512
31	721	BTC	0.0064
31	781	BTC	-0.2726
31	841	BTC	0.6124
31	901	BTC	0.3246
31	961	BTC	0.7906
31	1021	BTC	-0.2407
31	1081	BTC	-0.9993
31	1141	BTC	0.4331
31	61	BTC	0.9970
31	1201	BTC	-0.9325
31	181	BTC	0.7906
31	301	BTC	0.9970
31	541	BTC	0.5574
32	601	BTC	-0.9968
32	661	BTC	0.3688
32	721	BTC	0.9712
32	781	BTC	0.0113
32	841	BTC	-0.9993
32	901	BTC	0.9818
32	961	BTC	0.0982
32	1021	BTC	0.9682
32	1081	BTC	-0.0481
32	1141	BTC	-0.6705
32	61	BTC	0.4108
32	1201	BTC	0.5994
32	1261	BTC	0.5267
32	1321	BTC	0.2268
32	241	BTC	0.4723
32	361	BTC	-0.5574
32	421	BTC	0.1131
32	481	BTC	0.0550
32	541	BTC	0.6124
33	1	BTC	0.2488
33	61	BTC	-0.6808
33	121	BTC	-0.5859
33	181	BTC	-0.6705
33	301	BTC	-0.9997
33	361	BTC	-0.6705
33	421	BTC	0.9477
33	541	BTC	-0.3371
35	721	BTC	0.5046
35	781	BTC	-0.0010
35	841	BTC	0.9682
35	901	BTC	0.4199
35	961	BTC	0.9985
35	1021	BTC	0.9985
35	1081	BTC	0.2312
35	1201	BTC	0.9628
35	1261	BTC	0.9970
35	1321	BTC	0.0082
35	1381	BTC	0.5994
36	1	BTC	0.9325
36	601	BTC	0.9682
36	721	BTC	-0.0011
36	781	BTC	0.7430
36	841	BTC	0.9781
36	1201	BTC	0.8934
36	1261	BTC	0.9682
36	1321	BTC	0.7964
36	1381	BTC	0.2047
36	241	BTC	0.9001
36	301	BTC	-0.7650
36	481	BTC	0.0710
36	541	BTC	-0.0339
37	1	BTC	0.9325
37	601	BTC	0.9985
37	721	BTC	0.3876
37	781	BTC	0.0086
37	841	BTC	0.0377
37	901	BTC	0.0448
37	961	BTC	0.9957
37	1021	BTC	0.4098
37	1081	BTC	0.3873
37	1141	BTC	0.9682
37	1201	BTC	0.6369
37	1261	BTC	0.9758
37	1321	BTC	0.9758
37	1381	BTC	0.7096
37	121	BTC	0.9970
37	181	BTC	-0.8308
37	241	BTC	0.9853
37	361	BTC	0.6166
37	541	BTC	0.9549
38	601	BTC	0.9918
38	661	BTC	0.9682
38	721	BTC	0.7906
38	841	BTC	0.4000
38	901	BTC	0.4178
38	961	BTC	0.3873
38	121	BTC	0.5719
38	301	BTC	-0.0027
38	481	BTC	-0.5423
38	541	BTC	0.3669
39	661	BTC	-0.2719
39	721	BTC	0.9819
39	781	BTC	0.9985
39	841	BTC	0.4412
39	901	BTC	0.9990
39	961	BTC	0.9985
39	1021	BTC	0.9990
39	1081	BTC	0.3082
39	1141	BTC	0.9682
39	1201	BTC	0.9984
39	1261	BTC	0.6486
39	301	BTC	0.2273
39	361	BTC	0.9719
39	421	BTC	0.9823
39	541	BTC	0.7506
40	1	BTC	0.9826
40	661	BTC	0.9984
40	721	BTC	0.9818
40	781	BTC	0.9682
40	841	BTC	0.9682
40	901	BTC	0.9682
40	961	BTC	0.9995
40	1021	BTC	-0.0784
40	1081	BTC	0.1153
40	1141	BTC	0.9081
40	1201	BTC	0.3280
40	1261	BTC	0.0000
40	1321	BTC	0.2586
40	1381	BTC	0.4879
40	361	BTC	0.9792
40	541	BTC	0.9732
41	121	BTC	-0.9682
41	181	BTC	0.4049
41	301	BTC	0.0136
41	361	BTC	0.9985
41	421	BTC	0.9818
25	601	BTC	0.9766
25	721	BTC	0.9818
25	781	BTC	0.7717
25	841	BTC	-0.8126
25	901	BTC	0.9682
25	961	BTC	0.9818
25	1021	BTC	0.6808
25	1141	BTC	0.8862
25	1201	BTC	0.9705
25	1261	BTC	-0.5859
25	1321	BTC	0.9986
25	121	BTC	-0.5994
25	361	BTC	0.9840
25	481	BTC	0.9840
26	1141	BTC	-0.1484
26	1201	BTC	-0.9993
26	1261	BTC	-0.7269
26	1321	BTC	-0.0643
26	1381	BTC	0.9468
26	121	BTC	-0.9970
26	361	BTC	0.9840
26	421	BTC	-0.9944
27	601	BTC	-0.6597
27	661	BTC	-0.9978
27	721	BTC	-0.0160
27	781	BTC	-0.5574
27	841	BTC	-0.3362
27	901	BTC	0.0737
27	961	BTC	-0.0175
27	1021	BTC	-0.0144
27	1081	BTC	0.9834
27	1141	BTC	0.9771
27	1201	BTC	0.4062
27	1261	BTC	-0.7506
27	1381	BTC	0.4108
27	241	BTC	-0.0150
27	301	BTC	-0.5574
27	481	BTC	-0.5267
27	541	BTC	-0.5859
28	601	BTC	0.0534
28	661	BTC	0.9726
28	721	BTC	0.6434
28	781	BTC	0.2559
28	841	BTC	0.4191
28	901	BTC	0.3034
28	961	BTC	0.3082
28	1021	BTC	0.9842
28	1081	BTC	-0.0439
28	1141	BTC	0.0000
28	1201	BTC	0.3074
28	1261	BTC	0.4561
28	1321	BTC	0.3177
28	1381	BTC	0.4547
28	241	BTC	0.4397
28	301	BTC	0.8934
28	361	BTC	-0.5574
28	421	BTC	0.7906
28	481	BTC	0.5267
29	1	BTC	0.3721
29	601	BTC	-0.0008
29	661	BTC	0.4266
29	721	BTC	0.3280
29	781	BTC	0.4266
29	841	BTC	0.3280
29	901	BTC	0.0015
29	961	BTC	0.0015
29	1021	BTC	-0.0009
29	1081	BTC	-0.0008
29	1141	BTC	0.0017
29	61	BTC	0.0000
29	1201	BTC	0.0015
29	1261	BTC	0.0078
29	1321	BTC	0.9985
29	1381	BTC	0.2268
29	121	BTC	-0.2064
29	181	BTC	0.0000
29	241	BTC	0.9970
29	301	BTC	0.0015
29	361	BTC	0.9325
29	421	BTC	0.0015
29	481	BTC	-0.0008
29	541	BTC	0.0015
30	1	BTC	-0.1998
30	601	BTC	0.3433
30	661	BTC	0.3115
30	721	BTC	0.0675
30	781	BTC	0.6249
30	961	BTC	-0.0862
30	1021	BTC	0.9882
30	1081	BTC	-0.7906
30	1141	BTC	-0.0212
30	61	BTC	0.5719
30	1261	BTC	0.3499
30	121	BTC	0.9682
30	241	BTC	-0.0007
30	301	BTC	-0.0007
30	361	BTC	-0.5574
30	421	BTC	-0.5574
31	601	BTC	-0.9993
31	661	BTC	-0.4512
31	721	BTC	0.0064
31	781	BTC	-0.2726
31	841	BTC	0.6124
31	901	BTC	0.3246
31	961	BTC	0.7906
31	1021	BTC	-0.2407
31	1081	BTC	-0.9993
31	1141	BTC	0.4331
31	61	BTC	0.9970
31	1201	BTC	-0.9325
31	181	BTC	0.7906
31	301	BTC	0.9970
31	541	BTC	0.5574
32	601	BTC	-0.9968
32	661	BTC	0.3688
32	721	BTC	0.9712
32	781	BTC	0.0113
32	841	BTC	-0.9993
32	901	BTC	0.9818
32	961	BTC	0.0982
32	1021	BTC	0.9682
32	1081	BTC	-0.0481
32	1141	BTC	-0.6705
32	61	BTC	0.4108
32	1201	BTC	0.5994
32	1261	BTC	0.5267
32	1321	BTC	0.2268
32	241	BTC	0.4723
32	361	BTC	-0.5574
32	421	BTC	0.1131
32	481	BTC	0.0550
32	541	BTC	0.6124
33	1	BTC	0.2488
33	61	BTC	-0.6808
33	121	BTC	-0.5859
33	181	BTC	-0.6705
33	301	BTC	-0.9997
33	361	BTC	-0.6705
33	421	BTC	0.9477
33	541	BTC	-0.3371
35	721	BTC	0.5046
35	781	BTC	-0.0010
35	841	BTC	0.9682
35	901	BTC	0.4199
35	961	BTC	0.9985
35	1021	BTC	0.9985
35	1081	BTC	0.2312
35	1201	BTC	0.9628
35	1261	BTC	0.9970
35	1321	BTC	0.0082
35	1381	BTC	0.5994
36	1	BTC	0.9325
36	601	BTC	0.9682
36	721	BTC	-0.0011
36	781	BTC	0.7430
36	841	BTC	0.9781
36	1201	BTC	0.8934
36	1261	BTC	0.9682
36	1321	BTC	0.7964
36	1381	BTC	0.2047
36	241	BTC	0.9001
36	301	BTC	-0.7650
36	481	BTC	0.0710
36	541	BTC	-0.0339
37	1	BTC	0.9325
37	601	BTC	0.9985
37	721	BTC	0.3876
37	781	BTC	0.0086
37	841	BTC	0.0377
37	901	BTC	0.0448
37	961	BTC	0.9957
37	1021	BTC	0.4098
37	1081	BTC	0.3873
37	1141	BTC	0.9682
37	1201	BTC	0.6369
37	1261	BTC	0.9758
37	1321	BTC	0.9758
37	1381	BTC	0.7096
37	121	BTC	0.9970
37	181	BTC	-0.8308
37	241	BTC	0.9853
37	361	BTC	0.6166
37	541	BTC	0.9549
38	601	BTC	0.9918
38	661	BTC	0.9682
38	721	BTC	0.7906
38	841	BTC	0.4000
38	901	BTC	0.4178
38	961	BTC	0.3873
38	121	BTC	0.5719
38	301	BTC	-0.0027
38	481	BTC	-0.5423
38	541	BTC	0.3669
39	661	BTC	-0.2719
39	721	BTC	0.9819
39	781	BTC	0.9985
39	841	BTC	0.4412
39	901	BTC	0.9990
39	961	BTC	0.9985
39	1021	BTC	0.9990
39	1081	BTC	0.3082
39	1141	BTC	0.9682
39	1201	BTC	0.9984
39	1261	BTC	0.6486
39	301	BTC	0.2273
39	361	BTC	0.9719
39	421	BTC	0.9823
39	541	BTC	0.7506
40	1	BTC	0.9826
40	661	BTC	0.9984
40	721	BTC	0.9818
40	781	BTC	0.9682
40	841	BTC	0.9682
40	901	BTC	0.9682
40	961	BTC	0.9995
40	1021	BTC	-0.0784
40	1081	BTC	0.1153
40	1141	BTC	0.9081
40	1201	BTC	0.3280
40	1261	BTC	0.0000
40	1321	BTC	0.2586
40	1381	BTC	0.4879
40	361	BTC	0.9792
40	541	BTC	0.9732
41	121	BTC	-0.9682
41	181	BTC	0.4049
41	301	BTC	0.0136
41	361	BTC	0.9985
41	421	BTC	0.9818
25	601	BTC	0.9766
25	721	BTC	0.9818
25	781	BTC	0.7717
25	841	BTC	-0.8126
25	901	BTC	0.9682
25	961	BTC	0.9818
25	1021	BTC	0.6808
25	1141	BTC	0.8862
25	1201	BTC	0.9705
25	1261	BTC	-0.5859
25	1321	BTC	0.9986
25	121	BTC	-0.5994
25	361	BTC	0.9840
25	481	BTC	0.9840
26	1141	BTC	-0.1484
26	1201	BTC	-0.9993
26	1261	BTC	-0.7269
26	1321	BTC	-0.0643
26	1381	BTC	0.9468
26	121	BTC	-0.9970
26	361	BTC	0.9840
26	421	BTC	-0.9944
27	601	BTC	-0.6597
27	661	BTC	-0.9978
27	721	BTC	-0.0160
27	781	BTC	-0.5574
27	841	BTC	-0.3362
27	901	BTC	0.0737
27	961	BTC	-0.0175
27	1021	BTC	-0.0144
27	1081	BTC	0.9834
27	1141	BTC	0.9771
27	1201	BTC	0.4062
27	1261	BTC	-0.7506
27	1381	BTC	0.4108
27	241	BTC	-0.0150
27	301	BTC	-0.5574
27	481	BTC	-0.5267
27	541	BTC	-0.5859
28	601	BTC	0.0534
28	661	BTC	0.9726
28	721	BTC	0.6434
28	781	BTC	0.2559
28	841	BTC	0.4191
28	901	BTC	0.3034
28	961	BTC	0.3082
28	1021	BTC	0.9842
28	1081	BTC	-0.0439
28	1141	BTC	0.0000
28	1201	BTC	0.3074
28	1261	BTC	0.4561
28	1321	BTC	0.3177
28	1381	BTC	0.4547
28	241	BTC	0.4397
28	301	BTC	0.8934
28	361	BTC	-0.5574
28	421	BTC	0.7906
28	481	BTC	0.5267
29	1	BTC	0.3721
29	601	BTC	-0.0008
29	661	BTC	0.4266
29	721	BTC	0.3280
29	781	BTC	0.4266
29	841	BTC	0.3280
29	901	BTC	0.0015
29	961	BTC	0.0015
29	1021	BTC	-0.0009
29	1081	BTC	-0.0008
29	1141	BTC	0.0017
29	61	BTC	0.0000
29	1201	BTC	0.0015
29	1261	BTC	0.0078
29	1321	BTC	0.9985
29	1381	BTC	0.2268
29	121	BTC	-0.2064
29	181	BTC	0.0000
29	241	BTC	0.9970
29	301	BTC	0.0015
29	361	BTC	0.9325
29	421	BTC	0.0015
29	481	BTC	-0.0008
29	541	BTC	0.0015
30	1	BTC	-0.1998
30	601	BTC	0.3433
30	661	BTC	0.3115
30	721	BTC	0.0675
30	781	BTC	0.6249
30	961	BTC	-0.0862
30	1021	BTC	0.9882
30	1081	BTC	-0.7906
30	1141	BTC	-0.0212
30	61	BTC	0.5719
30	1261	BTC	0.3499
30	121	BTC	0.9682
30	241	BTC	-0.0007
30	301	BTC	-0.0007
30	361	BTC	-0.5574
30	421	BTC	-0.5574
31	601	BTC	-0.9993
31	661	BTC	-0.4512
31	721	BTC	0.0064
31	781	BTC	-0.2726
31	841	BTC	0.6124
31	901	BTC	0.3246
31	961	BTC	0.7906
31	1021	BTC	-0.2407
31	1081	BTC	-0.9993
31	1141	BTC	0.4331
31	61	BTC	0.9970
31	1201	BTC	-0.9325
31	181	BTC	0.7906
31	301	BTC	0.9970
31	541	BTC	0.5574
32	601	BTC	-0.9968
32	661	BTC	0.3688
32	721	BTC	0.9712
32	781	BTC	0.0113
32	841	BTC	-0.9993
32	901	BTC	0.9818
32	961	BTC	0.0982
32	1021	BTC	0.9682
32	1081	BTC	-0.0481
32	1141	BTC	-0.6705
32	61	BTC	0.4108
32	1201	BTC	0.5994
32	1261	BTC	0.5267
32	1321	BTC	0.2268
32	241	BTC	0.4723
32	361	BTC	-0.5574
32	421	BTC	0.1131
32	481	BTC	0.0550
32	541	BTC	0.6124
33	1	BTC	0.2488
33	61	BTC	-0.6808
33	121	BTC	-0.5859
33	181	BTC	-0.6705
33	301	BTC	-0.9997
33	361	BTC	-0.6705
33	421	BTC	0.9477
33	541	BTC	-0.3371
35	721	BTC	0.5046
35	781	BTC	-0.0010
35	841	BTC	0.9682
35	901	BTC	0.4199
35	961	BTC	0.9985
35	1021	BTC	0.9985
35	1081	BTC	0.2312
35	1201	BTC	0.9628
35	1261	BTC	0.9970
35	1321	BTC	0.0082
35	1381	BTC	0.5994
36	1	BTC	0.9325
36	601	BTC	0.9682
36	721	BTC	-0.0011
36	781	BTC	0.7430
36	841	BTC	0.9781
36	1201	BTC	0.8934
36	1261	BTC	0.9682
36	1321	BTC	0.7964
36	1381	BTC	0.2047
36	241	BTC	0.9001
36	301	BTC	-0.7650
36	481	BTC	0.0710
36	541	BTC	-0.0339
37	1	BTC	0.9325
37	601	BTC	0.9985
37	721	BTC	0.3876
37	781	BTC	0.0086
37	841	BTC	0.0377
37	901	BTC	0.0448
37	961	BTC	0.9957
37	1021	BTC	0.4098
37	1081	BTC	0.3873
37	1141	BTC	0.9682
37	1201	BTC	0.6369
37	1261	BTC	0.9758
37	1321	BTC	0.9758
37	1381	BTC	0.7096
37	121	BTC	0.9970
37	181	BTC	-0.8308
37	241	BTC	0.9853
37	361	BTC	0.6166
37	541	BTC	0.9549
38	601	BTC	0.9918
38	661	BTC	0.9682
38	721	BTC	0.7906
38	841	BTC	0.4000
38	901	BTC	0.4178
38	961	BTC	0.3873
38	121	BTC	0.5719
38	301	BTC	-0.0027
38	481	BTC	-0.5423
38	541	BTC	0.3669
39	661	BTC	-0.2719
39	721	BTC	0.9819
39	781	BTC	0.9985
39	841	BTC	0.4412
39	901	BTC	0.9990
39	961	BTC	0.9985
39	1021	BTC	0.9990
39	1081	BTC	0.3082
39	1141	BTC	0.9682
39	1201	BTC	0.9984
39	1261	BTC	0.6486
39	301	BTC	0.2273
39	361	BTC	0.9719
39	421	BTC	0.9823
39	541	BTC	0.7506
40	1	BTC	0.9826
40	661	BTC	0.9984
40	721	BTC	0.9818
40	781	BTC	0.9682
40	841	BTC	0.9682
40	901	BTC	0.9682
40	961	BTC	0.9995
40	1021	BTC	-0.0784
40	1081	BTC	0.1153
40	1141	BTC	0.9081
40	1201	BTC	0.3280
40	1261	BTC	0.0000
40	1321	BTC	0.2586
40	1381	BTC	0.4879
40	361	BTC	0.9792
40	541	BTC	0.9732
41	121	BTC	-0.9682
41	181	BTC	0.4049
41	301	BTC	0.0136
41	361	BTC	0.9985
41	421	BTC	0.9818
25	601	BTC	0.9766
25	721	BTC	0.9818
25	781	BTC	0.7717
25	841	BTC	-0.8126
25	901	BTC	0.9682
25	961	BTC	0.9818
25	1021	BTC	0.6808
25	1141	BTC	0.8862
25	1201	BTC	0.9705
25	1261	BTC	-0.5859
25	1321	BTC	0.9986
25	121	BTC	-0.5994
25	361	BTC	0.9840
25	481	BTC	0.9840
26	1141	BTC	-0.1484
26	1201	BTC	-0.9993
26	1261	BTC	-0.7269
26	1321	BTC	-0.0643
26	1381	BTC	0.9468
26	121	BTC	-0.9970
26	361	BTC	0.9840
26	421	BTC	-0.9944
27	601	BTC	-0.6597
27	661	BTC	-0.9978
27	721	BTC	-0.0160
27	781	BTC	-0.5574
27	841	BTC	-0.3362
27	901	BTC	0.0737
27	961	BTC	-0.0175
27	1021	BTC	-0.0144
27	1081	BTC	0.9834
27	1141	BTC	0.9771
27	1201	BTC	0.4062
27	1261	BTC	-0.7506
27	1381	BTC	0.4108
27	241	BTC	-0.0150
27	301	BTC	-0.5574
27	481	BTC	-0.5267
27	541	BTC	-0.5859
28	601	BTC	0.0534
28	661	BTC	0.9726
28	721	BTC	0.6434
28	781	BTC	0.2559
28	841	BTC	0.4191
28	901	BTC	0.3034
28	961	BTC	0.3082
28	1021	BTC	0.9842
28	1081	BTC	-0.0439
28	1141	BTC	0.0000
28	1201	BTC	0.3074
28	1261	BTC	0.4561
28	1321	BTC	0.3177
28	1381	BTC	0.4547
28	241	BTC	0.4397
28	301	BTC	0.8934
28	361	BTC	-0.5574
28	421	BTC	0.7906
28	481	BTC	0.5267
29	1	BTC	0.3721
29	601	BTC	-0.0008
29	661	BTC	0.4266
29	721	BTC	0.3280
29	781	BTC	0.4266
29	841	BTC	0.3280
29	901	BTC	0.0015
29	961	BTC	0.0015
29	1021	BTC	-0.0009
29	1081	BTC	-0.0008
29	1141	BTC	0.0017
29	61	BTC	0.0000
29	1201	BTC	0.0015
29	1261	BTC	0.0078
29	1321	BTC	0.9985
29	1381	BTC	0.2268
29	121	BTC	-0.2064
29	181	BTC	0.0000
29	241	BTC	0.9970
29	301	BTC	0.0015
29	361	BTC	0.9325
29	421	BTC	0.0015
29	481	BTC	-0.0008
29	541	BTC	0.0015
30	1	BTC	-0.1998
30	601	BTC	0.3433
30	661	BTC	0.3115
30	721	BTC	0.0675
30	781	BTC	0.6249
30	961	BTC	-0.0862
30	1021	BTC	0.9882
30	1081	BTC	-0.7906
30	1141	BTC	-0.0212
30	61	BTC	0.5719
30	1261	BTC	0.3499
30	121	BTC	0.9682
30	241	BTC	-0.0007
30	301	BTC	-0.0007
30	361	BTC	-0.5574
30	421	BTC	-0.5574
31	601	BTC	-0.9993
31	661	BTC	-0.4512
31	721	BTC	0.0064
31	781	BTC	-0.2726
31	841	BTC	0.6124
31	901	BTC	0.3246
31	961	BTC	0.7906
31	1021	BTC	-0.2407
31	1081	BTC	-0.9993
31	1141	BTC	0.4331
31	61	BTC	0.9970
31	1201	BTC	-0.9325
31	181	BTC	0.7906
31	301	BTC	0.9970
31	541	BTC	0.5574
32	601	BTC	-0.9968
32	661	BTC	0.3688
32	721	BTC	0.9712
32	781	BTC	0.0113
32	841	BTC	-0.9993
32	901	BTC	0.9818
32	961	BTC	0.0982
32	1021	BTC	0.9682
32	1081	BTC	-0.0481
32	1141	BTC	-0.6705
32	61	BTC	0.4108
32	1201	BTC	0.5994
32	1261	BTC	0.5267
32	1321	BTC	0.2268
32	241	BTC	0.4723
32	361	BTC	-0.5574
32	421	BTC	0.1131
32	481	BTC	0.0550
32	541	BTC	0.6124
33	1	BTC	0.2488
33	61	BTC	-0.6808
33	121	BTC	-0.5859
33	181	BTC	-0.6705
33	301	BTC	-0.9997
33	361	BTC	-0.6705
33	421	BTC	0.9477
33	541	BTC	-0.3371
35	721	BTC	0.5046
35	781	BTC	-0.0010
35	841	BTC	0.9682
35	901	BTC	0.4199
35	961	BTC	0.9985
35	1021	BTC	0.9985
35	1081	BTC	0.2312
35	1201	BTC	0.9628
35	1261	BTC	0.9970
35	1321	BTC	0.0082
35	1381	BTC	0.5994
36	1	BTC	0.9325
36	601	BTC	0.9682
36	721	BTC	-0.0011
36	781	BTC	0.7430
36	841	BTC	0.9781
36	1201	BTC	0.8934
36	1261	BTC	0.9682
36	1321	BTC	0.7964
36	1381	BTC	0.2047
36	241	BTC	0.9001
36	301	BTC	-0.7650
36	481	BTC	0.0710
36	541	BTC	-0.0339
37	1	BTC	0.9325
37	601	BTC	0.9985
37	721	BTC	0.3876
37	781	BTC	0.0086
37	841	BTC	0.0377
37	901	BTC	0.0448
37	961	BTC	0.9957
37	1021	BTC	0.4098
37	1081	BTC	0.3873
37	1141	BTC	0.9682
37	1201	BTC	0.6369
37	1261	BTC	0.9758
37	1321	BTC	0.9758
37	1381	BTC	0.7096
37	121	BTC	0.9970
37	181	BTC	-0.8308
37	241	BTC	0.9853
37	361	BTC	0.6166
37	541	BTC	0.9549
38	601	BTC	0.9918
38	661	BTC	0.9682
38	721	BTC	0.7906
38	841	BTC	0.4000
38	901	BTC	0.4178
38	961	BTC	0.3873
38	121	BTC	0.5719
38	301	BTC	-0.0027
38	481	BTC	-0.5423
38	541	BTC	0.3669
39	661	BTC	-0.2719
39	721	BTC	0.9819
39	781	BTC	0.9985
39	841	BTC	0.4412
39	901	BTC	0.9990
39	961	BTC	0.9985
39	1021	BTC	0.9990
39	1081	BTC	0.3082
39	1141	BTC	0.9682
39	1201	BTC	0.9984
39	1261	BTC	0.6486
39	301	BTC	0.2273
39	361	BTC	0.9719
39	421	BTC	0.9823
39	541	BTC	0.7506
40	1	BTC	0.9826
40	661	BTC	0.9984
40	721	BTC	0.9818
40	781	BTC	0.9682
40	841	BTC	0.9682
40	901	BTC	0.9682
40	961	BTC	0.9995
40	1021	BTC	-0.0784
40	1081	BTC	0.1153
40	1141	BTC	0.9081
40	1201	BTC	0.3280
40	1261	BTC	0.0000
40	1321	BTC	0.2586
40	1381	BTC	0.4879
40	361	BTC	0.9792
40	541	BTC	0.9732
41	121	BTC	-0.9682
41	181	BTC	0.4049
41	301	BTC	0.0136
41	361	BTC	0.9985
41	421	BTC	0.9818
25	601	BTC	0.9766
25	721	BTC	0.9818
25	781	BTC	0.7717
25	841	BTC	-0.8126
25	901	BTC	0.9682
25	961	BTC	0.9818
25	1021	BTC	0.6808
25	1141	BTC	0.8862
25	1201	BTC	0.9705
25	1261	BTC	-0.5859
25	1321	BTC	0.9986
25	121	BTC	-0.5994
25	361	BTC	0.9840
25	481	BTC	0.9840
26	1141	BTC	-0.1484
26	1201	BTC	-0.9993
26	1261	BTC	-0.7269
26	1321	BTC	-0.0643
26	1381	BTC	0.9468
26	121	BTC	-0.9970
26	361	BTC	0.9840
26	421	BTC	-0.9944
27	601	BTC	-0.6597
27	661	BTC	-0.9978
27	721	BTC	-0.0160
27	781	BTC	-0.5574
27	841	BTC	-0.3362
27	901	BTC	0.0737
27	961	BTC	-0.0175
27	1021	BTC	-0.0144
27	1081	BTC	0.9834
27	1141	BTC	0.9771
27	1201	BTC	0.4062
27	1261	BTC	-0.7506
27	1381	BTC	0.4108
27	241	BTC	-0.0150
27	301	BTC	-0.5574
27	481	BTC	-0.5267
27	541	BTC	-0.5859
28	601	BTC	0.0534
28	661	BTC	0.9726
28	721	BTC	0.6434
28	781	BTC	0.2559
28	841	BTC	0.4191
28	901	BTC	0.3034
28	961	BTC	0.3082
28	1021	BTC	0.9842
28	1081	BTC	-0.0439
28	1141	BTC	0.0000
28	1201	BTC	0.3074
28	1261	BTC	0.4561
28	1321	BTC	0.3177
28	1381	BTC	0.4547
28	241	BTC	0.4397
28	301	BTC	0.8934
28	361	BTC	-0.5574
28	421	BTC	0.7906
28	481	BTC	0.5267
29	1	BTC	0.3721
29	601	BTC	-0.0008
29	661	BTC	0.4266
29	721	BTC	0.3280
29	781	BTC	0.4266
29	841	BTC	0.3280
29	901	BTC	0.0015
29	961	BTC	0.0015
29	1021	BTC	-0.0009
29	1081	BTC	-0.0008
29	1141	BTC	0.0017
29	61	BTC	0.0000
29	1201	BTC	0.0015
29	1261	BTC	0.0078
29	1321	BTC	0.9985
29	1381	BTC	0.2268
29	121	BTC	-0.2064
29	181	BTC	0.0000
29	241	BTC	0.9970
29	301	BTC	0.0015
29	361	BTC	0.9325
29	421	BTC	0.0015
29	481	BTC	-0.0008
29	541	BTC	0.0015
30	1	BTC	-0.1998
30	601	BTC	0.3433
30	661	BTC	0.3115
30	721	BTC	0.0675
30	781	BTC	0.6249
30	961	BTC	-0.0862
30	1021	BTC	0.9882
30	1081	BTC	-0.7906
30	1141	BTC	-0.0212
30	61	BTC	0.5719
30	1261	BTC	0.3499
30	121	BTC	0.9682
30	241	BTC	-0.0007
30	301	BTC	-0.0007
30	361	BTC	-0.5574
30	421	BTC	-0.5574
31	601	BTC	-0.9993
31	661	BTC	-0.4512
31	721	BTC	0.0064
31	781	BTC	-0.2726
31	841	BTC	0.6124
31	901	BTC	0.3246
31	961	BTC	0.7906
31	1021	BTC	-0.2407
31	1081	BTC	-0.9993
31	1141	BTC	0.4331
31	61	BTC	0.9970
31	1201	BTC	-0.9325
31	181	BTC	0.7906
31	301	BTC	0.9970
31	541	BTC	0.5574
32	601	BTC	-0.9968
32	661	BTC	0.3688
32	721	BTC	0.9712
32	781	BTC	0.0113
32	841	BTC	-0.9993
32	901	BTC	0.9818
32	961	BTC	0.0982
32	1021	BTC	0.9682
32	1081	BTC	-0.0481
32	1141	BTC	-0.6705
32	61	BTC	0.4108
32	1201	BTC	0.5994
32	1261	BTC	0.5267
32	1321	BTC	0.2268
32	241	BTC	0.4723
32	361	BTC	-0.5574
32	421	BTC	0.1131
32	481	BTC	0.0550
32	541	BTC	0.6124
33	1	BTC	0.2488
33	61	BTC	-0.6808
33	121	BTC	-0.5859
33	181	BTC	-0.6705
33	301	BTC	-0.9997
33	361	BTC	-0.6705
33	421	BTC	0.9477
33	541	BTC	-0.3371
35	721	BTC	0.5046
35	781	BTC	-0.0010
35	841	BTC	0.9682
35	901	BTC	0.4199
35	961	BTC	0.9985
35	1021	BTC	0.9985
35	1081	BTC	0.2312
35	1201	BTC	0.9628
35	1261	BTC	0.9970
35	1321	BTC	0.0082
35	1381	BTC	0.5994
36	1	BTC	0.9325
36	601	BTC	0.9682
36	721	BTC	-0.0011
36	781	BTC	0.7430
36	841	BTC	0.9781
36	1201	BTC	0.8934
36	1261	BTC	0.9682
36	1321	BTC	0.7964
36	1381	BTC	0.2047
36	241	BTC	0.9001
36	301	BTC	-0.7650
36	481	BTC	0.0710
36	541	BTC	-0.0339
37	1	BTC	0.9325
37	601	BTC	0.9985
37	721	BTC	0.3876
37	781	BTC	0.0086
37	841	BTC	0.0377
37	901	BTC	0.0448
37	961	BTC	0.9957
37	1021	BTC	0.4098
37	1081	BTC	0.3873
37	1141	BTC	0.9682
37	1201	BTC	0.6369
37	1261	BTC	0.9758
37	1321	BTC	0.9758
37	1381	BTC	0.7096
37	121	BTC	0.9970
37	181	BTC	-0.8308
37	241	BTC	0.9853
37	361	BTC	0.6166
37	541	BTC	0.9549
38	601	BTC	0.9918
38	661	BTC	0.9682
38	721	BTC	0.7906
38	841	BTC	0.4000
38	901	BTC	0.4178
38	961	BTC	0.3873
38	121	BTC	0.5719
38	301	BTC	-0.0027
38	481	BTC	-0.5423
38	541	BTC	0.3669
39	661	BTC	-0.2719
39	721	BTC	0.9819
39	781	BTC	0.9985
39	841	BTC	0.4412
39	901	BTC	0.9990
39	961	BTC	0.9985
39	1021	BTC	0.9990
39	1081	BTC	0.3082
39	1141	BTC	0.9682
39	1201	BTC	0.9984
39	1261	BTC	0.6486
39	301	BTC	0.2273
39	361	BTC	0.9719
39	421	BTC	0.9823
39	541	BTC	0.7506
40	1	BTC	0.9826
40	661	BTC	0.9984
40	721	BTC	0.9818
40	781	BTC	0.9818
40	841	BTC	0.9818
40	901	BTC	0.9995
40	961	BTC	0.3087
40	1021	BTC	0.1306
40	1081	BTC	0.1153
40	1141	BTC	0.1296
40	1201	BTC	0.0303
40	1261	BTC	0.0303
40	1321	BTC	0.0303
40	1381	BTC	0.2889
40	361	BTC	0.9792
40	541	BTC	0.9732
41	1	BTC	0.4879
41	601	BTC	0.7430
41	61	BTC	0.0164
41	121	BTC	-0.0059
41	181	BTC	-0.0059
41	241	BTC	0.0136
41	301	BTC	0.0303
41	361	BTC	0.0303
41	421	BTC	0.9985
41	481	BTC	0.9818
41	541	BTC	0.8934
25	601	BTC	0.9766
25	721	BTC	0.9818
25	781	BTC	0.7717
25	841	BTC	-0.8126
25	901	BTC	0.9682
25	961	BTC	0.9818
25	1021	BTC	0.6808
25	1141	BTC	0.8862
25	1201	BTC	0.9705
25	1261	BTC	-0.5859
25	1321	BTC	0.9986
25	121	BTC	-0.5994
25	361	BTC	0.9840
25	481	BTC	0.9840
26	1141	BTC	-0.1484
26	1201	BTC	-0.9993
26	1261	BTC	-0.7269
26	1321	BTC	-0.0643
26	1381	BTC	0.9468
26	121	BTC	-0.9970
26	361	BTC	0.9840
26	421	BTC	-0.9944
27	601	BTC	-0.6597
27	661	BTC	-0.9978
27	721	BTC	-0.0160
27	781	BTC	-0.5574
27	841	BTC	-0.3362
27	901	BTC	0.0737
27	961	BTC	-0.0175
27	1021	BTC	-0.0144
27	1081	BTC	0.9834
27	1141	BTC	0.9771
27	1201	BTC	0.4062
27	1261	BTC	-0.7506
27	1381	BTC	0.4108
27	241	BTC	-0.0150
27	301	BTC	-0.5574
27	481	BTC	-0.5267
27	541	BTC	-0.5859
28	601	BTC	0.0534
28	661	BTC	0.9726
28	721	BTC	0.6434
28	781	BTC	0.2559
28	841	BTC	0.4191
28	901	BTC	0.3034
28	961	BTC	0.3082
28	1021	BTC	0.9842
28	1081	BTC	-0.0439
28	1141	BTC	0.0000
28	1201	BTC	0.3074
28	1261	BTC	0.4561
28	1321	BTC	0.3177
28	1381	BTC	0.4547
28	241	BTC	0.4397
28	301	BTC	0.8934
28	361	BTC	-0.5574
28	421	BTC	0.7906
28	481	BTC	0.5267
29	1	BTC	0.3721
29	601	BTC	-0.0008
29	661	BTC	0.4266
29	721	BTC	0.3280
29	781	BTC	0.4266
29	841	BTC	0.3280
29	901	BTC	0.0015
29	961	BTC	0.0015
29	1021	BTC	-0.0009
29	1081	BTC	-0.0008
29	1141	BTC	0.0017
29	61	BTC	0.0000
29	1201	BTC	0.0015
29	1261	BTC	0.0078
29	1321	BTC	0.9985
29	1381	BTC	0.2268
29	121	BTC	-0.2064
29	181	BTC	0.0000
29	241	BTC	0.9970
29	301	BTC	0.0015
29	361	BTC	0.9325
29	421	BTC	0.0015
29	481	BTC	-0.0008
29	541	BTC	0.0015
30	1	BTC	-0.1998
30	601	BTC	0.3433
30	661	BTC	0.3115
30	721	BTC	0.0675
30	781	BTC	0.6249
30	961	BTC	-0.0862
30	1021	BTC	0.9882
30	1081	BTC	-0.7906
30	1141	BTC	-0.0212
30	61	BTC	0.5719
30	1261	BTC	0.3499
30	121	BTC	0.9682
30	241	BTC	-0.0007
30	301	BTC	-0.0007
30	361	BTC	-0.5574
30	421	BTC	-0.5574
31	601	BTC	-0.9993
31	661	BTC	-0.4512
31	721	BTC	0.0064
31	781	BTC	-0.2726
31	841	BTC	0.6124
31	901	BTC	0.3246
31	961	BTC	0.7906
31	1021	BTC	-0.2407
31	1081	BTC	-0.9993
31	1141	BTC	0.4331
31	61	BTC	0.9970
31	1201	BTC	-0.9325
31	181	BTC	0.7906
31	301	BTC	0.9970
31	541	BTC	0.5574
32	601	BTC	-0.9968
32	661	BTC	0.3688
32	721	BTC	0.9712
32	781	BTC	0.0113
32	841	BTC	-0.9993
32	901	BTC	0.9818
32	961	BTC	0.0982
32	1021	BTC	0.9682
32	1081	BTC	-0.0481
32	1141	BTC	-0.6705
32	61	BTC	0.4108
32	1201	BTC	0.5994
32	1261	BTC	0.5267
32	1321	BTC	0.2268
32	241	BTC	0.4723
32	361	BTC	-0.5574
32	421	BTC	0.1131
32	481	BTC	0.0550
32	541	BTC	0.6124
33	1	BTC	0.2488
33	61	BTC	-0.6808
33	121	BTC	-0.5859
33	181	BTC	-0.6705
33	301	BTC	-0.9997
33	361	BTC	-0.6705
33	421	BTC	0.9477
33	541	BTC	-0.3371
35	721	BTC	0.5046
35	781	BTC	-0.0010
35	841	BTC	0.9682
35	901	BTC	0.4199
35	961	BTC	0.9985
35	1021	BTC	0.9985
35	1081	BTC	0.2312
35	1201	BTC	0.9628
35	1261	BTC	0.9970
35	1321	BTC	0.0082
35	1381	BTC	0.5994
36	1	BTC	0.9325
36	601	BTC	0.9682
36	721	BTC	-0.0011
36	781	BTC	0.7430
36	841	BTC	0.9781
36	1201	BTC	0.8934
36	1261	BTC	0.9682
36	1321	BTC	0.7964
36	1381	BTC	0.2047
36	241	BTC	0.9001
36	301	BTC	-0.7650
36	481	BTC	0.0710
36	541	BTC	-0.0339
37	1	BTC	0.9325
37	601	BTC	0.9985
37	721	BTC	0.3876
37	781	BTC	0.0086
37	841	BTC	0.0377
37	901	BTC	0.0448
37	961	BTC	0.9957
37	1021	BTC	0.4098
37	1081	BTC	0.3873
37	1141	BTC	0.9682
37	1201	BTC	0.6369
37	1261	BTC	0.9758
37	1321	BTC	0.9758
37	1381	BTC	0.7096
37	121	BTC	0.9970
37	181	BTC	-0.8308
37	241	BTC	0.9853
37	361	BTC	0.6166
37	541	BTC	0.9549
38	601	BTC	0.9918
38	661	BTC	0.9682
38	721	BTC	0.7906
38	841	BTC	0.4000
38	901	BTC	0.4178
38	961	BTC	0.3873
38	121	BTC	0.5719
38	301	BTC	-0.0027
38	481	BTC	-0.5423
38	541	BTC	0.3669
39	661	BTC	-0.2719
39	721	BTC	0.9819
39	781	BTC	0.9985
39	841	BTC	0.4412
39	901	BTC	0.9990
39	961	BTC	0.9985
39	1021	BTC	0.9990
39	1081	BTC	0.3082
39	1141	BTC	0.9682
39	1201	BTC	0.9984
39	1261	BTC	0.6486
39	301	BTC	0.2273
39	361	BTC	0.9719
39	421	BTC	0.9823
39	541	BTC	0.7506
40	1	BTC	0.9826
40	661	BTC	0.9984
40	721	BTC	0.9818
40	781	BTC	0.9818
40	841	BTC	0.9818
40	901	BTC	0.9995
40	961	BTC	0.3087
40	1021	BTC	0.1306
40	1081	BTC	0.1153
40	1141	BTC	0.1296
40	1201	BTC	0.0303
40	1261	BTC	0.0303
40	1321	BTC	0.0303
40	1381	BTC	0.2889
40	361	BTC	0.9792
40	541	BTC	0.9732
41	1	BTC	0.4879
41	601	BTC	0.7430
41	61	BTC	0.0164
41	121	BTC	-0.0059
41	181	BTC	-0.0059
41	241	BTC	0.0136
41	301	BTC	0.0303
41	361	BTC	0.0303
41	421	BTC	0.9985
41	481	BTC	0.9818
41	541	BTC	0.8934
25	601	BTC	0.9766
25	721	BTC	0.9818
25	781	BTC	0.7717
25	841	BTC	-0.8126
25	901	BTC	0.9682
25	961	BTC	0.9818
25	1021	BTC	0.6808
25	1141	BTC	0.8862
25	1201	BTC	0.9705
25	1261	BTC	-0.5859
25	1321	BTC	0.9986
25	121	BTC	-0.5994
25	361	BTC	0.9840
25	481	BTC	0.9840
26	1141	BTC	-0.1484
26	1201	BTC	-0.9993
26	1261	BTC	-0.7269
26	1321	BTC	-0.0643
26	1381	BTC	0.9468
26	121	BTC	-0.9970
26	361	BTC	0.9840
26	421	BTC	-0.9944
27	601	BTC	-0.6597
27	661	BTC	-0.9978
27	721	BTC	-0.0160
27	781	BTC	-0.5574
27	841	BTC	-0.3362
27	901	BTC	0.0737
27	961	BTC	-0.0175
27	1021	BTC	-0.0144
27	1081	BTC	0.9834
27	1141	BTC	0.9771
27	1201	BTC	0.4062
27	1261	BTC	-0.7506
27	1381	BTC	0.4108
27	241	BTC	-0.0150
27	301	BTC	-0.5574
27	481	BTC	-0.5267
27	541	BTC	-0.5859
28	601	BTC	0.0534
28	661	BTC	0.9726
28	721	BTC	0.6434
28	781	BTC	0.2559
28	841	BTC	0.4191
28	901	BTC	0.3034
28	961	BTC	0.3082
28	1021	BTC	0.9842
28	1081	BTC	-0.0439
28	1141	BTC	0.0000
28	1201	BTC	0.3074
28	1261	BTC	0.4561
28	1321	BTC	0.3177
28	1381	BTC	0.4547
28	241	BTC	0.4397
28	301	BTC	0.8934
28	361	BTC	-0.5574
28	421	BTC	0.7906
28	481	BTC	0.5267
29	1	BTC	0.3721
29	601	BTC	-0.0008
29	661	BTC	0.4266
29	721	BTC	0.3280
29	781	BTC	0.4266
29	841	BTC	0.3280
29	901	BTC	0.0015
29	961	BTC	0.0015
29	1021	BTC	-0.0009
29	1081	BTC	-0.0008
29	1141	BTC	0.0017
29	61	BTC	0.0000
29	1201	BTC	0.0015
29	1261	BTC	0.0078
29	1321	BTC	0.9985
29	1381	BTC	0.2268
29	121	BTC	-0.2064
29	181	BTC	0.0000
29	241	BTC	0.9970
29	301	BTC	0.0015
29	361	BTC	0.9325
29	421	BTC	0.0015
29	481	BTC	-0.0008
29	541	BTC	0.0015
30	1	BTC	-0.1998
30	601	BTC	0.3433
30	661	BTC	0.3115
30	721	BTC	0.0675
30	781	BTC	0.6249
30	961	BTC	-0.0862
30	1021	BTC	0.9882
30	1081	BTC	-0.7906
30	1141	BTC	-0.0212
30	61	BTC	0.5719
30	1261	BTC	0.3499
30	121	BTC	0.9682
30	241	BTC	-0.0007
30	301	BTC	-0.0007
30	361	BTC	-0.5574
30	421	BTC	-0.5574
31	601	BTC	-0.9993
31	661	BTC	-0.4512
31	721	BTC	0.0064
31	781	BTC	-0.2726
31	841	BTC	0.6124
31	901	BTC	0.3246
31	961	BTC	0.7906
31	1021	BTC	-0.2407
31	1081	BTC	-0.9993
31	1141	BTC	0.4331
31	61	BTC	0.9970
31	1201	BTC	-0.9325
31	181	BTC	0.7906
31	301	BTC	0.9970
31	541	BTC	0.5574
32	601	BTC	-0.9968
32	661	BTC	0.3688
32	721	BTC	0.9712
32	781	BTC	0.0113
32	841	BTC	-0.9993
32	901	BTC	0.9818
32	961	BTC	0.0982
32	1021	BTC	0.9682
32	1081	BTC	-0.0481
32	1141	BTC	-0.6705
32	61	BTC	0.4108
32	1201	BTC	0.5994
32	1261	BTC	0.5267
32	1321	BTC	0.2268
32	241	BTC	0.4723
32	361	BTC	-0.5574
32	421	BTC	0.1131
32	481	BTC	0.0550
32	541	BTC	0.6124
33	1	BTC	0.2488
33	61	BTC	-0.6808
33	121	BTC	-0.5859
33	181	BTC	-0.6705
33	301	BTC	-0.9997
33	361	BTC	-0.6705
33	421	BTC	0.9477
33	541	BTC	-0.3371
35	721	BTC	0.5046
35	781	BTC	-0.0010
35	841	BTC	0.9682
35	901	BTC	0.4199
35	961	BTC	0.9985
35	1021	BTC	0.9985
35	1081	BTC	0.2312
35	1201	BTC	0.9628
35	1261	BTC	0.9970
35	1321	BTC	0.0082
35	1381	BTC	0.5994
36	1	BTC	0.9325
36	601	BTC	0.9682
36	721	BTC	-0.0011
36	781	BTC	0.7430
36	841	BTC	0.9781
36	1201	BTC	0.8934
36	1261	BTC	0.9682
36	1321	BTC	0.7964
36	1381	BTC	0.2047
36	241	BTC	0.9001
36	301	BTC	-0.7650
36	481	BTC	0.0710
36	541	BTC	-0.0339
37	1	BTC	0.9325
37	601	BTC	0.9985
37	721	BTC	0.3876
37	781	BTC	0.0086
37	841	BTC	0.0377
37	901	BTC	0.0448
37	961	BTC	0.9957
37	1021	BTC	0.4098
37	1081	BTC	0.3873
37	1141	BTC	0.9682
37	1201	BTC	0.6369
37	1261	BTC	0.9758
37	1321	BTC	0.9758
37	1381	BTC	0.7096
37	121	BTC	0.9970
37	181	BTC	-0.8308
37	241	BTC	0.9853
37	361	BTC	0.6166
37	541	BTC	0.9549
38	601	BTC	0.9918
38	661	BTC	0.9682
38	721	BTC	0.7906
38	841	BTC	0.4000
38	901	BTC	0.4178
38	961	BTC	0.3873
38	121	BTC	0.5719
38	301	BTC	-0.0027
38	481	BTC	-0.5423
38	541	BTC	0.3669
39	661	BTC	-0.2719
39	721	BTC	0.9819
39	781	BTC	0.9985
39	841	BTC	0.4412
39	901	BTC	0.9990
39	961	BTC	0.9985
39	1021	BTC	0.9990
39	1081	BTC	0.3082
39	1141	BTC	0.9682
39	1201	BTC	0.9984
39	1261	BTC	0.6486
39	301	BTC	0.2273
39	361	BTC	0.9719
39	421	BTC	0.9823
39	541	BTC	0.7506
40	1	BTC	0.9826
40	661	BTC	0.9984
40	721	BTC	0.9818
40	781	BTC	0.9818
40	841	BTC	0.9818
40	901	BTC	0.9995
40	961	BTC	0.3087
40	1021	BTC	0.1306
40	1081	BTC	0.1153
40	1141	BTC	0.1296
40	1201	BTC	0.0303
40	1261	BTC	0.0303
40	1321	BTC	0.0303
40	1381	BTC	0.2889
40	361	BTC	0.9792
40	541	BTC	0.9732
41	1	BTC	0.4879
41	601	BTC	0.7430
41	61	BTC	0.0164
41	121	BTC	-0.0059
41	181	BTC	-0.0059
41	241	BTC	0.0136
41	301	BTC	0.0303
41	361	BTC	0.0303
41	421	BTC	0.9985
41	481	BTC	0.9818
41	541	BTC	0.8934
42	1	BTC	0.5267
42	661	BTC	0.8885
42	781	BTC	0.9682
42	841	BTC	0.9990
42	901	BTC	-0.1282
42	961	BTC	0.9970
42	1021	BTC	0.9970
42	1081	BTC	0.3178
42	1141	BTC	0.3504
42	61	BTC	0.9682
42	1201	BTC	0.9990
42	1261	BTC	-0.0252
42	181	BTC	-0.9955
42	241	BTC	-0.6486
42	301	BTC	-0.9970
25	601	BTC	0.9766
25	721	BTC	0.9818
25	781	BTC	0.7717
25	841	BTC	-0.8126
25	901	BTC	0.9682
25	961	BTC	0.9818
25	1021	BTC	0.6808
25	1141	BTC	0.8862
25	1201	BTC	0.9705
25	1261	BTC	-0.5859
25	1321	BTC	0.9986
25	121	BTC	-0.5994
25	361	BTC	0.9840
25	481	BTC	0.9840
26	1141	BTC	-0.1484
26	1201	BTC	-0.9993
26	1261	BTC	-0.7269
26	1321	BTC	-0.0643
26	1381	BTC	0.9468
26	121	BTC	-0.9970
26	361	BTC	0.9840
26	421	BTC	-0.9944
27	601	BTC	-0.6597
27	661	BTC	-0.9978
27	721	BTC	-0.0160
27	781	BTC	-0.5574
27	841	BTC	-0.3362
27	901	BTC	0.0737
27	961	BTC	-0.0175
27	1021	BTC	-0.0144
27	1081	BTC	0.9834
27	1141	BTC	0.9771
27	1201	BTC	0.4062
27	1261	BTC	-0.7506
27	1381	BTC	0.4108
27	241	BTC	-0.0150
27	301	BTC	-0.5574
27	481	BTC	-0.5267
27	541	BTC	-0.5859
28	601	BTC	0.0534
28	661	BTC	0.9726
28	721	BTC	0.6434
28	781	BTC	0.2559
28	841	BTC	0.4191
28	901	BTC	0.3034
28	961	BTC	0.3082
28	1021	BTC	0.9842
28	1081	BTC	-0.0439
28	1141	BTC	0.0000
28	1201	BTC	0.3074
28	1261	BTC	0.4561
28	1321	BTC	0.3177
28	1381	BTC	0.4547
28	241	BTC	0.4397
28	301	BTC	0.8934
28	361	BTC	-0.5574
28	421	BTC	0.7906
28	481	BTC	0.5267
29	1	BTC	0.3721
29	601	BTC	-0.0008
29	661	BTC	0.4266
29	721	BTC	0.3280
29	781	BTC	0.4266
29	841	BTC	0.3280
29	901	BTC	0.0015
29	961	BTC	0.0015
29	1021	BTC	-0.0009
29	1081	BTC	-0.0008
29	1141	BTC	0.0017
29	61	BTC	0.0000
29	1201	BTC	0.0015
29	1261	BTC	0.0078
29	1321	BTC	0.9985
29	1381	BTC	0.2268
29	121	BTC	-0.2064
29	181	BTC	0.0000
29	241	BTC	0.9970
29	301	BTC	0.0015
29	361	BTC	0.9325
29	421	BTC	0.0015
29	481	BTC	-0.0008
29	541	BTC	0.0015
30	1	BTC	-0.1998
30	601	BTC	0.3433
30	661	BTC	0.3115
30	721	BTC	0.0675
30	781	BTC	0.6249
30	961	BTC	-0.0862
30	1021	BTC	0.9882
30	1081	BTC	-0.7906
30	1141	BTC	-0.0212
30	61	BTC	0.5719
30	1261	BTC	0.3499
30	121	BTC	0.9682
30	241	BTC	-0.0007
30	301	BTC	-0.0007
30	361	BTC	-0.5574
30	421	BTC	-0.5574
31	601	BTC	-0.9993
31	661	BTC	-0.4512
31	721	BTC	0.0064
31	781	BTC	-0.2726
31	841	BTC	0.6124
31	901	BTC	0.3246
31	961	BTC	0.7906
31	1021	BTC	-0.2407
31	1081	BTC	-0.9993
31	1141	BTC	0.4331
31	61	BTC	0.9970
31	1201	BTC	-0.9325
31	181	BTC	0.7906
31	301	BTC	0.9970
31	541	BTC	0.5574
32	601	BTC	-0.9968
32	661	BTC	0.3688
32	721	BTC	0.9712
32	781	BTC	0.0113
32	841	BTC	-0.9993
32	901	BTC	0.9818
32	961	BTC	0.0982
32	1021	BTC	0.9682
32	1081	BTC	-0.0481
32	1141	BTC	-0.6705
32	61	BTC	0.4108
32	1201	BTC	0.5994
32	1261	BTC	0.5267
32	1321	BTC	0.2268
32	241	BTC	0.4723
32	361	BTC	-0.5574
32	421	BTC	0.1131
32	481	BTC	0.0550
32	541	BTC	0.6124
33	1	BTC	0.2488
33	61	BTC	-0.6808
33	121	BTC	-0.5859
33	181	BTC	-0.6705
33	301	BTC	-0.9997
33	361	BTC	-0.6705
33	421	BTC	0.9477
33	541	BTC	-0.3371
35	721	BTC	0.5046
35	781	BTC	-0.0010
35	841	BTC	0.9682
35	901	BTC	0.4199
35	961	BTC	0.9985
35	1021	BTC	0.9985
35	1081	BTC	0.2312
35	1201	BTC	0.9628
35	1261	BTC	0.9970
35	1321	BTC	0.0082
35	1381	BTC	0.5994
36	1	BTC	0.9325
36	601	BTC	0.9682
36	721	BTC	-0.0011
36	781	BTC	0.7430
36	841	BTC	0.9781
36	1201	BTC	0.8934
36	1261	BTC	0.9682
36	1321	BTC	0.7964
36	1381	BTC	0.2047
36	241	BTC	0.9001
36	301	BTC	-0.7650
36	481	BTC	0.0710
36	541	BTC	-0.0339
37	1	BTC	0.9325
37	601	BTC	0.9985
37	721	BTC	0.3876
37	781	BTC	0.0086
37	841	BTC	0.0377
37	901	BTC	0.0448
37	961	BTC	0.9957
37	1021	BTC	0.4098
37	1081	BTC	0.3873
37	1141	BTC	0.9682
37	1201	BTC	0.6369
37	1261	BTC	0.9758
37	1321	BTC	0.9758
37	1381	BTC	0.7096
37	121	BTC	0.9970
37	181	BTC	-0.8308
37	241	BTC	0.9853
37	361	BTC	0.6166
37	541	BTC	0.9549
38	601	BTC	0.9918
38	661	BTC	0.9682
38	721	BTC	0.7906
38	841	BTC	0.4000
38	901	BTC	0.4178
38	961	BTC	0.3873
38	121	BTC	0.5719
38	301	BTC	-0.0027
38	481	BTC	-0.5423
38	541	BTC	0.3669
39	661	BTC	-0.2719
39	721	BTC	0.9819
39	781	BTC	0.9985
39	841	BTC	0.4412
39	901	BTC	0.9990
39	961	BTC	0.9985
39	1021	BTC	0.9990
39	1081	BTC	0.3082
39	1141	BTC	0.9682
39	1201	BTC	0.9984
39	1261	BTC	0.6486
39	301	BTC	0.2273
39	361	BTC	0.9719
39	421	BTC	0.9823
39	541	BTC	0.7506
40	1	BTC	0.9826
40	661	BTC	0.9984
40	721	BTC	0.9818
40	781	BTC	0.9818
40	841	BTC	0.9818
40	901	BTC	0.9995
40	961	BTC	0.3087
40	1021	BTC	0.1306
40	1081	BTC	0.1153
40	1141	BTC	0.1296
40	1201	BTC	0.0303
40	1261	BTC	0.0303
40	1321	BTC	0.0303
40	1381	BTC	0.2889
40	361	BTC	0.9792
40	541	BTC	0.9732
41	1	BTC	0.4879
41	601	BTC	0.7430
41	61	BTC	0.0164
41	121	BTC	-0.0059
41	181	BTC	-0.0059
41	241	BTC	0.0136
41	301	BTC	0.0303
41	361	BTC	0.0303
41	421	BTC	0.9985
41	481	BTC	0.9818
41	541	BTC	0.8934
42	1	BTC	0.5267
42	661	BTC	0.8885
42	781	BTC	0.9682
42	841	BTC	0.9990
42	901	BTC	-0.1282
42	961	BTC	0.9970
42	1021	BTC	0.9970
42	1081	BTC	0.3178
42	1141	BTC	0.3504
42	61	BTC	0.9682
42	1201	BTC	0.9990
42	1261	BTC	-0.0252
42	181	BTC	-0.9955
42	241	BTC	-0.6486
42	301	BTC	-0.9970
25	601	BTC	0.9766
25	721	BTC	0.9818
25	781	BTC	0.7717
25	841	BTC	-0.8126
25	901	BTC	0.9682
25	961	BTC	0.9818
25	1021	BTC	0.6808
25	1141	BTC	0.8862
25	1201	BTC	0.9705
25	1261	BTC	-0.5859
25	1321	BTC	0.9986
25	121	BTC	-0.5994
25	361	BTC	0.9840
25	481	BTC	0.9840
26	1141	BTC	-0.1484
26	1201	BTC	-0.9993
26	1261	BTC	-0.7269
26	1321	BTC	-0.0643
26	1381	BTC	0.9468
26	121	BTC	-0.9970
26	361	BTC	0.9840
26	421	BTC	-0.9944
27	601	BTC	-0.6597
27	661	BTC	-0.9978
27	721	BTC	-0.0160
27	781	BTC	-0.5574
27	841	BTC	-0.3362
27	901	BTC	0.0737
27	961	BTC	-0.0175
27	1021	BTC	-0.0144
27	1081	BTC	0.9834
27	1141	BTC	0.9771
27	1201	BTC	0.4062
27	1261	BTC	-0.7506
27	1381	BTC	0.4108
27	241	BTC	-0.0150
27	301	BTC	-0.5574
27	481	BTC	-0.5267
27	541	BTC	-0.5859
28	601	BTC	0.0534
28	661	BTC	0.9726
28	721	BTC	0.6434
28	781	BTC	0.2559
28	841	BTC	0.4191
28	901	BTC	0.3034
28	961	BTC	0.3082
28	1021	BTC	0.9842
28	1081	BTC	-0.0439
28	1141	BTC	0.0000
28	1201	BTC	0.3074
28	1261	BTC	0.4561
28	1321	BTC	0.3177
28	1381	BTC	0.4547
28	241	BTC	0.4397
28	301	BTC	0.8934
28	361	BTC	-0.5574
28	421	BTC	0.7906
28	481	BTC	0.5267
29	1	BTC	0.3721
29	601	BTC	-0.0008
29	661	BTC	0.4266
29	721	BTC	0.3280
29	781	BTC	0.4266
29	841	BTC	0.3280
29	901	BTC	0.0015
29	961	BTC	0.0015
29	1021	BTC	-0.0009
29	1081	BTC	-0.0008
29	1141	BTC	0.0017
29	61	BTC	0.0000
29	1201	BTC	0.0015
29	1261	BTC	0.0078
29	1321	BTC	0.9985
29	1381	BTC	0.2268
29	121	BTC	-0.2064
29	181	BTC	0.0000
29	241	BTC	0.9970
29	301	BTC	0.0015
29	361	BTC	0.9325
29	421	BTC	0.0015
29	481	BTC	-0.0008
29	541	BTC	0.0015
30	1	BTC	-0.1998
30	601	BTC	0.3433
30	661	BTC	0.3115
30	721	BTC	0.0675
30	781	BTC	0.6249
30	961	BTC	-0.0862
30	1021	BTC	0.9882
30	1081	BTC	-0.7906
30	1141	BTC	-0.0212
30	61	BTC	0.5719
30	1261	BTC	0.3499
30	121	BTC	0.9682
30	241	BTC	-0.0007
30	301	BTC	-0.0007
30	361	BTC	-0.5574
30	421	BTC	-0.5574
31	601	BTC	-0.9993
31	661	BTC	-0.4512
31	721	BTC	0.0064
31	781	BTC	-0.2726
31	841	BTC	0.6124
31	901	BTC	0.3246
31	961	BTC	0.7906
31	1021	BTC	-0.2407
31	1081	BTC	-0.9993
31	1141	BTC	0.4331
31	61	BTC	0.9970
31	1201	BTC	-0.9325
31	181	BTC	0.7906
31	301	BTC	0.9970
31	541	BTC	0.5574
32	601	BTC	-0.9968
32	661	BTC	0.3688
32	721	BTC	0.9712
32	781	BTC	0.0113
32	841	BTC	-0.9993
32	901	BTC	0.9818
32	961	BTC	0.0982
32	1021	BTC	0.9682
32	1081	BTC	-0.0481
32	1141	BTC	-0.6705
32	61	BTC	0.4108
32	1201	BTC	0.5994
32	1261	BTC	0.5267
32	1321	BTC	0.2268
32	241	BTC	0.4723
32	361	BTC	-0.5574
32	421	BTC	0.1131
32	481	BTC	0.0550
32	541	BTC	0.6124
33	1	BTC	0.2488
33	61	BTC	-0.6808
33	121	BTC	-0.5859
33	181	BTC	-0.6705
33	301	BTC	-0.9997
33	361	BTC	-0.6705
33	421	BTC	0.9477
33	541	BTC	-0.3371
35	721	BTC	0.5046
35	781	BTC	-0.0010
35	841	BTC	0.9682
35	901	BTC	0.4199
35	961	BTC	0.9985
35	1021	BTC	0.9985
35	1081	BTC	0.2312
35	1201	BTC	0.9628
35	1261	BTC	0.9970
35	1321	BTC	0.0082
35	1381	BTC	0.5994
36	1	BTC	0.9325
36	601	BTC	0.9682
36	721	BTC	-0.0011
36	781	BTC	0.7430
36	841	BTC	0.9781
36	1201	BTC	0.8934
36	1261	BTC	0.9682
36	1321	BTC	0.7964
36	1381	BTC	0.2047
36	241	BTC	0.9001
36	301	BTC	-0.7650
36	481	BTC	0.0710
36	541	BTC	-0.0339
37	1	BTC	0.9325
37	601	BTC	0.9985
37	721	BTC	0.3876
37	781	BTC	0.0086
37	841	BTC	0.0377
37	901	BTC	0.0448
37	961	BTC	0.9957
37	1021	BTC	0.4098
37	1081	BTC	0.3873
37	1141	BTC	0.9682
37	1201	BTC	0.6369
37	1261	BTC	0.9758
37	1321	BTC	0.9758
37	1381	BTC	0.7096
37	121	BTC	0.9970
37	181	BTC	-0.8308
37	241	BTC	0.9853
37	361	BTC	0.6166
37	541	BTC	0.9549
38	601	BTC	0.9918
38	661	BTC	0.9682
38	721	BTC	0.7906
38	841	BTC	0.4000
38	901	BTC	0.4178
38	961	BTC	0.3873
38	121	BTC	0.5719
38	301	BTC	-0.0027
38	481	BTC	-0.5423
38	541	BTC	0.3669
39	661	BTC	-0.2719
39	721	BTC	0.9819
39	781	BTC	0.9985
39	841	BTC	0.4412
39	901	BTC	0.9990
39	961	BTC	0.9985
39	1021	BTC	0.9990
39	1081	BTC	0.3082
39	1141	BTC	0.9682
39	1201	BTC	0.9984
39	1261	BTC	0.6486
39	301	BTC	0.2273
39	361	BTC	0.9719
39	421	BTC	0.9823
39	541	BTC	0.7506
40	1	BTC	0.9826
40	661	BTC	0.9984
40	721	BTC	0.9818
40	781	BTC	0.9818
40	841	BTC	0.9818
40	901	BTC	0.9995
40	961	BTC	0.3087
40	1021	BTC	0.1306
40	1081	BTC	0.1153
40	1141	BTC	0.1296
40	1201	BTC	0.0303
40	1261	BTC	0.0303
40	1321	BTC	0.0303
40	1381	BTC	0.2889
40	361	BTC	0.9792
40	541	BTC	0.9732
41	1	BTC	0.4879
41	601	BTC	0.7430
41	61	BTC	0.0164
41	121	BTC	-0.0059
41	181	BTC	-0.0059
41	241	BTC	0.0136
41	301	BTC	0.0303
41	361	BTC	0.0303
41	421	BTC	0.9985
41	481	BTC	0.9818
41	541	BTC	0.8934
42	1	BTC	0.5267
42	661	BTC	0.8885
42	781	BTC	0.9682
42	841	BTC	0.9990
42	901	BTC	-0.1282
42	961	BTC	0.9970
42	1021	BTC	0.9970
42	1081	BTC	0.3178
42	1141	BTC	0.3504
42	61	BTC	0.9682
42	1201	BTC	0.9990
42	1261	BTC	-0.0252
42	181	BTC	-0.9955
42	241	BTC	-0.6486
42	301	BTC	-0.9970
25	601	BTC	0.9766
25	721	BTC	0.9818
25	781	BTC	0.7717
25	841	BTC	-0.8126
25	901	BTC	0.9682
25	961	BTC	0.9818
25	1021	BTC	0.6808
25	1141	BTC	0.8862
25	1201	BTC	0.9705
25	1261	BTC	-0.5859
25	1321	BTC	0.9986
25	121	BTC	-0.5994
25	361	BTC	0.9840
25	481	BTC	0.9840
26	1141	BTC	-0.1484
26	1201	BTC	-0.9993
26	1261	BTC	-0.7269
26	1321	BTC	-0.0643
26	1381	BTC	0.9468
26	121	BTC	-0.9970
26	361	BTC	0.9840
26	421	BTC	-0.9944
27	601	BTC	-0.6597
27	661	BTC	-0.9978
27	721	BTC	-0.0160
27	781	BTC	-0.5574
27	841	BTC	-0.3362
27	901	BTC	0.0737
27	961	BTC	-0.0175
27	1021	BTC	-0.0144
27	1081	BTC	0.9834
27	1141	BTC	0.9771
27	1201	BTC	0.4062
27	1261	BTC	-0.7506
27	1381	BTC	0.4108
27	241	BTC	-0.0150
27	301	BTC	-0.5574
27	481	BTC	-0.5267
27	541	BTC	-0.5859
28	601	BTC	0.0534
28	661	BTC	0.9726
28	721	BTC	0.6434
28	781	BTC	0.2559
28	841	BTC	0.4191
28	901	BTC	0.3034
28	961	BTC	0.3082
28	1021	BTC	0.9842
28	1081	BTC	-0.0439
28	1141	BTC	0.0000
28	1201	BTC	0.3074
28	1261	BTC	0.4561
28	1321	BTC	0.3177
28	1381	BTC	0.4547
28	241	BTC	0.4397
28	301	BTC	0.8934
28	361	BTC	-0.5574
28	421	BTC	0.7906
28	481	BTC	0.5267
29	1	BTC	0.3721
29	601	BTC	-0.0008
29	661	BTC	0.4266
29	721	BTC	0.3280
29	781	BTC	0.4266
29	841	BTC	0.3280
29	901	BTC	0.0015
29	961	BTC	0.0015
29	1021	BTC	-0.0009
29	1081	BTC	-0.0008
29	1141	BTC	0.0017
29	61	BTC	0.0000
29	1201	BTC	0.0015
29	1261	BTC	0.0078
29	1321	BTC	0.9985
29	1381	BTC	0.2268
29	121	BTC	-0.2064
29	181	BTC	0.0000
29	241	BTC	0.9970
29	301	BTC	0.0015
29	361	BTC	0.9325
29	421	BTC	0.0015
29	481	BTC	-0.0008
29	541	BTC	0.0015
30	1	BTC	-0.1998
30	601	BTC	0.3433
30	661	BTC	0.3115
30	721	BTC	0.0675
30	781	BTC	0.6249
30	961	BTC	-0.0862
30	1021	BTC	0.9882
30	1081	BTC	-0.7906
30	1141	BTC	-0.0212
30	61	BTC	0.5719
30	1261	BTC	0.3499
30	121	BTC	0.9682
30	241	BTC	-0.0007
30	301	BTC	-0.0007
30	361	BTC	-0.5574
30	421	BTC	-0.5574
31	601	BTC	-0.9993
31	661	BTC	-0.4512
31	721	BTC	0.0064
31	781	BTC	-0.2726
31	841	BTC	0.6124
31	901	BTC	0.3246
31	961	BTC	0.7906
31	1021	BTC	-0.2407
31	1081	BTC	-0.9993
31	1141	BTC	0.4331
31	61	BTC	0.9970
31	1201	BTC	-0.9325
31	181	BTC	0.7906
31	301	BTC	0.9970
31	541	BTC	0.5574
32	601	BTC	-0.9968
32	661	BTC	0.3688
32	721	BTC	0.9712
32	781	BTC	0.0113
32	841	BTC	-0.9993
32	901	BTC	0.9818
32	961	BTC	0.0982
32	1021	BTC	0.9682
32	1081	BTC	-0.0481
32	1141	BTC	-0.6705
32	61	BTC	0.4108
32	1201	BTC	0.5994
32	1261	BTC	0.5267
32	1321	BTC	0.2268
32	241	BTC	0.4723
32	361	BTC	-0.5574
32	421	BTC	0.1131
32	481	BTC	0.0550
32	541	BTC	0.6124
33	1	BTC	0.2488
33	61	BTC	-0.6808
33	121	BTC	-0.5859
33	181	BTC	-0.6705
33	301	BTC	-0.9997
33	361	BTC	-0.6705
33	421	BTC	0.9477
33	541	BTC	-0.3371
35	721	BTC	0.5046
35	781	BTC	-0.0010
35	841	BTC	0.9682
35	901	BTC	0.4199
35	961	BTC	0.9985
35	1021	BTC	0.9985
35	1081	BTC	0.2312
35	1201	BTC	0.9628
35	1261	BTC	0.9970
35	1321	BTC	0.0082
35	1381	BTC	0.5994
36	1	BTC	0.9325
36	601	BTC	0.9682
36	721	BTC	-0.0011
36	781	BTC	0.7430
36	841	BTC	0.9781
36	1201	BTC	0.8934
36	1261	BTC	0.9682
36	1321	BTC	0.7964
36	1381	BTC	0.2047
36	241	BTC	0.9001
36	301	BTC	-0.7650
36	481	BTC	0.0710
36	541	BTC	-0.0339
37	1	BTC	0.9325
37	601	BTC	0.9985
37	721	BTC	0.3876
37	781	BTC	0.0086
37	841	BTC	0.0377
37	901	BTC	0.0448
37	961	BTC	0.9957
37	1021	BTC	0.4098
37	1081	BTC	0.3873
37	1141	BTC	0.9682
37	1201	BTC	0.6369
37	1261	BTC	0.9758
37	1321	BTC	0.9758
37	1381	BTC	0.7096
37	121	BTC	0.9970
37	181	BTC	-0.8308
37	241	BTC	0.9853
37	361	BTC	0.6166
37	541	BTC	0.9549
38	601	BTC	0.9918
38	661	BTC	0.9682
38	721	BTC	0.7906
38	841	BTC	0.4000
38	901	BTC	0.4178
38	961	BTC	0.3873
38	121	BTC	0.5719
38	301	BTC	-0.0027
38	481	BTC	-0.5423
38	541	BTC	0.3669
39	661	BTC	-0.2719
39	721	BTC	0.9819
39	781	BTC	0.9985
39	841	BTC	0.4412
39	901	BTC	0.9990
39	961	BTC	0.9985
39	1021	BTC	0.9990
39	1081	BTC	0.3082
39	1141	BTC	0.9682
39	1201	BTC	0.9984
39	1261	BTC	0.6486
39	301	BTC	0.2273
39	361	BTC	0.9719
39	421	BTC	0.9823
39	541	BTC	0.7506
40	1	BTC	0.9826
40	661	BTC	0.9984
40	721	BTC	0.9818
40	781	BTC	0.9818
40	841	BTC	0.9818
40	901	BTC	0.9995
40	961	BTC	0.3087
40	1021	BTC	0.1306
40	1081	BTC	0.1153
40	1141	BTC	0.1296
40	1201	BTC	0.0303
40	1261	BTC	0.0303
40	1321	BTC	0.0303
40	1381	BTC	0.2889
40	361	BTC	0.9792
40	541	BTC	0.9732
41	1	BTC	0.4879
41	601	BTC	0.7430
41	61	BTC	0.0164
41	121	BTC	-0.0059
41	181	BTC	-0.0059
41	241	BTC	0.0136
41	301	BTC	0.0303
41	361	BTC	0.0303
41	421	BTC	0.9985
41	481	BTC	0.9818
41	541	BTC	0.8934
42	1	BTC	0.5267
42	661	BTC	0.8885
42	781	BTC	0.9682
42	841	BTC	0.9990
42	901	BTC	-0.1282
42	961	BTC	0.9970
42	1021	BTC	0.9970
42	1081	BTC	0.3178
42	1141	BTC	0.3504
42	61	BTC	0.9682
42	1201	BTC	0.9990
42	1261	BTC	-0.0252
42	181	BTC	-0.9955
42	241	BTC	-0.6486
42	301	BTC	-0.9970
25	601	BTC	0.9766
25	721	BTC	0.9818
25	781	BTC	0.7717
25	841	BTC	-0.8126
25	901	BTC	0.9682
25	961	BTC	0.9818
25	1021	BTC	0.6808
25	1141	BTC	0.8862
25	1201	BTC	0.9705
25	1261	BTC	-0.5859
25	1321	BTC	0.9986
25	121	BTC	-0.5994
25	361	BTC	0.9840
25	481	BTC	0.9840
26	1141	BTC	-0.1484
26	1201	BTC	-0.9993
26	1261	BTC	-0.7269
26	1321	BTC	-0.0643
26	1381	BTC	0.9468
26	121	BTC	-0.9970
26	361	BTC	0.9840
26	421	BTC	-0.9944
27	601	BTC	-0.6597
27	661	BTC	-0.9978
27	721	BTC	-0.0160
27	781	BTC	-0.5574
27	841	BTC	-0.3362
27	901	BTC	0.0737
27	961	BTC	-0.0175
27	1021	BTC	-0.0144
27	1081	BTC	0.9834
27	1141	BTC	0.9771
27	1201	BTC	0.4062
27	1261	BTC	-0.7506
27	1381	BTC	0.4108
27	241	BTC	-0.0150
27	301	BTC	-0.5574
27	481	BTC	-0.5267
27	541	BTC	-0.5859
28	601	BTC	0.0534
28	661	BTC	0.9726
28	721	BTC	0.6434
28	781	BTC	0.2559
28	841	BTC	0.4191
28	901	BTC	0.3034
28	961	BTC	0.3082
28	1021	BTC	0.9842
28	1081	BTC	-0.0439
28	1141	BTC	0.0000
28	1201	BTC	0.3074
28	1261	BTC	0.4561
28	1321	BTC	0.3177
28	1381	BTC	0.4547
28	241	BTC	0.4397
28	301	BTC	0.8934
28	361	BTC	-0.5574
28	421	BTC	0.7906
28	481	BTC	0.5267
29	1	BTC	0.3721
29	601	BTC	-0.0008
29	661	BTC	0.4266
29	721	BTC	0.3280
29	781	BTC	0.4266
29	841	BTC	0.3280
29	901	BTC	0.0015
29	961	BTC	0.0015
29	1021	BTC	-0.0009
29	1081	BTC	-0.0008
29	1141	BTC	0.0017
29	61	BTC	0.0000
29	1201	BTC	0.0015
29	1261	BTC	0.0078
29	1321	BTC	0.9985
29	1381	BTC	0.2268
29	121	BTC	-0.2064
29	181	BTC	0.0000
29	241	BTC	0.9970
29	301	BTC	0.0015
29	361	BTC	0.9325
29	421	BTC	0.0015
29	481	BTC	-0.0008
29	541	BTC	0.0015
30	1	BTC	-0.1998
30	601	BTC	0.3433
30	661	BTC	0.3115
30	721	BTC	0.0675
30	781	BTC	0.6249
30	961	BTC	-0.0862
30	1021	BTC	0.9882
30	1081	BTC	-0.7906
30	1141	BTC	-0.0212
30	61	BTC	0.5719
30	1261	BTC	0.3499
30	121	BTC	0.9682
30	241	BTC	-0.0007
30	301	BTC	-0.0007
30	361	BTC	-0.5574
30	421	BTC	-0.5574
31	601	BTC	-0.9993
31	661	BTC	-0.4512
31	721	BTC	0.0064
31	781	BTC	-0.2726
31	841	BTC	0.6124
31	901	BTC	0.3246
31	961	BTC	0.7906
31	1021	BTC	-0.2407
31	1081	BTC	-0.9993
31	1141	BTC	0.4331
31	61	BTC	0.9970
31	1201	BTC	-0.9325
31	181	BTC	0.7906
31	301	BTC	0.9970
31	541	BTC	0.5574
32	601	BTC	-0.9968
32	661	BTC	0.3688
32	721	BTC	0.9712
32	781	BTC	0.0113
32	841	BTC	-0.9993
32	901	BTC	0.9818
32	961	BTC	0.0982
32	1021	BTC	0.9682
32	1081	BTC	-0.0481
32	1141	BTC	-0.6705
32	61	BTC	0.4108
32	1201	BTC	0.5994
32	1261	BTC	0.5267
32	1321	BTC	0.2268
32	241	BTC	0.4723
32	361	BTC	-0.5574
32	421	BTC	0.1131
32	481	BTC	0.0550
32	541	BTC	0.6124
33	1	BTC	0.2488
33	61	BTC	-0.6808
33	121	BTC	-0.5859
33	181	BTC	-0.6705
33	301	BTC	-0.9997
33	361	BTC	-0.6705
33	421	BTC	0.9477
33	541	BTC	-0.3371
35	721	BTC	0.5046
35	781	BTC	-0.0010
35	841	BTC	0.9682
35	901	BTC	0.4199
35	961	BTC	0.9985
35	1021	BTC	0.9985
35	1081	BTC	0.2312
35	1201	BTC	0.9628
35	1261	BTC	0.9970
35	1321	BTC	0.0082
35	1381	BTC	0.5994
36	1	BTC	0.9325
36	601	BTC	0.9682
36	721	BTC	-0.0011
36	781	BTC	0.7430
36	841	BTC	0.9781
36	1201	BTC	0.8934
36	1261	BTC	0.9682
36	1321	BTC	0.7964
36	1381	BTC	0.2047
36	241	BTC	0.9001
36	301	BTC	-0.7650
36	481	BTC	0.0710
36	541	BTC	-0.0339
37	1	BTC	0.9325
37	601	BTC	0.9985
37	721	BTC	0.3876
37	781	BTC	0.0086
37	841	BTC	0.0377
37	901	BTC	0.0448
37	961	BTC	0.9957
37	1021	BTC	0.4098
37	1081	BTC	0.3873
37	1141	BTC	0.9682
37	1201	BTC	0.6369
37	1261	BTC	0.9758
37	1321	BTC	0.9758
37	1381	BTC	0.7096
37	121	BTC	0.9970
37	181	BTC	-0.8308
37	241	BTC	0.9853
37	361	BTC	0.6166
37	541	BTC	0.9549
38	601	BTC	0.9918
38	661	BTC	0.9682
38	721	BTC	0.7906
38	841	BTC	0.4000
38	901	BTC	0.4178
38	961	BTC	0.3873
38	121	BTC	0.5719
38	301	BTC	-0.0027
38	481	BTC	-0.5423
38	541	BTC	0.3669
39	661	BTC	-0.2719
39	721	BTC	0.9819
39	781	BTC	0.9985
39	841	BTC	0.4412
39	901	BTC	0.9990
39	961	BTC	0.9985
39	1021	BTC	0.9990
39	1081	BTC	0.3082
39	1141	BTC	0.9682
39	1201	BTC	0.9984
39	1261	BTC	0.6486
39	301	BTC	0.2273
39	361	BTC	0.9719
39	421	BTC	0.9823
39	541	BTC	0.7506
40	1	BTC	0.9826
40	661	BTC	0.9984
40	721	BTC	0.9818
40	781	BTC	0.9818
40	841	BTC	0.9818
40	901	BTC	0.9995
40	961	BTC	0.3087
40	1021	BTC	0.1306
40	1081	BTC	0.1153
40	1141	BTC	0.1296
40	1201	BTC	0.0303
40	1261	BTC	0.0303
40	1321	BTC	0.0303
40	1381	BTC	0.2889
40	361	BTC	0.9792
40	541	BTC	0.9732
41	1	BTC	0.4879
41	601	BTC	0.7430
41	61	BTC	0.0164
41	121	BTC	-0.0059
41	181	BTC	-0.0059
41	241	BTC	0.0136
41	301	BTC	0.0303
41	361	BTC	0.0303
41	421	BTC	0.9985
41	481	BTC	0.9818
41	541	BTC	0.8934
42	1	BTC	0.5267
42	661	BTC	0.8885
42	721	BTC	0.9970
42	781	BTC	0.9682
42	841	BTC	0.9990
42	901	BTC	-0.1282
42	961	BTC	0.9970
42	1021	BTC	0.9986
42	1081	BTC	0.3178
42	1141	BTC	0.3504
42	61	BTC	0.9682
42	1201	BTC	0.9990
42	1261	BTC	-0.0236
42	1321	BTC	0.9682
42	1381	BTC	-0.9682
42	181	BTC	-0.9955
42	241	BTC	-0.6486
42	301	BTC	-0.9970
42	481	BTC	0.9371
43	1	BTC	0.0044
43	61	BTC	0.3924
43	121	BTC	-0.0244
43	241	BTC	0.9843
43	301	BTC	0.0044
43	361	BTC	-0.9970
43	541	BTC	0.8225
25	601	BTC	0.9766
25	721	BTC	0.9818
25	781	BTC	0.7717
25	841	BTC	-0.8126
25	901	BTC	0.9682
25	961	BTC	0.9818
25	1021	BTC	0.6808
25	1141	BTC	0.8862
25	1201	BTC	0.9705
25	1261	BTC	-0.5859
25	1321	BTC	0.9986
25	121	BTC	-0.5994
25	361	BTC	0.9840
25	481	BTC	0.9840
26	1141	BTC	-0.1484
26	1201	BTC	-0.9993
26	1261	BTC	-0.7269
26	1321	BTC	-0.0643
26	1381	BTC	0.9468
26	121	BTC	-0.9970
26	361	BTC	0.9840
26	421	BTC	-0.9944
27	601	BTC	-0.6597
27	661	BTC	-0.9978
27	721	BTC	-0.0160
27	781	BTC	-0.5574
27	841	BTC	-0.3362
27	901	BTC	0.0737
27	961	BTC	-0.0175
27	1021	BTC	-0.0144
27	1081	BTC	0.9834
27	1141	BTC	0.9771
27	1201	BTC	0.4062
27	1261	BTC	-0.7506
27	1381	BTC	0.4108
27	241	BTC	-0.0150
27	301	BTC	-0.5574
27	481	BTC	-0.5267
27	541	BTC	-0.5859
28	601	BTC	0.0534
28	661	BTC	0.9726
28	721	BTC	0.6434
28	781	BTC	0.2559
28	841	BTC	0.4191
28	901	BTC	0.3034
28	961	BTC	0.3082
28	1021	BTC	0.9842
28	1081	BTC	-0.0439
28	1141	BTC	0.0000
28	1201	BTC	0.3074
28	1261	BTC	0.4561
28	1321	BTC	0.3177
28	1381	BTC	0.4547
28	241	BTC	0.4397
28	301	BTC	0.8934
28	361	BTC	-0.5574
28	421	BTC	0.7906
28	481	BTC	0.5267
29	1	BTC	0.3721
29	601	BTC	-0.0008
29	661	BTC	0.4266
29	721	BTC	0.3280
29	781	BTC	0.4266
29	841	BTC	0.3280
29	901	BTC	0.0015
29	961	BTC	0.0015
29	1021	BTC	-0.0009
29	1081	BTC	-0.0008
29	1141	BTC	0.0017
29	61	BTC	0.0000
29	1201	BTC	0.0015
29	1261	BTC	0.0078
29	1321	BTC	0.9985
29	1381	BTC	0.2268
29	121	BTC	-0.2064
29	181	BTC	0.0000
29	241	BTC	0.9970
29	301	BTC	0.0015
29	361	BTC	0.9325
29	421	BTC	0.0015
29	481	BTC	-0.0008
29	541	BTC	0.0015
30	1	BTC	-0.1998
30	601	BTC	0.3433
30	661	BTC	0.3115
30	721	BTC	0.0675
30	781	BTC	0.6249
30	961	BTC	-0.0862
30	1021	BTC	0.9882
30	1081	BTC	-0.7906
30	1141	BTC	-0.0212
30	61	BTC	0.5719
30	1261	BTC	0.3499
30	121	BTC	0.9682
30	241	BTC	-0.0007
30	301	BTC	-0.0007
30	361	BTC	-0.5574
30	421	BTC	-0.5574
31	601	BTC	-0.9993
31	661	BTC	-0.4512
31	721	BTC	0.0064
31	781	BTC	-0.2726
31	841	BTC	0.6124
31	901	BTC	0.3246
31	961	BTC	0.7906
31	1021	BTC	-0.2407
31	1081	BTC	-0.9993
31	1141	BTC	0.4331
31	61	BTC	0.9970
31	1201	BTC	-0.9325
31	181	BTC	0.7906
31	301	BTC	0.9970
31	541	BTC	0.5574
32	601	BTC	-0.9968
32	661	BTC	0.3688
32	721	BTC	0.9712
32	781	BTC	0.0113
32	841	BTC	-0.9993
32	901	BTC	0.9818
32	961	BTC	0.0982
32	1021	BTC	0.9682
32	1081	BTC	-0.0481
32	1141	BTC	-0.6705
32	61	BTC	0.4108
32	1201	BTC	0.5994
32	1261	BTC	0.5267
32	1321	BTC	0.2268
32	241	BTC	0.4723
32	361	BTC	-0.5574
32	421	BTC	0.1131
32	481	BTC	0.0550
32	541	BTC	0.6124
33	1	BTC	0.2488
33	61	BTC	-0.6808
33	121	BTC	-0.5859
33	181	BTC	-0.6705
33	301	BTC	-0.9997
33	361	BTC	-0.6705
33	421	BTC	0.9477
33	541	BTC	-0.3371
35	721	BTC	0.5046
35	781	BTC	-0.0010
35	841	BTC	0.9682
35	901	BTC	0.4199
35	961	BTC	0.9985
35	1021	BTC	0.9985
35	1081	BTC	0.2312
35	1201	BTC	0.9628
35	1261	BTC	0.9970
35	1321	BTC	0.0082
35	1381	BTC	0.5994
36	1	BTC	0.9325
36	601	BTC	0.9682
36	721	BTC	-0.0011
36	781	BTC	0.7430
36	841	BTC	0.9781
36	1201	BTC	0.8934
36	1261	BTC	0.9682
36	1321	BTC	0.7964
36	1381	BTC	0.2047
36	241	BTC	0.9001
36	301	BTC	-0.7650
36	481	BTC	0.0710
36	541	BTC	-0.0339
37	1	BTC	0.9325
37	601	BTC	0.9985
37	721	BTC	0.3876
37	781	BTC	0.0086
37	841	BTC	0.0377
37	901	BTC	0.0448
37	961	BTC	0.9957
37	1021	BTC	0.4098
37	1081	BTC	0.3873
37	1141	BTC	0.9682
37	1201	BTC	0.6369
37	1261	BTC	0.9758
37	1321	BTC	0.9758
37	1381	BTC	0.7096
37	121	BTC	0.9970
37	181	BTC	-0.8308
37	241	BTC	0.9853
37	361	BTC	0.6166
37	541	BTC	0.9549
38	601	BTC	0.9918
38	661	BTC	0.9682
38	721	BTC	0.7906
38	841	BTC	0.4000
38	901	BTC	0.4178
38	961	BTC	0.3873
38	121	BTC	0.5719
38	301	BTC	-0.0027
38	481	BTC	-0.5423
38	541	BTC	0.3669
39	661	BTC	-0.2719
39	721	BTC	0.9819
39	781	BTC	0.9985
39	841	BTC	0.4412
39	901	BTC	0.9990
39	961	BTC	0.9985
39	1021	BTC	0.9990
39	1081	BTC	0.3082
39	1141	BTC	0.9682
39	1201	BTC	0.9984
39	1261	BTC	0.6486
39	301	BTC	0.2273
39	361	BTC	0.9719
39	421	BTC	0.9823
39	541	BTC	0.7506
40	1	BTC	0.9826
40	661	BTC	0.9984
40	721	BTC	0.9818
40	781	BTC	0.9818
40	841	BTC	0.9818
40	901	BTC	0.9995
40	961	BTC	0.3087
40	1021	BTC	0.1306
40	1081	BTC	0.1153
40	1141	BTC	0.1296
40	1201	BTC	0.0303
40	1261	BTC	0.0303
40	1321	BTC	0.0303
40	1381	BTC	0.2889
40	361	BTC	0.9792
40	541	BTC	0.9732
41	1	BTC	0.4879
41	601	BTC	0.7430
41	61	BTC	0.0164
41	121	BTC	-0.0059
41	181	BTC	-0.0059
41	241	BTC	0.0136
41	301	BTC	0.0303
41	361	BTC	0.0303
41	421	BTC	0.9985
41	481	BTC	0.9818
41	541	BTC	0.8934
42	1	BTC	0.5267
42	661	BTC	0.8885
42	721	BTC	0.9970
42	781	BTC	0.9682
42	841	BTC	0.9990
42	901	BTC	-0.1282
42	961	BTC	0.9970
42	1021	BTC	0.9986
42	1081	BTC	0.3178
42	1141	BTC	0.3504
42	61	BTC	0.9682
42	1201	BTC	0.9990
42	1261	BTC	-0.0236
42	1321	BTC	0.9682
42	1381	BTC	-0.9682
42	181	BTC	-0.9955
42	241	BTC	-0.6486
42	301	BTC	-0.9970
42	481	BTC	0.9371
43	1	BTC	0.0044
43	721	BTC	0.7906
43	781	BTC	0.9974
43	841	BTC	0.4549
43	1021	BTC	0.9970
43	1141	BTC	0.4749
43	61	BTC	0.3924
43	1201	BTC	0.9360
43	1261	BTC	-0.3265
43	1321	BTC	0.9716
43	1381	BTC	0.6705
43	121	BTC	-0.0244
43	241	BTC	0.9843
43	301	BTC	0.0044
43	361	BTC	-0.9970
43	541	BTC	0.8225
44	601	BTC	0.7906
25	601	BTC	0.9766
25	721	BTC	0.9818
25	781	BTC	0.7717
25	841	BTC	-0.8126
25	901	BTC	0.9682
25	961	BTC	0.9818
25	1021	BTC	0.6808
25	1141	BTC	0.8862
25	1201	BTC	0.9705
25	1261	BTC	-0.5859
25	1321	BTC	0.9986
25	121	BTC	-0.5994
25	361	BTC	0.9840
25	481	BTC	0.9840
26	1141	BTC	-0.1484
26	1201	BTC	-0.9993
26	1261	BTC	-0.7269
26	1321	BTC	-0.0643
26	1381	BTC	0.9468
26	121	BTC	-0.9970
26	361	BTC	0.9840
26	421	BTC	-0.9944
27	601	BTC	-0.6597
27	661	BTC	-0.9978
27	721	BTC	-0.0160
27	781	BTC	-0.5574
27	841	BTC	-0.3362
27	901	BTC	0.0737
27	961	BTC	-0.0175
27	1021	BTC	-0.0144
27	1081	BTC	0.9834
27	1141	BTC	0.9771
27	1201	BTC	0.4062
27	1261	BTC	-0.7506
27	1381	BTC	0.4108
27	241	BTC	-0.0150
27	301	BTC	-0.5574
27	481	BTC	-0.5267
27	541	BTC	-0.5859
28	601	BTC	0.0534
28	661	BTC	0.9726
28	721	BTC	0.6434
28	781	BTC	0.2559
28	841	BTC	0.4191
28	901	BTC	0.3034
28	961	BTC	0.3082
28	1021	BTC	0.9842
28	1081	BTC	-0.0439
28	1141	BTC	0.0000
28	1201	BTC	0.3074
28	1261	BTC	0.4561
28	1321	BTC	0.3177
28	1381	BTC	0.4547
28	241	BTC	0.4397
28	301	BTC	0.8934
28	361	BTC	-0.5574
28	421	BTC	0.7906
28	481	BTC	0.5267
29	1	BTC	0.3721
29	601	BTC	-0.0008
29	661	BTC	0.4266
29	721	BTC	0.3280
29	781	BTC	0.4266
29	841	BTC	0.3280
29	901	BTC	0.0015
29	961	BTC	0.0015
29	1021	BTC	-0.0009
29	1081	BTC	-0.0008
29	1141	BTC	0.0017
29	61	BTC	0.0000
29	1201	BTC	0.0015
29	1261	BTC	0.0078
29	1321	BTC	0.9985
29	1381	BTC	0.2268
29	121	BTC	-0.2064
29	181	BTC	0.0000
29	241	BTC	0.9970
29	301	BTC	0.0015
29	361	BTC	0.9325
29	421	BTC	0.0015
29	481	BTC	-0.0008
29	541	BTC	0.0015
30	1	BTC	-0.1998
30	601	BTC	0.3433
30	661	BTC	0.3115
30	721	BTC	0.0675
30	781	BTC	0.6249
30	961	BTC	-0.0862
30	1021	BTC	0.9882
30	1081	BTC	-0.7906
30	1141	BTC	-0.0212
30	61	BTC	0.5719
30	1261	BTC	0.3499
30	121	BTC	0.9682
30	241	BTC	-0.0007
30	301	BTC	-0.0007
30	361	BTC	-0.5574
30	421	BTC	-0.5574
31	601	BTC	-0.9993
31	661	BTC	-0.4512
31	721	BTC	0.0064
31	781	BTC	-0.2726
31	841	BTC	0.6124
31	901	BTC	0.3246
31	961	BTC	0.7906
31	1021	BTC	-0.2407
31	1081	BTC	-0.9993
31	1141	BTC	0.4331
31	61	BTC	0.9970
31	1201	BTC	-0.9325
31	181	BTC	0.7906
31	301	BTC	0.9970
31	541	BTC	0.5574
32	601	BTC	-0.9968
32	661	BTC	0.3688
32	721	BTC	0.9712
32	781	BTC	0.0113
32	841	BTC	-0.9993
32	901	BTC	0.9818
32	961	BTC	0.0982
32	1021	BTC	0.9682
32	1081	BTC	-0.0481
32	1141	BTC	-0.6705
32	61	BTC	0.4108
32	1201	BTC	0.5994
32	1261	BTC	0.5267
32	1321	BTC	0.2268
32	241	BTC	0.4723
32	361	BTC	-0.5574
32	421	BTC	0.1131
32	481	BTC	0.0550
32	541	BTC	0.6124
33	1	BTC	0.2488
33	61	BTC	-0.6808
33	121	BTC	-0.5859
33	181	BTC	-0.6705
33	301	BTC	-0.9997
33	361	BTC	-0.6705
33	421	BTC	0.9477
33	541	BTC	-0.3371
35	721	BTC	0.5046
35	781	BTC	-0.0010
35	841	BTC	0.9682
35	901	BTC	0.4199
35	961	BTC	0.9985
35	1021	BTC	0.9985
35	1081	BTC	0.2312
35	1201	BTC	0.9628
35	1261	BTC	0.9970
35	1321	BTC	0.0082
35	1381	BTC	0.5994
36	1	BTC	0.9325
36	601	BTC	0.9682
36	721	BTC	-0.0011
36	781	BTC	0.7430
36	841	BTC	0.9781
36	1201	BTC	0.8934
36	1261	BTC	0.9682
36	1321	BTC	0.7964
36	1381	BTC	0.2047
36	241	BTC	0.9001
36	301	BTC	-0.7650
36	481	BTC	0.0710
36	541	BTC	-0.0339
37	1	BTC	0.9325
37	601	BTC	0.9985
37	721	BTC	0.3876
37	781	BTC	0.0086
37	841	BTC	0.0377
37	901	BTC	0.0448
37	961	BTC	0.9957
37	1021	BTC	0.4098
37	1081	BTC	0.3873
37	1141	BTC	0.9682
37	1201	BTC	0.6369
37	1261	BTC	0.9758
37	1321	BTC	0.9758
37	1381	BTC	0.7096
37	121	BTC	0.9970
37	181	BTC	-0.8308
37	241	BTC	0.9853
37	361	BTC	0.6166
37	541	BTC	0.9549
38	601	BTC	0.9918
38	661	BTC	0.9682
38	721	BTC	0.7906
38	841	BTC	0.4000
38	901	BTC	0.4178
38	961	BTC	0.3873
38	121	BTC	0.5719
38	301	BTC	-0.0027
38	481	BTC	-0.5423
38	541	BTC	0.3669
39	661	BTC	-0.2719
39	721	BTC	0.9819
39	781	BTC	0.9985
39	841	BTC	0.4412
39	901	BTC	0.9990
39	961	BTC	0.9985
39	1021	BTC	0.9990
39	1081	BTC	0.3082
39	1141	BTC	0.9682
39	1201	BTC	0.9984
39	1261	BTC	0.6486
39	301	BTC	0.2273
39	361	BTC	0.9719
39	421	BTC	0.9823
39	541	BTC	0.7506
40	1	BTC	0.9826
40	661	BTC	0.9984
40	721	BTC	0.9818
40	781	BTC	0.9818
40	841	BTC	0.9818
40	901	BTC	0.9995
40	961	BTC	0.3087
40	1021	BTC	0.1306
40	1081	BTC	0.1153
40	1141	BTC	0.1296
40	1201	BTC	0.0303
40	1261	BTC	0.0303
40	1321	BTC	0.0303
40	1381	BTC	0.2889
40	361	BTC	0.9792
40	541	BTC	0.9732
41	1	BTC	0.4879
41	601	BTC	0.7430
41	61	BTC	0.0164
41	121	BTC	-0.0059
41	181	BTC	-0.0059
41	241	BTC	0.0136
41	301	BTC	0.0303
41	361	BTC	0.0303
41	421	BTC	0.9985
41	481	BTC	0.9818
41	541	BTC	0.8934
42	1	BTC	0.5267
42	661	BTC	0.8885
42	721	BTC	0.9970
42	781	BTC	0.9682
42	841	BTC	0.9990
42	901	BTC	-0.1282
42	961	BTC	0.9970
42	1021	BTC	0.9986
42	1081	BTC	0.3178
42	1141	BTC	0.3504
42	61	BTC	0.9682
42	1201	BTC	0.9990
42	1261	BTC	-0.0236
42	1321	BTC	0.9682
42	1381	BTC	-0.9682
42	181	BTC	-0.9955
42	241	BTC	-0.6486
42	301	BTC	-0.9970
42	481	BTC	0.9371
43	1	BTC	0.0044
43	721	BTC	0.7906
43	781	BTC	0.9974
43	841	BTC	0.4549
43	1021	BTC	0.9970
43	1141	BTC	0.4749
43	61	BTC	0.3924
43	1201	BTC	0.9360
43	1261	BTC	-0.3265
43	1321	BTC	0.9716
43	1381	BTC	0.6705
43	121	BTC	-0.0244
43	241	BTC	0.9843
43	301	BTC	0.0044
43	361	BTC	-0.9970
43	541	BTC	0.8225
44	601	BTC	0.7906
45	781	BTC	0.9682
45	841	BTC	0.9682
45	901	BTC	0.9985
45	961	BTC	0.9682
45	1081	BTC	0.9682
45	1141	BTC	0.5267
45	1261	BTC	0.9985
46	1	BTC	-0.8934
46	121	BTC	0.9747
46	301	BTC	0.9628
25	601	BTC	0.9766
25	721	BTC	0.9818
25	781	BTC	0.7717
25	841	BTC	-0.8126
25	901	BTC	0.9682
25	961	BTC	0.9818
25	1021	BTC	0.6808
25	1141	BTC	0.8862
25	1201	BTC	0.9705
25	1261	BTC	-0.5859
25	1321	BTC	0.9986
25	121	BTC	-0.5994
25	361	BTC	0.9840
25	481	BTC	0.9840
26	1141	BTC	-0.1484
26	1201	BTC	-0.9993
26	1261	BTC	-0.7269
26	1321	BTC	-0.0643
26	1381	BTC	0.9468
26	121	BTC	-0.9970
26	361	BTC	0.9840
26	421	BTC	-0.9944
27	601	BTC	-0.6597
27	661	BTC	-0.9978
27	721	BTC	-0.0160
27	781	BTC	-0.5574
27	841	BTC	-0.3362
27	901	BTC	0.0737
27	961	BTC	-0.0175
27	1021	BTC	-0.0144
27	1081	BTC	0.9834
27	1141	BTC	0.9771
27	1201	BTC	0.4062
27	1261	BTC	-0.7506
27	1381	BTC	0.4108
27	241	BTC	-0.0150
27	301	BTC	-0.5574
27	481	BTC	-0.5267
27	541	BTC	-0.5859
28	601	BTC	0.0534
28	661	BTC	0.9726
28	721	BTC	0.6434
28	781	BTC	0.2559
28	841	BTC	0.4191
28	901	BTC	0.3034
28	961	BTC	0.3082
28	1021	BTC	0.9842
28	1081	BTC	-0.0439
28	1141	BTC	0.0000
28	1201	BTC	0.3074
28	1261	BTC	0.4561
28	1321	BTC	0.3177
28	1381	BTC	0.4547
28	241	BTC	0.4397
28	301	BTC	0.8934
28	361	BTC	-0.5574
28	421	BTC	0.7906
28	481	BTC	0.5267
29	1	BTC	0.3721
29	601	BTC	-0.0008
29	661	BTC	0.4266
29	721	BTC	0.3280
29	781	BTC	0.4266
29	841	BTC	0.3280
29	901	BTC	0.0015
29	961	BTC	0.0015
29	1021	BTC	-0.0009
29	1081	BTC	-0.0008
29	1141	BTC	0.0017
29	61	BTC	0.0000
29	1201	BTC	0.0015
29	1261	BTC	0.0078
29	1321	BTC	0.9985
29	1381	BTC	0.2268
29	121	BTC	-0.2064
29	181	BTC	0.0000
29	241	BTC	0.9970
29	301	BTC	0.0015
29	361	BTC	0.9325
29	421	BTC	0.0015
29	481	BTC	-0.0008
29	541	BTC	0.0015
30	1	BTC	-0.1998
30	601	BTC	0.3433
30	661	BTC	0.3115
30	721	BTC	0.0675
30	781	BTC	0.6249
30	961	BTC	-0.0862
30	1021	BTC	0.9882
30	1081	BTC	-0.7906
30	1141	BTC	-0.0212
30	61	BTC	0.5719
30	1261	BTC	0.3499
30	121	BTC	0.9682
30	241	BTC	-0.0007
30	301	BTC	-0.0007
30	361	BTC	-0.5574
30	421	BTC	-0.5574
31	601	BTC	-0.9993
31	661	BTC	-0.4512
31	721	BTC	0.0064
31	781	BTC	-0.2726
31	841	BTC	0.6124
31	901	BTC	0.3246
31	961	BTC	0.7906
31	1021	BTC	-0.2407
31	1081	BTC	-0.9993
31	1141	BTC	0.4331
31	61	BTC	0.9970
31	1201	BTC	-0.9325
31	181	BTC	0.7906
31	301	BTC	0.9970
31	541	BTC	0.5574
32	601	BTC	-0.9968
32	661	BTC	0.3688
32	721	BTC	0.9712
32	781	BTC	0.0113
32	841	BTC	-0.9993
32	901	BTC	0.9818
32	961	BTC	0.0982
32	1021	BTC	0.9682
32	1081	BTC	-0.0481
32	1141	BTC	-0.6705
32	61	BTC	0.4108
32	1201	BTC	0.5994
32	1261	BTC	0.5267
32	1321	BTC	0.2268
32	241	BTC	0.4723
32	361	BTC	-0.5574
32	421	BTC	0.1131
32	481	BTC	0.0550
32	541	BTC	0.6124
33	1	BTC	0.2488
33	61	BTC	-0.6808
33	121	BTC	-0.5859
33	181	BTC	-0.6705
33	301	BTC	-0.9997
33	361	BTC	-0.6705
33	421	BTC	0.9477
33	541	BTC	-0.3371
35	721	BTC	0.5046
35	781	BTC	-0.0010
35	841	BTC	0.9682
35	901	BTC	0.4199
35	961	BTC	0.9985
35	1021	BTC	0.9985
35	1081	BTC	0.2312
35	1201	BTC	0.9628
35	1261	BTC	0.9970
35	1321	BTC	0.0082
35	1381	BTC	0.5994
36	1	BTC	0.9325
36	601	BTC	0.9682
36	721	BTC	-0.0011
36	781	BTC	0.7430
36	841	BTC	0.9781
36	1201	BTC	0.8934
36	1261	BTC	0.9682
36	1321	BTC	0.7964
36	1381	BTC	0.2047
36	241	BTC	0.9001
36	301	BTC	-0.7650
36	481	BTC	0.0710
36	541	BTC	-0.0339
37	1	BTC	0.9325
37	601	BTC	0.9985
37	721	BTC	0.3876
37	781	BTC	0.0086
37	841	BTC	0.0377
37	901	BTC	0.0448
37	961	BTC	0.9957
37	1021	BTC	0.4098
37	1081	BTC	0.3873
37	1141	BTC	0.9682
37	1201	BTC	0.6369
37	1261	BTC	0.9758
37	1321	BTC	0.9758
37	1381	BTC	0.7096
37	121	BTC	0.9970
37	181	BTC	-0.8308
37	241	BTC	0.9853
37	361	BTC	0.6166
37	541	BTC	0.9549
38	601	BTC	0.9918
38	661	BTC	0.9682
38	721	BTC	0.7906
38	841	BTC	0.4000
38	901	BTC	0.4178
38	961	BTC	0.3873
38	121	BTC	0.5719
38	301	BTC	-0.0027
38	481	BTC	-0.5423
38	541	BTC	0.3669
39	661	BTC	-0.2719
39	721	BTC	0.9819
39	781	BTC	0.9985
39	841	BTC	0.4412
39	901	BTC	0.9990
39	961	BTC	0.9985
39	1021	BTC	0.9990
39	1081	BTC	0.3082
39	1141	BTC	0.9682
39	1201	BTC	0.9984
39	1261	BTC	0.6486
39	301	BTC	0.2273
39	361	BTC	0.9719
39	421	BTC	0.9823
39	541	BTC	0.7506
40	1	BTC	0.9826
40	661	BTC	0.9984
40	721	BTC	0.9818
40	781	BTC	0.9818
40	841	BTC	0.9818
40	901	BTC	0.9995
40	961	BTC	0.3087
40	1021	BTC	0.1306
40	1081	BTC	0.1153
40	1141	BTC	0.1296
40	1201	BTC	0.0303
40	1261	BTC	0.0303
40	1321	BTC	0.0303
40	1381	BTC	0.2889
40	361	BTC	0.9792
40	541	BTC	0.9732
41	1	BTC	0.4879
41	601	BTC	0.7430
41	61	BTC	0.0164
41	121	BTC	-0.0059
41	181	BTC	-0.0059
41	241	BTC	0.0136
41	301	BTC	0.0303
41	361	BTC	0.0303
41	421	BTC	0.9985
41	481	BTC	0.9818
41	541	BTC	0.8934
42	1	BTC	0.5267
42	661	BTC	0.8885
42	721	BTC	0.9970
42	781	BTC	0.9682
42	841	BTC	0.9990
42	901	BTC	-0.1282
42	961	BTC	0.9970
42	1021	BTC	0.9986
42	1081	BTC	0.3178
42	1141	BTC	0.3504
42	61	BTC	0.9682
42	1201	BTC	0.9990
42	1261	BTC	-0.0236
42	1321	BTC	0.9682
42	1381	BTC	-0.9682
42	181	BTC	-0.9955
42	241	BTC	-0.6486
42	301	BTC	-0.9970
42	481	BTC	0.9371
43	1	BTC	0.0044
43	721	BTC	0.7906
43	781	BTC	0.9974
43	841	BTC	0.4549
43	1021	BTC	0.9970
43	1141	BTC	0.4749
43	61	BTC	0.3924
43	1201	BTC	0.9360
43	1261	BTC	-0.3265
43	1321	BTC	0.9716
43	1381	BTC	0.6705
43	121	BTC	-0.0244
43	241	BTC	0.9843
43	301	BTC	0.0044
43	361	BTC	-0.9970
43	541	BTC	0.8225
44	601	BTC	0.7906
45	781	BTC	0.9682
45	841	BTC	0.9682
45	901	BTC	0.9985
45	961	BTC	0.9682
45	1081	BTC	0.9682
45	1141	BTC	0.5267
45	1261	BTC	0.9985
46	1	BTC	-0.8934
46	121	BTC	0.9747
46	301	BTC	0.9628
47	781	BTC	0.9985
47	841	BTC	0.9982
47	901	BTC	0.9984
47	1021	BTC	0.9882
47	1081	BTC	0.9531
47	1141	BTC	0.9686
47	1201	BTC	0.9955
47	1261	BTC	0.9818
47	1381	BTC	0.5106
47	121	BTC	0.5423
47	241	BTC	0.9920
48	361	BTC	0.9682
48	421	BTC	0.9982
48	481	BTC	0.9682
25	601	BTC	0.9766
25	721	BTC	0.9818
25	781	BTC	0.7717
25	841	BTC	-0.8126
25	901	BTC	0.9682
25	961	BTC	0.9818
25	1021	BTC	0.6808
25	1141	BTC	0.8862
25	1201	BTC	0.9705
25	1261	BTC	-0.5859
25	1321	BTC	0.9986
25	121	BTC	-0.5994
25	361	BTC	0.9840
25	481	BTC	0.9840
26	1141	BTC	-0.1484
26	1201	BTC	-0.9993
26	1261	BTC	-0.7269
26	1321	BTC	-0.0643
26	1381	BTC	0.9468
26	121	BTC	-0.9970
26	361	BTC	0.9840
26	421	BTC	-0.9944
27	601	BTC	-0.6597
27	661	BTC	-0.9978
27	721	BTC	-0.0160
27	781	BTC	-0.5574
27	841	BTC	-0.3362
27	901	BTC	0.0737
27	961	BTC	-0.0175
27	1021	BTC	-0.0144
27	1081	BTC	0.9834
27	1141	BTC	0.9771
27	1201	BTC	0.4062
27	1261	BTC	-0.7506
27	1381	BTC	0.4108
27	241	BTC	-0.0150
27	301	BTC	-0.5574
27	481	BTC	-0.5267
27	541	BTC	-0.5859
28	601	BTC	0.0534
28	661	BTC	0.9726
28	721	BTC	0.6434
28	781	BTC	0.2559
28	841	BTC	0.4191
28	901	BTC	0.3034
28	961	BTC	0.3082
28	1021	BTC	0.9842
28	1081	BTC	-0.0439
28	1141	BTC	0.0000
28	1201	BTC	0.3074
28	1261	BTC	0.4561
28	1321	BTC	0.3177
28	1381	BTC	0.4547
28	241	BTC	0.4397
28	301	BTC	0.8934
28	361	BTC	-0.5574
28	421	BTC	0.7906
28	481	BTC	0.5267
29	1	BTC	0.3721
29	601	BTC	-0.0008
29	661	BTC	0.4266
29	721	BTC	0.3280
29	781	BTC	0.4266
29	841	BTC	0.3280
29	901	BTC	0.0015
29	961	BTC	0.0015
29	1021	BTC	-0.0009
29	1081	BTC	-0.0008
29	1141	BTC	0.0017
29	61	BTC	0.0000
29	1201	BTC	0.0015
29	1261	BTC	0.0078
29	1321	BTC	0.9985
29	1381	BTC	0.2268
29	121	BTC	-0.2064
29	181	BTC	0.0000
29	241	BTC	0.9970
29	301	BTC	0.0015
29	361	BTC	0.9325
29	421	BTC	0.0015
29	481	BTC	-0.0008
29	541	BTC	0.0015
30	1	BTC	-0.1998
30	601	BTC	0.3433
30	661	BTC	0.3115
30	721	BTC	0.0675
30	781	BTC	0.6249
30	961	BTC	-0.0862
30	1021	BTC	0.9882
30	1081	BTC	-0.7906
30	1141	BTC	-0.0212
30	61	BTC	0.5719
30	1261	BTC	0.3499
30	121	BTC	0.9682
30	241	BTC	-0.0007
30	301	BTC	-0.0007
30	361	BTC	-0.5574
30	421	BTC	-0.5574
31	601	BTC	-0.9993
31	661	BTC	-0.4512
31	721	BTC	0.0064
31	781	BTC	-0.2726
31	841	BTC	0.6124
31	901	BTC	0.3246
31	961	BTC	0.7906
31	1021	BTC	-0.2407
31	1081	BTC	-0.9993
31	1141	BTC	0.4331
31	61	BTC	0.9970
31	1201	BTC	-0.9325
31	181	BTC	0.7906
31	301	BTC	0.9970
31	541	BTC	0.5574
32	601	BTC	-0.9968
32	661	BTC	0.3688
32	721	BTC	0.9712
32	781	BTC	0.0113
32	841	BTC	-0.9993
32	901	BTC	0.9818
32	961	BTC	0.0982
32	1021	BTC	0.9682
32	1081	BTC	-0.0481
32	1141	BTC	-0.6705
32	61	BTC	0.4108
32	1201	BTC	0.5994
32	1261	BTC	0.5267
32	1321	BTC	0.2268
32	241	BTC	0.4723
32	361	BTC	-0.5574
32	421	BTC	0.1131
32	481	BTC	0.0550
32	541	BTC	0.6124
33	1	BTC	0.2488
33	61	BTC	-0.6808
33	121	BTC	-0.5859
33	181	BTC	-0.6705
33	301	BTC	-0.9997
33	361	BTC	-0.6705
33	421	BTC	0.9477
33	541	BTC	-0.3371
35	721	BTC	0.5046
35	781	BTC	-0.0010
35	841	BTC	0.9682
35	901	BTC	0.4199
35	961	BTC	0.9985
35	1021	BTC	0.9985
35	1081	BTC	0.2312
35	1201	BTC	0.9628
35	1261	BTC	0.9970
35	1321	BTC	0.0082
35	1381	BTC	0.5994
36	1	BTC	0.9325
36	601	BTC	0.9682
36	721	BTC	-0.0011
36	781	BTC	0.7430
36	841	BTC	0.9781
36	1201	BTC	0.8934
36	1261	BTC	0.9682
36	1321	BTC	0.7964
36	1381	BTC	0.2047
36	241	BTC	0.9001
36	301	BTC	-0.7650
36	481	BTC	0.0710
36	541	BTC	-0.0339
37	1	BTC	0.9325
37	601	BTC	0.9985
37	721	BTC	0.3876
37	781	BTC	0.0086
37	841	BTC	0.0377
37	901	BTC	0.0448
37	961	BTC	0.9957
37	1021	BTC	0.4098
37	1081	BTC	0.3873
37	1141	BTC	0.9682
37	1201	BTC	0.6369
37	1261	BTC	0.9758
37	1321	BTC	0.9758
37	1381	BTC	0.7096
37	121	BTC	0.9970
37	181	BTC	-0.8308
37	241	BTC	0.9853
37	361	BTC	0.6166
37	541	BTC	0.9549
38	601	BTC	0.9918
38	661	BTC	0.9682
38	721	BTC	0.7906
38	841	BTC	0.4000
38	901	BTC	0.4178
38	961	BTC	0.3873
38	121	BTC	0.5719
38	301	BTC	-0.0027
38	481	BTC	-0.5423
38	541	BTC	0.3669
39	661	BTC	-0.2719
39	721	BTC	0.9819
39	781	BTC	0.9985
39	841	BTC	0.4412
39	901	BTC	0.9990
39	961	BTC	0.9985
39	1021	BTC	0.9990
39	1081	BTC	0.3082
39	1141	BTC	0.9682
39	1201	BTC	0.9984
39	1261	BTC	0.6486
39	301	BTC	0.2273
39	361	BTC	0.9719
39	421	BTC	0.9823
39	541	BTC	0.7506
40	1	BTC	0.9826
40	661	BTC	0.9984
40	721	BTC	0.9818
40	781	BTC	0.9818
40	841	BTC	0.9818
40	901	BTC	0.9995
40	961	BTC	0.3087
40	1021	BTC	0.1306
40	1081	BTC	0.1153
40	1141	BTC	0.1296
40	1201	BTC	0.0303
40	1261	BTC	0.0303
40	1321	BTC	0.0303
40	1381	BTC	0.2889
40	361	BTC	0.9792
40	541	BTC	0.9732
41	1	BTC	0.4879
41	601	BTC	0.7430
41	61	BTC	0.0164
41	121	BTC	-0.0059
41	181	BTC	-0.0059
41	241	BTC	0.0136
41	301	BTC	0.0303
41	361	BTC	0.0303
41	421	BTC	0.9985
41	481	BTC	0.9818
41	541	BTC	0.8934
42	1	BTC	0.5267
42	661	BTC	0.8885
42	721	BTC	0.9970
42	781	BTC	0.9682
42	841	BTC	0.9990
42	901	BTC	-0.1282
42	961	BTC	0.9970
42	1021	BTC	0.9986
42	1081	BTC	0.3178
42	1141	BTC	0.3504
42	61	BTC	0.9682
42	1201	BTC	0.9990
42	1261	BTC	-0.0236
42	1321	BTC	0.9682
42	1381	BTC	-0.9682
42	181	BTC	-0.9955
42	241	BTC	-0.6486
42	301	BTC	-0.9970
42	481	BTC	0.9371
43	1	BTC	0.0044
43	721	BTC	0.7906
43	781	BTC	0.9974
43	841	BTC	0.4549
43	1021	BTC	0.9970
43	1141	BTC	0.4749
43	61	BTC	0.3924
43	1201	BTC	0.9360
43	1261	BTC	-0.3265
43	1321	BTC	0.9716
43	1381	BTC	0.6705
43	121	BTC	-0.0244
43	241	BTC	0.9843
43	301	BTC	0.0044
43	361	BTC	-0.9970
43	541	BTC	0.8225
44	601	BTC	0.7906
45	781	BTC	0.9682
45	841	BTC	0.9682
45	901	BTC	0.9985
45	961	BTC	0.9682
45	1081	BTC	0.9682
45	1141	BTC	0.5267
45	1261	BTC	0.9985
46	1	BTC	-0.8934
46	121	BTC	0.9747
46	301	BTC	0.9628
47	781	BTC	0.9985
47	841	BTC	0.9982
47	901	BTC	0.9984
47	1021	BTC	0.9882
47	1081	BTC	0.9531
47	1141	BTC	0.9686
47	1201	BTC	0.9955
47	1261	BTC	0.9818
47	1381	BTC	0.5106
47	121	BTC	0.5423
47	241	BTC	0.9920
48	721	BTC	0.9981
48	1021	BTC	-0.9992
48	1141	BTC	0.9985
48	1201	BTC	0.3823
48	1321	BTC	-0.7003
48	1381	BTC	0.7906
48	361	BTC	0.9682
48	421	BTC	0.9982
48	481	BTC	0.9682
49	1	BTC	0.9858
49	661	BTC	-0.8834
49	721	BTC	-0.5859
49	781	BTC	-0.9994
49	841	BTC	0.9100
49	901	BTC	-0.9993
49	181	BTC	-0.9992
49	301	BTC	0.5106
49	541	BTC	0.9803
25	601	BTC	0.9766
25	721	BTC	0.9818
25	781	BTC	0.7717
25	841	BTC	-0.8126
25	901	BTC	0.9682
25	961	BTC	0.9818
25	1021	BTC	0.6808
25	1141	BTC	0.8862
25	1201	BTC	0.9705
25	1261	BTC	-0.5859
25	1321	BTC	0.9986
25	121	BTC	-0.5994
25	361	BTC	0.9840
25	481	BTC	0.9840
26	1141	BTC	-0.1484
26	1201	BTC	-0.9993
26	1261	BTC	-0.7269
26	1321	BTC	-0.0643
26	1381	BTC	0.9468
26	121	BTC	-0.9970
26	361	BTC	0.9840
26	421	BTC	-0.9944
27	601	BTC	-0.6597
27	661	BTC	-0.9978
27	721	BTC	-0.0160
27	781	BTC	-0.5574
27	841	BTC	-0.3362
27	901	BTC	0.0737
27	961	BTC	-0.0175
27	1021	BTC	-0.0144
27	1081	BTC	0.9834
27	1141	BTC	0.9771
27	1201	BTC	0.4062
27	1261	BTC	-0.7506
27	1381	BTC	0.4108
27	241	BTC	-0.0150
27	301	BTC	-0.5574
27	481	BTC	-0.5267
27	541	BTC	-0.5859
28	601	BTC	0.0534
28	661	BTC	0.9726
28	721	BTC	0.6434
28	781	BTC	0.2559
28	841	BTC	0.4191
28	901	BTC	0.3034
28	961	BTC	0.3082
28	1021	BTC	0.9842
28	1081	BTC	-0.0439
28	1141	BTC	0.0000
28	1201	BTC	0.3074
28	1261	BTC	0.4561
28	1321	BTC	0.3177
28	1381	BTC	0.4547
28	241	BTC	0.4397
28	301	BTC	0.8934
28	361	BTC	-0.5574
28	421	BTC	0.7906
28	481	BTC	0.5267
29	1	BTC	0.3721
29	601	BTC	-0.0008
29	661	BTC	0.4266
29	721	BTC	0.3280
29	781	BTC	0.4266
29	841	BTC	0.3280
29	901	BTC	0.0015
29	961	BTC	0.0015
29	1021	BTC	-0.0009
29	1081	BTC	-0.0008
29	1141	BTC	0.0017
29	61	BTC	0.0000
29	1201	BTC	0.0015
29	1261	BTC	0.0078
29	1321	BTC	0.9985
29	1381	BTC	0.2268
29	121	BTC	-0.2064
29	181	BTC	0.0000
29	241	BTC	0.9970
29	301	BTC	0.0015
29	361	BTC	0.9325
29	421	BTC	0.0015
29	481	BTC	-0.0008
29	541	BTC	0.0015
30	1	BTC	-0.1998
30	601	BTC	0.3433
30	661	BTC	0.3115
30	721	BTC	0.0675
30	781	BTC	0.6249
30	961	BTC	-0.0862
30	1021	BTC	0.9882
30	1081	BTC	-0.7906
30	1141	BTC	-0.0212
30	61	BTC	0.5719
30	1261	BTC	0.3499
30	121	BTC	0.9682
30	241	BTC	-0.0007
30	301	BTC	-0.0007
30	361	BTC	-0.5574
30	421	BTC	-0.5574
31	601	BTC	-0.9993
31	661	BTC	-0.4512
31	721	BTC	0.0064
31	781	BTC	-0.2726
31	841	BTC	0.6124
31	901	BTC	0.3246
31	961	BTC	0.7906
31	1021	BTC	-0.2407
31	1081	BTC	-0.9993
31	1141	BTC	0.4331
31	61	BTC	0.9970
31	1201	BTC	-0.9325
31	181	BTC	0.7906
31	301	BTC	0.9970
31	541	BTC	0.5574
32	601	BTC	-0.9968
32	661	BTC	0.3688
32	721	BTC	0.9712
32	781	BTC	0.0113
32	841	BTC	-0.9993
32	901	BTC	0.9818
32	961	BTC	0.0982
32	1021	BTC	0.9682
32	1081	BTC	-0.0481
32	1141	BTC	-0.6705
32	61	BTC	0.4108
32	1201	BTC	0.5994
32	1261	BTC	0.5267
32	1321	BTC	0.2268
32	241	BTC	0.4723
32	361	BTC	-0.5574
32	421	BTC	0.1131
32	481	BTC	0.0550
32	541	BTC	0.6124
33	1	BTC	0.2488
33	61	BTC	-0.6808
33	121	BTC	-0.5859
33	181	BTC	-0.6705
33	301	BTC	-0.9997
33	361	BTC	-0.6705
33	421	BTC	0.9477
33	541	BTC	-0.3371
35	721	BTC	0.5046
35	781	BTC	-0.0010
35	841	BTC	0.9682
35	901	BTC	0.4199
35	961	BTC	0.9985
35	1021	BTC	0.9985
35	1081	BTC	0.2312
35	1201	BTC	0.9628
35	1261	BTC	0.9970
35	1321	BTC	0.0082
35	1381	BTC	0.5994
36	1	BTC	0.9325
36	601	BTC	0.9682
36	721	BTC	-0.0011
36	781	BTC	0.7430
36	841	BTC	0.9781
36	1201	BTC	0.8934
36	1261	BTC	0.9682
36	1321	BTC	0.7964
36	1381	BTC	0.2047
36	241	BTC	0.9001
36	301	BTC	-0.7650
36	481	BTC	0.0710
36	541	BTC	-0.0339
37	1	BTC	0.9325
37	601	BTC	0.9985
37	721	BTC	0.3876
37	781	BTC	0.0086
37	841	BTC	0.0377
37	901	BTC	0.0448
37	961	BTC	0.9957
37	1021	BTC	0.4098
37	1081	BTC	0.3873
37	1141	BTC	0.9682
37	1201	BTC	0.6369
37	1261	BTC	0.9758
37	1321	BTC	0.9758
37	1381	BTC	0.7096
37	121	BTC	0.9970
37	181	BTC	-0.8308
37	241	BTC	0.9853
37	361	BTC	0.6166
37	541	BTC	0.9549
38	601	BTC	0.9918
38	661	BTC	0.9682
38	721	BTC	0.7906
38	841	BTC	0.4000
38	901	BTC	0.4178
38	961	BTC	0.3873
38	121	BTC	0.5719
38	301	BTC	-0.0027
38	481	BTC	-0.5423
38	541	BTC	0.3669
39	661	BTC	-0.2719
39	721	BTC	0.9819
39	781	BTC	0.9985
39	841	BTC	0.4412
39	901	BTC	0.9990
39	961	BTC	0.9985
39	1021	BTC	0.9990
39	1081	BTC	0.3082
39	1141	BTC	0.9682
39	1201	BTC	0.9984
39	1261	BTC	0.6486
39	301	BTC	0.2273
39	361	BTC	0.9719
39	421	BTC	0.9823
39	541	BTC	0.7506
40	1	BTC	0.9826
40	661	BTC	0.9984
40	721	BTC	0.9818
40	781	BTC	0.9818
40	841	BTC	0.9818
40	901	BTC	0.9995
40	961	BTC	0.3087
40	1021	BTC	0.1306
40	1081	BTC	0.1153
40	1141	BTC	0.1296
40	1201	BTC	0.0303
40	1261	BTC	0.0303
40	1321	BTC	0.0303
40	1381	BTC	0.2889
40	361	BTC	0.9792
40	541	BTC	0.9732
41	1	BTC	0.4879
41	601	BTC	0.7430
41	61	BTC	0.0164
41	121	BTC	-0.0059
41	181	BTC	-0.0059
41	241	BTC	0.0136
41	301	BTC	0.0303
41	361	BTC	0.0303
41	421	BTC	0.9985
41	481	BTC	0.9818
41	541	BTC	0.8934
42	1	BTC	0.5267
42	661	BTC	0.8885
42	721	BTC	0.9970
42	781	BTC	0.9682
42	841	BTC	0.9990
42	901	BTC	-0.1282
42	961	BTC	0.9970
42	1021	BTC	0.9986
42	1081	BTC	0.3178
42	1141	BTC	0.3504
42	61	BTC	0.9682
42	1201	BTC	0.9990
42	1261	BTC	-0.0236
42	1321	BTC	0.9682
42	1381	BTC	-0.9682
42	181	BTC	-0.9955
42	241	BTC	-0.6486
42	301	BTC	-0.9970
42	481	BTC	0.9371
43	1	BTC	0.0044
43	721	BTC	0.7906
43	781	BTC	0.9974
43	841	BTC	0.4549
43	1021	BTC	0.9970
43	1141	BTC	0.4749
43	61	BTC	0.3924
43	1201	BTC	0.9360
43	1261	BTC	-0.3265
43	1321	BTC	0.9716
43	1381	BTC	0.6705
43	121	BTC	-0.0244
43	241	BTC	0.9843
43	301	BTC	0.0044
43	361	BTC	-0.9970
43	541	BTC	0.8225
44	601	BTC	0.7906
45	781	BTC	0.9682
45	841	BTC	0.9682
45	901	BTC	0.9985
45	961	BTC	0.9682
45	1081	BTC	0.9682
45	1141	BTC	0.5267
45	1261	BTC	0.9985
46	1	BTC	-0.8934
46	121	BTC	0.9747
46	301	BTC	0.9628
47	781	BTC	0.9985
47	841	BTC	0.9982
47	901	BTC	0.9984
47	1021	BTC	0.9882
47	1081	BTC	0.9531
47	1141	BTC	0.9686
47	1201	BTC	0.9955
47	1261	BTC	0.9818
47	1381	BTC	0.5106
47	121	BTC	0.5423
47	241	BTC	0.9920
48	721	BTC	0.9981
48	1021	BTC	-0.9992
48	1141	BTC	0.9985
48	1201	BTC	0.3823
48	1321	BTC	-0.7003
48	1381	BTC	0.7906
48	361	BTC	0.9682
48	421	BTC	0.9982
48	481	BTC	0.9682
49	1	BTC	0.9858
49	661	BTC	0.0984
49	721	BTC	0.1110
49	781	BTC	-0.9994
49	841	BTC	0.9100
49	901	BTC	-0.4726
49	1021	BTC	-0.9953
49	1081	BTC	-0.9992
49	1201	BTC	0.6369
49	1261	BTC	-0.0292
49	1321	BTC	0.7003
49	181	BTC	-0.9992
49	301	BTC	0.5106
49	541	BTC	0.9803
50	1	BTC	0.9325
50	181	BTC	0.9493
50	361	BTC	0.0076
25	601	BTC	0.9766
25	721	BTC	0.9818
25	781	BTC	0.7717
25	841	BTC	-0.8126
25	901	BTC	0.9682
25	961	BTC	0.9818
25	1021	BTC	0.6808
25	1141	BTC	0.8862
25	1201	BTC	0.9705
25	1261	BTC	-0.5859
25	1321	BTC	0.9986
25	121	BTC	-0.5994
25	361	BTC	0.9840
25	481	BTC	0.9840
26	1141	BTC	-0.1484
26	1201	BTC	-0.9993
26	1261	BTC	-0.7269
26	1321	BTC	-0.0643
26	1381	BTC	0.9468
26	121	BTC	-0.9970
26	361	BTC	0.9840
26	421	BTC	-0.9944
27	601	BTC	-0.6597
27	661	BTC	-0.9978
27	721	BTC	-0.0160
27	781	BTC	-0.5574
27	841	BTC	-0.3362
27	901	BTC	0.0737
27	961	BTC	-0.0175
27	1021	BTC	-0.0144
27	1081	BTC	0.9834
27	1141	BTC	0.9771
27	1201	BTC	0.4062
27	1261	BTC	-0.7506
27	1381	BTC	0.4108
27	241	BTC	-0.0150
27	301	BTC	-0.5574
27	481	BTC	-0.5267
27	541	BTC	-0.5859
28	601	BTC	0.0534
28	661	BTC	0.9726
28	721	BTC	0.6434
28	781	BTC	0.2559
28	841	BTC	0.4191
28	901	BTC	0.3034
28	961	BTC	0.3082
28	1021	BTC	0.9842
28	1081	BTC	-0.0439
28	1141	BTC	0.0000
28	1201	BTC	0.3074
28	1261	BTC	0.4561
28	1321	BTC	0.3177
28	1381	BTC	0.4547
28	241	BTC	0.4397
28	301	BTC	0.8934
28	361	BTC	-0.5574
28	421	BTC	0.7906
28	481	BTC	0.5267
29	1	BTC	0.3721
29	601	BTC	-0.0008
29	661	BTC	0.4266
29	721	BTC	0.3280
29	781	BTC	0.4266
29	841	BTC	0.3280
29	901	BTC	0.0015
29	961	BTC	0.0015
29	1021	BTC	-0.0009
29	1081	BTC	-0.0008
29	1141	BTC	0.0017
29	61	BTC	0.0000
29	1201	BTC	0.0015
29	1261	BTC	0.0078
29	1321	BTC	0.9985
29	1381	BTC	0.2268
29	121	BTC	-0.2064
29	181	BTC	0.0000
29	241	BTC	0.9970
29	301	BTC	0.0015
29	361	BTC	0.9325
29	421	BTC	0.0015
29	481	BTC	-0.0008
29	541	BTC	0.0015
30	1	BTC	-0.1998
30	601	BTC	0.3433
30	661	BTC	0.3115
30	721	BTC	0.0675
30	781	BTC	0.6249
30	961	BTC	-0.0862
30	1021	BTC	0.9882
30	1081	BTC	-0.7906
30	1141	BTC	-0.0212
30	61	BTC	0.5719
30	1261	BTC	0.3499
30	121	BTC	0.9682
30	241	BTC	-0.0007
30	301	BTC	-0.0007
30	361	BTC	-0.5574
30	421	BTC	-0.5574
31	601	BTC	-0.9993
31	661	BTC	-0.4512
31	721	BTC	0.0064
31	781	BTC	-0.2726
31	841	BTC	0.6124
31	901	BTC	0.3246
31	961	BTC	0.7906
31	1021	BTC	-0.2407
31	1081	BTC	-0.9993
31	1141	BTC	0.4331
31	61	BTC	0.9970
31	1201	BTC	-0.9325
31	181	BTC	0.7906
31	301	BTC	0.9970
31	541	BTC	0.5574
32	601	BTC	-0.9968
32	661	BTC	0.3688
32	721	BTC	0.9712
32	781	BTC	0.0113
32	841	BTC	-0.9993
32	901	BTC	0.9818
32	961	BTC	0.0982
32	1021	BTC	0.9682
32	1081	BTC	-0.0481
32	1141	BTC	-0.6705
32	61	BTC	0.4108
32	1201	BTC	0.5994
32	1261	BTC	0.5267
32	1321	BTC	0.2268
32	241	BTC	0.4723
32	361	BTC	-0.5574
32	421	BTC	0.1131
32	481	BTC	0.0550
32	541	BTC	0.6124
33	1	BTC	0.2488
33	61	BTC	-0.6808
33	121	BTC	-0.5859
33	181	BTC	-0.6705
33	301	BTC	-0.9997
33	361	BTC	-0.6705
33	421	BTC	0.9477
33	541	BTC	-0.3371
35	721	BTC	0.5046
35	781	BTC	-0.0010
35	841	BTC	0.9682
35	901	BTC	0.4199
35	961	BTC	0.9985
35	1021	BTC	0.9985
35	1081	BTC	0.2312
35	1201	BTC	0.9628
35	1261	BTC	0.9970
35	1321	BTC	0.0082
35	1381	BTC	0.5994
36	1	BTC	0.9325
36	601	BTC	0.9682
36	721	BTC	-0.0011
36	781	BTC	0.7430
36	841	BTC	0.9781
36	1201	BTC	0.8934
36	1261	BTC	0.9682
36	1321	BTC	0.7964
36	1381	BTC	0.2047
36	241	BTC	0.9001
36	301	BTC	-0.7650
36	481	BTC	0.0710
36	541	BTC	-0.0339
37	1	BTC	0.9325
37	601	BTC	0.9985
37	721	BTC	0.3876
37	781	BTC	0.0086
37	841	BTC	0.0377
37	901	BTC	0.0448
37	961	BTC	0.9957
37	1021	BTC	0.4098
37	1081	BTC	0.3873
37	1141	BTC	0.9682
37	1201	BTC	0.6369
37	1261	BTC	0.9758
37	1321	BTC	0.9758
37	1381	BTC	0.7096
37	121	BTC	0.9970
37	181	BTC	-0.8308
37	241	BTC	0.9853
37	361	BTC	0.6166
37	541	BTC	0.9549
38	601	BTC	0.9918
38	661	BTC	0.9682
38	721	BTC	0.7906
38	841	BTC	0.4000
38	901	BTC	0.4178
38	961	BTC	0.3873
38	121	BTC	0.5719
38	301	BTC	-0.0027
38	481	BTC	-0.5423
38	541	BTC	0.3669
39	661	BTC	-0.2719
39	721	BTC	0.9819
39	781	BTC	0.9985
39	841	BTC	0.4412
39	901	BTC	0.9990
39	961	BTC	0.9985
39	1021	BTC	0.9990
39	1081	BTC	0.3082
39	1141	BTC	0.9682
39	1201	BTC	0.9984
39	1261	BTC	0.6486
39	301	BTC	0.2273
39	361	BTC	0.9719
39	421	BTC	0.9823
39	541	BTC	0.7506
40	1	BTC	0.9826
40	661	BTC	0.9984
40	721	BTC	0.9818
40	781	BTC	0.9818
40	841	BTC	0.9818
40	901	BTC	0.9995
40	961	BTC	0.3087
40	1021	BTC	0.1306
40	1081	BTC	0.1153
40	1141	BTC	0.1296
40	1201	BTC	0.0303
40	1261	BTC	0.0303
40	1321	BTC	0.0303
40	1381	BTC	0.2889
40	361	BTC	0.9792
40	541	BTC	0.9732
41	1	BTC	0.4879
41	601	BTC	0.7430
41	61	BTC	0.0164
41	121	BTC	-0.0059
41	181	BTC	-0.0059
41	241	BTC	0.0136
41	301	BTC	0.0303
41	361	BTC	0.0303
41	421	BTC	0.9985
41	481	BTC	0.9818
41	541	BTC	0.8934
42	1	BTC	0.5267
42	661	BTC	0.8885
42	721	BTC	0.9970
42	781	BTC	0.9682
42	841	BTC	0.9990
42	901	BTC	-0.1282
42	961	BTC	0.9970
42	1021	BTC	0.9986
42	1081	BTC	0.3178
42	1141	BTC	0.3504
42	61	BTC	0.9682
42	1201	BTC	0.9990
42	1261	BTC	-0.0236
42	1321	BTC	0.9682
42	1381	BTC	-0.9682
42	181	BTC	-0.9955
42	241	BTC	-0.6486
42	301	BTC	-0.9970
42	481	BTC	0.9371
43	1	BTC	0.0044
43	721	BTC	0.7906
43	781	BTC	0.9974
43	841	BTC	0.4549
43	1021	BTC	0.9970
43	1141	BTC	0.4749
43	61	BTC	0.3924
43	1201	BTC	0.9360
43	1261	BTC	-0.3265
43	1321	BTC	0.9716
43	1381	BTC	0.6705
43	121	BTC	-0.0244
43	241	BTC	0.9843
43	301	BTC	0.0044
43	361	BTC	-0.9970
43	541	BTC	0.8225
44	601	BTC	0.7906
45	781	BTC	0.9682
45	841	BTC	0.9682
45	901	BTC	0.9985
45	961	BTC	0.9682
45	1081	BTC	0.9682
45	1141	BTC	0.5267
45	1261	BTC	0.9985
46	1	BTC	-0.8934
46	121	BTC	0.9747
46	301	BTC	0.9628
47	781	BTC	0.9985
47	841	BTC	0.9982
47	901	BTC	0.9984
47	1021	BTC	0.9882
47	1081	BTC	0.9531
47	1141	BTC	0.9686
47	1201	BTC	0.9955
47	1261	BTC	0.9818
47	1381	BTC	0.5106
47	121	BTC	0.5423
47	241	BTC	0.9920
48	721	BTC	0.9981
48	1021	BTC	-0.9992
48	1141	BTC	0.9985
48	1201	BTC	0.3823
48	1321	BTC	-0.7003
48	1381	BTC	0.7906
48	361	BTC	0.9682
48	421	BTC	0.9982
48	481	BTC	0.9682
49	1	BTC	0.9858
49	661	BTC	0.0984
49	721	BTC	0.1110
49	781	BTC	-0.9994
49	841	BTC	0.9100
49	901	BTC	-0.4726
49	1021	BTC	-0.9953
49	1081	BTC	-0.9992
49	1201	BTC	0.6369
49	1261	BTC	-0.0292
49	1321	BTC	0.7003
49	181	BTC	-0.9992
49	301	BTC	0.5106
49	541	BTC	0.9803
50	1	BTC	0.9325
50	181	BTC	0.9493
50	361	BTC	0.0076
52	721	BTC	0.5984
52	781	BTC	0.9995
52	901	BTC	0.6369
52	961	BTC	0.7906
52	1081	BTC	0.9702
52	1141	BTC	0.9729
52	1201	BTC	0.9818
53	1	BTC	-0.2808
53	601	BTC	-0.0007
53	661	BTC	-0.0311
53	121	BTC	0.9837
53	181	BTC	-0.8652
53	301	BTC	0.9657
53	361	BTC	0.9986
53	421	BTC	0.9702
53	481	BTC	0.9729
53	541	BTC	0.5859
25	601	BTC	0.9766
25	721	BTC	0.9818
25	781	BTC	0.7717
25	841	BTC	-0.8126
25	901	BTC	0.9682
25	961	BTC	0.9818
25	1021	BTC	0.6808
25	1141	BTC	0.8862
25	1201	BTC	0.9705
25	1261	BTC	-0.5859
25	1321	BTC	0.9986
25	121	BTC	-0.5994
25	361	BTC	0.9840
25	481	BTC	0.9840
26	1141	BTC	-0.1484
26	1201	BTC	-0.9993
26	1261	BTC	-0.7269
26	1321	BTC	-0.0643
26	1381	BTC	0.9468
26	121	BTC	-0.9970
26	361	BTC	0.9840
26	421	BTC	-0.9944
27	601	BTC	-0.6597
27	661	BTC	-0.9978
27	721	BTC	-0.0160
27	781	BTC	-0.5574
27	841	BTC	-0.3362
27	901	BTC	0.0737
27	961	BTC	-0.0175
27	1021	BTC	-0.0144
27	1081	BTC	0.9834
27	1141	BTC	0.9771
27	1201	BTC	0.4062
27	1261	BTC	-0.7506
27	1381	BTC	0.4108
27	241	BTC	-0.0150
27	301	BTC	-0.5574
27	481	BTC	-0.5267
27	541	BTC	-0.5859
28	601	BTC	0.0534
28	661	BTC	0.9726
28	721	BTC	0.6434
28	781	BTC	0.2559
28	841	BTC	0.4191
28	901	BTC	0.3034
28	961	BTC	0.3082
28	1021	BTC	0.9842
28	1081	BTC	-0.0439
28	1141	BTC	0.0000
28	1201	BTC	0.3074
28	1261	BTC	0.4561
28	1321	BTC	0.3177
28	1381	BTC	0.4547
28	241	BTC	0.4397
28	301	BTC	0.8934
28	361	BTC	-0.5574
28	421	BTC	0.7906
28	481	BTC	0.5267
29	1	BTC	0.3721
29	601	BTC	-0.0008
29	661	BTC	0.4266
29	721	BTC	0.3280
29	781	BTC	0.4266
29	841	BTC	0.3280
29	901	BTC	0.0015
29	961	BTC	0.0015
29	1021	BTC	-0.0009
29	1081	BTC	-0.0008
29	1141	BTC	0.0017
29	61	BTC	0.0000
29	1201	BTC	0.0015
29	1261	BTC	0.0078
29	1321	BTC	0.9985
29	1381	BTC	0.2268
29	121	BTC	-0.2064
29	181	BTC	0.0000
29	241	BTC	0.9970
29	301	BTC	0.0015
29	361	BTC	0.9325
29	421	BTC	0.0015
29	481	BTC	-0.0008
29	541	BTC	0.0015
30	1	BTC	-0.1998
30	601	BTC	0.3433
30	661	BTC	0.3115
30	721	BTC	0.0675
30	781	BTC	0.6249
30	961	BTC	-0.0862
30	1021	BTC	0.9882
30	1081	BTC	-0.7906
30	1141	BTC	-0.0212
30	61	BTC	0.5719
30	1261	BTC	0.3499
30	121	BTC	0.9682
30	241	BTC	-0.0007
30	301	BTC	-0.0007
30	361	BTC	-0.5574
30	421	BTC	-0.5574
31	601	BTC	-0.9993
31	661	BTC	-0.4512
31	721	BTC	0.0064
31	781	BTC	-0.2726
31	841	BTC	0.6124
31	901	BTC	0.3246
31	961	BTC	0.7906
31	1021	BTC	-0.2407
31	1081	BTC	-0.9993
31	1141	BTC	0.4331
31	61	BTC	0.9970
31	1201	BTC	-0.9325
31	181	BTC	0.7906
31	301	BTC	0.9970
31	541	BTC	0.5574
32	601	BTC	-0.9968
32	661	BTC	0.3688
32	721	BTC	0.9712
32	781	BTC	0.0113
32	841	BTC	-0.9993
32	901	BTC	0.9818
32	961	BTC	0.0982
32	1021	BTC	0.9682
32	1081	BTC	-0.0481
32	1141	BTC	-0.6705
32	61	BTC	0.4108
32	1201	BTC	0.5994
32	1261	BTC	0.5267
32	1321	BTC	0.2268
32	241	BTC	0.4723
32	361	BTC	-0.5574
32	421	BTC	0.1131
32	481	BTC	0.0550
32	541	BTC	0.6124
33	1	BTC	0.2488
33	61	BTC	-0.6808
33	121	BTC	-0.5859
33	181	BTC	-0.6705
33	301	BTC	-0.9997
33	361	BTC	-0.6705
33	421	BTC	0.9477
33	541	BTC	-0.3371
35	721	BTC	0.5046
35	781	BTC	-0.0010
35	841	BTC	0.9682
35	901	BTC	0.4199
35	961	BTC	0.9985
35	1021	BTC	0.9985
35	1081	BTC	0.2312
35	1201	BTC	0.9628
35	1261	BTC	0.9970
35	1321	BTC	0.0082
35	1381	BTC	0.5994
36	1	BTC	0.9325
36	601	BTC	0.9682
36	721	BTC	-0.0011
36	781	BTC	0.7430
36	841	BTC	0.9781
36	1201	BTC	0.8934
36	1261	BTC	0.9682
36	1321	BTC	0.7964
36	1381	BTC	0.2047
36	241	BTC	0.9001
36	301	BTC	-0.7650
36	481	BTC	0.0710
36	541	BTC	-0.0339
37	1	BTC	0.9325
37	601	BTC	0.9985
37	721	BTC	0.3876
37	781	BTC	0.0086
37	841	BTC	0.0377
37	901	BTC	0.0448
37	961	BTC	0.9957
37	1021	BTC	0.4098
37	1081	BTC	0.3873
37	1141	BTC	0.9682
37	1201	BTC	0.6369
37	1261	BTC	0.9758
37	1321	BTC	0.9758
37	1381	BTC	0.7096
37	121	BTC	0.9970
37	181	BTC	-0.8308
37	241	BTC	0.9853
37	361	BTC	0.6166
37	541	BTC	0.9549
38	601	BTC	0.9918
38	661	BTC	0.9682
38	721	BTC	0.7906
38	841	BTC	0.4000
38	901	BTC	0.4178
38	961	BTC	0.3873
38	121	BTC	0.5719
38	301	BTC	-0.0027
38	481	BTC	-0.5423
38	541	BTC	0.3669
39	661	BTC	-0.2719
39	721	BTC	0.9819
39	781	BTC	0.9985
39	841	BTC	0.4412
39	901	BTC	0.9990
39	961	BTC	0.9985
39	1021	BTC	0.9990
39	1081	BTC	0.3082
39	1141	BTC	0.9682
39	1201	BTC	0.9984
39	1261	BTC	0.6486
39	301	BTC	0.2273
39	361	BTC	0.9719
39	421	BTC	0.9823
39	541	BTC	0.7506
40	1	BTC	0.9826
40	661	BTC	0.9984
40	721	BTC	0.9818
40	781	BTC	0.9818
40	841	BTC	0.9818
40	901	BTC	0.9995
40	961	BTC	0.3087
40	1021	BTC	0.1306
40	1081	BTC	0.1153
40	1141	BTC	0.1296
40	1201	BTC	0.0303
40	1261	BTC	0.0303
40	1321	BTC	0.0303
40	1381	BTC	0.2889
40	361	BTC	0.9792
40	541	BTC	0.9732
41	1	BTC	0.4879
41	601	BTC	0.7430
41	61	BTC	0.0164
41	121	BTC	-0.0059
41	181	BTC	-0.0059
41	241	BTC	0.0136
41	301	BTC	0.0303
41	361	BTC	0.0303
41	421	BTC	0.9985
41	481	BTC	0.9818
41	541	BTC	0.8934
42	1	BTC	0.5267
42	661	BTC	0.8885
42	721	BTC	0.9970
42	781	BTC	0.9682
42	841	BTC	0.9990
42	901	BTC	-0.1282
42	961	BTC	0.9970
42	1021	BTC	0.9986
42	1081	BTC	0.3178
42	1141	BTC	0.3504
42	61	BTC	0.9682
42	1201	BTC	0.9990
42	1261	BTC	-0.0236
42	1321	BTC	0.9682
42	1381	BTC	-0.9682
42	181	BTC	-0.9955
42	241	BTC	-0.6486
42	301	BTC	-0.9970
42	481	BTC	0.9371
43	1	BTC	0.0044
43	721	BTC	0.7906
43	781	BTC	0.9974
43	841	BTC	0.4549
43	1021	BTC	0.9970
43	1141	BTC	0.4749
43	61	BTC	0.3924
43	1201	BTC	0.9360
43	1261	BTC	-0.3265
43	1321	BTC	0.9716
43	1381	BTC	0.6705
43	121	BTC	-0.0244
43	241	BTC	0.9843
43	301	BTC	0.0044
43	361	BTC	-0.9970
43	541	BTC	0.8225
44	601	BTC	0.7906
45	781	BTC	0.9682
45	841	BTC	0.9682
45	901	BTC	0.9985
45	961	BTC	0.9682
45	1081	BTC	0.9682
45	1141	BTC	0.5267
45	1261	BTC	0.9985
46	1	BTC	-0.8934
46	121	BTC	0.9747
46	301	BTC	0.9628
47	781	BTC	0.9985
47	841	BTC	0.9982
47	901	BTC	0.9984
47	1021	BTC	0.9882
47	1081	BTC	0.9531
47	1141	BTC	0.9686
47	1201	BTC	0.9955
47	1261	BTC	0.9818
47	1381	BTC	0.5106
47	121	BTC	0.5423
47	241	BTC	0.9920
48	721	BTC	0.9981
48	1021	BTC	-0.9992
48	1141	BTC	0.9985
48	1201	BTC	0.3823
48	1321	BTC	-0.7003
48	1381	BTC	0.7906
48	361	BTC	0.9682
48	421	BTC	0.9982
48	481	BTC	0.9682
49	1	BTC	0.9858
49	661	BTC	0.0984
49	721	BTC	0.1110
49	781	BTC	-0.9994
49	841	BTC	0.9100
49	901	BTC	-0.4726
49	1021	BTC	-0.9953
49	1081	BTC	-0.9992
49	1201	BTC	0.6369
49	1261	BTC	-0.0292
49	1321	BTC	0.7003
49	181	BTC	-0.9992
49	301	BTC	0.5106
49	541	BTC	0.9803
50	1	BTC	0.9325
50	181	BTC	0.9493
50	361	BTC	0.0076
52	721	BTC	0.5984
52	781	BTC	0.9995
52	901	BTC	0.6369
52	961	BTC	0.7906
52	1081	BTC	0.9702
52	1141	BTC	0.9729
52	1201	BTC	0.9818
53	1	BTC	-0.2808
53	601	BTC	-0.0007
53	661	BTC	-0.0311
53	121	BTC	0.9837
53	181	BTC	-0.8652
53	301	BTC	0.9657
53	361	BTC	0.9986
53	421	BTC	0.9702
53	481	BTC	0.9729
53	541	BTC	0.5859
25	601	BTC	0.9766
25	721	BTC	0.9818
25	781	BTC	0.7717
25	841	BTC	-0.8126
25	901	BTC	0.9682
25	961	BTC	0.9818
25	1021	BTC	0.6808
25	1141	BTC	0.8862
25	1201	BTC	0.9705
25	1261	BTC	-0.5859
25	1321	BTC	0.9986
25	121	BTC	-0.5994
25	361	BTC	0.9840
25	481	BTC	0.9840
26	1141	BTC	-0.1484
26	1201	BTC	-0.9993
26	1261	BTC	-0.7269
26	1321	BTC	-0.0643
26	1381	BTC	0.9468
26	121	BTC	-0.9970
26	361	BTC	0.9840
26	421	BTC	-0.9944
27	601	BTC	-0.6597
27	661	BTC	-0.9978
27	721	BTC	-0.0160
27	781	BTC	-0.5574
27	841	BTC	-0.3362
27	901	BTC	0.0737
27	961	BTC	-0.0175
27	1021	BTC	-0.0144
27	1081	BTC	0.9834
27	1141	BTC	0.9771
27	1201	BTC	0.4062
27	1261	BTC	-0.7506
27	1381	BTC	0.4108
27	241	BTC	-0.0150
27	301	BTC	-0.5574
27	481	BTC	-0.5267
27	541	BTC	-0.5859
28	601	BTC	0.0534
28	661	BTC	0.9726
28	721	BTC	0.6434
28	781	BTC	0.2559
28	841	BTC	0.4191
28	901	BTC	0.3034
28	961	BTC	0.3082
28	1021	BTC	0.9842
28	1081	BTC	-0.0439
28	1141	BTC	0.0000
28	1201	BTC	0.3074
28	1261	BTC	0.4561
28	1321	BTC	0.3177
28	1381	BTC	0.4547
28	241	BTC	0.4397
28	301	BTC	0.8934
28	361	BTC	-0.5574
28	421	BTC	0.7906
28	481	BTC	0.5267
29	1	BTC	0.3721
29	601	BTC	-0.0008
29	661	BTC	0.4266
29	721	BTC	0.3280
29	781	BTC	0.4266
29	841	BTC	0.3280
29	901	BTC	0.0015
29	961	BTC	0.0015
29	1021	BTC	-0.0009
29	1081	BTC	-0.0008
29	1141	BTC	0.0017
29	61	BTC	0.0000
29	1201	BTC	0.0015
29	1261	BTC	0.0078
29	1321	BTC	0.9985
29	1381	BTC	0.2268
29	121	BTC	-0.2064
29	181	BTC	0.0000
29	241	BTC	0.9970
29	301	BTC	0.0015
29	361	BTC	0.9325
29	421	BTC	0.0015
29	481	BTC	-0.0008
29	541	BTC	0.0015
30	1	BTC	-0.1998
30	601	BTC	0.3433
30	661	BTC	0.3115
30	721	BTC	0.0675
30	781	BTC	0.6249
30	961	BTC	-0.0862
30	1021	BTC	0.9882
30	1081	BTC	-0.7906
30	1141	BTC	-0.0212
30	61	BTC	0.5719
30	1261	BTC	0.3499
30	121	BTC	0.9682
30	241	BTC	-0.0007
30	301	BTC	-0.0007
30	361	BTC	-0.5574
30	421	BTC	-0.5574
31	601	BTC	-0.9993
31	661	BTC	-0.4512
31	721	BTC	0.0064
31	781	BTC	-0.2726
31	841	BTC	0.6124
31	901	BTC	0.3246
31	961	BTC	0.7906
31	1021	BTC	-0.2407
31	1081	BTC	-0.9993
31	1141	BTC	0.4331
31	61	BTC	0.9970
31	1201	BTC	-0.9325
31	181	BTC	0.7906
31	301	BTC	0.9970
31	541	BTC	0.5574
32	601	BTC	-0.9968
32	661	BTC	0.3688
32	721	BTC	0.9712
32	781	BTC	0.0113
32	841	BTC	-0.9993
32	901	BTC	0.9818
32	961	BTC	0.0982
32	1021	BTC	0.9682
32	1081	BTC	-0.0481
32	1141	BTC	-0.6705
32	61	BTC	0.4108
32	1201	BTC	0.5994
32	1261	BTC	0.5267
32	1321	BTC	0.2268
32	241	BTC	0.4723
32	361	BTC	-0.5574
32	421	BTC	0.1131
32	481	BTC	0.0550
32	541	BTC	0.6124
33	1	BTC	0.2488
33	61	BTC	-0.6808
33	121	BTC	-0.5859
33	181	BTC	-0.6705
33	301	BTC	-0.9997
33	361	BTC	-0.6705
33	421	BTC	0.9477
33	541	BTC	-0.3371
35	721	BTC	0.5046
35	781	BTC	-0.0010
35	841	BTC	0.9682
35	901	BTC	0.4199
35	961	BTC	0.9985
35	1021	BTC	0.9985
35	1081	BTC	0.2312
35	1201	BTC	0.9628
35	1261	BTC	0.9970
35	1321	BTC	0.0082
35	1381	BTC	0.5994
36	1	BTC	0.9325
36	601	BTC	0.9682
36	721	BTC	-0.0011
36	781	BTC	0.7430
36	841	BTC	0.9781
36	1201	BTC	0.8934
36	1261	BTC	0.9682
36	1321	BTC	0.7964
36	1381	BTC	0.2047
36	241	BTC	0.9001
36	301	BTC	-0.7650
36	481	BTC	0.0710
36	541	BTC	-0.0339
37	1	BTC	0.9325
37	601	BTC	0.9985
37	721	BTC	0.3876
37	781	BTC	0.0086
37	841	BTC	0.0377
37	901	BTC	0.0448
37	961	BTC	0.9957
37	1021	BTC	0.4098
37	1081	BTC	0.3873
37	1141	BTC	0.9682
37	1201	BTC	0.6369
37	1261	BTC	0.9758
37	1321	BTC	0.9758
37	1381	BTC	0.7096
37	121	BTC	0.9970
37	181	BTC	-0.8308
37	241	BTC	0.9853
37	361	BTC	0.6166
37	541	BTC	0.9549
38	601	BTC	0.9918
38	661	BTC	0.9682
38	721	BTC	0.7906
38	841	BTC	0.4000
38	901	BTC	0.4178
38	961	BTC	0.3873
38	121	BTC	0.5719
38	301	BTC	-0.0027
38	481	BTC	-0.5423
38	541	BTC	0.3669
39	661	BTC	-0.2719
39	721	BTC	0.9819
39	781	BTC	0.9985
39	841	BTC	0.4412
39	901	BTC	0.9990
39	961	BTC	0.9985
39	1021	BTC	0.9990
39	1081	BTC	0.3082
39	1141	BTC	0.9682
39	1201	BTC	0.9984
39	1261	BTC	0.6486
39	301	BTC	0.2273
39	361	BTC	0.9719
39	421	BTC	0.9823
39	541	BTC	0.7506
40	1	BTC	0.9826
40	661	BTC	0.9984
40	721	BTC	0.9818
40	781	BTC	0.9818
40	841	BTC	0.9818
40	901	BTC	0.9995
40	961	BTC	0.3087
40	1021	BTC	0.1306
40	1081	BTC	0.1153
40	1141	BTC	0.1296
40	1201	BTC	0.0303
40	1261	BTC	0.0303
40	1321	BTC	0.0303
40	1381	BTC	0.2889
40	361	BTC	0.9792
40	541	BTC	0.9732
41	1	BTC	0.4879
41	601	BTC	0.7430
41	61	BTC	0.0164
41	121	BTC	-0.0059
41	181	BTC	-0.0059
41	241	BTC	0.0136
41	301	BTC	0.0303
41	361	BTC	0.0303
41	421	BTC	0.9985
41	481	BTC	0.9818
41	541	BTC	0.8934
42	1	BTC	0.5267
42	661	BTC	0.8885
42	721	BTC	0.9970
42	781	BTC	0.9682
42	841	BTC	0.9990
42	901	BTC	-0.1282
42	961	BTC	0.9970
42	1021	BTC	0.9986
42	1081	BTC	0.3178
42	1141	BTC	0.3504
42	61	BTC	0.9682
42	1201	BTC	0.9990
42	1261	BTC	-0.0236
42	1321	BTC	0.9682
42	1381	BTC	-0.9682
42	181	BTC	-0.9955
42	241	BTC	-0.6486
42	301	BTC	-0.9970
42	481	BTC	0.9371
43	1	BTC	0.0044
43	721	BTC	0.7906
43	781	BTC	0.9974
43	841	BTC	0.4549
43	1021	BTC	0.9970
43	1141	BTC	0.4749
43	61	BTC	0.3924
43	1201	BTC	0.9360
43	1261	BTC	-0.3265
43	1321	BTC	0.9716
43	1381	BTC	0.6705
43	121	BTC	-0.0244
43	241	BTC	0.9843
43	301	BTC	0.0044
43	361	BTC	-0.9970
43	541	BTC	0.8225
44	601	BTC	0.7906
45	781	BTC	0.9682
45	841	BTC	0.9682
45	901	BTC	0.9985
45	961	BTC	0.9682
45	1081	BTC	0.9682
45	1141	BTC	0.5267
45	1261	BTC	0.9985
46	1	BTC	-0.8934
46	121	BTC	0.9747
46	301	BTC	0.9628
47	781	BTC	0.9985
47	841	BTC	0.9982
47	901	BTC	0.9984
47	1021	BTC	0.9882
47	1081	BTC	0.9531
47	1141	BTC	0.9686
47	1201	BTC	0.9955
47	1261	BTC	0.9818
47	1381	BTC	0.5106
47	121	BTC	0.5423
47	241	BTC	0.9920
48	721	BTC	0.9981
48	1021	BTC	-0.9992
48	1141	BTC	0.9985
48	1201	BTC	0.3823
48	1321	BTC	-0.7003
48	1381	BTC	0.7906
48	361	BTC	0.9682
48	421	BTC	0.9982
48	481	BTC	0.9682
49	1	BTC	0.9858
49	661	BTC	0.0984
49	721	BTC	0.1110
49	781	BTC	-0.9994
49	841	BTC	0.9100
49	901	BTC	-0.4726
49	1021	BTC	-0.9953
49	1081	BTC	-0.9992
49	1201	BTC	0.6369
49	1261	BTC	-0.0292
49	1321	BTC	0.7003
49	181	BTC	-0.9992
49	301	BTC	0.5106
49	541	BTC	0.9803
50	1	BTC	0.9325
50	181	BTC	0.9493
50	361	BTC	0.0076
52	721	BTC	0.5984
52	781	BTC	0.9995
52	901	BTC	0.6369
52	961	BTC	0.7906
52	1081	BTC	0.9702
52	1141	BTC	0.9729
52	1201	BTC	0.9818
53	1	BTC	-0.2808
53	601	BTC	-0.0007
53	661	BTC	-0.0311
53	121	BTC	0.9837
53	181	BTC	-0.8652
53	301	BTC	0.9657
53	361	BTC	0.9986
53	421	BTC	0.9702
53	481	BTC	0.9729
53	541	BTC	0.5859
25	601	BTC	0.9766
25	721	BTC	0.9818
25	781	BTC	0.7717
25	841	BTC	-0.8126
25	901	BTC	0.9682
25	961	BTC	0.9818
25	1021	BTC	0.6808
25	1141	BTC	0.8862
25	1201	BTC	0.9705
25	1261	BTC	-0.5859
25	1321	BTC	0.9986
25	121	BTC	-0.5994
25	361	BTC	0.9840
25	481	BTC	0.9840
26	1141	BTC	-0.1484
26	1201	BTC	-0.9993
26	1261	BTC	-0.7269
26	1321	BTC	-0.0643
26	1381	BTC	0.9468
26	121	BTC	-0.9970
26	361	BTC	0.9840
26	421	BTC	-0.9944
27	601	BTC	-0.6597
27	661	BTC	-0.9978
27	721	BTC	-0.0160
27	781	BTC	-0.5574
27	841	BTC	-0.3362
27	901	BTC	0.0737
27	961	BTC	-0.0175
27	1021	BTC	-0.0144
27	1081	BTC	0.9834
27	1141	BTC	0.9771
27	1201	BTC	0.4062
27	1261	BTC	-0.7506
27	1381	BTC	0.4108
27	241	BTC	-0.0150
27	301	BTC	-0.5574
27	481	BTC	-0.5267
27	541	BTC	-0.5859
28	601	BTC	0.0534
28	661	BTC	0.9726
28	721	BTC	0.6434
28	781	BTC	0.2559
28	841	BTC	0.4191
28	901	BTC	0.3034
28	961	BTC	0.3082
28	1021	BTC	0.9842
28	1081	BTC	-0.0439
28	1141	BTC	0.0000
28	1201	BTC	0.3074
28	1261	BTC	0.4561
28	1321	BTC	0.3177
28	1381	BTC	0.4547
28	241	BTC	0.4397
28	301	BTC	0.8934
28	361	BTC	-0.5574
28	421	BTC	0.7906
28	481	BTC	0.5267
29	1	BTC	0.3721
29	601	BTC	-0.0008
29	661	BTC	0.4266
29	721	BTC	0.3280
29	781	BTC	0.4266
29	841	BTC	0.3280
29	901	BTC	0.0015
29	961	BTC	0.0015
29	1021	BTC	-0.0009
29	1081	BTC	-0.0008
29	1141	BTC	0.0017
29	61	BTC	0.0000
29	1201	BTC	0.0015
29	1261	BTC	0.0078
29	1321	BTC	0.9985
29	1381	BTC	0.2268
29	121	BTC	-0.2064
29	181	BTC	0.0000
29	241	BTC	0.9970
29	301	BTC	0.0015
29	361	BTC	0.9325
29	421	BTC	0.0015
29	481	BTC	-0.0008
29	541	BTC	0.0015
30	1	BTC	-0.1998
30	601	BTC	0.3433
30	661	BTC	0.3115
30	721	BTC	0.0675
30	781	BTC	0.6249
30	961	BTC	-0.0862
30	1021	BTC	0.9882
30	1081	BTC	-0.7906
30	1141	BTC	-0.0212
30	61	BTC	0.5719
30	1261	BTC	0.3499
30	121	BTC	0.9682
30	241	BTC	-0.0007
30	301	BTC	-0.0007
30	361	BTC	-0.5574
30	421	BTC	-0.5574
31	601	BTC	-0.9993
31	661	BTC	-0.4512
31	721	BTC	0.0064
31	781	BTC	-0.2726
31	841	BTC	0.6124
31	901	BTC	0.3246
31	961	BTC	0.7906
31	1021	BTC	-0.2407
31	1081	BTC	-0.9993
31	1141	BTC	0.4331
31	61	BTC	0.9970
31	1201	BTC	-0.9325
31	181	BTC	0.7906
31	301	BTC	0.9970
31	541	BTC	0.5574
32	601	BTC	-0.9968
32	661	BTC	0.3688
32	721	BTC	0.9712
32	781	BTC	0.0113
32	841	BTC	-0.9993
32	901	BTC	0.9818
32	961	BTC	0.0982
32	1021	BTC	0.9682
32	1081	BTC	-0.0481
32	1141	BTC	-0.6705
32	61	BTC	0.4108
32	1201	BTC	0.5994
32	1261	BTC	0.5267
32	1321	BTC	0.2268
32	241	BTC	0.4723
32	361	BTC	-0.5574
32	421	BTC	0.1131
32	481	BTC	0.0550
32	541	BTC	0.6124
33	1	BTC	0.2488
33	61	BTC	-0.6808
33	121	BTC	-0.5859
33	181	BTC	-0.6705
33	301	BTC	-0.9997
33	361	BTC	-0.6705
33	421	BTC	0.9477
33	541	BTC	-0.3371
35	721	BTC	0.5046
35	781	BTC	-0.0010
35	841	BTC	0.9682
35	901	BTC	0.4199
35	961	BTC	0.9985
35	1021	BTC	0.9985
35	1081	BTC	0.2312
35	1201	BTC	0.9628
35	1261	BTC	0.9970
35	1321	BTC	0.0082
35	1381	BTC	0.5994
36	1	BTC	0.9325
36	601	BTC	0.9682
36	721	BTC	-0.0011
36	781	BTC	0.7430
36	841	BTC	0.9781
36	1201	BTC	0.8934
36	1261	BTC	0.9682
36	1321	BTC	0.7964
36	1381	BTC	0.2047
36	241	BTC	0.9001
36	301	BTC	-0.7650
36	481	BTC	0.0710
36	541	BTC	-0.0339
37	1	BTC	0.9325
37	601	BTC	0.9985
37	721	BTC	0.3876
37	781	BTC	0.0086
37	841	BTC	0.0377
37	901	BTC	0.0448
37	961	BTC	0.9957
37	1021	BTC	0.4098
37	1081	BTC	0.3873
37	1141	BTC	0.9682
37	1201	BTC	0.6369
37	1261	BTC	0.9758
37	1321	BTC	0.9758
37	1381	BTC	0.7096
37	121	BTC	0.9970
37	181	BTC	-0.8308
37	241	BTC	0.9853
37	361	BTC	0.6166
37	541	BTC	0.9549
38	601	BTC	0.9918
38	661	BTC	0.9682
38	721	BTC	0.7906
38	841	BTC	0.4000
38	901	BTC	0.4178
38	961	BTC	0.3873
38	121	BTC	0.5719
38	301	BTC	-0.0027
38	481	BTC	-0.5423
38	541	BTC	0.3669
39	661	BTC	-0.2719
39	721	BTC	0.9819
39	781	BTC	0.9985
39	841	BTC	0.4412
39	901	BTC	0.9990
39	961	BTC	0.9985
39	1021	BTC	0.9990
39	1081	BTC	0.3082
39	1141	BTC	0.9682
39	1201	BTC	0.9984
39	1261	BTC	0.6486
39	301	BTC	0.2273
39	361	BTC	0.9719
39	421	BTC	0.9823
39	541	BTC	0.7506
40	1	BTC	0.9826
40	661	BTC	0.9984
40	721	BTC	0.9818
40	781	BTC	0.9818
40	841	BTC	0.9818
40	901	BTC	0.9995
40	961	BTC	0.3087
40	1021	BTC	0.1306
40	1081	BTC	0.1153
40	1141	BTC	0.1296
40	1201	BTC	0.0303
40	1261	BTC	0.0303
40	1321	BTC	0.0303
40	1381	BTC	0.2889
40	361	BTC	0.9792
40	541	BTC	0.9732
41	1	BTC	0.4879
41	601	BTC	0.7430
41	61	BTC	0.0164
41	121	BTC	-0.0059
41	181	BTC	-0.0059
41	241	BTC	0.0136
41	301	BTC	0.0303
41	361	BTC	0.0303
41	421	BTC	0.9985
41	481	BTC	0.9818
41	541	BTC	0.8934
42	1	BTC	0.5267
42	661	BTC	0.8885
42	721	BTC	0.9970
42	781	BTC	0.9682
42	841	BTC	0.9990
42	901	BTC	-0.1282
42	961	BTC	0.9970
42	1021	BTC	0.9986
42	1081	BTC	0.3178
42	1141	BTC	0.3504
42	61	BTC	0.9682
42	1201	BTC	0.9990
42	1261	BTC	-0.0236
42	1321	BTC	0.9682
42	1381	BTC	-0.9682
42	181	BTC	-0.9955
42	241	BTC	-0.6486
42	301	BTC	-0.9970
42	481	BTC	0.9371
43	1	BTC	0.0044
43	721	BTC	0.7906
43	781	BTC	0.9974
43	841	BTC	0.4549
43	1021	BTC	0.9970
43	1141	BTC	0.4749
43	61	BTC	0.3924
43	1201	BTC	0.9360
43	1261	BTC	-0.3265
43	1321	BTC	0.9716
43	1381	BTC	0.6705
43	121	BTC	-0.0244
43	241	BTC	0.9843
43	301	BTC	0.0044
43	361	BTC	-0.9970
43	541	BTC	0.8225
44	601	BTC	0.7906
45	781	BTC	0.9682
45	841	BTC	0.9682
45	901	BTC	0.9985
45	961	BTC	0.9682
45	1081	BTC	0.9682
45	1141	BTC	0.5267
45	1261	BTC	0.9985
46	1	BTC	-0.8934
46	121	BTC	0.9747
46	301	BTC	0.9628
47	781	BTC	0.9985
47	841	BTC	0.9982
47	901	BTC	0.9984
47	1021	BTC	0.9882
47	1081	BTC	0.9531
47	1141	BTC	0.9686
47	1201	BTC	0.9955
47	1261	BTC	0.9818
47	1381	BTC	0.5106
47	121	BTC	0.5423
47	241	BTC	0.9920
48	721	BTC	0.9981
48	1021	BTC	-0.9992
48	1141	BTC	0.9985
48	1201	BTC	0.3823
48	1321	BTC	-0.7003
48	1381	BTC	0.7906
48	361	BTC	0.9682
48	421	BTC	0.9982
48	481	BTC	0.9682
49	1	BTC	0.9858
49	661	BTC	0.0984
49	721	BTC	0.1110
49	781	BTC	-0.9994
49	841	BTC	0.9100
49	901	BTC	-0.4726
49	1021	BTC	-0.9953
49	1081	BTC	-0.9992
49	1201	BTC	0.6369
49	1261	BTC	-0.0292
49	1321	BTC	0.7003
49	181	BTC	-0.9992
49	301	BTC	0.5106
49	541	BTC	0.9803
50	1	BTC	0.9325
50	181	BTC	0.9493
50	361	BTC	0.0076
52	721	BTC	0.5984
52	781	BTC	0.9995
52	901	BTC	0.6369
52	961	BTC	0.7906
52	1081	BTC	0.9702
52	1141	BTC	0.9729
52	1201	BTC	0.9818
53	1	BTC	-0.2808
53	601	BTC	-0.0007
53	661	BTC	-0.0311
53	721	BTC	0.9882
53	781	BTC	0.9855
53	841	BTC	-0.0281
53	901	BTC	-0.0152
53	961	BTC	-0.0152
53	1021	BTC	-0.9993
53	1081	BTC	0.9325
53	1201	BTC	-0.9992
53	1261	BTC	-0.9988
53	1321	BTC	-0.7269
53	1381	BTC	-0.9993
53	121	BTC	0.9837
53	181	BTC	-0.8652
53	301	BTC	0.9657
53	361	BTC	0.9986
53	421	BTC	0.9702
53	481	BTC	0.9729
53	541	BTC	0.5859
54	121	BTC	-0.9990
54	181	BTC	-0.9990
54	241	BTC	-0.0249
54	301	BTC	-0.3504
54	361	BTC	-0.9972
54	421	BTC	-0.9993
54	481	BTC	-0.9963
54	541	BTC	-0.0311
25	601	BTC	0.9766
25	721	BTC	0.9818
25	781	BTC	0.7717
25	841	BTC	-0.8126
25	901	BTC	0.9682
25	961	BTC	0.9818
25	1021	BTC	0.6808
25	1141	BTC	0.8862
25	1201	BTC	0.9705
25	1261	BTC	-0.5859
25	1321	BTC	0.9986
25	121	BTC	-0.5994
25	361	BTC	0.9840
25	481	BTC	0.9840
26	1141	BTC	-0.1484
26	1201	BTC	-0.9993
26	1261	BTC	-0.7269
26	1321	BTC	-0.0643
26	1381	BTC	0.9468
26	121	BTC	-0.9970
26	361	BTC	0.9840
26	421	BTC	-0.9944
27	601	BTC	-0.6597
27	661	BTC	-0.9978
27	721	BTC	-0.0160
27	781	BTC	-0.5574
27	841	BTC	-0.3362
27	901	BTC	0.0737
27	961	BTC	-0.0175
27	1021	BTC	-0.0144
27	1081	BTC	0.9834
27	1141	BTC	0.9771
27	1201	BTC	0.4062
27	1261	BTC	-0.7506
27	1381	BTC	0.4108
27	241	BTC	-0.0150
27	301	BTC	-0.5574
27	481	BTC	-0.5267
27	541	BTC	-0.5859
28	601	BTC	0.0534
28	661	BTC	0.9726
28	721	BTC	0.6434
28	781	BTC	0.2559
28	841	BTC	0.4191
28	901	BTC	0.3034
28	961	BTC	0.3082
28	1021	BTC	0.9842
28	1081	BTC	-0.0439
28	1141	BTC	0.0000
28	1201	BTC	0.3074
28	1261	BTC	0.4561
28	1321	BTC	0.3177
28	1381	BTC	0.4547
28	241	BTC	0.4397
28	301	BTC	0.8934
28	361	BTC	-0.5574
28	421	BTC	0.7906
28	481	BTC	0.5267
29	1	BTC	0.3721
29	601	BTC	-0.0008
29	661	BTC	0.4266
29	721	BTC	0.3280
29	781	BTC	0.4266
29	841	BTC	0.3280
29	901	BTC	0.0015
29	961	BTC	0.0015
29	1021	BTC	-0.0009
29	1081	BTC	-0.0008
29	1141	BTC	0.0017
29	61	BTC	0.0000
29	1201	BTC	0.0015
29	1261	BTC	0.0078
29	1321	BTC	0.9985
29	1381	BTC	0.2268
29	121	BTC	-0.2064
29	181	BTC	0.0000
29	241	BTC	0.9970
29	301	BTC	0.0015
29	361	BTC	0.9325
29	421	BTC	0.0015
29	481	BTC	-0.0008
29	541	BTC	0.0015
30	1	BTC	-0.1998
30	601	BTC	0.3433
30	661	BTC	0.3115
30	721	BTC	0.0675
30	781	BTC	0.6249
30	961	BTC	-0.0862
30	1021	BTC	0.9882
30	1081	BTC	-0.7906
30	1141	BTC	-0.0212
30	61	BTC	0.5719
30	1261	BTC	0.3499
30	121	BTC	0.9682
30	241	BTC	-0.0007
30	301	BTC	-0.0007
30	361	BTC	-0.5574
30	421	BTC	-0.5574
31	601	BTC	-0.9993
31	661	BTC	-0.4512
31	721	BTC	0.0064
31	781	BTC	-0.2726
31	841	BTC	0.6124
31	901	BTC	0.3246
31	961	BTC	0.7906
31	1021	BTC	-0.2407
31	1081	BTC	-0.9993
31	1141	BTC	0.4331
31	61	BTC	0.9970
31	1201	BTC	-0.9325
31	181	BTC	0.7906
31	301	BTC	0.9970
31	541	BTC	0.5574
32	601	BTC	-0.9968
32	661	BTC	0.3688
32	721	BTC	0.9712
32	781	BTC	0.0113
32	841	BTC	-0.9993
32	901	BTC	0.9818
32	961	BTC	0.0982
32	1021	BTC	0.9682
32	1081	BTC	-0.0481
32	1141	BTC	-0.6705
32	61	BTC	0.4108
32	1201	BTC	0.5994
32	1261	BTC	0.5267
32	1321	BTC	0.2268
32	241	BTC	0.4723
32	361	BTC	-0.5574
32	421	BTC	0.1131
32	481	BTC	0.0550
32	541	BTC	0.6124
33	1	BTC	0.2488
33	61	BTC	-0.6808
33	121	BTC	-0.5859
33	181	BTC	-0.6705
33	301	BTC	-0.9997
33	361	BTC	-0.6705
33	421	BTC	0.9477
33	541	BTC	-0.3371
35	721	BTC	0.5046
35	781	BTC	-0.0010
35	841	BTC	0.9682
35	901	BTC	0.4199
35	961	BTC	0.9985
35	1021	BTC	0.9985
35	1081	BTC	0.2312
35	1201	BTC	0.9628
35	1261	BTC	0.9970
35	1321	BTC	0.0082
35	1381	BTC	0.5994
36	1	BTC	0.9325
36	601	BTC	0.9682
36	721	BTC	-0.0011
36	781	BTC	0.7430
36	841	BTC	0.9781
36	1201	BTC	0.8934
36	1261	BTC	0.9682
36	1321	BTC	0.7964
36	1381	BTC	0.2047
36	241	BTC	0.9001
36	301	BTC	-0.7650
36	481	BTC	0.0710
36	541	BTC	-0.0339
37	1	BTC	0.9325
37	601	BTC	0.9985
37	721	BTC	0.3876
37	781	BTC	0.0086
37	841	BTC	0.0377
37	901	BTC	0.0448
37	961	BTC	0.9957
37	1021	BTC	0.4098
37	1081	BTC	0.3873
37	1141	BTC	0.9682
37	1201	BTC	0.6369
37	1261	BTC	0.9758
37	1321	BTC	0.9758
37	1381	BTC	0.7096
37	121	BTC	0.9970
37	181	BTC	-0.8308
37	241	BTC	0.9853
37	361	BTC	0.6166
37	541	BTC	0.9549
38	601	BTC	0.9918
38	661	BTC	0.9682
38	721	BTC	0.7906
38	841	BTC	0.4000
38	901	BTC	0.4178
38	961	BTC	0.3873
38	121	BTC	0.5719
38	301	BTC	-0.0027
38	481	BTC	-0.5423
38	541	BTC	0.3669
39	661	BTC	-0.2719
39	721	BTC	0.9819
39	781	BTC	0.9985
39	841	BTC	0.4412
39	901	BTC	0.9990
39	961	BTC	0.9985
39	1021	BTC	0.9990
39	1081	BTC	0.3082
39	1141	BTC	0.9682
39	1201	BTC	0.9984
39	1261	BTC	0.6486
39	301	BTC	0.2273
39	361	BTC	0.9719
39	421	BTC	0.9823
39	541	BTC	0.7506
40	1	BTC	0.9826
40	661	BTC	0.9984
40	721	BTC	0.9818
40	781	BTC	0.9818
40	841	BTC	0.9818
40	901	BTC	0.9995
40	961	BTC	0.3087
40	1021	BTC	0.1306
40	1081	BTC	0.1153
40	1141	BTC	0.1296
40	1201	BTC	0.0303
40	1261	BTC	0.0303
40	1321	BTC	0.0303
40	1381	BTC	0.2889
40	361	BTC	0.9792
40	541	BTC	0.9732
41	1	BTC	0.4879
41	601	BTC	0.7430
41	61	BTC	0.0164
41	121	BTC	-0.0059
41	181	BTC	-0.0059
41	241	BTC	0.0136
41	301	BTC	0.0303
41	361	BTC	0.0303
41	421	BTC	0.9985
41	481	BTC	0.9818
41	541	BTC	0.8934
42	1	BTC	0.5267
42	661	BTC	0.8885
42	721	BTC	0.9970
42	781	BTC	0.9682
42	841	BTC	0.9990
42	901	BTC	-0.1282
42	961	BTC	0.9970
42	1021	BTC	0.9986
42	1081	BTC	0.3178
42	1141	BTC	0.3504
42	61	BTC	0.9682
42	1201	BTC	0.9990
42	1261	BTC	-0.0236
42	1321	BTC	0.9682
42	1381	BTC	-0.9682
42	181	BTC	-0.9955
42	241	BTC	-0.6486
42	301	BTC	-0.9970
42	481	BTC	0.9371
43	1	BTC	0.0044
43	721	BTC	0.7906
43	781	BTC	0.9974
43	841	BTC	0.4549
43	1021	BTC	0.9970
43	1141	BTC	0.4749
43	61	BTC	0.3924
43	1201	BTC	0.9360
43	1261	BTC	-0.3265
43	1321	BTC	0.9716
43	1381	BTC	0.6705
43	121	BTC	-0.0244
43	241	BTC	0.9843
43	301	BTC	0.0044
43	361	BTC	-0.9970
43	541	BTC	0.8225
44	601	BTC	0.7906
45	781	BTC	0.9682
45	841	BTC	0.9682
45	901	BTC	0.9985
45	961	BTC	0.9682
45	1081	BTC	0.9682
45	1141	BTC	0.5267
45	1261	BTC	0.9985
46	1	BTC	-0.8934
46	121	BTC	0.9747
46	301	BTC	0.9628
47	781	BTC	0.9985
47	841	BTC	0.9982
47	901	BTC	0.9984
47	1021	BTC	0.9882
47	1081	BTC	0.9531
47	1141	BTC	0.9686
47	1201	BTC	0.9955
47	1261	BTC	0.9818
47	1381	BTC	0.5106
47	121	BTC	0.5423
47	241	BTC	0.9920
48	721	BTC	0.9981
48	1021	BTC	-0.9992
48	1141	BTC	0.9985
48	1201	BTC	0.3823
48	1321	BTC	-0.7003
48	1381	BTC	0.7906
48	361	BTC	0.9682
48	421	BTC	0.9982
48	481	BTC	0.9682
49	1	BTC	0.9858
49	661	BTC	0.0984
49	721	BTC	0.1110
49	781	BTC	-0.9994
49	841	BTC	0.9100
49	901	BTC	-0.4726
49	1021	BTC	-0.9953
49	1081	BTC	-0.9992
49	1201	BTC	0.6369
49	1261	BTC	-0.0292
49	1321	BTC	0.7003
49	181	BTC	-0.9992
49	301	BTC	0.5106
49	541	BTC	0.9803
50	1	BTC	0.9325
50	181	BTC	0.9493
50	361	BTC	0.0076
52	721	BTC	0.5984
52	781	BTC	0.9995
52	901	BTC	0.6369
52	961	BTC	0.7906
52	1081	BTC	0.9702
52	1141	BTC	0.9729
52	1201	BTC	0.9818
53	1	BTC	-0.2808
53	601	BTC	-0.0007
53	661	BTC	-0.0311
53	721	BTC	0.9882
53	781	BTC	0.9855
53	841	BTC	-0.0281
53	901	BTC	-0.0152
53	961	BTC	-0.0152
53	1021	BTC	-0.9993
53	1081	BTC	0.9325
53	1201	BTC	-0.9992
53	1261	BTC	-0.9988
53	1321	BTC	-0.7269
53	1381	BTC	-0.9993
53	121	BTC	0.9837
53	181	BTC	-0.8652
53	301	BTC	0.9657
53	361	BTC	0.9986
53	421	BTC	0.9702
53	481	BTC	0.9729
53	541	BTC	0.5859
54	121	BTC	-0.9990
54	181	BTC	-0.9990
54	241	BTC	-0.0249
54	301	BTC	-0.3504
54	361	BTC	-0.9972
54	421	BTC	-0.9993
54	481	BTC	-0.9963
54	541	BTC	-0.0311
55	661	BTC	0.9873
55	721	BTC	0.9987
55	781	BTC	0.7096
55	841	BTC	0.3824
55	901	BTC	0.7579
55	961	BTC	0.9806
55	1021	BTC	0.9682
55	61	BTC	-0.6124
55	1201	BTC	0.9732
55	1261	BTC	0.9732
55	121	BTC	-0.9970
55	361	BTC	0.0246
56	361	BTC	-0.9325
56	421	BTC	0.5267
25	601	BTC	0.9766
25	721	BTC	0.9818
25	781	BTC	0.7717
25	841	BTC	-0.8126
25	901	BTC	0.9682
25	961	BTC	0.9818
25	1021	BTC	0.6808
25	1141	BTC	0.8862
25	1201	BTC	0.9705
25	1261	BTC	-0.5859
25	1321	BTC	0.9986
25	121	BTC	-0.5994
25	361	BTC	0.9840
25	481	BTC	0.9840
26	1141	BTC	-0.1484
26	1201	BTC	-0.9993
26	1261	BTC	-0.7269
26	1321	BTC	-0.0643
26	1381	BTC	0.9468
26	121	BTC	-0.9970
26	361	BTC	0.9840
26	421	BTC	-0.9944
27	601	BTC	-0.6597
27	661	BTC	-0.9978
27	721	BTC	-0.0160
27	781	BTC	-0.5574
27	841	BTC	-0.3362
27	901	BTC	0.0737
27	961	BTC	-0.0175
27	1021	BTC	-0.0144
27	1081	BTC	0.9834
27	1141	BTC	0.9771
27	1201	BTC	0.4062
27	1261	BTC	-0.7506
27	1381	BTC	0.4108
27	241	BTC	-0.0150
27	301	BTC	-0.5574
27	481	BTC	-0.5267
27	541	BTC	-0.5859
28	601	BTC	0.0534
28	661	BTC	0.9726
28	721	BTC	0.6434
28	781	BTC	0.2559
28	841	BTC	0.4191
28	901	BTC	0.3034
28	961	BTC	0.3082
28	1021	BTC	0.9842
28	1081	BTC	-0.0439
28	1141	BTC	0.0000
28	1201	BTC	0.3074
28	1261	BTC	0.4561
28	1321	BTC	0.3177
28	1381	BTC	0.4547
28	241	BTC	0.4397
28	301	BTC	0.8934
28	361	BTC	-0.5574
28	421	BTC	0.7906
28	481	BTC	0.5267
29	1	BTC	0.3721
29	601	BTC	-0.0008
29	661	BTC	0.4266
29	721	BTC	0.3280
29	781	BTC	0.4266
29	841	BTC	0.3280
29	901	BTC	0.0015
29	961	BTC	0.0015
29	1021	BTC	-0.0009
29	1081	BTC	-0.0008
29	1141	BTC	0.0017
29	61	BTC	0.0000
29	1201	BTC	0.0015
29	1261	BTC	0.0078
29	1321	BTC	0.9985
29	1381	BTC	0.2268
29	121	BTC	-0.2064
29	181	BTC	0.0000
29	241	BTC	0.9970
29	301	BTC	0.0015
29	361	BTC	0.9325
29	421	BTC	0.0015
29	481	BTC	-0.0008
29	541	BTC	0.0015
30	1	BTC	-0.1998
30	601	BTC	0.3433
30	661	BTC	0.3115
30	721	BTC	0.0675
30	781	BTC	0.6249
30	961	BTC	-0.0862
30	1021	BTC	0.9882
30	1081	BTC	-0.7906
30	1141	BTC	-0.0212
30	61	BTC	0.5719
30	1261	BTC	0.3499
30	121	BTC	0.9682
30	241	BTC	-0.0007
30	301	BTC	-0.0007
30	361	BTC	-0.5574
30	421	BTC	-0.5574
31	601	BTC	-0.9993
31	661	BTC	-0.4512
31	721	BTC	0.0064
31	781	BTC	-0.2726
31	841	BTC	0.6124
31	901	BTC	0.3246
31	961	BTC	0.7906
31	1021	BTC	-0.2407
31	1081	BTC	-0.9993
31	1141	BTC	0.4331
31	61	BTC	0.9970
31	1201	BTC	-0.9325
31	181	BTC	0.7906
31	301	BTC	0.9970
31	541	BTC	0.5574
32	601	BTC	-0.9968
32	661	BTC	0.3688
32	721	BTC	0.9712
32	781	BTC	0.0113
32	841	BTC	-0.9993
32	901	BTC	0.9818
32	961	BTC	0.0982
32	1021	BTC	0.9682
32	1081	BTC	-0.0481
32	1141	BTC	-0.6705
32	61	BTC	0.4108
32	1201	BTC	0.5994
32	1261	BTC	0.5267
32	1321	BTC	0.2268
32	241	BTC	0.4723
32	361	BTC	-0.5574
32	421	BTC	0.1131
32	481	BTC	0.0550
32	541	BTC	0.6124
33	1	BTC	0.2488
33	61	BTC	-0.6808
33	121	BTC	-0.5859
33	181	BTC	-0.6705
33	301	BTC	-0.9997
33	361	BTC	-0.6705
33	421	BTC	0.9477
33	541	BTC	-0.3371
35	721	BTC	0.5046
35	781	BTC	-0.0010
35	841	BTC	0.9682
35	901	BTC	0.4199
35	961	BTC	0.9985
35	1021	BTC	0.9985
35	1081	BTC	0.2312
35	1201	BTC	0.9628
35	1261	BTC	0.9970
35	1321	BTC	0.0082
35	1381	BTC	0.5994
36	1	BTC	0.9325
36	601	BTC	0.9682
36	721	BTC	-0.0011
36	781	BTC	0.7430
36	841	BTC	0.9781
36	1201	BTC	0.8934
36	1261	BTC	0.9682
36	1321	BTC	0.7964
36	1381	BTC	0.2047
36	241	BTC	0.9001
36	301	BTC	-0.7650
36	481	BTC	0.0710
36	541	BTC	-0.0339
37	1	BTC	0.9325
37	601	BTC	0.9985
37	721	BTC	0.3876
37	781	BTC	0.0086
37	841	BTC	0.0377
37	901	BTC	0.0448
37	961	BTC	0.9957
37	1021	BTC	0.4098
37	1081	BTC	0.3873
37	1141	BTC	0.9682
37	1201	BTC	0.6369
37	1261	BTC	0.9758
37	1321	BTC	0.9758
37	1381	BTC	0.7096
37	121	BTC	0.9970
37	181	BTC	-0.8308
37	241	BTC	0.9853
37	361	BTC	0.6166
37	541	BTC	0.9549
38	601	BTC	0.9918
38	661	BTC	0.9682
38	721	BTC	0.7906
38	841	BTC	0.4000
38	901	BTC	0.4178
38	961	BTC	0.3873
38	121	BTC	0.5719
38	301	BTC	-0.0027
38	481	BTC	-0.5423
38	541	BTC	0.3669
39	661	BTC	-0.2719
39	721	BTC	0.9819
39	781	BTC	0.9985
39	841	BTC	0.4412
39	901	BTC	0.9990
39	961	BTC	0.9985
39	1021	BTC	0.9990
39	1081	BTC	0.3082
39	1141	BTC	0.9682
39	1201	BTC	0.9984
39	1261	BTC	0.6486
39	301	BTC	0.2273
39	361	BTC	0.9719
39	421	BTC	0.9823
39	541	BTC	0.7506
40	1	BTC	0.9826
40	661	BTC	0.9984
40	721	BTC	0.9818
40	781	BTC	0.9818
40	841	BTC	0.9818
40	901	BTC	0.9995
40	961	BTC	0.3087
40	1021	BTC	0.1306
40	1081	BTC	0.1153
40	1141	BTC	0.1296
40	1201	BTC	0.0303
40	1261	BTC	0.0303
40	1321	BTC	0.0303
40	1381	BTC	0.2889
40	361	BTC	0.9792
40	541	BTC	0.9732
41	1	BTC	0.4879
41	601	BTC	0.7430
41	61	BTC	0.0164
41	121	BTC	-0.0059
41	181	BTC	-0.0059
41	241	BTC	0.0136
41	301	BTC	0.0303
41	361	BTC	0.0303
41	421	BTC	0.9985
41	481	BTC	0.9818
41	541	BTC	0.8934
42	1	BTC	0.5267
42	661	BTC	0.8885
42	721	BTC	0.9970
42	781	BTC	0.9682
42	841	BTC	0.9990
42	901	BTC	-0.1282
42	961	BTC	0.9970
42	1021	BTC	0.9986
42	1081	BTC	0.3178
42	1141	BTC	0.3504
42	61	BTC	0.9682
42	1201	BTC	0.9990
42	1261	BTC	-0.0236
42	1321	BTC	0.9682
42	1381	BTC	-0.9682
42	181	BTC	-0.9955
42	241	BTC	-0.6486
42	301	BTC	-0.9970
42	481	BTC	0.9371
43	1	BTC	0.0044
43	721	BTC	0.7906
43	781	BTC	0.9974
43	841	BTC	0.4549
43	1021	BTC	0.9970
43	1141	BTC	0.4749
43	61	BTC	0.3924
43	1201	BTC	0.9360
43	1261	BTC	-0.3265
43	1321	BTC	0.9716
43	1381	BTC	0.6705
43	121	BTC	-0.0244
43	241	BTC	0.9843
43	301	BTC	0.0044
43	361	BTC	-0.9970
43	541	BTC	0.8225
44	601	BTC	0.7906
45	781	BTC	0.9682
45	841	BTC	0.9682
45	901	BTC	0.9985
45	961	BTC	0.9682
45	1081	BTC	0.9682
45	1141	BTC	0.5267
45	1261	BTC	0.9985
46	1	BTC	-0.8934
46	121	BTC	0.9747
46	301	BTC	0.9628
47	781	BTC	0.9985
47	841	BTC	0.9982
47	901	BTC	0.9984
47	1021	BTC	0.9882
47	1081	BTC	0.9531
47	1141	BTC	0.9686
47	1201	BTC	0.9955
47	1261	BTC	0.9818
47	1381	BTC	0.5106
47	121	BTC	0.5423
47	241	BTC	0.9920
48	721	BTC	0.9981
48	1021	BTC	-0.9992
48	1141	BTC	0.9985
48	1201	BTC	0.3823
48	1321	BTC	-0.7003
48	1381	BTC	0.7906
48	361	BTC	0.9682
48	421	BTC	0.9982
48	481	BTC	0.9682
49	1	BTC	0.9858
49	661	BTC	0.0984
49	721	BTC	0.1110
49	781	BTC	-0.9994
49	841	BTC	0.9100
49	901	BTC	-0.4726
49	1021	BTC	-0.9953
49	1081	BTC	-0.9992
49	1201	BTC	0.6369
49	1261	BTC	-0.0292
49	1321	BTC	0.7003
49	181	BTC	-0.9992
49	301	BTC	0.5106
49	541	BTC	0.9803
50	1	BTC	0.9325
50	181	BTC	0.9493
50	361	BTC	0.0076
52	721	BTC	0.5984
52	781	BTC	0.9995
52	901	BTC	0.6369
52	961	BTC	0.7906
52	1081	BTC	0.9702
52	1141	BTC	0.9729
52	1201	BTC	0.9818
53	1	BTC	-0.2808
53	601	BTC	-0.0007
53	661	BTC	-0.0311
53	721	BTC	0.9882
53	781	BTC	0.9855
53	841	BTC	-0.0281
53	901	BTC	-0.0152
53	961	BTC	-0.0152
53	1021	BTC	-0.9993
53	1081	BTC	0.9325
53	1201	BTC	-0.9992
53	1261	BTC	-0.9988
53	1321	BTC	-0.7269
53	1381	BTC	-0.9993
53	121	BTC	0.9837
53	181	BTC	-0.8652
53	301	BTC	0.9657
53	361	BTC	0.9986
53	421	BTC	0.9702
53	481	BTC	0.9729
53	541	BTC	0.5859
54	121	BTC	-0.9990
54	181	BTC	-0.9990
54	241	BTC	-0.0249
54	301	BTC	-0.3504
54	361	BTC	-0.9972
54	421	BTC	-0.9993
54	481	BTC	-0.9963
54	541	BTC	-0.0311
55	661	BTC	0.9873
55	721	BTC	0.9987
55	781	BTC	0.7096
55	841	BTC	0.3824
55	901	BTC	0.7579
55	961	BTC	0.9806
55	1021	BTC	0.9682
55	61	BTC	-0.6124
55	1201	BTC	0.9732
55	1261	BTC	0.9732
55	121	BTC	-0.9970
55	361	BTC	0.0246
56	601	BTC	0.5859
56	661	BTC	0.8934
56	721	BTC	0.8176
56	781	BTC	0.9818
56	841	BTC	-0.9970
56	961	BTC	-0.5267
56	1021	BTC	0.0660
56	1081	BTC	0.9818
56	1201	BTC	-0.6486
56	1261	BTC	0.9985
56	1321	BTC	0.9325
56	1381	BTC	0.9325
56	361	BTC	-0.9325
56	421	BTC	0.5267
57	1	BTC	0.3511
57	121	BTC	-0.9996
57	241	BTC	-0.9997
57	301	BTC	0.9682
57	361	BTC	-0.9996
25	601	BTC	0.9766
25	721	BTC	0.9818
25	781	BTC	0.7717
25	841	BTC	-0.8126
25	901	BTC	0.9682
25	961	BTC	0.9818
25	1021	BTC	0.6808
25	1141	BTC	0.8862
25	1201	BTC	0.9705
25	1261	BTC	-0.5859
25	1321	BTC	0.9986
25	121	BTC	-0.5994
25	361	BTC	0.9840
25	481	BTC	0.9840
26	1141	BTC	-0.1484
26	1201	BTC	-0.9993
26	1261	BTC	-0.7269
26	1321	BTC	-0.0643
26	1381	BTC	0.9468
26	121	BTC	-0.9970
26	361	BTC	0.9840
26	421	BTC	-0.9944
27	601	BTC	-0.6597
27	661	BTC	-0.9978
27	721	BTC	-0.0160
27	781	BTC	-0.5574
27	841	BTC	-0.3362
27	901	BTC	0.0737
27	961	BTC	-0.0175
27	1021	BTC	-0.0144
27	1081	BTC	0.9834
27	1141	BTC	0.9771
27	1201	BTC	0.4062
27	1261	BTC	-0.7506
27	1381	BTC	0.4108
27	241	BTC	-0.0150
27	301	BTC	-0.5574
27	481	BTC	-0.5267
27	541	BTC	-0.5859
28	601	BTC	0.0534
28	661	BTC	0.9726
28	721	BTC	0.6434
28	781	BTC	0.2559
28	841	BTC	0.4191
28	901	BTC	0.3034
28	961	BTC	0.3082
28	1021	BTC	0.9842
28	1081	BTC	-0.0439
28	1141	BTC	0.0000
28	1201	BTC	0.3074
28	1261	BTC	0.4561
28	1321	BTC	0.3177
28	1381	BTC	0.4547
28	241	BTC	0.4397
28	301	BTC	0.8934
28	361	BTC	-0.5574
28	421	BTC	0.7906
28	481	BTC	0.5267
29	1	BTC	0.3721
29	601	BTC	-0.0008
29	661	BTC	0.4266
29	721	BTC	0.3280
29	781	BTC	0.4266
29	841	BTC	0.3280
29	901	BTC	0.0015
29	961	BTC	0.0015
29	1021	BTC	-0.0009
29	1081	BTC	-0.0008
29	1141	BTC	0.0017
29	61	BTC	0.0000
29	1201	BTC	0.0015
29	1261	BTC	0.0078
29	1321	BTC	0.9985
29	1381	BTC	0.2268
29	121	BTC	-0.2064
29	181	BTC	0.0000
29	241	BTC	0.9970
29	301	BTC	0.0015
29	361	BTC	0.9325
29	421	BTC	0.0015
29	481	BTC	-0.0008
29	541	BTC	0.0015
30	1	BTC	-0.1998
30	601	BTC	0.3433
30	661	BTC	0.3115
30	721	BTC	0.0675
30	781	BTC	0.6249
30	961	BTC	-0.0862
30	1021	BTC	0.9882
30	1081	BTC	-0.7906
30	1141	BTC	-0.0212
30	61	BTC	0.5719
30	1261	BTC	0.3499
30	121	BTC	0.9682
30	241	BTC	-0.0007
30	301	BTC	-0.0007
30	361	BTC	-0.5574
30	421	BTC	-0.5574
31	601	BTC	-0.9993
31	661	BTC	-0.4512
31	721	BTC	0.0064
31	781	BTC	-0.2726
31	841	BTC	0.6124
31	901	BTC	0.3246
31	961	BTC	0.7906
31	1021	BTC	-0.2407
31	1081	BTC	-0.9993
31	1141	BTC	0.4331
31	61	BTC	0.9970
31	1201	BTC	-0.9325
31	181	BTC	0.7906
31	301	BTC	0.9970
31	541	BTC	0.5574
32	601	BTC	-0.9968
32	661	BTC	0.3688
32	721	BTC	0.9712
32	781	BTC	0.0113
32	841	BTC	-0.9993
32	901	BTC	0.9818
32	961	BTC	0.0982
32	1021	BTC	0.9682
32	1081	BTC	-0.0481
32	1141	BTC	-0.6705
32	61	BTC	0.4108
32	1201	BTC	0.5994
32	1261	BTC	0.5267
32	1321	BTC	0.2268
32	241	BTC	0.4723
32	361	BTC	-0.5574
32	421	BTC	0.1131
32	481	BTC	0.0550
32	541	BTC	0.6124
33	1	BTC	0.2488
33	61	BTC	-0.6808
33	121	BTC	-0.5859
33	181	BTC	-0.6705
33	301	BTC	-0.9997
33	361	BTC	-0.6705
33	421	BTC	0.9477
33	541	BTC	-0.3371
35	721	BTC	0.5046
35	781	BTC	-0.0010
35	841	BTC	0.9682
35	901	BTC	0.4199
35	961	BTC	0.9985
35	1021	BTC	0.9985
35	1081	BTC	0.2312
35	1201	BTC	0.9628
35	1261	BTC	0.9970
35	1321	BTC	0.0082
35	1381	BTC	0.5994
36	1	BTC	0.9325
36	601	BTC	0.9682
36	721	BTC	-0.0011
36	781	BTC	0.7430
36	841	BTC	0.9781
36	1201	BTC	0.8934
36	1261	BTC	0.9682
36	1321	BTC	0.7964
36	1381	BTC	0.2047
36	241	BTC	0.9001
36	301	BTC	-0.7650
36	481	BTC	0.0710
36	541	BTC	-0.0339
37	1	BTC	0.9325
37	601	BTC	0.9985
37	721	BTC	0.3876
37	781	BTC	0.0086
37	841	BTC	0.0377
37	901	BTC	0.0448
37	961	BTC	0.9957
37	1021	BTC	0.4098
37	1081	BTC	0.3873
37	1141	BTC	0.9682
37	1201	BTC	0.6369
37	1261	BTC	0.9758
37	1321	BTC	0.9758
37	1381	BTC	0.7096
37	121	BTC	0.9970
37	181	BTC	-0.8308
37	241	BTC	0.9853
37	361	BTC	0.6166
37	541	BTC	0.9549
38	601	BTC	0.9918
38	661	BTC	0.9682
38	721	BTC	0.7906
38	841	BTC	0.4000
38	901	BTC	0.4178
38	961	BTC	0.3873
38	121	BTC	0.5719
38	301	BTC	-0.0027
38	481	BTC	-0.5423
38	541	BTC	0.3669
39	661	BTC	-0.2719
39	721	BTC	0.9819
39	781	BTC	0.9985
39	841	BTC	0.4412
39	901	BTC	0.9990
39	961	BTC	0.9985
39	1021	BTC	0.9990
39	1081	BTC	0.3082
39	1141	BTC	0.9682
39	1201	BTC	0.9984
39	1261	BTC	0.6486
39	301	BTC	0.2273
39	361	BTC	0.9719
39	421	BTC	0.9823
39	541	BTC	0.7506
40	1	BTC	0.9826
40	661	BTC	0.9984
40	721	BTC	0.9818
40	781	BTC	0.9818
40	841	BTC	0.9818
40	901	BTC	0.9995
40	961	BTC	0.3087
40	1021	BTC	0.1306
40	1081	BTC	0.1153
40	1141	BTC	0.1296
40	1201	BTC	0.0303
40	1261	BTC	0.0303
40	1321	BTC	0.0303
40	1381	BTC	0.2889
40	361	BTC	0.9792
40	541	BTC	0.9732
41	1	BTC	0.4879
41	601	BTC	0.7430
41	61	BTC	0.0164
41	121	BTC	-0.0059
41	181	BTC	-0.0059
41	241	BTC	0.0136
41	301	BTC	0.0303
41	361	BTC	0.0303
41	421	BTC	0.9985
41	481	BTC	0.9818
41	541	BTC	0.8934
42	1	BTC	0.5267
42	661	BTC	0.8885
42	721	BTC	0.9970
42	781	BTC	0.9682
42	841	BTC	0.9990
42	901	BTC	-0.1282
42	961	BTC	0.9970
42	1021	BTC	0.9986
42	1081	BTC	0.3178
42	1141	BTC	0.3504
42	61	BTC	0.9682
42	1201	BTC	0.9990
42	1261	BTC	-0.0236
42	1321	BTC	0.9682
42	1381	BTC	-0.9682
42	181	BTC	-0.9955
42	241	BTC	-0.6486
42	301	BTC	-0.9970
42	481	BTC	0.9371
43	1	BTC	0.0044
43	721	BTC	0.7906
43	781	BTC	0.9974
43	841	BTC	0.4549
43	1021	BTC	0.9970
43	1141	BTC	0.4749
43	61	BTC	0.3924
43	1201	BTC	0.9360
43	1261	BTC	-0.3265
43	1321	BTC	0.9716
43	1381	BTC	0.6705
43	121	BTC	-0.0244
43	241	BTC	0.9843
43	301	BTC	0.0044
43	361	BTC	-0.9970
43	541	BTC	0.8225
44	601	BTC	0.7906
45	781	BTC	0.9682
45	841	BTC	0.9682
45	901	BTC	0.9985
45	961	BTC	0.9682
45	1081	BTC	0.9682
45	1141	BTC	0.5267
45	1261	BTC	0.9985
46	1	BTC	-0.8934
46	121	BTC	0.9747
46	301	BTC	0.9628
47	781	BTC	0.9985
47	841	BTC	0.9982
47	901	BTC	0.9984
47	1021	BTC	0.9882
47	1081	BTC	0.9531
47	1141	BTC	0.9686
47	1201	BTC	0.9955
47	1261	BTC	0.9818
47	1381	BTC	0.5106
47	121	BTC	0.5423
47	241	BTC	0.9920
48	721	BTC	0.9981
48	1021	BTC	-0.9992
48	1141	BTC	0.9985
48	1201	BTC	0.3823
48	1321	BTC	-0.7003
48	1381	BTC	0.7906
48	361	BTC	0.9682
48	421	BTC	0.9982
48	481	BTC	0.9682
49	1	BTC	0.9858
49	661	BTC	0.0984
49	721	BTC	0.1110
49	781	BTC	-0.9994
49	841	BTC	0.9100
49	901	BTC	-0.4726
49	1021	BTC	-0.9953
49	1081	BTC	-0.9992
49	1201	BTC	0.6369
49	1261	BTC	-0.0292
49	1321	BTC	0.7003
49	181	BTC	-0.9992
49	301	BTC	0.5106
49	541	BTC	0.9803
50	1	BTC	0.9325
50	181	BTC	0.9493
50	361	BTC	0.0076
52	721	BTC	0.5984
52	781	BTC	0.9995
52	901	BTC	0.6369
52	961	BTC	0.7906
52	1081	BTC	0.9702
52	1141	BTC	0.9729
52	1201	BTC	0.9818
53	1	BTC	-0.2808
53	601	BTC	-0.0007
53	661	BTC	-0.0311
53	721	BTC	0.9882
53	781	BTC	0.9855
53	841	BTC	-0.0281
53	901	BTC	-0.0152
53	961	BTC	-0.0152
53	1021	BTC	-0.9993
53	1081	BTC	0.9325
53	1201	BTC	-0.9992
53	1261	BTC	-0.9988
53	1321	BTC	-0.7269
53	1381	BTC	-0.9993
53	121	BTC	0.9837
53	181	BTC	-0.8652
53	301	BTC	0.9657
53	361	BTC	0.9986
53	421	BTC	0.9702
53	481	BTC	0.9729
53	541	BTC	0.5859
54	121	BTC	-0.9990
54	181	BTC	-0.9990
54	241	BTC	-0.0249
54	301	BTC	-0.3504
54	361	BTC	-0.9972
54	421	BTC	-0.9993
54	481	BTC	-0.9963
54	541	BTC	-0.0311
55	661	BTC	0.9873
55	721	BTC	0.9987
55	781	BTC	0.7096
55	841	BTC	0.3824
55	901	BTC	0.7579
55	961	BTC	0.9806
55	1021	BTC	0.9682
55	61	BTC	-0.6124
55	1201	BTC	0.9732
55	1261	BTC	0.9732
55	121	BTC	-0.9970
55	361	BTC	0.0246
56	601	BTC	0.5859
56	661	BTC	0.8934
56	721	BTC	0.8176
56	781	BTC	0.9818
56	841	BTC	-0.9970
56	961	BTC	-0.5267
56	1021	BTC	0.0660
56	1081	BTC	0.9818
56	1201	BTC	-0.6486
56	1261	BTC	0.9985
56	1321	BTC	0.9325
56	1381	BTC	0.9325
56	361	BTC	-0.9325
56	421	BTC	0.5267
57	1	BTC	0.3511
57	121	BTC	-0.9996
57	241	BTC	-0.9997
57	301	BTC	0.9682
57	361	BTC	-0.9996
25	601	BTC	0.9766
25	721	BTC	0.9818
25	781	BTC	0.7717
25	841	BTC	-0.8126
25	901	BTC	0.9682
25	961	BTC	0.9818
25	1021	BTC	0.6808
25	1141	BTC	0.8862
25	1201	BTC	0.9705
25	1261	BTC	-0.5859
25	1321	BTC	0.9986
25	121	BTC	-0.5994
25	361	BTC	0.9840
25	481	BTC	0.9840
26	1141	BTC	-0.1484
26	1201	BTC	-0.9993
26	1261	BTC	-0.7269
26	1321	BTC	-0.0643
26	1381	BTC	0.9468
26	121	BTC	-0.9970
26	361	BTC	0.9840
26	421	BTC	-0.9944
27	601	BTC	-0.6597
27	661	BTC	-0.9978
27	721	BTC	-0.0160
27	781	BTC	-0.5574
27	841	BTC	-0.3362
27	901	BTC	0.0737
27	961	BTC	-0.0175
27	1021	BTC	-0.0144
27	1081	BTC	0.9834
27	1141	BTC	0.9771
27	1201	BTC	0.4062
27	1261	BTC	-0.7506
27	1381	BTC	0.4108
27	241	BTC	-0.0150
27	301	BTC	-0.5574
27	481	BTC	-0.5267
27	541	BTC	-0.5859
28	601	BTC	0.0534
28	661	BTC	0.9726
28	721	BTC	0.6434
28	781	BTC	0.2559
28	841	BTC	0.4191
28	901	BTC	0.3034
28	961	BTC	0.3082
28	1021	BTC	0.9842
28	1081	BTC	-0.0439
28	1141	BTC	0.0000
28	1201	BTC	0.3074
28	1261	BTC	0.4561
28	1321	BTC	0.3177
28	1381	BTC	0.4547
28	241	BTC	0.4397
28	301	BTC	0.8934
28	361	BTC	-0.5574
28	421	BTC	0.7906
28	481	BTC	0.5267
29	1	BTC	0.3721
29	601	BTC	-0.0008
29	661	BTC	0.4266
29	721	BTC	0.3280
29	781	BTC	0.4266
29	841	BTC	0.3280
29	901	BTC	0.0015
29	961	BTC	0.0015
29	1021	BTC	-0.0009
29	1081	BTC	-0.0008
29	1141	BTC	0.0017
29	61	BTC	0.0000
29	1201	BTC	0.0015
29	1261	BTC	0.0078
29	1321	BTC	0.9985
29	1381	BTC	0.2268
29	121	BTC	-0.2064
29	181	BTC	0.0000
29	241	BTC	0.9970
29	301	BTC	0.0015
29	361	BTC	0.9325
29	421	BTC	0.0015
29	481	BTC	-0.0008
29	541	BTC	0.0015
30	1	BTC	-0.1998
30	601	BTC	0.3433
30	661	BTC	0.3115
30	721	BTC	0.0675
30	781	BTC	0.6249
30	961	BTC	-0.0862
30	1021	BTC	0.9882
30	1081	BTC	-0.7906
30	1141	BTC	-0.0212
30	61	BTC	0.5719
30	1261	BTC	0.3499
30	121	BTC	0.9682
30	241	BTC	-0.0007
30	301	BTC	-0.0007
30	361	BTC	-0.5574
30	421	BTC	-0.5574
31	601	BTC	-0.9993
31	661	BTC	-0.4512
31	721	BTC	0.0064
31	781	BTC	-0.2726
31	841	BTC	0.6124
31	901	BTC	0.3246
31	961	BTC	0.7906
31	1021	BTC	-0.2407
31	1081	BTC	-0.9993
31	1141	BTC	0.4331
31	61	BTC	0.9970
31	1201	BTC	-0.9325
31	181	BTC	0.7906
31	301	BTC	0.9970
31	541	BTC	0.5574
32	601	BTC	-0.9968
32	661	BTC	0.3688
32	721	BTC	0.9712
32	781	BTC	0.0113
32	841	BTC	-0.9993
32	901	BTC	0.9818
32	961	BTC	0.0982
32	1021	BTC	0.9682
32	1081	BTC	-0.0481
32	1141	BTC	-0.6705
32	61	BTC	0.4108
32	1201	BTC	0.5994
32	1261	BTC	0.5267
32	1321	BTC	0.2268
32	241	BTC	0.4723
32	361	BTC	-0.5574
32	421	BTC	0.1131
32	481	BTC	0.0550
32	541	BTC	0.6124
33	1	BTC	0.2488
33	61	BTC	-0.6808
33	121	BTC	-0.5859
33	181	BTC	-0.6705
33	301	BTC	-0.9997
33	361	BTC	-0.6705
33	421	BTC	0.9477
33	541	BTC	-0.3371
35	721	BTC	0.5046
35	781	BTC	-0.0010
35	841	BTC	0.9682
35	901	BTC	0.4199
35	961	BTC	0.9985
35	1021	BTC	0.9985
35	1081	BTC	0.2312
35	1201	BTC	0.9628
35	1261	BTC	0.9970
35	1321	BTC	0.0082
35	1381	BTC	0.5994
36	1	BTC	0.9325
36	601	BTC	0.9682
36	721	BTC	-0.0011
36	781	BTC	0.7430
36	841	BTC	0.9781
36	1201	BTC	0.8934
36	1261	BTC	0.9682
36	1321	BTC	0.7964
36	1381	BTC	0.2047
36	241	BTC	0.9001
36	301	BTC	-0.7650
36	481	BTC	0.0710
36	541	BTC	-0.0339
37	1	BTC	0.9325
37	601	BTC	0.9985
37	721	BTC	0.3876
37	781	BTC	0.0086
37	841	BTC	0.0377
37	901	BTC	0.0448
37	961	BTC	0.9957
37	1021	BTC	0.4098
37	1081	BTC	0.3873
37	1141	BTC	0.9682
37	1201	BTC	0.6369
37	1261	BTC	0.9758
37	1321	BTC	0.9758
37	1381	BTC	0.7096
37	121	BTC	0.9970
37	181	BTC	-0.8308
37	241	BTC	0.9853
37	361	BTC	0.6166
37	541	BTC	0.9549
38	601	BTC	0.9918
38	661	BTC	0.9682
38	721	BTC	0.7906
38	841	BTC	0.4000
38	901	BTC	0.4178
38	961	BTC	0.3873
38	121	BTC	0.5719
38	301	BTC	-0.0027
38	481	BTC	-0.5423
38	541	BTC	0.3669
39	661	BTC	-0.2719
39	721	BTC	0.9819
39	781	BTC	0.9985
39	841	BTC	0.4412
39	901	BTC	0.9990
39	961	BTC	0.9985
39	1021	BTC	0.9990
39	1081	BTC	0.3082
39	1141	BTC	0.9682
39	1201	BTC	0.9984
39	1261	BTC	0.6486
39	301	BTC	0.2273
39	361	BTC	0.9719
39	421	BTC	0.9823
39	541	BTC	0.7506
40	1	BTC	0.9826
40	661	BTC	0.9984
40	721	BTC	0.9818
40	781	BTC	0.9818
40	841	BTC	0.9818
40	901	BTC	0.9995
40	961	BTC	0.3087
40	1021	BTC	0.1306
40	1081	BTC	0.1153
40	1141	BTC	0.1296
40	1201	BTC	0.0303
40	1261	BTC	0.0303
40	1321	BTC	0.0303
40	1381	BTC	0.2889
40	361	BTC	0.9792
40	541	BTC	0.9732
41	1	BTC	0.4879
41	601	BTC	0.7430
41	61	BTC	0.0164
41	121	BTC	-0.0059
41	181	BTC	-0.0059
41	241	BTC	0.0136
41	301	BTC	0.0303
41	361	BTC	0.0303
41	421	BTC	0.9985
41	481	BTC	0.9818
41	541	BTC	0.8934
42	1	BTC	0.5267
42	661	BTC	0.8885
42	721	BTC	0.9970
42	781	BTC	0.9682
42	841	BTC	0.9990
42	901	BTC	-0.1282
42	961	BTC	0.9970
42	1021	BTC	0.9986
42	1081	BTC	0.3178
42	1141	BTC	0.3504
42	61	BTC	0.9682
42	1201	BTC	0.9990
42	1261	BTC	-0.0236
42	1321	BTC	0.9682
42	1381	BTC	-0.9682
42	181	BTC	-0.9955
42	241	BTC	-0.6486
42	301	BTC	-0.9970
42	481	BTC	0.9371
43	1	BTC	0.0044
43	721	BTC	0.7906
43	781	BTC	0.9974
43	841	BTC	0.4549
43	1021	BTC	0.9970
43	1141	BTC	0.4749
43	61	BTC	0.3924
43	1201	BTC	0.9360
43	1261	BTC	-0.3265
43	1321	BTC	0.9716
43	1381	BTC	0.6705
43	121	BTC	-0.0244
43	241	BTC	0.9843
43	301	BTC	0.0044
43	361	BTC	-0.9970
43	541	BTC	0.8225
44	601	BTC	0.7906
45	781	BTC	0.9682
45	841	BTC	0.9682
45	901	BTC	0.9985
45	961	BTC	0.9682
45	1081	BTC	0.9682
45	1141	BTC	0.5267
45	1261	BTC	0.9985
46	1	BTC	-0.8934
46	121	BTC	0.9747
46	301	BTC	0.9628
47	781	BTC	0.9985
47	841	BTC	0.9982
47	901	BTC	0.9984
47	1021	BTC	0.9882
47	1081	BTC	0.9531
47	1141	BTC	0.9686
47	1201	BTC	0.9955
47	1261	BTC	0.9818
47	1381	BTC	0.5106
47	121	BTC	0.5423
47	241	BTC	0.9920
48	721	BTC	0.9981
48	1021	BTC	-0.9992
48	1141	BTC	0.9985
48	1201	BTC	0.3823
48	1321	BTC	-0.7003
48	1381	BTC	0.7906
48	361	BTC	0.9682
48	421	BTC	0.9982
48	481	BTC	0.9682
49	1	BTC	0.9858
49	661	BTC	0.0984
49	721	BTC	0.1110
49	781	BTC	-0.9994
49	841	BTC	0.9100
49	901	BTC	-0.4726
49	1021	BTC	-0.9953
49	1081	BTC	-0.9992
49	1201	BTC	0.6369
49	1261	BTC	-0.0292
49	1321	BTC	0.7003
49	181	BTC	-0.9992
49	301	BTC	0.5106
49	541	BTC	0.9803
50	1	BTC	0.9325
50	181	BTC	0.9493
50	361	BTC	0.0076
52	721	BTC	0.5984
52	781	BTC	0.9995
52	901	BTC	0.6369
52	961	BTC	0.7906
52	1081	BTC	0.9702
52	1141	BTC	0.9729
52	1201	BTC	0.9818
53	1	BTC	-0.2808
53	601	BTC	-0.0007
53	661	BTC	-0.0311
53	721	BTC	0.9882
53	781	BTC	0.9855
53	841	BTC	-0.0281
53	901	BTC	-0.0152
53	961	BTC	-0.0152
53	1021	BTC	-0.9993
53	1081	BTC	0.9325
53	1201	BTC	-0.9992
53	1261	BTC	-0.9988
53	1321	BTC	-0.7269
53	1381	BTC	-0.9993
53	121	BTC	0.9837
53	181	BTC	-0.8652
53	301	BTC	0.9657
53	361	BTC	0.9986
53	421	BTC	0.9702
53	481	BTC	0.9729
53	541	BTC	0.5859
54	121	BTC	-0.9990
54	181	BTC	-0.9990
54	241	BTC	-0.0249
54	301	BTC	-0.3504
54	361	BTC	-0.9972
54	421	BTC	-0.9993
54	481	BTC	-0.9963
54	541	BTC	-0.0311
55	661	BTC	0.9873
55	721	BTC	0.9987
55	781	BTC	0.7096
55	841	BTC	0.3824
55	901	BTC	0.7579
55	961	BTC	0.9806
55	1021	BTC	0.9682
55	61	BTC	-0.6124
55	1201	BTC	0.9732
55	1261	BTC	0.9732
55	121	BTC	-0.9970
55	361	BTC	0.0246
56	601	BTC	0.5859
56	661	BTC	0.8934
56	721	BTC	0.8176
56	781	BTC	0.9818
56	841	BTC	-0.9970
56	961	BTC	-0.5267
56	1021	BTC	0.0660
56	1081	BTC	0.9818
56	1201	BTC	-0.6486
56	1261	BTC	0.9985
56	1321	BTC	0.9325
56	1381	BTC	0.9325
56	361	BTC	-0.9325
56	421	BTC	0.5267
57	1	BTC	0.3511
57	121	BTC	-0.9996
57	241	BTC	-0.9997
57	301	BTC	0.9682
57	361	BTC	-0.9996
25	601	BTC	0.9766
25	721	BTC	0.9818
25	781	BTC	0.7717
25	841	BTC	-0.8126
25	901	BTC	0.9682
25	961	BTC	0.9818
25	1021	BTC	0.6808
25	1141	BTC	0.8862
25	1201	BTC	0.9705
25	1261	BTC	-0.5859
25	1321	BTC	0.9986
25	121	BTC	-0.5994
25	361	BTC	0.9840
25	481	BTC	0.9840
26	1141	BTC	-0.1484
26	1201	BTC	-0.9993
26	1261	BTC	-0.7269
26	1321	BTC	-0.0643
26	1381	BTC	0.9468
26	121	BTC	-0.9970
26	361	BTC	0.9840
26	421	BTC	-0.9944
27	601	BTC	-0.6597
27	661	BTC	-0.9978
27	721	BTC	-0.0160
27	781	BTC	-0.5574
27	841	BTC	-0.3362
27	901	BTC	0.0737
27	961	BTC	-0.0175
27	1021	BTC	-0.0144
27	1081	BTC	0.9834
27	1141	BTC	0.9771
27	1201	BTC	0.4062
27	1261	BTC	-0.7506
27	1381	BTC	0.4108
27	241	BTC	-0.0150
27	301	BTC	-0.5574
27	481	BTC	-0.5267
27	541	BTC	-0.5859
28	601	BTC	0.0534
28	661	BTC	0.9726
28	721	BTC	0.6434
28	781	BTC	0.2559
28	841	BTC	0.4191
28	901	BTC	0.3034
28	961	BTC	0.3082
28	1021	BTC	0.9842
28	1081	BTC	-0.0439
28	1141	BTC	0.0000
28	1201	BTC	0.3074
28	1261	BTC	0.4561
28	1321	BTC	0.3177
28	1381	BTC	0.4547
28	241	BTC	0.4397
28	301	BTC	0.8934
28	361	BTC	-0.5574
28	421	BTC	0.7906
28	481	BTC	0.5267
29	1	BTC	0.3721
29	601	BTC	-0.0008
29	661	BTC	0.4266
29	721	BTC	0.3280
29	781	BTC	0.4266
29	841	BTC	0.3280
29	901	BTC	0.0015
29	961	BTC	0.0015
29	1021	BTC	-0.0009
29	1081	BTC	-0.0008
29	1141	BTC	0.0017
29	61	BTC	0.0000
29	1201	BTC	0.0015
29	1261	BTC	0.0078
29	1321	BTC	0.9985
29	1381	BTC	0.2268
29	121	BTC	-0.2064
29	181	BTC	0.0000
29	241	BTC	0.9970
29	301	BTC	0.0015
29	361	BTC	0.9325
29	421	BTC	0.0015
29	481	BTC	-0.0008
29	541	BTC	0.0015
30	1	BTC	-0.1998
30	601	BTC	0.3433
30	661	BTC	0.3115
30	721	BTC	0.0675
30	781	BTC	0.6249
30	961	BTC	-0.0862
30	1021	BTC	0.9882
30	1081	BTC	-0.7906
30	1141	BTC	-0.0212
30	61	BTC	0.5719
30	1261	BTC	0.3499
30	121	BTC	0.9682
30	241	BTC	-0.0007
30	301	BTC	-0.0007
30	361	BTC	-0.5574
30	421	BTC	-0.5574
31	601	BTC	-0.9993
31	661	BTC	-0.4512
31	721	BTC	0.0064
31	781	BTC	-0.2726
31	841	BTC	0.6124
31	901	BTC	0.3246
31	961	BTC	0.7906
31	1021	BTC	-0.2407
31	1081	BTC	-0.9993
31	1141	BTC	0.4331
31	61	BTC	0.9970
31	1201	BTC	-0.9325
31	181	BTC	0.7906
31	301	BTC	0.9970
31	541	BTC	0.5574
32	601	BTC	-0.9968
32	661	BTC	0.3688
32	721	BTC	0.9712
32	781	BTC	0.0113
32	841	BTC	-0.9993
32	901	BTC	0.9818
32	961	BTC	0.0982
32	1021	BTC	0.9682
32	1081	BTC	-0.0481
32	1141	BTC	-0.6705
32	61	BTC	0.4108
32	1201	BTC	0.5994
32	1261	BTC	0.5267
32	1321	BTC	0.2268
32	241	BTC	0.4723
32	361	BTC	-0.5574
32	421	BTC	0.1131
32	481	BTC	0.0550
32	541	BTC	0.6124
33	1	BTC	0.2488
33	61	BTC	-0.6808
33	121	BTC	-0.5859
33	181	BTC	-0.6705
33	301	BTC	-0.9997
33	361	BTC	-0.6705
33	421	BTC	0.9477
33	541	BTC	-0.3371
35	721	BTC	0.5046
35	781	BTC	-0.0010
35	841	BTC	0.9682
35	901	BTC	0.4199
35	961	BTC	0.9985
35	1021	BTC	0.9985
35	1081	BTC	0.2312
35	1201	BTC	0.9628
35	1261	BTC	0.9970
35	1321	BTC	0.0082
35	1381	BTC	0.5994
36	1	BTC	0.9325
36	601	BTC	0.9682
36	721	BTC	-0.0011
36	781	BTC	0.7430
36	841	BTC	0.9781
36	1201	BTC	0.8934
36	1261	BTC	0.9682
36	1321	BTC	0.7964
36	1381	BTC	0.2047
36	241	BTC	0.9001
36	301	BTC	-0.7650
36	481	BTC	0.0710
36	541	BTC	-0.0339
37	1	BTC	0.9325
37	601	BTC	0.9985
37	721	BTC	0.3876
37	781	BTC	0.0086
37	841	BTC	0.0377
37	901	BTC	0.0448
37	961	BTC	0.9957
37	1021	BTC	0.4098
37	1081	BTC	0.3873
37	1141	BTC	0.9682
37	1201	BTC	0.6369
37	1261	BTC	0.9758
37	1321	BTC	0.9758
37	1381	BTC	0.7096
37	121	BTC	0.9970
37	181	BTC	-0.8308
37	241	BTC	0.9853
37	361	BTC	0.6166
37	541	BTC	0.9549
38	601	BTC	0.9918
38	661	BTC	0.9682
38	721	BTC	0.7906
38	841	BTC	0.4000
38	901	BTC	0.4178
38	961	BTC	0.3873
38	121	BTC	0.5719
38	301	BTC	-0.0027
38	481	BTC	-0.5423
38	541	BTC	0.3669
39	661	BTC	-0.2719
39	721	BTC	0.9819
39	781	BTC	0.9985
39	841	BTC	0.4412
39	901	BTC	0.9990
39	961	BTC	0.9985
39	1021	BTC	0.9990
39	1081	BTC	0.3082
39	1141	BTC	0.9682
39	1201	BTC	0.9984
39	1261	BTC	0.6486
39	301	BTC	0.2273
39	361	BTC	0.9719
39	421	BTC	0.9823
39	541	BTC	0.7506
40	1	BTC	0.9826
40	661	BTC	0.9984
40	721	BTC	0.9818
40	781	BTC	0.9818
40	841	BTC	0.9818
40	901	BTC	0.9995
40	961	BTC	0.3087
40	1021	BTC	0.1306
40	1081	BTC	0.1153
40	1141	BTC	0.1296
40	1201	BTC	0.0303
40	1261	BTC	0.0303
40	1321	BTC	0.0303
40	1381	BTC	0.2889
40	361	BTC	0.9792
40	541	BTC	0.9732
41	1	BTC	0.4879
41	601	BTC	0.7430
41	61	BTC	0.0164
41	121	BTC	-0.0059
41	181	BTC	-0.0059
41	241	BTC	0.0136
41	301	BTC	0.0303
41	361	BTC	0.0303
41	421	BTC	0.9985
41	481	BTC	0.9818
41	541	BTC	0.8934
42	1	BTC	0.5267
42	661	BTC	0.8885
42	721	BTC	0.9970
42	781	BTC	0.9682
42	841	BTC	0.9990
42	901	BTC	-0.1282
42	961	BTC	0.9970
42	1021	BTC	0.9986
42	1081	BTC	0.3178
42	1141	BTC	0.3504
42	61	BTC	0.9682
42	1201	BTC	0.9990
42	1261	BTC	-0.0236
42	1321	BTC	0.9682
42	1381	BTC	-0.9682
42	181	BTC	-0.9955
42	241	BTC	-0.6486
42	301	BTC	-0.9970
42	481	BTC	0.9371
43	1	BTC	0.0044
43	721	BTC	0.7906
43	781	BTC	0.9974
43	841	BTC	0.4549
43	1021	BTC	0.9970
43	1141	BTC	0.4749
43	61	BTC	0.3924
43	1201	BTC	0.9360
43	1261	BTC	-0.3265
43	1321	BTC	0.9716
43	1381	BTC	0.6705
43	121	BTC	-0.0244
43	241	BTC	0.9843
43	301	BTC	0.0044
43	361	BTC	-0.9970
43	541	BTC	0.8225
44	601	BTC	0.7906
45	781	BTC	0.9682
45	841	BTC	0.9682
45	901	BTC	0.9985
45	961	BTC	0.9682
45	1081	BTC	0.9682
45	1141	BTC	0.5267
45	1261	BTC	0.9985
46	1	BTC	-0.8934
46	121	BTC	0.9747
46	301	BTC	0.9628
47	781	BTC	0.9985
47	841	BTC	0.9982
47	901	BTC	0.9984
47	1021	BTC	0.9882
47	1081	BTC	0.9531
47	1141	BTC	0.9686
47	1201	BTC	0.9955
47	1261	BTC	0.9818
47	1381	BTC	0.5106
47	121	BTC	0.5423
47	241	BTC	0.9920
48	721	BTC	0.9981
48	1021	BTC	-0.9992
48	1141	BTC	0.9985
48	1201	BTC	0.3823
48	1321	BTC	-0.7003
48	1381	BTC	0.7906
48	361	BTC	0.9682
48	421	BTC	0.9982
48	481	BTC	0.9682
49	1	BTC	0.9858
49	661	BTC	0.0984
49	721	BTC	0.1110
49	781	BTC	-0.9994
49	841	BTC	0.9100
49	901	BTC	-0.4726
49	1021	BTC	-0.9953
49	1081	BTC	-0.9992
49	1201	BTC	0.6369
49	1261	BTC	-0.0292
49	1321	BTC	0.7003
49	181	BTC	-0.9992
49	301	BTC	0.5106
49	541	BTC	0.9803
50	1	BTC	0.9325
50	181	BTC	0.9493
50	361	BTC	0.0076
52	721	BTC	0.5984
52	781	BTC	0.9995
52	901	BTC	0.6369
52	961	BTC	0.7906
52	1081	BTC	0.9702
52	1141	BTC	0.9729
52	1201	BTC	0.9818
53	1	BTC	-0.2808
53	601	BTC	-0.0007
53	661	BTC	-0.0311
53	721	BTC	0.9882
53	781	BTC	0.9855
53	841	BTC	-0.0281
53	901	BTC	-0.0152
53	961	BTC	-0.0152
53	1021	BTC	-0.9993
53	1081	BTC	0.9325
53	1201	BTC	-0.9992
53	1261	BTC	-0.9988
53	1321	BTC	-0.7269
53	1381	BTC	-0.9993
53	121	BTC	0.9837
53	181	BTC	-0.8652
53	301	BTC	0.9657
53	361	BTC	0.9986
53	421	BTC	0.9702
53	481	BTC	0.9729
53	541	BTC	0.5859
54	121	BTC	-0.9990
54	181	BTC	-0.9990
54	241	BTC	-0.0249
54	301	BTC	-0.3504
54	361	BTC	-0.9972
54	421	BTC	-0.9993
54	481	BTC	-0.9963
54	541	BTC	-0.0311
55	661	BTC	0.9873
55	721	BTC	0.9987
55	781	BTC	0.7096
55	841	BTC	0.3824
55	901	BTC	0.7579
55	961	BTC	0.9806
55	1021	BTC	0.9682
55	61	BTC	-0.6124
55	1201	BTC	0.9732
55	1261	BTC	0.9732
55	121	BTC	-0.9970
55	361	BTC	0.0246
56	601	BTC	0.5859
56	661	BTC	0.8934
56	721	BTC	0.8176
56	781	BTC	0.9818
56	841	BTC	-0.9970
56	961	BTC	-0.5267
56	1021	BTC	0.0660
56	1081	BTC	0.9818
56	1201	BTC	-0.6486
56	1261	BTC	0.9985
56	1321	BTC	0.9325
56	1381	BTC	0.9325
56	361	BTC	-0.9325
56	421	BTC	0.5267
57	1	BTC	0.3511
57	121	BTC	-0.9996
57	241	BTC	-0.9997
57	301	BTC	0.9682
57	361	BTC	-0.9996
\.


--
-- Data for Name: sentiment_fact; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sentiment_fact (id, dateid, timeid, trading_symbol, comp_sentiment) FROM stdin;
1	25	121	BTC	0.5267
2	25	361	BTC	0.0044
3	25	481	BTC	0.3433
4	25	601	BTC	-0.9990
5	25	721	BTC	0.4412
6	25	781	BTC	0.7430
7	25	841	BTC	0.8934
8	25	901	BTC	-0.0339
9	25	961	BTC	-0.9990
10	25	1021	BTC	0.9732
11	25	1141	BTC	-0.9953
12	25	1201	BTC	0.9982
13	25	1261	BTC	-0.5859
14	25	1321	BTC	0.9858
15	26	121	BTC	0.9682
16	26	361	BTC	-0.9996
17	26	421	BTC	0.9818
18	26	1141	BTC	0.0000
19	26	1201	BTC	0.0550
20	26	1261	BTC	0.7964
21	26	1321	BTC	0.3082
22	26	1381	BTC	0.0710
23	27	241	BTC	0.9325
24	27	301	BTC	-0.9993
25	27	481	BTC	0.6705
26	27	541	BTC	0.5994
27	27	601	BTC	-0.0010
28	27	661	BTC	0.9682
29	27	721	BTC	0.9682
30	27	781	BTC	0.9682
31	27	841	BTC	-0.9970
32	27	901	BTC	0.9531
33	27	961	BTC	0.9985
34	27	1021	BTC	0.9792
35	27	1081	BTC	0.9984
36	27	1141	BTC	0.0737
37	27	1201	BTC	0.4108
38	27	1261	BTC	0.0476
39	27	1381	BTC	-0.0007
40	28	241	BTC	0.9682
41	28	301	BTC	0.2047
42	28	361	BTC	0.6124
43	28	421	BTC	-0.5574
44	28	481	BTC	0.9682
45	28	601	BTC	0.9855
46	28	661	BTC	0.7096
47	28	721	BTC	-0.9970
48	28	781	BTC	-0.3265
49	28	841	BTC	0.9682
50	28	901	BTC	-0.3371
51	28	961	BTC	0.9732
52	28	1021	BTC	-0.0175
53	28	1081	BTC	0.9325
54	28	1141	BTC	0.3873
55	28	1201	BTC	-0.9994
56	28	1261	BTC	0.0064
57	28	1321	BTC	-0.9992
58	28	1381	BTC	-0.8308
59	29	1	BTC	-0.9955
60	29	61	BTC	0.9918
61	29	121	BTC	0.9842
62	29	181	BTC	-0.3362
63	29	241	BTC	0.3178
64	29	301	BTC	0.0982
65	29	361	BTC	0.7906
66	29	421	BTC	0.6486
67	29	481	BTC	-0.5205
68	29	541	BTC	0.9325
69	29	601	BTC	-0.0311
70	29	661	BTC	-0.2726
71	29	721	BTC	0.9985
72	29	781	BTC	0.5984
73	29	841	BTC	0.9985
74	29	901	BTC	-0.6808
75	29	961	BTC	0.9935
76	29	1021	BTC	0.9882
77	29	1081	BTC	0.9970
78	29	1141	BTC	0.5719
79	29	1201	BTC	0.9985
80	29	1261	BTC	-0.1484
81	29	1321	BTC	0.9657
82	29	1381	BTC	0.7906
83	30	1	BTC	0.9818
84	30	61	BTC	0.9371
85	30	121	BTC	0.7906
86	30	241	BTC	0.0876
87	30	301	BTC	0.9974
88	30	361	BTC	-0.0008
89	30	421	BTC	0.9682
90	30	601	BTC	0.2165
91	30	661	BTC	0.8176
92	30	721	BTC	0.9682
93	30	781	BTC	-0.0007
94	30	961	BTC	-0.5267
95	30	1021	BTC	0.6369
96	30	1081	BTC	0.9818
97	30	1141	BTC	0.9806
98	30	1261	BTC	-0.0439
99	31	61	BTC	0.9477
100	31	181	BTC	0.9981
101	31	301	BTC	0.9716
102	31	541	BTC	0.9493
103	31	601	BTC	0.9747
104	31	661	BTC	-0.9325
105	31	721	BTC	0.3721
106	31	781	BTC	0.0377
107	31	841	BTC	0.9818
108	31	901	BTC	0.0044
109	31	961	BTC	0.0742
110	31	1021	BTC	0.2559
111	31	1081	BTC	-0.9993
112	31	1141	BTC	-0.0144
113	31	1201	BTC	0.9990
114	32	61	BTC	0.9840
115	32	241	BTC	0.3246
116	32	361	BTC	0.7506
117	32	421	BTC	0.9628
118	32	481	BTC	-0.5574
119	32	541	BTC	0.7906
120	32	601	BTC	-0.2407
121	32	661	BTC	-0.9997
122	32	721	BTC	0.9970
123	32	781	BTC	0.9990
124	32	841	BTC	0.8885
125	32	901	BTC	0.6808
126	32	961	BTC	0.6369
127	32	1021	BTC	-0.0281
128	32	1081	BTC	-0.0011
129	32	1141	BTC	0.3824
130	32	1201	BTC	0.2488
131	32	1261	BTC	-0.6705
132	32	1321	BTC	0.7717
133	33	1	BTC	-0.6705
134	33	61	BTC	0.9953
135	33	121	BTC	0.9682
136	33	181	BTC	0.3280
137	33	301	BTC	0.0015
138	33	361	BTC	0.9468
139	33	421	BTC	0.0015
140	33	541	BTC	0.4266
141	35	721	BTC	0.9726
142	35	781	BTC	0.0731
143	35	841	BTC	0.2268
144	35	901	BTC	0.2793
145	35	961	BTC	0.0246
146	35	1021	BTC	-0.0239
147	35	1081	BTC	0.7906
148	35	1201	BTC	0.5994
149	35	1261	BTC	0.7096
150	35	1321	BTC	0.9984
151	35	1381	BTC	-0.6597
152	36	1	BTC	0.7906
153	36	241	BTC	-0.5859
154	36	301	BTC	0.7906
155	36	481	BTC	0.3074
156	36	541	BTC	0.9990
157	36	601	BTC	0.0000
158	36	721	BTC	-0.9997
159	36	781	BTC	0.5574
160	36	841	BTC	0.9853
161	36	1201	BTC	0.9771
162	36	1261	BTC	-0.5574
163	36	1321	BTC	0.0078
164	36	1381	BTC	-0.0212
165	37	1	BTC	0.9970
166	37	121	BTC	0.0904
167	37	181	BTC	0.9682
168	37	241	BTC	-0.6486
169	37	361	BTC	0.4266
170	37	541	BTC	0.0245
171	37	601	BTC	-0.2719
172	37	721	BTC	0.3688
173	37	781	BTC	-0.5423
174	37	841	BTC	0.9686
175	37	901	BTC	0.1131
176	37	961	BTC	0.9985
177	37	1021	BTC	0.7906
178	37	1081	BTC	0.4191
179	37	1141	BTC	-0.0152
180	37	1201	BTC	0.4108
181	37	1261	BTC	0.3873
182	37	1321	BTC	-0.0311
183	37	1381	BTC	0.9628
184	38	121	BTC	-0.9992
185	38	301	BTC	0.1153
186	38	481	BTC	0.9955
187	38	541	BTC	0.8862
188	38	601	BTC	-0.6486
189	38	661	BTC	0.4549
190	38	721	BTC	0.3669
191	38	841	BTC	0.2273
192	38	901	BTC	-0.9325
193	38	961	BTC	0.5267
194	39	301	BTC	0.9732
195	39	361	BTC	-0.6705
196	39	421	BTC	0.9818
197	39	541	BTC	0.9985
198	39	661	BTC	0.5106
199	39	721	BTC	-0.9978
200	39	781	BTC	0.0015
201	39	841	BTC	-0.7506
202	39	901	BTC	0.0675
203	39	961	BTC	0.0113
204	39	1021	BTC	0.5719
205	39	1081	BTC	0.9970
206	39	1141	BTC	0.9985
207	39	1201	BTC	-0.7906
208	39	1261	BTC	0.9984
209	40	1	BTC	-0.0009
210	40	361	BTC	-0.1998
211	40	541	BTC	0.7579
212	40	661	BTC	0.3115
213	40	721	BTC	0.9682
214	40	781	BTC	-0.5574
215	40	841	BTC	0.9882
216	40	901	BTC	-0.9993
217	40	961	BTC	0.9803
218	40	1021	BTC	0.9758
219	40	1081	BTC	0.9682
220	40	1141	BTC	0.4178
221	40	1201	BTC	0.4547
222	40	1261	BTC	0.8225
223	40	1321	BTC	-0.2808
224	40	1381	BTC	0.9792
225	41	1	BTC	0.9840
226	41	61	BTC	0.0091
227	41	121	BTC	-0.8652
228	41	181	BTC	0.2268
229	41	241	BTC	-0.9993
230	41	301	BTC	0.9818
231	41	361	BTC	-0.0249
232	41	421	BTC	-0.8934
233	41	481	BTC	-0.9944
234	41	541	BTC	0.9682
235	41	601	BTC	-0.5574
236	42	1	BTC	0.0082
237	42	61	BTC	0.9682
238	42	181	BTC	0.5106
239	42	241	BTC	0.5859
240	42	301	BTC	0.4331
241	42	481	BTC	0.4098
242	42	661	BTC	-0.5859
243	42	721	BTC	0.9766
244	42	781	BTC	0.9985
245	42	841	BTC	0.9360
246	42	901	BTC	-0.9963
247	42	961	BTC	-0.5574
248	42	1021	BTC	-0.0160
249	42	1081	BTC	-0.0244
250	42	1141	BTC	0.6369
251	42	1201	BTC	-0.9970
252	42	1261	BTC	-0.0292
253	42	1321	BTC	-0.0152
254	42	1381	BTC	0.0660
255	43	1	BTC	0.9719
256	43	61	BTC	0.3177
257	43	121	BTC	0.9705
258	43	241	BTC	0.3082
259	43	301	BTC	0.9818
260	43	361	BTC	-0.7003
261	43	541	BTC	0.9985
262	43	721	BTC	0.9970
263	43	781	BTC	-0.0007
264	43	841	BTC	0.4062
265	43	1021	BTC	-0.9992
266	43	1141	BTC	0.9818
267	43	1201	BTC	0.9837
268	43	1261	BTC	0.9781
269	43	1321	BTC	0.9702
270	43	1381	BTC	0.9920
271	44	601	BTC	0.3499
272	45	781	BTC	0.9682
273	45	841	BTC	-0.7650
274	45	901	BTC	0.7003
275	45	961	BTC	-0.9970
276	45	1081	BTC	0.9729
277	45	1141	BTC	-0.9972
278	45	1261	BTC	-0.0862
279	46	1	BTC	0.6166
280	46	121	BTC	0.9325
281	46	301	BTC	-0.5994
282	47	121	BTC	0.9325
283	47	241	BTC	-0.0643
284	47	781	BTC	0.9970
285	47	841	BTC	0.9957
286	47	901	BTC	0.9882
287	47	1021	BTC	0.9840
288	47	1081	BTC	-0.5267
289	47	1141	BTC	0.3876
290	47	1201	BTC	0.4879
291	47	1261	BTC	0.9100
292	47	1381	BTC	0.8934
293	48	361	BTC	-0.7269
294	48	421	BTC	0.9792
295	48	481	BTC	0.4397
296	48	721	BTC	-0.9996
297	48	1021	BTC	-0.4512
298	48	1141	BTC	0.9819
299	48	1201	BTC	0.9712
300	48	1321	BTC	0.0017
301	48	1381	BTC	0.4749
302	49	1	BTC	0.4561
303	49	181	BTC	0.7430
304	49	301	BTC	-0.0008
305	49	541	BTC	0.4000
306	49	661	BTC	-0.9993
307	49	721	BTC	0.9818
308	49	781	BTC	0.3272
309	49	841	BTC	0.6249
310	49	901	BTC	-0.9993
311	49	1021	BTC	-0.0481
312	49	1081	BTC	0.9682
313	49	1201	BTC	0.0271
314	49	1261	BTC	0.8934
315	49	1321	BTC	-0.9992
316	50	1	BTC	0.0015
317	50	181	BTC	0.9985
318	50	361	BTC	0.5859
319	52	721	BTC	0.0086
320	52	781	BTC	0.3504
321	52	901	BTC	0.6434
322	52	961	BTC	-0.9993
323	52	1081	BTC	0.9826
324	52	1141	BTC	0.3924
325	52	1201	BTC	0.0164
326	53	1	BTC	0.9873
327	53	121	BTC	-0.9968
328	53	181	BTC	0.0015
329	53	301	BTC	-0.8126
330	53	361	BTC	0.9729
331	53	421	BTC	0.9983
332	53	481	BTC	-0.0008
333	53	541	BTC	0.9990
334	53	601	BTC	-0.2064
335	53	661	BTC	-0.3504
336	53	721	BTC	0.9682
337	53	781	BTC	0.5267
338	53	841	BTC	0.5267
339	53	901	BTC	0.5046
340	53	961	BTC	0.5423
341	53	1021	BTC	0.0534
342	53	1081	BTC	0.9987
343	53	1201	BTC	-0.1910
344	53	1261	BTC	0.0448
345	53	1321	BTC	0.3280
346	53	1381	BTC	-0.6124
347	54	121	BTC	-0.0027
348	54	181	BTC	0.5267
349	54	241	BTC	0.9843
350	54	301	BTC	0.9985
351	54	361	BTC	0.9995
352	54	421	BTC	0.0000
353	54	481	BTC	0.9834
354	54	541	BTC	0.9702
355	55	61	BTC	0.9970
356	55	121	BTC	-0.7269
357	55	361	BTC	0.9325
358	55	661	BTC	0.9970
359	55	721	BTC	0.2312
360	55	781	BTC	0.6124
361	55	841	BTC	0.4415
362	55	901	BTC	0.9982
363	55	961	BTC	0.3034
364	55	1021	BTC	0.4199
365	55	1201	BTC	0.9986
366	55	1261	BTC	0.9682
367	56	361	BTC	-0.9682
368	56	421	BTC	0.9758
369	56	601	BTC	0.4723
370	56	661	BTC	-0.1282
371	56	721	BTC	0.3823
372	56	781	BTC	0.8934
373	56	841	BTC	0.9682
374	56	961	BTC	0.9823
375	56	1021	BTC	-0.0150
376	56	1081	BTC	0.0015
377	56	1201	BTC	0.3511
378	56	1261	BTC	-0.9970
379	56	1321	BTC	0.9549
380	56	1381	BTC	-0.9988
381	57	1	BTC	0.0076
382	57	121	BTC	0.9986
383	57	241	BTC	0.9001
384	57	301	BTC	0.9325
385	57	361	BTC	0.0136
386	59	781	BTC	0.9670
387	59	841	BTC	0.9670
388	59	1081	BTC	0.9670
389	59	121	BTC	-0.9987
390	60	601	BTC	-0.2757
391	60	661	BTC	-0.9993
392	59	781	BTC	0.9670
393	59	841	BTC	0.9670
394	59	1081	BTC	0.9670
395	59	121	BTC	-0.9987
396	60	601	BTC	-0.2757
397	60	661	BTC	-0.9993
398	3	601	BTC	-0.2757
399	3	661	BTC	-0.9993
400	3	961	BTC	0.8225
401	3	601	BTC	-0.2757
402	3	661	BTC	-0.9993
403	3	961	BTC	0.8225
404	3	601	BTC	-0.2757
405	3	661	BTC	-0.9993
406	3	961	BTC	0.8225
407	3	601	BTC	-0.2757
408	3	661	BTC	-0.9993
409	3	961	BTC	0.8225
410	3	601	BTC	-0.2757
411	3	661	BTC	-0.9993
412	3	961	BTC	0.8225
413	3	601	BTC	-0.2757
414	3	661	BTC	-0.9993
415	3	961	BTC	0.8225
416	3	601	BTC	-0.2757
417	3	661	BTC	-0.9993
418	3	961	BTC	0.8225
419	34	61	BTC	-0.9984
420	3	601	BTC	-0.2757
421	3	661	BTC	-0.9993
422	3	961	BTC	0.8225
423	3	601	BTC	-0.2757
424	3	661	BTC	-0.9993
425	3	961	BTC	0.8225
426	3	601	BTC	-0.2757
427	3	661	BTC	-0.9993
428	3	601	BTC	-0.2757
429	3	661	BTC	-0.9993
430	3	601	BTC	-0.2757
431	3	661	BTC	-0.9993
432	34	781	BTC	0.6997
433	3	601	BTC	-0.2757
434	3	661	BTC	-0.9993
435	3	601	BTC	-0.2757
436	3	661	BTC	-0.9993
437	3	601	BTC	-0.2757
438	3	661	BTC	-0.9993
439	3	601	BTC	-0.2757
440	3	661	BTC	-0.9993
441	3	601	BTC	-0.2757
442	3	661	BTC	-0.9993
443	3	601	BTC	-0.2757
444	3	661	BTC	-0.9993
445	3	601	BTC	-0.2757
446	3	661	BTC	-0.9993
447	3	1381	BTC	0.9325
448	34	1201	BTC	0.9829
449	3	601	BTC	-0.2757
450	3	661	BTC	-0.9993
451	34	1201	BTC	0.9829
452	34	781	BTC	0.9890
453	34	841	BTC	0.9682
454	34	1021	BTC	0.5719
455	34	61	BTC	-0.9638
456	34	1201	BTC	0.9829
457	34	1261	BTC	0.9601
458	34	781	BTC	0.9890
459	34	841	BTC	0.9682
460	34	1021	BTC	0.5719
461	34	61	BTC	-0.9638
462	34	1201	BTC	0.9829
463	34	1261	BTC	0.9601
464	34	781	BTC	0.9890
465	34	841	BTC	0.9682
466	34	1021	BTC	0.5719
467	34	61	BTC	-0.9638
468	34	1201	BTC	0.9829
469	34	1261	BTC	0.9601
470	34	781	BTC	0.9890
471	34	841	BTC	0.9682
472	34	1021	BTC	0.5719
473	34	61	BTC	-0.9638
474	34	1201	BTC	0.9829
475	34	1261	BTC	0.9601
476	34	781	BTC	0.9890
477	34	841	BTC	0.9682
478	34	1021	BTC	0.5719
479	34	1201	BTC	0.9829
480	34	1261	BTC	0.9601
481	62	301	BTC	0.9814
482	62	361	BTC	0.9042
483	62	481	BTC	0.8481
484	34	781	BTC	0.9890
485	34	841	BTC	0.9682
486	34	1021	BTC	0.5719
487	34	1201	BTC	0.9829
488	34	1261	BTC	0.9601
489	62	301	BTC	0.9814
490	62	361	BTC	0.9042
491	62	481	BTC	0.8481
492	34	781	BTC	0.9890
493	34	841	BTC	0.9682
494	34	1021	BTC	0.5719
495	34	1201	BTC	0.9829
496	34	1261	BTC	0.9601
497	62	301	BTC	0.9814
498	62	361	BTC	0.9042
499	62	481	BTC	0.8481
500	34	781	BTC	0.9890
501	34	841	BTC	0.9682
502	34	1021	BTC	0.5719
503	34	1201	BTC	0.9829
504	34	1261	BTC	0.9601
505	62	721	BTC	0.8360
506	62	121	BTC	0.9758
507	62	301	BTC	0.9814
508	62	361	BTC	0.9042
509	62	481	BTC	0.8481
510	34	781	BTC	0.9890
511	34	841	BTC	0.9682
512	34	1021	BTC	0.5719
513	34	1201	BTC	0.9829
514	34	1261	BTC	0.9601
515	62	661	BTC	-0.9972
516	62	721	BTC	0.8360
517	62	301	BTC	0.9814
518	62	361	BTC	0.9042
519	62	541	BTC	0.9970
520	34	781	BTC	0.9890
521	34	841	BTC	0.9682
522	34	1021	BTC	0.5719
523	34	1201	BTC	0.9829
524	34	1261	BTC	0.9601
525	62	721	BTC	0.8360
526	62	361	BTC	0.9042
527	62	481	BTC	0.8481
528	34	781	BTC	0.9890
529	34	841	BTC	0.9682
530	34	1021	BTC	0.5719
531	34	1201	BTC	0.9829
532	34	1261	BTC	0.9601
533	62	721	BTC	0.8360
534	62	361	BTC	0.9042
535	62	481	BTC	0.8481
536	34	781	BTC	0.9890
537	34	841	BTC	0.9682
538	34	1021	BTC	0.5719
539	34	1201	BTC	0.9829
540	34	1261	BTC	0.9601
541	62	721	BTC	0.8360
542	34	781	BTC	0.9890
543	34	841	BTC	0.9682
544	34	1021	BTC	0.5719
545	34	1201	BTC	0.9829
546	34	1261	BTC	0.9601
547	62	721	BTC	0.8360
548	34	781	BTC	0.9890
549	34	841	BTC	0.9682
550	34	1021	BTC	0.5719
551	34	1201	BTC	0.9829
552	34	1261	BTC	0.9601
553	62	721	BTC	0.8360
554	34	781	BTC	0.6997
555	34	841	BTC	0.9682
556	34	1201	BTC	0.9829
557	34	1261	BTC	0.9601
558	62	601	BTC	0.9970
559	62	721	BTC	0.8360
560	34	781	BTC	0.6997
561	34	841	BTC	0.9682
562	34	1201	BTC	0.9829
563	34	1261	BTC	0.9601
564	62	721	BTC	0.8360
565	62	1261	BTC	0.9970
566	62	721	BTC	0.8360
567	62	1021	BTC	0.9985
568	62	1261	BTC	0.9970
569	62	1381	BTC	-0.7351
570	62	301	BTC	0.9814
571	62	361	BTC	0.9042
572	62	481	BTC	0.8481
573	62	721	BTC	0.8360
574	62	1021	BTC	0.9985
575	62	1261	BTC	0.9970
576	62	1381	BTC	-0.7351
577	62	301	BTC	0.9814
578	62	361	BTC	0.9042
579	62	481	BTC	0.8481
580	62	721	BTC	0.8360
581	62	1021	BTC	0.9985
582	62	1261	BTC	0.9970
583	62	1381	BTC	-0.7351
584	62	301	BTC	0.9814
585	62	361	BTC	0.9042
586	62	481	BTC	0.8481
587	62	721	BTC	0.8360
588	62	1021	BTC	0.9985
589	62	1261	BTC	0.9970
590	62	1381	BTC	-0.7351
591	62	301	BTC	0.9814
592	62	361	BTC	0.9042
593	62	481	BTC	0.8481
594	62	721	BTC	0.8360
595	62	1021	BTC	0.9985
596	62	1261	BTC	0.9970
597	62	1381	BTC	-0.7351
598	62	301	BTC	0.9814
599	62	361	BTC	0.9042
600	62	481	BTC	0.8481
601	62	721	BTC	0.8360
602	62	1021	BTC	0.9985
603	62	1081	BTC	0.7003
604	62	1261	BTC	0.9970
605	62	1381	BTC	-0.7351
606	62	301	BTC	0.9814
607	62	361	BTC	0.9042
608	62	481	BTC	0.8481
609	62	721	BTC	0.8360
610	62	1021	BTC	0.9985
611	62	1261	BTC	0.9970
612	62	1381	BTC	-0.7351
613	62	301	BTC	0.9814
614	62	361	BTC	0.9042
615	62	481	BTC	0.8481
616	64	541	BTC	0.9717
617	64	721	BTC	-0.4559
618	64	541	BTC	0.9717
619	63	961	BTC	0.6369
620	64	781	BTC	0.6901
621	64	541	BTC	0.9717
622	64	781	BTC	0.6901
623	64	541	BTC	0.9717
624	64	781	BTC	0.6901
625	64	841	BTC	-0.5574
626	64	541	BTC	0.9717
627	63	1381	BTC	0.6705
628	64	781	BTC	0.6901
629	64	841	BTC	-0.5574
630	64	781	BTC	0.6901
631	64	841	BTC	-0.5574
632	64	781	BTC	0.6901
633	64	841	BTC	-0.5574
634	64	1021	BTC	-0.0815
635	64	781	BTC	0.6901
636	64	841	BTC	-0.5574
637	64	901	BTC	0.9977
638	64	1021	BTC	-0.0815
639	64	1081	BTC	-0.7804
640	64	781	BTC	0.6901
641	64	841	BTC	-0.5574
642	64	1021	BTC	-0.0815
643	64	1081	BTC	-0.7804
644	64	781	BTC	0.6901
645	64	841	BTC	-0.5574
646	64	1021	BTC	0.2634
647	64	1081	BTC	-0.7804
648	64	781	BTC	0.6901
649	64	841	BTC	-0.5574
650	64	1021	BTC	0.2634
651	64	1081	BTC	-0.7804
652	64	781	BTC	0.6901
653	64	841	BTC	-0.5574
654	64	1021	BTC	0.2634
655	64	1081	BTC	-0.7804
656	64	781	BTC	0.6901
657	64	841	BTC	-0.5574
658	64	1021	BTC	0.2634
659	64	1081	BTC	-0.7804
660	64	781	BTC	0.6901
661	64	841	BTC	-0.5574
662	64	1021	BTC	0.2634
663	64	1081	BTC	-0.7804
664	64	781	BTC	0.6901
665	64	841	BTC	-0.5574
666	64	1021	BTC	0.2634
667	64	1081	BTC	-0.7804
668	64	781	BTC	0.6901
669	64	841	BTC	-0.5574
670	64	1021	BTC	0.2634
671	64	1081	BTC	-0.7804
672	64	781	BTC	0.6901
673	64	841	BTC	-0.5574
674	64	1021	BTC	0.2634
675	64	1081	BTC	-0.7804
676	64	781	BTC	0.6901
677	64	841	BTC	-0.5574
678	64	1021	BTC	0.2634
679	64	1081	BTC	-0.7804
680	64	781	BTC	0.6901
681	64	841	BTC	-0.5574
682	64	1021	BTC	0.2634
683	64	1081	BTC	-0.7804
684	64	1261	BTC	-0.9985
685	64	781	BTC	0.6901
686	64	841	BTC	-0.5574
687	64	1021	BTC	0.2634
688	64	1081	BTC	-0.7804
689	64	1261	BTC	-0.9985
690	65	1	BTC	0.9081
691	65	661	BTC	-0.0668
692	65	721	BTC	0.9325
693	65	781	BTC	-0.5574
694	65	241	BTC	0.9833
695	65	301	BTC	0.7964
696	65	541	BTC	0.3221
697	65	1	BTC	0.9081
698	65	661	BTC	-0.0668
699	65	721	BTC	0.9325
700	65	781	BTC	-0.5574
701	65	241	BTC	0.9833
702	65	301	BTC	0.7964
703	65	541	BTC	0.3221
704	65	1	BTC	0.9081
705	65	661	BTC	-0.0668
706	65	721	BTC	0.9325
707	65	781	BTC	-0.5574
708	65	241	BTC	0.9833
709	65	301	BTC	0.7964
710	65	541	BTC	0.3221
711	65	1	BTC	0.9081
712	65	661	BTC	-0.0668
713	65	721	BTC	0.9325
714	65	781	BTC	-0.5574
715	65	241	BTC	0.9833
716	65	301	BTC	0.7964
717	65	541	BTC	0.3221
718	65	1	BTC	0.9081
719	65	661	BTC	0.9325
720	65	721	BTC	0.9325
721	65	781	BTC	-0.5574
722	65	1261	BTC	-0.6808
723	65	301	BTC	0.7964
724	65	541	BTC	-0.6597
725	65	1	BTC	0.9081
726	65	661	BTC	0.9325
727	65	721	BTC	0.9325
728	65	781	BTC	-0.5574
729	65	1261	BTC	-0.6808
730	65	301	BTC	0.7964
731	65	541	BTC	-0.6597
732	65	1	BTC	0.9081
733	65	661	BTC	0.9325
734	65	721	BTC	0.9325
735	65	781	BTC	-0.5574
736	65	1261	BTC	-0.6808
737	65	301	BTC	0.7964
738	65	541	BTC	-0.6597
739	66	1141	BTC	0.5574
740	66	241	BTC	0.5859
741	66	601	BTC	0.7184
742	66	721	BTC	0.7184
743	66	1141	BTC	0.5574
744	66	241	BTC	0.7184
745	66	1141	BTC	0.5574
746	67	121	BTC	0.7184
747	66	1141	BTC	0.5574
748	67	121	BTC	0.7184
749	67	301	BTC	0.6249
750	66	1141	BTC	0.5574
751	67	121	BTC	0.7184
752	67	121	BTC	0.7184
753	67	421	BTC	0.7906
754	67	121	BTC	0.7184
755	67	421	BTC	0.7906
756	67	481	BTC	0.8360
757	67	121	BTC	0.7184
758	67	421	BTC	0.7906
759	67	481	BTC	0.8360
\.


--
-- Data for Name: temp_sent_fact; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.temp_sent_fact (dateid, timeid, trading_symbol, avg) FROM stdin;
56	421	BTC	0.5267
43	1	BTC	0.0044
30	601	BTC	0.3433
54	181	BTC	-0.9990
39	841	BTC	0.4412
41	601	BTC	0.7430
36	1201	BTC	0.8934
36	541	BTC	-0.0339
54	121	BTC	-0.9990
40	541	BTC	0.9732
49	1021	BTC	-0.9953
47	841	BTC	0.9982
33	121	BTC	-0.5859
49	1	BTC	0.9858
48	361	BTC	0.9682
57	121	BTC	-0.9996
52	1201	BTC	0.9818
28	1141	BTC	0.0000
32	481	BTC	0.0550
36	1321	BTC	0.7964
28	961	BTC	0.3082
36	481	BTC	0.0710
56	1381	BTC	0.9325
53	1021	BTC	-0.9993
43	1381	BTC	0.6705
35	1381	BTC	0.5994
35	781	BTC	-0.0010
36	601	BTC	0.9682
42	61	BTC	0.9682
36	1261	BTC	0.9682
42	301	BTC	-0.9970
47	1081	BTC	0.9531
35	1021	BTC	0.9985
40	361	BTC	0.9792
40	661	BTC	0.9984
27	901	BTC	0.0737
27	1381	BTC	0.4108
49	721	BTC	0.0476
53	601	BTC	-0.0007
48	481	BTC	0.9682
36	1381	BTC	0.2047
31	841	BTC	0.6124
27	301	BTC	-0.5574
57	301	BTC	0.9682
53	781	BTC	0.9855
55	781	BTC	0.7096
56	841	BTC	-0.9970
43	1261	BTC	-0.3265
39	1141	BTC	0.9682
33	541	BTC	-0.3371
55	1261	BTC	0.9732
27	961	BTC	-0.0175
36	1	BTC	0.9325
38	961	BTC	0.3873
49	781	BTC	-0.9994
31	721	BTC	0.0064
53	1201	BTC	-0.9992
37	181	BTC	-0.8308
42	181	BTC	-0.9955
38	601	BTC	0.9918
28	1021	BTC	0.9842
27	841	BTC	-0.3362
42	1081	BTC	0.3178
32	961	BTC	0.0982
52	961	BTC	0.7906
39	1261	BTC	0.6486
49	901	BTC	-0.5205
53	1081	BTC	0.9325
54	541	BTC	-0.0311
31	781	BTC	-0.2726
35	961	BTC	0.9985
52	721	BTC	0.5984
37	601	BTC	0.9985
33	61	BTC	-0.6808
40	901	BTC	0.9935
47	1021	BTC	0.9882
42	961	BTC	0.9970
30	61	BTC	0.5719
39	961	BTC	0.9985
26	1141	BTC	-0.1484
53	301	BTC	0.9657
38	721	BTC	0.7906
56	1081	BTC	0.9818
42	481	BTC	0.9371
43	721	BTC	0.7906
40	1201	BTC	0.0876
43	781	BTC	0.9974
29	1081	BTC	-0.0008
25	901	BTC	0.9682
41	361	BTC	0.2165
56	721	BTC	0.8176
45	841	BTC	0.9682
30	301	BTC	-0.0007
27	481	BTC	-0.5267
52	901	BTC	0.6369
32	901	BTC	0.9818
55	961	BTC	0.9806
28	1081	BTC	-0.0439
33	421	BTC	0.9477
48	721	BTC	0.9981
43	1321	BTC	0.9716
50	181	BTC	0.9493
46	121	BTC	0.9747
31	1201	BTC	-0.9325
29	1	BTC	0.3721
37	841	BTC	0.0377
40	721	BTC	0.9818
43	301	BTC	0.0044
40	1321	BTC	0.0742
28	781	BTC	0.2559
31	1081	BTC	-0.9993
27	1021	BTC	-0.0144
42	841	BTC	0.9990
25	361	BTC	0.9840
31	901	BTC	0.3246
39	541	BTC	0.7506
46	301	BTC	0.9628
32	361	BTC	-0.5574
31	961	BTC	0.7906
31	1021	BTC	-0.2407
33	301	BTC	-0.9997
31	61	BTC	0.9970
42	1201	BTC	0.9990
42	661	BTC	0.8885
25	1021	BTC	0.6808
49	1201	BTC	0.6369
53	841	BTC	-0.0281
36	721	BTC	-0.0011
55	841	BTC	0.3824
33	1	BTC	0.2488
33	181	BTC	-0.6705
25	781	BTC	0.7717
33	361	BTC	-0.6705
41	421	BTC	0.9953
35	841	BTC	0.9682
29	721	BTC	0.3280
29	901	BTC	0.0015
26	1381	BTC	0.9468
29	541	BTC	0.0015
29	781	BTC	0.4266
28	661	BTC	0.9726
41	181	BTC	0.0731
29	1381	BTC	0.2268
40	1141	BTC	0.2793
55	361	BTC	0.0246
42	1261	BTC	-0.0239
31	181	BTC	0.7906
32	1201	BTC	0.5994
37	1381	BTC	0.7096
47	901	BTC	0.9984
27	601	BTC	-0.6597
28	421	BTC	0.7906
25	1261	BTC	-0.5859
48	1381	BTC	0.7906
28	1201	BTC	0.3074
39	901	BTC	0.9990
29	181	BTC	0.0000
57	241	BTC	-0.9997
31	541	BTC	0.5574
37	241	BTC	0.9853
27	1141	BTC	0.9771
30	361	BTC	-0.5574
29	1261	BTC	0.0078
30	1141	BTC	-0.0212
35	1261	BTC	0.9970
40	1021	BTC	0.0904
32	1021	BTC	0.9682
56	1201	BTC	-0.6486
29	661	BTC	0.4266
40	1261	BTC	0.0245
39	661	BTC	-0.2719
32	661	BTC	0.3688
38	481	BTC	-0.5423
47	1141	BTC	0.9686
32	421	BTC	0.1131
29	1321	BTC	0.9985
44	601	BTC	0.7906
28	841	BTC	0.4191
53	961	BTC	-0.0152
32	61	BTC	0.4108
37	1081	BTC	0.3873
53	661	BTC	-0.0311
35	1201	BTC	0.9628
49	1081	BTC	-0.9992
40	1081	BTC	0.1153
47	1201	BTC	0.9955
25	1141	BTC	0.8862
42	241	BTC	-0.6486
43	841	BTC	0.4549
38	541	BTC	0.3669
39	301	BTC	0.2273
56	361	BTC	-0.9325
28	481	BTC	0.5267
55	1201	BTC	0.9732
32	1141	BTC	-0.6705
25	721	BTC	0.9818
45	901	BTC	0.9985
47	1381	BTC	0.5106
27	661	BTC	-0.9978
29	301	BTC	0.0015
27	1261	BTC	-0.7506
30	721	BTC	0.0675
32	781	BTC	0.0113
38	121	BTC	0.5719
29	241	BTC	0.9970
56	1261	BTC	0.9985
30	1081	BTC	-0.7906
39	1201	BTC	0.9984
29	1021	BTC	-0.0009
30	1	BTC	-0.1998
55	901	BTC	0.7579
30	661	BTC	0.3115
38	661	BTC	0.9682
28	361	BTC	-0.5574
30	1021	BTC	0.9882
53	1381	BTC	-0.9993
49	541	BTC	0.9803
37	1261	BTC	0.9758
30	121	BTC	0.9682
38	901	BTC	0.4178
28	1381	BTC	0.4547
43	541	BTC	0.8225
53	1	BTC	-0.2808
40	841	BTC	0.9792
26	361	BTC	0.9840
49	661	BTC	0.0091
53	181	BTC	-0.8652
32	1321	BTC	0.2268
32	841	BTC	-0.9993
56	781	BTC	0.9818
54	241	BTC	-0.0249
46	1	BTC	-0.8934
26	421	BTC	-0.9944
45	1081	BTC	0.9682
30	421	BTC	-0.5574
35	1321	BTC	0.0082
45	781	BTC	0.9682
49	301	BTC	0.5106
53	541	BTC	0.5859
31	1141	BTC	0.4331
37	1021	BTC	0.4098
27	541	BTC	-0.5859
25	601	BTC	0.9766
47	781	BTC	0.9985
43	1201	BTC	0.9360
54	481	BTC	-0.9963
27	781	BTC	-0.5574
27	721	BTC	-0.0160
43	121	BTC	-0.0244
37	1201	BTC	0.6369
26	121	BTC	-0.9970
49	1261	BTC	-0.0292
53	901	BTC	-0.0152
56	1021	BTC	0.0660
39	361	BTC	0.9719
28	1321	BTC	0.3177
25	1201	BTC	0.9705
39	1081	BTC	0.3082
47	1261	BTC	0.9818
48	1321	BTC	-0.7003
39	781	BTC	0.9985
31	301	BTC	0.9970
30	241	BTC	-0.0007
27	1201	BTC	0.4062
48	1021	BTC	-0.9992
41	481	BTC	0.9818
53	121	BTC	0.9837
36	841	BTC	0.9781
53	421	BTC	0.9702
47	241	BTC	0.9920
30	1261	BTC	0.3499
42	1321	BTC	0.9682
36	301	BTC	-0.7650
49	1321	BTC	0.7003
43	361	BTC	-0.9970
53	481	BTC	0.9729
54	361	BTC	-0.9972
30	961	BTC	-0.0862
37	361	BTC	0.6166
37	1	BTC	0.9325
25	121	BTC	-0.5994
29	361	BTC	0.9325
26	1321	BTC	-0.0643
42	721	BTC	0.9970
37	961	BTC	0.9957
53	721	BTC	0.9882
25	481	BTC	0.9840
56	961	BTC	-0.5267
37	721	BTC	0.3876
41	1	BTC	0.4879
49	841	BTC	0.9100
56	661	BTC	0.8934
53	1321	BTC	-0.7269
40	781	BTC	0.9792
28	241	BTC	0.4397
57	361	BTC	-0.9996
31	661	BTC	-0.4512
39	721	BTC	0.9819
32	721	BTC	0.9712
29	1141	BTC	0.0017
43	1141	BTC	0.4749
28	1261	BTC	0.4561
36	781	BTC	0.7430
29	601	BTC	-0.0008
38	841	BTC	0.4000
54	421	BTC	-0.9993
25	961	BTC	0.9818
40	1381	BTC	0.3272
30	781	BTC	0.6249
31	601	BTC	-0.9993
32	1081	BTC	-0.0481
42	781	BTC	0.9682
41	301	BTC	0.0271
41	541	BTC	0.8934
49	181	BTC	-0.9992
29	961	BTC	0.0015
45	1261	BTC	0.9985
56	601	BTC	0.5859
37	781	BTC	0.0086
42	1141	BTC	0.3504
28	721	BTC	0.6434
26	1201	BTC	-0.9993
40	1	BTC	0.9826
43	61	BTC	0.3924
41	61	BTC	0.0164
55	661	BTC	0.9873
32	601	BTC	-0.9968
29	1201	BTC	0.0015
25	841	BTC	-0.8126
52	1141	BTC	0.9729
42	1021	BTC	0.9983
29	481	BTC	-0.0008
39	1021	BTC	0.9990
29	121	BTC	-0.2064
54	301	BTC	-0.3504
55	1021	BTC	0.9682
32	1261	BTC	0.5267
42	1	BTC	0.5267
35	721	BTC	0.5046
47	121	BTC	0.5423
28	601	BTC	0.0534
55	721	BTC	0.9987
41	121	BTC	-0.1910
37	901	BTC	0.0448
29	841	BTC	0.3280
55	61	BTC	-0.6124
38	301	BTC	-0.0027
45	1141	BTC	0.5267
43	241	BTC	0.9843
48	1141	BTC	0.9985
52	781	BTC	0.9995
29	61	BTC	0.0000
27	1081	BTC	0.9834
52	1081	BTC	0.9702
43	1021	BTC	0.9970
26	1261	BTC	-0.7269
56	1321	BTC	0.9325
37	121	BTC	0.9970
35	1081	BTC	0.2312
32	541	BTC	0.6124
40	961	BTC	0.4415
48	421	BTC	0.9982
28	901	BTC	0.3034
35	901	BTC	0.4199
53	361	BTC	0.9986
45	961	BTC	0.9682
42	1381	BTC	-0.9682
37	1321	BTC	0.9758
32	241	BTC	0.4723
42	901	BTC	-0.1282
48	1201	BTC	0.3823
28	301	BTC	0.8934
37	1141	BTC	0.9682
39	421	BTC	0.9823
27	241	BTC	-0.0150
29	421	BTC	0.0015
57	1	BTC	0.3511
55	121	BTC	-0.9970
37	541	BTC	0.9549
53	1261	BTC	-0.9988
50	361	BTC	0.0076
25	1321	BTC	0.9986
36	241	BTC	0.9001
50	1	BTC	0.9325
41	241	BTC	0.0136
\.


--
-- Data for Name: time_dim; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.time_dim (timeid, "time", hour, minute) FROM stdin;
1	00:00	0	0
2	00:01	0	1
3	00:02	0	2
4	00:03	0	3
5	00:04	0	4
6	00:05	0	5
7	00:06	0	6
8	00:07	0	7
9	00:08	0	8
10	00:09	0	9
11	00:10	0	10
12	00:11	0	11
13	00:12	0	12
14	00:13	0	13
15	00:14	0	14
16	00:15	0	15
17	00:16	0	16
18	00:17	0	17
19	00:18	0	18
20	00:19	0	19
21	00:20	0	20
22	00:21	0	21
23	00:22	0	22
24	00:23	0	23
25	00:24	0	24
26	00:25	0	25
27	00:26	0	26
28	00:27	0	27
29	00:28	0	28
30	00:29	0	29
31	00:30	0	30
32	00:31	0	31
33	00:32	0	32
34	00:33	0	33
35	00:34	0	34
36	00:35	0	35
37	00:36	0	36
38	00:37	0	37
39	00:38	0	38
40	00:39	0	39
41	00:40	0	40
42	00:41	0	41
43	00:42	0	42
44	00:43	0	43
45	00:44	0	44
46	00:45	0	45
47	00:46	0	46
48	00:47	0	47
49	00:48	0	48
50	00:49	0	49
51	00:50	0	50
52	00:51	0	51
53	00:52	0	52
54	00:53	0	53
55	00:54	0	54
56	00:55	0	55
57	00:56	0	56
58	00:57	0	57
59	00:58	0	58
60	00:59	0	59
61	01:00	1	0
62	01:01	1	1
63	01:02	1	2
64	01:03	1	3
65	01:04	1	4
66	01:05	1	5
67	01:06	1	6
68	01:07	1	7
69	01:08	1	8
70	01:09	1	9
71	01:10	1	10
72	01:11	1	11
73	01:12	1	12
74	01:13	1	13
75	01:14	1	14
76	01:15	1	15
77	01:16	1	16
78	01:17	1	17
79	01:18	1	18
80	01:19	1	19
81	01:20	1	20
82	01:21	1	21
83	01:22	1	22
84	01:23	1	23
85	01:24	1	24
86	01:25	1	25
87	01:26	1	26
88	01:27	1	27
89	01:28	1	28
90	01:29	1	29
91	01:30	1	30
92	01:31	1	31
93	01:32	1	32
94	01:33	1	33
95	01:34	1	34
96	01:35	1	35
97	01:36	1	36
98	01:37	1	37
99	01:38	1	38
100	01:39	1	39
101	01:40	1	40
102	01:41	1	41
103	01:42	1	42
104	01:43	1	43
105	01:44	1	44
106	01:45	1	45
107	01:46	1	46
108	01:47	1	47
109	01:48	1	48
110	01:49	1	49
111	01:50	1	50
112	01:51	1	51
113	01:52	1	52
114	01:53	1	53
115	01:54	1	54
116	01:55	1	55
117	01:56	1	56
118	01:57	1	57
119	01:58	1	58
120	01:59	1	59
121	02:00	2	0
122	02:01	2	1
123	02:02	2	2
124	02:03	2	3
125	02:04	2	4
126	02:05	2	5
127	02:06	2	6
128	02:07	2	7
129	02:08	2	8
130	02:09	2	9
131	02:10	2	10
132	02:11	2	11
133	02:12	2	12
134	02:13	2	13
135	02:14	2	14
136	02:15	2	15
137	02:16	2	16
138	02:17	2	17
139	02:18	2	18
140	02:19	2	19
141	02:20	2	20
142	02:21	2	21
143	02:22	2	22
144	02:23	2	23
145	02:24	2	24
146	02:25	2	25
147	02:26	2	26
148	02:27	2	27
149	02:28	2	28
150	02:29	2	29
151	02:30	2	30
152	02:31	2	31
153	02:32	2	32
154	02:33	2	33
155	02:34	2	34
156	02:35	2	35
157	02:36	2	36
158	02:37	2	37
159	02:38	2	38
160	02:39	2	39
161	02:40	2	40
162	02:41	2	41
163	02:42	2	42
164	02:43	2	43
165	02:44	2	44
166	02:45	2	45
167	02:46	2	46
168	02:47	2	47
169	02:48	2	48
170	02:49	2	49
171	02:50	2	50
172	02:51	2	51
173	02:52	2	52
174	02:53	2	53
175	02:54	2	54
176	02:55	2	55
177	02:56	2	56
178	02:57	2	57
179	02:58	2	58
180	02:59	2	59
181	03:00	3	0
182	03:01	3	1
183	03:02	3	2
184	03:03	3	3
185	03:04	3	4
186	03:05	3	5
187	03:06	3	6
188	03:07	3	7
189	03:08	3	8
190	03:09	3	9
191	03:10	3	10
192	03:11	3	11
193	03:12	3	12
194	03:13	3	13
195	03:14	3	14
196	03:15	3	15
197	03:16	3	16
198	03:17	3	17
199	03:18	3	18
200	03:19	3	19
201	03:20	3	20
202	03:21	3	21
203	03:22	3	22
204	03:23	3	23
205	03:24	3	24
206	03:25	3	25
207	03:26	3	26
208	03:27	3	27
209	03:28	3	28
210	03:29	3	29
211	03:30	3	30
212	03:31	3	31
213	03:32	3	32
214	03:33	3	33
215	03:34	3	34
216	03:35	3	35
217	03:36	3	36
218	03:37	3	37
219	03:38	3	38
220	03:39	3	39
221	03:40	3	40
222	03:41	3	41
223	03:42	3	42
224	03:43	3	43
225	03:44	3	44
226	03:45	3	45
227	03:46	3	46
228	03:47	3	47
229	03:48	3	48
230	03:49	3	49
231	03:50	3	50
232	03:51	3	51
233	03:52	3	52
234	03:53	3	53
235	03:54	3	54
236	03:55	3	55
237	03:56	3	56
238	03:57	3	57
239	03:58	3	58
240	03:59	3	59
241	04:00	4	0
242	04:01	4	1
243	04:02	4	2
244	04:03	4	3
245	04:04	4	4
246	04:05	4	5
247	04:06	4	6
248	04:07	4	7
249	04:08	4	8
250	04:09	4	9
251	04:10	4	10
252	04:11	4	11
253	04:12	4	12
254	04:13	4	13
255	04:14	4	14
256	04:15	4	15
257	04:16	4	16
258	04:17	4	17
259	04:18	4	18
260	04:19	4	19
261	04:20	4	20
262	04:21	4	21
263	04:22	4	22
264	04:23	4	23
265	04:24	4	24
266	04:25	4	25
267	04:26	4	26
268	04:27	4	27
269	04:28	4	28
270	04:29	4	29
271	04:30	4	30
272	04:31	4	31
273	04:32	4	32
274	04:33	4	33
275	04:34	4	34
276	04:35	4	35
277	04:36	4	36
278	04:37	4	37
279	04:38	4	38
280	04:39	4	39
281	04:40	4	40
282	04:41	4	41
283	04:42	4	42
284	04:43	4	43
285	04:44	4	44
286	04:45	4	45
287	04:46	4	46
288	04:47	4	47
289	04:48	4	48
290	04:49	4	49
291	04:50	4	50
292	04:51	4	51
293	04:52	4	52
294	04:53	4	53
295	04:54	4	54
296	04:55	4	55
297	04:56	4	56
298	04:57	4	57
299	04:58	4	58
300	04:59	4	59
301	05:00	5	0
302	05:01	5	1
303	05:02	5	2
304	05:03	5	3
305	05:04	5	4
306	05:05	5	5
307	05:06	5	6
308	05:07	5	7
309	05:08	5	8
310	05:09	5	9
311	05:10	5	10
312	05:11	5	11
313	05:12	5	12
314	05:13	5	13
315	05:14	5	14
316	05:15	5	15
317	05:16	5	16
318	05:17	5	17
319	05:18	5	18
320	05:19	5	19
321	05:20	5	20
322	05:21	5	21
323	05:22	5	22
324	05:23	5	23
325	05:24	5	24
326	05:25	5	25
327	05:26	5	26
328	05:27	5	27
329	05:28	5	28
330	05:29	5	29
331	05:30	5	30
332	05:31	5	31
333	05:32	5	32
334	05:33	5	33
335	05:34	5	34
336	05:35	5	35
337	05:36	5	36
338	05:37	5	37
339	05:38	5	38
340	05:39	5	39
341	05:40	5	40
342	05:41	5	41
343	05:42	5	42
344	05:43	5	43
345	05:44	5	44
346	05:45	5	45
347	05:46	5	46
348	05:47	5	47
349	05:48	5	48
350	05:49	5	49
351	05:50	5	50
352	05:51	5	51
353	05:52	5	52
354	05:53	5	53
355	05:54	5	54
356	05:55	5	55
357	05:56	5	56
358	05:57	5	57
359	05:58	5	58
360	05:59	5	59
361	06:00	6	0
362	06:01	6	1
363	06:02	6	2
364	06:03	6	3
365	06:04	6	4
366	06:05	6	5
367	06:06	6	6
368	06:07	6	7
369	06:08	6	8
370	06:09	6	9
371	06:10	6	10
372	06:11	6	11
373	06:12	6	12
374	06:13	6	13
375	06:14	6	14
376	06:15	6	15
377	06:16	6	16
378	06:17	6	17
379	06:18	6	18
380	06:19	6	19
381	06:20	6	20
382	06:21	6	21
383	06:22	6	22
384	06:23	6	23
385	06:24	6	24
386	06:25	6	25
387	06:26	6	26
388	06:27	6	27
389	06:28	6	28
390	06:29	6	29
391	06:30	6	30
392	06:31	6	31
393	06:32	6	32
394	06:33	6	33
395	06:34	6	34
396	06:35	6	35
397	06:36	6	36
398	06:37	6	37
399	06:38	6	38
400	06:39	6	39
401	06:40	6	40
402	06:41	6	41
403	06:42	6	42
404	06:43	6	43
405	06:44	6	44
406	06:45	6	45
407	06:46	6	46
408	06:47	6	47
409	06:48	6	48
410	06:49	6	49
411	06:50	6	50
412	06:51	6	51
413	06:52	6	52
414	06:53	6	53
415	06:54	6	54
416	06:55	6	55
417	06:56	6	56
418	06:57	6	57
419	06:58	6	58
420	06:59	6	59
421	07:00	7	0
422	07:01	7	1
423	07:02	7	2
424	07:03	7	3
425	07:04	7	4
426	07:05	7	5
427	07:06	7	6
428	07:07	7	7
429	07:08	7	8
430	07:09	7	9
431	07:10	7	10
432	07:11	7	11
433	07:12	7	12
434	07:13	7	13
435	07:14	7	14
436	07:15	7	15
437	07:16	7	16
438	07:17	7	17
439	07:18	7	18
440	07:19	7	19
441	07:20	7	20
442	07:21	7	21
443	07:22	7	22
444	07:23	7	23
445	07:24	7	24
446	07:25	7	25
447	07:26	7	26
448	07:27	7	27
449	07:28	7	28
450	07:29	7	29
451	07:30	7	30
452	07:31	7	31
453	07:32	7	32
454	07:33	7	33
455	07:34	7	34
456	07:35	7	35
457	07:36	7	36
458	07:37	7	37
459	07:38	7	38
460	07:39	7	39
461	07:40	7	40
462	07:41	7	41
463	07:42	7	42
464	07:43	7	43
465	07:44	7	44
466	07:45	7	45
467	07:46	7	46
468	07:47	7	47
469	07:48	7	48
470	07:49	7	49
471	07:50	7	50
472	07:51	7	51
473	07:52	7	52
474	07:53	7	53
475	07:54	7	54
476	07:55	7	55
477	07:56	7	56
478	07:57	7	57
479	07:58	7	58
480	07:59	7	59
481	08:00	8	0
482	08:01	8	1
483	08:02	8	2
484	08:03	8	3
485	08:04	8	4
486	08:05	8	5
487	08:06	8	6
488	08:07	8	7
489	08:08	8	8
490	08:09	8	9
491	08:10	8	10
492	08:11	8	11
493	08:12	8	12
494	08:13	8	13
495	08:14	8	14
496	08:15	8	15
497	08:16	8	16
498	08:17	8	17
499	08:18	8	18
500	08:19	8	19
501	08:20	8	20
502	08:21	8	21
503	08:22	8	22
504	08:23	8	23
505	08:24	8	24
506	08:25	8	25
507	08:26	8	26
508	08:27	8	27
509	08:28	8	28
510	08:29	8	29
511	08:30	8	30
512	08:31	8	31
513	08:32	8	32
514	08:33	8	33
515	08:34	8	34
516	08:35	8	35
517	08:36	8	36
518	08:37	8	37
519	08:38	8	38
520	08:39	8	39
521	08:40	8	40
522	08:41	8	41
523	08:42	8	42
524	08:43	8	43
525	08:44	8	44
526	08:45	8	45
527	08:46	8	46
528	08:47	8	47
529	08:48	8	48
530	08:49	8	49
531	08:50	8	50
532	08:51	8	51
533	08:52	8	52
534	08:53	8	53
535	08:54	8	54
536	08:55	8	55
537	08:56	8	56
538	08:57	8	57
539	08:58	8	58
540	08:59	8	59
541	09:00	9	0
542	09:01	9	1
543	09:02	9	2
544	09:03	9	3
545	09:04	9	4
546	09:05	9	5
547	09:06	9	6
548	09:07	9	7
549	09:08	9	8
550	09:09	9	9
551	09:10	9	10
552	09:11	9	11
553	09:12	9	12
554	09:13	9	13
555	09:14	9	14
556	09:15	9	15
557	09:16	9	16
558	09:17	9	17
559	09:18	9	18
560	09:19	9	19
561	09:20	9	20
562	09:21	9	21
563	09:22	9	22
564	09:23	9	23
565	09:24	9	24
566	09:25	9	25
567	09:26	9	26
568	09:27	9	27
569	09:28	9	28
570	09:29	9	29
571	09:30	9	30
572	09:31	9	31
573	09:32	9	32
574	09:33	9	33
575	09:34	9	34
576	09:35	9	35
577	09:36	9	36
578	09:37	9	37
579	09:38	9	38
580	09:39	9	39
581	09:40	9	40
582	09:41	9	41
583	09:42	9	42
584	09:43	9	43
585	09:44	9	44
586	09:45	9	45
587	09:46	9	46
588	09:47	9	47
589	09:48	9	48
590	09:49	9	49
591	09:50	9	50
592	09:51	9	51
593	09:52	9	52
594	09:53	9	53
595	09:54	9	54
596	09:55	9	55
597	09:56	9	56
598	09:57	9	57
599	09:58	9	58
600	09:59	9	59
601	10:00	10	0
602	10:01	10	1
603	10:02	10	2
604	10:03	10	3
605	10:04	10	4
606	10:05	10	5
607	10:06	10	6
608	10:07	10	7
609	10:08	10	8
610	10:09	10	9
611	10:10	10	10
612	10:11	10	11
613	10:12	10	12
614	10:13	10	13
615	10:14	10	14
616	10:15	10	15
617	10:16	10	16
618	10:17	10	17
619	10:18	10	18
620	10:19	10	19
621	10:20	10	20
622	10:21	10	21
623	10:22	10	22
624	10:23	10	23
625	10:24	10	24
626	10:25	10	25
627	10:26	10	26
628	10:27	10	27
629	10:28	10	28
630	10:29	10	29
631	10:30	10	30
632	10:31	10	31
633	10:32	10	32
634	10:33	10	33
635	10:34	10	34
636	10:35	10	35
637	10:36	10	36
638	10:37	10	37
639	10:38	10	38
640	10:39	10	39
641	10:40	10	40
642	10:41	10	41
643	10:42	10	42
644	10:43	10	43
645	10:44	10	44
646	10:45	10	45
647	10:46	10	46
648	10:47	10	47
649	10:48	10	48
650	10:49	10	49
651	10:50	10	50
652	10:51	10	51
653	10:52	10	52
654	10:53	10	53
655	10:54	10	54
656	10:55	10	55
657	10:56	10	56
658	10:57	10	57
659	10:58	10	58
660	10:59	10	59
661	11:00	11	0
662	11:01	11	1
663	11:02	11	2
664	11:03	11	3
665	11:04	11	4
666	11:05	11	5
667	11:06	11	6
668	11:07	11	7
669	11:08	11	8
670	11:09	11	9
671	11:10	11	10
672	11:11	11	11
673	11:12	11	12
674	11:13	11	13
675	11:14	11	14
676	11:15	11	15
677	11:16	11	16
678	11:17	11	17
679	11:18	11	18
680	11:19	11	19
681	11:20	11	20
682	11:21	11	21
683	11:22	11	22
684	11:23	11	23
685	11:24	11	24
686	11:25	11	25
687	11:26	11	26
688	11:27	11	27
689	11:28	11	28
690	11:29	11	29
691	11:30	11	30
692	11:31	11	31
693	11:32	11	32
694	11:33	11	33
695	11:34	11	34
696	11:35	11	35
697	11:36	11	36
698	11:37	11	37
699	11:38	11	38
700	11:39	11	39
701	11:40	11	40
702	11:41	11	41
703	11:42	11	42
704	11:43	11	43
705	11:44	11	44
706	11:45	11	45
707	11:46	11	46
708	11:47	11	47
709	11:48	11	48
710	11:49	11	49
711	11:50	11	50
712	11:51	11	51
713	11:52	11	52
714	11:53	11	53
715	11:54	11	54
716	11:55	11	55
717	11:56	11	56
718	11:57	11	57
719	11:58	11	58
720	11:59	11	59
721	12:00	12	0
722	12:01	12	1
723	12:02	12	2
724	12:03	12	3
725	12:04	12	4
726	12:05	12	5
727	12:06	12	6
728	12:07	12	7
729	12:08	12	8
730	12:09	12	9
731	12:10	12	10
732	12:11	12	11
733	12:12	12	12
734	12:13	12	13
735	12:14	12	14
736	12:15	12	15
737	12:16	12	16
738	12:17	12	17
739	12:18	12	18
740	12:19	12	19
741	12:20	12	20
742	12:21	12	21
743	12:22	12	22
744	12:23	12	23
745	12:24	12	24
746	12:25	12	25
747	12:26	12	26
748	12:27	12	27
749	12:28	12	28
750	12:29	12	29
751	12:30	12	30
752	12:31	12	31
753	12:32	12	32
754	12:33	12	33
755	12:34	12	34
756	12:35	12	35
757	12:36	12	36
758	12:37	12	37
759	12:38	12	38
760	12:39	12	39
761	12:40	12	40
762	12:41	12	41
763	12:42	12	42
764	12:43	12	43
765	12:44	12	44
766	12:45	12	45
767	12:46	12	46
768	12:47	12	47
769	12:48	12	48
770	12:49	12	49
771	12:50	12	50
772	12:51	12	51
773	12:52	12	52
774	12:53	12	53
775	12:54	12	54
776	12:55	12	55
777	12:56	12	56
778	12:57	12	57
779	12:58	12	58
780	12:59	12	59
781	13:00	13	0
782	13:01	13	1
783	13:02	13	2
784	13:03	13	3
785	13:04	13	4
786	13:05	13	5
787	13:06	13	6
788	13:07	13	7
789	13:08	13	8
790	13:09	13	9
791	13:10	13	10
792	13:11	13	11
793	13:12	13	12
794	13:13	13	13
795	13:14	13	14
796	13:15	13	15
797	13:16	13	16
798	13:17	13	17
799	13:18	13	18
800	13:19	13	19
801	13:20	13	20
802	13:21	13	21
803	13:22	13	22
804	13:23	13	23
805	13:24	13	24
806	13:25	13	25
807	13:26	13	26
808	13:27	13	27
809	13:28	13	28
810	13:29	13	29
811	13:30	13	30
812	13:31	13	31
813	13:32	13	32
814	13:33	13	33
815	13:34	13	34
816	13:35	13	35
817	13:36	13	36
818	13:37	13	37
819	13:38	13	38
820	13:39	13	39
821	13:40	13	40
822	13:41	13	41
823	13:42	13	42
824	13:43	13	43
825	13:44	13	44
826	13:45	13	45
827	13:46	13	46
828	13:47	13	47
829	13:48	13	48
830	13:49	13	49
831	13:50	13	50
832	13:51	13	51
833	13:52	13	52
834	13:53	13	53
835	13:54	13	54
836	13:55	13	55
837	13:56	13	56
838	13:57	13	57
839	13:58	13	58
840	13:59	13	59
841	14:00	14	0
842	14:01	14	1
843	14:02	14	2
844	14:03	14	3
845	14:04	14	4
846	14:05	14	5
847	14:06	14	6
848	14:07	14	7
849	14:08	14	8
850	14:09	14	9
851	14:10	14	10
852	14:11	14	11
853	14:12	14	12
854	14:13	14	13
855	14:14	14	14
856	14:15	14	15
857	14:16	14	16
858	14:17	14	17
859	14:18	14	18
860	14:19	14	19
861	14:20	14	20
862	14:21	14	21
863	14:22	14	22
864	14:23	14	23
865	14:24	14	24
866	14:25	14	25
867	14:26	14	26
868	14:27	14	27
869	14:28	14	28
870	14:29	14	29
871	14:30	14	30
872	14:31	14	31
873	14:32	14	32
874	14:33	14	33
875	14:34	14	34
876	14:35	14	35
877	14:36	14	36
878	14:37	14	37
879	14:38	14	38
880	14:39	14	39
881	14:40	14	40
882	14:41	14	41
883	14:42	14	42
884	14:43	14	43
885	14:44	14	44
886	14:45	14	45
887	14:46	14	46
888	14:47	14	47
889	14:48	14	48
890	14:49	14	49
891	14:50	14	50
892	14:51	14	51
893	14:52	14	52
894	14:53	14	53
895	14:54	14	54
896	14:55	14	55
897	14:56	14	56
898	14:57	14	57
899	14:58	14	58
900	14:59	14	59
901	15:00	15	0
902	15:01	15	1
903	15:02	15	2
904	15:03	15	3
905	15:04	15	4
906	15:05	15	5
907	15:06	15	6
908	15:07	15	7
909	15:08	15	8
910	15:09	15	9
911	15:10	15	10
912	15:11	15	11
913	15:12	15	12
914	15:13	15	13
915	15:14	15	14
916	15:15	15	15
917	15:16	15	16
918	15:17	15	17
919	15:18	15	18
920	15:19	15	19
921	15:20	15	20
922	15:21	15	21
923	15:22	15	22
924	15:23	15	23
925	15:24	15	24
926	15:25	15	25
927	15:26	15	26
928	15:27	15	27
929	15:28	15	28
930	15:29	15	29
931	15:30	15	30
932	15:31	15	31
933	15:32	15	32
934	15:33	15	33
935	15:34	15	34
936	15:35	15	35
937	15:36	15	36
938	15:37	15	37
939	15:38	15	38
940	15:39	15	39
941	15:40	15	40
942	15:41	15	41
943	15:42	15	42
944	15:43	15	43
945	15:44	15	44
946	15:45	15	45
947	15:46	15	46
948	15:47	15	47
949	15:48	15	48
950	15:49	15	49
951	15:50	15	50
952	15:51	15	51
953	15:52	15	52
954	15:53	15	53
955	15:54	15	54
956	15:55	15	55
957	15:56	15	56
958	15:57	15	57
959	15:58	15	58
960	15:59	15	59
961	16:00	16	0
962	16:01	16	1
963	16:02	16	2
964	16:03	16	3
965	16:04	16	4
966	16:05	16	5
967	16:06	16	6
968	16:07	16	7
969	16:08	16	8
970	16:09	16	9
971	16:10	16	10
972	16:11	16	11
973	16:12	16	12
974	16:13	16	13
975	16:14	16	14
976	16:15	16	15
977	16:16	16	16
978	16:17	16	17
979	16:18	16	18
980	16:19	16	19
981	16:20	16	20
982	16:21	16	21
983	16:22	16	22
984	16:23	16	23
985	16:24	16	24
986	16:25	16	25
987	16:26	16	26
988	16:27	16	27
989	16:28	16	28
990	16:29	16	29
991	16:30	16	30
992	16:31	16	31
993	16:32	16	32
994	16:33	16	33
995	16:34	16	34
996	16:35	16	35
997	16:36	16	36
998	16:37	16	37
999	16:38	16	38
1000	16:39	16	39
1001	16:40	16	40
1002	16:41	16	41
1003	16:42	16	42
1004	16:43	16	43
1005	16:44	16	44
1006	16:45	16	45
1007	16:46	16	46
1008	16:47	16	47
1009	16:48	16	48
1010	16:49	16	49
1011	16:50	16	50
1012	16:51	16	51
1013	16:52	16	52
1014	16:53	16	53
1015	16:54	16	54
1016	16:55	16	55
1017	16:56	16	56
1018	16:57	16	57
1019	16:58	16	58
1020	16:59	16	59
1021	17:00	17	0
1022	17:01	17	1
1023	17:02	17	2
1024	17:03	17	3
1025	17:04	17	4
1026	17:05	17	5
1027	17:06	17	6
1028	17:07	17	7
1029	17:08	17	8
1030	17:09	17	9
1031	17:10	17	10
1032	17:11	17	11
1033	17:12	17	12
1034	17:13	17	13
1035	17:14	17	14
1036	17:15	17	15
1037	17:16	17	16
1038	17:17	17	17
1039	17:18	17	18
1040	17:19	17	19
1041	17:20	17	20
1042	17:21	17	21
1043	17:22	17	22
1044	17:23	17	23
1045	17:24	17	24
1046	17:25	17	25
1047	17:26	17	26
1048	17:27	17	27
1049	17:28	17	28
1050	17:29	17	29
1051	17:30	17	30
1052	17:31	17	31
1053	17:32	17	32
1054	17:33	17	33
1055	17:34	17	34
1056	17:35	17	35
1057	17:36	17	36
1058	17:37	17	37
1059	17:38	17	38
1060	17:39	17	39
1061	17:40	17	40
1062	17:41	17	41
1063	17:42	17	42
1064	17:43	17	43
1065	17:44	17	44
1066	17:45	17	45
1067	17:46	17	46
1068	17:47	17	47
1069	17:48	17	48
1070	17:49	17	49
1071	17:50	17	50
1072	17:51	17	51
1073	17:52	17	52
1074	17:53	17	53
1075	17:54	17	54
1076	17:55	17	55
1077	17:56	17	56
1078	17:57	17	57
1079	17:58	17	58
1080	17:59	17	59
1081	18:00	18	0
1082	18:01	18	1
1083	18:02	18	2
1084	18:03	18	3
1085	18:04	18	4
1086	18:05	18	5
1087	18:06	18	6
1088	18:07	18	7
1089	18:08	18	8
1090	18:09	18	9
1091	18:10	18	10
1092	18:11	18	11
1093	18:12	18	12
1094	18:13	18	13
1095	18:14	18	14
1096	18:15	18	15
1097	18:16	18	16
1098	18:17	18	17
1099	18:18	18	18
1100	18:19	18	19
1101	18:20	18	20
1102	18:21	18	21
1103	18:22	18	22
1104	18:23	18	23
1105	18:24	18	24
1106	18:25	18	25
1107	18:26	18	26
1108	18:27	18	27
1109	18:28	18	28
1110	18:29	18	29
1111	18:30	18	30
1112	18:31	18	31
1113	18:32	18	32
1114	18:33	18	33
1115	18:34	18	34
1116	18:35	18	35
1117	18:36	18	36
1118	18:37	18	37
1119	18:38	18	38
1120	18:39	18	39
1121	18:40	18	40
1122	18:41	18	41
1123	18:42	18	42
1124	18:43	18	43
1125	18:44	18	44
1126	18:45	18	45
1127	18:46	18	46
1128	18:47	18	47
1129	18:48	18	48
1130	18:49	18	49
1131	18:50	18	50
1132	18:51	18	51
1133	18:52	18	52
1134	18:53	18	53
1135	18:54	18	54
1136	18:55	18	55
1137	18:56	18	56
1138	18:57	18	57
1139	18:58	18	58
1140	18:59	18	59
1141	19:00	19	0
1142	19:01	19	1
1143	19:02	19	2
1144	19:03	19	3
1145	19:04	19	4
1146	19:05	19	5
1147	19:06	19	6
1148	19:07	19	7
1149	19:08	19	8
1150	19:09	19	9
1151	19:10	19	10
1152	19:11	19	11
1153	19:12	19	12
1154	19:13	19	13
1155	19:14	19	14
1156	19:15	19	15
1157	19:16	19	16
1158	19:17	19	17
1159	19:18	19	18
1160	19:19	19	19
1161	19:20	19	20
1162	19:21	19	21
1163	19:22	19	22
1164	19:23	19	23
1165	19:24	19	24
1166	19:25	19	25
1167	19:26	19	26
1168	19:27	19	27
1169	19:28	19	28
1170	19:29	19	29
1171	19:30	19	30
1172	19:31	19	31
1173	19:32	19	32
1174	19:33	19	33
1175	19:34	19	34
1176	19:35	19	35
1177	19:36	19	36
1178	19:37	19	37
1179	19:38	19	38
1180	19:39	19	39
1181	19:40	19	40
1182	19:41	19	41
1183	19:42	19	42
1184	19:43	19	43
1185	19:44	19	44
1186	19:45	19	45
1187	19:46	19	46
1188	19:47	19	47
1189	19:48	19	48
1190	19:49	19	49
1191	19:50	19	50
1192	19:51	19	51
1193	19:52	19	52
1194	19:53	19	53
1195	19:54	19	54
1196	19:55	19	55
1197	19:56	19	56
1198	19:57	19	57
1199	19:58	19	58
1200	19:59	19	59
1201	20:00	20	0
1202	20:01	20	1
1203	20:02	20	2
1204	20:03	20	3
1205	20:04	20	4
1206	20:05	20	5
1207	20:06	20	6
1208	20:07	20	7
1209	20:08	20	8
1210	20:09	20	9
1211	20:10	20	10
1212	20:11	20	11
1213	20:12	20	12
1214	20:13	20	13
1215	20:14	20	14
1216	20:15	20	15
1217	20:16	20	16
1218	20:17	20	17
1219	20:18	20	18
1220	20:19	20	19
1221	20:20	20	20
1222	20:21	20	21
1223	20:22	20	22
1224	20:23	20	23
1225	20:24	20	24
1226	20:25	20	25
1227	20:26	20	26
1228	20:27	20	27
1229	20:28	20	28
1230	20:29	20	29
1231	20:30	20	30
1232	20:31	20	31
1233	20:32	20	32
1234	20:33	20	33
1235	20:34	20	34
1236	20:35	20	35
1237	20:36	20	36
1238	20:37	20	37
1239	20:38	20	38
1240	20:39	20	39
1241	20:40	20	40
1242	20:41	20	41
1243	20:42	20	42
1244	20:43	20	43
1245	20:44	20	44
1246	20:45	20	45
1247	20:46	20	46
1248	20:47	20	47
1249	20:48	20	48
1250	20:49	20	49
1251	20:50	20	50
1252	20:51	20	51
1253	20:52	20	52
1254	20:53	20	53
1255	20:54	20	54
1256	20:55	20	55
1257	20:56	20	56
1258	20:57	20	57
1259	20:58	20	58
1260	20:59	20	59
1261	21:00	21	0
1262	21:01	21	1
1263	21:02	21	2
1264	21:03	21	3
1265	21:04	21	4
1266	21:05	21	5
1267	21:06	21	6
1268	21:07	21	7
1269	21:08	21	8
1270	21:09	21	9
1271	21:10	21	10
1272	21:11	21	11
1273	21:12	21	12
1274	21:13	21	13
1275	21:14	21	14
1276	21:15	21	15
1277	21:16	21	16
1278	21:17	21	17
1279	21:18	21	18
1280	21:19	21	19
1281	21:20	21	20
1282	21:21	21	21
1283	21:22	21	22
1284	21:23	21	23
1285	21:24	21	24
1286	21:25	21	25
1287	21:26	21	26
1288	21:27	21	27
1289	21:28	21	28
1290	21:29	21	29
1291	21:30	21	30
1292	21:31	21	31
1293	21:32	21	32
1294	21:33	21	33
1295	21:34	21	34
1296	21:35	21	35
1297	21:36	21	36
1298	21:37	21	37
1299	21:38	21	38
1300	21:39	21	39
1301	21:40	21	40
1302	21:41	21	41
1303	21:42	21	42
1304	21:43	21	43
1305	21:44	21	44
1306	21:45	21	45
1307	21:46	21	46
1308	21:47	21	47
1309	21:48	21	48
1310	21:49	21	49
1311	21:50	21	50
1312	21:51	21	51
1313	21:52	21	52
1314	21:53	21	53
1315	21:54	21	54
1316	21:55	21	55
1317	21:56	21	56
1318	21:57	21	57
1319	21:58	21	58
1320	21:59	21	59
1321	22:00	22	0
1322	22:01	22	1
1323	22:02	22	2
1324	22:03	22	3
1325	22:04	22	4
1326	22:05	22	5
1327	22:06	22	6
1328	22:07	22	7
1329	22:08	22	8
1330	22:09	22	9
1331	22:10	22	10
1332	22:11	22	11
1333	22:12	22	12
1334	22:13	22	13
1335	22:14	22	14
1336	22:15	22	15
1337	22:16	22	16
1338	22:17	22	17
1339	22:18	22	18
1340	22:19	22	19
1341	22:20	22	20
1342	22:21	22	21
1343	22:22	22	22
1344	22:23	22	23
1345	22:24	22	24
1346	22:25	22	25
1347	22:26	22	26
1348	22:27	22	27
1349	22:28	22	28
1350	22:29	22	29
1351	22:30	22	30
1352	22:31	22	31
1353	22:32	22	32
1354	22:33	22	33
1355	22:34	22	34
1356	22:35	22	35
1357	22:36	22	36
1358	22:37	22	37
1359	22:38	22	38
1360	22:39	22	39
1361	22:40	22	40
1362	22:41	22	41
1363	22:42	22	42
1364	22:43	22	43
1365	22:44	22	44
1366	22:45	22	45
1367	22:46	22	46
1368	22:47	22	47
1369	22:48	22	48
1370	22:49	22	49
1371	22:50	22	50
1372	22:51	22	51
1373	22:52	22	52
1374	22:53	22	53
1375	22:54	22	54
1376	22:55	22	55
1377	22:56	22	56
1378	22:57	22	57
1379	22:58	22	58
1380	22:59	22	59
1381	23:00	23	0
1382	23:01	23	1
1383	23:02	23	2
1384	23:03	23	3
1385	23:04	23	4
1386	23:05	23	5
1387	23:06	23	6
1388	23:07	23	7
1389	23:08	23	8
1390	23:09	23	9
1391	23:10	23	10
1392	23:11	23	11
1393	23:12	23	12
1394	23:13	23	13
1395	23:14	23	14
1396	23:15	23	15
1397	23:16	23	16
1398	23:17	23	17
1399	23:18	23	18
1400	23:19	23	19
1401	23:20	23	20
1402	23:21	23	21
1403	23:22	23	22
1404	23:23	23	23
1405	23:24	23	24
1406	23:25	23	25
1407	23:26	23	26
1408	23:27	23	27
1409	23:28	23	28
1410	23:29	23	29
1411	23:30	23	30
1412	23:31	23	31
1413	23:32	23	32
1414	23:33	23	33
1415	23:34	23	34
1416	23:35	23	35
1417	23:36	23	36
1418	23:37	23	37
1419	23:38	23	38
1420	23:39	23	39
1421	23:40	23	40
1422	23:41	23	41
1423	23:42	23	42
1424	23:43	23	43
1425	23:44	23	44
1426	23:45	23	45
1427	23:46	23	46
1428	23:47	23	47
1429	23:48	23	48
1430	23:49	23	49
1431	23:50	23	50
1432	23:51	23	51
1433	23:52	23	52
1434	23:53	23	53
1435	23:54	23	54
1436	23:55	23	55
1437	23:56	23	56
1438	23:57	23	57
1439	23:58	23	58
1440	23:59	23	59
\.


--
-- Name: articles_fact_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.articles_fact_id_seq', 1, false);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 84, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 9, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 3, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 21, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 26, true);


--
-- Name: ma_sent_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ma_sent_seq', 959, true);


--
-- Name: match_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.match_id_seq', 5711, false);


--
-- Name: newsApp_article_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."newsApp_article_id_seq"', 16, true);


--
-- Name: newsApp_comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."newsApp_comments_id_seq"', 2, true);


--
-- Name: newsApp_like_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."newsApp_like_id_seq"', 6, true);


--
-- Name: polls_choice_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.polls_choice_id_seq', 2, true);


--
-- Name: polls_profile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.polls_profile_id_seq', 9, true);


--
-- Name: polls_question_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.polls_question_id_seq', 1, true);


--
-- Name: polls_sentiment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.polls_sentiment_id_seq', 1, false);


--
-- Name: sentiment_fact_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sentiment_fact_id_seq', 1, true);


--
-- Name: articles_fact articles_fact_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.articles_fact
    ADD CONSTRAINT articles_fact_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: date_dim date_dim_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.date_dim
    ADD CONSTRAINT date_dim_pkey PRIMARY KEY (dateid);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: newsApp_article newsApp_article_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."newsApp_article"
    ADD CONSTRAINT "newsApp_article_pkey" PRIMARY KEY (id);


--
-- Name: newsApp_comments newsApp_comments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."newsApp_comments"
    ADD CONSTRAINT "newsApp_comments_pkey" PRIMARY KEY (id);


--
-- Name: newsApp_like newsApp_like_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."newsApp_like"
    ADD CONSTRAINT "newsApp_like_pkey" PRIMARY KEY (id);


--
-- Name: polls_choice polls_choice_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.polls_choice
    ADD CONSTRAINT polls_choice_pkey PRIMARY KEY (id);


--
-- Name: polls_profile polls_profile_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.polls_profile
    ADD CONSTRAINT polls_profile_pkey PRIMARY KEY (id);


--
-- Name: polls_profile polls_profile_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.polls_profile
    ADD CONSTRAINT polls_profile_user_id_key UNIQUE (user_id);


--
-- Name: polls_question polls_question_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.polls_question
    ADD CONSTRAINT polls_question_pkey PRIMARY KEY (id);


--
-- Name: polls_sentiment polls_sentiment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.polls_sentiment
    ADD CONSTRAINT polls_sentiment_pkey PRIMARY KEY (id);


--
-- Name: sentiment_fact sentiment_fact_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sentiment_fact
    ADD CONSTRAINT sentiment_fact_pkey PRIMARY KEY (id);


--
-- Name: time_dim time_dim_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.time_dim
    ADD CONSTRAINT time_dim_pkey PRIMARY KEY (timeid);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: newsApp_comments_article_id_e9701816; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "newsApp_comments_article_id_e9701816" ON public."newsApp_comments" USING btree (article_id);


--
-- Name: newsApp_comments_username_id_04fe1ef6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "newsApp_comments_username_id_04fe1ef6" ON public."newsApp_comments" USING btree (username_id);


--
-- Name: newsApp_like_article_id_db850e6c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "newsApp_like_article_id_db850e6c" ON public."newsApp_like" USING btree (article_id);


--
-- Name: newsApp_like_user_id_a0ef839b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "newsApp_like_user_id_a0ef839b" ON public."newsApp_like" USING btree (user_id);


--
-- Name: polls_choice_question_id_c5b4b260; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX polls_choice_question_id_c5b4b260 ON public.polls_choice USING btree (question_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: article_fact fk_dimdate; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.article_fact
    ADD CONSTRAINT fk_dimdate FOREIGN KEY (dateid) REFERENCES public.date_dim(dateid);


--
-- Name: articles_fact fk_dimdate; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.articles_fact
    ADD CONSTRAINT fk_dimdate FOREIGN KEY (dateid) REFERENCES public.date_dim(dateid);


--
-- Name: sentiment_dim fk_dimdate_sent; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sentiment_dim
    ADD CONSTRAINT fk_dimdate_sent FOREIGN KEY (dateid) REFERENCES public.date_dim(dateid);


--
-- Name: sentiment_fact fk_dimdate_sent; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sentiment_fact
    ADD CONSTRAINT fk_dimdate_sent FOREIGN KEY (dateid) REFERENCES public.date_dim(dateid);


--
-- Name: article_fact fk_dimtime; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.article_fact
    ADD CONSTRAINT fk_dimtime FOREIGN KEY (timeid) REFERENCES public.time_dim(timeid);


--
-- Name: articles_fact fk_dimtime; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.articles_fact
    ADD CONSTRAINT fk_dimtime FOREIGN KEY (timeid) REFERENCES public.time_dim(timeid);


--
-- Name: sentiment_dim fk_dimtime_sent; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sentiment_dim
    ADD CONSTRAINT fk_dimtime_sent FOREIGN KEY (timeid) REFERENCES public.time_dim(timeid);


--
-- Name: sentiment_fact fk_dimtime_sent; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sentiment_fact
    ADD CONSTRAINT fk_dimtime_sent FOREIGN KEY (timeid) REFERENCES public.time_dim(timeid);


--
-- Name: newsApp_comments newsApp_comments_article_id_e9701816_fk_newsApp_article_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."newsApp_comments"
    ADD CONSTRAINT "newsApp_comments_article_id_e9701816_fk_newsApp_article_id" FOREIGN KEY (article_id) REFERENCES public."newsApp_article"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: newsApp_comments newsApp_comments_username_id_04fe1ef6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."newsApp_comments"
    ADD CONSTRAINT "newsApp_comments_username_id_04fe1ef6_fk_auth_user_id" FOREIGN KEY (username_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: newsApp_like newsApp_like_article_id_db850e6c_fk_newsApp_article_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."newsApp_like"
    ADD CONSTRAINT "newsApp_like_article_id_db850e6c_fk_newsApp_article_id" FOREIGN KEY (article_id) REFERENCES public."newsApp_article"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: newsApp_like newsApp_like_user_id_a0ef839b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."newsApp_like"
    ADD CONSTRAINT "newsApp_like_user_id_a0ef839b_fk_auth_user_id" FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: polls_choice polls_choice_question_id_c5b4b260_fk_polls_question_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.polls_choice
    ADD CONSTRAINT polls_choice_question_id_c5b4b260_fk_polls_question_id FOREIGN KEY (question_id) REFERENCES public.polls_question(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: polls_profile polls_profile_user_id_093c2fb0_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.polls_profile
    ADD CONSTRAINT polls_profile_user_id_093c2fb0_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

