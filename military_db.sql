--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3
-- Dumped by pg_dump version 16.3

-- Started on 2024-05-21 21:54:40

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
-- TOC entry 215 (class 1259 OID 16399)
-- Name: military_office; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.military_office (
    personal_number integer NOT NULL,
    first_name character varying NOT NULL,
    last_name character varying NOT NULL,
    midle_name character varying NOT NULL,
    date_birthday date NOT NULL,
    adress_registration character varying NOT NULL,
    education character varying NOT NULL,
    contact_number real,
    military_destination integer,
    date_departure date,
    category_health character varying NOT NULL
);


ALTER TABLE public.military_office OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16412)
-- Name: military_unit; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.military_unit (
    military_destination integer NOT NULL,
    military_name character varying NOT NULL,
    military_location character varying NOT NULL,
    mail_index integer NOT NULL
);


ALTER TABLE public.military_unit OWNER TO postgres;

--
-- TOC entry 4785 (class 0 OID 16399)
-- Dependencies: 215
-- Data for Name: military_office; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.military_office (personal_number, first_name, last_name, midle_name, date_birthday, adress_registration, education, contact_number, military_destination, date_departure, category_health) FROM stdin;
100100	Алексей	Иванов	Петрович	2000-01-15	Москва, ул. Ленина, д. 1	Бакалавриат	7.911e+10	12345	2024-06-01	A
100101	Петр	Сидоров	Иванович	1995-05-20	Москва, ул. Пушкина, д. 2	Магистратура	7.911e+10	23456	2024-06-02	B
100102	Сергей	Кузнецов	Алексеевич	1988-12-05	Москва, ул. Мира, д. 3	Среднее общее	7.911e+10	\N	\N	D
100103	Иван	Попов	Сергеевич	1999-07-22	Москва, ул. Новая, д. 4	Среднее профессиональное	7.911e+10	34567	2024-06-03	C
100104	Николай	Васильев	Николаевич	1994-03-15	Москва, ул. Старовая, д. 5	Аспирантура	7.911e+10	45678	2024-06-04	A
100105	Дмитрий	Зайцев	Дмитриевич	1992-08-08	Москва, ул. Садовая, д. 6	Специалитет	7.911022e+10	56789	2024-06-05	B
100106	Василий	Смирнов	Андреевич	1986-11-11	Москва, ул. Полевая, д. 7	Магистратура	7.91102e+10	\N	\N	E
100107	Андрей	Морозов	Викторович	1997-04-18	Москва, ул. Зеленая, д. 8	Бакалавриат	7.911044e+10	67890	2024-06-06	A
100108	Илья	Новиков	Геннадьевич	1993-02-22	Москва, ул. Центральная, д. 9	Среднее профессиональное	7.911e+10	78901	2024-06-07	B
100109	Юрий	Медведев	Артемович	1990-10-10	Москва, ул. Южная, д. 10	Среднее общее	7.911e+10	\N	\N	D
100110	Олег	Романов	Борисович	1985-05-25	Москва, ул. Северная, д. 11	Аспирантура	7.911e+10	89012	2024-06-08	C
100111	Антон	Федоров	Леонидович	1998-09-09	Москва, ул. Западная, д. 12	Специалитет	7.911e+10	90123	2024-06-09	A
100112	Владимир	Михайлов	Васильевич	1991-04-04	Москва, ул. Восточная, д. 13	Магистратура	7.911e+10	12321	2024-06-10	B
100113	Геннадий	Алексеев	Евгеньевич	1987-07-07	Москва, ул. Красная, д. 14	Бакалавриат	7.911e+10	23432	2024-06-11	A
100114	Виктор	Титов	Павлович	1996-06-06	Москва, ул. Тверская, д. 15	Среднее профессиональное	7.911e+10	34543	2024-06-12	C
100115	Александр	Гусев	Максимович	1995-03-03	Москва, ул. Арбат, д. 16	Специалитет	7.911e+10	45654	2024-06-13	B
100116	Константин	Ефимов	Петрович	1994-02-02	Москва, ул. Новый Арбат, д. 17	Магистратура	7.911e+10	56765	2024-06-14	A
100117	Леонид	Петухов	Иванович	1993-01-01	Москва, ул. Пречистенка, д. 18	Аспирантура	7.911e+10	67876	2024-06-15	B
100118	Егор	Савин	Сергеевич	1992-12-12	Москва, ул. Большая Полянка, д. 19	Среднее общее	7.911e+10	\N	\N	E
100119	Максим	Орлов	Андреевич	1991-11-11	Москва, ул. Малая Полянка, д. 20	Бакалавриат	7.911e+10	78987	2024-06-16	A
100120	Никита	Лебедев	Дмитриевич	1990-10-10	Москва, ул. Поварская, д. 21	Среднее профессиональное	7.911e+10	89098	2024-06-17	B
400400	Станислав	Коновалов	Александрович	1994-01-10	Москва, ул. Тверская, д. 40	Бакалавриат	7.592626e+10	89087	2024-06-26	C
410410	Виталий	Лазарев	Васильевич	1993-02-20	Москва, ул. Арбат, д. 41	Специалитет	7.105579e+10	90198	2024-06-27	A
420420	Евгений	Семёнов	Дмитриевич	1992-03-30	Москва, ул. Поварская, д. 42	Магистратура	7.05407e+09	12329	2024-06-28	B
430430	Артём	Фомичев	Иванович	1991-04-25	Москва, ул. Мира, д. 43	Аспирантура	7.2467635e+09	23439	2024-06-29	A
440440	Никита	Волков	Петрович	1990-05-05	Москва, ул. Ленина, д. 44	Среднее общее	7.996867e+11	\N	\N	E
450450	Георгий	Васильев	Андреевич	1989-06-15	Москва, ул. Пушкина, д. 45	Среднее профессиональное	7.117741e+09	34566	2024-06-30	C
460460	Валентин	Соколов	Николаевич	1988-07-20	Москва, ул. Новая, д. 46	Бакалавриат	7.7593395e+10	45677	2024-06-01	B
470470	Александр	Куликов	Сергеевич	1987-08-25	Москва, ул. Старовая, д. 47	Магистратура	7.281677e+09	56788	2024-06-02	A
480480	Иван	Петров	Иванович	1986-09-10	Москва, ул. Зеленая, д. 48	Аспирантура	7.656465e+09	67899	2024-06-03	B
490490	Максим	Сергеев	Александрович	1985-10-05	Москва, ул. Центральная, д. 49	Среднее общее	7.915723e+10	\N	\N	D
500500	Дмитрий	Федоров	Петрович	1999-11-30	Москва, ул. Южная, д. 50	Среднее профессиональное	7.914123e+10	78909	2024-06-04	C
203404	Кирил	Терентьев	Александрович	2000-02-10	г. Москва ул. Прибалтова	Бакалавриат	7.999131e+10	12345	2024-05-24	A
25512	Александр	Алексов	Алексеевич	2000-10-10	г. Москва ул. Лионова	Бакалавриат	7.999111e+10	12345	2024-05-10	B
234234	Кирил	Терентьев	Александрович	1999-11-11	г. Москва ул. Лионова	Бакалвр	7.999888e+10	12345	2024-05-02	B
525252	Микроб	Бабулех	Асетрович	2002-02-10	г. Москва ул. Большая Якиманка	Бакалавриат	7.9911e+10	66789	2024-05-22	A
252525	Кабан	Борзов	Борзович	2002-02-10	г. Москва ул. Приорова	Магистратура	7.999526e+10	67876	2024-05-24	A
252523	Куруп	Курупов	Курпуч	2003-10-10	г. Москва ул. Прибалтова	Среднее общее	7.999888e+10	2511	2024-05-24	B
\.


