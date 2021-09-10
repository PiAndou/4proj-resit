--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2
-- Dumped by pg_dump version 13.2

-- Started on 2021-09-10 13:10:36

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
-- TOC entry 220 (class 1259 OID 65783)
-- Name: accountManagement_account; Type: TABLE; Schema: public; Owner: forma-green-user
--

CREATE TABLE public."accountManagement_account" (
    id bigint NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public."accountManagement_account" OWNER TO "forma-green-user";

--
-- TOC entry 219 (class 1259 OID 65781)
-- Name: accountManagement_account_id_seq; Type: SEQUENCE; Schema: public; Owner: forma-green-user
--

CREATE SEQUENCE public."accountManagement_account_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."accountManagement_account_id_seq" OWNER TO "forma-green-user";

--
-- TOC entry 3222 (class 0 OID 0)
-- Dependencies: 219
-- Name: accountManagement_account_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: forma-green-user
--

ALTER SEQUENCE public."accountManagement_account_id_seq" OWNED BY public."accountManagement_account".id;


--
-- TOC entry 207 (class 1259 OID 65644)
-- Name: auth_group; Type: TABLE; Schema: public; Owner: forma-green-user
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO "forma-green-user";

--
-- TOC entry 206 (class 1259 OID 65642)
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: forma-green-user
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO "forma-green-user";

--
-- TOC entry 3223 (class 0 OID 0)
-- Dependencies: 206
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: forma-green-user
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- TOC entry 209 (class 1259 OID 65654)
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: forma-green-user
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO "forma-green-user";

--
-- TOC entry 208 (class 1259 OID 65652)
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: forma-green-user
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO "forma-green-user";

--
-- TOC entry 3224 (class 0 OID 0)
-- Dependencies: 208
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: forma-green-user
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- TOC entry 205 (class 1259 OID 65636)
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: forma-green-user
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO "forma-green-user";

--
-- TOC entry 204 (class 1259 OID 65634)
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: forma-green-user
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO "forma-green-user";

--
-- TOC entry 3225 (class 0 OID 0)
-- Dependencies: 204
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: forma-green-user
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- TOC entry 211 (class 1259 OID 65662)
-- Name: auth_user; Type: TABLE; Schema: public; Owner: forma-green-user
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


ALTER TABLE public.auth_user OWNER TO "forma-green-user";

--
-- TOC entry 213 (class 1259 OID 65672)
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: forma-green-user
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO "forma-green-user";

--
-- TOC entry 212 (class 1259 OID 65670)
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: forma-green-user
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO "forma-green-user";

--
-- TOC entry 3226 (class 0 OID 0)
-- Dependencies: 212
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: forma-green-user
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- TOC entry 210 (class 1259 OID 65660)
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: forma-green-user
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO "forma-green-user";

--
-- TOC entry 3227 (class 0 OID 0)
-- Dependencies: 210
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: forma-green-user
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- TOC entry 215 (class 1259 OID 65680)
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: forma-green-user
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO "forma-green-user";

--
-- TOC entry 214 (class 1259 OID 65678)
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: forma-green-user
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO "forma-green-user";

--
-- TOC entry 3228 (class 0 OID 0)
-- Dependencies: 214
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: forma-green-user
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- TOC entry 217 (class 1259 OID 65740)
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: forma-green-user
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


ALTER TABLE public.django_admin_log OWNER TO "forma-green-user";

--
-- TOC entry 216 (class 1259 OID 65738)
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: forma-green-user
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO "forma-green-user";

--
-- TOC entry 3229 (class 0 OID 0)
-- Dependencies: 216
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: forma-green-user
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- TOC entry 203 (class 1259 OID 65626)
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: forma-green-user
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO "forma-green-user";

--
-- TOC entry 202 (class 1259 OID 65624)
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: forma-green-user
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO "forma-green-user";

--
-- TOC entry 3230 (class 0 OID 0)
-- Dependencies: 202
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: forma-green-user
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- TOC entry 201 (class 1259 OID 65615)
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: forma-green-user
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO "forma-green-user";

--
-- TOC entry 200 (class 1259 OID 65613)
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: forma-green-user
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO "forma-green-user";

--
-- TOC entry 3231 (class 0 OID 0)
-- Dependencies: 200
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: forma-green-user
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- TOC entry 218 (class 1259 OID 65771)
-- Name: django_session; Type: TABLE; Schema: public; Owner: forma-green-user
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO "forma-green-user";

--
-- TOC entry 222 (class 1259 OID 65798)
-- Name: greenAreaManagement_establishmenttype; Type: TABLE; Schema: public; Owner: forma-green-user
--

CREATE TABLE public."greenAreaManagement_establishmenttype" (
    id bigint NOT NULL,
    libel character varying(100) NOT NULL
);


ALTER TABLE public."greenAreaManagement_establishmenttype" OWNER TO "forma-green-user";

--
-- TOC entry 221 (class 1259 OID 65796)
-- Name: greenAreaManagement_establishmenttype_id_seq; Type: SEQUENCE; Schema: public; Owner: forma-green-user
--

CREATE SEQUENCE public."greenAreaManagement_establishmenttype_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."greenAreaManagement_establishmenttype_id_seq" OWNER TO "forma-green-user";

--
-- TOC entry 3232 (class 0 OID 0)
-- Dependencies: 221
-- Name: greenAreaManagement_establishmenttype_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: forma-green-user
--

ALTER SEQUENCE public."greenAreaManagement_establishmenttype_id_seq" OWNED BY public."greenAreaManagement_establishmenttype".id;


--
-- TOC entry 224 (class 1259 OID 65806)
-- Name: greenAreaManagement_greenspace; Type: TABLE; Schema: public; Owner: forma-green-user
--

CREATE TABLE public."greenAreaManagement_greenspace" (
    id bigint NOT NULL,
    name character varying(100) NOT NULL,
    "establishmentType_id" bigint NOT NULL,
    "positionLgt" double precision,
    "positionLtd" double precision
);


ALTER TABLE public."greenAreaManagement_greenspace" OWNER TO "forma-green-user";

--
-- TOC entry 223 (class 1259 OID 65804)
-- Name: greenAreaManagement_greenspace_id_seq; Type: SEQUENCE; Schema: public; Owner: forma-green-user
--

CREATE SEQUENCE public."greenAreaManagement_greenspace_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."greenAreaManagement_greenspace_id_seq" OWNER TO "forma-green-user";

--
-- TOC entry 3233 (class 0 OID 0)
-- Dependencies: 223
-- Name: greenAreaManagement_greenspace_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: forma-green-user
--

ALTER SEQUENCE public."greenAreaManagement_greenspace_id_seq" OWNED BY public."greenAreaManagement_greenspace".id;


--
-- TOC entry 226 (class 1259 OID 65820)
-- Name: memberManagement_member; Type: TABLE; Schema: public; Owner: forma-green-user
--

CREATE TABLE public."memberManagement_member" (
    id bigint NOT NULL,
    name character varying(100) NOT NULL,
    "phoneNumber" character varying(30),
    address character varying(100),
    mail character varying(100) NOT NULL,
    code character varying(13) NOT NULL,
    "barcodeImg" character varying(100) NOT NULL,
    qr_code character varying(100) NOT NULL
);


ALTER TABLE public."memberManagement_member" OWNER TO "forma-green-user";

--
-- TOC entry 225 (class 1259 OID 65818)
-- Name: memberManagement_member_id_seq; Type: SEQUENCE; Schema: public; Owner: forma-green-user
--

CREATE SEQUENCE public."memberManagement_member_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."memberManagement_member_id_seq" OWNER TO "forma-green-user";

--
-- TOC entry 3234 (class 0 OID 0)
-- Dependencies: 225
-- Name: memberManagement_member_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: forma-green-user
--

ALTER SEQUENCE public."memberManagement_member_id_seq" OWNED BY public."memberManagement_member".id;


--
-- TOC entry 228 (class 1259 OID 65834)
-- Name: memberManagement_subscription; Type: TABLE; Schema: public; Owner: forma-green-user
--

CREATE TABLE public."memberManagement_subscription" (
    id bigint NOT NULL,
    amount double precision NOT NULL,
    "subscriptionDate" date NOT NULL,
    "validityDate" date NOT NULL,
    member_id bigint NOT NULL
);


ALTER TABLE public."memberManagement_subscription" OWNER TO "forma-green-user";

--
-- TOC entry 227 (class 1259 OID 65832)
-- Name: memberManagement_subscription_id_seq; Type: SEQUENCE; Schema: public; Owner: forma-green-user
--

CREATE SEQUENCE public."memberManagement_subscription_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."memberManagement_subscription_id_seq" OWNER TO "forma-green-user";

--
-- TOC entry 3235 (class 0 OID 0)
-- Dependencies: 227
-- Name: memberManagement_subscription_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: forma-green-user
--

ALTER SEQUENCE public."memberManagement_subscription_id_seq" OWNED BY public."memberManagement_subscription".id;


--
-- TOC entry 232 (class 1259 OID 82276)
-- Name: partnershipManagement_gift; Type: TABLE; Schema: public; Owner: forma-green-user
--

CREATE TABLE public."partnershipManagement_gift" (
    id bigint NOT NULL,
    name character varying(100) NOT NULL,
    owner_id bigint NOT NULL
);


ALTER TABLE public."partnershipManagement_gift" OWNER TO "forma-green-user";

--
-- TOC entry 231 (class 1259 OID 82274)
-- Name: partnershipManagement_gift_id_seq; Type: SEQUENCE; Schema: public; Owner: forma-green-user
--

CREATE SEQUENCE public."partnershipManagement_gift_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."partnershipManagement_gift_id_seq" OWNER TO "forma-green-user";

--
-- TOC entry 3236 (class 0 OID 0)
-- Dependencies: 231
-- Name: partnershipManagement_gift_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: forma-green-user
--

ALTER SEQUENCE public."partnershipManagement_gift_id_seq" OWNED BY public."partnershipManagement_gift".id;


--
-- TOC entry 230 (class 1259 OID 82268)
-- Name: partnershipManagement_partner; Type: TABLE; Schema: public; Owner: forma-green-user
--

CREATE TABLE public."partnershipManagement_partner" (
    id bigint NOT NULL,
    name character varying(100) NOT NULL
);


ALTER TABLE public."partnershipManagement_partner" OWNER TO "forma-green-user";

--
-- TOC entry 229 (class 1259 OID 82266)
-- Name: partnershipManagement_partner_id_seq; Type: SEQUENCE; Schema: public; Owner: forma-green-user
--

CREATE SEQUENCE public."partnershipManagement_partner_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."partnershipManagement_partner_id_seq" OWNER TO "forma-green-user";

--
-- TOC entry 3237 (class 0 OID 0)
-- Dependencies: 229
-- Name: partnershipManagement_partner_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: forma-green-user
--

ALTER SEQUENCE public."partnershipManagement_partner_id_seq" OWNED BY public."partnershipManagement_partner".id;


--
-- TOC entry 2959 (class 2604 OID 65786)
-- Name: accountManagement_account id; Type: DEFAULT; Schema: public; Owner: forma-green-user
--

ALTER TABLE ONLY public."accountManagement_account" ALTER COLUMN id SET DEFAULT nextval('public."accountManagement_account_id_seq"'::regclass);


--
-- TOC entry 2952 (class 2604 OID 65647)
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: forma-green-user
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- TOC entry 2953 (class 2604 OID 65657)
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: forma-green-user
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- TOC entry 2951 (class 2604 OID 65639)
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: forma-green-user
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- TOC entry 2954 (class 2604 OID 65665)
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: forma-green-user
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- TOC entry 2955 (class 2604 OID 65675)
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: forma-green-user
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- TOC entry 2956 (class 2604 OID 65683)
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: forma-green-user
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- TOC entry 2957 (class 2604 OID 65743)
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: forma-green-user
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- TOC entry 2950 (class 2604 OID 65629)
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: forma-green-user
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- TOC entry 2949 (class 2604 OID 65618)
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: forma-green-user
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- TOC entry 2960 (class 2604 OID 65801)
-- Name: greenAreaManagement_establishmenttype id; Type: DEFAULT; Schema: public; Owner: forma-green-user
--

ALTER TABLE ONLY public."greenAreaManagement_establishmenttype" ALTER COLUMN id SET DEFAULT nextval('public."greenAreaManagement_establishmenttype_id_seq"'::regclass);


--
-- TOC entry 2961 (class 2604 OID 65809)
-- Name: greenAreaManagement_greenspace id; Type: DEFAULT; Schema: public; Owner: forma-green-user
--

ALTER TABLE ONLY public."greenAreaManagement_greenspace" ALTER COLUMN id SET DEFAULT nextval('public."greenAreaManagement_greenspace_id_seq"'::regclass);


--
-- TOC entry 2962 (class 2604 OID 65823)
-- Name: memberManagement_member id; Type: DEFAULT; Schema: public; Owner: forma-green-user
--

ALTER TABLE ONLY public."memberManagement_member" ALTER COLUMN id SET DEFAULT nextval('public."memberManagement_member_id_seq"'::regclass);


--
-- TOC entry 2963 (class 2604 OID 65837)
-- Name: memberManagement_subscription id; Type: DEFAULT; Schema: public; Owner: forma-green-user
--

ALTER TABLE ONLY public."memberManagement_subscription" ALTER COLUMN id SET DEFAULT nextval('public."memberManagement_subscription_id_seq"'::regclass);


--
-- TOC entry 2965 (class 2604 OID 82279)
-- Name: partnershipManagement_gift id; Type: DEFAULT; Schema: public; Owner: forma-green-user
--

ALTER TABLE ONLY public."partnershipManagement_gift" ALTER COLUMN id SET DEFAULT nextval('public."partnershipManagement_gift_id_seq"'::regclass);


--
-- TOC entry 2964 (class 2604 OID 82271)
-- Name: partnershipManagement_partner id; Type: DEFAULT; Schema: public; Owner: forma-green-user
--

ALTER TABLE ONLY public."partnershipManagement_partner" ALTER COLUMN id SET DEFAULT nextval('public."partnershipManagement_partner_id_seq"'::regclass);


--
-- TOC entry 3204 (class 0 OID 65783)
-- Dependencies: 220
-- Data for Name: accountManagement_account; Type: TABLE DATA; Schema: public; Owner: forma-green-user
--



--
-- TOC entry 3191 (class 0 OID 65644)
-- Dependencies: 207
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: forma-green-user
--



--
-- TOC entry 3193 (class 0 OID 65654)
-- Dependencies: 209
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: forma-green-user
--



--
-- TOC entry 3189 (class 0 OID 65636)
-- Dependencies: 205
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: forma-green-user
--

INSERT INTO public.auth_permission VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO public.auth_permission VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO public.auth_permission VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO public.auth_permission VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO public.auth_permission VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO public.auth_permission VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO public.auth_permission VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO public.auth_permission VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO public.auth_permission VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO public.auth_permission VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO public.auth_permission VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO public.auth_permission VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO public.auth_permission VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO public.auth_permission VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO public.auth_permission VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO public.auth_permission VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO public.auth_permission VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO public.auth_permission VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO public.auth_permission VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO public.auth_permission VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO public.auth_permission VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO public.auth_permission VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO public.auth_permission VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO public.auth_permission VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO public.auth_permission VALUES (25, 'Can add member', 7, 'add_member');
INSERT INTO public.auth_permission VALUES (26, 'Can change member', 7, 'change_member');
INSERT INTO public.auth_permission VALUES (27, 'Can delete member', 7, 'delete_member');
INSERT INTO public.auth_permission VALUES (28, 'Can view member', 7, 'view_member');
INSERT INTO public.auth_permission VALUES (29, 'Can add subscription', 8, 'add_subscription');
INSERT INTO public.auth_permission VALUES (30, 'Can change subscription', 8, 'change_subscription');
INSERT INTO public.auth_permission VALUES (31, 'Can delete subscription', 8, 'delete_subscription');
INSERT INTO public.auth_permission VALUES (32, 'Can view subscription', 8, 'view_subscription');
INSERT INTO public.auth_permission VALUES (33, 'Can add account', 9, 'add_account');
INSERT INTO public.auth_permission VALUES (34, 'Can change account', 9, 'change_account');
INSERT INTO public.auth_permission VALUES (35, 'Can delete account', 9, 'delete_account');
INSERT INTO public.auth_permission VALUES (36, 'Can view account', 9, 'view_account');
INSERT INTO public.auth_permission VALUES (37, 'Can add establishment type', 10, 'add_establishmenttype');
INSERT INTO public.auth_permission VALUES (38, 'Can change establishment type', 10, 'change_establishmenttype');
INSERT INTO public.auth_permission VALUES (39, 'Can delete establishment type', 10, 'delete_establishmenttype');
INSERT INTO public.auth_permission VALUES (40, 'Can view establishment type', 10, 'view_establishmenttype');
INSERT INTO public.auth_permission VALUES (41, 'Can add green space', 11, 'add_greenspace');
INSERT INTO public.auth_permission VALUES (42, 'Can change green space', 11, 'change_greenspace');
INSERT INTO public.auth_permission VALUES (43, 'Can delete green space', 11, 'delete_greenspace');
INSERT INTO public.auth_permission VALUES (44, 'Can view green space', 11, 'view_greenspace');
INSERT INTO public.auth_permission VALUES (45, 'Can add partner', 12, 'add_partner');
INSERT INTO public.auth_permission VALUES (46, 'Can change partner', 12, 'change_partner');
INSERT INTO public.auth_permission VALUES (47, 'Can delete partner', 12, 'delete_partner');
INSERT INTO public.auth_permission VALUES (48, 'Can view partner', 12, 'view_partner');
INSERT INTO public.auth_permission VALUES (49, 'Can add gift', 13, 'add_gift');
INSERT INTO public.auth_permission VALUES (50, 'Can change gift', 13, 'change_gift');
INSERT INTO public.auth_permission VALUES (51, 'Can delete gift', 13, 'delete_gift');
INSERT INTO public.auth_permission VALUES (52, 'Can view gift', 13, 'view_gift');


--
-- TOC entry 3195 (class 0 OID 65662)
-- Dependencies: 211
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: forma-green-user
--

INSERT INTO public.auth_user VALUES (1, 'pbkdf2_sha256$260000$gbloBZaHFBY2Mm1f1tjbaW$2sw+THCHoRxBvcz7X6/18MwzEKntBWYglJWC8uCNjcs=', '2021-09-09 16:23:37.061693+00', true, 'admin@formagreen.com', 'Forma-Green-Admin', '', 'admin@formagreen.com', true, true, '2021-08-14 22:34:10.215832+00');


--
-- TOC entry 3197 (class 0 OID 65672)
-- Dependencies: 213
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: forma-green-user
--



--
-- TOC entry 3199 (class 0 OID 65680)
-- Dependencies: 215
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: forma-green-user
--



--
-- TOC entry 3201 (class 0 OID 65740)
-- Dependencies: 217
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: forma-green-user
--



--
-- TOC entry 3187 (class 0 OID 65626)
-- Dependencies: 203
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: forma-green-user
--

INSERT INTO public.django_content_type VALUES (1, 'admin', 'logentry');
INSERT INTO public.django_content_type VALUES (2, 'auth', 'permission');
INSERT INTO public.django_content_type VALUES (3, 'auth', 'group');
INSERT INTO public.django_content_type VALUES (4, 'auth', 'user');
INSERT INTO public.django_content_type VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO public.django_content_type VALUES (6, 'sessions', 'session');
INSERT INTO public.django_content_type VALUES (7, 'memberManagement', 'member');
INSERT INTO public.django_content_type VALUES (8, 'memberManagement', 'subscription');
INSERT INTO public.django_content_type VALUES (9, 'accountManagement', 'account');
INSERT INTO public.django_content_type VALUES (10, 'greenAreaManagement', 'establishmenttype');
INSERT INTO public.django_content_type VALUES (11, 'greenAreaManagement', 'greenspace');
INSERT INTO public.django_content_type VALUES (12, 'partnershipManagement', 'partner');
INSERT INTO public.django_content_type VALUES (13, 'partnershipManagement', 'gift');


--
-- TOC entry 3185 (class 0 OID 65615)
-- Dependencies: 201
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: forma-green-user
--

INSERT INTO public.django_migrations VALUES (1, 'contenttypes', '0001_initial', '2021-08-14 22:33:25.60837+00');
INSERT INTO public.django_migrations VALUES (2, 'auth', '0001_initial', '2021-08-14 22:33:25.758256+00');
INSERT INTO public.django_migrations VALUES (3, 'admin', '0001_initial', '2021-08-14 22:33:25.794254+00');
INSERT INTO public.django_migrations VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2021-08-14 22:33:25.808254+00');
INSERT INTO public.django_migrations VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2021-08-14 22:33:25.822254+00');
INSERT INTO public.django_migrations VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2021-08-14 22:33:25.849258+00');
INSERT INTO public.django_migrations VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2021-08-14 22:33:25.861253+00');
INSERT INTO public.django_migrations VALUES (8, 'auth', '0003_alter_user_email_max_length', '2021-08-14 22:33:25.875256+00');
INSERT INTO public.django_migrations VALUES (9, 'auth', '0004_alter_user_username_opts', '2021-08-14 22:33:25.889254+00');
INSERT INTO public.django_migrations VALUES (10, 'auth', '0005_alter_user_last_login_null', '2021-08-14 22:33:25.903254+00');
INSERT INTO public.django_migrations VALUES (11, 'auth', '0006_require_contenttypes_0002', '2021-08-14 22:33:25.906255+00');
INSERT INTO public.django_migrations VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2021-08-14 22:33:25.919253+00');
INSERT INTO public.django_migrations VALUES (13, 'auth', '0008_alter_user_username_max_length', '2021-08-14 22:33:25.950256+00');
INSERT INTO public.django_migrations VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2021-08-14 22:33:25.965255+00');
INSERT INTO public.django_migrations VALUES (15, 'auth', '0010_alter_group_name_max_length', '2021-08-14 22:33:25.982263+00');
INSERT INTO public.django_migrations VALUES (16, 'auth', '0011_update_proxy_permissions', '2021-08-14 22:33:25.993254+00');
INSERT INTO public.django_migrations VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2021-08-14 22:33:26.006255+00');
INSERT INTO public.django_migrations VALUES (18, 'sessions', '0001_initial', '2021-08-14 22:33:26.030254+00');
INSERT INTO public.django_migrations VALUES (19, 'accountManagement', '0001_initial', '2021-08-14 23:21:20.168056+00');
INSERT INTO public.django_migrations VALUES (20, 'greenAreaManagement', '0001_initial', '2021-08-14 23:21:20.202055+00');
INSERT INTO public.django_migrations VALUES (21, 'memberManagement', '0001_initial', '2021-08-14 23:21:20.257056+00');
INSERT INTO public.django_migrations VALUES (22, 'memberManagement', '0002_auto_20210819_2255', '2021-08-19 20:55:58.510245+00');
INSERT INTO public.django_migrations VALUES (23, 'memberManagement', '0003_auto_20210819_2316', '2021-08-19 21:16:25.876104+00');
INSERT INTO public.django_migrations VALUES (24, 'memberManagement', '0004_rename_barcode_member_barcodeimg', '2021-08-19 21:23:35.859686+00');
INSERT INTO public.django_migrations VALUES (25, 'memberManagement', '0005_alter_subscription_amount', '2021-08-24 22:01:27.82817+00');
INSERT INTO public.django_migrations VALUES (26, 'memberManagement', '0006_auto_20210827_2330', '2021-08-27 21:30:34.717884+00');
INSERT INTO public.django_migrations VALUES (27, 'greenAreaManagement', '0002_rename_libel_establishmenttype_name', '2021-08-31 22:34:18.742014+00');
INSERT INTO public.django_migrations VALUES (28, 'greenAreaManagement', '0003_rename_name_establishmenttype_libel', '2021-08-31 23:31:10.560295+00');
INSERT INTO public.django_migrations VALUES (29, 'greenAreaManagement', '0004_auto_20210904_1902', '2021-09-04 17:02:22.789779+00');
INSERT INTO public.django_migrations VALUES (30, 'memberManagement', '0007_alter_member_code', '2021-09-05 20:34:57.861188+00');
INSERT INTO public.django_migrations VALUES (31, 'memberManagement', '0008_alter_member_code', '2021-09-05 22:02:35.542356+00');
INSERT INTO public.django_migrations VALUES (32, 'partnershipManagement', '0001_initial', '2021-09-08 11:24:16.017045+00');


--
-- TOC entry 3202 (class 0 OID 65771)
-- Dependencies: 218
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: forma-green-user
--

INSERT INTO public.django_session VALUES ('26vb51j9qdnbpy49o42xjsdhkd91wtiw', '.eJxVjEEOwiAQRe_C2pAOMDh16b5nIDCAVA0kpV0Z765NutDtf-_9l3B-W4vbelrcHMVFgDj9bsHzI9UdxLuvtya51XWZg9wVedAupxbT83q4fwfF9_KtPWelCSwSaIMDcDprO9jEJo4aI6gcyFAmRvBosyKgMYMlxSpFi1m8P8F7NyM:1mGMwe:XwCWXW4mf89mVBeGZPQ2f8Pi81wwu2myZsYsTSzR2e0', '2021-09-01 14:53:32.791451+00');
INSERT INTO public.django_session VALUES ('deptlzvj6640l9uosua6542nbox2a5y3', '.eJxVjEEOwiAQRe_C2pAOMDh16b5nIDCAVA0kpV0Z765NutDtf-_9l3B-W4vbelrcHMVFgDj9bsHzI9UdxLuvtya51XWZg9wVedAupxbT83q4fwfF9_KtPWelCSwSaIMDcDprO9jEJo4aI6gcyFAmRvBosyKgMYMlxSpFi1m8P8F7NyM:1mGXJc:OI-I5MsFwWBlOQM1F6oz4nvM5vlp9H66nzd4S1ZnoUU', '2021-09-02 01:57:56.084826+00');
INSERT INTO public.django_session VALUES ('rmc1i81i3radbvd3pj7gno5n3nlndt8a', '.eJxVjEEOwiAQRe_C2pAOMDh16b5nIDCAVA0kpV0Z765NutDtf-_9l3B-W4vbelrcHMVFgDj9bsHzI9UdxLuvtya51XWZg9wVedAupxbT83q4fwfF9_KtPWelCSwSaIMDcDprO9jEJo4aI6gcyFAmRvBosyKgMYMlxSpFi1m8P8F7NyM:1mGXpv:bz7BXU9_sQr78_74_bwnIIMM-mtZ-JGKsalUVJr46q8', '2021-09-02 02:31:19.098478+00');
INSERT INTO public.django_session VALUES ('zsf69ioxrp1muuigto6jjyjwos63rx7b', '.eJxVjEEOwiAQRe_C2pAOMDh16b5nIDCAVA0kpV0Z765NutDtf-_9l3B-W4vbelrcHMVFgDj9bsHzI9UdxLuvtya51XWZg9wVedAupxbT83q4fwfF9_KtPWelCSwSaIMDcDprO9jEJo4aI6gcyFAmRvBosyKgMYMlxSpFi1m8P8F7NyM:1mGXwl:klQbuTW43hO7017tT10yfYcvv6Up3SHj2beURBmf8jA', '2021-09-02 02:38:23.776292+00');
INSERT INTO public.django_session VALUES ('9hh7jwiopm1clhdu1gwhtodrs2vy2gfy', '.eJxVjEEOwiAQRe_C2pAOMDh16b5nIDCAVA0kpV0Z765NutDtf-_9l3B-W4vbelrcHMVFgDj9bsHzI9UdxLuvtya51XWZg9wVedAupxbT83q4fwfF9_KtPWelCSwSaIMDcDprO9jEJo4aI6gcyFAmRvBosyKgMYMlxSpFi1m8P8F7NyM:1mGsZ6:alqZDPLgQOzxD9xoL8AybGzujCGJz3L4IgOLXDuWFXc', '2021-09-03 00:39:20.459855+00');
INSERT INTO public.django_session VALUES ('hpzwoil801lihv5i8q7hmewli38t48i6', '.eJxVjEEOwiAQRe_C2pAOMDh16b5nIDCAVA0kpV0Z765NutDtf-_9l3B-W4vbelrcHMVFgDj9bsHzI9UdxLuvtya51XWZg9wVedAupxbT83q4fwfF9_KtPWelCSwSaIMDcDprO9jEJo4aI6gcyFAmRvBosyKgMYMlxSpFi1m8P8F7NyM:1mJKph:HnYZp5XzWcqbEoVcsSZPiyYF05Y17b11LfNr3ejHdOo', '2021-09-09 19:14:37.448059+00');
INSERT INTO public.django_session VALUES ('titrejszwwzu0nwixtho6woiamqva8gz', '.eJxVjEEOwiAQRe_C2pAOMDh16b5nIDCAVA0kpV0Z765NutDtf-_9l3B-W4vbelrcHMVFgDj9bsHzI9UdxLuvtya51XWZg9wVedAupxbT83q4fwfF9_KtPWelCSwSaIMDcDprO9jEJo4aI6gcyFAmRvBosyKgMYMlxSpFi1m8P8F7NyM:1mJk6m:GxY5WMjdV8bAl3jZyPGN2ECUAL9i5H3AygPz1f_A28U', '2021-09-10 22:13:56.560384+00');
INSERT INTO public.django_session VALUES ('w6wht66uq2pld8272264g2g00gn6gylf', '.eJxVjEEOwiAQRe_C2pAOMDh16b5nIDCAVA0kpV0Z765NutDtf-_9l3B-W4vbelrcHMVFgDj9bsHzI9UdxLuvtya51XWZg9wVedAupxbT83q4fwfF9_KtPWelCSwSaIMDcDprO9jEJo4aI6gcyFAmRvBosyKgMYMlxSpFi1m8P8F7NyM:1mKn0u:_kHlSOWPR7BflROH2JMqPjtDGy1VFZbfZxyUUnF9uPA', '2021-09-13 19:32:12.621161+00');
INSERT INTO public.django_session VALUES ('mvefd4hj218f1wy6xd40yem6gtu2druu', '.eJxVjEEOwiAQRe_C2pAOMDh16b5nIDCAVA0kpV0Z765NutDtf-_9l3B-W4vbelrcHMVFgDj9bsHzI9UdxLuvtya51XWZg9wVedAupxbT83q4fwfF9_KtPWelCSwSaIMDcDprO9jEJo4aI6gcyFAmRvBosyKgMYMlxSpFi1m8P8F7NyM:1mLsd4:sUPLUbWGfWc0evcIebyll-H3cpEfmqrY8ExD_FmbIf0', '2021-09-16 19:44:06.322644+00');
INSERT INTO public.django_session VALUES ('l87pwdog1jos60knm8vlq215fk3z1xdw', '.eJxVjEEOwiAQRe_C2pAOMDh16b5nIDCAVA0kpV0Z765NutDtf-_9l3B-W4vbelrcHMVFgDj9bsHzI9UdxLuvtya51XWZg9wVedAupxbT83q4fwfF9_KtPWelCSwSaIMDcDprO9jEJo4aI6gcyFAmRvBosyKgMYMlxSpFi1m8P8F7NyM:1mMdcj:d7_vOIdkzsMYkHcDQU1cYWzW-u60zOnnq6JqkZxYP-I', '2021-09-18 21:54:53.06957+00');
INSERT INTO public.django_session VALUES ('k0ngufah3s7bthnz1aqz2r9a9cd8dmzr', '.eJxVjEEOwiAQRe_C2pAOMDh16b5nIDCAVA0kpV0Z765NutDtf-_9l3B-W4vbelrcHMVFgDj9bsHzI9UdxLuvtya51XWZg9wVedAupxbT83q4fwfF9_KtPWelCSwSaIMDcDprO9jEJo4aI6gcyFAmRvBosyKgMYMlxSpFi1m8P8F7NyM:1mMdfb:V4y8i_6-ObdpS_kr_xutPVGDV_1IuGcdXJIlrYBdRn0', '2021-09-18 21:57:51.439592+00');
INSERT INTO public.django_session VALUES ('jtaf11tgf96uw1lztt2n4o0e7yg0auqu', '.eJxVjEEOwiAQRe_C2pAOMDh16b5nIDCAVA0kpV0Z765NutDtf-_9l3B-W4vbelrcHMVFgDj9bsHzI9UdxLuvtya51XWZg9wVedAupxbT83q4fwfF9_KtPWelCSwSaIMDcDprO9jEJo4aI6gcyFAmRvBosyKgMYMlxSpFi1m8P8F7NyM:1mOGF7:8oYZ1QWhy9KCV1k2P6vva9w9VfShr3DT0_sjH1acZwc', '2021-09-23 09:21:13.980503+00');
INSERT INTO public.django_session VALUES ('b1199yw3fc45sja5me3uqoebv1c5i2xs', '.eJxVjEEOwiAQRe_C2pAOMDh16b5nIDCAVA0kpV0Z765NutDtf-_9l3B-W4vbelrcHMVFgDj9bsHzI9UdxLuvtya51XWZg9wVedAupxbT83q4fwfF9_KtPWelCSwSaIMDcDprO9jEJo4aI6gcyFAmRvBosyKgMYMlxSpFi1m8P8F7NyM:1mOMpt:H36QeGO1hbU-mVC_zQ-xTqhPc3gkmbOA5XUU40O6C7A', '2021-09-23 16:23:37.065689+00');


--
-- TOC entry 3206 (class 0 OID 65798)
-- Dependencies: 222
-- Data for Name: greenAreaManagement_establishmenttype; Type: TABLE DATA; Schema: public; Owner: forma-green-user
--

INSERT INTO public."greenAreaManagement_establishmenttype" VALUES (1, 'Schools');
INSERT INTO public."greenAreaManagement_establishmenttype" VALUES (2, 'universities');
INSERT INTO public."greenAreaManagement_establishmenttype" VALUES (3, 'Training schools');
INSERT INTO public."greenAreaManagement_establishmenttype" VALUES (4, 'Training centers');


--
-- TOC entry 3208 (class 0 OID 65806)
-- Dependencies: 224
-- Data for Name: greenAreaManagement_greenspace; Type: TABLE DATA; Schema: public; Owner: forma-green-user
--

INSERT INTO public."greenAreaManagement_greenspace" VALUES (1, 'green-area-1', 1, -4.87234397928352, 31.411454646206632);
INSERT INTO public."greenAreaManagement_greenspace" VALUES (2, 'green-area-2', 1, 8.876953125, 49.38237278700955);
INSERT INTO public."greenAreaManagement_greenspace" VALUES (3, 'green-area-1', 2, -5.5810546875, 42.561172855318105);
INSERT INTO public."greenAreaManagement_greenspace" VALUES (4, 'green-area-4', 2, 11.581130664689159, 48.059873875033695);
INSERT INTO public."greenAreaManagement_greenspace" VALUES (5, 'green-area-5', 3, 12.161571986840984, 57.61712394609454);
INSERT INTO public."greenAreaManagement_greenspace" VALUES (6, 'green-area-6', 4, 26.496120052829596, 57.98326877390288);
INSERT INTO public."greenAreaManagement_greenspace" VALUES (7, 'green-area-7', 2, 17.13839800241759, 64.16171647375204);
INSERT INTO public."greenAreaManagement_greenspace" VALUES (8, 'green-area-8', 3, 9.052734375, 45.24395342262325);
INSERT INTO public."greenAreaManagement_greenspace" VALUES (10, 'green-area-9', 1, 5.80078125, 24.5271348225978);


--
-- TOC entry 3210 (class 0 OID 65820)
-- Dependencies: 226
-- Data for Name: memberManagement_member; Type: TABLE DATA; Schema: public; Owner: forma-green-user
--

INSERT INTO public."memberManagement_member" VALUES (17, 'TestName-1', '+33644638672', 'TestAddress-1', 'test-1@mail.com', '117497655190', 'barcodes/barcode-117497655190.png', 'qr_codes/qr_code-117497655190.png');
INSERT INTO public."memberManagement_member" VALUES (18, 'TestName-2', '+33644638872', 'TestAddress-2', 'test-2@mail.com', '145545073661', 'barcodes/barcode-1455450736613.png', 'qr_codes/qr_code-1455450736613.png');
INSERT INTO public."memberManagement_member" VALUES (19, 'TestName-3', '+33644633672', 'TestAddress-3', 'test-3@mail.com', '950781620416', 'barcodes/barcode-9507816204163.png', 'qr_codes/qr_code-9507816204163.png');
INSERT INTO public."memberManagement_member" VALUES (20, 'TestName-4', '+33694633672', 'TestAddress-4', 'test-4@mail.com', '260382838868', 'barcodes/barcode-2603828388680.png', 'qr_codes/qr_code-2603828388680.png');
INSERT INTO public."memberManagement_member" VALUES (21, 'TestName-5', '+33643638879', 'TestAddress-5', 'test-5@mail.com', '361069825745', 'barcodes/barcode-3610698257456.png', 'qr_codes/qr_code-3610698257456.png');
INSERT INTO public."memberManagement_member" VALUES (22, 'TestName-6', '+33643638075', 'TestAddress-6', 'test-6@mail.com', '262927905625', 'barcodes/barcode-2629279056254.png', 'qr_codes/qr_code-2629279056254.png');


--
-- TOC entry 3212 (class 0 OID 65834)
-- Dependencies: 228
-- Data for Name: memberManagement_subscription; Type: TABLE DATA; Schema: public; Owner: forma-green-user
--



--
-- TOC entry 3216 (class 0 OID 82276)
-- Dependencies: 232
-- Data for Name: partnershipManagement_gift; Type: TABLE DATA; Schema: public; Owner: forma-green-user
--

INSERT INTO public."partnershipManagement_gift" VALUES (1, 'gift-1-for-test-partner-1-update', 1);
INSERT INTO public."partnershipManagement_gift" VALUES (5, 'gift-5-for-test-partner-1', 1);
INSERT INTO public."partnershipManagement_gift" VALUES (2, 'gift-2-for-test-partner-1', 1);
INSERT INTO public."partnershipManagement_gift" VALUES (4, 'gift-4-for-test-partner-1', 1);
INSERT INTO public."partnershipManagement_gift" VALUES (3, 'gift-3-for-test-partner-1', 1);
INSERT INTO public."partnershipManagement_gift" VALUES (8, 'gift-2-for-test-partner-2', 2);
INSERT INTO public."partnershipManagement_gift" VALUES (9, 'gift-3-for-test-partner-2', 2);
INSERT INTO public."partnershipManagement_gift" VALUES (7, 'gift-1-for-test-partner-2-updated', 2);


--
-- TOC entry 3214 (class 0 OID 82268)
-- Dependencies: 230
-- Data for Name: partnershipManagement_partner; Type: TABLE DATA; Schema: public; Owner: forma-green-user
--

INSERT INTO public."partnershipManagement_partner" VALUES (1, 'Test-Partner-1');
INSERT INTO public."partnershipManagement_partner" VALUES (2, 'Test-Partner-2');
INSERT INTO public."partnershipManagement_partner" VALUES (3, 'Test-Partner-3');
INSERT INTO public."partnershipManagement_partner" VALUES (4, 'Test-Partner-4');
INSERT INTO public."partnershipManagement_partner" VALUES (5, 'Test-Partner-5');
INSERT INTO public."partnershipManagement_partner" VALUES (6, 'Test-Partner-6');
INSERT INTO public."partnershipManagement_partner" VALUES (7, 'Test-Partner-7');
INSERT INTO public."partnershipManagement_partner" VALUES (8, 'Test-Partner-8');
INSERT INTO public."partnershipManagement_partner" VALUES (9, 'Test-Partner-9');
INSERT INTO public."partnershipManagement_partner" VALUES (11, 'Test-Partner-11-update-2');
INSERT INTO public."partnershipManagement_partner" VALUES (12, 'Test-Partner-12');


--
-- TOC entry 3238 (class 0 OID 0)
-- Dependencies: 219
-- Name: accountManagement_account_id_seq; Type: SEQUENCE SET; Schema: public; Owner: forma-green-user
--

SELECT pg_catalog.setval('public."accountManagement_account_id_seq"', 1, false);


--
-- TOC entry 3239 (class 0 OID 0)
-- Dependencies: 206
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: forma-green-user
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- TOC entry 3240 (class 0 OID 0)
-- Dependencies: 208
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: forma-green-user
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- TOC entry 3241 (class 0 OID 0)
-- Dependencies: 204
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: forma-green-user
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 52, true);


