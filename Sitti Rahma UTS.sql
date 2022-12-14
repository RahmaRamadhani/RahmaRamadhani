toc.dat                                                                                             0000600 0004000 0002000 00000021454 14341642150 0014445 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP           6            
    z            latihan    14.5    14.5                 0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                    0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                    0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                    1262    16884    latihan    DATABASE     j   CREATE DATABASE latihan WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Indonesian_Indonesia.1252';
    DROP DATABASE latihan;
                postgres    false         ?            1259    16900    barang    TABLE     ?   CREATE TABLE public.barang (
    id_barang integer NOT NULL,
    nama_barang character varying(50),
    harga integer,
    stok integer,
    id_supplier integer
);
    DROP TABLE public.barang;
       public         heap    postgres    false         ?            1259    16899    barang_id_barang_seq    SEQUENCE     ?   CREATE SEQUENCE public.barang_id_barang_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.barang_id_barang_seq;
       public          postgres    false    214                    0    0    barang_id_barang_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.barang_id_barang_seq OWNED BY public.barang.id_barang;
          public          postgres    false    213         ?            1259    16893 	   pelanggan    TABLE     ?   CREATE TABLE public.pelanggan (
    id_pelanggan integer NOT NULL,
    nama_pelanggan character varying(50),
    phone character(15),
    alamat character varying(30)
);
    DROP TABLE public.pelanggan;
       public         heap    postgres    false         ?            1259    16892    pelanggan_id_pelanggan_seq    SEQUENCE     ?   CREATE SEQUENCE public.pelanggan_id_pelanggan_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.pelanggan_id_pelanggan_seq;
       public          postgres    false    212                    0    0    pelanggan_id_pelanggan_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.pelanggan_id_pelanggan_seq OWNED BY public.pelanggan.id_pelanggan;
          public          postgres    false    211         ?            1259    16907 
   pembayaran    TABLE     ?   CREATE TABLE public.pembayaran (
    nomor_pembayaran integer NOT NULL,
    id_pelanggan integer,
    id_barang integer,
    tgl_bayar date,
    jml_barang integer,
    total_bayar integer
);
    DROP TABLE public.pembayaran;
       public         heap    postgres    false         ?            1259    16906    pembayaran_nomor_pembayaran_seq    SEQUENCE     ?   CREATE SEQUENCE public.pembayaran_nomor_pembayaran_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.pembayaran_nomor_pembayaran_seq;
       public          postgres    false    216                    0    0    pembayaran_nomor_pembayaran_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.pembayaran_nomor_pembayaran_seq OWNED BY public.pembayaran.nomor_pembayaran;
          public          postgres    false    215         ?            1259    16886    supplier    TABLE     ?   CREATE TABLE public.supplier (
    id_supplier integer NOT NULL,
    nama_supplier character varying(30),
    phone character(15),
    alamat character varying(100)
);
    DROP TABLE public.supplier;
       public         heap    postgres    false         ?            1259    16885    supplier_id_supplier_seq    SEQUENCE     ?   CREATE SEQUENCE public.supplier_id_supplier_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.supplier_id_supplier_seq;
       public          postgres    false    210                    0    0    supplier_id_supplier_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.supplier_id_supplier_seq OWNED BY public.supplier.id_supplier;
          public          postgres    false    209         m           2604    16903    barang id_barang    DEFAULT     t   ALTER TABLE ONLY public.barang ALTER COLUMN id_barang SET DEFAULT nextval('public.barang_id_barang_seq'::regclass);
 ?   ALTER TABLE public.barang ALTER COLUMN id_barang DROP DEFAULT;
       public          postgres    false    214    213    214         l           2604    16896    pelanggan id_pelanggan    DEFAULT     ?   ALTER TABLE ONLY public.pelanggan ALTER COLUMN id_pelanggan SET DEFAULT nextval('public.pelanggan_id_pelanggan_seq'::regclass);
 E   ALTER TABLE public.pelanggan ALTER COLUMN id_pelanggan DROP DEFAULT;
       public          postgres    false    211    212    212         n           2604    16910    pembayaran nomor_pembayaran    DEFAULT     ?   ALTER TABLE ONLY public.pembayaran ALTER COLUMN nomor_pembayaran SET DEFAULT nextval('public.pembayaran_nomor_pembayaran_seq'::regclass);
 J   ALTER TABLE public.pembayaran ALTER COLUMN nomor_pembayaran DROP DEFAULT;
       public          postgres    false    215    216    216         k           2604    16889    supplier id_supplier    DEFAULT     |   ALTER TABLE ONLY public.supplier ALTER COLUMN id_supplier SET DEFAULT nextval('public.supplier_id_supplier_seq'::regclass);
 C   ALTER TABLE public.supplier ALTER COLUMN id_supplier DROP DEFAULT;
       public          postgres    false    209    210    210                   0    16900    barang 
   TABLE DATA           R   COPY public.barang (id_barang, nama_barang, harga, stok, id_supplier) FROM stdin;
    public          postgres    false    214       3335.dat           0    16893 	   pelanggan 
   TABLE DATA           P   COPY public.pelanggan (id_pelanggan, nama_pelanggan, phone, alamat) FROM stdin;
    public          postgres    false    212       3333.dat 	          0    16907 
   pembayaran 
   TABLE DATA           s   COPY public.pembayaran (nomor_pembayaran, id_pelanggan, id_barang, tgl_bayar, jml_barang, total_bayar) FROM stdin;
    public          postgres    false    216       3337.dat           0    16886    supplier 
   TABLE DATA           M   COPY public.supplier (id_supplier, nama_supplier, phone, alamat) FROM stdin;
    public          postgres    false    210       3331.dat            0    0    barang_id_barang_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.barang_id_barang_seq', 1, false);
          public          postgres    false    213                    0    0    pelanggan_id_pelanggan_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.pelanggan_id_pelanggan_seq', 1, false);
          public          postgres    false    211                    0    0    pembayaran_nomor_pembayaran_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.pembayaran_nomor_pembayaran_seq', 1, false);
          public          postgres    false    215                    0    0    supplier_id_supplier_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.supplier_id_supplier_seq', 1, false);
          public          postgres    false    209         t           2606    16905    barang barang_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.barang
    ADD CONSTRAINT barang_pkey PRIMARY KEY (id_barang);
 <   ALTER TABLE ONLY public.barang DROP CONSTRAINT barang_pkey;
       public            postgres    false    214         r           2606    16898    pelanggan pelanggan_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.pelanggan
    ADD CONSTRAINT pelanggan_pkey PRIMARY KEY (id_pelanggan);
 B   ALTER TABLE ONLY public.pelanggan DROP CONSTRAINT pelanggan_pkey;
       public            postgres    false    212         v           2606    16912    pembayaran pembayaran_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.pembayaran
    ADD CONSTRAINT pembayaran_pkey PRIMARY KEY (nomor_pembayaran);
 D   ALTER TABLE ONLY public.pembayaran DROP CONSTRAINT pembayaran_pkey;
       public            postgres    false    216         p           2606    16891    supplier supplier_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.supplier
    ADD CONSTRAINT supplier_pkey PRIMARY KEY (id_supplier);
 @   ALTER TABLE ONLY public.supplier DROP CONSTRAINT supplier_pkey;
       public            postgres    false    210                                                                                                                                                                                                                            3335.dat                                                                                            0000600 0004000 0002000 00000000171 14341642150 0014246 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        4005	Beras	500000	50	22908