--
-- TOC entry 4786 (class 0 OID 16412)
-- Dependencies: 216
-- Data for Name: military_unit; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.military_unit (military_destination, military_name, military_location, mail_index) FROM stdin;
12345	Гвардейская танковая дивизия	Москва	1234567
23456	Мотострелковая бригада	Санкт-Петербург	2345678
34567	Воздушно-десантная дивизия	Нижний Новгород	3456789
45678	Артиллерийский полк	Екатеринбург	4567890
56789	Морская пехота	Владивосток	5678901
67890	Инженерные войска	Ростов-на-Дону	6789012
78901	Связисты	Казань	7890123
89012	Химические войска	Самара	8901234
90123	Разведывательный батальон	Уфа	9012345
12321	Саперный батальон	Новосибирск	1122334
23432	Ракетные войска	Краснодар	2233445
34543	Авиационный полк	Саратов	3344556
45654	Пограничная служба	Хабаровск	4455667
56765	Железнодорожные войска	Пермь	5566778
67876	Автомобильные войска	Воронеж	6677889
78987	Военная полиция	Челябинск	7788990
89098	Космические войска	Омск	8899001
90109	Электронная разведка	Иркутск	9900112
12320	Специальные силы	Ульяновск	1011121
23421	Медицинская служба	Тула	2122232
34532	Связи	Курск	3233343
45643	Радиотехнические войска	Волгоград	4344454
56743	Логистические войска	Астрахань	5455565
67854	Тыловое обеспечение	Тамбов	6566676
78965	Учебный полк	Тверь	7677787
89076	Комендантская служба	Барнаул	8788898
90187	Штурмовая бригада	Калининград	9899009
11234	Морская авиация	Архангельск	1001101
22345	Оперативная группа	Мурманск	2002202
33456	Командование ВДВ	Владимир	3003303
44567	Гвардейская дивизия	Ярославль	4004404
55678	Медицинская рота	Кострома	5005505
66789	Грузовой батальон	Рязань	6006606
77890	Транспортный батальон	Псков	7007707
88901	Связная рота	Смоленск	8008808
99012	Отряд спецназа	Петрозаводск	9009909
10123	Офицерская школа	Вологда	1010101
20234	Образовательный центр	Орёл	2020202
30345	Общевойсковая армия	Брянск	3030303
40456	Северный флот	Северодвинск	4040404
50567	Южный округ	Ставрополь	5050505
60678	Западный округ	Белгород	6060606
70789	Центральный округ	Липецк	7070707
80890	Восточный округ	Калуга	8080808
90901	ПВО	Магадан	9090909
10101	ВВС	Якутск	1010100
20202	ВДВ	Новокузнецк	2020201
30303	Космические войска	Красноярск	3030302
40404	Стратегические силы	Кемерово	4040403
50505	Военная контрразведка	Томск	5050504
60606	Гвардейская армия	Чита	6060605
70707	Ракетные войска	Благовещенск	7070706
80808	Артиллерийские части	Южно-Сахалинск	8080807
90909	Воздушные силы	Ханты-Мансийск	9090908
2511	Батальон мух	г. Выборг	5651320
\.


--
-- TOC entry 4638 (class 2606 OID 16405)
-- Name: military_office military_office_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.military_office
    ADD CONSTRAINT military_office_pkey PRIMARY KEY (personal_number);


--
-- TOC entry 4640 (class 2606 OID 16418)
-- Name: military_unit military_unit_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.military_unit
    ADD CONSTRAINT military_unit_pkey PRIMARY KEY (military_destination);


--
-- TOC entry 4641 (class 2606 OID 16419)
-- Name: military_office fk_military; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.military_office
    ADD CONSTRAINT fk_military FOREIGN KEY (military_destination) REFERENCES public.military_unit(military_destination) NOT VALID;


-- Completed on 2024-05-21 21:54:40

--
-- PostgreSQL database dump complete
--