--
-- TOC entry 3242 (class 0 OID 0)
-- Dependencies: 212
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: forma-green-user
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- TOC entry 3243 (class 0 OID 0)
-- Dependencies: 210
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: forma-green-user
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- TOC entry 3244 (class 0 OID 0)
-- Dependencies: 214
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: forma-green-user
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 3245 (class 0 OID 0)
-- Dependencies: 216
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: forma-green-user
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- TOC entry 3246 (class 0 OID 0)
-- Dependencies: 202
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: forma-green-user
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 13, true);


--
-- TOC entry 3247 (class 0 OID 0)
-- Dependencies: 200
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: forma-green-user
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 32, true);


--
-- TOC entry 3248 (class 0 OID 0)
-- Dependencies: 221
-- Name: greenAreaManagement_establishmenttype_id_seq; Type: SEQUENCE SET; Schema: public; Owner: forma-green-user
--

SELECT pg_catalog.setval('public."greenAreaManagement_establishmenttype_id_seq"', 4, true);


--
-- TOC entry 3249 (class 0 OID 0)
-- Dependencies: 223
-- Name: greenAreaManagement_greenspace_id_seq; Type: SEQUENCE SET; Schema: public; Owner: forma-green-user
--

SELECT pg_catalog.setval('public."greenAreaManagement_greenspace_id_seq"', 10, true);