4002	Gula	600000	20	22905
3008	Celana	150000	100	32905
3009	Baju Kemeja	100000	150	32905
\.


                                                                                                                                                                                                                                                                                                                                                                                                       3333.dat                                                                                            0000600 0004000 0002000 00000000247 14341642150 0014250 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        2205	Fajrawati	085670945600   	Tinambung
3560	Sitti Rahma	082459856021   	Pambusuang
3600	Handayani	085230985460   	Mamuju
2390	Nurmadina	089780564370   	Sendana
\.


                                                                                                                                                                                                                                                                                                                                                         3337.dat                                                                                            0000600 0004000 0002000 00000000244 14341642150 0014251 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        20895069	2205	4005	2022-11-26	50	2500000
30908790	2390	4002	2022-11-25	3	1800000
30906754	3560	3009	2022-11-25	2	200000
30906800	3600	3008	2022-11-30	5	300000
\.


                                                                                                                                                                                                                                                                                                                                                            3331.dat                                                                                            0000600 0004000 0002000 00000000216 14341642150 0014242 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        22908	PT INDAH SARI	085378590765   	Majene
32905	PT SINAR ABADI	082345623098   	Polewali
22905	PT CAHAYA ILAHI	085230645098   	Tinambung
\.


                                                                                                                                                                                                                                                                                                                                                                                  restore.sql                                                                                         0000600 0004000 0002000 00000017306 14341642150 0015373 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5
-- Dumped by pg_dump version 14.5

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

DROP DATABASE latihan;
--
-- Name: latihan; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE latihan WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Indonesian_Indonesia.1252';


ALTER DATABASE latihan OWNER TO postgres;

\connect latihan

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
-- Name: barang; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.barang (
    id_barang integer NOT NULL,
    nama_barang character varying(50),
    harga integer,
    stok integer,
    id_supplier integer
);


ALTER TABLE public.barang OWNER TO postgres;

--
-- Name: barang_id_barang_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.barang_id_barang_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.barang_id_barang_seq OWNER TO postgres;

