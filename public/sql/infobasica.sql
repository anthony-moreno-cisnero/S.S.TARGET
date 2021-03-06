PGDMP         $                y           MyTradingNotes    12.4    12.4 $    +           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ,           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            -           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            .           1262    16393    MyTradingNotes    DATABASE     ?   CREATE DATABASE "MyTradingNotes" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Chile.1252' LC_CTYPE = 'Spanish_Chile.1252';
     DROP DATABASE "MyTradingNotes";
                postgres    false            ?            1259    16394    detparametros    TABLE     ?   CREATE TABLE public.detparametros (
    idpar integer NOT NULL,
    iddetpar integer NOT NULL,
    detparametro character varying(50) NOT NULL,
    obsdetpar character varying(100)
);
 !   DROP TABLE public.detparametros;
       public         heap    postgres    false            ?            1259    16397    detparametros_iddetpar_seq    SEQUENCE     ?   CREATE SEQUENCE public.detparametros_iddetpar_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.detparametros_iddetpar_seq;
       public          postgres    false    202            /           0    0    detparametros_iddetpar_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.detparametros_iddetpar_seq OWNED BY public.detparametros.iddetpar;
          public          postgres    false    203            ?            1259    16502    operaciones    TABLE     2  CREATE TABLE public.operaciones (
    idope integer NOT NULL,
    fecope date NOT NULL,
    broker integer NOT NULL,
    recur integer NOT NULL,
    result integer NOT NULL,
    inver integer NOT NULL,
    balanc numeric NOT NULL,
    analis character varying(300) NOT NULL,
    iduser integer NOT NULL
);
    DROP TABLE public.operaciones;
       public         heap    postgres    false            ?            1259    16500    operaciones_idope_seq    SEQUENCE     ?   CREATE SEQUENCE public.operaciones_idope_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.operaciones_idope_seq;
       public          postgres    false    209            0           0    0    operaciones_idope_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.operaciones_idope_seq OWNED BY public.operaciones.idope;
          public          postgres    false    208            ?            1259    16399 
   parametros    TABLE     ?   CREATE TABLE public.parametros (
    idpar integer NOT NULL,
    parametro character varying(50) NOT NULL,
    obspar character varying(100)
);
    DROP TABLE public.parametros;
       public         heap    postgres    false            ?            1259    16402    parametros_idpar_seq    SEQUENCE     ?   CREATE SEQUENCE public.parametros_idpar_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.parametros_idpar_seq;
       public          postgres    false    204            1           0    0    parametros_idpar_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.parametros_idpar_seq OWNED BY public.parametros.idpar;
          public          postgres    false    205            ?            1259    16404    usuarios    TABLE     K  CREATE TABLE public.usuarios (
    email character varying(50) NOT NULL,
    pass character varying(50) NOT NULL,
    nom1 character varying(50) NOT NULL,
    nom2 character varying(50),
    ape1 character varying(50) NOT NULL,
    ape2 character varying(50),
    stauser integer DEFAULT 1 NOT NULL,
    iduser integer NOT NULL
);
    DROP TABLE public.usuarios;
       public         heap    postgres    false            ?            1259    16432    usuarios_iduser_seq    SEQUENCE     ?   CREATE SEQUENCE public.usuarios_iduser_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.usuarios_iduser_seq;
       public          postgres    false    206            2           0    0    usuarios_iduser_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.usuarios_iduser_seq OWNED BY public.usuarios.iduser;
          public          postgres    false    207            ?
           2604    16408    detparametros iddetpar    DEFAULT     ?   ALTER TABLE ONLY public.detparametros ALTER COLUMN iddetpar SET DEFAULT nextval('public.detparametros_iddetpar_seq'::regclass);
 E   ALTER TABLE public.detparametros ALTER COLUMN iddetpar DROP DEFAULT;
       public          postgres    false    203    202            ?
           2604    16505    operaciones idope    DEFAULT     v   ALTER TABLE ONLY public.operaciones ALTER COLUMN idope SET DEFAULT nextval('public.operaciones_idope_seq'::regclass);
 @   ALTER TABLE public.operaciones ALTER COLUMN idope DROP DEFAULT;
       public          postgres    false    209    208    209            ?
           2604    16409    parametros idpar    DEFAULT     t   ALTER TABLE ONLY public.parametros ALTER COLUMN idpar SET DEFAULT nextval('public.parametros_idpar_seq'::regclass);
 ?   ALTER TABLE public.parametros ALTER COLUMN idpar DROP DEFAULT;
       public          postgres    false    205    204            ?
           2604    16434    usuarios iduser    DEFAULT     r   ALTER TABLE ONLY public.usuarios ALTER COLUMN iduser SET DEFAULT nextval('public.usuarios_iduser_seq'::regclass);
 >   ALTER TABLE public.usuarios ALTER COLUMN iduser DROP DEFAULT;
       public          postgres    false    207    206            !          0    16394    detparametros 
   TABLE DATA           Q   COPY public.detparametros (idpar, iddetpar, detparametro, obsdetpar) FROM stdin;
    public          postgres    false    202   *       (          0    16502    operaciones 
   TABLE DATA           j   COPY public.operaciones (idope, fecope, broker, recur, result, inver, balanc, analis, iduser) FROM stdin;
    public          postgres    false    209   ?*       #          0    16399 
   parametros 
   TABLE DATA           >   COPY public.parametros (idpar, parametro, obspar) FROM stdin;
    public          postgres    false    204   ?*       %          0    16404    usuarios 
   TABLE DATA           X   COPY public.usuarios (email, pass, nom1, nom2, ape1, ape2, stauser, iduser) FROM stdin;
    public          postgres    false    206   ?*       3           0    0    detparametros_iddetpar_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.detparametros_iddetpar_seq', 9, true);
          public          postgres    false    203            4           0    0    operaciones_idope_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.operaciones_idope_seq', 1, false);
          public          postgres    false    208            5           0    0    parametros_idpar_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.parametros_idpar_seq', 2, true);
          public          postgres    false    205            6           0    0    usuarios_iduser_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.usuarios_iduser_seq', 2, true);
          public          postgres    false    207            ?
           2606    16411     detparametros detparametros_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.detparametros
    ADD CONSTRAINT detparametros_pkey PRIMARY KEY (iddetpar);
 J   ALTER TABLE ONLY public.detparametros DROP CONSTRAINT detparametros_pkey;
       public            postgres    false    202            ?
           2606    16534    operaciones operaciones_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.operaciones
    ADD CONSTRAINT operaciones_pkey PRIMARY KEY (idope);
 F   ALTER TABLE ONLY public.operaciones DROP CONSTRAINT operaciones_pkey;
       public            postgres    false    209            ?
           2606    16413    parametros parametros_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.parametros
    ADD CONSTRAINT parametros_pkey PRIMARY KEY (idpar);
 D   ALTER TABLE ONLY public.parametros DROP CONSTRAINT parametros_pkey;
       public            postgres    false    204            ?
           2606    16532    usuarios pk_email_iduser 
   CONSTRAINT     a   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT pk_email_iduser PRIMARY KEY (email, iduser);
 B   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT pk_email_iduser;
       public            postgres    false    206    206            ?
           2606    16521    operaciones fk_broker    FK CONSTRAINT     ?   ALTER TABLE ONLY public.operaciones
    ADD CONSTRAINT fk_broker FOREIGN KEY (broker) REFERENCES public.detparametros(iddetpar);
 ?   ALTER TABLE ONLY public.operaciones DROP CONSTRAINT fk_broker;
       public          postgres    false    2712    209    202            ?
           2606    16416    detparametros fk_idpar    FK CONSTRAINT     ?   ALTER TABLE ONLY public.detparametros
    ADD CONSTRAINT fk_idpar FOREIGN KEY (idpar) REFERENCES public.parametros(idpar) NOT VALID;
 @   ALTER TABLE ONLY public.detparametros DROP CONSTRAINT fk_idpar;
       public          postgres    false    2714    202    204            ?
           2606    16511    operaciones fk_recurso    FK CONSTRAINT     ?   ALTER TABLE ONLY public.operaciones
    ADD CONSTRAINT fk_recurso FOREIGN KEY (recur) REFERENCES public.detparametros(iddetpar);
 @   ALTER TABLE ONLY public.operaciones DROP CONSTRAINT fk_recurso;
       public          postgres    false    2712    209    202            ?
           2606    16516    operaciones fk_result    FK CONSTRAINT     ?   ALTER TABLE ONLY public.operaciones
    ADD CONSTRAINT fk_result FOREIGN KEY (result) REFERENCES public.detparametros(iddetpar);
 ?   ALTER TABLE ONLY public.operaciones DROP CONSTRAINT fk_result;
       public          postgres    false    2712    209    202            !   q   x?3?4?tL.?,?????2?4???KD?s?)$?'%&gޜ6?H?K?L?+I??r:?դ@??q:????B?8?9??S!<????Lג?5? bV? ?@)S      (      x?????? ? ?      #   >   x?3?.I,)-?t-?
)?9
ř?%???\F?A?ɥE??0(??_?Z?????????? ???      %   ?   x??̱?0 ???1M{`???U]]X?\C??+????op{?+?E?N?E?T????Ҫ??A??S???q.??O??t?дMߝ???5??GXw?0p???j?A?w_??p>?Z?A??7?C*????Q+???o=?     