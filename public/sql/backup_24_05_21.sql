PGDMP                         y            sstarget    12.4    12.4     !           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            "           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            #           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            $           1262    33018    sstarget    DATABASE     ?   CREATE DATABASE sstarget WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Chile.1252' LC_CTYPE = 'Spanish_Chile.1252';
    DROP DATABASE sstarget;
                postgres    false            ?            1259    33019    dataemp    TABLE     6  CREATE TABLE public.dataemp (
    cod integer NOT NULL,
    nom1 character varying(35) NOT NULL,
    nom2 character varying(35),
    ape1 character varying(35) NOT NULL,
    ape2 character varying(35),
    rut character varying(10) NOT NULL,
    pat character varying(8),
    sta integer DEFAULT 1 NOT NULL
);
    DROP TABLE public.dataemp;
       public         heap    postgres    false            ?            1259    33026 	   datingveh    TABLE     ?  CREATE TABLE public.datingveh (
    codreg integer NOT NULL,
    nomemp character varying(70) NOT NULL,
    rutemp character varying(10) NOT NULL,
    empres character varying(50) NOT NULL,
    patent character varying(8) NOT NULL,
    horing character varying(8) NOT NULL,
    horsal character varying(8),
    obs character varying(200),
    sta integer DEFAULT 1 NOT NULL,
    codemp integer DEFAULT 0,
    fecing date NOT NULL,
    fecsal date
);
    DROP TABLE public.datingveh;
       public         heap    postgres    false            ?            1259    33024    datingveh_cod_seq    SEQUENCE     ?   CREATE SEQUENCE public.datingveh_cod_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.datingveh_cod_seq;
       public          postgres    false    204            %           0    0    datingveh_cod_seq    SEQUENCE OWNED BY     J   ALTER SEQUENCE public.datingveh_cod_seq OWNED BY public.datingveh.codreg;
          public          postgres    false    203            ?            1259    33066    detpar    TABLE     ?   CREATE TABLE public.detpar (
    codpar integer NOT NULL,
    coddetpar integer NOT NULL,
    detpar character varying(50) NOT NULL,
    obs character varying(100)
);
    DROP TABLE public.detpar;
       public         heap    postgres    false            ?            1259    33039    parsis    TABLE     ?   CREATE TABLE public.parsis (
    codpar integer NOT NULL,
    par character varying(20) NOT NULL,
    obs character varying(50)
);
    DROP TABLE public.parsis;
       public         heap    postgres    false            ?            1259    33037    parametros_codpar_seq    SEQUENCE     ?   CREATE SEQUENCE public.parametros_codpar_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.parametros_codpar_seq;
       public          postgres    false    206            &           0    0    parametros_codpar_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.parametros_codpar_seq OWNED BY public.parsis.codpar;
          public          postgres    false    205            ?
           2604    33029    datingveh codreg    DEFAULT     q   ALTER TABLE ONLY public.datingveh ALTER COLUMN codreg SET DEFAULT nextval('public.datingveh_cod_seq'::regclass);
 ?   ALTER TABLE public.datingveh ALTER COLUMN codreg DROP DEFAULT;
       public          postgres    false    203    204    204            ?
           2604    33042    parsis codpar    DEFAULT     r   ALTER TABLE ONLY public.parsis ALTER COLUMN codpar SET DEFAULT nextval('public.parametros_codpar_seq'::regclass);
 <   ALTER TABLE public.parsis ALTER COLUMN codpar DROP DEFAULT;
       public          postgres    false    205    206    206                      0    33019    dataemp 
   TABLE DATA           M   COPY public.dataemp (cod, nom1, nom2, ape1, ape2, rut, pat, sta) FROM stdin;
    public          postgres    false    202   G                 0    33026 	   datingveh 
   TABLE DATA           }   COPY public.datingveh (codreg, nomemp, rutemp, empres, patent, horing, horsal, obs, sta, codemp, fecing, fecsal) FROM stdin;
    public          postgres    false    204   ?                 0    33066    detpar 
   TABLE DATA           @   COPY public.detpar (codpar, coddetpar, detpar, obs) FROM stdin;
    public          postgres    false    207                    0    33039    parsis 
   TABLE DATA           2   COPY public.parsis (codpar, par, obs) FROM stdin;
    public          postgres    false    206   T       '           0    0    datingveh_cod_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.datingveh_cod_seq', 6, true);
          public          postgres    false    203            (           0    0    parametros_codpar_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.parametros_codpar_seq', 2, true);
          public          postgres    false    205            ?
           2606    33023    dataemp dataemp_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.dataemp
    ADD CONSTRAINT dataemp_pkey PRIMARY KEY (cod);
 >   ALTER TABLE ONLY public.dataemp DROP CONSTRAINT dataemp_pkey;
       public            postgres    false    202            ?
           2606    33031    datingveh datingveh_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.datingveh
    ADD CONSTRAINT datingveh_pkey PRIMARY KEY (codreg);
 B   ALTER TABLE ONLY public.datingveh DROP CONSTRAINT datingveh_pkey;
       public            postgres    false    204            ?
           2606    33075    detpar detpar_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.detpar
    ADD CONSTRAINT detpar_pkey PRIMARY KEY (coddetpar);
 <   ALTER TABLE ONLY public.detpar DROP CONSTRAINT detpar_pkey;
       public            postgres    false    207            ?
           2606    33044    parsis parametros_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.parsis
    ADD CONSTRAINT parametros_pkey PRIMARY KEY (codpar);
 @   ALTER TABLE ONLY public.parsis DROP CONSTRAINT parametros_pkey;
       public            postgres    false    206            ?
           2606    33069    detpar fk_parsis_detpar    FK CONSTRAINT     ?   ALTER TABLE ONLY public.detpar
    ADD CONSTRAINT fk_parsis_detpar FOREIGN KEY (codpar) REFERENCES public.parsis(codpar) NOT VALID;
 A   ALTER TABLE ONLY public.detpar DROP CONSTRAINT fk_parsis_detpar;
       public          postgres    false    207    206    2711               ?   x?-?9?0E??{ހ⡤!??)???a?&??A???????ϟ?#l?3a?z??p???%?0???J?5?8?N>=pq\?c
???H]?	??p?-5??S??]O/L?+k???)ض??P'??V??/=8&Q           x????N?0???+????;ޱ!?PUD??PKG䁔~=???c/??G?+?:toup]7>?@?Ni?-+?0mUnIWVeV0?= Ĉ?L?t?????>?*?'?k??}??H]?)??k[עkǳ?˒C???f????M?gr??????7.f??2?S	nJ|?`.??V2?"O?Τ?u??#uB??_\?U.`Q??;?c?j)4?????	7E>6J*????eyF?vͫ?T??[???i??8c??X?6S?Xd?g??zw?$?7j?o?         9   x?3?4???KL.?,?????2?4?t???8?9]?s3?2?? |N???D;F??? w?         _   x?=?K
?0??9??w?n?}J?m??ۂ???1?iX]??>?!7艂?0F@l?G65G??%?&??\p??Hb?s?5'??h??8l(?     