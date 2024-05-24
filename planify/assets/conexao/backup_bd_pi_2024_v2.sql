PGDMP  '                     |            PI2024    16.3    16.3 0    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16425    PI2024    DATABASE        CREATE DATABASE "PI2024" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE "PI2024";
                postgres    false            Q           1247    16488 
   privilegio    TYPE     C   CREATE TYPE public.privilegio AS ENUM (
    'User',
    'Admin'
);
    DROP TYPE public.privilegio;
       public          postgres    false            �            1259    17818    tb_agendamento    TABLE     ?  CREATE TABLE public.tb_agendamento (
    id_agend integer NOT NULL,
    clie_agend integer NOT NULL,
    serv_agend integer NOT NULL,
    func_agend integer NOT NULL,
    data_agend date NOT NULL,
    hora_agend time without time zone NOT NULL,
    dt_reg_agend timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
 "   DROP TABLE public.tb_agendamento;
       public         heap    postgres    false            �            1259    17817    tb_agendamento_id_agend_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_agendamento_id_agend_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.tb_agendamento_id_agend_seq;
       public          postgres    false    224            �           0    0    tb_agendamento_id_agend_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.tb_agendamento_id_agend_seq OWNED BY public.tb_agendamento.id_agend;
          public          postgres    false    223            �            1259    17754 	   tb_pessoa    TABLE     R  CREATE TABLE public.tb_pessoa (
    id_pessoa integer NOT NULL,
    nome_pessoa character varying(50) NOT NULL,
    sobrenome_pessoa character varying(50) NOT NULL,
    fone_pessoa character varying(16) NOT NULL,
    email_pessoa character varying(100) NOT NULL,
    dt_reg_pessoa timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.tb_pessoa;
       public         heap    postgres    false            �            1259    17774    tb_clientes    TABLE     �   CREATE TABLE public.tb_clientes (
    id_clie integer NOT NULL,
    dt_mat_clie timestamp without time zone DEFAULT CURRENT_TIMESTAMP
)
INHERITS (public.tb_pessoa);
    DROP TABLE public.tb_clientes;
       public         heap    postgres    false    216            �            1259    17773    tb_clientes_id_clie_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_clientes_id_clie_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.tb_clientes_id_clie_seq;
       public          postgres    false    220            �           0    0    tb_clientes_id_clie_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.tb_clientes_id_clie_seq OWNED BY public.tb_clientes.id_clie;
          public          postgres    false    219            �            1259    17764    tb_funcionarios    TABLE       CREATE TABLE public.tb_funcionarios (
    id_func integer NOT NULL,
    cargo_func character varying(50) NOT NULL,
    funcao_func character varying(50) NOT NULL,
    dt_mat_func timestamp without time zone DEFAULT CURRENT_TIMESTAMP
)
INHERITS (public.tb_pessoa);
 #   DROP TABLE public.tb_funcionarios;
       public         heap    postgres    false    216            �            1259    17763    tb_funcionarios_id_func_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_funcionarios_id_func_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.tb_funcionarios_id_func_seq;
       public          postgres    false    218            �           0    0    tb_funcionarios_id_func_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.tb_funcionarios_id_func_seq OWNED BY public.tb_funcionarios.id_func;
          public          postgres    false    217            �            1259    17753    tb_pessoa_id_pessoa_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_pessoa_id_pessoa_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.tb_pessoa_id_pessoa_seq;
       public          postgres    false    216            �           0    0    tb_pessoa_id_pessoa_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.tb_pessoa_id_pessoa_seq OWNED BY public.tb_pessoa.id_pessoa;
          public          postgres    false    215            �            1259    17784    tb_servicos    TABLE     �   CREATE TABLE public.tb_servicos (
    id_serv integer NOT NULL,
    atv_serv character varying(50) NOT NULL,
    tempo_serv integer NOT NULL,
    dt_mat_serv timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    preco_serv numeric(10,2) NOT NULL
);
    DROP TABLE public.tb_servicos;
       public         heap    postgres    false            �            1259    17783    tb_servicos_id_serv_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_servicos_id_serv_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.tb_servicos_id_serv_seq;
       public          postgres    false    222            �           0    0    tb_servicos_id_serv_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.tb_servicos_id_serv_seq OWNED BY public.tb_servicos.id_serv;
          public          postgres    false    221            =           2604    17821    tb_agendamento id_agend    DEFAULT     �   ALTER TABLE ONLY public.tb_agendamento ALTER COLUMN id_agend SET DEFAULT nextval('public.tb_agendamento_id_agend_seq'::regclass);
 F   ALTER TABLE public.tb_agendamento ALTER COLUMN id_agend DROP DEFAULT;
       public          postgres    false    224    223    224            7           2604    17777    tb_clientes id_pessoa    DEFAULT     |   ALTER TABLE ONLY public.tb_clientes ALTER COLUMN id_pessoa SET DEFAULT nextval('public.tb_pessoa_id_pessoa_seq'::regclass);
 D   ALTER TABLE public.tb_clientes ALTER COLUMN id_pessoa DROP DEFAULT;
       public          postgres    false    220    215            8           2604    17778    tb_clientes dt_reg_pessoa    DEFAULT     ^   ALTER TABLE ONLY public.tb_clientes ALTER COLUMN dt_reg_pessoa SET DEFAULT CURRENT_TIMESTAMP;
 H   ALTER TABLE public.tb_clientes ALTER COLUMN dt_reg_pessoa DROP DEFAULT;
       public          postgres    false    220            9           2604    17779    tb_clientes id_clie    DEFAULT     z   ALTER TABLE ONLY public.tb_clientes ALTER COLUMN id_clie SET DEFAULT nextval('public.tb_clientes_id_clie_seq'::regclass);
 B   ALTER TABLE public.tb_clientes ALTER COLUMN id_clie DROP DEFAULT;
       public          postgres    false    219    220    220            3           2604    17767    tb_funcionarios id_pessoa    DEFAULT     �   ALTER TABLE ONLY public.tb_funcionarios ALTER COLUMN id_pessoa SET DEFAULT nextval('public.tb_pessoa_id_pessoa_seq'::regclass);
 H   ALTER TABLE public.tb_funcionarios ALTER COLUMN id_pessoa DROP DEFAULT;
       public          postgres    false    218    215            4           2604    17768    tb_funcionarios dt_reg_pessoa    DEFAULT     b   ALTER TABLE ONLY public.tb_funcionarios ALTER COLUMN dt_reg_pessoa SET DEFAULT CURRENT_TIMESTAMP;
 L   ALTER TABLE public.tb_funcionarios ALTER COLUMN dt_reg_pessoa DROP DEFAULT;
       public          postgres    false    218            5           2604    17769    tb_funcionarios id_func    DEFAULT     �   ALTER TABLE ONLY public.tb_funcionarios ALTER COLUMN id_func SET DEFAULT nextval('public.tb_funcionarios_id_func_seq'::regclass);
 F   ALTER TABLE public.tb_funcionarios ALTER COLUMN id_func DROP DEFAULT;
       public          postgres    false    218    217    218            1           2604    17757    tb_pessoa id_pessoa    DEFAULT     z   ALTER TABLE ONLY public.tb_pessoa ALTER COLUMN id_pessoa SET DEFAULT nextval('public.tb_pessoa_id_pessoa_seq'::regclass);
 B   ALTER TABLE public.tb_pessoa ALTER COLUMN id_pessoa DROP DEFAULT;
       public          postgres    false    215    216    216            ;           2604    17787    tb_servicos id_serv    DEFAULT     z   ALTER TABLE ONLY public.tb_servicos ALTER COLUMN id_serv SET DEFAULT nextval('public.tb_servicos_id_serv_seq'::regclass);
 B   ALTER TABLE public.tb_servicos ALTER COLUMN id_serv DROP DEFAULT;
       public          postgres    false    221    222    222            �          0    17818    tb_agendamento 
   TABLE DATA           |   COPY public.tb_agendamento (id_agend, clie_agend, serv_agend, func_agend, data_agend, hora_agend, dt_reg_agend) FROM stdin;
    public          postgres    false    224   �;       �          0    17774    tb_clientes 
   TABLE DATA           �   COPY public.tb_clientes (id_pessoa, nome_pessoa, sobrenome_pessoa, fone_pessoa, email_pessoa, dt_reg_pessoa, id_clie, dt_mat_clie) FROM stdin;
    public          postgres    false    220    <       �          0    17764    tb_funcionarios 
   TABLE DATA           �   COPY public.tb_funcionarios (id_pessoa, nome_pessoa, sobrenome_pessoa, fone_pessoa, email_pessoa, dt_reg_pessoa, id_func, cargo_func, funcao_func, dt_mat_func) FROM stdin;
    public          postgres    false    218   �<       �          0    17754 	   tb_pessoa 
   TABLE DATA           w   COPY public.tb_pessoa (id_pessoa, nome_pessoa, sobrenome_pessoa, fone_pessoa, email_pessoa, dt_reg_pessoa) FROM stdin;
    public          postgres    false    216   �=       �          0    17784    tb_servicos 
   TABLE DATA           ]   COPY public.tb_servicos (id_serv, atv_serv, tempo_serv, dt_mat_serv, preco_serv) FROM stdin;
    public          postgres    false    222   �=       �           0    0    tb_agendamento_id_agend_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.tb_agendamento_id_agend_seq', 2, true);
          public          postgres    false    223            �           0    0    tb_clientes_id_clie_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.tb_clientes_id_clie_seq', 2, true);
          public          postgres    false    219            �           0    0    tb_funcionarios_id_func_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.tb_funcionarios_id_func_seq', 3, true);
          public          postgres    false    217            �           0    0    tb_pessoa_id_pessoa_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.tb_pessoa_id_pessoa_seq', 5, true);
          public          postgres    false    215            �           0    0    tb_servicos_id_serv_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.tb_servicos_id_serv_seq', 13, true);
          public          postgres    false    221            J           2606    17824 "   tb_agendamento tb_agendamento_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.tb_agendamento
    ADD CONSTRAINT tb_agendamento_pkey PRIMARY KEY (id_agend);
 L   ALTER TABLE ONLY public.tb_agendamento DROP CONSTRAINT tb_agendamento_pkey;
       public            postgres    false    224            F           2606    17782    tb_clientes tb_clientes_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.tb_clientes
    ADD CONSTRAINT tb_clientes_pkey PRIMARY KEY (id_clie);
 F   ALTER TABLE ONLY public.tb_clientes DROP CONSTRAINT tb_clientes_pkey;
       public            postgres    false    220            D           2606    17772 $   tb_funcionarios tb_funcionarios_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.tb_funcionarios
    ADD CONSTRAINT tb_funcionarios_pkey PRIMARY KEY (id_func);
 N   ALTER TABLE ONLY public.tb_funcionarios DROP CONSTRAINT tb_funcionarios_pkey;
       public            postgres    false    218            @           2606    17762 $   tb_pessoa tb_pessoa_email_pessoa_key 
   CONSTRAINT     g   ALTER TABLE ONLY public.tb_pessoa
    ADD CONSTRAINT tb_pessoa_email_pessoa_key UNIQUE (email_pessoa);
 N   ALTER TABLE ONLY public.tb_pessoa DROP CONSTRAINT tb_pessoa_email_pessoa_key;
       public            postgres    false    216            B           2606    17760    tb_pessoa tb_pessoa_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.tb_pessoa
    ADD CONSTRAINT tb_pessoa_pkey PRIMARY KEY (id_pessoa);
 B   ALTER TABLE ONLY public.tb_pessoa DROP CONSTRAINT tb_pessoa_pkey;
       public            postgres    false    216            H           2606    17790    tb_servicos tb_servicos_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.tb_servicos
    ADD CONSTRAINT tb_servicos_pkey PRIMARY KEY (id_serv);
 F   ALTER TABLE ONLY public.tb_servicos DROP CONSTRAINT tb_servicos_pkey;
       public            postgres    false    222            K           2606    17825 -   tb_agendamento tb_agendamento_clie_agend_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tb_agendamento
    ADD CONSTRAINT tb_agendamento_clie_agend_fkey FOREIGN KEY (clie_agend) REFERENCES public.tb_clientes(id_clie);
 W   ALTER TABLE ONLY public.tb_agendamento DROP CONSTRAINT tb_agendamento_clie_agend_fkey;
       public          postgres    false    220    224    4678            L           2606    17835 -   tb_agendamento tb_agendamento_func_agend_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tb_agendamento
    ADD CONSTRAINT tb_agendamento_func_agend_fkey FOREIGN KEY (func_agend) REFERENCES public.tb_funcionarios(id_func);
 W   ALTER TABLE ONLY public.tb_agendamento DROP CONSTRAINT tb_agendamento_func_agend_fkey;
       public          postgres    false    224    218    4676            M           2606    17830 -   tb_agendamento tb_agendamento_serv_agend_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tb_agendamento
    ADD CONSTRAINT tb_agendamento_serv_agend_fkey FOREIGN KEY (serv_agend) REFERENCES public.tb_servicos(id_serv);
 W   ALTER TABLE ONLY public.tb_agendamento DROP CONSTRAINT tb_agendamento_serv_agend_fkey;
       public          postgres    false    222    4680    224            �   I   x�u˱�0D�:��b�ώc<��%B��͗��D0&�d[�h����ݑ��gQ�e�˪�
�˥"r�.      �   �   x�}�1�  ��s��u�>�
L�����l�4b�����g��s|�s���ip�'''6{C,��O��5�7 EV*�d���`=m�L�;(�����F}�~�c���f��V����W��?4Y7c      �   �   x����J�0Eד��R��4iӮ|���u3M�Gi�������c�!HA������p5<��'�kL���k�ۃ+JgFV�%��w�D*p&3�����R�:/jW*c�J��ǆ��p?"�8�(������PbI��'ni&<��S\V�_���ʕЩ3O��V�6S�k�-x�@C��_��8S�Ǝ��%�)���A��@#����A�wk���駰7�5u�7�3����7%��46�N      �      x������ � �      �   �   x���1�0��9E.��q�R�A'&V���*��S��)b����-�1�N^��yp>�#?Ǘ����L��"#զC�,��6-��vՇp�0��B��(#���8q�{N�"R6#�Z��1y73h[R�Ep�C�0:��%���7n���Mn|��o�Q�     