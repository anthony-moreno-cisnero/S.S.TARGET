PGDMP                         y           MyTradingNotes    13.2    13.2 -    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    16479    MyTradingNotes    DATABASE     t   CREATE DATABASE "MyTradingNotes" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Latin America.1252';
     DROP DATABASE "MyTradingNotes";
                postgres    false            ?            1259    16480    detparametros    TABLE     ?   CREATE TABLE public.detparametros (
    idpar integer NOT NULL,
    iddetpar integer NOT NULL,
    detparametro character varying(50) NOT NULL,
    obsdetpar character varying(100)
);
 !   DROP TABLE public.detparametros;
       public         heap    postgres    false            ?            1259    16483    detparametros_iddetpar_seq    SEQUENCE     ?   CREATE SEQUENCE public.detparametros_iddetpar_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.detparametros_iddetpar_seq;
       public          postgres    false    200            ?           0    0    detparametros_iddetpar_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.detparametros_iddetpar_seq OWNED BY public.detparametros.iddetpar;
          public          postgres    false    201            ?            1259    16485    operaciones    TABLE     2  CREATE TABLE public.operaciones (
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
       public         heap    postgres    false            ?            1259    16491    operaciones_idope_seq    SEQUENCE     ?   CREATE SEQUENCE public.operaciones_idope_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.operaciones_idope_seq;
       public          postgres    false    202            ?           0    0    operaciones_idope_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.operaciones_idope_seq OWNED BY public.operaciones.idope;
          public          postgres    false    203            ?            1259    16493 
   parametros    TABLE     ?   CREATE TABLE public.parametros (
    idpar integer NOT NULL,
    parametro character varying(50) NOT NULL,
    obspar character varying(100)
);
    DROP TABLE public.parametros;
       public         heap    postgres    false            ?            1259    16496    parametros_idpar_seq    SEQUENCE     ?   CREATE SEQUENCE public.parametros_idpar_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.parametros_idpar_seq;
       public          postgres    false    204            ?           0    0    parametros_idpar_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.parametros_idpar_seq OWNED BY public.parametros.idpar;
          public          postgres    false    205            ?            1259    16603    tasks    TABLE     ?   CREATE TABLE public.tasks (
    idtask integer NOT NULL,
    task character varying(50) NOT NULL,
    description character varying(250) NOT NULL,
    date date DEFAULT '2021-03-20 02:29:21.716534-03'::timestamp with time zone NOT NULL
);
    DROP TABLE public.tasks;
       public         heap    postgres    false            ?           0    0    TABLE tasks    COMMENT     G   COMMENT ON TABLE public.tasks IS 'data para el curso de ajax con php';
          public          postgres    false    209            ?            1259    16601    tasks_idtask_seq    SEQUENCE     ?   CREATE SEQUENCE public.tasks_idtask_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.tasks_idtask_seq;
       public          postgres    false    209            ?           0    0    tasks_idtask_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.tasks_idtask_seq OWNED BY public.tasks.idtask;
          public          postgres    false    208            ?            1259    16498    usuarios    TABLE     p  CREATE TABLE public.usuarios (
    email character varying(50) NOT NULL,
    pass character varying(50) NOT NULL,
    nom1 character varying(50) NOT NULL,
    nom2 character varying(50),
    ape1 character varying(50) NOT NULL,
    ape2 character varying(50),
    stauser integer DEFAULT 1 NOT NULL,
    iduser integer NOT NULL,
    rol integer DEFAULT 12 NOT NULL
);
    DROP TABLE public.usuarios;
       public         heap    postgres    false            ?            1259    16502    usuarios_iduser_seq    SEQUENCE     ?   CREATE SEQUENCE public.usuarios_iduser_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.usuarios_iduser_seq;
       public          postgres    false    206            ?           0    0    usuarios_iduser_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.usuarios_iduser_seq OWNED BY public.usuarios.iduser;
          public          postgres    false    207            ;           2604    16504    detparametros iddetpar    DEFAULT     ?   ALTER TABLE ONLY public.detparametros ALTER COLUMN iddetpar SET DEFAULT nextval('public.detparametros_iddetpar_seq'::regclass);
 E   ALTER TABLE public.detparametros ALTER COLUMN iddetpar DROP DEFAULT;
       public          postgres    false    201    200            <           2604    16505    operaciones idope    DEFAULT     v   ALTER TABLE ONLY public.operaciones ALTER COLUMN idope SET DEFAULT nextval('public.operaciones_idope_seq'::regclass);
 @   ALTER TABLE public.operaciones ALTER COLUMN idope DROP DEFAULT;
       public          postgres    false    203    202            =           2604    16506    parametros idpar    DEFAULT     t   ALTER TABLE ONLY public.parametros ALTER COLUMN idpar SET DEFAULT nextval('public.parametros_idpar_seq'::regclass);
 ?   ALTER TABLE public.parametros ALTER COLUMN idpar DROP DEFAULT;
       public          postgres    false    205    204            A           2604    16606    tasks idtask    DEFAULT     l   ALTER TABLE ONLY public.tasks ALTER COLUMN idtask SET DEFAULT nextval('public.tasks_idtask_seq'::regclass);
 ;   ALTER TABLE public.tasks ALTER COLUMN idtask DROP DEFAULT;
       public          postgres    false    209    208    209            ?           2604    16507    usuarios iduser    DEFAULT     r   ALTER TABLE ONLY public.usuarios ALTER COLUMN iduser SET DEFAULT nextval('public.usuarios_iduser_seq'::regclass);
 >   ALTER TABLE public.usuarios ALTER COLUMN iduser DROP DEFAULT;
       public          postgres    false    207    206            ?          0    16480    detparametros 
   TABLE DATA           Q   COPY public.detparametros (idpar, iddetpar, detparametro, obsdetpar) FROM stdin;
    public          postgres    false    200   4       ?          0    16485    operaciones 
   TABLE DATA           j   COPY public.operaciones (idope, fecope, broker, recur, result, inver, balanc, analis, iduser) FROM stdin;
    public          postgres    false    202   ?4       ?          0    16493 
   parametros 
   TABLE DATA           >   COPY public.parametros (idpar, parametro, obspar) FROM stdin;
    public          postgres    false    204   ?4       ?          0    16603    tasks 
   TABLE DATA           @   COPY public.tasks (idtask, task, description, date) FROM stdin;
    public          postgres    false    209   #5       ?          0    16498    usuarios 
   TABLE DATA           ]   COPY public.usuarios (email, pass, nom1, nom2, ape1, ape2, stauser, iduser, rol) FROM stdin;
    public          postgres    false    206   6       ?           0    0    detparametros_iddetpar_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.detparametros_iddetpar_seq', 11, true);
          public          postgres    false    201            ?           0    0    operaciones_idope_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.operaciones_idope_seq', 1, false);
          public          postgres    false    203            ?           0    0    parametros_idpar_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.parametros_idpar_seq', 3, true);
          public          postgres    false    205            ?           0    0    tasks_idtask_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.tasks_idtask_seq', 6, true);
          public          postgres    false    208            ?           0    0    usuarios_iduser_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.usuarios_iduser_seq', 2, true);
          public          postgres    false    207            D           2606    16509     detparametros detparametros_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.detparametros
    ADD CONSTRAINT detparametros_pkey PRIMARY KEY (iddetpar);
 J   ALTER TABLE ONLY public.detparametros DROP CONSTRAINT detparametros_pkey;
       public            postgres    false    200            F           2606    16511    operaciones operaciones_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.operaciones
    ADD CONSTRAINT operaciones_pkey PRIMARY KEY (idope);
 F   ALTER TABLE ONLY public.operaciones DROP CONSTRAINT operaciones_pkey;
       public            postgres    false    202            H           2606    16513    parametros parametros_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.parametros
    ADD CONSTRAINT parametros_pkey PRIMARY KEY (idpar);
 D   ALTER TABLE ONLY public.parametros DROP CONSTRAINT parametros_pkey;
       public            postgres    false    204            J           2606    16515    usuarios pk_email_iduser 
   CONSTRAINT     a   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT pk_email_iduser PRIMARY KEY (email, iduser);
 B   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT pk_email_iduser;
       public            postgres    false    206    206            L           2606    16608    tasks tasks_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.tasks
    ADD CONSTRAINT tasks_pkey PRIMARY KEY (idtask);
 :   ALTER TABLE ONLY public.tasks DROP CONSTRAINT tasks_pkey;
       public            postgres    false    209            Q           2606    16587    usuarios FK_user_detpar    FK CONSTRAINT     ?   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT "FK_user_detpar" FOREIGN KEY (rol) REFERENCES public.detparametros(iddetpar) NOT VALID;
 C   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT "FK_user_detpar";
       public          postgres    false    2884    206    200            N           2606    16516    operaciones fk_broker    FK CONSTRAINT     ?   ALTER TABLE ONLY public.operaciones
    ADD CONSTRAINT fk_broker FOREIGN KEY (broker) REFERENCES public.detparametros(iddetpar);
 ?   ALTER TABLE ONLY public.operaciones DROP CONSTRAINT fk_broker;
       public          postgres    false    200    202    2884            M           2606    16521    detparametros fk_idpar    FK CONSTRAINT     ?   ALTER TABLE ONLY public.detparametros
    ADD CONSTRAINT fk_idpar FOREIGN KEY (idpar) REFERENCES public.parametros(idpar) NOT VALID;
 @   ALTER TABLE ONLY public.detparametros DROP CONSTRAINT fk_idpar;
       public          postgres    false    2888    200    204            O           2606    16526    operaciones fk_recurso    FK CONSTRAINT     ?   ALTER TABLE ONLY public.operaciones
    ADD CONSTRAINT fk_recurso FOREIGN KEY (recur) REFERENCES public.detparametros(iddetpar);
 @   ALTER TABLE ONLY public.operaciones DROP CONSTRAINT fk_recurso;
       public          postgres    false    2884    200    202            P           2606    16531    operaciones fk_result    FK CONSTRAINT     ?   ALTER TABLE ONLY public.operaciones
    ADD CONSTRAINT fk_result FOREIGN KEY (result) REFERENCES public.detparametros(iddetpar);
 ?   ALTER TABLE ONLY public.operaciones DROP CONSTRAINT fk_result;
       public          postgres    false    2884    200    202            ?   ?   x?3?4?tL.?,?????2?4???KD?s?)$?'%&gޜ6?H?K?L?+I??r:?դ@??q:????B?8?9??S!<????Lג?5? b?1??ghqj?t_Jn&??=... g?/?      ?      x?????? ? ?      ?   P   x?3?.I,)-?t-?
)?9
ř?%???\F?A?ɥE??0(??_?Z??????e???© m
?ť?E??\1z\\\ C?=      ?   ?   x?m??N?0E?ۯ???P??cxq?fd??X????AQ?!????=???L??dK???<?A,???%???&?r?????;쇮6/??#J0~T????C?j??!?Q?EN?Փ6S?-of?"Y$?C?'É???j???ܨ|??aD~R???:?7(y?,5?u??J??8Ӛ?+"?e??[4?-??۝Hٸ???&?b#?`u?~????S۶7?p?u      ?   ?   x??ͱ?0????a??`??U]]X
\?	?5m????<?9˙???O?/?(??}c?̔?u?C???Bi?B?i?L?F?Ji%ʢ?N?????]2F?n?R?{$(??ِg
?1\
?y??8\V?a?6??gB{?{q?`g?} }:@T     