--
-- TOC entry 3250 (class 0 OID 0)
-- Dependencies: 225
-- Name: memberManagement_member_id_seq; Type: SEQUENCE SET; Schema: public; Owner: forma-green-user
--

SELECT pg_catalog.setval('public."memberManagement_member_id_seq"', 22, true);


--
-- TOC entry 3251 (class 0 OID 0)
-- Dependencies: 227
-- Name: memberManagement_subscription_id_seq; Type: SEQUENCE SET; Schema: public; Owner: forma-green-user
--

SELECT pg_catalog.setval('public."memberManagement_subscription_id_seq"', 14, true);


--
-- TOC entry 3252 (class 0 OID 0)
-- Dependencies: 231
-- Name: partnershipManagement_gift_id_seq; Type: SEQUENCE SET; Schema: public; Owner: forma-green-user
--

SELECT pg_catalog.setval('public."partnershipManagement_gift_id_seq"', 9, true);


--
-- TOC entry 3253 (class 0 OID 0)
-- Dependencies: 229
-- Name: partnershipManagement_partner_id_seq; Type: SEQUENCE SET; Schema: public; Owner: forma-green-user
--

SELECT pg_catalog.setval('public."partnershipManagement_partner_id_seq"', 12, true);


--
-- TOC entry 3014 (class 2606 OID 65788)
-- Name: accountManagement_account accountManagement_account_pkey; Type: CONSTRAINT; Schema: public; Owner: forma-green-user
--

