PGDMP     3    .                w         
   streethack    11.5    11.5                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false                        0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            !           1262    24674 
   streethack    DATABASE     �   CREATE DATABASE streethack WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_India.1252' LC_CTYPE = 'English_India.1252';
    DROP DATABASE streethack;
             postgres    false            �            1259    25017    skills    TABLE     �   CREATE TABLE public.skills (
    id integer NOT NULL,
    skillname character varying(255),
    createdat timestamp with time zone NOT NULL,
    updatedat timestamp with time zone NOT NULL
);
    DROP TABLE public.skills;
       public         postgres    false            �            1259    25015    skills_id_seq    SEQUENCE     �   CREATE SEQUENCE public.skills_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.skills_id_seq;
       public       postgres    false    207            "           0    0    skills_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.skills_id_seq OWNED BY public.skills.id;
            public       postgres    false    206            �
           2604    25020 	   skills id    DEFAULT     f   ALTER TABLE ONLY public.skills ALTER COLUMN id SET DEFAULT nextval('public.skills_id_seq'::regclass);
 8   ALTER TABLE public.skills ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    206    207    207                      0    25017    skills 
   TABLE DATA               E   COPY public.skills (id, skillname, createdat, updatedat) FROM stdin;
    public       postgres    false    207   �       #           0    0    skills_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.skills_id_seq', 14, true);
            public       postgres    false    206            �
           2606    25022    skills skills_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.skills
    ADD CONSTRAINT skills_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.skills DROP CONSTRAINT skills_pkey;
       public         postgres    false    207            �
           2606    25024    skills skills_skillname_key 
   CONSTRAINT     [   ALTER TABLE ONLY public.skills
    ADD CONSTRAINT skills_skillname_key UNIQUE (skillname);
 E   ALTER TABLE ONLY public.skills DROP CONSTRAINT skills_skillname_key;
       public         postgres    false    207               �   x��ӻj1�z�+\.6ɏ��R8��%H�FQdy@��F2��c�i����}΁�)�b��.�|q��8,Q.Q�GՏ�_����fT�߃F�~�g*Ζ:;P��B'�dB�������^��~�:]r-=������ڂ�:g�=�����0&g�����~�GL�rN,��W;S�x	������!��~���U�4�q��      