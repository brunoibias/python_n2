PGDMP     2                
    x            prova    13.0    13.0 	    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16404    prova    DATABASE     P   CREATE DATABASE prova WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C';
    DROP DATABASE prova;
                postgres    false                        2615    16407    music    SCHEMA        CREATE SCHEMA music;
    DROP SCHEMA music;
                postgres    false            �            1259    16408    music    TABLE     k   CREATE TABLE music.music (
    id bigint NOT NULL,
    name "char",
    author "char",
    genre "char"
);
    DROP TABLE music.music;
       music         heap    postgres    false    5            �            1259    16411    music_id_seq    SEQUENCE     �   ALTER TABLE music.music ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME music.music_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            music          postgres    false    201    5            �          0    16408    music 
   TABLE DATA           7   COPY music.music (id, name, author, genre) FROM stdin;
    music          postgres    false    201   �       �           0    0    music_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('music.music_id_seq', 1, false);
          music          postgres    false    202            �      x������ � �     