ALTER TABLE ONLY public."accountManagement_account"
    ADD CONSTRAINT "accountManagement_account_pkey" PRIMARY KEY (id);


--
-- TOC entry 3016 (class 2606 OID 65790)
-- Name: accountManagement_account accountManagement_account_user_id_key; Type: CONSTRAINT; Schema: public; Owner: forma-green-user
--

ALTER TABLE ONLY public."accountManagement_account"
    ADD CONSTRAINT "accountManagement_account_user_id_key" UNIQUE (user_id);


--
-- TOC entry 2979 (class 2606 OID 65769)
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: forma-green-user
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- TOC entry 2984 (class 2606 OID 65696)
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: forma-green-user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- TOC entry 2987 (class 2606 OID 65659)
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: forma-green-user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2981 (class 2606 OID 65649)
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: forma-green-user
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- TOC entry 2974 (class 2606 OID 65687)
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: forma-green-user
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- TOC entry 2976 (class 2606 OID 65641)
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: forma-green-user
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 2995 (class 2606 OID 65677)
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: forma-green-user
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 2998 (class 2606 OID 65711)
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: forma-green-user
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- TOC entry 2989 (class 2606 OID 65667)
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: forma-green-user
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- TOC entry 3001 (class 2606 OID 65685)
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: forma-green-user
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 3004 (class 2606 OID 65725)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: forma-green-user
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- TOC entry 2992 (class 2606 OID 65763)
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: forma-green-user
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- TOC entry 3007 (class 2606 OID 65749)
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: forma-green-user
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- TOC entry 2969 (class 2606 OID 65633)
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: forma-green-user
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- TOC entry 2971 (class 2606 OID 65631)
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: forma-green-user
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- TOC entry 2967 (class 2606 OID 65623)
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: forma-green-user
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 3011 (class 2606 OID 65778)
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: forma-green-user
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- TOC entry 3018 (class 2606 OID 65803)
-- Name: greenAreaManagement_establishmenttype greenAreaManagement_establishmenttype_pkey; Type: CONSTRAINT; Schema: public; Owner: forma-green-user
--