--
-- Name: barang_id_barang_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.barang_id_barang_seq OWNED BY public.barang.id_barang;


--
-- Name: pelanggan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pelanggan (
    id_pelanggan integer NOT NULL,
    nama_pelanggan character varying(50),
    phone character(15),
    alamat character varying(30)
);


ALTER TABLE public.pelanggan OWNER TO postgres;

--
-- Name: pelanggan_id_pelanggan_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pelanggan_id_pelanggan_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pelanggan_id_pelanggan_seq OWNER TO postgres;

--
-- Name: pelanggan_id_pelanggan_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pelanggan_id_pelanggan_seq OWNED BY public.pelanggan.id_pelanggan;


--
-- Name: pembayaran; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pembayaran (
    nomor_pembayaran integer NOT NULL,
    id_pelanggan integer,
    id_barang integer,
    tgl_bayar date,
    jml_barang integer,
    total_bayar integer
);


ALTER TABLE public.pembayaran OWNER TO postgres;

--
-- Name: pembayaran_nomor_pembayaran_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pembayaran_nomor_pembayaran_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pembayaran_nomor_pembayaran_seq OWNER TO postgres;

--
-- Name: pembayaran_nomor_pembayaran_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pembayaran_nomor_pembayaran_seq OWNED BY public.pembayaran.nomor_pembayaran;


--
-- Name: supplier; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.supplier (
    id_supplier integer NOT NULL,
    nama_supplier character varying(30),
    phone character(15),
    alamat character varying(100)
);


ALTER TABLE public.supplier OWNER TO postgres;

--
-- Name: supplier_id_supplier_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.supplier_id_supplier_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.supplier_id_supplier_seq OWNER TO postgres;

--
-- Name: supplier_id_supplier_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.supplier_id_supplier_seq OWNED BY public.supplier.id_supplier;


--
-- Name: barang id_barang; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.barang ALTER COLUMN id_barang SET DEFAULT nextval('public.barang_id_barang_seq'::regclass);


--
-- Name: pelanggan id_pelanggan; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pelanggan ALTER COLUMN id_pelanggan SET DEFAULT nextval('public.pelanggan_id_pelanggan_seq'::regclass);


--
-- Name: pembayaran nomor_pembayaran; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pembayaran ALTER COLUMN nomor_pembayaran SET DEFAULT nextval('public.pembayaran_nomor_pembayaran_seq'::regclass);


--
-- Name: supplier id_supplier; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.supplier ALTER COLUMN id_supplier SET DEFAULT nextval('public.supplier_id_supplier_seq'::regclass);


--
-- Data for Name: barang; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.barang (id_barang, nama_barang, harga, stok, id_supplier) FROM stdin;
\.
COPY public.barang (id_barang, nama_barang, harga, stok, id_supplier) FROM '$$PATH$$/3335.dat';

--
-- Data for Name: pelanggan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pelanggan (id_pelanggan, nama_pelanggan, phone, alamat) FROM stdin;
\.
COPY public.pelanggan (id_pelanggan, nama_pelanggan, phone, alamat) FROM '$$PATH$$/3333.dat';

--
-- Data for Name: pembayaran; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pembayaran (nomor_pembayaran, id_pelanggan, id_barang, tgl_bayar, jml_barang, total_bayar) FROM stdin;
\.
COPY public.pembayaran (nomor_pembayaran, id_pelanggan, id_barang, tgl_bayar, jml_barang, total_bayar) FROM '$$PATH$$/3337.dat';

--
-- Data for Name: supplier; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.supplier (id_supplier, nama_supplier, phone, alamat) FROM stdin;
\.
COPY public.supplier (id_supplier, nama_supplier, phone, alamat) FROM '$$PATH$$/3331.dat';

--
-- Name: barang_id_barang_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.barang_id_barang_seq', 1, false);


--
-- Name: pelanggan_id_pelanggan_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pelanggan_id_pelanggan_seq', 1, false);


--
-- Name: pembayaran_nomor_pembayaran_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pembayaran_nomor_pembayaran_seq', 1, false);


--
-- Name: supplier_id_supplier_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.supplier_id_supplier_seq', 1, false);


--
-- Name: barang barang_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.barang
    ADD CONSTRAINT barang_pkey PRIMARY KEY (id_barang);


--
-- Name: pelanggan pelanggan_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pelanggan
    ADD CONSTRAINT pelanggan_pkey PRIMARY KEY (id_pelanggan);


--
-- Name: pembayaran pembayaran_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pembayaran
    ADD CONSTRAINT pembayaran_pkey PRIMARY KEY (nomor_pembayaran);


--
-- Name: supplier supplier_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.supplier
    ADD CONSTRAINT supplier_pkey PRIMARY KEY (id_supplier);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          