ALTER TABLE ONLY public."greenAreaManagement_establishmenttype"
    ADD CONSTRAINT "greenAreaManagement_establishmenttype_pkey" PRIMARY KEY (id);


--
-- TOC entry 3021 (class 2606 OID 65811)
-- Name: greenAreaManagement_greenspace greenAreaManagement_greenspace_pkey; Type: CONSTRAINT; Schema: public; Owner: forma-green-user
--

ALTER TABLE ONLY public."greenAreaManagement_greenspace"
    ADD CONSTRAINT "greenAreaManagement_greenspace_pkey" PRIMARY KEY (id);


--
-- TOC entry 3024 (class 2606 OID 82251)
-- Name: memberManagement_member memberManagement_member_code_key; Type: CONSTRAINT; Schema: public; Owner: forma-green-user
--

ALTER TABLE ONLY public."memberManagement_member"
    ADD CONSTRAINT "memberManagement_member_code_key" UNIQUE (code);


--
-- TOC entry 3027 (class 2606 OID 65829)
-- Name: memberManagement_member memberManagement_member_mail_key; Type: CONSTRAINT; Schema: public; Owner: forma-green-user
--

ALTER TABLE ONLY public."memberManagement_member"
    ADD CONSTRAINT "memberManagement_member_mail_key" UNIQUE (mail);


--
-- TOC entry 3030 (class 2606 OID 65827)
-- Name: memberManagement_member memberManagement_member_phoneNumber_key; Type: CONSTRAINT; Schema: public; Owner: forma-green-user
--

ALTER TABLE ONLY public."memberManagement_member"
    ADD CONSTRAINT "memberManagement_member_phoneNumber_key" UNIQUE ("phoneNumber");


--
-- TOC entry 3032 (class 2606 OID 65825)
-- Name: memberManagement_member memberManagement_member_pkey; Type: CONSTRAINT; Schema: public; Owner: forma-green-user
--

ALTER TABLE ONLY public."memberManagement_member"
    ADD CONSTRAINT "memberManagement_member_pkey" PRIMARY KEY (id);


--
-- TOC entry 3035 (class 2606 OID 65839)
-- Name: memberManagement_subscription memberManagement_subscription_pkey; Type: CONSTRAINT; Schema: public; Owner: forma-green-user
--

ALTER TABLE ONLY public."memberManagement_subscription"
    ADD CONSTRAINT "memberManagement_subscription_pkey" PRIMARY KEY (id);


--
-- TOC entry 3040 (class 2606 OID 82281)
-- Name: partnershipManagement_gift partnershipManagement_gift_pkey; Type: CONSTRAINT; Schema: public; Owner: forma-green-user
--

ALTER TABLE ONLY public."partnershipManagement_gift"
    ADD CONSTRAINT "partnershipManagement_gift_pkey" PRIMARY KEY (id);


--
-- TOC entry 3037 (class 2606 OID 82273)
-- Name: partnershipManagement_partner partnershipManagement_partner_pkey; Type: CONSTRAINT; Schema: public; Owner: forma-green-user
--

ALTER TABLE ONLY public."partnershipManagement_partner"
    ADD CONSTRAINT "partnershipManagement_partner_pkey" PRIMARY KEY (id);


--
-- TOC entry 2977 (class 1259 OID 65770)
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: forma-green-user
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- TOC entry 2982 (class 1259 OID 65707)
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: forma-green-user
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- TOC entry 2985 (class 1259 OID 65708)
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: forma-green-user
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- TOC entry 2972 (class 1259 OID 65693)
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: forma-green-user
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- TOC entry 2993 (class 1259 OID 65723)
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: forma-green-user
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- TOC entry 2996 (class 1259 OID 65722)
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: forma-green-user
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- TOC entry 2999 (class 1259 OID 65737)
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: forma-green-user
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- TOC entry 3002 (class 1259 OID 65736)
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: forma-green-user
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- TOC entry 2990 (class 1259 OID 65764)
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: forma-green-user
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- TOC entry 3005 (class 1259 OID 65760)
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: forma-green-user
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- TOC entry 3008 (class 1259 OID 65761)
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: forma-green-user
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- TOC entry 3009 (class 1259 OID 65780)
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: forma-green-user
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- TOC entry 3012 (class 1259 OID 65779)
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: forma-green-user
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- TOC entry 3019 (class 1259 OID 65817)
-- Name: greenAreaManagement_greenspace_establishmentType_id_0fc7e6e5; Type: INDEX; Schema: public; Owner: forma-green-user
--

CREATE INDEX "greenAreaManagement_greenspace_establishmentType_id_0fc7e6e5" ON public."greenAreaManagement_greenspace" USING btree ("establishmentType_id");


--
-- TOC entry 3022 (class 1259 OID 82252)
-- Name: memberManagement_member_code_bbd4e04a_like; Type: INDEX; Schema: public; Owner: forma-green-user
--

CREATE INDEX "memberManagement_member_code_bbd4e04a_like" ON public."memberManagement_member" USING btree (code varchar_pattern_ops);


--
-- TOC entry 3025 (class 1259 OID 65841)
-- Name: memberManagement_member_mail_8a992c5e_like; Type: INDEX; Schema: public; Owner: forma-green-user
--

CREATE INDEX "memberManagement_member_mail_8a992c5e_like" ON public."memberManagement_member" USING btree (mail varchar_pattern_ops);


--
-- TOC entry 3028 (class 1259 OID 65840)
-- Name: memberManagement_member_phoneNumber_671b4641_like; Type: INDEX; Schema: public; Owner: forma-green-user
--

CREATE INDEX "memberManagement_member_phoneNumber_671b4641_like" ON public."memberManagement_member" USING btree ("phoneNumber" varchar_pattern_ops);


--
-- TOC entry 3033 (class 1259 OID 65848)
-- Name: memberManagement_subscription_member_id_4c531065; Type: INDEX; Schema: public; Owner: forma-green-user
--

CREATE INDEX "memberManagement_subscription_member_id_4c531065" ON public."memberManagement_subscription" USING btree (member_id);


--
-- TOC entry 3038 (class 1259 OID 82287)
-- Name: partnershipManagement_gift_owner_id_33646bde; Type: INDEX; Schema: public; Owner: forma-green-user
--

CREATE INDEX "partnershipManagement_gift_owner_id_33646bde" ON public."partnershipManagement_gift" USING btree (owner_id);


--
-- TOC entry 3050 (class 2606 OID 65791)
-- Name: accountManagement_account accountManagement_account_user_id_99c378b0_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: forma-green-user
--

ALTER TABLE ONLY public."accountManagement_account"
    ADD CONSTRAINT "accountManagement_account_user_id_99c378b0_fk_auth_user_id" FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3043 (class 2606 OID 65702)
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: forma-green-user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3042 (class 2606 OID 65697)
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: forma-green-user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3041 (class 2606 OID 65688)
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: forma-green-user
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3045 (class 2606 OID 65717)
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: forma-green-user
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3044 (class 2606 OID 65712)
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: forma-green-user
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3047 (class 2606 OID 65731)
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: forma-green-user
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3046 (class 2606 OID 65726)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: forma-green-user
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3048 (class 2606 OID 65750)
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: forma-green-user
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3049 (class 2606 OID 65755)
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: forma-green-user
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3051 (class 2606 OID 65812)
-- Name: greenAreaManagement_greenspace greenAreaManagement__establishmentType_id_0fc7e6e5_fk_greenArea; Type: FK CONSTRAINT; Schema: public; Owner: forma-green-user
--

ALTER TABLE ONLY public."greenAreaManagement_greenspace"
    ADD CONSTRAINT "greenAreaManagement__establishmentType_id_0fc7e6e5_fk_greenArea" FOREIGN KEY ("establishmentType_id") REFERENCES public."greenAreaManagement_establishmenttype"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3052 (class 2606 OID 65843)
-- Name: memberManagement_subscription memberManagement_sub_member_id_4c531065_fk_memberMan; Type: FK CONSTRAINT; Schema: public; Owner: forma-green-user
--

ALTER TABLE ONLY public."memberManagement_subscription"
    ADD CONSTRAINT "memberManagement_sub_member_id_4c531065_fk_memberMan" FOREIGN KEY (member_id) REFERENCES public."memberManagement_member"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3053 (class 2606 OID 82282)
-- Name: partnershipManagement_gift partnershipManagemen_owner_id_33646bde_fk_partnersh; Type: FK CONSTRAINT; Schema: public; Owner: forma-green-user
--

ALTER TABLE ONLY public."partnershipManagement_gift"
    ADD CONSTRAINT "partnershipManagemen_owner_id_33646bde_fk_partnersh" FOREIGN KEY (owner_id) REFERENCES public."partnershipManagement_partner"(id) DEFERRABLE INITIALLY DEFERRED;


-- Completed on 2021-09-10 13:10:36

--
-- PostgreSQL database dump complete
--

