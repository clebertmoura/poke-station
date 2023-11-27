--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1
-- Dumped by pg_dump version 16.0

-- Started on 2023-11-27 18:23:31 UTC

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
-- TOC entry 4188 (class 0 OID 25241)
-- Dependencies: 256
-- Data for Name: admin_event_entity; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.admin_event_entity (id, admin_event_time, realm_id, operation_type, auth_realm_id, auth_client_id, auth_user_id, ip_address, resource_path, representation, error, resource_type) FROM stdin;
\.


--
-- TOC entry 4217 (class 0 OID 25684)
-- Dependencies: 285
-- Data for Name: associated_policy; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.associated_policy (policy_id, associated_policy_id) FROM stdin;
fa9a99da-a577-41eb-a653-f9da6073132c	f8c2bd82-ca94-4b53-8099-b3e12fd33539
\.


--
-- TOC entry 4191 (class 0 OID 25256)
-- Dependencies: 259
-- Data for Name: authentication_execution; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.authentication_execution (id, alias, authenticator, realm_id, flow_id, requirement, priority, authenticator_flow, auth_flow_id, auth_config) FROM stdin;
a6109938-4513-4aaa-880d-3d85775e6856	\N	auth-cookie	675d35ab-979e-4d81-b10c-f03f25d56da7	1cde504e-1fdc-43f1-bbd4-38b85efc27fe	2	10	f	\N	\N
c5bfc85f-e082-4f83-abdb-3ecac5c8b28d	\N	auth-spnego	675d35ab-979e-4d81-b10c-f03f25d56da7	1cde504e-1fdc-43f1-bbd4-38b85efc27fe	3	20	f	\N	\N
e33940d6-3685-4979-98a6-779b296b6ae6	\N	identity-provider-redirector	675d35ab-979e-4d81-b10c-f03f25d56da7	1cde504e-1fdc-43f1-bbd4-38b85efc27fe	2	25	f	\N	\N
3d4054ed-db62-4f2e-b598-bf62b3db1465	\N	\N	675d35ab-979e-4d81-b10c-f03f25d56da7	1cde504e-1fdc-43f1-bbd4-38b85efc27fe	2	30	t	177fc7d5-150f-41a9-b8c6-4e485db0478d	\N
a41a469c-bdf5-455c-899b-488a2e1661fc	\N	auth-username-password-form	675d35ab-979e-4d81-b10c-f03f25d56da7	177fc7d5-150f-41a9-b8c6-4e485db0478d	0	10	f	\N	\N
74be19f1-c101-4080-ba2d-5123a3f7c7de	\N	\N	675d35ab-979e-4d81-b10c-f03f25d56da7	177fc7d5-150f-41a9-b8c6-4e485db0478d	1	20	t	5142e8ff-b322-4bde-9674-1c3532d4c52b	\N
2a3349fc-b510-4563-8a13-f23b487c8bf0	\N	conditional-user-configured	675d35ab-979e-4d81-b10c-f03f25d56da7	5142e8ff-b322-4bde-9674-1c3532d4c52b	0	10	f	\N	\N
5693887f-b850-47a0-a5ea-c121c2b048d7	\N	auth-otp-form	675d35ab-979e-4d81-b10c-f03f25d56da7	5142e8ff-b322-4bde-9674-1c3532d4c52b	0	20	f	\N	\N
716a92aa-26e5-466c-a3b3-d917baab8d61	\N	direct-grant-validate-username	675d35ab-979e-4d81-b10c-f03f25d56da7	3a6db526-776a-408f-8dd3-b99ff90d6ef3	0	10	f	\N	\N
5e8becda-4004-4d57-b02d-d0870826d906	\N	direct-grant-validate-password	675d35ab-979e-4d81-b10c-f03f25d56da7	3a6db526-776a-408f-8dd3-b99ff90d6ef3	0	20	f	\N	\N
1db3d134-f58e-423f-9205-6178b9f3f1dc	\N	\N	675d35ab-979e-4d81-b10c-f03f25d56da7	3a6db526-776a-408f-8dd3-b99ff90d6ef3	1	30	t	c4475a25-e44d-4ac7-8d62-4e38b91d1316	\N
48d1b6ab-e7db-4ac4-9ce6-18a24bc30250	\N	conditional-user-configured	675d35ab-979e-4d81-b10c-f03f25d56da7	c4475a25-e44d-4ac7-8d62-4e38b91d1316	0	10	f	\N	\N
08bd8e5f-f301-453b-a552-6a5074e7a583	\N	direct-grant-validate-otp	675d35ab-979e-4d81-b10c-f03f25d56da7	c4475a25-e44d-4ac7-8d62-4e38b91d1316	0	20	f	\N	\N
7927620b-3d64-41fc-a72b-2747601e062f	\N	registration-page-form	675d35ab-979e-4d81-b10c-f03f25d56da7	7d08dc13-d5c1-4201-afb3-ea5b9a22b003	0	10	t	9c22ab47-7049-44c4-8618-5fa7b2cf44df	\N
67d5d6be-ce69-4888-9538-5fc7c13435c1	\N	registration-user-creation	675d35ab-979e-4d81-b10c-f03f25d56da7	9c22ab47-7049-44c4-8618-5fa7b2cf44df	0	20	f	\N	\N
5023e457-c700-4e8c-8e26-f76dd7ea0bf5	\N	registration-profile-action	675d35ab-979e-4d81-b10c-f03f25d56da7	9c22ab47-7049-44c4-8618-5fa7b2cf44df	0	40	f	\N	\N
0ef6924b-2150-463a-b078-29ad89f11898	\N	registration-password-action	675d35ab-979e-4d81-b10c-f03f25d56da7	9c22ab47-7049-44c4-8618-5fa7b2cf44df	0	50	f	\N	\N
64104e00-db5f-493c-a246-74aa57435830	\N	registration-recaptcha-action	675d35ab-979e-4d81-b10c-f03f25d56da7	9c22ab47-7049-44c4-8618-5fa7b2cf44df	3	60	f	\N	\N
368b3e35-9ac5-4f72-9741-124aaec6feb0	\N	registration-terms-and-conditions	675d35ab-979e-4d81-b10c-f03f25d56da7	9c22ab47-7049-44c4-8618-5fa7b2cf44df	3	70	f	\N	\N
02fa124d-2638-47b3-bf3c-530a7bfe7db6	\N	reset-credentials-choose-user	675d35ab-979e-4d81-b10c-f03f25d56da7	104cd79f-1c3c-4da2-b9f7-5885ba83b37f	0	10	f	\N	\N
f7f32512-5d5a-4a0d-8967-67fe6fde2537	\N	reset-credential-email	675d35ab-979e-4d81-b10c-f03f25d56da7	104cd79f-1c3c-4da2-b9f7-5885ba83b37f	0	20	f	\N	\N
1bc84a10-9157-485a-9b02-8f8a31c63386	\N	reset-password	675d35ab-979e-4d81-b10c-f03f25d56da7	104cd79f-1c3c-4da2-b9f7-5885ba83b37f	0	30	f	\N	\N
a63e0f64-d567-4549-9785-0c3f91a4169e	\N	\N	675d35ab-979e-4d81-b10c-f03f25d56da7	104cd79f-1c3c-4da2-b9f7-5885ba83b37f	1	40	t	53158c8c-0879-45ac-ae5b-91250dbc7455	\N
032ddbc5-db33-420b-8cf5-e558a3cced62	\N	conditional-user-configured	675d35ab-979e-4d81-b10c-f03f25d56da7	53158c8c-0879-45ac-ae5b-91250dbc7455	0	10	f	\N	\N
5d84a272-09b6-4b0a-9ae7-8eeafba4e842	\N	reset-otp	675d35ab-979e-4d81-b10c-f03f25d56da7	53158c8c-0879-45ac-ae5b-91250dbc7455	0	20	f	\N	\N
c85f6956-2118-473e-9f25-1c6aaf1cea0e	\N	client-secret	675d35ab-979e-4d81-b10c-f03f25d56da7	664fbb7e-36a4-4685-a094-bca15ab90a3d	2	10	f	\N	\N
d0a6164c-3856-45b4-90ff-f09f989e1eff	\N	client-jwt	675d35ab-979e-4d81-b10c-f03f25d56da7	664fbb7e-36a4-4685-a094-bca15ab90a3d	2	20	f	\N	\N
b870657c-dbf3-459d-8b24-b394bc00147b	\N	client-secret-jwt	675d35ab-979e-4d81-b10c-f03f25d56da7	664fbb7e-36a4-4685-a094-bca15ab90a3d	2	30	f	\N	\N
f3f3d4e0-8536-4760-98a4-c7b6aec419a3	\N	client-x509	675d35ab-979e-4d81-b10c-f03f25d56da7	664fbb7e-36a4-4685-a094-bca15ab90a3d	2	40	f	\N	\N
8206e6f7-8b9a-45d7-b181-c7098b8f7a63	\N	idp-review-profile	675d35ab-979e-4d81-b10c-f03f25d56da7	5fc989b1-f7e4-4a0e-b655-a3de0550891f	0	10	f	\N	f7ff4164-e493-4bd5-bb07-4715c9c735d2
072f2a69-52d5-4cf1-a4a8-ab6eec306d80	\N	\N	675d35ab-979e-4d81-b10c-f03f25d56da7	5fc989b1-f7e4-4a0e-b655-a3de0550891f	0	20	t	1c965191-29f3-497e-8010-802a7f504b09	\N
07635b92-21f6-4a48-bf1b-d4060ad7cbe5	\N	idp-create-user-if-unique	675d35ab-979e-4d81-b10c-f03f25d56da7	1c965191-29f3-497e-8010-802a7f504b09	2	10	f	\N	6fd3a4fd-30c5-4228-9561-eff1a6d5f59e
6328781e-f9db-4589-9cc4-9df6886f8852	\N	\N	675d35ab-979e-4d81-b10c-f03f25d56da7	1c965191-29f3-497e-8010-802a7f504b09	2	20	t	f3542460-847f-40e3-93d1-3361597bfeed	\N
b923620e-28b4-42e7-8506-21209b61cdfe	\N	idp-confirm-link	675d35ab-979e-4d81-b10c-f03f25d56da7	f3542460-847f-40e3-93d1-3361597bfeed	0	10	f	\N	\N
504c3d86-3bc3-436b-958b-8890155a4356	\N	\N	675d35ab-979e-4d81-b10c-f03f25d56da7	f3542460-847f-40e3-93d1-3361597bfeed	0	20	t	0053d480-776f-4ec1-946c-9ee7a6861a30	\N
e3afe9d8-0fea-4872-8f35-fa50068b65f9	\N	idp-email-verification	675d35ab-979e-4d81-b10c-f03f25d56da7	0053d480-776f-4ec1-946c-9ee7a6861a30	2	10	f	\N	\N
a514f925-78c2-4e74-9763-9bcc420de39c	\N	\N	675d35ab-979e-4d81-b10c-f03f25d56da7	0053d480-776f-4ec1-946c-9ee7a6861a30	2	20	t	beadd2bc-f309-4ba9-89d0-f3758c795db1	\N
37dde8ef-3ef9-440b-8551-bab45fbf7b88	\N	idp-username-password-form	675d35ab-979e-4d81-b10c-f03f25d56da7	beadd2bc-f309-4ba9-89d0-f3758c795db1	0	10	f	\N	\N
92f68e9c-d2ba-4188-b6ce-ea5d1c5661be	\N	\N	675d35ab-979e-4d81-b10c-f03f25d56da7	beadd2bc-f309-4ba9-89d0-f3758c795db1	1	20	t	1d1f3985-e7c4-4c38-b491-755166305327	\N
b774a592-7378-42ba-89e3-e902a3d2aad0	\N	conditional-user-configured	675d35ab-979e-4d81-b10c-f03f25d56da7	1d1f3985-e7c4-4c38-b491-755166305327	0	10	f	\N	\N
d863aba0-ff3e-4b54-92e5-7178f683536f	\N	auth-otp-form	675d35ab-979e-4d81-b10c-f03f25d56da7	1d1f3985-e7c4-4c38-b491-755166305327	0	20	f	\N	\N
39617c06-036a-4679-8016-d14f657e6569	\N	http-basic-authenticator	675d35ab-979e-4d81-b10c-f03f25d56da7	d1f9d317-cfb0-405c-9df5-d02d034e1987	0	10	f	\N	\N
7d6e2208-e6d3-4062-8ec2-76363969e460	\N	docker-http-basic-authenticator	675d35ab-979e-4d81-b10c-f03f25d56da7	53cc7599-53ec-4056-8094-b201cb0717d4	0	10	f	\N	\N
37bd23a9-042f-48b0-8ec5-d3f1494c004a	\N	auth-cookie	7c54d901-12e8-4d3c-b1c0-87753e3330c2	55b6d2b1-b553-4f7a-ad1f-89f6a4ae5129	2	10	f	\N	\N
09b7670f-4e3e-458b-aa13-ce9e16d25191	\N	auth-spnego	7c54d901-12e8-4d3c-b1c0-87753e3330c2	55b6d2b1-b553-4f7a-ad1f-89f6a4ae5129	3	20	f	\N	\N
02f4ea61-96ac-48ab-b479-fc1a1805d7e4	\N	identity-provider-redirector	7c54d901-12e8-4d3c-b1c0-87753e3330c2	55b6d2b1-b553-4f7a-ad1f-89f6a4ae5129	2	25	f	\N	\N
602ea5b2-f4b1-450e-b6c7-0ed8ab1c08b9	\N	\N	7c54d901-12e8-4d3c-b1c0-87753e3330c2	55b6d2b1-b553-4f7a-ad1f-89f6a4ae5129	2	30	t	de7ff854-0d31-42c6-af07-1e83fecb96f6	\N
d3bad59f-f79a-4bf1-ab0f-ebb3d6a339df	\N	auth-username-password-form	7c54d901-12e8-4d3c-b1c0-87753e3330c2	de7ff854-0d31-42c6-af07-1e83fecb96f6	0	10	f	\N	\N
47e99c9e-bb4e-46ef-a04c-5c5387b5b342	\N	\N	7c54d901-12e8-4d3c-b1c0-87753e3330c2	de7ff854-0d31-42c6-af07-1e83fecb96f6	1	20	t	218d10a1-9040-4d6b-9f61-b9552c5ee20d	\N
82b2efe7-6969-4044-b8e6-68f50861998a	\N	conditional-user-configured	7c54d901-12e8-4d3c-b1c0-87753e3330c2	218d10a1-9040-4d6b-9f61-b9552c5ee20d	0	10	f	\N	\N
d288b485-2d4d-41c5-8e2a-cdc504b46a22	\N	auth-otp-form	7c54d901-12e8-4d3c-b1c0-87753e3330c2	218d10a1-9040-4d6b-9f61-b9552c5ee20d	0	20	f	\N	\N
229ba4d1-9251-4676-b786-09f1e2932d23	\N	direct-grant-validate-username	7c54d901-12e8-4d3c-b1c0-87753e3330c2	3459829d-5022-45f5-be05-1d4b3529499a	0	10	f	\N	\N
1848a0b8-1c06-4a93-b0f7-8c2e0f25e893	\N	direct-grant-validate-password	7c54d901-12e8-4d3c-b1c0-87753e3330c2	3459829d-5022-45f5-be05-1d4b3529499a	0	20	f	\N	\N
cee158b3-7799-4447-be48-ca38c4bfdfa7	\N	\N	7c54d901-12e8-4d3c-b1c0-87753e3330c2	3459829d-5022-45f5-be05-1d4b3529499a	1	30	t	d8de63a9-15bf-444a-a61d-e26be953697e	\N
8da896a0-f7bd-492f-b48e-e455d404c3a7	\N	conditional-user-configured	7c54d901-12e8-4d3c-b1c0-87753e3330c2	d8de63a9-15bf-444a-a61d-e26be953697e	0	10	f	\N	\N
e83f4740-56cc-4559-809e-ac533dcc314e	\N	direct-grant-validate-otp	7c54d901-12e8-4d3c-b1c0-87753e3330c2	d8de63a9-15bf-444a-a61d-e26be953697e	0	20	f	\N	\N
28eeec5b-ab00-4718-ae8e-8b22b5aa5363	\N	registration-page-form	7c54d901-12e8-4d3c-b1c0-87753e3330c2	5100a172-c352-44a0-8412-cfb5ab31da4e	0	10	t	cbbb8522-0725-4185-a00b-cf44e7a239db	\N
622c12f6-dd26-46a6-8f4c-eb92063f76bd	\N	registration-user-creation	7c54d901-12e8-4d3c-b1c0-87753e3330c2	cbbb8522-0725-4185-a00b-cf44e7a239db	0	20	f	\N	\N
3dd68247-ac5e-4e33-95ee-3ae1c1779dc9	\N	registration-profile-action	7c54d901-12e8-4d3c-b1c0-87753e3330c2	cbbb8522-0725-4185-a00b-cf44e7a239db	0	40	f	\N	\N
339b9f7b-0d6e-4d17-81c7-094b28e9caa3	\N	registration-password-action	7c54d901-12e8-4d3c-b1c0-87753e3330c2	cbbb8522-0725-4185-a00b-cf44e7a239db	0	50	f	\N	\N
a56a8760-ece9-4fc0-9ef0-c529b68287ee	\N	registration-recaptcha-action	7c54d901-12e8-4d3c-b1c0-87753e3330c2	cbbb8522-0725-4185-a00b-cf44e7a239db	3	60	f	\N	\N
5717b797-7a83-4728-b3fc-9cdb9d39e697	\N	reset-credentials-choose-user	7c54d901-12e8-4d3c-b1c0-87753e3330c2	e5c25a79-697c-4c44-810f-92997d80a593	0	10	f	\N	\N
ba61de7b-ee1b-4164-a0f1-2c704fa3fea9	\N	reset-credential-email	7c54d901-12e8-4d3c-b1c0-87753e3330c2	e5c25a79-697c-4c44-810f-92997d80a593	0	20	f	\N	\N
ed87c23d-d096-4d80-b73e-620220ed2b15	\N	reset-password	7c54d901-12e8-4d3c-b1c0-87753e3330c2	e5c25a79-697c-4c44-810f-92997d80a593	0	30	f	\N	\N
807779a6-d22d-4d0b-8738-b0e6c0e824c3	\N	\N	7c54d901-12e8-4d3c-b1c0-87753e3330c2	e5c25a79-697c-4c44-810f-92997d80a593	1	40	t	ba95851d-dea7-464c-a82b-e40b18006a6a	\N
e37fcc4a-0ac7-4250-b78b-3f9cc34179a2	\N	conditional-user-configured	7c54d901-12e8-4d3c-b1c0-87753e3330c2	ba95851d-dea7-464c-a82b-e40b18006a6a	0	10	f	\N	\N
38de1fc3-8f53-46ed-ba1e-bea4ac7c9c2c	\N	reset-otp	7c54d901-12e8-4d3c-b1c0-87753e3330c2	ba95851d-dea7-464c-a82b-e40b18006a6a	0	20	f	\N	\N
d90a2582-2d31-45e2-880b-5992c77f8e90	\N	client-secret	7c54d901-12e8-4d3c-b1c0-87753e3330c2	e18c57d4-e2d5-4581-a054-69cc10d67593	2	10	f	\N	\N
9b0445be-4f23-4eb4-b3cf-3f041e643561	\N	client-jwt	7c54d901-12e8-4d3c-b1c0-87753e3330c2	e18c57d4-e2d5-4581-a054-69cc10d67593	2	20	f	\N	\N
804aa0cf-81ef-4333-b3d2-6e315d201e06	\N	client-secret-jwt	7c54d901-12e8-4d3c-b1c0-87753e3330c2	e18c57d4-e2d5-4581-a054-69cc10d67593	2	30	f	\N	\N
34a45820-caaa-4202-b7b1-8689295bfae6	\N	client-x509	7c54d901-12e8-4d3c-b1c0-87753e3330c2	e18c57d4-e2d5-4581-a054-69cc10d67593	2	40	f	\N	\N
8d128dc8-2167-4592-8145-0c0854fa0c29	\N	idp-review-profile	7c54d901-12e8-4d3c-b1c0-87753e3330c2	e2759965-32db-4be6-9f56-78f597065149	0	10	f	\N	a92e2500-ed13-4a94-95db-4cc2f9270a42
a1aa5cec-ae2b-4cf7-ba9b-9107ea3d5da5	\N	\N	7c54d901-12e8-4d3c-b1c0-87753e3330c2	e2759965-32db-4be6-9f56-78f597065149	0	20	t	a6a3c95c-b0df-443b-ba3f-69b5a5c5fd8e	\N
a0ef7b1d-25c9-4a3d-9e43-a348bd4e3cad	\N	idp-create-user-if-unique	7c54d901-12e8-4d3c-b1c0-87753e3330c2	a6a3c95c-b0df-443b-ba3f-69b5a5c5fd8e	2	10	f	\N	15e3701e-4f3f-4cd7-9b6d-74276ca40802
a5d49c2e-b63e-4195-973c-d0cdfb424506	\N	\N	7c54d901-12e8-4d3c-b1c0-87753e3330c2	a6a3c95c-b0df-443b-ba3f-69b5a5c5fd8e	2	20	t	304b600f-187e-4103-9516-acebce8a9aaa	\N
62183c28-f8a1-4645-8450-8d2f000c067c	\N	idp-confirm-link	7c54d901-12e8-4d3c-b1c0-87753e3330c2	304b600f-187e-4103-9516-acebce8a9aaa	0	10	f	\N	\N
7d09072d-1062-4fa9-8fc5-c73f901f8174	\N	\N	7c54d901-12e8-4d3c-b1c0-87753e3330c2	304b600f-187e-4103-9516-acebce8a9aaa	0	20	t	f9793818-96a9-45c3-aa19-098c9ad338c4	\N
977b836e-5fa1-46a0-821a-f340bb06f028	\N	idp-email-verification	7c54d901-12e8-4d3c-b1c0-87753e3330c2	f9793818-96a9-45c3-aa19-098c9ad338c4	2	10	f	\N	\N
00f6b78c-4706-4a12-81ce-05dd7dcb09a6	\N	\N	7c54d901-12e8-4d3c-b1c0-87753e3330c2	f9793818-96a9-45c3-aa19-098c9ad338c4	2	20	t	a4e2ef61-c29a-4729-bc21-7dc761f0eca2	\N
02a6e6a1-880f-43b2-ace3-ce5963107764	\N	idp-username-password-form	7c54d901-12e8-4d3c-b1c0-87753e3330c2	a4e2ef61-c29a-4729-bc21-7dc761f0eca2	0	10	f	\N	\N
21e1ab45-7003-427a-9587-907f87b6b597	\N	\N	7c54d901-12e8-4d3c-b1c0-87753e3330c2	a4e2ef61-c29a-4729-bc21-7dc761f0eca2	1	20	t	0ccb4a6f-5c99-4fe0-b48f-ac5506c2c35d	\N
bbe31ef2-546d-4173-95b7-c20c4570788a	\N	conditional-user-configured	7c54d901-12e8-4d3c-b1c0-87753e3330c2	0ccb4a6f-5c99-4fe0-b48f-ac5506c2c35d	0	10	f	\N	\N
ce9b4e48-3f19-499b-a6c9-98c75125c07c	\N	auth-otp-form	7c54d901-12e8-4d3c-b1c0-87753e3330c2	0ccb4a6f-5c99-4fe0-b48f-ac5506c2c35d	0	20	f	\N	\N
1454b9fa-934e-4f7d-91f5-ce859525ba2e	\N	http-basic-authenticator	7c54d901-12e8-4d3c-b1c0-87753e3330c2	c48ef80a-1a3d-4fcb-89b6-cfa589106fe8	0	10	f	\N	\N
faad1d84-60cf-4317-8e0f-1e44cfb180ef	\N	docker-http-basic-authenticator	7c54d901-12e8-4d3c-b1c0-87753e3330c2	4b5d59ae-c907-4678-b121-c2a114ee9918	0	10	f	\N	\N
\.


--
-- TOC entry 4190 (class 0 OID 25251)
-- Dependencies: 258
-- Data for Name: authentication_flow; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.authentication_flow (id, alias, description, realm_id, provider_id, top_level, built_in) FROM stdin;
1cde504e-1fdc-43f1-bbd4-38b85efc27fe	browser	browser based authentication	675d35ab-979e-4d81-b10c-f03f25d56da7	basic-flow	t	t
177fc7d5-150f-41a9-b8c6-4e485db0478d	forms	Username, password, otp and other auth forms.	675d35ab-979e-4d81-b10c-f03f25d56da7	basic-flow	f	t
5142e8ff-b322-4bde-9674-1c3532d4c52b	Browser - Conditional OTP	Flow to determine if the OTP is required for the authentication	675d35ab-979e-4d81-b10c-f03f25d56da7	basic-flow	f	t
3a6db526-776a-408f-8dd3-b99ff90d6ef3	direct grant	OpenID Connect Resource Owner Grant	675d35ab-979e-4d81-b10c-f03f25d56da7	basic-flow	t	t
c4475a25-e44d-4ac7-8d62-4e38b91d1316	Direct Grant - Conditional OTP	Flow to determine if the OTP is required for the authentication	675d35ab-979e-4d81-b10c-f03f25d56da7	basic-flow	f	t
7d08dc13-d5c1-4201-afb3-ea5b9a22b003	registration	registration flow	675d35ab-979e-4d81-b10c-f03f25d56da7	basic-flow	t	t
9c22ab47-7049-44c4-8618-5fa7b2cf44df	registration form	registration form	675d35ab-979e-4d81-b10c-f03f25d56da7	form-flow	f	t
104cd79f-1c3c-4da2-b9f7-5885ba83b37f	reset credentials	Reset credentials for a user if they forgot their password or something	675d35ab-979e-4d81-b10c-f03f25d56da7	basic-flow	t	t
53158c8c-0879-45ac-ae5b-91250dbc7455	Reset - Conditional OTP	Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.	675d35ab-979e-4d81-b10c-f03f25d56da7	basic-flow	f	t
664fbb7e-36a4-4685-a094-bca15ab90a3d	clients	Base authentication for clients	675d35ab-979e-4d81-b10c-f03f25d56da7	client-flow	t	t
5fc989b1-f7e4-4a0e-b655-a3de0550891f	first broker login	Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account	675d35ab-979e-4d81-b10c-f03f25d56da7	basic-flow	t	t
1c965191-29f3-497e-8010-802a7f504b09	User creation or linking	Flow for the existing/non-existing user alternatives	675d35ab-979e-4d81-b10c-f03f25d56da7	basic-flow	f	t
f3542460-847f-40e3-93d1-3361597bfeed	Handle Existing Account	Handle what to do if there is existing account with same email/username like authenticated identity provider	675d35ab-979e-4d81-b10c-f03f25d56da7	basic-flow	f	t
0053d480-776f-4ec1-946c-9ee7a6861a30	Account verification options	Method with which to verity the existing account	675d35ab-979e-4d81-b10c-f03f25d56da7	basic-flow	f	t
beadd2bc-f309-4ba9-89d0-f3758c795db1	Verify Existing Account by Re-authentication	Reauthentication of existing account	675d35ab-979e-4d81-b10c-f03f25d56da7	basic-flow	f	t
1d1f3985-e7c4-4c38-b491-755166305327	First broker login - Conditional OTP	Flow to determine if the OTP is required for the authentication	675d35ab-979e-4d81-b10c-f03f25d56da7	basic-flow	f	t
d1f9d317-cfb0-405c-9df5-d02d034e1987	saml ecp	SAML ECP Profile Authentication Flow	675d35ab-979e-4d81-b10c-f03f25d56da7	basic-flow	t	t
53cc7599-53ec-4056-8094-b201cb0717d4	docker auth	Used by Docker clients to authenticate against the IDP	675d35ab-979e-4d81-b10c-f03f25d56da7	basic-flow	t	t
55b6d2b1-b553-4f7a-ad1f-89f6a4ae5129	browser	browser based authentication	7c54d901-12e8-4d3c-b1c0-87753e3330c2	basic-flow	t	t
de7ff854-0d31-42c6-af07-1e83fecb96f6	forms	Username, password, otp and other auth forms.	7c54d901-12e8-4d3c-b1c0-87753e3330c2	basic-flow	f	t
218d10a1-9040-4d6b-9f61-b9552c5ee20d	Browser - Conditional OTP	Flow to determine if the OTP is required for the authentication	7c54d901-12e8-4d3c-b1c0-87753e3330c2	basic-flow	f	t
3459829d-5022-45f5-be05-1d4b3529499a	direct grant	OpenID Connect Resource Owner Grant	7c54d901-12e8-4d3c-b1c0-87753e3330c2	basic-flow	t	t
d8de63a9-15bf-444a-a61d-e26be953697e	Direct Grant - Conditional OTP	Flow to determine if the OTP is required for the authentication	7c54d901-12e8-4d3c-b1c0-87753e3330c2	basic-flow	f	t
5100a172-c352-44a0-8412-cfb5ab31da4e	registration	registration flow	7c54d901-12e8-4d3c-b1c0-87753e3330c2	basic-flow	t	t
cbbb8522-0725-4185-a00b-cf44e7a239db	registration form	registration form	7c54d901-12e8-4d3c-b1c0-87753e3330c2	form-flow	f	t
e5c25a79-697c-4c44-810f-92997d80a593	reset credentials	Reset credentials for a user if they forgot their password or something	7c54d901-12e8-4d3c-b1c0-87753e3330c2	basic-flow	t	t
ba95851d-dea7-464c-a82b-e40b18006a6a	Reset - Conditional OTP	Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.	7c54d901-12e8-4d3c-b1c0-87753e3330c2	basic-flow	f	t
e18c57d4-e2d5-4581-a054-69cc10d67593	clients	Base authentication for clients	7c54d901-12e8-4d3c-b1c0-87753e3330c2	client-flow	t	t
e2759965-32db-4be6-9f56-78f597065149	first broker login	Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account	7c54d901-12e8-4d3c-b1c0-87753e3330c2	basic-flow	t	t
a6a3c95c-b0df-443b-ba3f-69b5a5c5fd8e	User creation or linking	Flow for the existing/non-existing user alternatives	7c54d901-12e8-4d3c-b1c0-87753e3330c2	basic-flow	f	t
304b600f-187e-4103-9516-acebce8a9aaa	Handle Existing Account	Handle what to do if there is existing account with same email/username like authenticated identity provider	7c54d901-12e8-4d3c-b1c0-87753e3330c2	basic-flow	f	t
f9793818-96a9-45c3-aa19-098c9ad338c4	Account verification options	Method with which to verity the existing account	7c54d901-12e8-4d3c-b1c0-87753e3330c2	basic-flow	f	t
a4e2ef61-c29a-4729-bc21-7dc761f0eca2	Verify Existing Account by Re-authentication	Reauthentication of existing account	7c54d901-12e8-4d3c-b1c0-87753e3330c2	basic-flow	f	t
0ccb4a6f-5c99-4fe0-b48f-ac5506c2c35d	First broker login - Conditional OTP	Flow to determine if the OTP is required for the authentication	7c54d901-12e8-4d3c-b1c0-87753e3330c2	basic-flow	f	t
c48ef80a-1a3d-4fcb-89b6-cfa589106fe8	saml ecp	SAML ECP Profile Authentication Flow	7c54d901-12e8-4d3c-b1c0-87753e3330c2	basic-flow	t	t
4b5d59ae-c907-4678-b121-c2a114ee9918	docker auth	Used by Docker clients to authenticate against the IDP	7c54d901-12e8-4d3c-b1c0-87753e3330c2	basic-flow	t	t
\.


--
-- TOC entry 4189 (class 0 OID 25246)
-- Dependencies: 257
-- Data for Name: authenticator_config; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.authenticator_config (id, alias, realm_id) FROM stdin;
f7ff4164-e493-4bd5-bb07-4715c9c735d2	review profile config	675d35ab-979e-4d81-b10c-f03f25d56da7
6fd3a4fd-30c5-4228-9561-eff1a6d5f59e	create unique user config	675d35ab-979e-4d81-b10c-f03f25d56da7
a92e2500-ed13-4a94-95db-4cc2f9270a42	review profile config	7c54d901-12e8-4d3c-b1c0-87753e3330c2
15e3701e-4f3f-4cd7-9b6d-74276ca40802	create unique user config	7c54d901-12e8-4d3c-b1c0-87753e3330c2
\.


--
-- TOC entry 4192 (class 0 OID 25261)
-- Dependencies: 260
-- Data for Name: authenticator_config_entry; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.authenticator_config_entry (authenticator_id, value, name) FROM stdin;
6fd3a4fd-30c5-4228-9561-eff1a6d5f59e	false	require.password.update.after.registration
f7ff4164-e493-4bd5-bb07-4715c9c735d2	missing	update.profile.on.first.login
15e3701e-4f3f-4cd7-9b6d-74276ca40802	false	require.password.update.after.registration
a92e2500-ed13-4a94-95db-4cc2f9270a42	missing	update.profile.on.first.login
\.


--
-- TOC entry 4218 (class 0 OID 25699)
-- Dependencies: 286
-- Data for Name: broker_link; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.broker_link (identity_provider, storage_provider_id, realm_id, broker_user_id, broker_username, token, user_id) FROM stdin;
\.


--
-- TOC entry 4149 (class 0 OID 24622)
-- Dependencies: 217
-- Data for Name: client; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.client (id, enabled, full_scope_allowed, client_id, not_before, public_client, secret, base_url, bearer_only, management_url, surrogate_auth_required, realm_id, protocol, node_rereg_timeout, frontchannel_logout, consent_required, name, service_accounts_enabled, client_authenticator_type, root_url, description, registration_token, standard_flow_enabled, implicit_flow_enabled, direct_access_grants_enabled, always_display_in_console) FROM stdin;
1ca53b96-38fc-4af1-b70d-b66f3f2c2dfa	t	f	master-realm	0	f	\N	\N	t	\N	f	675d35ab-979e-4d81-b10c-f03f25d56da7	\N	0	f	f	master Realm	f	client-secret	\N	\N	\N	t	f	f	f
b28d6a4e-670e-4452-ab6a-90b21f2860d4	t	f	account	0	t	\N	/realms/master/account/	f	\N	f	675d35ab-979e-4d81-b10c-f03f25d56da7	openid-connect	0	f	f	${client_account}	f	client-secret	${authBaseUrl}	\N	\N	t	f	f	f
cb01e043-2142-450a-8dd0-800be7adaf82	t	f	account-console	0	t	\N	/realms/master/account/	f	\N	f	675d35ab-979e-4d81-b10c-f03f25d56da7	openid-connect	0	f	f	${client_account-console}	f	client-secret	${authBaseUrl}	\N	\N	t	f	f	f
f49539a4-5513-466f-bffb-f7133b39ada8	t	f	broker	0	f	\N	\N	t	\N	f	675d35ab-979e-4d81-b10c-f03f25d56da7	openid-connect	0	f	f	${client_broker}	f	client-secret	\N	\N	\N	t	f	f	f
597c6fb1-16bf-450d-ace9-bb01e7f58912	t	f	security-admin-console	0	t	\N	/admin/master/console/	f	\N	f	675d35ab-979e-4d81-b10c-f03f25d56da7	openid-connect	0	f	f	${client_security-admin-console}	f	client-secret	${authAdminUrl}	\N	\N	t	f	f	f
698a1728-56b0-4e80-a100-fe5a44effe2d	t	f	admin-cli	0	t	\N	\N	f	\N	f	675d35ab-979e-4d81-b10c-f03f25d56da7	openid-connect	0	f	f	${client_admin-cli}	f	client-secret	\N	\N	\N	f	f	t	f
d4cd2421-2499-4a0a-9a0d-b38956e828c9	t	f	pokestation-realm	0	f	\N	\N	t	\N	f	675d35ab-979e-4d81-b10c-f03f25d56da7	\N	0	f	f	pokestation Realm	f	client-secret	\N	\N	\N	t	f	f	f
1560eab6-f459-4411-a42a-1b899e5dd4c0	t	f	realm-management	0	f	\N	\N	t	\N	f	7c54d901-12e8-4d3c-b1c0-87753e3330c2	openid-connect	0	f	f	${client_realm-management}	f	client-secret	\N	\N	\N	t	f	f	f
267410fd-7176-4699-a70f-41b5baa0e94d	t	f	account	0	t	\N	/realms/pokestation/account/	f	\N	f	7c54d901-12e8-4d3c-b1c0-87753e3330c2	openid-connect	0	f	f	${client_account}	f	client-secret	${authBaseUrl}	\N	\N	t	f	f	f
663a7a94-b499-4f80-81ea-6f745fbe25d6	t	f	account-console	0	t	\N	/realms/pokestation/account/	f	\N	f	7c54d901-12e8-4d3c-b1c0-87753e3330c2	openid-connect	0	f	f	${client_account-console}	f	client-secret	${authBaseUrl}	\N	\N	t	f	f	f
89a72f22-b792-4cc4-b80e-604f599d4fa8	t	f	broker	0	f	\N	\N	t	\N	f	7c54d901-12e8-4d3c-b1c0-87753e3330c2	openid-connect	0	f	f	${client_broker}	f	client-secret	\N	\N	\N	t	f	f	f
cf82469b-201d-424a-899b-d419082f48a7	t	f	security-admin-console	0	t	\N	/admin/pokestation/console/	f	\N	f	7c54d901-12e8-4d3c-b1c0-87753e3330c2	openid-connect	0	f	f	${client_security-admin-console}	f	client-secret	${authAdminUrl}	\N	\N	t	f	f	f
625419c7-5631-4686-bc8a-ce36349a0d09	t	f	admin-cli	0	t	\N	\N	f	\N	f	7c54d901-12e8-4d3c-b1c0-87753e3330c2	openid-connect	0	f	f	${client_admin-cli}	f	client-secret	\N	\N	\N	f	f	t	f
895883a3-0ad1-4bb5-be6c-72e990dba750	t	t	frontend	0	t	\N		f		f	7c54d901-12e8-4d3c-b1c0-87753e3330c2	openid-connect	-1	t	f	frontend	f	client-secret			\N	t	f	t	f
62156c2e-fe7e-4a87-9bb0-d48e2d76ba07	t	t	backend	0	f	qdVjxUTBSTSAG0Rjq6OHdSWgY7tgEkSU		f		f	7c54d901-12e8-4d3c-b1c0-87753e3330c2	openid-connect	-1	t	f	backend	t	client-secret			\N	t	f	t	f
\.


--
-- TOC entry 4172 (class 0 OID 24980)
-- Dependencies: 240
-- Data for Name: client_attributes; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.client_attributes (client_id, name, value) FROM stdin;
b28d6a4e-670e-4452-ab6a-90b21f2860d4	post.logout.redirect.uris	+
cb01e043-2142-450a-8dd0-800be7adaf82	post.logout.redirect.uris	+
cb01e043-2142-450a-8dd0-800be7adaf82	pkce.code.challenge.method	S256
597c6fb1-16bf-450d-ace9-bb01e7f58912	post.logout.redirect.uris	+
597c6fb1-16bf-450d-ace9-bb01e7f58912	pkce.code.challenge.method	S256
267410fd-7176-4699-a70f-41b5baa0e94d	post.logout.redirect.uris	+
663a7a94-b499-4f80-81ea-6f745fbe25d6	post.logout.redirect.uris	+
663a7a94-b499-4f80-81ea-6f745fbe25d6	pkce.code.challenge.method	S256
cf82469b-201d-424a-899b-d419082f48a7	post.logout.redirect.uris	+
cf82469b-201d-424a-899b-d419082f48a7	pkce.code.challenge.method	S256
62156c2e-fe7e-4a87-9bb0-d48e2d76ba07	oauth2.device.authorization.grant.enabled	false
62156c2e-fe7e-4a87-9bb0-d48e2d76ba07	oidc.ciba.grant.enabled	false
62156c2e-fe7e-4a87-9bb0-d48e2d76ba07	backchannel.logout.session.required	true
62156c2e-fe7e-4a87-9bb0-d48e2d76ba07	backchannel.logout.revoke.offline.tokens	false
62156c2e-fe7e-4a87-9bb0-d48e2d76ba07	display.on.consent.screen	false
62156c2e-fe7e-4a87-9bb0-d48e2d76ba07	use.refresh.tokens	true
62156c2e-fe7e-4a87-9bb0-d48e2d76ba07	client_credentials.use_refresh_token	false
62156c2e-fe7e-4a87-9bb0-d48e2d76ba07	token.response.type.bearer.lower-case	false
62156c2e-fe7e-4a87-9bb0-d48e2d76ba07	tls.client.certificate.bound.access.tokens	false
62156c2e-fe7e-4a87-9bb0-d48e2d76ba07	require.pushed.authorization.requests	false
62156c2e-fe7e-4a87-9bb0-d48e2d76ba07	acr.loa.map	{}
62156c2e-fe7e-4a87-9bb0-d48e2d76ba07	client.secret.creation.time	1700857645
895883a3-0ad1-4bb5-be6c-72e990dba750	oauth2.device.authorization.grant.enabled	false
895883a3-0ad1-4bb5-be6c-72e990dba750	oidc.ciba.grant.enabled	false
895883a3-0ad1-4bb5-be6c-72e990dba750	backchannel.logout.session.required	true
895883a3-0ad1-4bb5-be6c-72e990dba750	backchannel.logout.revoke.offline.tokens	false
895883a3-0ad1-4bb5-be6c-72e990dba750	display.on.consent.screen	false
895883a3-0ad1-4bb5-be6c-72e990dba750	post.logout.redirect.uris	http://localhost:4200/*##http://localhost/*##http://app.pokestation.com/*
\.


--
-- TOC entry 4229 (class 0 OID 25948)
-- Dependencies: 297
-- Data for Name: client_auth_flow_bindings; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.client_auth_flow_bindings (client_id, flow_id, binding_name) FROM stdin;
\.


--
-- TOC entry 4228 (class 0 OID 25823)
-- Dependencies: 296
-- Data for Name: client_initial_access; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.client_initial_access (id, realm_id, "timestamp", expiration, count, remaining_count) FROM stdin;
\.


--
-- TOC entry 4174 (class 0 OID 24990)
-- Dependencies: 242
-- Data for Name: client_node_registrations; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.client_node_registrations (client_id, value, name) FROM stdin;
\.


--
-- TOC entry 4206 (class 0 OID 25489)
-- Dependencies: 274
-- Data for Name: client_scope; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.client_scope (id, name, realm_id, description, protocol) FROM stdin;
c32ab871-d7c3-4de5-8375-5acb1949d235	offline_access	675d35ab-979e-4d81-b10c-f03f25d56da7	OpenID Connect built-in scope: offline_access	openid-connect
01084f2a-b14b-44f6-95f2-3b8edc586962	role_list	675d35ab-979e-4d81-b10c-f03f25d56da7	SAML role list	saml
5b8e7a78-2d70-490b-a0ff-ab22abbf6986	profile	675d35ab-979e-4d81-b10c-f03f25d56da7	OpenID Connect built-in scope: profile	openid-connect
5d9ff23a-bb84-4bd7-a617-098195214f68	email	675d35ab-979e-4d81-b10c-f03f25d56da7	OpenID Connect built-in scope: email	openid-connect
5bb0c3b8-50eb-42fb-819b-32a8b86f040e	address	675d35ab-979e-4d81-b10c-f03f25d56da7	OpenID Connect built-in scope: address	openid-connect
f140148b-912e-4541-81cc-697708fc2a2d	phone	675d35ab-979e-4d81-b10c-f03f25d56da7	OpenID Connect built-in scope: phone	openid-connect
3698f0a8-4290-4848-8ffa-bc9ad99c081b	roles	675d35ab-979e-4d81-b10c-f03f25d56da7	OpenID Connect scope for add user roles to the access token	openid-connect
99622f9c-4559-4e1b-819c-12889ccb6dee	web-origins	675d35ab-979e-4d81-b10c-f03f25d56da7	OpenID Connect scope for add allowed web origins to the access token	openid-connect
ff6c5e1d-89a7-4e16-9c76-a5092e6a0a61	microprofile-jwt	675d35ab-979e-4d81-b10c-f03f25d56da7	Microprofile - JWT built-in scope	openid-connect
208b9059-2abc-4175-ae67-0e0fd1495f53	acr	675d35ab-979e-4d81-b10c-f03f25d56da7	OpenID Connect scope for add acr (authentication context class reference) to the token	openid-connect
db677f25-5293-4a02-a5f6-fd3c6597a1c3	offline_access	7c54d901-12e8-4d3c-b1c0-87753e3330c2	OpenID Connect built-in scope: offline_access	openid-connect
461ba461-ed6a-4459-a071-c536253866af	role_list	7c54d901-12e8-4d3c-b1c0-87753e3330c2	SAML role list	saml
2524954e-0981-4b61-8c4e-48ade6f9e12e	profile	7c54d901-12e8-4d3c-b1c0-87753e3330c2	OpenID Connect built-in scope: profile	openid-connect
33a7f9e9-a5d9-4be6-9ebd-cb9293687540	email	7c54d901-12e8-4d3c-b1c0-87753e3330c2	OpenID Connect built-in scope: email	openid-connect
851b4fb4-7dab-4777-9a4f-822fbc89714d	address	7c54d901-12e8-4d3c-b1c0-87753e3330c2	OpenID Connect built-in scope: address	openid-connect
71989a0b-6c06-43e1-8346-897634adbdae	phone	7c54d901-12e8-4d3c-b1c0-87753e3330c2	OpenID Connect built-in scope: phone	openid-connect
805fbc1f-43a7-45d6-8b6f-e933e25bf5d8	roles	7c54d901-12e8-4d3c-b1c0-87753e3330c2	OpenID Connect scope for add user roles to the access token	openid-connect
0d17fd18-32a6-4305-82ec-81781309f0ff	web-origins	7c54d901-12e8-4d3c-b1c0-87753e3330c2	OpenID Connect scope for add allowed web origins to the access token	openid-connect
e109dcfb-fa22-4a4c-93ca-b758c23848a5	microprofile-jwt	7c54d901-12e8-4d3c-b1c0-87753e3330c2	Microprofile - JWT built-in scope	openid-connect
e1d0e082-3dec-4c17-917c-e075c4e96767	acr	7c54d901-12e8-4d3c-b1c0-87753e3330c2	OpenID Connect scope for add acr (authentication context class reference) to the token	openid-connect
188a0bef-6ed8-4948-8969-99f5e6793156	pokestation_roles	7c54d901-12e8-4d3c-b1c0-87753e3330c2		openid-connect
\.


--
-- TOC entry 4207 (class 0 OID 25503)
-- Dependencies: 275
-- Data for Name: client_scope_attributes; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.client_scope_attributes (scope_id, value, name) FROM stdin;
c32ab871-d7c3-4de5-8375-5acb1949d235	true	display.on.consent.screen
c32ab871-d7c3-4de5-8375-5acb1949d235	${offlineAccessScopeConsentText}	consent.screen.text
01084f2a-b14b-44f6-95f2-3b8edc586962	true	display.on.consent.screen
01084f2a-b14b-44f6-95f2-3b8edc586962	${samlRoleListScopeConsentText}	consent.screen.text
5b8e7a78-2d70-490b-a0ff-ab22abbf6986	true	display.on.consent.screen
5b8e7a78-2d70-490b-a0ff-ab22abbf6986	${profileScopeConsentText}	consent.screen.text
5b8e7a78-2d70-490b-a0ff-ab22abbf6986	true	include.in.token.scope
5d9ff23a-bb84-4bd7-a617-098195214f68	true	display.on.consent.screen
5d9ff23a-bb84-4bd7-a617-098195214f68	${emailScopeConsentText}	consent.screen.text
5d9ff23a-bb84-4bd7-a617-098195214f68	true	include.in.token.scope
5bb0c3b8-50eb-42fb-819b-32a8b86f040e	true	display.on.consent.screen
5bb0c3b8-50eb-42fb-819b-32a8b86f040e	${addressScopeConsentText}	consent.screen.text
5bb0c3b8-50eb-42fb-819b-32a8b86f040e	true	include.in.token.scope
f140148b-912e-4541-81cc-697708fc2a2d	true	display.on.consent.screen
f140148b-912e-4541-81cc-697708fc2a2d	${phoneScopeConsentText}	consent.screen.text
f140148b-912e-4541-81cc-697708fc2a2d	true	include.in.token.scope
3698f0a8-4290-4848-8ffa-bc9ad99c081b	true	display.on.consent.screen
3698f0a8-4290-4848-8ffa-bc9ad99c081b	${rolesScopeConsentText}	consent.screen.text
3698f0a8-4290-4848-8ffa-bc9ad99c081b	false	include.in.token.scope
99622f9c-4559-4e1b-819c-12889ccb6dee	false	display.on.consent.screen
99622f9c-4559-4e1b-819c-12889ccb6dee		consent.screen.text
99622f9c-4559-4e1b-819c-12889ccb6dee	false	include.in.token.scope
ff6c5e1d-89a7-4e16-9c76-a5092e6a0a61	false	display.on.consent.screen
ff6c5e1d-89a7-4e16-9c76-a5092e6a0a61	true	include.in.token.scope
208b9059-2abc-4175-ae67-0e0fd1495f53	false	display.on.consent.screen
208b9059-2abc-4175-ae67-0e0fd1495f53	false	include.in.token.scope
db677f25-5293-4a02-a5f6-fd3c6597a1c3	true	display.on.consent.screen
db677f25-5293-4a02-a5f6-fd3c6597a1c3	${offlineAccessScopeConsentText}	consent.screen.text
461ba461-ed6a-4459-a071-c536253866af	true	display.on.consent.screen
461ba461-ed6a-4459-a071-c536253866af	${samlRoleListScopeConsentText}	consent.screen.text
2524954e-0981-4b61-8c4e-48ade6f9e12e	true	display.on.consent.screen
2524954e-0981-4b61-8c4e-48ade6f9e12e	${profileScopeConsentText}	consent.screen.text
2524954e-0981-4b61-8c4e-48ade6f9e12e	true	include.in.token.scope
33a7f9e9-a5d9-4be6-9ebd-cb9293687540	true	display.on.consent.screen
33a7f9e9-a5d9-4be6-9ebd-cb9293687540	${emailScopeConsentText}	consent.screen.text
33a7f9e9-a5d9-4be6-9ebd-cb9293687540	true	include.in.token.scope
851b4fb4-7dab-4777-9a4f-822fbc89714d	true	display.on.consent.screen
851b4fb4-7dab-4777-9a4f-822fbc89714d	${addressScopeConsentText}	consent.screen.text
851b4fb4-7dab-4777-9a4f-822fbc89714d	true	include.in.token.scope
71989a0b-6c06-43e1-8346-897634adbdae	true	display.on.consent.screen
71989a0b-6c06-43e1-8346-897634adbdae	${phoneScopeConsentText}	consent.screen.text
71989a0b-6c06-43e1-8346-897634adbdae	true	include.in.token.scope
805fbc1f-43a7-45d6-8b6f-e933e25bf5d8	true	display.on.consent.screen
805fbc1f-43a7-45d6-8b6f-e933e25bf5d8	${rolesScopeConsentText}	consent.screen.text
805fbc1f-43a7-45d6-8b6f-e933e25bf5d8	false	include.in.token.scope
0d17fd18-32a6-4305-82ec-81781309f0ff	false	display.on.consent.screen
0d17fd18-32a6-4305-82ec-81781309f0ff		consent.screen.text
0d17fd18-32a6-4305-82ec-81781309f0ff	false	include.in.token.scope
e109dcfb-fa22-4a4c-93ca-b758c23848a5	false	display.on.consent.screen
e109dcfb-fa22-4a4c-93ca-b758c23848a5	true	include.in.token.scope
e1d0e082-3dec-4c17-917c-e075c4e96767	false	display.on.consent.screen
e1d0e082-3dec-4c17-917c-e075c4e96767	false	include.in.token.scope
188a0bef-6ed8-4948-8969-99f5e6793156		consent.screen.text
188a0bef-6ed8-4948-8969-99f5e6793156	true	display.on.consent.screen
188a0bef-6ed8-4948-8969-99f5e6793156	true	include.in.token.scope
188a0bef-6ed8-4948-8969-99f5e6793156		gui.order
\.


--
-- TOC entry 4230 (class 0 OID 25989)
-- Dependencies: 298
-- Data for Name: client_scope_client; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.client_scope_client (client_id, scope_id, default_scope) FROM stdin;
b28d6a4e-670e-4452-ab6a-90b21f2860d4	99622f9c-4559-4e1b-819c-12889ccb6dee	t
b28d6a4e-670e-4452-ab6a-90b21f2860d4	5d9ff23a-bb84-4bd7-a617-098195214f68	t
b28d6a4e-670e-4452-ab6a-90b21f2860d4	208b9059-2abc-4175-ae67-0e0fd1495f53	t
b28d6a4e-670e-4452-ab6a-90b21f2860d4	5b8e7a78-2d70-490b-a0ff-ab22abbf6986	t
b28d6a4e-670e-4452-ab6a-90b21f2860d4	3698f0a8-4290-4848-8ffa-bc9ad99c081b	t
b28d6a4e-670e-4452-ab6a-90b21f2860d4	ff6c5e1d-89a7-4e16-9c76-a5092e6a0a61	f
b28d6a4e-670e-4452-ab6a-90b21f2860d4	c32ab871-d7c3-4de5-8375-5acb1949d235	f
b28d6a4e-670e-4452-ab6a-90b21f2860d4	5bb0c3b8-50eb-42fb-819b-32a8b86f040e	f
b28d6a4e-670e-4452-ab6a-90b21f2860d4	f140148b-912e-4541-81cc-697708fc2a2d	f
cb01e043-2142-450a-8dd0-800be7adaf82	99622f9c-4559-4e1b-819c-12889ccb6dee	t
cb01e043-2142-450a-8dd0-800be7adaf82	5d9ff23a-bb84-4bd7-a617-098195214f68	t
cb01e043-2142-450a-8dd0-800be7adaf82	208b9059-2abc-4175-ae67-0e0fd1495f53	t
cb01e043-2142-450a-8dd0-800be7adaf82	5b8e7a78-2d70-490b-a0ff-ab22abbf6986	t
cb01e043-2142-450a-8dd0-800be7adaf82	3698f0a8-4290-4848-8ffa-bc9ad99c081b	t
cb01e043-2142-450a-8dd0-800be7adaf82	ff6c5e1d-89a7-4e16-9c76-a5092e6a0a61	f
cb01e043-2142-450a-8dd0-800be7adaf82	c32ab871-d7c3-4de5-8375-5acb1949d235	f
cb01e043-2142-450a-8dd0-800be7adaf82	5bb0c3b8-50eb-42fb-819b-32a8b86f040e	f
cb01e043-2142-450a-8dd0-800be7adaf82	f140148b-912e-4541-81cc-697708fc2a2d	f
698a1728-56b0-4e80-a100-fe5a44effe2d	99622f9c-4559-4e1b-819c-12889ccb6dee	t
698a1728-56b0-4e80-a100-fe5a44effe2d	5d9ff23a-bb84-4bd7-a617-098195214f68	t
698a1728-56b0-4e80-a100-fe5a44effe2d	208b9059-2abc-4175-ae67-0e0fd1495f53	t
698a1728-56b0-4e80-a100-fe5a44effe2d	5b8e7a78-2d70-490b-a0ff-ab22abbf6986	t
698a1728-56b0-4e80-a100-fe5a44effe2d	3698f0a8-4290-4848-8ffa-bc9ad99c081b	t
698a1728-56b0-4e80-a100-fe5a44effe2d	ff6c5e1d-89a7-4e16-9c76-a5092e6a0a61	f
698a1728-56b0-4e80-a100-fe5a44effe2d	c32ab871-d7c3-4de5-8375-5acb1949d235	f
698a1728-56b0-4e80-a100-fe5a44effe2d	5bb0c3b8-50eb-42fb-819b-32a8b86f040e	f
698a1728-56b0-4e80-a100-fe5a44effe2d	f140148b-912e-4541-81cc-697708fc2a2d	f
f49539a4-5513-466f-bffb-f7133b39ada8	99622f9c-4559-4e1b-819c-12889ccb6dee	t
f49539a4-5513-466f-bffb-f7133b39ada8	5d9ff23a-bb84-4bd7-a617-098195214f68	t
f49539a4-5513-466f-bffb-f7133b39ada8	208b9059-2abc-4175-ae67-0e0fd1495f53	t
f49539a4-5513-466f-bffb-f7133b39ada8	5b8e7a78-2d70-490b-a0ff-ab22abbf6986	t
f49539a4-5513-466f-bffb-f7133b39ada8	3698f0a8-4290-4848-8ffa-bc9ad99c081b	t
f49539a4-5513-466f-bffb-f7133b39ada8	ff6c5e1d-89a7-4e16-9c76-a5092e6a0a61	f
f49539a4-5513-466f-bffb-f7133b39ada8	c32ab871-d7c3-4de5-8375-5acb1949d235	f
f49539a4-5513-466f-bffb-f7133b39ada8	5bb0c3b8-50eb-42fb-819b-32a8b86f040e	f
f49539a4-5513-466f-bffb-f7133b39ada8	f140148b-912e-4541-81cc-697708fc2a2d	f
1ca53b96-38fc-4af1-b70d-b66f3f2c2dfa	99622f9c-4559-4e1b-819c-12889ccb6dee	t
1ca53b96-38fc-4af1-b70d-b66f3f2c2dfa	5d9ff23a-bb84-4bd7-a617-098195214f68	t
1ca53b96-38fc-4af1-b70d-b66f3f2c2dfa	208b9059-2abc-4175-ae67-0e0fd1495f53	t
1ca53b96-38fc-4af1-b70d-b66f3f2c2dfa	5b8e7a78-2d70-490b-a0ff-ab22abbf6986	t
1ca53b96-38fc-4af1-b70d-b66f3f2c2dfa	3698f0a8-4290-4848-8ffa-bc9ad99c081b	t
1ca53b96-38fc-4af1-b70d-b66f3f2c2dfa	ff6c5e1d-89a7-4e16-9c76-a5092e6a0a61	f
1ca53b96-38fc-4af1-b70d-b66f3f2c2dfa	c32ab871-d7c3-4de5-8375-5acb1949d235	f
1ca53b96-38fc-4af1-b70d-b66f3f2c2dfa	5bb0c3b8-50eb-42fb-819b-32a8b86f040e	f
1ca53b96-38fc-4af1-b70d-b66f3f2c2dfa	f140148b-912e-4541-81cc-697708fc2a2d	f
597c6fb1-16bf-450d-ace9-bb01e7f58912	99622f9c-4559-4e1b-819c-12889ccb6dee	t
597c6fb1-16bf-450d-ace9-bb01e7f58912	5d9ff23a-bb84-4bd7-a617-098195214f68	t
597c6fb1-16bf-450d-ace9-bb01e7f58912	208b9059-2abc-4175-ae67-0e0fd1495f53	t
597c6fb1-16bf-450d-ace9-bb01e7f58912	5b8e7a78-2d70-490b-a0ff-ab22abbf6986	t
597c6fb1-16bf-450d-ace9-bb01e7f58912	3698f0a8-4290-4848-8ffa-bc9ad99c081b	t
597c6fb1-16bf-450d-ace9-bb01e7f58912	ff6c5e1d-89a7-4e16-9c76-a5092e6a0a61	f
597c6fb1-16bf-450d-ace9-bb01e7f58912	c32ab871-d7c3-4de5-8375-5acb1949d235	f
597c6fb1-16bf-450d-ace9-bb01e7f58912	5bb0c3b8-50eb-42fb-819b-32a8b86f040e	f
597c6fb1-16bf-450d-ace9-bb01e7f58912	f140148b-912e-4541-81cc-697708fc2a2d	f
267410fd-7176-4699-a70f-41b5baa0e94d	805fbc1f-43a7-45d6-8b6f-e933e25bf5d8	t
267410fd-7176-4699-a70f-41b5baa0e94d	0d17fd18-32a6-4305-82ec-81781309f0ff	t
267410fd-7176-4699-a70f-41b5baa0e94d	2524954e-0981-4b61-8c4e-48ade6f9e12e	t
267410fd-7176-4699-a70f-41b5baa0e94d	e1d0e082-3dec-4c17-917c-e075c4e96767	t
267410fd-7176-4699-a70f-41b5baa0e94d	33a7f9e9-a5d9-4be6-9ebd-cb9293687540	t
267410fd-7176-4699-a70f-41b5baa0e94d	db677f25-5293-4a02-a5f6-fd3c6597a1c3	f
267410fd-7176-4699-a70f-41b5baa0e94d	e109dcfb-fa22-4a4c-93ca-b758c23848a5	f
267410fd-7176-4699-a70f-41b5baa0e94d	851b4fb4-7dab-4777-9a4f-822fbc89714d	f
267410fd-7176-4699-a70f-41b5baa0e94d	71989a0b-6c06-43e1-8346-897634adbdae	f
663a7a94-b499-4f80-81ea-6f745fbe25d6	805fbc1f-43a7-45d6-8b6f-e933e25bf5d8	t
663a7a94-b499-4f80-81ea-6f745fbe25d6	0d17fd18-32a6-4305-82ec-81781309f0ff	t
663a7a94-b499-4f80-81ea-6f745fbe25d6	2524954e-0981-4b61-8c4e-48ade6f9e12e	t
663a7a94-b499-4f80-81ea-6f745fbe25d6	e1d0e082-3dec-4c17-917c-e075c4e96767	t
663a7a94-b499-4f80-81ea-6f745fbe25d6	33a7f9e9-a5d9-4be6-9ebd-cb9293687540	t
663a7a94-b499-4f80-81ea-6f745fbe25d6	db677f25-5293-4a02-a5f6-fd3c6597a1c3	f
663a7a94-b499-4f80-81ea-6f745fbe25d6	e109dcfb-fa22-4a4c-93ca-b758c23848a5	f
663a7a94-b499-4f80-81ea-6f745fbe25d6	851b4fb4-7dab-4777-9a4f-822fbc89714d	f
663a7a94-b499-4f80-81ea-6f745fbe25d6	71989a0b-6c06-43e1-8346-897634adbdae	f
625419c7-5631-4686-bc8a-ce36349a0d09	805fbc1f-43a7-45d6-8b6f-e933e25bf5d8	t
625419c7-5631-4686-bc8a-ce36349a0d09	0d17fd18-32a6-4305-82ec-81781309f0ff	t
625419c7-5631-4686-bc8a-ce36349a0d09	2524954e-0981-4b61-8c4e-48ade6f9e12e	t
625419c7-5631-4686-bc8a-ce36349a0d09	e1d0e082-3dec-4c17-917c-e075c4e96767	t
625419c7-5631-4686-bc8a-ce36349a0d09	33a7f9e9-a5d9-4be6-9ebd-cb9293687540	t
625419c7-5631-4686-bc8a-ce36349a0d09	db677f25-5293-4a02-a5f6-fd3c6597a1c3	f
625419c7-5631-4686-bc8a-ce36349a0d09	e109dcfb-fa22-4a4c-93ca-b758c23848a5	f
625419c7-5631-4686-bc8a-ce36349a0d09	851b4fb4-7dab-4777-9a4f-822fbc89714d	f
625419c7-5631-4686-bc8a-ce36349a0d09	71989a0b-6c06-43e1-8346-897634adbdae	f
89a72f22-b792-4cc4-b80e-604f599d4fa8	805fbc1f-43a7-45d6-8b6f-e933e25bf5d8	t
89a72f22-b792-4cc4-b80e-604f599d4fa8	0d17fd18-32a6-4305-82ec-81781309f0ff	t
89a72f22-b792-4cc4-b80e-604f599d4fa8	2524954e-0981-4b61-8c4e-48ade6f9e12e	t
89a72f22-b792-4cc4-b80e-604f599d4fa8	e1d0e082-3dec-4c17-917c-e075c4e96767	t
89a72f22-b792-4cc4-b80e-604f599d4fa8	33a7f9e9-a5d9-4be6-9ebd-cb9293687540	t
89a72f22-b792-4cc4-b80e-604f599d4fa8	db677f25-5293-4a02-a5f6-fd3c6597a1c3	f
89a72f22-b792-4cc4-b80e-604f599d4fa8	e109dcfb-fa22-4a4c-93ca-b758c23848a5	f
89a72f22-b792-4cc4-b80e-604f599d4fa8	851b4fb4-7dab-4777-9a4f-822fbc89714d	f
89a72f22-b792-4cc4-b80e-604f599d4fa8	71989a0b-6c06-43e1-8346-897634adbdae	f
1560eab6-f459-4411-a42a-1b899e5dd4c0	805fbc1f-43a7-45d6-8b6f-e933e25bf5d8	t
1560eab6-f459-4411-a42a-1b899e5dd4c0	0d17fd18-32a6-4305-82ec-81781309f0ff	t
1560eab6-f459-4411-a42a-1b899e5dd4c0	2524954e-0981-4b61-8c4e-48ade6f9e12e	t
1560eab6-f459-4411-a42a-1b899e5dd4c0	e1d0e082-3dec-4c17-917c-e075c4e96767	t
1560eab6-f459-4411-a42a-1b899e5dd4c0	33a7f9e9-a5d9-4be6-9ebd-cb9293687540	t
1560eab6-f459-4411-a42a-1b899e5dd4c0	db677f25-5293-4a02-a5f6-fd3c6597a1c3	f
1560eab6-f459-4411-a42a-1b899e5dd4c0	e109dcfb-fa22-4a4c-93ca-b758c23848a5	f
1560eab6-f459-4411-a42a-1b899e5dd4c0	851b4fb4-7dab-4777-9a4f-822fbc89714d	f
1560eab6-f459-4411-a42a-1b899e5dd4c0	71989a0b-6c06-43e1-8346-897634adbdae	f
cf82469b-201d-424a-899b-d419082f48a7	805fbc1f-43a7-45d6-8b6f-e933e25bf5d8	t
cf82469b-201d-424a-899b-d419082f48a7	0d17fd18-32a6-4305-82ec-81781309f0ff	t
cf82469b-201d-424a-899b-d419082f48a7	2524954e-0981-4b61-8c4e-48ade6f9e12e	t
cf82469b-201d-424a-899b-d419082f48a7	e1d0e082-3dec-4c17-917c-e075c4e96767	t
cf82469b-201d-424a-899b-d419082f48a7	33a7f9e9-a5d9-4be6-9ebd-cb9293687540	t
cf82469b-201d-424a-899b-d419082f48a7	db677f25-5293-4a02-a5f6-fd3c6597a1c3	f
cf82469b-201d-424a-899b-d419082f48a7	e109dcfb-fa22-4a4c-93ca-b758c23848a5	f
cf82469b-201d-424a-899b-d419082f48a7	851b4fb4-7dab-4777-9a4f-822fbc89714d	f
cf82469b-201d-424a-899b-d419082f48a7	71989a0b-6c06-43e1-8346-897634adbdae	f
62156c2e-fe7e-4a87-9bb0-d48e2d76ba07	805fbc1f-43a7-45d6-8b6f-e933e25bf5d8	t
62156c2e-fe7e-4a87-9bb0-d48e2d76ba07	0d17fd18-32a6-4305-82ec-81781309f0ff	t
62156c2e-fe7e-4a87-9bb0-d48e2d76ba07	2524954e-0981-4b61-8c4e-48ade6f9e12e	t
62156c2e-fe7e-4a87-9bb0-d48e2d76ba07	e1d0e082-3dec-4c17-917c-e075c4e96767	t
62156c2e-fe7e-4a87-9bb0-d48e2d76ba07	33a7f9e9-a5d9-4be6-9ebd-cb9293687540	t
62156c2e-fe7e-4a87-9bb0-d48e2d76ba07	db677f25-5293-4a02-a5f6-fd3c6597a1c3	f
62156c2e-fe7e-4a87-9bb0-d48e2d76ba07	e109dcfb-fa22-4a4c-93ca-b758c23848a5	f
62156c2e-fe7e-4a87-9bb0-d48e2d76ba07	851b4fb4-7dab-4777-9a4f-822fbc89714d	f
62156c2e-fe7e-4a87-9bb0-d48e2d76ba07	71989a0b-6c06-43e1-8346-897634adbdae	f
895883a3-0ad1-4bb5-be6c-72e990dba750	805fbc1f-43a7-45d6-8b6f-e933e25bf5d8	t
895883a3-0ad1-4bb5-be6c-72e990dba750	0d17fd18-32a6-4305-82ec-81781309f0ff	t
895883a3-0ad1-4bb5-be6c-72e990dba750	2524954e-0981-4b61-8c4e-48ade6f9e12e	t
895883a3-0ad1-4bb5-be6c-72e990dba750	e1d0e082-3dec-4c17-917c-e075c4e96767	t
895883a3-0ad1-4bb5-be6c-72e990dba750	33a7f9e9-a5d9-4be6-9ebd-cb9293687540	t
895883a3-0ad1-4bb5-be6c-72e990dba750	db677f25-5293-4a02-a5f6-fd3c6597a1c3	f
895883a3-0ad1-4bb5-be6c-72e990dba750	e109dcfb-fa22-4a4c-93ca-b758c23848a5	f
895883a3-0ad1-4bb5-be6c-72e990dba750	851b4fb4-7dab-4777-9a4f-822fbc89714d	f
895883a3-0ad1-4bb5-be6c-72e990dba750	71989a0b-6c06-43e1-8346-897634adbdae	f
895883a3-0ad1-4bb5-be6c-72e990dba750	188a0bef-6ed8-4948-8969-99f5e6793156	t
62156c2e-fe7e-4a87-9bb0-d48e2d76ba07	188a0bef-6ed8-4948-8969-99f5e6793156	t
\.


--
-- TOC entry 4208 (class 0 OID 25508)
-- Dependencies: 276
-- Data for Name: client_scope_role_mapping; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.client_scope_role_mapping (scope_id, role_id) FROM stdin;
c32ab871-d7c3-4de5-8375-5acb1949d235	4ade3a46-de6f-453e-a869-aa6f55d34997
db677f25-5293-4a02-a5f6-fd3c6597a1c3	e454d97b-71ec-465f-b3a7-b89f9a597fca
\.


--
-- TOC entry 4150 (class 0 OID 24633)
-- Dependencies: 218
-- Data for Name: client_session; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.client_session (id, client_id, redirect_uri, state, "timestamp", session_id, auth_method, realm_id, auth_user_id, current_action) FROM stdin;
\.


--
-- TOC entry 4195 (class 0 OID 25279)
-- Dependencies: 263
-- Data for Name: client_session_auth_status; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.client_session_auth_status (authenticator, status, client_session) FROM stdin;
\.


--
-- TOC entry 4173 (class 0 OID 24985)
-- Dependencies: 241
-- Data for Name: client_session_note; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.client_session_note (name, value, client_session) FROM stdin;
\.


--
-- TOC entry 4187 (class 0 OID 25163)
-- Dependencies: 255
-- Data for Name: client_session_prot_mapper; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.client_session_prot_mapper (protocol_mapper_id, client_session) FROM stdin;
\.


--
-- TOC entry 4151 (class 0 OID 24638)
-- Dependencies: 219
-- Data for Name: client_session_role; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.client_session_role (role_id, client_session) FROM stdin;
\.


--
-- TOC entry 4196 (class 0 OID 25360)
-- Dependencies: 264
-- Data for Name: client_user_session_note; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.client_user_session_note (name, value, client_session) FROM stdin;
\.


--
-- TOC entry 4226 (class 0 OID 25744)
-- Dependencies: 294
-- Data for Name: component; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.component (id, name, parent_id, provider_id, provider_type, realm_id, sub_type) FROM stdin;
af490a56-bf59-4090-8291-585e6822f55f	Trusted Hosts	675d35ab-979e-4d81-b10c-f03f25d56da7	trusted-hosts	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	675d35ab-979e-4d81-b10c-f03f25d56da7	anonymous
17b487b9-c0ad-4417-a388-4315750e9362	Consent Required	675d35ab-979e-4d81-b10c-f03f25d56da7	consent-required	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	675d35ab-979e-4d81-b10c-f03f25d56da7	anonymous
4d2c1910-ad43-4120-ad5a-49999717dd25	Full Scope Disabled	675d35ab-979e-4d81-b10c-f03f25d56da7	scope	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	675d35ab-979e-4d81-b10c-f03f25d56da7	anonymous
1d0775a8-ae3f-47fc-a8b4-1208195bbb1d	Max Clients Limit	675d35ab-979e-4d81-b10c-f03f25d56da7	max-clients	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	675d35ab-979e-4d81-b10c-f03f25d56da7	anonymous
beb7a80a-0998-4fc6-a796-884dc89ff5d9	Allowed Protocol Mapper Types	675d35ab-979e-4d81-b10c-f03f25d56da7	allowed-protocol-mappers	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	675d35ab-979e-4d81-b10c-f03f25d56da7	anonymous
2f25b4a4-a945-40f3-b149-02b40613ddcd	Allowed Client Scopes	675d35ab-979e-4d81-b10c-f03f25d56da7	allowed-client-templates	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	675d35ab-979e-4d81-b10c-f03f25d56da7	anonymous
56293838-69f4-4bed-95c3-fb5460e1cba0	Allowed Protocol Mapper Types	675d35ab-979e-4d81-b10c-f03f25d56da7	allowed-protocol-mappers	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	675d35ab-979e-4d81-b10c-f03f25d56da7	authenticated
d844b4e9-93b5-46d7-b16b-cf121665d7b8	Allowed Client Scopes	675d35ab-979e-4d81-b10c-f03f25d56da7	allowed-client-templates	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	675d35ab-979e-4d81-b10c-f03f25d56da7	authenticated
1116e75a-b8f3-4d00-9ee3-702d110ed6b3	rsa-generated	675d35ab-979e-4d81-b10c-f03f25d56da7	rsa-generated	org.keycloak.keys.KeyProvider	675d35ab-979e-4d81-b10c-f03f25d56da7	\N
4800a463-e0b1-4283-997c-d588f11851bf	rsa-enc-generated	675d35ab-979e-4d81-b10c-f03f25d56da7	rsa-enc-generated	org.keycloak.keys.KeyProvider	675d35ab-979e-4d81-b10c-f03f25d56da7	\N
d0801736-a9ba-42ec-8587-8300571198e9	hmac-generated	675d35ab-979e-4d81-b10c-f03f25d56da7	hmac-generated	org.keycloak.keys.KeyProvider	675d35ab-979e-4d81-b10c-f03f25d56da7	\N
fee7d732-dd89-4c54-a18d-8fcac36460d9	aes-generated	675d35ab-979e-4d81-b10c-f03f25d56da7	aes-generated	org.keycloak.keys.KeyProvider	675d35ab-979e-4d81-b10c-f03f25d56da7	\N
76882780-17ef-435c-800c-50e0eb56046b	rsa-generated	7c54d901-12e8-4d3c-b1c0-87753e3330c2	rsa-generated	org.keycloak.keys.KeyProvider	7c54d901-12e8-4d3c-b1c0-87753e3330c2	\N
8337c5c4-589b-45de-98b3-2f1905b4bf74	rsa-enc-generated	7c54d901-12e8-4d3c-b1c0-87753e3330c2	rsa-enc-generated	org.keycloak.keys.KeyProvider	7c54d901-12e8-4d3c-b1c0-87753e3330c2	\N
b37618c1-67c4-4fd6-b012-2de10b002106	hmac-generated	7c54d901-12e8-4d3c-b1c0-87753e3330c2	hmac-generated	org.keycloak.keys.KeyProvider	7c54d901-12e8-4d3c-b1c0-87753e3330c2	\N
c56ea145-1207-48e8-b47c-f63fc292acd7	aes-generated	7c54d901-12e8-4d3c-b1c0-87753e3330c2	aes-generated	org.keycloak.keys.KeyProvider	7c54d901-12e8-4d3c-b1c0-87753e3330c2	\N
e59d71ad-6984-42b2-8c28-8668ded70072	Trusted Hosts	7c54d901-12e8-4d3c-b1c0-87753e3330c2	trusted-hosts	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	7c54d901-12e8-4d3c-b1c0-87753e3330c2	anonymous
064b02e0-06d5-403e-a710-400c7de31a09	Consent Required	7c54d901-12e8-4d3c-b1c0-87753e3330c2	consent-required	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	7c54d901-12e8-4d3c-b1c0-87753e3330c2	anonymous
3cf36fd9-6e4b-41e3-874b-19b1751770fc	Full Scope Disabled	7c54d901-12e8-4d3c-b1c0-87753e3330c2	scope	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	7c54d901-12e8-4d3c-b1c0-87753e3330c2	anonymous
84f7ead0-bf79-48a0-bd80-761c4b836b4d	Max Clients Limit	7c54d901-12e8-4d3c-b1c0-87753e3330c2	max-clients	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	7c54d901-12e8-4d3c-b1c0-87753e3330c2	anonymous
fba05dfd-1299-4cf5-a69c-95a43d39a4db	Allowed Protocol Mapper Types	7c54d901-12e8-4d3c-b1c0-87753e3330c2	allowed-protocol-mappers	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	7c54d901-12e8-4d3c-b1c0-87753e3330c2	anonymous
6997dd56-c0ba-4e0f-81a8-404f0af9e5b5	Allowed Client Scopes	7c54d901-12e8-4d3c-b1c0-87753e3330c2	allowed-client-templates	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	7c54d901-12e8-4d3c-b1c0-87753e3330c2	anonymous
08457e9c-a0b0-4ced-9b4b-b147bf6ed2c7	Allowed Protocol Mapper Types	7c54d901-12e8-4d3c-b1c0-87753e3330c2	allowed-protocol-mappers	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	7c54d901-12e8-4d3c-b1c0-87753e3330c2	authenticated
397a54f1-2ea4-4080-aef1-7e2fa3f769ba	Allowed Client Scopes	7c54d901-12e8-4d3c-b1c0-87753e3330c2	allowed-client-templates	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	7c54d901-12e8-4d3c-b1c0-87753e3330c2	authenticated
\.


--
-- TOC entry 4225 (class 0 OID 25739)
-- Dependencies: 293
-- Data for Name: component_config; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.component_config (id, component_id, name, value) FROM stdin;
8f05b538-8388-4978-88d8-4bdaf7c2a603	af490a56-bf59-4090-8291-585e6822f55f	host-sending-registration-request-must-match	true
a3405013-8e34-44f8-9d5c-27a25fbc5bf6	af490a56-bf59-4090-8291-585e6822f55f	client-uris-must-match	true
d4cdaae7-335d-4501-8029-6b05bb8f9dd6	1d0775a8-ae3f-47fc-a8b4-1208195bbb1d	max-clients	200
5c05c771-1eea-4d06-ad71-3de344de5d74	56293838-69f4-4bed-95c3-fb5460e1cba0	allowed-protocol-mapper-types	oidc-usermodel-property-mapper
70257697-c0a1-4896-932d-ff9ee456209b	56293838-69f4-4bed-95c3-fb5460e1cba0	allowed-protocol-mapper-types	oidc-usermodel-attribute-mapper
563a5e46-ce05-434b-a347-b3c16787c582	56293838-69f4-4bed-95c3-fb5460e1cba0	allowed-protocol-mapper-types	saml-user-property-mapper
eb6570b0-4392-4aa5-b959-f81815284c66	56293838-69f4-4bed-95c3-fb5460e1cba0	allowed-protocol-mapper-types	oidc-sha256-pairwise-sub-mapper
e0877dcd-409a-48fc-b2a0-0294771a5363	56293838-69f4-4bed-95c3-fb5460e1cba0	allowed-protocol-mapper-types	oidc-address-mapper
08d14ebf-679a-4397-93bd-4a60984bc287	56293838-69f4-4bed-95c3-fb5460e1cba0	allowed-protocol-mapper-types	oidc-full-name-mapper
034958a5-5863-4d44-8fb9-d015946980f2	56293838-69f4-4bed-95c3-fb5460e1cba0	allowed-protocol-mapper-types	saml-user-attribute-mapper
c562355c-f302-43db-a4c1-9507b4bf3e2a	56293838-69f4-4bed-95c3-fb5460e1cba0	allowed-protocol-mapper-types	saml-role-list-mapper
d87a16f5-d00b-4b88-9d6b-440a981fa831	beb7a80a-0998-4fc6-a796-884dc89ff5d9	allowed-protocol-mapper-types	oidc-usermodel-attribute-mapper
5ca1569f-91a7-4585-aeb5-1747d9c994cd	beb7a80a-0998-4fc6-a796-884dc89ff5d9	allowed-protocol-mapper-types	saml-user-property-mapper
8bc5068f-efbc-4220-a571-49f6fbc6dab5	beb7a80a-0998-4fc6-a796-884dc89ff5d9	allowed-protocol-mapper-types	oidc-sha256-pairwise-sub-mapper
8a7837e6-842b-4b39-bcdb-85bd94e77e0b	beb7a80a-0998-4fc6-a796-884dc89ff5d9	allowed-protocol-mapper-types	saml-role-list-mapper
6cbfffb6-3bed-40dc-a499-2c6c6353734c	beb7a80a-0998-4fc6-a796-884dc89ff5d9	allowed-protocol-mapper-types	oidc-usermodel-property-mapper
cfb0fc96-af2e-49f9-bee7-4b2f082da26c	beb7a80a-0998-4fc6-a796-884dc89ff5d9	allowed-protocol-mapper-types	oidc-full-name-mapper
12d24f40-c727-4a9c-b25b-44ddb663f5bb	beb7a80a-0998-4fc6-a796-884dc89ff5d9	allowed-protocol-mapper-types	saml-user-attribute-mapper
fb64e84a-7855-4daf-acd1-24cd184e0c45	beb7a80a-0998-4fc6-a796-884dc89ff5d9	allowed-protocol-mapper-types	oidc-address-mapper
54092ec3-670f-41e3-8fea-f37c92393a6e	d844b4e9-93b5-46d7-b16b-cf121665d7b8	allow-default-scopes	true
81d0aed7-54a4-4b1d-9ab8-2fe0e769885d	2f25b4a4-a945-40f3-b149-02b40613ddcd	allow-default-scopes	true
51d04e7e-3933-459f-9a83-cadd816511cf	4800a463-e0b1-4283-997c-d588f11851bf	privateKey	MIIEogIBAAKCAQEAwtRIU6nKj6oTIQiu+4mZq3KvkopfA24kdRfCRBgYKYr04l+I48cP5c7LQzgiUmyFkn5joktEJmSpgTqqS7qojhLYGXnVzmaTyTTIKHdy3K9simxpNa8kHCa1v/SzLDmcpGt1z3DohZ+uhNcRbxGoqH2e+aFvgJwstDSxqWZuYm+4x5gL7VVduR8DY8u5+Vb69Lzqa0ZTnjLE4Y1mi6Z6UHfIOuvdTOFMO6/NXLhuYjWGZDpizHJ0EO4X5wf8HyPvCkaZrnw4iQDD6Tbx87Yid1iBnEUAgt6+7ETadLCm41gyY88GIDNrncz883oqn5dyxIUraO37Ne1J2gp7KoNrxwIDAQABAoIBAFYVb+OviPXTYuJcsNwpX0G2ycbI5tRgLTGjjs2Bi+OHJ06CgbyK7wZOSddojRm4I4in2aQS94izP4X/AtG1Jtankt4mzAaHolLrxGjE5naF+EJtRktXGHBr1jB7kVNAHWs0o/hFXif0dyrw0B4wQkI4Ry7rWpYL62CwS7Oas7k/90F7aGDykhXR9gp/qkTVsOGn823ODMZZCS6u0bUhYaMsbxXGHMB0gmesSMTztGmtlAoBJonz5HXAUXpbzWJBW09pWI2StoEdLXxEZdTNFzqUPhEpXtnZK77Cos0ljaMb41lGBXnjBo32dvXZw/dgIALqohRWvqrGog+e/TH72DkCgYEA+xnQbvaZuigESECTSLTD2uR+qMreslqWAThDq7TXvAmLV1vQkOgK8ceRH6EZakI1t2ryxKr8kwnZ5Vb8Yjz1XrqCmehyQV4AkdEkukvjaQuWyJi7Jp03vTq2ODM5vBJgJdC49ESUbtB9PsMuzOo7OzzstlVYzRVewB+Cw52Flw0CgYEAxqFn3qEcfQthMUxZmNxldOwWExvnszCEpGcvpXZ1/lu75PTzQ1qLYGthDzwd0KIm7BcAIIVtXuDKs+nq1vsmenNaOrcYhoM1CkEBLjZBmqG3Voij3oTR7olR3eNcbHEIruowt8NgG8wuAexbKDrWEtlpFIBBDVUabP5/OQOdmSMCgYBX3MyGR1u7O81jytS+mCIAMfvv7CzIk9HxU1K6fmkOrvhG9SWhztAlkgNB4gkWmVxadd3E21/Nw6CvEyT06wegwfp5CFESdmYUn+4OEgfc9eUpA+hYtqKOYEDqoWIOYQ+rq8FMF8Mok2N/1qRFp6BaNhNOKccM2/FvoJcNA81+8QKBgDh6rrlMIHih4roM1rEzghnUA5bdaW23TxAcUxz+aSCxXuUEjaNKPLVm8wtM8cFgSib5h0y4A9hlnN25ltAYS+GnqTFm3K9q4YsP3tEQFmlssGAHrGjaZYMpQsEQJDilj22FI+Msx8g/r5lWZrkyuapUbZ+ptFWhLElvuCczEv33AoGACm5V7eyndkJ3BujJYBHtvj0eCTEhhXSpeXvg6KSw4EhiA2ubYs8jRQ+1brZnCeTqDtA/mX7DNnMwcnqPFSqATJrP/VTuamA3x4UN3uVzydYzUxG+I0nJLHoCHF6f8Nya/umZyGGxg371dZy4K6uLqn5Gs8dlDbhKNSttsvaU0k8=
549a772c-f87d-4b44-b346-73ca74e5171b	4800a463-e0b1-4283-997c-d588f11851bf	algorithm	RSA-OAEP
fcd86138-bbe1-4d4c-b55b-f64c342c7930	4800a463-e0b1-4283-997c-d588f11851bf	certificate	MIICmzCCAYMCBgGMAGpwkzANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZtYXN0ZXIwHhcNMjMxMTI0MDgxODQ0WhcNMzMxMTI0MDgyMDI0WjARMQ8wDQYDVQQDDAZtYXN0ZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDC1EhTqcqPqhMhCK77iZmrcq+Sil8DbiR1F8JEGBgpivTiX4jjxw/lzstDOCJSbIWSfmOiS0QmZKmBOqpLuqiOEtgZedXOZpPJNMgod3Lcr2yKbGk1ryQcJrW/9LMsOZyka3XPcOiFn66E1xFvEaiofZ75oW+AnCy0NLGpZm5ib7jHmAvtVV25HwNjy7n5Vvr0vOprRlOeMsThjWaLpnpQd8g6691M4Uw7r81cuG5iNYZkOmLMcnQQ7hfnB/wfI+8KRpmufDiJAMPpNvHztiJ3WIGcRQCC3r7sRNp0sKbjWDJjzwYgM2udzPzzeiqfl3LEhSto7fs17UnaCnsqg2vHAgMBAAEwDQYJKoZIhvcNAQELBQADggEBAHIXhZpNkSAfs7kcnKTc9nrg2dNjrlqthGj8kLaGciowxYUHtRtKrxnAvhHKTpGlkeJE/yExrGCR+4kwLIkwEq99i/1/i/7FHxyic8NZt8xGxgbhtFfktUUtUTT1cuzjkg21h+9/np4eREG6TBnJMEyD7n1B7jUpG15UAfJ8rBwFhXbkshXlFTH9Yi76o7o75758e5DsDxnL2gIl/1HUnd324zd5OwnrvfILXChx4/gxLwkBHZU6n1SoyQATfwrzvnHTksh/7fLqcN9NEc+XOppT6S9XFRYJAmoS4rtCf8ekEjz4xMiwOOSQTGCm3XIdhxJpFi+kOeJtFht2I1nsrv0=
4f5b5dd6-e095-4143-842c-42dfbdbb0e9e	4800a463-e0b1-4283-997c-d588f11851bf	priority	100
93eef197-4f2a-44bc-8a76-553eb7739e2c	4800a463-e0b1-4283-997c-d588f11851bf	keyUse	ENC
dada5f55-2ce1-4051-9a62-111aaf419f17	fee7d732-dd89-4c54-a18d-8fcac36460d9	priority	100
272d6ae0-7913-4640-b7a5-3dc12f60fa29	fee7d732-dd89-4c54-a18d-8fcac36460d9	kid	2f705642-f2f8-4f59-8236-d17557961c95
f2de791d-53e8-4a6e-8ce0-659c330e2cf0	fee7d732-dd89-4c54-a18d-8fcac36460d9	secret	mQ4zYdltK_3VR1NvqizRCw
5b794a5f-5519-4c7d-abef-1eb72a942138	d0801736-a9ba-42ec-8587-8300571198e9	priority	100
ce080ccc-0033-4103-b156-f5b71948d63c	d0801736-a9ba-42ec-8587-8300571198e9	algorithm	HS256
16f79b1e-7135-4385-bbe2-454b76956308	d0801736-a9ba-42ec-8587-8300571198e9	kid	d3a47cd6-a7b0-4302-90ef-219b0712b035
9f68994c-3ce6-4b59-84d6-3494f99e2121	d0801736-a9ba-42ec-8587-8300571198e9	secret	WljdZEb66T3Mezqb7S7jSbU9wdJP3YUopTT_o6q_QNbSf_s8KIUqUjzg9KBaJ5Vurk7nGc0tevbNyOv4-yWElg
c2f98f90-2082-4892-9f1c-cee17ad3806d	1116e75a-b8f3-4d00-9ee3-702d110ed6b3	privateKey	MIIEogIBAAKCAQEAhV/IWVjOOl8BgNX2kYRJyC+AdGkyEoljj3OP3GATjUQt6ewxzwo3DXc+x+SdEmj2z9x3dqNeLryTsi6R8QGPwLS49pXB+k3dagr8tjmUh0WNa919Z7Gr6dI1OEzz53SUF4NtXtxtc11mkoZubb3QOV3EbwlLU6GpfBvewgXaVdJoUcYICV8WAl4capNE7RNg6mwjVSi1ucRjJcQl9gX0B8NEBzE5TdkOhn6HwpmVlhB1L88pRBT45VkT6JAE/CZRuGyQhP0Rrq8v5TyWCrDxO/ME2GZRpAEFgxxP93pwQBuMfmCsnmM3EUQ2G6nqn14L60V/2u2z4pgehyMS5jUDBwIDAQABAoIBAAVWzb7h4rOMfRNqvUma+Zcla6d9VI9QZ6dk8WPZhr7XdV0RYvcOSiDkXqOC39TOVd8BTNj3djw5uVHfMmFq9hW5RlQ8r3y1JEFr+izTRkJaAuzH+46smpysGQxNbFAeJxV/4d9zxH/jQ8lmz0HeYNkDC2uEfDr3VEEPHo42zMQ1rsL/VwQBGjS5ZF/Do8Z1iBHQohR/UZv2hGHA7Bq/l6Uvho4cIKB938uTG8pRa3tQvDG2jJ88kamZIEAa0XVRx/sd+SEHOrdBBqXIhCupGL/uTKiJySuOe0NUfJAzU6P6JQAUnpeyOPO6XI1eAUzxYzlZZ+9dXeU4Lpl+MpTZTPkCgYEAujlKuVuS07NEltmrFmP3zQmawjJiyBcKnwYVWXQlV8UN+Yztj8iKbilYQS4DP9KSPkXyY+Uv7+Y1nMhu9Fuwte1pXA5rZ31Uy3RUATzxe83J6yr+4sfYT06J3egSju6B3hPmTRZEJ9y+zweZZN4Uv5qq6Q2KXFKfzO0fD585uPkCgYEAt1keQ5HtamHfyzj8hfUMsaeqTx6iygpXwzgYyLvehdbEu9oR0yB1YuTLZL1a4TsOPbNKqWLgdXCk6155zrLH77isCthoBffObI8La/MLxlIy/vTWdVDM9Ky3iUQPiZCoXoZsQYtDDUIm0hnQ7tpxiIwQ4GZQiFgAJI00KTsvm/8CgYAsc9iefnmCB1zsFXF9msdgLla+3IAv+zAR3cXi4JK5bNR1KWrb06cXvM7QYEduSLmYG+JMbj0PKwjJMB8sPWblRpLL4rVIsuY22sHiucV7JBh7BnxpbgL4i2rliaxEajKd7GohJJuIWG1DxjCbn1eclTMPBqhseVyj8kZj2EJTIQKBgDNHz7kiZX7tpQRYCfkFkulVdcLvVKShw+4sEHKEaTaR3TCVS4r7dxmT2Hdypqp8M/152hYKO7FdMiNKp1Lymg0oX6Yg5OdWafve/ljQ/6gWcYDxxdHGKaz9adAQoy/cr9rQShMC+lwI9oapBdDoc/y3ADljJH8d7dxLSh2GGkjNAoGAUNZ/6hPakzK5rZE8WASZZfoD5J+0n4W0fVm9TEbYQY+DCsj5j+xp4ouzJKKnurw5YHYhMoy8fbj6dWPM+BH+19W4MuKpNIEWaoJ66J4cO636vMPaw+IFSqccx8WJ+633aduGlvhsT8lEy6gWiZrPCgm0torGm0pI02X+wtSUNa4=
28a98ddd-c136-4390-b11f-17fe7986f5c7	1116e75a-b8f3-4d00-9ee3-702d110ed6b3	priority	100
061c727a-9f1c-4f84-9e2c-ecf3bfefce8f	1116e75a-b8f3-4d00-9ee3-702d110ed6b3	certificate	MIICmzCCAYMCBgGMAGpvZDANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZtYXN0ZXIwHhcNMjMxMTI0MDgxODQ0WhcNMzMxMTI0MDgyMDI0WjARMQ8wDQYDVQQDDAZtYXN0ZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCFX8hZWM46XwGA1faRhEnIL4B0aTISiWOPc4/cYBONRC3p7DHPCjcNdz7H5J0SaPbP3Hd2o14uvJOyLpHxAY/AtLj2lcH6Td1qCvy2OZSHRY1r3X1nsavp0jU4TPPndJQXg21e3G1zXWaShm5tvdA5XcRvCUtToal8G97CBdpV0mhRxggJXxYCXhxqk0TtE2DqbCNVKLW5xGMlxCX2BfQHw0QHMTlN2Q6GfofCmZWWEHUvzylEFPjlWRPokAT8JlG4bJCE/RGury/lPJYKsPE78wTYZlGkAQWDHE/3enBAG4x+YKyeYzcRRDYbqeqfXgvrRX/a7bPimB6HIxLmNQMHAgMBAAEwDQYJKoZIhvcNAQELBQADggEBAG7LCyDFuWDzxNdg93PtGXGwc8J0xP0ZP5FufjlRGlIJhi/beZZb/ZBtGyw6bVDUQUQJiZUGxNT0U1ZJYWPNI3Ai10AtGX3M3Bs69MlPqy9S3lF5Musdmi7K+CbqSXAUtg/JSnykGeL3MWZh6T/VVLVSpLkpHsZL4A9mLv3Y75ATgGViQ1lx/o0DYMRYTXulj2nLGJBOqkV6JgX7oJJu6C2tJfeFarE80T0X0Ecvz2ES40MFZHAe4pboe0ADZY/7MKUrEWtranEFQIX6Oz8BakwgS1+eU023ASmjhbG56J2nYxv9o0w7XUYu0/noQS8wRYLmN/wfYFD33u680zSfV0o=
ff23da28-c0ce-4bed-8897-5b8e9ba70154	1116e75a-b8f3-4d00-9ee3-702d110ed6b3	keyUse	SIG
bd38b6b2-1910-4cfb-b08a-2de27e2aa56f	76882780-17ef-435c-800c-50e0eb56046b	certificate	MIICpTCCAY0CBgGMARFUVDANBgkqhkiG9w0BAQsFADAWMRQwEgYDVQQDDAtwb2tlc3RhdGlvbjAeFw0yMzExMjQxMTIxMDJaFw0zMzExMjQxMTIyNDJaMBYxFDASBgNVBAMMC3Bva2VzdGF0aW9uMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA3NWBR6g5D0mbC2LVOYDsaK0QYjEYhGW7tirOU4fLBVL+D/p/SDGs4A5ZU0yiJs1y4tizc3tYlQwUW7dM0sXKdt6zPJFHM2jZKFBy/ddql5311Ol1c9DRuvbV8zotNcZJpni8+O2ZpRdo8E+AWHqcA1BbreQIWSJQcd4nMKpnS74W2MpHBjdWtfbiWXzo6N9G9GXCroBTgYCw/bpY0dS11XxXcu8WsIH6mpAMzC/O7N8sBILFR4YuKDeAJF5iiHov9EsYkkbxPFfnak/4lU8dtlKayaU7TR8iz44yovRJ1D1TQjRWG0d2usLdpShgNQNNqkn1T3O1aUdFJ06jEIiMAwIDAQABMA0GCSqGSIb3DQEBCwUAA4IBAQCb4PAwb35e5JTNGZBXGMBcYqMR9EOgXoyANu2ZfTUL0FuZ720YLrb2z0JkrPp5fYluCqLjYVG3Ou0e66sf+RXu0zyXuE8f6p7kIVIjE4kMNtglj6dB76Ac0b/wrPWzerruu4LDKtjnQfhp3OlPlhHQQhSYxcnq6Hij9ksbdTFymLwes0uIdVRgfwSq6pBiVRyE4vpuwLUwNEch9/078M+CrB9CklnhQm4dSs3kf095QNvIMIqfez3FOP7uyYKNr3NiMiBF9O9XR0YMiUbXgFTltCCZJ3E4gIIY0WzJzvOosd7Ucf34mXMgF4H3t3J1LXtVWEOo9TdAxvBA/WIINWjj
efdf60f6-bb3c-414b-b04b-83d251c23f4c	76882780-17ef-435c-800c-50e0eb56046b	privateKey	MIIEpAIBAAKCAQEA3NWBR6g5D0mbC2LVOYDsaK0QYjEYhGW7tirOU4fLBVL+D/p/SDGs4A5ZU0yiJs1y4tizc3tYlQwUW7dM0sXKdt6zPJFHM2jZKFBy/ddql5311Ol1c9DRuvbV8zotNcZJpni8+O2ZpRdo8E+AWHqcA1BbreQIWSJQcd4nMKpnS74W2MpHBjdWtfbiWXzo6N9G9GXCroBTgYCw/bpY0dS11XxXcu8WsIH6mpAMzC/O7N8sBILFR4YuKDeAJF5iiHov9EsYkkbxPFfnak/4lU8dtlKayaU7TR8iz44yovRJ1D1TQjRWG0d2usLdpShgNQNNqkn1T3O1aUdFJ06jEIiMAwIDAQABAoIBACzUSsI5LBwmXQsarR5XRaaaO1Ezlj6KSGjal7ftQRF7n4eu2lfVfbqeLxPx4pjt6/yQ8RzoVTsskJVtyHKhJFCtNMV+2G1fQ3YjnrRZHpJYxqbKHcW9BlZl9VjC3pqj/h+FMxd1ZFNXRT5DZVKQ0Ur67SGHwQoXJS14Y4xFi2Kce41N/37kXk8dg2tw8yRfRabFL5d371vTyokZO5k3cnelc5sfprelX+BM5mgUACZb9x6AkoZ1c9r+rq1vPEJptHVahofxqY3MzoltpaybEgkHsqAs7KE9ksOTO4lPJTi6wi74GKzqedxZj2Chn+B6DWO9Zbkq1qrfo5Q1ri5Ms0ECgYEA71tZvUJAmGjnoToCn9oEko0EyjmnnOep5dIcPDczzkdt7MO+n66hr1bH0iFjaRljOr/+D2DRf2wBkrhqoR//Z+oy/HT5QIfna8rNrYaibBV9d6VG51ldiha9S0jpmKff9x5duovwHlGdCDPbvV7lVpRe0D8a0z2znZk2QsMDgGcCgYEA7DBwwO90Qdn+bSGMejdLMebJEIkFiDFoc3w1fztIKjpQs6PjnTKYkVoC55kz/nzkNRtsNuuh24XSTAPGnm6tJBzk7WxsmmTid87+2MqejsJbm/yBy5kLQZIP4bj4ZtLF1AZkZFp6xlh04vJvQzM2e4PuWW49LX2BNi6hBxiCZgUCgYBxPcjhL50b/lXIA4gGVMFhDHK9sjVImJna72MIYh2SdFzfbWSca6R3LhlvovhDWw2FWBw87lNvc4vy/GkGPfs6EKV6p2TdUO7+In7YoB/r/ubTWlCHV9JXaJa6LY7G+HWPlsBFZ7t8vKQMo2xM1b6vDZcl8xUf58s4vqnbQCRB9QKBgQDUKXc/eFmgRafMdBRyPHUpcDwwxETZ4DgJdQvBLIlYlWWk2JU/whFWj9qIHBCei6WbJvUAKI4OWZlcew/RhW22QNZLh9fOoMzl/mTibLAdYO1Vo28cam+4CPKHOta31qGqIcvQcY5T2WW17zyOytQoA4z5fJMr589H0n8Hlrab2QKBgQDZKXbOT/9vq7F2IgQs1Cl69jzIp9+nQbMvfhz96+J3ffTSuZ2Dv2Nf5jwpzHQeJ2OSjiKkUpFn0K1/o3aBHAqNmQ3WKwf9GOrShEkMHlDw7nkA+vRpxaeGC/6i7eeAIXrD/CR5Lbmk7rHcSJzxvH3x5WpUgLjD1wkBKfwrbk5Z3A==
e6fb8d32-0c99-4438-8ece-6f4acada45b6	76882780-17ef-435c-800c-50e0eb56046b	keyUse	SIG
4f44bf69-87f7-485a-86ee-21cebb63ea60	76882780-17ef-435c-800c-50e0eb56046b	priority	100
a94dd292-7310-4166-8eef-31878fcdb2fb	8337c5c4-589b-45de-98b3-2f1905b4bf74	keyUse	ENC
7d3d50a5-603d-4e69-94ac-6eb5b0de100b	8337c5c4-589b-45de-98b3-2f1905b4bf74	priority	100
7c721722-b249-4bf7-8f40-5fac94775502	8337c5c4-589b-45de-98b3-2f1905b4bf74	privateKey	MIIEpAIBAAKCAQEAu38nlqIiqs8mZuJp4rU+VEt8oLXoqKn19dXXGDdtBEdxOo4IPLFBYgXE3tb1GhQFO9eWP37kCQwKujXP244vEIC6yk/6aMLT6RpV5WDrHt0hA4Qqpmmvw91Khnct7U94Enp7B8N1qoMgOJU8jNIYrGKpy62tWzbzGG+EyvgrutTA8gscdPpmujHeBK18DqMck+CKvrs83m2toKhb5RSNiWSgFZeYd2FdNhaYOyh9duZ3+r82amGK2qqZ4vbmZUIhk0NGajjh+unun+KbliQftia2ST23aGEOqfIv7WhCJyIk2Xo1NDl6m4DvvvL5WzwdPfkrs1oEmImPMKIYOYQeqwIDAQABAoIBAAK3xyUh2IrNUesv4QUOR4cFSRszR9oaDJyxqtqJAyWKu5Nzt57Zmu8G0mHAj/D+1UyWxXDKMBgJeqZUXVz7ZKdClnKUUjbujA/W9+PJUd8yqWXZppye75NRQ+FLHPlRq5Xo/JuSM8Ry/iaT0zrfWMg27esr61VlKIT0KOKgUlH0+Sngh6WH4vQEIS9ov9cYcC0V2lURzz2vpWR8laOQUF22KPiDOKDxXfMn2YTskMcqUj+eYYSxXcAkh8QXRfSZAj1AAZdFBjbeaB+LbUcYRobdSmh995ZrHKropNb8PDgKeBszzjEgOkN0Z5lP6xku5YBhV5+d4ghn94lqJPYkovECgYEA9kDKIitYrLF7J12MssIr3T1e68gZ+pFr1auGccoYJ0FxoGR2VX40Hhn0kht0+QMmQxz4IDuRyzRTAGoPgW8uogzMYRf4/tOLMq3JHbB51yHUFVnkjdbTNLKRKzEsyoDM7PTBBw56mIZL7ubSMJiFZXEfmY7FAJbkh0ciewGH8EcCgYEAwusA+KeIzgBWdQaKFVUDkezdZiAXNGyQ6bUBAT19xA0P6wfZRimu5G0HbwKTQsXp3Qi5Tnukg2uFb0RYj5KmZ73o7Q/LEyYf8u5yvEZB1GYFwVSRuvr/0Mxy3xvgD475BMgu1YJU4AM94alepwyNCNZS1UC9h/h7jB7wsRUP1H0CgYEA1Gu9Mc58drO+zY1YMldm6TjoabG6HzhUcgO9POkc/rfoYXhnz4XHRXQUUfjXZXp/BgO2Um+waz6ensvexkN3UZiCsPqx8nffKn9Y7oBuCdMHlMdvbZ8zn9CtgzmvLpv+qiTTYdfujyXB2LpJ9FuNLp1vqdHLRJ/lUIBfUQZYEj8CgYBCBsk1ccrtvT+MNMLhpwKmk84LoiM6JuyPvjiw6tuHZcVWoDoBgm00A5rZB85KeDBYJ3ReGZQI0ItKvaQiPlMQIUydwRPRUMDR0eQb0tDJ2iVo7/TNmei+GgNvgEnN+2hvLkBvIs8NcwurPWxKuf2sWK2Gf3+0Z3+yX2i5E6FhIQKBgQDzYYWX448k+rSGL4BPjxk/X0rw5gt64cwpjpPB9fAjxusWvb7D/1Y/GuYzYDCpkZZpc1CIfK+7Wl45fc6arn9i5spD+lSibM0AxUSfA9FVyNmqX7KK/n6R+Bz0ZLYu+njdnvCJ0JiUZLE5xP9eZ4Dt92Zqg6bPQWk5ypcBVkXfUg==
49f02538-6b15-42d7-90b5-f765742420fc	8337c5c4-589b-45de-98b3-2f1905b4bf74	certificate	MIICpTCCAY0CBgGMARFWBTANBgkqhkiG9w0BAQsFADAWMRQwEgYDVQQDDAtwb2tlc3RhdGlvbjAeFw0yMzExMjQxMTIxMDJaFw0zMzExMjQxMTIyNDJaMBYxFDASBgNVBAMMC3Bva2VzdGF0aW9uMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAu38nlqIiqs8mZuJp4rU+VEt8oLXoqKn19dXXGDdtBEdxOo4IPLFBYgXE3tb1GhQFO9eWP37kCQwKujXP244vEIC6yk/6aMLT6RpV5WDrHt0hA4Qqpmmvw91Khnct7U94Enp7B8N1qoMgOJU8jNIYrGKpy62tWzbzGG+EyvgrutTA8gscdPpmujHeBK18DqMck+CKvrs83m2toKhb5RSNiWSgFZeYd2FdNhaYOyh9duZ3+r82amGK2qqZ4vbmZUIhk0NGajjh+unun+KbliQftia2ST23aGEOqfIv7WhCJyIk2Xo1NDl6m4DvvvL5WzwdPfkrs1oEmImPMKIYOYQeqwIDAQABMA0GCSqGSIb3DQEBCwUAA4IBAQAQCoFu8Ye9YSc7YWwGhQkfRN7r8mey35toN7Hq5Hdp0yNAUDt7NUMLGOYIQUH0g8c53npNR9jDBlQA8zHQkE8FK988ve+uqdet5fhROyl497WgAjMV3Gco7yDmR03Y1AxpHOGY24tL1EiRQ77gDcQEFv91xA9itIe4qTxfp4HQ97mDGgrfO5eFdx20nlLMI6qBHHdsVzS5VVk/k/LrrQVHpPTy04xkIoTPYVRCJ1GgOAlLpaVKqrSeHnrnexw2laOB7c3FmMLwZy9NWvmj+LheiFwpBTLtqZ7IyJ3S2dcUcGiuY/xbNgH8Je3IMzIVlYr00/4ysbETpPBEz5hDIvlw
e60bb95f-e458-4868-b3ac-22553a92d543	8337c5c4-589b-45de-98b3-2f1905b4bf74	algorithm	RSA-OAEP
fd88281f-5f01-4cb7-a991-0ecb0d81330f	b37618c1-67c4-4fd6-b012-2de10b002106	priority	100
8bf97633-f3f8-43fb-b49f-bfa786d008da	b37618c1-67c4-4fd6-b012-2de10b002106	secret	DGPMCoLNmPDcyE36kQSOp5l8hXW5ySjIa9xSjp8TeH8I5J4JlpsutMtzPdXnBxmo9D7lFtMQ7jCugcDzyZx2-g
c184c704-7e95-4c4d-ac5d-d29b96184248	b37618c1-67c4-4fd6-b012-2de10b002106	kid	d853bd86-f6fa-489e-888c-b7886c3b7299
4662b569-5ff5-4984-87f4-f257c3c11017	b37618c1-67c4-4fd6-b012-2de10b002106	algorithm	HS256
5ed0025b-8960-49e0-a6d0-c945d7711d7f	c56ea145-1207-48e8-b47c-f63fc292acd7	priority	100
7bab04dd-a30f-4c07-a13b-cdf2ab6c49f4	c56ea145-1207-48e8-b47c-f63fc292acd7	kid	96790def-5b1a-4620-bb2e-e0c7e5ec8926
fb8b0609-396c-4e7e-9ab1-10b8f5317403	c56ea145-1207-48e8-b47c-f63fc292acd7	secret	CYnV6ZRgXGQLQDtsTQtXRQ
0734986a-7c0f-499c-8223-e5b45c111117	08457e9c-a0b0-4ced-9b4b-b147bf6ed2c7	allowed-protocol-mapper-types	oidc-usermodel-attribute-mapper
123d66a0-30ad-47e8-88d2-1cf16f7357db	08457e9c-a0b0-4ced-9b4b-b147bf6ed2c7	allowed-protocol-mapper-types	saml-user-property-mapper
d9f52162-9fb4-40f2-b900-98f6dbb453c6	08457e9c-a0b0-4ced-9b4b-b147bf6ed2c7	allowed-protocol-mapper-types	saml-user-attribute-mapper
45575b77-e1cd-4731-b21b-35777d408d8a	08457e9c-a0b0-4ced-9b4b-b147bf6ed2c7	allowed-protocol-mapper-types	oidc-usermodel-property-mapper
ea94d626-e76b-4240-b309-471076ba21a4	08457e9c-a0b0-4ced-9b4b-b147bf6ed2c7	allowed-protocol-mapper-types	saml-role-list-mapper
1c063698-083b-4d9e-ad0e-d61e427f2d33	08457e9c-a0b0-4ced-9b4b-b147bf6ed2c7	allowed-protocol-mapper-types	oidc-sha256-pairwise-sub-mapper
b8169848-514c-43df-852c-fda4eb53023b	08457e9c-a0b0-4ced-9b4b-b147bf6ed2c7	allowed-protocol-mapper-types	oidc-address-mapper
eab2a990-5ef7-4e03-b7e7-f2564d4a6047	08457e9c-a0b0-4ced-9b4b-b147bf6ed2c7	allowed-protocol-mapper-types	oidc-full-name-mapper
17b55312-69aa-4b81-bca6-2391281b55a1	fba05dfd-1299-4cf5-a69c-95a43d39a4db	allowed-protocol-mapper-types	saml-user-attribute-mapper
a173d9e1-9245-4278-b5c4-8161498a590d	fba05dfd-1299-4cf5-a69c-95a43d39a4db	allowed-protocol-mapper-types	oidc-sha256-pairwise-sub-mapper
9152fcea-b350-4df6-9cf7-9ccda5d80ab3	fba05dfd-1299-4cf5-a69c-95a43d39a4db	allowed-protocol-mapper-types	oidc-usermodel-property-mapper
03a92521-5814-4c40-836a-e9d9329a7b29	fba05dfd-1299-4cf5-a69c-95a43d39a4db	allowed-protocol-mapper-types	saml-user-property-mapper
6f6928e6-04fe-4719-9895-45881ae0629a	fba05dfd-1299-4cf5-a69c-95a43d39a4db	allowed-protocol-mapper-types	saml-role-list-mapper
048a98f8-7366-4441-9490-0e74e0a5e148	fba05dfd-1299-4cf5-a69c-95a43d39a4db	allowed-protocol-mapper-types	oidc-full-name-mapper
e29986e2-5d0e-4cfb-beb1-5188dc77baae	fba05dfd-1299-4cf5-a69c-95a43d39a4db	allowed-protocol-mapper-types	oidc-address-mapper
b012b26e-2397-407b-92d9-9a24c186b9b5	fba05dfd-1299-4cf5-a69c-95a43d39a4db	allowed-protocol-mapper-types	oidc-usermodel-attribute-mapper
69631870-e477-4b00-ad4e-37875707b10e	397a54f1-2ea4-4080-aef1-7e2fa3f769ba	allow-default-scopes	true
1c5f67b8-f28c-4602-98ff-4ebe47c79475	6997dd56-c0ba-4e0f-81a8-404f0af9e5b5	allow-default-scopes	true
2b6a8e2e-03a0-485a-bb28-11ad74487a60	84f7ead0-bf79-48a0-bd80-761c4b836b4d	max-clients	200
843509b9-c6b0-463f-84c0-c0779c0c1470	e59d71ad-6984-42b2-8c28-8668ded70072	client-uris-must-match	true
a5d3b819-1910-4785-88c0-4516f4d7f779	e59d71ad-6984-42b2-8c28-8668ded70072	host-sending-registration-request-must-match	true
\.


--
-- TOC entry 4152 (class 0 OID 24641)
-- Dependencies: 220
-- Data for Name: composite_role; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.composite_role (composite, child_role) FROM stdin;
989fb074-be13-4d2b-8c69-b10dbe004223	e68ed883-fd0c-4cdb-be06-a3cc9ea9a267
989fb074-be13-4d2b-8c69-b10dbe004223	232a2244-829e-4bdf-96d4-0ccaa811153a
989fb074-be13-4d2b-8c69-b10dbe004223	d6f69b35-ffb5-40f3-bab2-dde3d0b4aeca
989fb074-be13-4d2b-8c69-b10dbe004223	98b85452-9eba-4f09-8679-34dc5f4d7d64
989fb074-be13-4d2b-8c69-b10dbe004223	fccdeade-c822-426b-babb-34ee7f84f803
989fb074-be13-4d2b-8c69-b10dbe004223	04d54871-9d8e-4d27-ad06-74753588a400
989fb074-be13-4d2b-8c69-b10dbe004223	8cd8beaa-18e6-4288-99f5-dce73eca4d24
989fb074-be13-4d2b-8c69-b10dbe004223	eab37684-8c3e-48bd-8844-f2712ac4b769
989fb074-be13-4d2b-8c69-b10dbe004223	79a6a26c-048d-4332-810d-1c98f1fda383
989fb074-be13-4d2b-8c69-b10dbe004223	3f80d6a6-04c5-4b17-af33-a5b209f196fb
989fb074-be13-4d2b-8c69-b10dbe004223	54f1ff4d-7b9d-401f-8e79-0b85c462ba83
989fb074-be13-4d2b-8c69-b10dbe004223	6b237f99-870a-423c-9a82-7e88a275ac76
989fb074-be13-4d2b-8c69-b10dbe004223	b60e0323-e20a-4de6-aa15-6d2e6b529b0b
989fb074-be13-4d2b-8c69-b10dbe004223	dbf0b488-30b1-4ee5-b870-5cc6bb553a92
989fb074-be13-4d2b-8c69-b10dbe004223	4875fb7b-4ac8-438c-bc61-b6cc0980be87
989fb074-be13-4d2b-8c69-b10dbe004223	c7412f45-6d5c-4a05-b130-495f7aad8451
989fb074-be13-4d2b-8c69-b10dbe004223	7bb016e7-6b88-4d81-9c3b-5a3182e565b4
989fb074-be13-4d2b-8c69-b10dbe004223	2e9d0d2d-37e9-4597-a75f-b69bd41468ae
7602d760-06ed-479b-b580-926782d70d21	02aaff58-8da7-4453-92bc-54cafe541f8d
98b85452-9eba-4f09-8679-34dc5f4d7d64	4875fb7b-4ac8-438c-bc61-b6cc0980be87
98b85452-9eba-4f09-8679-34dc5f4d7d64	2e9d0d2d-37e9-4597-a75f-b69bd41468ae
fccdeade-c822-426b-babb-34ee7f84f803	c7412f45-6d5c-4a05-b130-495f7aad8451
7602d760-06ed-479b-b580-926782d70d21	9a3a5f17-35fa-4790-a9cf-1b34708659c2
9a3a5f17-35fa-4790-a9cf-1b34708659c2	e24adfb6-0281-43b9-a1d0-44646e51efee
57c9a3b6-23e7-4147-87b8-877563866771	163c09c2-7aa9-4cda-ae16-cc47dbc0655a
989fb074-be13-4d2b-8c69-b10dbe004223	9b426fb2-4f35-4560-b7b8-7e1df7cc4292
7602d760-06ed-479b-b580-926782d70d21	4ade3a46-de6f-453e-a869-aa6f55d34997
7602d760-06ed-479b-b580-926782d70d21	bd26713b-eae5-4f68-a151-59ae5a4ed35f
989fb074-be13-4d2b-8c69-b10dbe004223	0dcd2c0e-bb7b-4053-bb7b-f29edf758033
989fb074-be13-4d2b-8c69-b10dbe004223	7f0f4eaa-fe17-45ea-870f-a597a74fe31f
989fb074-be13-4d2b-8c69-b10dbe004223	11d02d42-a0db-4217-861c-e470526fa7da
989fb074-be13-4d2b-8c69-b10dbe004223	982d4814-c183-4a92-9f9c-2c5fc8d58e80
989fb074-be13-4d2b-8c69-b10dbe004223	3e4a3e1f-d12d-4e0c-a570-d7266d1c078b
989fb074-be13-4d2b-8c69-b10dbe004223	43958dd9-40d2-4573-95a0-52cc46e3440e
989fb074-be13-4d2b-8c69-b10dbe004223	a703d695-2ead-4c6c-bab0-4603284c99bf
989fb074-be13-4d2b-8c69-b10dbe004223	f5da0730-1b44-443d-92a3-c49998b65123
989fb074-be13-4d2b-8c69-b10dbe004223	35558cf6-656d-4df8-b169-01fdb665981f
989fb074-be13-4d2b-8c69-b10dbe004223	6b71ff90-7a76-4379-9ef3-0d93509b1d77
989fb074-be13-4d2b-8c69-b10dbe004223	995206f0-2b33-4383-b21f-9ddbe9fc4619
989fb074-be13-4d2b-8c69-b10dbe004223	4961293a-78c6-4517-b2ec-93db1b2ff28e
989fb074-be13-4d2b-8c69-b10dbe004223	c634b7ec-b154-47e5-95f4-ac128656bc20
989fb074-be13-4d2b-8c69-b10dbe004223	3e7be44b-4ec8-464e-ab8c-b9f2c845645d
989fb074-be13-4d2b-8c69-b10dbe004223	526b9dc6-de30-4c0a-9022-e1275a006e26
989fb074-be13-4d2b-8c69-b10dbe004223	4568112e-937b-4d10-b1f0-0ae00a2dc61f
989fb074-be13-4d2b-8c69-b10dbe004223	72352d4b-0532-481e-aabc-041cdd6ffd00
11d02d42-a0db-4217-861c-e470526fa7da	72352d4b-0532-481e-aabc-041cdd6ffd00
11d02d42-a0db-4217-861c-e470526fa7da	3e7be44b-4ec8-464e-ab8c-b9f2c845645d
982d4814-c183-4a92-9f9c-2c5fc8d58e80	526b9dc6-de30-4c0a-9022-e1275a006e26
b4b0d5e4-cd39-4831-bf6f-12697d76ead7	cd33d819-601a-417f-9ad7-b567dedde561
b4b0d5e4-cd39-4831-bf6f-12697d76ead7	7114d7ad-1c4e-40a9-ba03-9730368e4967
b4b0d5e4-cd39-4831-bf6f-12697d76ead7	34b8ed32-fa78-4186-a58d-cb904dcbba65
b4b0d5e4-cd39-4831-bf6f-12697d76ead7	af6a9e30-465b-42e7-ac67-191ee5459066
b4b0d5e4-cd39-4831-bf6f-12697d76ead7	6fd3ded2-16c1-47aa-b95b-5a673a407988
b4b0d5e4-cd39-4831-bf6f-12697d76ead7	c498ba8b-d0a2-4511-a865-262421c81f5d
b4b0d5e4-cd39-4831-bf6f-12697d76ead7	5327eb9e-10a0-493d-ba49-ddb8e4716167
b4b0d5e4-cd39-4831-bf6f-12697d76ead7	b11b5e65-40e8-4d8b-853a-8be98bb7bef2
b4b0d5e4-cd39-4831-bf6f-12697d76ead7	faa4c226-ddb1-4aca-9214-b54225f5ecd0
b4b0d5e4-cd39-4831-bf6f-12697d76ead7	8a4fec41-0ea6-4135-8c93-b85719e12c05
b4b0d5e4-cd39-4831-bf6f-12697d76ead7	d405e581-65dd-4e20-b5f3-adfd14d86e69
b4b0d5e4-cd39-4831-bf6f-12697d76ead7	27560740-ca99-46a8-99b8-fa096d2f7285
b4b0d5e4-cd39-4831-bf6f-12697d76ead7	a8432f2d-d683-4291-b290-6571abb1f2d1
b4b0d5e4-cd39-4831-bf6f-12697d76ead7	dc1d0885-b8e9-4080-b21a-32e4f5cf5451
b4b0d5e4-cd39-4831-bf6f-12697d76ead7	b500d9d7-e095-4825-a4c3-1f5ef2969780
b4b0d5e4-cd39-4831-bf6f-12697d76ead7	5704a8c9-2362-403e-85f8-6b5a652b3722
b4b0d5e4-cd39-4831-bf6f-12697d76ead7	23c39e64-fdba-43c6-896e-43a37d173032
150c44df-b575-4473-8071-543338246bf1	0fc5c8bc-ca1a-4b4e-8ae1-beee1fd264e8
34b8ed32-fa78-4186-a58d-cb904dcbba65	dc1d0885-b8e9-4080-b21a-32e4f5cf5451
34b8ed32-fa78-4186-a58d-cb904dcbba65	23c39e64-fdba-43c6-896e-43a37d173032
af6a9e30-465b-42e7-ac67-191ee5459066	b500d9d7-e095-4825-a4c3-1f5ef2969780
150c44df-b575-4473-8071-543338246bf1	2bc72bce-a457-461c-b8c0-5bfd30d2681d
2bc72bce-a457-461c-b8c0-5bfd30d2681d	868deba0-7bc6-4703-b101-613961f0494b
d0a3a7e1-223c-4be1-ab24-738d621cf4da	4b901a27-f625-468e-94e0-fbe69d8eb10e
989fb074-be13-4d2b-8c69-b10dbe004223	a44b8b81-165b-4704-af63-71644cd133f8
b4b0d5e4-cd39-4831-bf6f-12697d76ead7	a28ea859-b72c-4170-95ca-d7c406ed2b26
150c44df-b575-4473-8071-543338246bf1	e454d97b-71ec-465f-b3a7-b89f9a597fca
150c44df-b575-4473-8071-543338246bf1	41e88e6d-9672-4ff1-8591-1b0373fe8414
\.


--
-- TOC entry 4153 (class 0 OID 24644)
-- Dependencies: 221
-- Data for Name: credential; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.credential (id, salt, type, user_id, created_date, user_label, secret_data, credential_data, priority) FROM stdin;
7aa24866-3e7d-4e1b-8e97-7cf5a1101b1c	\N	password	02ff9cd8-d1c5-426e-90d7-353ef7202641	1700814026209	\N	{"value":"a+R7OibuCZhunuH22Gy0y8cNXA6NLladPMTwWMf/+RU=","salt":"luiAorusomUAW2nevsejpg==","additionalParameters":{}}	{"hashIterations":27500,"algorithm":"pbkdf2-sha256","additionalParameters":{}}	10
53073a18-120b-43bb-ae30-b30e3fbb047a	\N	password	99057d7f-ccdf-4d08-9ff6-1e882c7256dc	1700913208385	My password	{"value":"vUTRlnFy0UF8J00EevLFRTteNqS+F6FrlyhTL6KqB6s=","salt":"+J9ZlaVVL1JESPa0sLh2pw==","additionalParameters":{}}	{"hashIterations":27500,"algorithm":"pbkdf2-sha256","additionalParameters":{}}	10
2c7aba4e-4c4a-4d3c-9af2-6135fc2226fa	\N	password	c1c9f836-2b6d-4deb-b028-3859dd709501	1700913260023	My password	{"value":"ZkYX57Ar7YSQufdpOBHkdKiwf5MebEOZsX7/lPAvfVQ=","salt":"KVzMSbD/1fBk8DxQ+ExHkg==","additionalParameters":{}}	{"hashIterations":27500,"algorithm":"pbkdf2-sha256","additionalParameters":{}}	10
\.


--
-- TOC entry 4148 (class 0 OID 24614)
-- Dependencies: 216
-- Data for Name: databasechangelog; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.databasechangelog (id, author, filename, dateexecuted, orderexecuted, exectype, md5sum, description, comments, tag, liquibase, contexts, labels, deployment_id) FROM stdin;
1.0.0.Final-KEYCLOAK-5461	sthorger@redhat.com	META-INF/jpa-changelog-1.0.0.Final.xml	2023-11-24 08:20:17.036881	1	EXECUTED	9:6f1016664e21e16d26517a4418f5e3df	createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...		\N	4.23.2	\N	\N	0814015225
1.0.0.Final-KEYCLOAK-5461	sthorger@redhat.com	META-INF/db2-jpa-changelog-1.0.0.Final.xml	2023-11-24 08:20:17.125286	2	MARK_RAN	9:828775b1596a07d1200ba1d49e5e3941	createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...		\N	4.23.2	\N	\N	0814015225
1.1.0.Beta1	sthorger@redhat.com	META-INF/jpa-changelog-1.1.0.Beta1.xml	2023-11-24 08:20:17.224562	3	EXECUTED	9:5f090e44a7d595883c1fb61f4b41fd38	delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=CLIENT_ATTRIBUTES; createTable tableName=CLIENT_SESSION_NOTE; createTable tableName=APP_NODE_REGISTRATIONS; addColumn table...		\N	4.23.2	\N	\N	0814015225
1.1.0.Final	sthorger@redhat.com	META-INF/jpa-changelog-1.1.0.Final.xml	2023-11-24 08:20:17.233723	4	EXECUTED	9:c07e577387a3d2c04d1adc9aaad8730e	renameColumn newColumnName=EVENT_TIME, oldColumnName=TIME, tableName=EVENT_ENTITY		\N	4.23.2	\N	\N	0814015225
1.2.0.Beta1	psilva@redhat.com	META-INF/jpa-changelog-1.2.0.Beta1.xml	2023-11-24 08:20:17.487954	5	EXECUTED	9:b68ce996c655922dbcd2fe6b6ae72686	delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...		\N	4.23.2	\N	\N	0814015225
1.2.0.Beta1	psilva@redhat.com	META-INF/db2-jpa-changelog-1.2.0.Beta1.xml	2023-11-24 08:20:17.521341	6	MARK_RAN	9:543b5c9989f024fe35c6f6c5a97de88e	delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...		\N	4.23.2	\N	\N	0814015225
1.2.0.RC1	bburke@redhat.com	META-INF/jpa-changelog-1.2.0.CR1.xml	2023-11-24 08:20:17.780476	7	EXECUTED	9:765afebbe21cf5bbca048e632df38336	delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...		\N	4.23.2	\N	\N	0814015225
1.2.0.RC1	bburke@redhat.com	META-INF/db2-jpa-changelog-1.2.0.CR1.xml	2023-11-24 08:20:17.818367	8	MARK_RAN	9:db4a145ba11a6fdaefb397f6dbf829a1	delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...		\N	4.23.2	\N	\N	0814015225
1.2.0.Final	keycloak	META-INF/jpa-changelog-1.2.0.Final.xml	2023-11-24 08:20:17.840189	9	EXECUTED	9:9d05c7be10cdb873f8bcb41bc3a8ab23	update tableName=CLIENT; update tableName=CLIENT; update tableName=CLIENT		\N	4.23.2	\N	\N	0814015225
1.3.0	bburke@redhat.com	META-INF/jpa-changelog-1.3.0.xml	2023-11-24 08:20:18.100782	10	EXECUTED	9:18593702353128d53111f9b1ff0b82b8	delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=ADMI...		\N	4.23.2	\N	\N	0814015225
1.4.0	bburke@redhat.com	META-INF/jpa-changelog-1.4.0.xml	2023-11-24 08:20:18.245443	11	EXECUTED	9:6122efe5f090e41a85c0f1c9e52cbb62	delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...		\N	4.23.2	\N	\N	0814015225
1.4.0	bburke@redhat.com	META-INF/db2-jpa-changelog-1.4.0.xml	2023-11-24 08:20:18.2644	12	MARK_RAN	9:e1ff28bf7568451453f844c5d54bb0b5	delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...		\N	4.23.2	\N	\N	0814015225
1.5.0	bburke@redhat.com	META-INF/jpa-changelog-1.5.0.xml	2023-11-24 08:20:18.329766	13	EXECUTED	9:7af32cd8957fbc069f796b61217483fd	delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...		\N	4.23.2	\N	\N	0814015225
1.6.1_from15	mposolda@redhat.com	META-INF/jpa-changelog-1.6.1.xml	2023-11-24 08:20:18.379449	14	EXECUTED	9:6005e15e84714cd83226bf7879f54190	addColumn tableName=REALM; addColumn tableName=KEYCLOAK_ROLE; addColumn tableName=CLIENT; createTable tableName=OFFLINE_USER_SESSION; createTable tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_US_SES_PK2, tableName=...		\N	4.23.2	\N	\N	0814015225
1.6.1_from16-pre	mposolda@redhat.com	META-INF/jpa-changelog-1.6.1.xml	2023-11-24 08:20:18.383826	15	MARK_RAN	9:bf656f5a2b055d07f314431cae76f06c	delete tableName=OFFLINE_CLIENT_SESSION; delete tableName=OFFLINE_USER_SESSION		\N	4.23.2	\N	\N	0814015225
1.6.1_from16	mposolda@redhat.com	META-INF/jpa-changelog-1.6.1.xml	2023-11-24 08:20:18.392401	16	MARK_RAN	9:f8dadc9284440469dcf71e25ca6ab99b	dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_US_SES_PK, tableName=OFFLINE_USER_SESSION; dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_CL_SES_PK, tableName=OFFLINE_CLIENT_SESSION; addColumn tableName=OFFLINE_USER_SESSION; update tableName=OF...		\N	4.23.2	\N	\N	0814015225
1.6.1	mposolda@redhat.com	META-INF/jpa-changelog-1.6.1.xml	2023-11-24 08:20:18.400967	17	EXECUTED	9:d41d8cd98f00b204e9800998ecf8427e	empty		\N	4.23.2	\N	\N	0814015225
1.7.0	bburke@redhat.com	META-INF/jpa-changelog-1.7.0.xml	2023-11-24 08:20:18.523904	18	EXECUTED	9:3368ff0be4c2855ee2dd9ca813b38d8e	createTable tableName=KEYCLOAK_GROUP; createTable tableName=GROUP_ROLE_MAPPING; createTable tableName=GROUP_ATTRIBUTE; createTable tableName=USER_GROUP_MEMBERSHIP; createTable tableName=REALM_DEFAULT_GROUPS; addColumn tableName=IDENTITY_PROVIDER; ...		\N	4.23.2	\N	\N	0814015225
1.8.0	mposolda@redhat.com	META-INF/jpa-changelog-1.8.0.xml	2023-11-24 08:20:18.651526	19	EXECUTED	9:8ac2fb5dd030b24c0570a763ed75ed20	addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...		\N	4.23.2	\N	\N	0814015225
1.8.0-2	keycloak	META-INF/jpa-changelog-1.8.0.xml	2023-11-24 08:20:18.662448	20	EXECUTED	9:f91ddca9b19743db60e3057679810e6c	dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL		\N	4.23.2	\N	\N	0814015225
1.8.0	mposolda@redhat.com	META-INF/db2-jpa-changelog-1.8.0.xml	2023-11-24 08:20:18.679324	21	MARK_RAN	9:831e82914316dc8a57dc09d755f23c51	addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...		\N	4.23.2	\N	\N	0814015225
1.8.0-2	keycloak	META-INF/db2-jpa-changelog-1.8.0.xml	2023-11-24 08:20:18.686105	22	MARK_RAN	9:f91ddca9b19743db60e3057679810e6c	dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL		\N	4.23.2	\N	\N	0814015225
1.9.0	mposolda@redhat.com	META-INF/jpa-changelog-1.9.0.xml	2023-11-24 08:20:18.758177	23	EXECUTED	9:bc3d0f9e823a69dc21e23e94c7a94bb1	update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=REALM; update tableName=REALM; customChange; dr...		\N	4.23.2	\N	\N	0814015225
1.9.1	keycloak	META-INF/jpa-changelog-1.9.1.xml	2023-11-24 08:20:18.780116	24	EXECUTED	9:c9999da42f543575ab790e76439a2679	modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=PUBLIC_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM		\N	4.23.2	\N	\N	0814015225
1.9.1	keycloak	META-INF/db2-jpa-changelog-1.9.1.xml	2023-11-24 08:20:18.784483	25	MARK_RAN	9:0d6c65c6f58732d81569e77b10ba301d	modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM		\N	4.23.2	\N	\N	0814015225
1.9.2	keycloak	META-INF/jpa-changelog-1.9.2.xml	2023-11-24 08:20:18.861734	26	EXECUTED	9:fc576660fc016ae53d2d4778d84d86d0	createIndex indexName=IDX_USER_EMAIL, tableName=USER_ENTITY; createIndex indexName=IDX_USER_ROLE_MAPPING, tableName=USER_ROLE_MAPPING; createIndex indexName=IDX_USER_GROUP_MAPPING, tableName=USER_GROUP_MEMBERSHIP; createIndex indexName=IDX_USER_CO...		\N	4.23.2	\N	\N	0814015225
authz-2.0.0	psilva@redhat.com	META-INF/jpa-changelog-authz-2.0.0.xml	2023-11-24 08:20:19.040673	27	EXECUTED	9:43ed6b0da89ff77206289e87eaa9c024	createTable tableName=RESOURCE_SERVER; addPrimaryKey constraintName=CONSTRAINT_FARS, tableName=RESOURCE_SERVER; addUniqueConstraint constraintName=UK_AU8TT6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER; createTable tableName=RESOURCE_SERVER_RESOU...		\N	4.23.2	\N	\N	0814015225
authz-2.5.1	psilva@redhat.com	META-INF/jpa-changelog-authz-2.5.1.xml	2023-11-24 08:20:19.052254	28	EXECUTED	9:44bae577f551b3738740281eceb4ea70	update tableName=RESOURCE_SERVER_POLICY		\N	4.23.2	\N	\N	0814015225
2.1.0-KEYCLOAK-5461	bburke@redhat.com	META-INF/jpa-changelog-2.1.0.xml	2023-11-24 08:20:19.188922	29	EXECUTED	9:bd88e1f833df0420b01e114533aee5e8	createTable tableName=BROKER_LINK; createTable tableName=FED_USER_ATTRIBUTE; createTable tableName=FED_USER_CONSENT; createTable tableName=FED_USER_CONSENT_ROLE; createTable tableName=FED_USER_CONSENT_PROT_MAPPER; createTable tableName=FED_USER_CR...		\N	4.23.2	\N	\N	0814015225
2.2.0	bburke@redhat.com	META-INF/jpa-changelog-2.2.0.xml	2023-11-24 08:20:19.220048	30	EXECUTED	9:a7022af5267f019d020edfe316ef4371	addColumn tableName=ADMIN_EVENT_ENTITY; createTable tableName=CREDENTIAL_ATTRIBUTE; createTable tableName=FED_CREDENTIAL_ATTRIBUTE; modifyDataType columnName=VALUE, tableName=CREDENTIAL; addForeignKeyConstraint baseTableName=FED_CREDENTIAL_ATTRIBU...		\N	4.23.2	\N	\N	0814015225
2.3.0	bburke@redhat.com	META-INF/jpa-changelog-2.3.0.xml	2023-11-24 08:20:19.268057	31	EXECUTED	9:fc155c394040654d6a79227e56f5e25a	createTable tableName=FEDERATED_USER; addPrimaryKey constraintName=CONSTR_FEDERATED_USER, tableName=FEDERATED_USER; dropDefaultValue columnName=TOTP, tableName=USER_ENTITY; dropColumn columnName=TOTP, tableName=USER_ENTITY; addColumn tableName=IDE...		\N	4.23.2	\N	\N	0814015225
2.4.0	bburke@redhat.com	META-INF/jpa-changelog-2.4.0.xml	2023-11-24 08:20:19.278723	32	EXECUTED	9:eac4ffb2a14795e5dc7b426063e54d88	customChange		\N	4.23.2	\N	\N	0814015225
2.5.0	bburke@redhat.com	META-INF/jpa-changelog-2.5.0.xml	2023-11-24 08:20:19.291661	33	EXECUTED	9:54937c05672568c4c64fc9524c1e9462	customChange; modifyDataType columnName=USER_ID, tableName=OFFLINE_USER_SESSION		\N	4.23.2	\N	\N	0814015225
2.5.0-unicode-oracle	hmlnarik@redhat.com	META-INF/jpa-changelog-2.5.0.xml	2023-11-24 08:20:19.300237	34	MARK_RAN	9:3a32bace77c84d7678d035a7f5a8084e	modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...		\N	4.23.2	\N	\N	0814015225
2.5.0-unicode-other-dbs	hmlnarik@redhat.com	META-INF/jpa-changelog-2.5.0.xml	2023-11-24 08:20:19.374364	35	EXECUTED	9:33d72168746f81f98ae3a1e8e0ca3554	modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...		\N	4.23.2	\N	\N	0814015225
2.5.0-duplicate-email-support	slawomir@dabek.name	META-INF/jpa-changelog-2.5.0.xml	2023-11-24 08:20:19.386255	36	EXECUTED	9:61b6d3d7a4c0e0024b0c839da283da0c	addColumn tableName=REALM		\N	4.23.2	\N	\N	0814015225
2.5.0-unique-group-names	hmlnarik@redhat.com	META-INF/jpa-changelog-2.5.0.xml	2023-11-24 08:20:19.398255	37	EXECUTED	9:8dcac7bdf7378e7d823cdfddebf72fda	addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP		\N	4.23.2	\N	\N	0814015225
2.5.1	bburke@redhat.com	META-INF/jpa-changelog-2.5.1.xml	2023-11-24 08:20:19.411151	38	EXECUTED	9:a2b870802540cb3faa72098db5388af3	addColumn tableName=FED_USER_CONSENT		\N	4.23.2	\N	\N	0814015225
3.0.0	bburke@redhat.com	META-INF/jpa-changelog-3.0.0.xml	2023-11-24 08:20:19.419276	39	EXECUTED	9:132a67499ba24bcc54fb5cbdcfe7e4c0	addColumn tableName=IDENTITY_PROVIDER		\N	4.23.2	\N	\N	0814015225
3.2.0-fix	keycloak	META-INF/jpa-changelog-3.2.0.xml	2023-11-24 08:20:19.423454	40	MARK_RAN	9:938f894c032f5430f2b0fafb1a243462	addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS		\N	4.23.2	\N	\N	0814015225
3.2.0-fix-with-keycloak-5416	keycloak	META-INF/jpa-changelog-3.2.0.xml	2023-11-24 08:20:19.430367	41	MARK_RAN	9:845c332ff1874dc5d35974b0babf3006	dropIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS; addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS; createIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS		\N	4.23.2	\N	\N	0814015225
3.2.0-fix-offline-sessions	hmlnarik	META-INF/jpa-changelog-3.2.0.xml	2023-11-24 08:20:19.444862	42	EXECUTED	9:fc86359c079781adc577c5a217e4d04c	customChange		\N	4.23.2	\N	\N	0814015225
3.2.0-fixed	keycloak	META-INF/jpa-changelog-3.2.0.xml	2023-11-24 08:20:19.736888	43	EXECUTED	9:59a64800e3c0d09b825f8a3b444fa8f4	addColumn tableName=REALM; dropPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_PK2, tableName=OFFLINE_CLIENT_SESSION; dropColumn columnName=CLIENT_SESSION_ID, tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_P...		\N	4.23.2	\N	\N	0814015225
3.3.0	keycloak	META-INF/jpa-changelog-3.3.0.xml	2023-11-24 08:20:19.746767	44	EXECUTED	9:d48d6da5c6ccf667807f633fe489ce88	addColumn tableName=USER_ENTITY		\N	4.23.2	\N	\N	0814015225
authz-3.4.0.CR1-resource-server-pk-change-part1	glavoie@gmail.com	META-INF/jpa-changelog-authz-3.4.0.CR1.xml	2023-11-24 08:20:19.760901	45	EXECUTED	9:dde36f7973e80d71fceee683bc5d2951	addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_RESOURCE; addColumn tableName=RESOURCE_SERVER_SCOPE		\N	4.23.2	\N	\N	0814015225
authz-3.4.0.CR1-resource-server-pk-change-part2-KEYCLOAK-6095	hmlnarik@redhat.com	META-INF/jpa-changelog-authz-3.4.0.CR1.xml	2023-11-24 08:20:19.773005	46	EXECUTED	9:b855e9b0a406b34fa323235a0cf4f640	customChange		\N	4.23.2	\N	\N	0814015225
authz-3.4.0.CR1-resource-server-pk-change-part3-fixed	glavoie@gmail.com	META-INF/jpa-changelog-authz-3.4.0.CR1.xml	2023-11-24 08:20:19.777451	47	MARK_RAN	9:51abbacd7b416c50c4421a8cabf7927e	dropIndex indexName=IDX_RES_SERV_POL_RES_SERV, tableName=RESOURCE_SERVER_POLICY; dropIndex indexName=IDX_RES_SRV_RES_RES_SRV, tableName=RESOURCE_SERVER_RESOURCE; dropIndex indexName=IDX_RES_SRV_SCOPE_RES_SRV, tableName=RESOURCE_SERVER_SCOPE		\N	4.23.2	\N	\N	0814015225
authz-3.4.0.CR1-resource-server-pk-change-part3-fixed-nodropindex	glavoie@gmail.com	META-INF/jpa-changelog-authz-3.4.0.CR1.xml	2023-11-24 08:20:19.885511	48	EXECUTED	9:bdc99e567b3398bac83263d375aad143	addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_POLICY; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_RESOURCE; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, ...		\N	4.23.2	\N	\N	0814015225
authn-3.4.0.CR1-refresh-token-max-reuse	glavoie@gmail.com	META-INF/jpa-changelog-authz-3.4.0.CR1.xml	2023-11-24 08:20:19.895428	49	EXECUTED	9:d198654156881c46bfba39abd7769e69	addColumn tableName=REALM		\N	4.23.2	\N	\N	0814015225
3.4.0	keycloak	META-INF/jpa-changelog-3.4.0.xml	2023-11-24 08:20:19.985184	50	EXECUTED	9:cfdd8736332ccdd72c5256ccb42335db	addPrimaryKey constraintName=CONSTRAINT_REALM_DEFAULT_ROLES, tableName=REALM_DEFAULT_ROLES; addPrimaryKey constraintName=CONSTRAINT_COMPOSITE_ROLE, tableName=COMPOSITE_ROLE; addPrimaryKey constraintName=CONSTR_REALM_DEFAULT_GROUPS, tableName=REALM...		\N	4.23.2	\N	\N	0814015225
3.4.0-KEYCLOAK-5230	hmlnarik@redhat.com	META-INF/jpa-changelog-3.4.0.xml	2023-11-24 08:20:20.047816	51	EXECUTED	9:7c84de3d9bd84d7f077607c1a4dcb714	createIndex indexName=IDX_FU_ATTRIBUTE, tableName=FED_USER_ATTRIBUTE; createIndex indexName=IDX_FU_CONSENT, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CONSENT_RU, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CREDENTIAL, t...		\N	4.23.2	\N	\N	0814015225
3.4.1	psilva@redhat.com	META-INF/jpa-changelog-3.4.1.xml	2023-11-24 08:20:20.057024	52	EXECUTED	9:5a6bb36cbefb6a9d6928452c0852af2d	modifyDataType columnName=VALUE, tableName=CLIENT_ATTRIBUTES		\N	4.23.2	\N	\N	0814015225
3.4.2	keycloak	META-INF/jpa-changelog-3.4.2.xml	2023-11-24 08:20:20.064323	53	EXECUTED	9:8f23e334dbc59f82e0a328373ca6ced0	update tableName=REALM		\N	4.23.2	\N	\N	0814015225
3.4.2-KEYCLOAK-5172	mkanis@redhat.com	META-INF/jpa-changelog-3.4.2.xml	2023-11-24 08:20:20.07084	54	EXECUTED	9:9156214268f09d970cdf0e1564d866af	update tableName=CLIENT		\N	4.23.2	\N	\N	0814015225
4.0.0-KEYCLOAK-6335	bburke@redhat.com	META-INF/jpa-changelog-4.0.0.xml	2023-11-24 08:20:20.086044	55	EXECUTED	9:db806613b1ed154826c02610b7dbdf74	createTable tableName=CLIENT_AUTH_FLOW_BINDINGS; addPrimaryKey constraintName=C_CLI_FLOW_BIND, tableName=CLIENT_AUTH_FLOW_BINDINGS		\N	4.23.2	\N	\N	0814015225
4.0.0-CLEANUP-UNUSED-TABLE	bburke@redhat.com	META-INF/jpa-changelog-4.0.0.xml	2023-11-24 08:20:20.099382	56	EXECUTED	9:229a041fb72d5beac76bb94a5fa709de	dropTable tableName=CLIENT_IDENTITY_PROV_MAPPING		\N	4.23.2	\N	\N	0814015225
4.0.0-KEYCLOAK-6228	bburke@redhat.com	META-INF/jpa-changelog-4.0.0.xml	2023-11-24 08:20:20.145291	57	EXECUTED	9:079899dade9c1e683f26b2aa9ca6ff04	dropUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHOGM8UEWRT, tableName=USER_CONSENT; dropNotNullConstraint columnName=CLIENT_ID, tableName=USER_CONSENT; addColumn tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHO...		\N	4.23.2	\N	\N	0814015225
4.0.0-KEYCLOAK-5579-fixed	mposolda@redhat.com	META-INF/jpa-changelog-4.0.0.xml	2023-11-24 08:20:20.425384	58	EXECUTED	9:139b79bcbbfe903bb1c2d2a4dbf001d9	dropForeignKeyConstraint baseTableName=CLIENT_TEMPLATE_ATTRIBUTES, constraintName=FK_CL_TEMPL_ATTR_TEMPL; renameTable newTableName=CLIENT_SCOPE_ATTRIBUTES, oldTableName=CLIENT_TEMPLATE_ATTRIBUTES; renameColumn newColumnName=SCOPE_ID, oldColumnName...		\N	4.23.2	\N	\N	0814015225
authz-4.0.0.CR1	psilva@redhat.com	META-INF/jpa-changelog-authz-4.0.0.CR1.xml	2023-11-24 08:20:20.514448	59	EXECUTED	9:b55738ad889860c625ba2bf483495a04	createTable tableName=RESOURCE_SERVER_PERM_TICKET; addPrimaryKey constraintName=CONSTRAINT_FAPMT, tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRHO213XCX4WNKOG82SSPMT...		\N	4.23.2	\N	\N	0814015225
authz-4.0.0.Beta3	psilva@redhat.com	META-INF/jpa-changelog-authz-4.0.0.Beta3.xml	2023-11-24 08:20:20.536417	60	EXECUTED	9:e0057eac39aa8fc8e09ac6cfa4ae15fe	addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRPO2128CX4WNKOG82SSRFY, referencedTableName=RESOURCE_SERVER_POLICY		\N	4.23.2	\N	\N	0814015225
authz-4.2.0.Final	mhajas@redhat.com	META-INF/jpa-changelog-authz-4.2.0.Final.xml	2023-11-24 08:20:20.565602	61	EXECUTED	9:42a33806f3a0443fe0e7feeec821326c	createTable tableName=RESOURCE_URIS; addForeignKeyConstraint baseTableName=RESOURCE_URIS, constraintName=FK_RESOURCE_SERVER_URIS, referencedTableName=RESOURCE_SERVER_RESOURCE; customChange; dropColumn columnName=URI, tableName=RESOURCE_SERVER_RESO...		\N	4.23.2	\N	\N	0814015225
authz-4.2.0.Final-KEYCLOAK-9944	hmlnarik@redhat.com	META-INF/jpa-changelog-authz-4.2.0.Final.xml	2023-11-24 08:20:20.580086	62	EXECUTED	9:9968206fca46eecc1f51db9c024bfe56	addPrimaryKey constraintName=CONSTRAINT_RESOUR_URIS_PK, tableName=RESOURCE_URIS		\N	4.23.2	\N	\N	0814015225
4.2.0-KEYCLOAK-6313	wadahiro@gmail.com	META-INF/jpa-changelog-4.2.0.xml	2023-11-24 08:20:20.590069	63	EXECUTED	9:92143a6daea0a3f3b8f598c97ce55c3d	addColumn tableName=REQUIRED_ACTION_PROVIDER		\N	4.23.2	\N	\N	0814015225
4.3.0-KEYCLOAK-7984	wadahiro@gmail.com	META-INF/jpa-changelog-4.3.0.xml	2023-11-24 08:20:20.597824	64	EXECUTED	9:82bab26a27195d889fb0429003b18f40	update tableName=REQUIRED_ACTION_PROVIDER		\N	4.23.2	\N	\N	0814015225
4.6.0-KEYCLOAK-7950	psilva@redhat.com	META-INF/jpa-changelog-4.6.0.xml	2023-11-24 08:20:20.605321	65	EXECUTED	9:e590c88ddc0b38b0ae4249bbfcb5abc3	update tableName=RESOURCE_SERVER_RESOURCE		\N	4.23.2	\N	\N	0814015225
4.6.0-KEYCLOAK-8377	keycloak	META-INF/jpa-changelog-4.6.0.xml	2023-11-24 08:20:20.632549	66	EXECUTED	9:5c1f475536118dbdc38d5d7977950cc0	createTable tableName=ROLE_ATTRIBUTE; addPrimaryKey constraintName=CONSTRAINT_ROLE_ATTRIBUTE_PK, tableName=ROLE_ATTRIBUTE; addForeignKeyConstraint baseTableName=ROLE_ATTRIBUTE, constraintName=FK_ROLE_ATTRIBUTE_ID, referencedTableName=KEYCLOAK_ROLE...		\N	4.23.2	\N	\N	0814015225
4.6.0-KEYCLOAK-8555	gideonray@gmail.com	META-INF/jpa-changelog-4.6.0.xml	2023-11-24 08:20:20.644819	67	EXECUTED	9:e7c9f5f9c4d67ccbbcc215440c718a17	createIndex indexName=IDX_COMPONENT_PROVIDER_TYPE, tableName=COMPONENT		\N	4.23.2	\N	\N	0814015225
4.7.0-KEYCLOAK-1267	sguilhen@redhat.com	META-INF/jpa-changelog-4.7.0.xml	2023-11-24 08:20:20.65584	68	EXECUTED	9:88e0bfdda924690d6f4e430c53447dd5	addColumn tableName=REALM		\N	4.23.2	\N	\N	0814015225
4.7.0-KEYCLOAK-7275	keycloak	META-INF/jpa-changelog-4.7.0.xml	2023-11-24 08:20:20.688621	69	EXECUTED	9:f53177f137e1c46b6a88c59ec1cb5218	renameColumn newColumnName=CREATED_ON, oldColumnName=LAST_SESSION_REFRESH, tableName=OFFLINE_USER_SESSION; addNotNullConstraint columnName=CREATED_ON, tableName=OFFLINE_USER_SESSION; addColumn tableName=OFFLINE_USER_SESSION; customChange; createIn...		\N	4.23.2	\N	\N	0814015225
4.8.0-KEYCLOAK-8835	sguilhen@redhat.com	META-INF/jpa-changelog-4.8.0.xml	2023-11-24 08:20:20.700435	70	EXECUTED	9:a74d33da4dc42a37ec27121580d1459f	addNotNullConstraint columnName=SSO_MAX_LIFESPAN_REMEMBER_ME, tableName=REALM; addNotNullConstraint columnName=SSO_IDLE_TIMEOUT_REMEMBER_ME, tableName=REALM		\N	4.23.2	\N	\N	0814015225
authz-7.0.0-KEYCLOAK-10443	psilva@redhat.com	META-INF/jpa-changelog-authz-7.0.0.xml	2023-11-24 08:20:20.710952	71	EXECUTED	9:fd4ade7b90c3b67fae0bfcfcb42dfb5f	addColumn tableName=RESOURCE_SERVER		\N	4.23.2	\N	\N	0814015225
8.0.0-adding-credential-columns	keycloak	META-INF/jpa-changelog-8.0.0.xml	2023-11-24 08:20:20.733545	72	EXECUTED	9:aa072ad090bbba210d8f18781b8cebf4	addColumn tableName=CREDENTIAL; addColumn tableName=FED_USER_CREDENTIAL		\N	4.23.2	\N	\N	0814015225
8.0.0-updating-credential-data-not-oracle-fixed	keycloak	META-INF/jpa-changelog-8.0.0.xml	2023-11-24 08:20:20.755699	73	EXECUTED	9:1ae6be29bab7c2aa376f6983b932be37	update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL		\N	4.23.2	\N	\N	0814015225
8.0.0-updating-credential-data-oracle-fixed	keycloak	META-INF/jpa-changelog-8.0.0.xml	2023-11-24 08:20:20.763443	74	MARK_RAN	9:14706f286953fc9a25286dbd8fb30d97	update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL		\N	4.23.2	\N	\N	0814015225
8.0.0-credential-cleanup-fixed	keycloak	META-INF/jpa-changelog-8.0.0.xml	2023-11-24 08:20:20.827062	75	EXECUTED	9:2b9cc12779be32c5b40e2e67711a218b	dropDefaultValue columnName=COUNTER, tableName=CREDENTIAL; dropDefaultValue columnName=DIGITS, tableName=CREDENTIAL; dropDefaultValue columnName=PERIOD, tableName=CREDENTIAL; dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; dropColumn ...		\N	4.23.2	\N	\N	0814015225
8.0.0-resource-tag-support	keycloak	META-INF/jpa-changelog-8.0.0.xml	2023-11-24 08:20:20.842724	76	EXECUTED	9:91fa186ce7a5af127a2d7a91ee083cc5	addColumn tableName=MIGRATION_MODEL; createIndex indexName=IDX_UPDATE_TIME, tableName=MIGRATION_MODEL		\N	4.23.2	\N	\N	0814015225
9.0.0-always-display-client	keycloak	META-INF/jpa-changelog-9.0.0.xml	2023-11-24 08:20:20.851664	77	EXECUTED	9:6335e5c94e83a2639ccd68dd24e2e5ad	addColumn tableName=CLIENT		\N	4.23.2	\N	\N	0814015225
9.0.0-drop-constraints-for-column-increase	keycloak	META-INF/jpa-changelog-9.0.0.xml	2023-11-24 08:20:20.855902	78	MARK_RAN	9:6bdb5658951e028bfe16fa0a8228b530	dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5PMT, tableName=RESOURCE_SERVER_PERM_TICKET; dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER_RESOURCE; dropPrimaryKey constraintName=CONSTRAINT_O...		\N	4.23.2	\N	\N	0814015225
9.0.0-increase-column-size-federated-fk	keycloak	META-INF/jpa-changelog-9.0.0.xml	2023-11-24 08:20:20.905928	79	EXECUTED	9:d5bc15a64117ccad481ce8792d4c608f	modifyDataType columnName=CLIENT_ID, tableName=FED_USER_CONSENT; modifyDataType columnName=CLIENT_REALM_CONSTRAINT, tableName=KEYCLOAK_ROLE; modifyDataType columnName=OWNER, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=CLIENT_ID, ta...		\N	4.23.2	\N	\N	0814015225
9.0.0-recreate-constraints-after-column-increase	keycloak	META-INF/jpa-changelog-9.0.0.xml	2023-11-24 08:20:20.91139	80	MARK_RAN	9:077cba51999515f4d3e7ad5619ab592c	addNotNullConstraint columnName=CLIENT_ID, tableName=OFFLINE_CLIENT_SESSION; addNotNullConstraint columnName=OWNER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNullConstraint columnName=REQUESTER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNull...		\N	4.23.2	\N	\N	0814015225
9.0.1-add-index-to-client.client_id	keycloak	META-INF/jpa-changelog-9.0.1.xml	2023-11-24 08:20:20.92543	81	EXECUTED	9:be969f08a163bf47c6b9e9ead8ac2afb	createIndex indexName=IDX_CLIENT_ID, tableName=CLIENT		\N	4.23.2	\N	\N	0814015225
9.0.1-KEYCLOAK-12579-drop-constraints	keycloak	META-INF/jpa-changelog-9.0.1.xml	2023-11-24 08:20:20.928495	82	MARK_RAN	9:6d3bb4408ba5a72f39bd8a0b301ec6e3	dropUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP		\N	4.23.2	\N	\N	0814015225
9.0.1-KEYCLOAK-12579-add-not-null-constraint	keycloak	META-INF/jpa-changelog-9.0.1.xml	2023-11-24 08:20:20.937473	83	EXECUTED	9:966bda61e46bebf3cc39518fbed52fa7	addNotNullConstraint columnName=PARENT_GROUP, tableName=KEYCLOAK_GROUP		\N	4.23.2	\N	\N	0814015225
9.0.1-KEYCLOAK-12579-recreate-constraints	keycloak	META-INF/jpa-changelog-9.0.1.xml	2023-11-24 08:20:20.941093	84	MARK_RAN	9:8dcac7bdf7378e7d823cdfddebf72fda	addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP		\N	4.23.2	\N	\N	0814015225
9.0.1-add-index-to-events	keycloak	META-INF/jpa-changelog-9.0.1.xml	2023-11-24 08:20:20.951595	85	EXECUTED	9:7d93d602352a30c0c317e6a609b56599	createIndex indexName=IDX_EVENT_TIME, tableName=EVENT_ENTITY		\N	4.23.2	\N	\N	0814015225
map-remove-ri	keycloak	META-INF/jpa-changelog-11.0.0.xml	2023-11-24 08:20:20.96564	86	EXECUTED	9:71c5969e6cdd8d7b6f47cebc86d37627	dropForeignKeyConstraint baseTableName=REALM, constraintName=FK_TRAF444KK6QRKMS7N56AIWQ5Y; dropForeignKeyConstraint baseTableName=KEYCLOAK_ROLE, constraintName=FK_KJHO5LE2C0RAL09FL8CM9WFW9		\N	4.23.2	\N	\N	0814015225
map-remove-ri	keycloak	META-INF/jpa-changelog-12.0.0.xml	2023-11-24 08:20:21.00085	87	EXECUTED	9:a9ba7d47f065f041b7da856a81762021	dropForeignKeyConstraint baseTableName=REALM_DEFAULT_GROUPS, constraintName=FK_DEF_GROUPS_GROUP; dropForeignKeyConstraint baseTableName=REALM_DEFAULT_ROLES, constraintName=FK_H4WPD7W4HSOOLNI3H0SW7BTJE; dropForeignKeyConstraint baseTableName=CLIENT...		\N	4.23.2	\N	\N	0814015225
12.1.0-add-realm-localization-table	keycloak	META-INF/jpa-changelog-12.0.0.xml	2023-11-24 08:20:21.023153	88	EXECUTED	9:fffabce2bc01e1a8f5110d5278500065	createTable tableName=REALM_LOCALIZATIONS; addPrimaryKey tableName=REALM_LOCALIZATIONS		\N	4.23.2	\N	\N	0814015225
default-roles	keycloak	META-INF/jpa-changelog-13.0.0.xml	2023-11-24 08:20:21.038961	89	EXECUTED	9:fa8a5b5445e3857f4b010bafb5009957	addColumn tableName=REALM; customChange		\N	4.23.2	\N	\N	0814015225
default-roles-cleanup	keycloak	META-INF/jpa-changelog-13.0.0.xml	2023-11-24 08:20:21.062135	90	EXECUTED	9:67ac3241df9a8582d591c5ed87125f39	dropTable tableName=REALM_DEFAULT_ROLES; dropTable tableName=CLIENT_DEFAULT_ROLES		\N	4.23.2	\N	\N	0814015225
13.0.0-KEYCLOAK-16844	keycloak	META-INF/jpa-changelog-13.0.0.xml	2023-11-24 08:20:21.074115	91	EXECUTED	9:ad1194d66c937e3ffc82386c050ba089	createIndex indexName=IDX_OFFLINE_USS_PRELOAD, tableName=OFFLINE_USER_SESSION		\N	4.23.2	\N	\N	0814015225
map-remove-ri-13.0.0	keycloak	META-INF/jpa-changelog-13.0.0.xml	2023-11-24 08:20:21.098744	92	EXECUTED	9:d9be619d94af5a2f5d07b9f003543b91	dropForeignKeyConstraint baseTableName=DEFAULT_CLIENT_SCOPE, constraintName=FK_R_DEF_CLI_SCOPE_SCOPE; dropForeignKeyConstraint baseTableName=CLIENT_SCOPE_CLIENT, constraintName=FK_C_CLI_SCOPE_SCOPE; dropForeignKeyConstraint baseTableName=CLIENT_SC...		\N	4.23.2	\N	\N	0814015225
13.0.0-KEYCLOAK-17992-drop-constraints	keycloak	META-INF/jpa-changelog-13.0.0.xml	2023-11-24 08:20:21.102215	93	MARK_RAN	9:544d201116a0fcc5a5da0925fbbc3bde	dropPrimaryKey constraintName=C_CLI_SCOPE_BIND, tableName=CLIENT_SCOPE_CLIENT; dropIndex indexName=IDX_CLSCOPE_CL, tableName=CLIENT_SCOPE_CLIENT; dropIndex indexName=IDX_CL_CLSCOPE, tableName=CLIENT_SCOPE_CLIENT		\N	4.23.2	\N	\N	0814015225
13.0.0-increase-column-size-federated	keycloak	META-INF/jpa-changelog-13.0.0.xml	2023-11-24 08:20:21.12175	94	EXECUTED	9:43c0c1055b6761b4b3e89de76d612ccf	modifyDataType columnName=CLIENT_ID, tableName=CLIENT_SCOPE_CLIENT; modifyDataType columnName=SCOPE_ID, tableName=CLIENT_SCOPE_CLIENT		\N	4.23.2	\N	\N	0814015225
13.0.0-KEYCLOAK-17992-recreate-constraints	keycloak	META-INF/jpa-changelog-13.0.0.xml	2023-11-24 08:20:21.126592	95	MARK_RAN	9:8bd711fd0330f4fe980494ca43ab1139	addNotNullConstraint columnName=CLIENT_ID, tableName=CLIENT_SCOPE_CLIENT; addNotNullConstraint columnName=SCOPE_ID, tableName=CLIENT_SCOPE_CLIENT; addPrimaryKey constraintName=C_CLI_SCOPE_BIND, tableName=CLIENT_SCOPE_CLIENT; createIndex indexName=...		\N	4.23.2	\N	\N	0814015225
json-string-accomodation-fixed	keycloak	META-INF/jpa-changelog-13.0.0.xml	2023-11-24 08:20:21.141254	96	EXECUTED	9:e07d2bc0970c348bb06fb63b1f82ddbf	addColumn tableName=REALM_ATTRIBUTE; update tableName=REALM_ATTRIBUTE; dropColumn columnName=VALUE, tableName=REALM_ATTRIBUTE; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=REALM_ATTRIBUTE		\N	4.23.2	\N	\N	0814015225
14.0.0-KEYCLOAK-11019	keycloak	META-INF/jpa-changelog-14.0.0.xml	2023-11-24 08:20:21.16327	97	EXECUTED	9:24fb8611e97f29989bea412aa38d12b7	createIndex indexName=IDX_OFFLINE_CSS_PRELOAD, tableName=OFFLINE_CLIENT_SESSION; createIndex indexName=IDX_OFFLINE_USS_BY_USER, tableName=OFFLINE_USER_SESSION; createIndex indexName=IDX_OFFLINE_USS_BY_USERSESS, tableName=OFFLINE_USER_SESSION		\N	4.23.2	\N	\N	0814015225
14.0.0-KEYCLOAK-18286	keycloak	META-INF/jpa-changelog-14.0.0.xml	2023-11-24 08:20:21.166809	98	MARK_RAN	9:259f89014ce2506ee84740cbf7163aa7	createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES		\N	4.23.2	\N	\N	0814015225
14.0.0-KEYCLOAK-18286-revert	keycloak	META-INF/jpa-changelog-14.0.0.xml	2023-11-24 08:20:21.184506	99	MARK_RAN	9:04baaf56c116ed19951cbc2cca584022	dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES		\N	4.23.2	\N	\N	0814015225
14.0.0-KEYCLOAK-18286-supported-dbs	keycloak	META-INF/jpa-changelog-14.0.0.xml	2023-11-24 08:20:21.197629	100	EXECUTED	9:60ca84a0f8c94ec8c3504a5a3bc88ee8	createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES		\N	4.23.2	\N	\N	0814015225
14.0.0-KEYCLOAK-18286-unsupported-dbs	keycloak	META-INF/jpa-changelog-14.0.0.xml	2023-11-24 08:20:21.200849	101	MARK_RAN	9:d3d977031d431db16e2c181ce49d73e9	createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES		\N	4.23.2	\N	\N	0814015225
KEYCLOAK-17267-add-index-to-user-attributes	keycloak	META-INF/jpa-changelog-14.0.0.xml	2023-11-24 08:20:21.215252	102	EXECUTED	9:0b305d8d1277f3a89a0a53a659ad274c	createIndex indexName=IDX_USER_ATTRIBUTE_NAME, tableName=USER_ATTRIBUTE		\N	4.23.2	\N	\N	0814015225
KEYCLOAK-18146-add-saml-art-binding-identifier	keycloak	META-INF/jpa-changelog-14.0.0.xml	2023-11-24 08:20:21.225675	103	EXECUTED	9:2c374ad2cdfe20e2905a84c8fac48460	customChange		\N	4.23.2	\N	\N	0814015225
15.0.0-KEYCLOAK-18467	keycloak	META-INF/jpa-changelog-15.0.0.xml	2023-11-24 08:20:21.236852	104	EXECUTED	9:47a760639ac597360a8219f5b768b4de	addColumn tableName=REALM_LOCALIZATIONS; update tableName=REALM_LOCALIZATIONS; dropColumn columnName=TEXTS, tableName=REALM_LOCALIZATIONS; renameColumn newColumnName=TEXTS, oldColumnName=TEXTS_NEW, tableName=REALM_LOCALIZATIONS; addNotNullConstrai...		\N	4.23.2	\N	\N	0814015225
17.0.0-9562	keycloak	META-INF/jpa-changelog-17.0.0.xml	2023-11-24 08:20:21.246453	105	EXECUTED	9:a6272f0576727dd8cad2522335f5d99e	createIndex indexName=IDX_USER_SERVICE_ACCOUNT, tableName=USER_ENTITY		\N	4.23.2	\N	\N	0814015225
18.0.0-10625-IDX_ADMIN_EVENT_TIME	keycloak	META-INF/jpa-changelog-18.0.0.xml	2023-11-24 08:20:21.256375	106	EXECUTED	9:015479dbd691d9cc8669282f4828c41d	createIndex indexName=IDX_ADMIN_EVENT_TIME, tableName=ADMIN_EVENT_ENTITY		\N	4.23.2	\N	\N	0814015225
19.0.0-10135	keycloak	META-INF/jpa-changelog-19.0.0.xml	2023-11-24 08:20:21.265151	107	EXECUTED	9:9518e495fdd22f78ad6425cc30630221	customChange		\N	4.23.2	\N	\N	0814015225
20.0.0-12964-supported-dbs	keycloak	META-INF/jpa-changelog-20.0.0.xml	2023-11-24 08:20:21.276019	108	EXECUTED	9:e5f243877199fd96bcc842f27a1656ac	createIndex indexName=IDX_GROUP_ATT_BY_NAME_VALUE, tableName=GROUP_ATTRIBUTE		\N	4.23.2	\N	\N	0814015225
20.0.0-12964-unsupported-dbs	keycloak	META-INF/jpa-changelog-20.0.0.xml	2023-11-24 08:20:21.279434	109	MARK_RAN	9:1a6fcaa85e20bdeae0a9ce49b41946a5	createIndex indexName=IDX_GROUP_ATT_BY_NAME_VALUE, tableName=GROUP_ATTRIBUTE		\N	4.23.2	\N	\N	0814015225
client-attributes-string-accomodation-fixed	keycloak	META-INF/jpa-changelog-20.0.0.xml	2023-11-24 08:20:21.294124	110	EXECUTED	9:3f332e13e90739ed0c35b0b25b7822ca	addColumn tableName=CLIENT_ATTRIBUTES; update tableName=CLIENT_ATTRIBUTES; dropColumn columnName=VALUE, tableName=CLIENT_ATTRIBUTES; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=CLIENT_ATTRIBUTES		\N	4.23.2	\N	\N	0814015225
21.0.2-17277	keycloak	META-INF/jpa-changelog-21.0.2.xml	2023-11-24 08:20:21.30192	111	EXECUTED	9:7ee1f7a3fb8f5588f171fb9a6ab623c0	customChange		\N	4.23.2	\N	\N	0814015225
21.1.0-19404	keycloak	META-INF/jpa-changelog-21.1.0.xml	2023-11-24 08:20:21.347552	112	EXECUTED	9:3d7e830b52f33676b9d64f7f2b2ea634	modifyDataType columnName=DECISION_STRATEGY, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=LOGIC, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=POLICY_ENFORCE_MODE, tableName=RESOURCE_SERVER		\N	4.23.2	\N	\N	0814015225
21.1.0-19404-2	keycloak	META-INF/jpa-changelog-21.1.0.xml	2023-11-24 08:20:21.352194	113	MARK_RAN	9:627d032e3ef2c06c0e1f73d2ae25c26c	addColumn tableName=RESOURCE_SERVER_POLICY; update tableName=RESOURCE_SERVER_POLICY; dropColumn columnName=DECISION_STRATEGY, tableName=RESOURCE_SERVER_POLICY; renameColumn newColumnName=DECISION_STRATEGY, oldColumnName=DECISION_STRATEGY_NEW, tabl...		\N	4.23.2	\N	\N	0814015225
22.0.0-17484-updated	keycloak	META-INF/jpa-changelog-22.0.0.xml	2023-11-24 08:20:21.363799	114	EXECUTED	9:90af0bfd30cafc17b9f4d6eccd92b8b3	customChange		\N	4.23.2	\N	\N	0814015225
22.0.5-24031	keycloak	META-INF/jpa-changelog-22.0.0.xml	2023-11-24 08:20:21.366704	115	MARK_RAN	9:a60d2d7b315ec2d3eba9e2f145f9df28	customChange		\N	4.23.2	\N	\N	0814015225
\.


--
-- TOC entry 4147 (class 0 OID 24609)
-- Dependencies: 215
-- Data for Name: databasechangeloglock; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.databasechangeloglock (id, locked, lockgranted, lockedby) FROM stdin;
1	f	\N	\N
1000	f	\N	\N
1001	f	\N	\N
\.


--
-- TOC entry 4231 (class 0 OID 26005)
-- Dependencies: 299
-- Data for Name: default_client_scope; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.default_client_scope (realm_id, scope_id, default_scope) FROM stdin;
675d35ab-979e-4d81-b10c-f03f25d56da7	c32ab871-d7c3-4de5-8375-5acb1949d235	f
675d35ab-979e-4d81-b10c-f03f25d56da7	01084f2a-b14b-44f6-95f2-3b8edc586962	t
675d35ab-979e-4d81-b10c-f03f25d56da7	5b8e7a78-2d70-490b-a0ff-ab22abbf6986	t
675d35ab-979e-4d81-b10c-f03f25d56da7	5d9ff23a-bb84-4bd7-a617-098195214f68	t
675d35ab-979e-4d81-b10c-f03f25d56da7	5bb0c3b8-50eb-42fb-819b-32a8b86f040e	f
675d35ab-979e-4d81-b10c-f03f25d56da7	f140148b-912e-4541-81cc-697708fc2a2d	f
675d35ab-979e-4d81-b10c-f03f25d56da7	3698f0a8-4290-4848-8ffa-bc9ad99c081b	t
675d35ab-979e-4d81-b10c-f03f25d56da7	99622f9c-4559-4e1b-819c-12889ccb6dee	t
675d35ab-979e-4d81-b10c-f03f25d56da7	ff6c5e1d-89a7-4e16-9c76-a5092e6a0a61	f
675d35ab-979e-4d81-b10c-f03f25d56da7	208b9059-2abc-4175-ae67-0e0fd1495f53	t
7c54d901-12e8-4d3c-b1c0-87753e3330c2	db677f25-5293-4a02-a5f6-fd3c6597a1c3	f
7c54d901-12e8-4d3c-b1c0-87753e3330c2	461ba461-ed6a-4459-a071-c536253866af	t
7c54d901-12e8-4d3c-b1c0-87753e3330c2	2524954e-0981-4b61-8c4e-48ade6f9e12e	t
7c54d901-12e8-4d3c-b1c0-87753e3330c2	33a7f9e9-a5d9-4be6-9ebd-cb9293687540	t
7c54d901-12e8-4d3c-b1c0-87753e3330c2	851b4fb4-7dab-4777-9a4f-822fbc89714d	f
7c54d901-12e8-4d3c-b1c0-87753e3330c2	71989a0b-6c06-43e1-8346-897634adbdae	f
7c54d901-12e8-4d3c-b1c0-87753e3330c2	805fbc1f-43a7-45d6-8b6f-e933e25bf5d8	t
7c54d901-12e8-4d3c-b1c0-87753e3330c2	0d17fd18-32a6-4305-82ec-81781309f0ff	t
7c54d901-12e8-4d3c-b1c0-87753e3330c2	e109dcfb-fa22-4a4c-93ca-b758c23848a5	f
7c54d901-12e8-4d3c-b1c0-87753e3330c2	e1d0e082-3dec-4c17-917c-e075c4e96767	t
7c54d901-12e8-4d3c-b1c0-87753e3330c2	188a0bef-6ed8-4948-8969-99f5e6793156	t
\.


--
-- TOC entry 4154 (class 0 OID 24649)
-- Dependencies: 222
-- Data for Name: event_entity; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.event_entity (id, client_id, details_json, error, ip_address, realm_id, session_id, event_time, type, user_id) FROM stdin;
\.


--
-- TOC entry 4219 (class 0 OID 25704)
-- Dependencies: 287
-- Data for Name: fed_user_attribute; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.fed_user_attribute (id, name, user_id, realm_id, storage_provider_id, value) FROM stdin;
\.


--
-- TOC entry 4220 (class 0 OID 25709)
-- Dependencies: 288
-- Data for Name: fed_user_consent; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.fed_user_consent (id, client_id, user_id, realm_id, storage_provider_id, created_date, last_updated_date, client_storage_provider, external_client_id) FROM stdin;
\.


--
-- TOC entry 4233 (class 0 OID 26031)
-- Dependencies: 301
-- Data for Name: fed_user_consent_cl_scope; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.fed_user_consent_cl_scope (user_consent_id, scope_id) FROM stdin;
\.


--
-- TOC entry 4221 (class 0 OID 25718)
-- Dependencies: 289
-- Data for Name: fed_user_credential; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.fed_user_credential (id, salt, type, created_date, user_id, realm_id, storage_provider_id, user_label, secret_data, credential_data, priority) FROM stdin;
\.


--
-- TOC entry 4222 (class 0 OID 25727)
-- Dependencies: 290
-- Data for Name: fed_user_group_membership; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.fed_user_group_membership (group_id, user_id, realm_id, storage_provider_id) FROM stdin;
\.


--
-- TOC entry 4223 (class 0 OID 25730)
-- Dependencies: 291
-- Data for Name: fed_user_required_action; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.fed_user_required_action (required_action, user_id, realm_id, storage_provider_id) FROM stdin;
\.


--
-- TOC entry 4224 (class 0 OID 25736)
-- Dependencies: 292
-- Data for Name: fed_user_role_mapping; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.fed_user_role_mapping (role_id, user_id, realm_id, storage_provider_id) FROM stdin;
\.


--
-- TOC entry 4177 (class 0 OID 25026)
-- Dependencies: 245
-- Data for Name: federated_identity; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.federated_identity (identity_provider, realm_id, federated_user_id, federated_username, token, user_id) FROM stdin;
\.


--
-- TOC entry 4227 (class 0 OID 25801)
-- Dependencies: 295
-- Data for Name: federated_user; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.federated_user (id, storage_provider_id, realm_id) FROM stdin;
\.


--
-- TOC entry 4203 (class 0 OID 25428)
-- Dependencies: 271
-- Data for Name: group_attribute; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.group_attribute (id, name, value, group_id) FROM stdin;
\.


--
-- TOC entry 4202 (class 0 OID 25425)
-- Dependencies: 270
-- Data for Name: group_role_mapping; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.group_role_mapping (role_id, group_id) FROM stdin;
daab5b2a-98ef-4f79-b5f8-53ae71f5b062	706686b4-7384-4ef6-8526-2e2faaa8e0b6
a9c6c411-a19d-407e-9f3a-02732e142e8c	01e0c787-0db9-425a-844e-5e408957cddf
\.


--
-- TOC entry 4178 (class 0 OID 25031)
-- Dependencies: 246
-- Data for Name: identity_provider; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.identity_provider (internal_id, enabled, provider_alias, provider_id, store_token, authenticate_by_default, realm_id, add_token_role, trust_email, first_broker_login_flow_id, post_broker_login_flow_id, provider_display_name, link_only) FROM stdin;
\.


--
-- TOC entry 4179 (class 0 OID 25040)
-- Dependencies: 247
-- Data for Name: identity_provider_config; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.identity_provider_config (identity_provider_id, value, name) FROM stdin;
\.


--
-- TOC entry 4184 (class 0 OID 25144)
-- Dependencies: 252
-- Data for Name: identity_provider_mapper; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.identity_provider_mapper (id, name, idp_alias, idp_mapper_name, realm_id) FROM stdin;
\.


--
-- TOC entry 4185 (class 0 OID 25149)
-- Dependencies: 253
-- Data for Name: idp_mapper_config; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.idp_mapper_config (idp_mapper_id, value, name) FROM stdin;
\.


--
-- TOC entry 4201 (class 0 OID 25422)
-- Dependencies: 269
-- Data for Name: keycloak_group; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.keycloak_group (id, name, parent_group, realm_id) FROM stdin;
706686b4-7384-4ef6-8526-2e2faaa8e0b6	ADMIN	 	7c54d901-12e8-4d3c-b1c0-87753e3330c2
01e0c787-0db9-425a-844e-5e408957cddf	USER	 	7c54d901-12e8-4d3c-b1c0-87753e3330c2
\.


--
-- TOC entry 4155 (class 0 OID 24657)
-- Dependencies: 223
-- Data for Name: keycloak_role; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.keycloak_role (id, client_realm_constraint, client_role, description, name, realm_id, client, realm) FROM stdin;
7602d760-06ed-479b-b580-926782d70d21	675d35ab-979e-4d81-b10c-f03f25d56da7	f	${role_default-roles}	default-roles-master	675d35ab-979e-4d81-b10c-f03f25d56da7	\N	\N
989fb074-be13-4d2b-8c69-b10dbe004223	675d35ab-979e-4d81-b10c-f03f25d56da7	f	${role_admin}	admin	675d35ab-979e-4d81-b10c-f03f25d56da7	\N	\N
e68ed883-fd0c-4cdb-be06-a3cc9ea9a267	675d35ab-979e-4d81-b10c-f03f25d56da7	f	${role_create-realm}	create-realm	675d35ab-979e-4d81-b10c-f03f25d56da7	\N	\N
232a2244-829e-4bdf-96d4-0ccaa811153a	1ca53b96-38fc-4af1-b70d-b66f3f2c2dfa	t	${role_create-client}	create-client	675d35ab-979e-4d81-b10c-f03f25d56da7	1ca53b96-38fc-4af1-b70d-b66f3f2c2dfa	\N
d6f69b35-ffb5-40f3-bab2-dde3d0b4aeca	1ca53b96-38fc-4af1-b70d-b66f3f2c2dfa	t	${role_view-realm}	view-realm	675d35ab-979e-4d81-b10c-f03f25d56da7	1ca53b96-38fc-4af1-b70d-b66f3f2c2dfa	\N
98b85452-9eba-4f09-8679-34dc5f4d7d64	1ca53b96-38fc-4af1-b70d-b66f3f2c2dfa	t	${role_view-users}	view-users	675d35ab-979e-4d81-b10c-f03f25d56da7	1ca53b96-38fc-4af1-b70d-b66f3f2c2dfa	\N
fccdeade-c822-426b-babb-34ee7f84f803	1ca53b96-38fc-4af1-b70d-b66f3f2c2dfa	t	${role_view-clients}	view-clients	675d35ab-979e-4d81-b10c-f03f25d56da7	1ca53b96-38fc-4af1-b70d-b66f3f2c2dfa	\N
04d54871-9d8e-4d27-ad06-74753588a400	1ca53b96-38fc-4af1-b70d-b66f3f2c2dfa	t	${role_view-events}	view-events	675d35ab-979e-4d81-b10c-f03f25d56da7	1ca53b96-38fc-4af1-b70d-b66f3f2c2dfa	\N
8cd8beaa-18e6-4288-99f5-dce73eca4d24	1ca53b96-38fc-4af1-b70d-b66f3f2c2dfa	t	${role_view-identity-providers}	view-identity-providers	675d35ab-979e-4d81-b10c-f03f25d56da7	1ca53b96-38fc-4af1-b70d-b66f3f2c2dfa	\N
eab37684-8c3e-48bd-8844-f2712ac4b769	1ca53b96-38fc-4af1-b70d-b66f3f2c2dfa	t	${role_view-authorization}	view-authorization	675d35ab-979e-4d81-b10c-f03f25d56da7	1ca53b96-38fc-4af1-b70d-b66f3f2c2dfa	\N
79a6a26c-048d-4332-810d-1c98f1fda383	1ca53b96-38fc-4af1-b70d-b66f3f2c2dfa	t	${role_manage-realm}	manage-realm	675d35ab-979e-4d81-b10c-f03f25d56da7	1ca53b96-38fc-4af1-b70d-b66f3f2c2dfa	\N
3f80d6a6-04c5-4b17-af33-a5b209f196fb	1ca53b96-38fc-4af1-b70d-b66f3f2c2dfa	t	${role_manage-users}	manage-users	675d35ab-979e-4d81-b10c-f03f25d56da7	1ca53b96-38fc-4af1-b70d-b66f3f2c2dfa	\N
54f1ff4d-7b9d-401f-8e79-0b85c462ba83	1ca53b96-38fc-4af1-b70d-b66f3f2c2dfa	t	${role_manage-clients}	manage-clients	675d35ab-979e-4d81-b10c-f03f25d56da7	1ca53b96-38fc-4af1-b70d-b66f3f2c2dfa	\N
6b237f99-870a-423c-9a82-7e88a275ac76	1ca53b96-38fc-4af1-b70d-b66f3f2c2dfa	t	${role_manage-events}	manage-events	675d35ab-979e-4d81-b10c-f03f25d56da7	1ca53b96-38fc-4af1-b70d-b66f3f2c2dfa	\N
b60e0323-e20a-4de6-aa15-6d2e6b529b0b	1ca53b96-38fc-4af1-b70d-b66f3f2c2dfa	t	${role_manage-identity-providers}	manage-identity-providers	675d35ab-979e-4d81-b10c-f03f25d56da7	1ca53b96-38fc-4af1-b70d-b66f3f2c2dfa	\N
dbf0b488-30b1-4ee5-b870-5cc6bb553a92	1ca53b96-38fc-4af1-b70d-b66f3f2c2dfa	t	${role_manage-authorization}	manage-authorization	675d35ab-979e-4d81-b10c-f03f25d56da7	1ca53b96-38fc-4af1-b70d-b66f3f2c2dfa	\N
4875fb7b-4ac8-438c-bc61-b6cc0980be87	1ca53b96-38fc-4af1-b70d-b66f3f2c2dfa	t	${role_query-users}	query-users	675d35ab-979e-4d81-b10c-f03f25d56da7	1ca53b96-38fc-4af1-b70d-b66f3f2c2dfa	\N
c7412f45-6d5c-4a05-b130-495f7aad8451	1ca53b96-38fc-4af1-b70d-b66f3f2c2dfa	t	${role_query-clients}	query-clients	675d35ab-979e-4d81-b10c-f03f25d56da7	1ca53b96-38fc-4af1-b70d-b66f3f2c2dfa	\N
7bb016e7-6b88-4d81-9c3b-5a3182e565b4	1ca53b96-38fc-4af1-b70d-b66f3f2c2dfa	t	${role_query-realms}	query-realms	675d35ab-979e-4d81-b10c-f03f25d56da7	1ca53b96-38fc-4af1-b70d-b66f3f2c2dfa	\N
2e9d0d2d-37e9-4597-a75f-b69bd41468ae	1ca53b96-38fc-4af1-b70d-b66f3f2c2dfa	t	${role_query-groups}	query-groups	675d35ab-979e-4d81-b10c-f03f25d56da7	1ca53b96-38fc-4af1-b70d-b66f3f2c2dfa	\N
02aaff58-8da7-4453-92bc-54cafe541f8d	b28d6a4e-670e-4452-ab6a-90b21f2860d4	t	${role_view-profile}	view-profile	675d35ab-979e-4d81-b10c-f03f25d56da7	b28d6a4e-670e-4452-ab6a-90b21f2860d4	\N
9a3a5f17-35fa-4790-a9cf-1b34708659c2	b28d6a4e-670e-4452-ab6a-90b21f2860d4	t	${role_manage-account}	manage-account	675d35ab-979e-4d81-b10c-f03f25d56da7	b28d6a4e-670e-4452-ab6a-90b21f2860d4	\N
e24adfb6-0281-43b9-a1d0-44646e51efee	b28d6a4e-670e-4452-ab6a-90b21f2860d4	t	${role_manage-account-links}	manage-account-links	675d35ab-979e-4d81-b10c-f03f25d56da7	b28d6a4e-670e-4452-ab6a-90b21f2860d4	\N
1d1ad5ed-bbbe-493f-a501-8165e41a7483	b28d6a4e-670e-4452-ab6a-90b21f2860d4	t	${role_view-applications}	view-applications	675d35ab-979e-4d81-b10c-f03f25d56da7	b28d6a4e-670e-4452-ab6a-90b21f2860d4	\N
163c09c2-7aa9-4cda-ae16-cc47dbc0655a	b28d6a4e-670e-4452-ab6a-90b21f2860d4	t	${role_view-consent}	view-consent	675d35ab-979e-4d81-b10c-f03f25d56da7	b28d6a4e-670e-4452-ab6a-90b21f2860d4	\N
57c9a3b6-23e7-4147-87b8-877563866771	b28d6a4e-670e-4452-ab6a-90b21f2860d4	t	${role_manage-consent}	manage-consent	675d35ab-979e-4d81-b10c-f03f25d56da7	b28d6a4e-670e-4452-ab6a-90b21f2860d4	\N
d4e022d8-8875-423e-9e32-e6d54c247b70	b28d6a4e-670e-4452-ab6a-90b21f2860d4	t	${role_view-groups}	view-groups	675d35ab-979e-4d81-b10c-f03f25d56da7	b28d6a4e-670e-4452-ab6a-90b21f2860d4	\N
31372b83-75a6-4079-ba60-433795c391ef	b28d6a4e-670e-4452-ab6a-90b21f2860d4	t	${role_delete-account}	delete-account	675d35ab-979e-4d81-b10c-f03f25d56da7	b28d6a4e-670e-4452-ab6a-90b21f2860d4	\N
f2d1eed3-6a19-4f7c-ad12-46ade3f20ad6	f49539a4-5513-466f-bffb-f7133b39ada8	t	${role_read-token}	read-token	675d35ab-979e-4d81-b10c-f03f25d56da7	f49539a4-5513-466f-bffb-f7133b39ada8	\N
9b426fb2-4f35-4560-b7b8-7e1df7cc4292	1ca53b96-38fc-4af1-b70d-b66f3f2c2dfa	t	${role_impersonation}	impersonation	675d35ab-979e-4d81-b10c-f03f25d56da7	1ca53b96-38fc-4af1-b70d-b66f3f2c2dfa	\N
4ade3a46-de6f-453e-a869-aa6f55d34997	675d35ab-979e-4d81-b10c-f03f25d56da7	f	${role_offline-access}	offline_access	675d35ab-979e-4d81-b10c-f03f25d56da7	\N	\N
bd26713b-eae5-4f68-a151-59ae5a4ed35f	675d35ab-979e-4d81-b10c-f03f25d56da7	f	${role_uma_authorization}	uma_authorization	675d35ab-979e-4d81-b10c-f03f25d56da7	\N	\N
150c44df-b575-4473-8071-543338246bf1	7c54d901-12e8-4d3c-b1c0-87753e3330c2	f	${role_default-roles}	default-roles-pokestation	7c54d901-12e8-4d3c-b1c0-87753e3330c2	\N	\N
0dcd2c0e-bb7b-4053-bb7b-f29edf758033	d4cd2421-2499-4a0a-9a0d-b38956e828c9	t	${role_create-client}	create-client	675d35ab-979e-4d81-b10c-f03f25d56da7	d4cd2421-2499-4a0a-9a0d-b38956e828c9	\N
7f0f4eaa-fe17-45ea-870f-a597a74fe31f	d4cd2421-2499-4a0a-9a0d-b38956e828c9	t	${role_view-realm}	view-realm	675d35ab-979e-4d81-b10c-f03f25d56da7	d4cd2421-2499-4a0a-9a0d-b38956e828c9	\N
11d02d42-a0db-4217-861c-e470526fa7da	d4cd2421-2499-4a0a-9a0d-b38956e828c9	t	${role_view-users}	view-users	675d35ab-979e-4d81-b10c-f03f25d56da7	d4cd2421-2499-4a0a-9a0d-b38956e828c9	\N
982d4814-c183-4a92-9f9c-2c5fc8d58e80	d4cd2421-2499-4a0a-9a0d-b38956e828c9	t	${role_view-clients}	view-clients	675d35ab-979e-4d81-b10c-f03f25d56da7	d4cd2421-2499-4a0a-9a0d-b38956e828c9	\N
3e4a3e1f-d12d-4e0c-a570-d7266d1c078b	d4cd2421-2499-4a0a-9a0d-b38956e828c9	t	${role_view-events}	view-events	675d35ab-979e-4d81-b10c-f03f25d56da7	d4cd2421-2499-4a0a-9a0d-b38956e828c9	\N
43958dd9-40d2-4573-95a0-52cc46e3440e	d4cd2421-2499-4a0a-9a0d-b38956e828c9	t	${role_view-identity-providers}	view-identity-providers	675d35ab-979e-4d81-b10c-f03f25d56da7	d4cd2421-2499-4a0a-9a0d-b38956e828c9	\N
a703d695-2ead-4c6c-bab0-4603284c99bf	d4cd2421-2499-4a0a-9a0d-b38956e828c9	t	${role_view-authorization}	view-authorization	675d35ab-979e-4d81-b10c-f03f25d56da7	d4cd2421-2499-4a0a-9a0d-b38956e828c9	\N
f5da0730-1b44-443d-92a3-c49998b65123	d4cd2421-2499-4a0a-9a0d-b38956e828c9	t	${role_manage-realm}	manage-realm	675d35ab-979e-4d81-b10c-f03f25d56da7	d4cd2421-2499-4a0a-9a0d-b38956e828c9	\N
35558cf6-656d-4df8-b169-01fdb665981f	d4cd2421-2499-4a0a-9a0d-b38956e828c9	t	${role_manage-users}	manage-users	675d35ab-979e-4d81-b10c-f03f25d56da7	d4cd2421-2499-4a0a-9a0d-b38956e828c9	\N
6b71ff90-7a76-4379-9ef3-0d93509b1d77	d4cd2421-2499-4a0a-9a0d-b38956e828c9	t	${role_manage-clients}	manage-clients	675d35ab-979e-4d81-b10c-f03f25d56da7	d4cd2421-2499-4a0a-9a0d-b38956e828c9	\N
995206f0-2b33-4383-b21f-9ddbe9fc4619	d4cd2421-2499-4a0a-9a0d-b38956e828c9	t	${role_manage-events}	manage-events	675d35ab-979e-4d81-b10c-f03f25d56da7	d4cd2421-2499-4a0a-9a0d-b38956e828c9	\N
4961293a-78c6-4517-b2ec-93db1b2ff28e	d4cd2421-2499-4a0a-9a0d-b38956e828c9	t	${role_manage-identity-providers}	manage-identity-providers	675d35ab-979e-4d81-b10c-f03f25d56da7	d4cd2421-2499-4a0a-9a0d-b38956e828c9	\N
c634b7ec-b154-47e5-95f4-ac128656bc20	d4cd2421-2499-4a0a-9a0d-b38956e828c9	t	${role_manage-authorization}	manage-authorization	675d35ab-979e-4d81-b10c-f03f25d56da7	d4cd2421-2499-4a0a-9a0d-b38956e828c9	\N
3e7be44b-4ec8-464e-ab8c-b9f2c845645d	d4cd2421-2499-4a0a-9a0d-b38956e828c9	t	${role_query-users}	query-users	675d35ab-979e-4d81-b10c-f03f25d56da7	d4cd2421-2499-4a0a-9a0d-b38956e828c9	\N
526b9dc6-de30-4c0a-9022-e1275a006e26	d4cd2421-2499-4a0a-9a0d-b38956e828c9	t	${role_query-clients}	query-clients	675d35ab-979e-4d81-b10c-f03f25d56da7	d4cd2421-2499-4a0a-9a0d-b38956e828c9	\N
4568112e-937b-4d10-b1f0-0ae00a2dc61f	d4cd2421-2499-4a0a-9a0d-b38956e828c9	t	${role_query-realms}	query-realms	675d35ab-979e-4d81-b10c-f03f25d56da7	d4cd2421-2499-4a0a-9a0d-b38956e828c9	\N
72352d4b-0532-481e-aabc-041cdd6ffd00	d4cd2421-2499-4a0a-9a0d-b38956e828c9	t	${role_query-groups}	query-groups	675d35ab-979e-4d81-b10c-f03f25d56da7	d4cd2421-2499-4a0a-9a0d-b38956e828c9	\N
b4b0d5e4-cd39-4831-bf6f-12697d76ead7	1560eab6-f459-4411-a42a-1b899e5dd4c0	t	${role_realm-admin}	realm-admin	7c54d901-12e8-4d3c-b1c0-87753e3330c2	1560eab6-f459-4411-a42a-1b899e5dd4c0	\N
cd33d819-601a-417f-9ad7-b567dedde561	1560eab6-f459-4411-a42a-1b899e5dd4c0	t	${role_create-client}	create-client	7c54d901-12e8-4d3c-b1c0-87753e3330c2	1560eab6-f459-4411-a42a-1b899e5dd4c0	\N
7114d7ad-1c4e-40a9-ba03-9730368e4967	1560eab6-f459-4411-a42a-1b899e5dd4c0	t	${role_view-realm}	view-realm	7c54d901-12e8-4d3c-b1c0-87753e3330c2	1560eab6-f459-4411-a42a-1b899e5dd4c0	\N
34b8ed32-fa78-4186-a58d-cb904dcbba65	1560eab6-f459-4411-a42a-1b899e5dd4c0	t	${role_view-users}	view-users	7c54d901-12e8-4d3c-b1c0-87753e3330c2	1560eab6-f459-4411-a42a-1b899e5dd4c0	\N
af6a9e30-465b-42e7-ac67-191ee5459066	1560eab6-f459-4411-a42a-1b899e5dd4c0	t	${role_view-clients}	view-clients	7c54d901-12e8-4d3c-b1c0-87753e3330c2	1560eab6-f459-4411-a42a-1b899e5dd4c0	\N
6fd3ded2-16c1-47aa-b95b-5a673a407988	1560eab6-f459-4411-a42a-1b899e5dd4c0	t	${role_view-events}	view-events	7c54d901-12e8-4d3c-b1c0-87753e3330c2	1560eab6-f459-4411-a42a-1b899e5dd4c0	\N
c498ba8b-d0a2-4511-a865-262421c81f5d	1560eab6-f459-4411-a42a-1b899e5dd4c0	t	${role_view-identity-providers}	view-identity-providers	7c54d901-12e8-4d3c-b1c0-87753e3330c2	1560eab6-f459-4411-a42a-1b899e5dd4c0	\N
5327eb9e-10a0-493d-ba49-ddb8e4716167	1560eab6-f459-4411-a42a-1b899e5dd4c0	t	${role_view-authorization}	view-authorization	7c54d901-12e8-4d3c-b1c0-87753e3330c2	1560eab6-f459-4411-a42a-1b899e5dd4c0	\N
b11b5e65-40e8-4d8b-853a-8be98bb7bef2	1560eab6-f459-4411-a42a-1b899e5dd4c0	t	${role_manage-realm}	manage-realm	7c54d901-12e8-4d3c-b1c0-87753e3330c2	1560eab6-f459-4411-a42a-1b899e5dd4c0	\N
faa4c226-ddb1-4aca-9214-b54225f5ecd0	1560eab6-f459-4411-a42a-1b899e5dd4c0	t	${role_manage-users}	manage-users	7c54d901-12e8-4d3c-b1c0-87753e3330c2	1560eab6-f459-4411-a42a-1b899e5dd4c0	\N
8a4fec41-0ea6-4135-8c93-b85719e12c05	1560eab6-f459-4411-a42a-1b899e5dd4c0	t	${role_manage-clients}	manage-clients	7c54d901-12e8-4d3c-b1c0-87753e3330c2	1560eab6-f459-4411-a42a-1b899e5dd4c0	\N
d405e581-65dd-4e20-b5f3-adfd14d86e69	1560eab6-f459-4411-a42a-1b899e5dd4c0	t	${role_manage-events}	manage-events	7c54d901-12e8-4d3c-b1c0-87753e3330c2	1560eab6-f459-4411-a42a-1b899e5dd4c0	\N
27560740-ca99-46a8-99b8-fa096d2f7285	1560eab6-f459-4411-a42a-1b899e5dd4c0	t	${role_manage-identity-providers}	manage-identity-providers	7c54d901-12e8-4d3c-b1c0-87753e3330c2	1560eab6-f459-4411-a42a-1b899e5dd4c0	\N
a8432f2d-d683-4291-b290-6571abb1f2d1	1560eab6-f459-4411-a42a-1b899e5dd4c0	t	${role_manage-authorization}	manage-authorization	7c54d901-12e8-4d3c-b1c0-87753e3330c2	1560eab6-f459-4411-a42a-1b899e5dd4c0	\N
dc1d0885-b8e9-4080-b21a-32e4f5cf5451	1560eab6-f459-4411-a42a-1b899e5dd4c0	t	${role_query-users}	query-users	7c54d901-12e8-4d3c-b1c0-87753e3330c2	1560eab6-f459-4411-a42a-1b899e5dd4c0	\N
b500d9d7-e095-4825-a4c3-1f5ef2969780	1560eab6-f459-4411-a42a-1b899e5dd4c0	t	${role_query-clients}	query-clients	7c54d901-12e8-4d3c-b1c0-87753e3330c2	1560eab6-f459-4411-a42a-1b899e5dd4c0	\N
5704a8c9-2362-403e-85f8-6b5a652b3722	1560eab6-f459-4411-a42a-1b899e5dd4c0	t	${role_query-realms}	query-realms	7c54d901-12e8-4d3c-b1c0-87753e3330c2	1560eab6-f459-4411-a42a-1b899e5dd4c0	\N
23c39e64-fdba-43c6-896e-43a37d173032	1560eab6-f459-4411-a42a-1b899e5dd4c0	t	${role_query-groups}	query-groups	7c54d901-12e8-4d3c-b1c0-87753e3330c2	1560eab6-f459-4411-a42a-1b899e5dd4c0	\N
0fc5c8bc-ca1a-4b4e-8ae1-beee1fd264e8	267410fd-7176-4699-a70f-41b5baa0e94d	t	${role_view-profile}	view-profile	7c54d901-12e8-4d3c-b1c0-87753e3330c2	267410fd-7176-4699-a70f-41b5baa0e94d	\N
2bc72bce-a457-461c-b8c0-5bfd30d2681d	267410fd-7176-4699-a70f-41b5baa0e94d	t	${role_manage-account}	manage-account	7c54d901-12e8-4d3c-b1c0-87753e3330c2	267410fd-7176-4699-a70f-41b5baa0e94d	\N
868deba0-7bc6-4703-b101-613961f0494b	267410fd-7176-4699-a70f-41b5baa0e94d	t	${role_manage-account-links}	manage-account-links	7c54d901-12e8-4d3c-b1c0-87753e3330c2	267410fd-7176-4699-a70f-41b5baa0e94d	\N
75954d94-5d99-4391-9659-3f97df674ec4	267410fd-7176-4699-a70f-41b5baa0e94d	t	${role_view-applications}	view-applications	7c54d901-12e8-4d3c-b1c0-87753e3330c2	267410fd-7176-4699-a70f-41b5baa0e94d	\N
4b901a27-f625-468e-94e0-fbe69d8eb10e	267410fd-7176-4699-a70f-41b5baa0e94d	t	${role_view-consent}	view-consent	7c54d901-12e8-4d3c-b1c0-87753e3330c2	267410fd-7176-4699-a70f-41b5baa0e94d	\N
d0a3a7e1-223c-4be1-ab24-738d621cf4da	267410fd-7176-4699-a70f-41b5baa0e94d	t	${role_manage-consent}	manage-consent	7c54d901-12e8-4d3c-b1c0-87753e3330c2	267410fd-7176-4699-a70f-41b5baa0e94d	\N
5092a6e0-586e-4104-bb86-137e89d0dafb	267410fd-7176-4699-a70f-41b5baa0e94d	t	${role_view-groups}	view-groups	7c54d901-12e8-4d3c-b1c0-87753e3330c2	267410fd-7176-4699-a70f-41b5baa0e94d	\N
8769e023-275a-4409-8614-b6192d59ffea	267410fd-7176-4699-a70f-41b5baa0e94d	t	${role_delete-account}	delete-account	7c54d901-12e8-4d3c-b1c0-87753e3330c2	267410fd-7176-4699-a70f-41b5baa0e94d	\N
a44b8b81-165b-4704-af63-71644cd133f8	d4cd2421-2499-4a0a-9a0d-b38956e828c9	t	${role_impersonation}	impersonation	675d35ab-979e-4d81-b10c-f03f25d56da7	d4cd2421-2499-4a0a-9a0d-b38956e828c9	\N
a28ea859-b72c-4170-95ca-d7c406ed2b26	1560eab6-f459-4411-a42a-1b899e5dd4c0	t	${role_impersonation}	impersonation	7c54d901-12e8-4d3c-b1c0-87753e3330c2	1560eab6-f459-4411-a42a-1b899e5dd4c0	\N
e44e8455-b217-40e4-b7d9-f7b281b84ade	89a72f22-b792-4cc4-b80e-604f599d4fa8	t	${role_read-token}	read-token	7c54d901-12e8-4d3c-b1c0-87753e3330c2	89a72f22-b792-4cc4-b80e-604f599d4fa8	\N
e454d97b-71ec-465f-b3a7-b89f9a597fca	7c54d901-12e8-4d3c-b1c0-87753e3330c2	f	${role_offline-access}	offline_access	7c54d901-12e8-4d3c-b1c0-87753e3330c2	\N	\N
41e88e6d-9672-4ff1-8591-1b0373fe8414	7c54d901-12e8-4d3c-b1c0-87753e3330c2	f	${role_uma_authorization}	uma_authorization	7c54d901-12e8-4d3c-b1c0-87753e3330c2	\N	\N
6c440b8c-bc65-49b1-9747-f8d69227f77f	62156c2e-fe7e-4a87-9bb0-d48e2d76ba07	t	\N	uma_protection	7c54d901-12e8-4d3c-b1c0-87753e3330c2	62156c2e-fe7e-4a87-9bb0-d48e2d76ba07	\N
daab5b2a-98ef-4f79-b5f8-53ae71f5b062	7c54d901-12e8-4d3c-b1c0-87753e3330c2	f		ADMIN	7c54d901-12e8-4d3c-b1c0-87753e3330c2	\N	\N
a9c6c411-a19d-407e-9f3a-02732e142e8c	7c54d901-12e8-4d3c-b1c0-87753e3330c2	f		USER	7c54d901-12e8-4d3c-b1c0-87753e3330c2	\N	\N
\.


--
-- TOC entry 4183 (class 0 OID 25141)
-- Dependencies: 251
-- Data for Name: migration_model; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.migration_model (id, version, update_time) FROM stdin;
hh8mb	22.0.5	1700814021
\.


--
-- TOC entry 4200 (class 0 OID 25413)
-- Dependencies: 268
-- Data for Name: offline_client_session; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.offline_client_session (user_session_id, client_id, offline_flag, "timestamp", data, client_storage_provider, external_client_id) FROM stdin;
\.


--
-- TOC entry 4199 (class 0 OID 25408)
-- Dependencies: 267
-- Data for Name: offline_user_session; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.offline_user_session (user_session_id, user_id, realm_id, created_on, offline_flag, data, last_session_refresh) FROM stdin;
\.


--
-- TOC entry 4213 (class 0 OID 25627)
-- Dependencies: 281
-- Data for Name: policy_config; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.policy_config (policy_id, name, value) FROM stdin;
f8c2bd82-ca94-4b53-8099-b3e12fd33539	code	// by default, grants any permission associated with this policy\n$evaluation.grant();\n
fa9a99da-a577-41eb-a653-f9da6073132c	defaultResourceType	urn:pokestation:resources:default
\.


--
-- TOC entry 4175 (class 0 OID 25015)
-- Dependencies: 243
-- Data for Name: protocol_mapper; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.protocol_mapper (id, name, protocol, protocol_mapper_name, client_id, client_scope_id) FROM stdin;
3072b6d7-0844-4e18-aba3-54189da1258c	audience resolve	openid-connect	oidc-audience-resolve-mapper	cb01e043-2142-450a-8dd0-800be7adaf82	\N
7f0fd107-2bf0-45ac-a9c7-02525633e6da	locale	openid-connect	oidc-usermodel-attribute-mapper	597c6fb1-16bf-450d-ace9-bb01e7f58912	\N
9312ef35-e3ae-43ea-8cc5-e38fb87012cc	role list	saml	saml-role-list-mapper	\N	01084f2a-b14b-44f6-95f2-3b8edc586962
5d2303d0-d8ed-4dbb-a8f4-5c7734dfed06	full name	openid-connect	oidc-full-name-mapper	\N	5b8e7a78-2d70-490b-a0ff-ab22abbf6986
c70fdc79-64b7-4524-847a-5de9c0c15af3	family name	openid-connect	oidc-usermodel-attribute-mapper	\N	5b8e7a78-2d70-490b-a0ff-ab22abbf6986
f0dd536c-69c0-4e4b-99b8-db8ab6721fb7	given name	openid-connect	oidc-usermodel-attribute-mapper	\N	5b8e7a78-2d70-490b-a0ff-ab22abbf6986
859fb6e5-7671-485a-8a11-de3abe651c2c	middle name	openid-connect	oidc-usermodel-attribute-mapper	\N	5b8e7a78-2d70-490b-a0ff-ab22abbf6986
b3a8dfbb-b946-406a-9fea-5b7ba26a0774	nickname	openid-connect	oidc-usermodel-attribute-mapper	\N	5b8e7a78-2d70-490b-a0ff-ab22abbf6986
276883f2-ccea-468a-a2bd-81aae8179c52	username	openid-connect	oidc-usermodel-attribute-mapper	\N	5b8e7a78-2d70-490b-a0ff-ab22abbf6986
4271af91-eeea-4bb9-ad45-c49e487f70c0	profile	openid-connect	oidc-usermodel-attribute-mapper	\N	5b8e7a78-2d70-490b-a0ff-ab22abbf6986
467f2d8c-7401-49ad-ba91-efe9a3a3a368	picture	openid-connect	oidc-usermodel-attribute-mapper	\N	5b8e7a78-2d70-490b-a0ff-ab22abbf6986
3790872a-e1c7-49da-8eeb-946ab63e290b	website	openid-connect	oidc-usermodel-attribute-mapper	\N	5b8e7a78-2d70-490b-a0ff-ab22abbf6986
586dafea-eaa0-419f-9dc2-57d171ede5c0	gender	openid-connect	oidc-usermodel-attribute-mapper	\N	5b8e7a78-2d70-490b-a0ff-ab22abbf6986
07223462-a924-4341-b86a-36acce45eebb	birthdate	openid-connect	oidc-usermodel-attribute-mapper	\N	5b8e7a78-2d70-490b-a0ff-ab22abbf6986
be3fe03d-704c-42cb-b6e6-5ac779aa60f5	zoneinfo	openid-connect	oidc-usermodel-attribute-mapper	\N	5b8e7a78-2d70-490b-a0ff-ab22abbf6986
21ad45be-3a61-445d-85cb-e398fcdfe532	locale	openid-connect	oidc-usermodel-attribute-mapper	\N	5b8e7a78-2d70-490b-a0ff-ab22abbf6986
45040499-19ea-4b2e-991b-ffd3a70c02db	updated at	openid-connect	oidc-usermodel-attribute-mapper	\N	5b8e7a78-2d70-490b-a0ff-ab22abbf6986
40dfdc67-db08-449f-97ce-cb205c648831	email	openid-connect	oidc-usermodel-attribute-mapper	\N	5d9ff23a-bb84-4bd7-a617-098195214f68
39a01a86-a58a-46f7-881b-37b04f2f354a	email verified	openid-connect	oidc-usermodel-property-mapper	\N	5d9ff23a-bb84-4bd7-a617-098195214f68
ff7b832d-f8fb-4f05-a208-53144bcfaac9	address	openid-connect	oidc-address-mapper	\N	5bb0c3b8-50eb-42fb-819b-32a8b86f040e
44e27d9a-a8c2-44f5-a0a5-960383ff2f66	phone number	openid-connect	oidc-usermodel-attribute-mapper	\N	f140148b-912e-4541-81cc-697708fc2a2d
d71b398b-18d6-4c9a-ba61-d8f1c009c315	phone number verified	openid-connect	oidc-usermodel-attribute-mapper	\N	f140148b-912e-4541-81cc-697708fc2a2d
d31d6628-ed2b-4e31-a0d1-b8fbc5ca5149	realm roles	openid-connect	oidc-usermodel-realm-role-mapper	\N	3698f0a8-4290-4848-8ffa-bc9ad99c081b
a8f643b1-5277-4f12-8b46-e77e68bc54b9	client roles	openid-connect	oidc-usermodel-client-role-mapper	\N	3698f0a8-4290-4848-8ffa-bc9ad99c081b
f5e8742d-33e8-44bd-ab41-8fe475db2627	audience resolve	openid-connect	oidc-audience-resolve-mapper	\N	3698f0a8-4290-4848-8ffa-bc9ad99c081b
66388327-ab97-40e2-a338-bd791167e098	allowed web origins	openid-connect	oidc-allowed-origins-mapper	\N	99622f9c-4559-4e1b-819c-12889ccb6dee
75afd873-1073-48ea-aac8-a691b7b3c5c8	upn	openid-connect	oidc-usermodel-attribute-mapper	\N	ff6c5e1d-89a7-4e16-9c76-a5092e6a0a61
d94c2602-68f3-40fb-b82d-4ffc043dc2de	groups	openid-connect	oidc-usermodel-realm-role-mapper	\N	ff6c5e1d-89a7-4e16-9c76-a5092e6a0a61
d48dc165-6762-4ec4-bfef-6949b6084c51	acr loa level	openid-connect	oidc-acr-mapper	\N	208b9059-2abc-4175-ae67-0e0fd1495f53
8bf48edb-27a8-4035-9e6f-8e1e87835ae0	audience resolve	openid-connect	oidc-audience-resolve-mapper	663a7a94-b499-4f80-81ea-6f745fbe25d6	\N
a3f12ffa-2c19-44aa-b92c-16b4b5aa8e2f	role list	saml	saml-role-list-mapper	\N	461ba461-ed6a-4459-a071-c536253866af
1b817134-ac05-42d2-9be8-09fca6aeeedc	full name	openid-connect	oidc-full-name-mapper	\N	2524954e-0981-4b61-8c4e-48ade6f9e12e
1f88a7e8-80d4-466f-aeb8-c6a600edc628	family name	openid-connect	oidc-usermodel-attribute-mapper	\N	2524954e-0981-4b61-8c4e-48ade6f9e12e
8dfbd817-08d1-4b53-9942-b9741c076cdf	given name	openid-connect	oidc-usermodel-attribute-mapper	\N	2524954e-0981-4b61-8c4e-48ade6f9e12e
5bd424f5-ae21-443d-8d1a-e0e03258bccf	middle name	openid-connect	oidc-usermodel-attribute-mapper	\N	2524954e-0981-4b61-8c4e-48ade6f9e12e
4a72072f-add7-4f5f-932e-a6a369ffc845	nickname	openid-connect	oidc-usermodel-attribute-mapper	\N	2524954e-0981-4b61-8c4e-48ade6f9e12e
6a7aff53-daa6-442f-b640-8fa168fbc13f	username	openid-connect	oidc-usermodel-attribute-mapper	\N	2524954e-0981-4b61-8c4e-48ade6f9e12e
8e5190df-9d16-4624-86cd-ba05e55e16a7	profile	openid-connect	oidc-usermodel-attribute-mapper	\N	2524954e-0981-4b61-8c4e-48ade6f9e12e
445fbd78-b5f1-434c-974e-735dc6684709	picture	openid-connect	oidc-usermodel-attribute-mapper	\N	2524954e-0981-4b61-8c4e-48ade6f9e12e
d38362c4-f606-4ab5-8f05-1cec1c8bb32b	website	openid-connect	oidc-usermodel-attribute-mapper	\N	2524954e-0981-4b61-8c4e-48ade6f9e12e
453d3216-1323-4222-b408-dae9ba92d3fc	gender	openid-connect	oidc-usermodel-attribute-mapper	\N	2524954e-0981-4b61-8c4e-48ade6f9e12e
26d3dbf0-bde9-4590-955b-29f892138923	birthdate	openid-connect	oidc-usermodel-attribute-mapper	\N	2524954e-0981-4b61-8c4e-48ade6f9e12e
47135e88-d578-4003-966f-141054084649	zoneinfo	openid-connect	oidc-usermodel-attribute-mapper	\N	2524954e-0981-4b61-8c4e-48ade6f9e12e
8d7bd2a2-f5db-4805-ac64-12c9765fedab	locale	openid-connect	oidc-usermodel-attribute-mapper	\N	2524954e-0981-4b61-8c4e-48ade6f9e12e
add48289-78ca-4e51-b809-6e1f8dcb9f7d	updated at	openid-connect	oidc-usermodel-attribute-mapper	\N	2524954e-0981-4b61-8c4e-48ade6f9e12e
c6e7889e-37cb-4405-a686-e5b78d9a8c9d	email	openid-connect	oidc-usermodel-attribute-mapper	\N	33a7f9e9-a5d9-4be6-9ebd-cb9293687540
2302a53e-5c1b-4160-ba9d-0c6b38e25995	email verified	openid-connect	oidc-usermodel-property-mapper	\N	33a7f9e9-a5d9-4be6-9ebd-cb9293687540
f0283210-7497-48d3-a7ef-34fda6f5ba16	address	openid-connect	oidc-address-mapper	\N	851b4fb4-7dab-4777-9a4f-822fbc89714d
24de8bd3-a4f9-4e04-aa1b-859128c75586	phone number	openid-connect	oidc-usermodel-attribute-mapper	\N	71989a0b-6c06-43e1-8346-897634adbdae
75337a88-993f-427d-aa92-c82e17497887	phone number verified	openid-connect	oidc-usermodel-attribute-mapper	\N	71989a0b-6c06-43e1-8346-897634adbdae
e0e65987-e196-4235-890b-4a695bee420f	realm roles	openid-connect	oidc-usermodel-realm-role-mapper	\N	805fbc1f-43a7-45d6-8b6f-e933e25bf5d8
e6d00175-cf0c-444c-b08b-2cb6be6f556a	client roles	openid-connect	oidc-usermodel-client-role-mapper	\N	805fbc1f-43a7-45d6-8b6f-e933e25bf5d8
d3e0f480-2456-417f-9e65-5ea3dd82e531	audience resolve	openid-connect	oidc-audience-resolve-mapper	\N	805fbc1f-43a7-45d6-8b6f-e933e25bf5d8
e645dfea-e4b7-4de6-a445-92e410b5ae58	allowed web origins	openid-connect	oidc-allowed-origins-mapper	\N	0d17fd18-32a6-4305-82ec-81781309f0ff
0722a545-ef32-4fb1-b17e-77910e17bf30	upn	openid-connect	oidc-usermodel-attribute-mapper	\N	e109dcfb-fa22-4a4c-93ca-b758c23848a5
3d738dcb-0d15-4b83-af96-c5e3d9168f56	groups	openid-connect	oidc-usermodel-realm-role-mapper	\N	e109dcfb-fa22-4a4c-93ca-b758c23848a5
e312a191-c4a6-4de4-ba5c-d7301c058be3	acr loa level	openid-connect	oidc-acr-mapper	\N	e1d0e082-3dec-4c17-917c-e075c4e96767
0cde72da-9886-4672-a684-6cbbd84a0e31	locale	openid-connect	oidc-usermodel-attribute-mapper	cf82469b-201d-424a-899b-d419082f48a7	\N
32513878-8ed4-4763-889f-9b4c382fc7d4	Client ID	openid-connect	oidc-usersessionmodel-note-mapper	62156c2e-fe7e-4a87-9bb0-d48e2d76ba07	\N
d534d215-9368-40a2-9cc0-aabac955dd70	Client Host	openid-connect	oidc-usersessionmodel-note-mapper	62156c2e-fe7e-4a87-9bb0-d48e2d76ba07	\N
57a371b0-4129-4485-bee5-437778d8d1af	Client IP Address	openid-connect	oidc-usersessionmodel-note-mapper	62156c2e-fe7e-4a87-9bb0-d48e2d76ba07	\N
d135575c-ef2d-4839-86fe-3ef76701fb4c	pokestation roles mapper	openid-connect	oidc-usermodel-realm-role-mapper	\N	188a0bef-6ed8-4948-8969-99f5e6793156
\.


--
-- TOC entry 4176 (class 0 OID 25021)
-- Dependencies: 244
-- Data for Name: protocol_mapper_config; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.protocol_mapper_config (protocol_mapper_id, value, name) FROM stdin;
7f0fd107-2bf0-45ac-a9c7-02525633e6da	true	userinfo.token.claim
7f0fd107-2bf0-45ac-a9c7-02525633e6da	locale	user.attribute
7f0fd107-2bf0-45ac-a9c7-02525633e6da	true	id.token.claim
7f0fd107-2bf0-45ac-a9c7-02525633e6da	true	access.token.claim
7f0fd107-2bf0-45ac-a9c7-02525633e6da	locale	claim.name
7f0fd107-2bf0-45ac-a9c7-02525633e6da	String	jsonType.label
9312ef35-e3ae-43ea-8cc5-e38fb87012cc	false	single
9312ef35-e3ae-43ea-8cc5-e38fb87012cc	Basic	attribute.nameformat
9312ef35-e3ae-43ea-8cc5-e38fb87012cc	Role	attribute.name
07223462-a924-4341-b86a-36acce45eebb	true	userinfo.token.claim
07223462-a924-4341-b86a-36acce45eebb	birthdate	user.attribute
07223462-a924-4341-b86a-36acce45eebb	true	id.token.claim
07223462-a924-4341-b86a-36acce45eebb	true	access.token.claim
07223462-a924-4341-b86a-36acce45eebb	birthdate	claim.name
07223462-a924-4341-b86a-36acce45eebb	String	jsonType.label
21ad45be-3a61-445d-85cb-e398fcdfe532	true	userinfo.token.claim
21ad45be-3a61-445d-85cb-e398fcdfe532	locale	user.attribute
21ad45be-3a61-445d-85cb-e398fcdfe532	true	id.token.claim
21ad45be-3a61-445d-85cb-e398fcdfe532	true	access.token.claim
21ad45be-3a61-445d-85cb-e398fcdfe532	locale	claim.name
21ad45be-3a61-445d-85cb-e398fcdfe532	String	jsonType.label
276883f2-ccea-468a-a2bd-81aae8179c52	true	userinfo.token.claim
276883f2-ccea-468a-a2bd-81aae8179c52	username	user.attribute
276883f2-ccea-468a-a2bd-81aae8179c52	true	id.token.claim
276883f2-ccea-468a-a2bd-81aae8179c52	true	access.token.claim
276883f2-ccea-468a-a2bd-81aae8179c52	preferred_username	claim.name
276883f2-ccea-468a-a2bd-81aae8179c52	String	jsonType.label
3790872a-e1c7-49da-8eeb-946ab63e290b	true	userinfo.token.claim
3790872a-e1c7-49da-8eeb-946ab63e290b	website	user.attribute
3790872a-e1c7-49da-8eeb-946ab63e290b	true	id.token.claim
3790872a-e1c7-49da-8eeb-946ab63e290b	true	access.token.claim
3790872a-e1c7-49da-8eeb-946ab63e290b	website	claim.name
3790872a-e1c7-49da-8eeb-946ab63e290b	String	jsonType.label
4271af91-eeea-4bb9-ad45-c49e487f70c0	true	userinfo.token.claim
4271af91-eeea-4bb9-ad45-c49e487f70c0	profile	user.attribute
4271af91-eeea-4bb9-ad45-c49e487f70c0	true	id.token.claim
4271af91-eeea-4bb9-ad45-c49e487f70c0	true	access.token.claim
4271af91-eeea-4bb9-ad45-c49e487f70c0	profile	claim.name
4271af91-eeea-4bb9-ad45-c49e487f70c0	String	jsonType.label
45040499-19ea-4b2e-991b-ffd3a70c02db	true	userinfo.token.claim
45040499-19ea-4b2e-991b-ffd3a70c02db	updatedAt	user.attribute
45040499-19ea-4b2e-991b-ffd3a70c02db	true	id.token.claim
45040499-19ea-4b2e-991b-ffd3a70c02db	true	access.token.claim
45040499-19ea-4b2e-991b-ffd3a70c02db	updated_at	claim.name
45040499-19ea-4b2e-991b-ffd3a70c02db	long	jsonType.label
467f2d8c-7401-49ad-ba91-efe9a3a3a368	true	userinfo.token.claim
467f2d8c-7401-49ad-ba91-efe9a3a3a368	picture	user.attribute
467f2d8c-7401-49ad-ba91-efe9a3a3a368	true	id.token.claim
467f2d8c-7401-49ad-ba91-efe9a3a3a368	true	access.token.claim
467f2d8c-7401-49ad-ba91-efe9a3a3a368	picture	claim.name
467f2d8c-7401-49ad-ba91-efe9a3a3a368	String	jsonType.label
586dafea-eaa0-419f-9dc2-57d171ede5c0	true	userinfo.token.claim
586dafea-eaa0-419f-9dc2-57d171ede5c0	gender	user.attribute
586dafea-eaa0-419f-9dc2-57d171ede5c0	true	id.token.claim
586dafea-eaa0-419f-9dc2-57d171ede5c0	true	access.token.claim
586dafea-eaa0-419f-9dc2-57d171ede5c0	gender	claim.name
586dafea-eaa0-419f-9dc2-57d171ede5c0	String	jsonType.label
5d2303d0-d8ed-4dbb-a8f4-5c7734dfed06	true	userinfo.token.claim
5d2303d0-d8ed-4dbb-a8f4-5c7734dfed06	true	id.token.claim
5d2303d0-d8ed-4dbb-a8f4-5c7734dfed06	true	access.token.claim
859fb6e5-7671-485a-8a11-de3abe651c2c	true	userinfo.token.claim
859fb6e5-7671-485a-8a11-de3abe651c2c	middleName	user.attribute
859fb6e5-7671-485a-8a11-de3abe651c2c	true	id.token.claim
859fb6e5-7671-485a-8a11-de3abe651c2c	true	access.token.claim
859fb6e5-7671-485a-8a11-de3abe651c2c	middle_name	claim.name
859fb6e5-7671-485a-8a11-de3abe651c2c	String	jsonType.label
b3a8dfbb-b946-406a-9fea-5b7ba26a0774	true	userinfo.token.claim
b3a8dfbb-b946-406a-9fea-5b7ba26a0774	nickname	user.attribute
b3a8dfbb-b946-406a-9fea-5b7ba26a0774	true	id.token.claim
b3a8dfbb-b946-406a-9fea-5b7ba26a0774	true	access.token.claim
b3a8dfbb-b946-406a-9fea-5b7ba26a0774	nickname	claim.name
b3a8dfbb-b946-406a-9fea-5b7ba26a0774	String	jsonType.label
be3fe03d-704c-42cb-b6e6-5ac779aa60f5	true	userinfo.token.claim
be3fe03d-704c-42cb-b6e6-5ac779aa60f5	zoneinfo	user.attribute
be3fe03d-704c-42cb-b6e6-5ac779aa60f5	true	id.token.claim
be3fe03d-704c-42cb-b6e6-5ac779aa60f5	true	access.token.claim
be3fe03d-704c-42cb-b6e6-5ac779aa60f5	zoneinfo	claim.name
be3fe03d-704c-42cb-b6e6-5ac779aa60f5	String	jsonType.label
c70fdc79-64b7-4524-847a-5de9c0c15af3	true	userinfo.token.claim
c70fdc79-64b7-4524-847a-5de9c0c15af3	lastName	user.attribute
c70fdc79-64b7-4524-847a-5de9c0c15af3	true	id.token.claim
c70fdc79-64b7-4524-847a-5de9c0c15af3	true	access.token.claim
c70fdc79-64b7-4524-847a-5de9c0c15af3	family_name	claim.name
c70fdc79-64b7-4524-847a-5de9c0c15af3	String	jsonType.label
f0dd536c-69c0-4e4b-99b8-db8ab6721fb7	true	userinfo.token.claim
f0dd536c-69c0-4e4b-99b8-db8ab6721fb7	firstName	user.attribute
f0dd536c-69c0-4e4b-99b8-db8ab6721fb7	true	id.token.claim
f0dd536c-69c0-4e4b-99b8-db8ab6721fb7	true	access.token.claim
f0dd536c-69c0-4e4b-99b8-db8ab6721fb7	given_name	claim.name
f0dd536c-69c0-4e4b-99b8-db8ab6721fb7	String	jsonType.label
39a01a86-a58a-46f7-881b-37b04f2f354a	true	userinfo.token.claim
39a01a86-a58a-46f7-881b-37b04f2f354a	emailVerified	user.attribute
39a01a86-a58a-46f7-881b-37b04f2f354a	true	id.token.claim
39a01a86-a58a-46f7-881b-37b04f2f354a	true	access.token.claim
39a01a86-a58a-46f7-881b-37b04f2f354a	email_verified	claim.name
39a01a86-a58a-46f7-881b-37b04f2f354a	boolean	jsonType.label
40dfdc67-db08-449f-97ce-cb205c648831	true	userinfo.token.claim
40dfdc67-db08-449f-97ce-cb205c648831	email	user.attribute
40dfdc67-db08-449f-97ce-cb205c648831	true	id.token.claim
40dfdc67-db08-449f-97ce-cb205c648831	true	access.token.claim
40dfdc67-db08-449f-97ce-cb205c648831	email	claim.name
40dfdc67-db08-449f-97ce-cb205c648831	String	jsonType.label
ff7b832d-f8fb-4f05-a208-53144bcfaac9	formatted	user.attribute.formatted
ff7b832d-f8fb-4f05-a208-53144bcfaac9	country	user.attribute.country
ff7b832d-f8fb-4f05-a208-53144bcfaac9	postal_code	user.attribute.postal_code
ff7b832d-f8fb-4f05-a208-53144bcfaac9	true	userinfo.token.claim
ff7b832d-f8fb-4f05-a208-53144bcfaac9	street	user.attribute.street
ff7b832d-f8fb-4f05-a208-53144bcfaac9	true	id.token.claim
ff7b832d-f8fb-4f05-a208-53144bcfaac9	region	user.attribute.region
ff7b832d-f8fb-4f05-a208-53144bcfaac9	true	access.token.claim
ff7b832d-f8fb-4f05-a208-53144bcfaac9	locality	user.attribute.locality
44e27d9a-a8c2-44f5-a0a5-960383ff2f66	true	userinfo.token.claim
44e27d9a-a8c2-44f5-a0a5-960383ff2f66	phoneNumber	user.attribute
44e27d9a-a8c2-44f5-a0a5-960383ff2f66	true	id.token.claim
44e27d9a-a8c2-44f5-a0a5-960383ff2f66	true	access.token.claim
44e27d9a-a8c2-44f5-a0a5-960383ff2f66	phone_number	claim.name
44e27d9a-a8c2-44f5-a0a5-960383ff2f66	String	jsonType.label
d71b398b-18d6-4c9a-ba61-d8f1c009c315	true	userinfo.token.claim
d71b398b-18d6-4c9a-ba61-d8f1c009c315	phoneNumberVerified	user.attribute
d71b398b-18d6-4c9a-ba61-d8f1c009c315	true	id.token.claim
d71b398b-18d6-4c9a-ba61-d8f1c009c315	true	access.token.claim
d71b398b-18d6-4c9a-ba61-d8f1c009c315	phone_number_verified	claim.name
d71b398b-18d6-4c9a-ba61-d8f1c009c315	boolean	jsonType.label
a8f643b1-5277-4f12-8b46-e77e68bc54b9	true	multivalued
a8f643b1-5277-4f12-8b46-e77e68bc54b9	foo	user.attribute
a8f643b1-5277-4f12-8b46-e77e68bc54b9	true	access.token.claim
a8f643b1-5277-4f12-8b46-e77e68bc54b9	resource_access.${client_id}.roles	claim.name
a8f643b1-5277-4f12-8b46-e77e68bc54b9	String	jsonType.label
d31d6628-ed2b-4e31-a0d1-b8fbc5ca5149	true	multivalued
d31d6628-ed2b-4e31-a0d1-b8fbc5ca5149	foo	user.attribute
d31d6628-ed2b-4e31-a0d1-b8fbc5ca5149	true	access.token.claim
d31d6628-ed2b-4e31-a0d1-b8fbc5ca5149	realm_access.roles	claim.name
d31d6628-ed2b-4e31-a0d1-b8fbc5ca5149	String	jsonType.label
75afd873-1073-48ea-aac8-a691b7b3c5c8	true	userinfo.token.claim
75afd873-1073-48ea-aac8-a691b7b3c5c8	username	user.attribute
75afd873-1073-48ea-aac8-a691b7b3c5c8	true	id.token.claim
75afd873-1073-48ea-aac8-a691b7b3c5c8	true	access.token.claim
75afd873-1073-48ea-aac8-a691b7b3c5c8	upn	claim.name
75afd873-1073-48ea-aac8-a691b7b3c5c8	String	jsonType.label
d94c2602-68f3-40fb-b82d-4ffc043dc2de	true	multivalued
d94c2602-68f3-40fb-b82d-4ffc043dc2de	foo	user.attribute
d94c2602-68f3-40fb-b82d-4ffc043dc2de	true	id.token.claim
d94c2602-68f3-40fb-b82d-4ffc043dc2de	true	access.token.claim
d94c2602-68f3-40fb-b82d-4ffc043dc2de	groups	claim.name
d94c2602-68f3-40fb-b82d-4ffc043dc2de	String	jsonType.label
d48dc165-6762-4ec4-bfef-6949b6084c51	true	id.token.claim
d48dc165-6762-4ec4-bfef-6949b6084c51	true	access.token.claim
a3f12ffa-2c19-44aa-b92c-16b4b5aa8e2f	false	single
a3f12ffa-2c19-44aa-b92c-16b4b5aa8e2f	Basic	attribute.nameformat
a3f12ffa-2c19-44aa-b92c-16b4b5aa8e2f	Role	attribute.name
1b817134-ac05-42d2-9be8-09fca6aeeedc	true	userinfo.token.claim
1b817134-ac05-42d2-9be8-09fca6aeeedc	true	id.token.claim
1b817134-ac05-42d2-9be8-09fca6aeeedc	true	access.token.claim
1f88a7e8-80d4-466f-aeb8-c6a600edc628	true	userinfo.token.claim
1f88a7e8-80d4-466f-aeb8-c6a600edc628	lastName	user.attribute
1f88a7e8-80d4-466f-aeb8-c6a600edc628	true	id.token.claim
1f88a7e8-80d4-466f-aeb8-c6a600edc628	true	access.token.claim
1f88a7e8-80d4-466f-aeb8-c6a600edc628	family_name	claim.name
1f88a7e8-80d4-466f-aeb8-c6a600edc628	String	jsonType.label
26d3dbf0-bde9-4590-955b-29f892138923	true	userinfo.token.claim
26d3dbf0-bde9-4590-955b-29f892138923	birthdate	user.attribute
26d3dbf0-bde9-4590-955b-29f892138923	true	id.token.claim
26d3dbf0-bde9-4590-955b-29f892138923	true	access.token.claim
26d3dbf0-bde9-4590-955b-29f892138923	birthdate	claim.name
26d3dbf0-bde9-4590-955b-29f892138923	String	jsonType.label
445fbd78-b5f1-434c-974e-735dc6684709	true	userinfo.token.claim
445fbd78-b5f1-434c-974e-735dc6684709	picture	user.attribute
445fbd78-b5f1-434c-974e-735dc6684709	true	id.token.claim
445fbd78-b5f1-434c-974e-735dc6684709	true	access.token.claim
445fbd78-b5f1-434c-974e-735dc6684709	picture	claim.name
445fbd78-b5f1-434c-974e-735dc6684709	String	jsonType.label
453d3216-1323-4222-b408-dae9ba92d3fc	true	userinfo.token.claim
453d3216-1323-4222-b408-dae9ba92d3fc	gender	user.attribute
453d3216-1323-4222-b408-dae9ba92d3fc	true	id.token.claim
453d3216-1323-4222-b408-dae9ba92d3fc	true	access.token.claim
453d3216-1323-4222-b408-dae9ba92d3fc	gender	claim.name
453d3216-1323-4222-b408-dae9ba92d3fc	String	jsonType.label
47135e88-d578-4003-966f-141054084649	true	userinfo.token.claim
47135e88-d578-4003-966f-141054084649	zoneinfo	user.attribute
47135e88-d578-4003-966f-141054084649	true	id.token.claim
47135e88-d578-4003-966f-141054084649	true	access.token.claim
47135e88-d578-4003-966f-141054084649	zoneinfo	claim.name
47135e88-d578-4003-966f-141054084649	String	jsonType.label
4a72072f-add7-4f5f-932e-a6a369ffc845	true	userinfo.token.claim
4a72072f-add7-4f5f-932e-a6a369ffc845	nickname	user.attribute
4a72072f-add7-4f5f-932e-a6a369ffc845	true	id.token.claim
4a72072f-add7-4f5f-932e-a6a369ffc845	true	access.token.claim
4a72072f-add7-4f5f-932e-a6a369ffc845	nickname	claim.name
4a72072f-add7-4f5f-932e-a6a369ffc845	String	jsonType.label
5bd424f5-ae21-443d-8d1a-e0e03258bccf	true	userinfo.token.claim
5bd424f5-ae21-443d-8d1a-e0e03258bccf	middleName	user.attribute
5bd424f5-ae21-443d-8d1a-e0e03258bccf	true	id.token.claim
5bd424f5-ae21-443d-8d1a-e0e03258bccf	true	access.token.claim
5bd424f5-ae21-443d-8d1a-e0e03258bccf	middle_name	claim.name
5bd424f5-ae21-443d-8d1a-e0e03258bccf	String	jsonType.label
6a7aff53-daa6-442f-b640-8fa168fbc13f	true	userinfo.token.claim
6a7aff53-daa6-442f-b640-8fa168fbc13f	username	user.attribute
6a7aff53-daa6-442f-b640-8fa168fbc13f	true	id.token.claim
6a7aff53-daa6-442f-b640-8fa168fbc13f	true	access.token.claim
6a7aff53-daa6-442f-b640-8fa168fbc13f	preferred_username	claim.name
6a7aff53-daa6-442f-b640-8fa168fbc13f	String	jsonType.label
8d7bd2a2-f5db-4805-ac64-12c9765fedab	true	userinfo.token.claim
8d7bd2a2-f5db-4805-ac64-12c9765fedab	locale	user.attribute
8d7bd2a2-f5db-4805-ac64-12c9765fedab	true	id.token.claim
8d7bd2a2-f5db-4805-ac64-12c9765fedab	true	access.token.claim
8d7bd2a2-f5db-4805-ac64-12c9765fedab	locale	claim.name
8d7bd2a2-f5db-4805-ac64-12c9765fedab	String	jsonType.label
8dfbd817-08d1-4b53-9942-b9741c076cdf	true	userinfo.token.claim
8dfbd817-08d1-4b53-9942-b9741c076cdf	firstName	user.attribute
8dfbd817-08d1-4b53-9942-b9741c076cdf	true	id.token.claim
8dfbd817-08d1-4b53-9942-b9741c076cdf	true	access.token.claim
8dfbd817-08d1-4b53-9942-b9741c076cdf	given_name	claim.name
8dfbd817-08d1-4b53-9942-b9741c076cdf	String	jsonType.label
8e5190df-9d16-4624-86cd-ba05e55e16a7	true	userinfo.token.claim
8e5190df-9d16-4624-86cd-ba05e55e16a7	profile	user.attribute
8e5190df-9d16-4624-86cd-ba05e55e16a7	true	id.token.claim
8e5190df-9d16-4624-86cd-ba05e55e16a7	true	access.token.claim
8e5190df-9d16-4624-86cd-ba05e55e16a7	profile	claim.name
8e5190df-9d16-4624-86cd-ba05e55e16a7	String	jsonType.label
add48289-78ca-4e51-b809-6e1f8dcb9f7d	true	userinfo.token.claim
add48289-78ca-4e51-b809-6e1f8dcb9f7d	updatedAt	user.attribute
add48289-78ca-4e51-b809-6e1f8dcb9f7d	true	id.token.claim
add48289-78ca-4e51-b809-6e1f8dcb9f7d	true	access.token.claim
add48289-78ca-4e51-b809-6e1f8dcb9f7d	updated_at	claim.name
add48289-78ca-4e51-b809-6e1f8dcb9f7d	long	jsonType.label
d38362c4-f606-4ab5-8f05-1cec1c8bb32b	true	userinfo.token.claim
d38362c4-f606-4ab5-8f05-1cec1c8bb32b	website	user.attribute
d38362c4-f606-4ab5-8f05-1cec1c8bb32b	true	id.token.claim
d38362c4-f606-4ab5-8f05-1cec1c8bb32b	true	access.token.claim
d38362c4-f606-4ab5-8f05-1cec1c8bb32b	website	claim.name
d38362c4-f606-4ab5-8f05-1cec1c8bb32b	String	jsonType.label
2302a53e-5c1b-4160-ba9d-0c6b38e25995	true	userinfo.token.claim
2302a53e-5c1b-4160-ba9d-0c6b38e25995	emailVerified	user.attribute
2302a53e-5c1b-4160-ba9d-0c6b38e25995	true	id.token.claim
2302a53e-5c1b-4160-ba9d-0c6b38e25995	true	access.token.claim
2302a53e-5c1b-4160-ba9d-0c6b38e25995	email_verified	claim.name
2302a53e-5c1b-4160-ba9d-0c6b38e25995	boolean	jsonType.label
c6e7889e-37cb-4405-a686-e5b78d9a8c9d	true	userinfo.token.claim
c6e7889e-37cb-4405-a686-e5b78d9a8c9d	email	user.attribute
c6e7889e-37cb-4405-a686-e5b78d9a8c9d	true	id.token.claim
c6e7889e-37cb-4405-a686-e5b78d9a8c9d	true	access.token.claim
c6e7889e-37cb-4405-a686-e5b78d9a8c9d	email	claim.name
c6e7889e-37cb-4405-a686-e5b78d9a8c9d	String	jsonType.label
f0283210-7497-48d3-a7ef-34fda6f5ba16	formatted	user.attribute.formatted
f0283210-7497-48d3-a7ef-34fda6f5ba16	country	user.attribute.country
f0283210-7497-48d3-a7ef-34fda6f5ba16	postal_code	user.attribute.postal_code
f0283210-7497-48d3-a7ef-34fda6f5ba16	true	userinfo.token.claim
f0283210-7497-48d3-a7ef-34fda6f5ba16	street	user.attribute.street
f0283210-7497-48d3-a7ef-34fda6f5ba16	true	id.token.claim
f0283210-7497-48d3-a7ef-34fda6f5ba16	region	user.attribute.region
f0283210-7497-48d3-a7ef-34fda6f5ba16	true	access.token.claim
f0283210-7497-48d3-a7ef-34fda6f5ba16	locality	user.attribute.locality
24de8bd3-a4f9-4e04-aa1b-859128c75586	true	userinfo.token.claim
24de8bd3-a4f9-4e04-aa1b-859128c75586	phoneNumber	user.attribute
24de8bd3-a4f9-4e04-aa1b-859128c75586	true	id.token.claim
24de8bd3-a4f9-4e04-aa1b-859128c75586	true	access.token.claim
24de8bd3-a4f9-4e04-aa1b-859128c75586	phone_number	claim.name
24de8bd3-a4f9-4e04-aa1b-859128c75586	String	jsonType.label
75337a88-993f-427d-aa92-c82e17497887	true	userinfo.token.claim
75337a88-993f-427d-aa92-c82e17497887	phoneNumberVerified	user.attribute
75337a88-993f-427d-aa92-c82e17497887	true	id.token.claim
75337a88-993f-427d-aa92-c82e17497887	true	access.token.claim
75337a88-993f-427d-aa92-c82e17497887	phone_number_verified	claim.name
75337a88-993f-427d-aa92-c82e17497887	boolean	jsonType.label
e0e65987-e196-4235-890b-4a695bee420f	true	multivalued
e0e65987-e196-4235-890b-4a695bee420f	foo	user.attribute
e0e65987-e196-4235-890b-4a695bee420f	true	access.token.claim
e0e65987-e196-4235-890b-4a695bee420f	realm_access.roles	claim.name
e0e65987-e196-4235-890b-4a695bee420f	String	jsonType.label
e6d00175-cf0c-444c-b08b-2cb6be6f556a	true	multivalued
e6d00175-cf0c-444c-b08b-2cb6be6f556a	foo	user.attribute
e6d00175-cf0c-444c-b08b-2cb6be6f556a	true	access.token.claim
e6d00175-cf0c-444c-b08b-2cb6be6f556a	resource_access.${client_id}.roles	claim.name
e6d00175-cf0c-444c-b08b-2cb6be6f556a	String	jsonType.label
0722a545-ef32-4fb1-b17e-77910e17bf30	true	userinfo.token.claim
0722a545-ef32-4fb1-b17e-77910e17bf30	username	user.attribute
0722a545-ef32-4fb1-b17e-77910e17bf30	true	id.token.claim
0722a545-ef32-4fb1-b17e-77910e17bf30	true	access.token.claim
0722a545-ef32-4fb1-b17e-77910e17bf30	upn	claim.name
0722a545-ef32-4fb1-b17e-77910e17bf30	String	jsonType.label
3d738dcb-0d15-4b83-af96-c5e3d9168f56	true	multivalued
3d738dcb-0d15-4b83-af96-c5e3d9168f56	foo	user.attribute
3d738dcb-0d15-4b83-af96-c5e3d9168f56	true	id.token.claim
3d738dcb-0d15-4b83-af96-c5e3d9168f56	true	access.token.claim
3d738dcb-0d15-4b83-af96-c5e3d9168f56	groups	claim.name
3d738dcb-0d15-4b83-af96-c5e3d9168f56	String	jsonType.label
e312a191-c4a6-4de4-ba5c-d7301c058be3	true	id.token.claim
e312a191-c4a6-4de4-ba5c-d7301c058be3	true	access.token.claim
0cde72da-9886-4672-a684-6cbbd84a0e31	true	userinfo.token.claim
0cde72da-9886-4672-a684-6cbbd84a0e31	locale	user.attribute
0cde72da-9886-4672-a684-6cbbd84a0e31	true	id.token.claim
0cde72da-9886-4672-a684-6cbbd84a0e31	true	access.token.claim
0cde72da-9886-4672-a684-6cbbd84a0e31	locale	claim.name
0cde72da-9886-4672-a684-6cbbd84a0e31	String	jsonType.label
32513878-8ed4-4763-889f-9b4c382fc7d4	client_id	user.session.note
32513878-8ed4-4763-889f-9b4c382fc7d4	true	id.token.claim
32513878-8ed4-4763-889f-9b4c382fc7d4	true	access.token.claim
32513878-8ed4-4763-889f-9b4c382fc7d4	client_id	claim.name
32513878-8ed4-4763-889f-9b4c382fc7d4	String	jsonType.label
57a371b0-4129-4485-bee5-437778d8d1af	clientAddress	user.session.note
57a371b0-4129-4485-bee5-437778d8d1af	true	id.token.claim
57a371b0-4129-4485-bee5-437778d8d1af	true	access.token.claim
57a371b0-4129-4485-bee5-437778d8d1af	clientAddress	claim.name
57a371b0-4129-4485-bee5-437778d8d1af	String	jsonType.label
d534d215-9368-40a2-9cc0-aabac955dd70	clientHost	user.session.note
d534d215-9368-40a2-9cc0-aabac955dd70	true	id.token.claim
d534d215-9368-40a2-9cc0-aabac955dd70	true	access.token.claim
d534d215-9368-40a2-9cc0-aabac955dd70	clientHost	claim.name
d534d215-9368-40a2-9cc0-aabac955dd70	String	jsonType.label
d135575c-ef2d-4839-86fe-3ef76701fb4c	false	multivalued
d135575c-ef2d-4839-86fe-3ef76701fb4c	true	userinfo.token.claim
d135575c-ef2d-4839-86fe-3ef76701fb4c	true	id.token.claim
d135575c-ef2d-4839-86fe-3ef76701fb4c	true	access.token.claim
d135575c-ef2d-4839-86fe-3ef76701fb4c	roles	claim.name
d135575c-ef2d-4839-86fe-3ef76701fb4c	String	jsonType.label
\.


--
-- TOC entry 4156 (class 0 OID 24663)
-- Dependencies: 224
-- Data for Name: realm; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.realm (id, access_code_lifespan, user_action_lifespan, access_token_lifespan, account_theme, admin_theme, email_theme, enabled, events_enabled, events_expiration, login_theme, name, not_before, password_policy, registration_allowed, remember_me, reset_password_allowed, social, ssl_required, sso_idle_timeout, sso_max_lifespan, update_profile_on_soc_login, verify_email, master_admin_client, login_lifespan, internationalization_enabled, default_locale, reg_email_as_username, admin_events_enabled, admin_events_details_enabled, edit_username_allowed, otp_policy_counter, otp_policy_window, otp_policy_period, otp_policy_digits, otp_policy_alg, otp_policy_type, browser_flow, registration_flow, direct_grant_flow, reset_credentials_flow, client_auth_flow, offline_session_idle_timeout, revoke_refresh_token, access_token_life_implicit, login_with_email_allowed, duplicate_emails_allowed, docker_auth_flow, refresh_token_max_reuse, allow_user_managed_access, sso_max_lifespan_remember_me, sso_idle_timeout_remember_me, default_role) FROM stdin;
675d35ab-979e-4d81-b10c-f03f25d56da7	60	300	60	\N	\N	\N	t	f	0	\N	master	0	\N	f	f	f	f	EXTERNAL	1800	36000	f	f	1ca53b96-38fc-4af1-b70d-b66f3f2c2dfa	1800	f	\N	f	f	f	f	0	1	30	6	HmacSHA1	totp	1cde504e-1fdc-43f1-bbd4-38b85efc27fe	7d08dc13-d5c1-4201-afb3-ea5b9a22b003	3a6db526-776a-408f-8dd3-b99ff90d6ef3	104cd79f-1c3c-4da2-b9f7-5885ba83b37f	664fbb7e-36a4-4685-a094-bca15ab90a3d	2592000	f	900	t	f	53cc7599-53ec-4056-8094-b201cb0717d4	0	f	0	0	7602d760-06ed-479b-b580-926782d70d21
7c54d901-12e8-4d3c-b1c0-87753e3330c2	60	300	300	\N	\N	\N	t	f	0	\N	pokestation	0	\N	f	f	f	f	EXTERNAL	1800	36000	f	f	d4cd2421-2499-4a0a-9a0d-b38956e828c9	1800	f	\N	f	f	f	f	0	1	30	6	HmacSHA1	totp	55b6d2b1-b553-4f7a-ad1f-89f6a4ae5129	5100a172-c352-44a0-8412-cfb5ab31da4e	3459829d-5022-45f5-be05-1d4b3529499a	e5c25a79-697c-4c44-810f-92997d80a593	e18c57d4-e2d5-4581-a054-69cc10d67593	2592000	f	900	t	f	4b5d59ae-c907-4678-b121-c2a114ee9918	0	f	0	0	150c44df-b575-4473-8071-543338246bf1
\.


--
-- TOC entry 4157 (class 0 OID 24680)
-- Dependencies: 225
-- Data for Name: realm_attribute; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.realm_attribute (name, realm_id, value) FROM stdin;
_browser_header.contentSecurityPolicyReportOnly	675d35ab-979e-4d81-b10c-f03f25d56da7	
_browser_header.xContentTypeOptions	675d35ab-979e-4d81-b10c-f03f25d56da7	nosniff
_browser_header.referrerPolicy	675d35ab-979e-4d81-b10c-f03f25d56da7	no-referrer
_browser_header.xRobotsTag	675d35ab-979e-4d81-b10c-f03f25d56da7	none
_browser_header.xFrameOptions	675d35ab-979e-4d81-b10c-f03f25d56da7	SAMEORIGIN
_browser_header.contentSecurityPolicy	675d35ab-979e-4d81-b10c-f03f25d56da7	frame-src 'self'; frame-ancestors 'self'; object-src 'none';
_browser_header.xXSSProtection	675d35ab-979e-4d81-b10c-f03f25d56da7	1; mode=block
_browser_header.strictTransportSecurity	675d35ab-979e-4d81-b10c-f03f25d56da7	max-age=31536000; includeSubDomains
bruteForceProtected	675d35ab-979e-4d81-b10c-f03f25d56da7	false
permanentLockout	675d35ab-979e-4d81-b10c-f03f25d56da7	false
maxFailureWaitSeconds	675d35ab-979e-4d81-b10c-f03f25d56da7	900
minimumQuickLoginWaitSeconds	675d35ab-979e-4d81-b10c-f03f25d56da7	60
waitIncrementSeconds	675d35ab-979e-4d81-b10c-f03f25d56da7	60
quickLoginCheckMilliSeconds	675d35ab-979e-4d81-b10c-f03f25d56da7	1000
maxDeltaTimeSeconds	675d35ab-979e-4d81-b10c-f03f25d56da7	43200
failureFactor	675d35ab-979e-4d81-b10c-f03f25d56da7	30
realmReusableOtpCode	675d35ab-979e-4d81-b10c-f03f25d56da7	false
displayName	675d35ab-979e-4d81-b10c-f03f25d56da7	Keycloak
displayNameHtml	675d35ab-979e-4d81-b10c-f03f25d56da7	<div class="kc-logo-text"><span>Keycloak</span></div>
defaultSignatureAlgorithm	675d35ab-979e-4d81-b10c-f03f25d56da7	RS256
offlineSessionMaxLifespanEnabled	675d35ab-979e-4d81-b10c-f03f25d56da7	false
offlineSessionMaxLifespan	675d35ab-979e-4d81-b10c-f03f25d56da7	5184000
_browser_header.contentSecurityPolicyReportOnly	7c54d901-12e8-4d3c-b1c0-87753e3330c2	
_browser_header.xContentTypeOptions	7c54d901-12e8-4d3c-b1c0-87753e3330c2	nosniff
_browser_header.referrerPolicy	7c54d901-12e8-4d3c-b1c0-87753e3330c2	no-referrer
_browser_header.xRobotsTag	7c54d901-12e8-4d3c-b1c0-87753e3330c2	none
_browser_header.xFrameOptions	7c54d901-12e8-4d3c-b1c0-87753e3330c2	SAMEORIGIN
_browser_header.contentSecurityPolicy	7c54d901-12e8-4d3c-b1c0-87753e3330c2	frame-src 'self'; frame-ancestors 'self'; object-src 'none';
_browser_header.xXSSProtection	7c54d901-12e8-4d3c-b1c0-87753e3330c2	1; mode=block
_browser_header.strictTransportSecurity	7c54d901-12e8-4d3c-b1c0-87753e3330c2	max-age=31536000; includeSubDomains
bruteForceProtected	7c54d901-12e8-4d3c-b1c0-87753e3330c2	false
permanentLockout	7c54d901-12e8-4d3c-b1c0-87753e3330c2	false
maxFailureWaitSeconds	7c54d901-12e8-4d3c-b1c0-87753e3330c2	900
minimumQuickLoginWaitSeconds	7c54d901-12e8-4d3c-b1c0-87753e3330c2	60
waitIncrementSeconds	7c54d901-12e8-4d3c-b1c0-87753e3330c2	60
quickLoginCheckMilliSeconds	7c54d901-12e8-4d3c-b1c0-87753e3330c2	1000
maxDeltaTimeSeconds	7c54d901-12e8-4d3c-b1c0-87753e3330c2	43200
failureFactor	7c54d901-12e8-4d3c-b1c0-87753e3330c2	30
realmReusableOtpCode	7c54d901-12e8-4d3c-b1c0-87753e3330c2	false
defaultSignatureAlgorithm	7c54d901-12e8-4d3c-b1c0-87753e3330c2	RS256
offlineSessionMaxLifespanEnabled	7c54d901-12e8-4d3c-b1c0-87753e3330c2	false
offlineSessionMaxLifespan	7c54d901-12e8-4d3c-b1c0-87753e3330c2	5184000
actionTokenGeneratedByAdminLifespan	7c54d901-12e8-4d3c-b1c0-87753e3330c2	43200
actionTokenGeneratedByUserLifespan	7c54d901-12e8-4d3c-b1c0-87753e3330c2	300
oauth2DeviceCodeLifespan	7c54d901-12e8-4d3c-b1c0-87753e3330c2	600
oauth2DevicePollingInterval	7c54d901-12e8-4d3c-b1c0-87753e3330c2	5
webAuthnPolicyRpEntityName	7c54d901-12e8-4d3c-b1c0-87753e3330c2	keycloak
webAuthnPolicySignatureAlgorithms	7c54d901-12e8-4d3c-b1c0-87753e3330c2	ES256
webAuthnPolicyRpId	7c54d901-12e8-4d3c-b1c0-87753e3330c2	
webAuthnPolicyAttestationConveyancePreference	7c54d901-12e8-4d3c-b1c0-87753e3330c2	not specified
webAuthnPolicyAuthenticatorAttachment	7c54d901-12e8-4d3c-b1c0-87753e3330c2	not specified
webAuthnPolicyRequireResidentKey	7c54d901-12e8-4d3c-b1c0-87753e3330c2	not specified
webAuthnPolicyUserVerificationRequirement	7c54d901-12e8-4d3c-b1c0-87753e3330c2	not specified
webAuthnPolicyCreateTimeout	7c54d901-12e8-4d3c-b1c0-87753e3330c2	0
webAuthnPolicyAvoidSameAuthenticatorRegister	7c54d901-12e8-4d3c-b1c0-87753e3330c2	false
webAuthnPolicyRpEntityNamePasswordless	7c54d901-12e8-4d3c-b1c0-87753e3330c2	keycloak
webAuthnPolicySignatureAlgorithmsPasswordless	7c54d901-12e8-4d3c-b1c0-87753e3330c2	ES256
webAuthnPolicyRpIdPasswordless	7c54d901-12e8-4d3c-b1c0-87753e3330c2	
webAuthnPolicyAttestationConveyancePreferencePasswordless	7c54d901-12e8-4d3c-b1c0-87753e3330c2	not specified
webAuthnPolicyAuthenticatorAttachmentPasswordless	7c54d901-12e8-4d3c-b1c0-87753e3330c2	not specified
webAuthnPolicyRequireResidentKeyPasswordless	7c54d901-12e8-4d3c-b1c0-87753e3330c2	not specified
webAuthnPolicyUserVerificationRequirementPasswordless	7c54d901-12e8-4d3c-b1c0-87753e3330c2	not specified
webAuthnPolicyCreateTimeoutPasswordless	7c54d901-12e8-4d3c-b1c0-87753e3330c2	0
webAuthnPolicyAvoidSameAuthenticatorRegisterPasswordless	7c54d901-12e8-4d3c-b1c0-87753e3330c2	false
cibaBackchannelTokenDeliveryMode	7c54d901-12e8-4d3c-b1c0-87753e3330c2	poll
cibaExpiresIn	7c54d901-12e8-4d3c-b1c0-87753e3330c2	120
cibaInterval	7c54d901-12e8-4d3c-b1c0-87753e3330c2	5
cibaAuthRequestedUserHint	7c54d901-12e8-4d3c-b1c0-87753e3330c2	login_hint
parRequestUriLifespan	7c54d901-12e8-4d3c-b1c0-87753e3330c2	60
\.


--
-- TOC entry 4205 (class 0 OID 25437)
-- Dependencies: 273
-- Data for Name: realm_default_groups; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.realm_default_groups (realm_id, group_id) FROM stdin;
\.


--
-- TOC entry 4182 (class 0 OID 25133)
-- Dependencies: 250
-- Data for Name: realm_enabled_event_types; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.realm_enabled_event_types (realm_id, value) FROM stdin;
\.


--
-- TOC entry 4158 (class 0 OID 24688)
-- Dependencies: 226
-- Data for Name: realm_events_listeners; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.realm_events_listeners (realm_id, value) FROM stdin;
675d35ab-979e-4d81-b10c-f03f25d56da7	jboss-logging
7c54d901-12e8-4d3c-b1c0-87753e3330c2	jboss-logging
\.


--
-- TOC entry 4238 (class 0 OID 26139)
-- Dependencies: 306
-- Data for Name: realm_localizations; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.realm_localizations (realm_id, locale, texts) FROM stdin;
\.


--
-- TOC entry 4159 (class 0 OID 24691)
-- Dependencies: 227
-- Data for Name: realm_required_credential; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.realm_required_credential (type, form_label, input, secret, realm_id) FROM stdin;
password	password	t	t	675d35ab-979e-4d81-b10c-f03f25d56da7
password	password	t	t	7c54d901-12e8-4d3c-b1c0-87753e3330c2
\.


--
-- TOC entry 4160 (class 0 OID 24698)
-- Dependencies: 228
-- Data for Name: realm_smtp_config; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.realm_smtp_config (realm_id, value, name) FROM stdin;
\.


--
-- TOC entry 4180 (class 0 OID 25049)
-- Dependencies: 248
-- Data for Name: realm_supported_locales; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.realm_supported_locales (realm_id, value) FROM stdin;
\.


--
-- TOC entry 4161 (class 0 OID 24708)
-- Dependencies: 229
-- Data for Name: redirect_uris; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.redirect_uris (client_id, value) FROM stdin;
b28d6a4e-670e-4452-ab6a-90b21f2860d4	/realms/master/account/*
cb01e043-2142-450a-8dd0-800be7adaf82	/realms/master/account/*
597c6fb1-16bf-450d-ace9-bb01e7f58912	/admin/master/console/*
267410fd-7176-4699-a70f-41b5baa0e94d	/realms/pokestation/account/*
663a7a94-b499-4f80-81ea-6f745fbe25d6	/realms/pokestation/account/*
cf82469b-201d-424a-899b-d419082f48a7	/admin/pokestation/console/*
895883a3-0ad1-4bb5-be6c-72e990dba750	http://localhost:4200/*
895883a3-0ad1-4bb5-be6c-72e990dba750	http://localhost/*
895883a3-0ad1-4bb5-be6c-72e990dba750	http://app.pokestation.com/*
62156c2e-fe7e-4a87-9bb0-d48e2d76ba07	http://localhost:8080/*
62156c2e-fe7e-4a87-9bb0-d48e2d76ba07	http://localhost:4200/*
62156c2e-fe7e-4a87-9bb0-d48e2d76ba07	http://app.pokestation.com/*
62156c2e-fe7e-4a87-9bb0-d48e2d76ba07	http://localhost/*
\.


--
-- TOC entry 4198 (class 0 OID 25372)
-- Dependencies: 266
-- Data for Name: required_action_config; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.required_action_config (required_action_id, value, name) FROM stdin;
\.


--
-- TOC entry 4197 (class 0 OID 25365)
-- Dependencies: 265
-- Data for Name: required_action_provider; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.required_action_provider (id, alias, name, realm_id, enabled, default_action, provider_id, priority) FROM stdin;
d0880b9d-7d9a-42c6-b96c-b4f63453aa56	VERIFY_EMAIL	Verify Email	675d35ab-979e-4d81-b10c-f03f25d56da7	t	f	VERIFY_EMAIL	50
3c466549-3f94-4217-98dd-b2338a1d97f9	UPDATE_PROFILE	Update Profile	675d35ab-979e-4d81-b10c-f03f25d56da7	t	f	UPDATE_PROFILE	40
2abb937c-c19a-4e70-83d0-5082290bafe6	CONFIGURE_TOTP	Configure OTP	675d35ab-979e-4d81-b10c-f03f25d56da7	t	f	CONFIGURE_TOTP	10
5a1a05d1-36e0-49c6-ac29-1cdb3c5d4a96	UPDATE_PASSWORD	Update Password	675d35ab-979e-4d81-b10c-f03f25d56da7	t	f	UPDATE_PASSWORD	30
d9d785d2-f44d-497f-9bad-44353d56ad5f	TERMS_AND_CONDITIONS	Terms and Conditions	675d35ab-979e-4d81-b10c-f03f25d56da7	f	f	TERMS_AND_CONDITIONS	20
4c3b8666-3d3f-40c8-9168-5a7a46553b9b	delete_account	Delete Account	675d35ab-979e-4d81-b10c-f03f25d56da7	f	f	delete_account	60
ced8488a-d5c4-4560-bbaf-2f063f5c42c0	update_user_locale	Update User Locale	675d35ab-979e-4d81-b10c-f03f25d56da7	t	f	update_user_locale	1000
dee641bb-0e5c-47fc-a477-2807952402f7	webauthn-register	Webauthn Register	675d35ab-979e-4d81-b10c-f03f25d56da7	t	f	webauthn-register	70
3d35dd24-4481-4306-912c-eab02a43e46a	webauthn-register-passwordless	Webauthn Register Passwordless	675d35ab-979e-4d81-b10c-f03f25d56da7	t	f	webauthn-register-passwordless	80
598cb73a-e4f8-4e4a-83a7-23193d4d6ebd	VERIFY_EMAIL	Verify Email	7c54d901-12e8-4d3c-b1c0-87753e3330c2	t	f	VERIFY_EMAIL	50
deaac331-2833-4ad1-a9cd-17da56c6fbb0	UPDATE_PROFILE	Update Profile	7c54d901-12e8-4d3c-b1c0-87753e3330c2	t	f	UPDATE_PROFILE	40
2a284233-3f5e-4495-b2f6-09be9d6ba2bd	CONFIGURE_TOTP	Configure OTP	7c54d901-12e8-4d3c-b1c0-87753e3330c2	t	f	CONFIGURE_TOTP	10
22bf243a-2617-461c-9b5f-a8f76b15b3e8	UPDATE_PASSWORD	Update Password	7c54d901-12e8-4d3c-b1c0-87753e3330c2	t	f	UPDATE_PASSWORD	30
a94352ba-37a8-4dbd-a0d9-2bce9e1d1877	TERMS_AND_CONDITIONS	Terms and Conditions	7c54d901-12e8-4d3c-b1c0-87753e3330c2	f	f	TERMS_AND_CONDITIONS	20
84e2cb0c-e54d-4d7b-b8ee-5aa554e32da2	delete_account	Delete Account	7c54d901-12e8-4d3c-b1c0-87753e3330c2	f	f	delete_account	60
1c4631d4-efab-427c-937a-3ebf91b6f2da	update_user_locale	Update User Locale	7c54d901-12e8-4d3c-b1c0-87753e3330c2	t	f	update_user_locale	1000
5708b60e-2144-48f5-89dc-5eb3e37e7a27	webauthn-register	Webauthn Register	7c54d901-12e8-4d3c-b1c0-87753e3330c2	t	f	webauthn-register	70
6f5104e3-7062-4676-814e-7c8309a3acb9	webauthn-register-passwordless	Webauthn Register Passwordless	7c54d901-12e8-4d3c-b1c0-87753e3330c2	t	f	webauthn-register-passwordless	80
\.


--
-- TOC entry 4235 (class 0 OID 26070)
-- Dependencies: 303
-- Data for Name: resource_attribute; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.resource_attribute (id, name, value, resource_id) FROM stdin;
\.


--
-- TOC entry 4215 (class 0 OID 25654)
-- Dependencies: 283
-- Data for Name: resource_policy; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.resource_policy (resource_id, policy_id) FROM stdin;
\.


--
-- TOC entry 4214 (class 0 OID 25639)
-- Dependencies: 282
-- Data for Name: resource_scope; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.resource_scope (resource_id, scope_id) FROM stdin;
\.


--
-- TOC entry 4209 (class 0 OID 25577)
-- Dependencies: 277
-- Data for Name: resource_server; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.resource_server (id, allow_rs_remote_mgmt, policy_enforce_mode, decision_strategy) FROM stdin;
62156c2e-fe7e-4a87-9bb0-d48e2d76ba07	t	0	1
\.


--
-- TOC entry 4234 (class 0 OID 26046)
-- Dependencies: 302
-- Data for Name: resource_server_perm_ticket; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.resource_server_perm_ticket (id, owner, requester, created_timestamp, granted_timestamp, resource_id, scope_id, resource_server_id, policy_id) FROM stdin;
\.


--
-- TOC entry 4212 (class 0 OID 25613)
-- Dependencies: 280
-- Data for Name: resource_server_policy; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.resource_server_policy (id, name, description, type, decision_strategy, logic, resource_server_id, owner) FROM stdin;
f8c2bd82-ca94-4b53-8099-b3e12fd33539	Default Policy	A policy that grants access only for users within this realm	js	0	0	62156c2e-fe7e-4a87-9bb0-d48e2d76ba07	\N
fa9a99da-a577-41eb-a653-f9da6073132c	Default Permission	A permission that applies to the default resource type	resource	1	0	62156c2e-fe7e-4a87-9bb0-d48e2d76ba07	\N
\.


--
-- TOC entry 4210 (class 0 OID 25585)
-- Dependencies: 278
-- Data for Name: resource_server_resource; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.resource_server_resource (id, name, type, icon_uri, owner, resource_server_id, owner_managed_access, display_name) FROM stdin;
e14dba75-5fee-4a34-8e8c-eb06f5f84e24	Default Resource	urn:pokestation:resources:default	\N	62156c2e-fe7e-4a87-9bb0-d48e2d76ba07	62156c2e-fe7e-4a87-9bb0-d48e2d76ba07	f	\N
\.


--
-- TOC entry 4211 (class 0 OID 25599)
-- Dependencies: 279
-- Data for Name: resource_server_scope; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.resource_server_scope (id, name, icon_uri, resource_server_id, display_name) FROM stdin;
\.


--
-- TOC entry 4236 (class 0 OID 26088)
-- Dependencies: 304
-- Data for Name: resource_uris; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.resource_uris (resource_id, value) FROM stdin;
e14dba75-5fee-4a34-8e8c-eb06f5f84e24	/*
\.


--
-- TOC entry 4237 (class 0 OID 26098)
-- Dependencies: 305
-- Data for Name: role_attribute; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.role_attribute (id, role_id, name, value) FROM stdin;
\.


--
-- TOC entry 4162 (class 0 OID 24711)
-- Dependencies: 230
-- Data for Name: scope_mapping; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.scope_mapping (client_id, role_id) FROM stdin;
cb01e043-2142-450a-8dd0-800be7adaf82	9a3a5f17-35fa-4790-a9cf-1b34708659c2
cb01e043-2142-450a-8dd0-800be7adaf82	d4e022d8-8875-423e-9e32-e6d54c247b70
663a7a94-b499-4f80-81ea-6f745fbe25d6	5092a6e0-586e-4104-bb86-137e89d0dafb
663a7a94-b499-4f80-81ea-6f745fbe25d6	2bc72bce-a457-461c-b8c0-5bfd30d2681d
\.


--
-- TOC entry 4216 (class 0 OID 25669)
-- Dependencies: 284
-- Data for Name: scope_policy; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.scope_policy (scope_id, policy_id) FROM stdin;
\.


--
-- TOC entry 4164 (class 0 OID 24717)
-- Dependencies: 232
-- Data for Name: user_attribute; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.user_attribute (name, value, user_id, id) FROM stdin;
\.


--
-- TOC entry 4186 (class 0 OID 25154)
-- Dependencies: 254
-- Data for Name: user_consent; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.user_consent (id, client_id, user_id, created_date, last_updated_date, client_storage_provider, external_client_id) FROM stdin;
\.


--
-- TOC entry 4232 (class 0 OID 26021)
-- Dependencies: 300
-- Data for Name: user_consent_client_scope; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.user_consent_client_scope (user_consent_id, scope_id) FROM stdin;
\.


--
-- TOC entry 4165 (class 0 OID 24722)
-- Dependencies: 233
-- Data for Name: user_entity; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.user_entity (id, email, email_constraint, email_verified, enabled, federation_link, first_name, last_name, realm_id, username, created_timestamp, service_account_client_link, not_before) FROM stdin;
02ff9cd8-d1c5-426e-90d7-353ef7202641	\N	e823a860-7523-4444-b17c-351423ac17e0	f	t	\N	\N	\N	675d35ab-979e-4d81-b10c-f03f25d56da7	admin	1700814025910	\N	0
006da9ce-6d76-44a0-b088-8b36c2f3ea7a	\N	d45a6a95-e447-4580-bd04-fee76c1f6d06	f	t	\N	\N	\N	7c54d901-12e8-4d3c-b1c0-87753e3330c2	service-account-backend	1700877205290	62156c2e-fe7e-4a87-9bb0-d48e2d76ba07	0
99057d7f-ccdf-4d08-9ff6-1e882c7256dc	admin@pokestation.com	admin@pokestation.com	t	t	\N	admin	admin1	7c54d901-12e8-4d3c-b1c0-87753e3330c2	admin	1700913195630	\N	0
c1c9f836-2b6d-4deb-b028-3859dd709501	user@pokestation.com	user@pokestation.com	t	t	\N	user	user1	7c54d901-12e8-4d3c-b1c0-87753e3330c2	user	1700913247296	\N	0
\.


--
-- TOC entry 4166 (class 0 OID 24730)
-- Dependencies: 234
-- Data for Name: user_federation_config; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.user_federation_config (user_federation_provider_id, value, name) FROM stdin;
\.


--
-- TOC entry 4193 (class 0 OID 25266)
-- Dependencies: 261
-- Data for Name: user_federation_mapper; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.user_federation_mapper (id, name, federation_provider_id, federation_mapper_type, realm_id) FROM stdin;
\.


--
-- TOC entry 4194 (class 0 OID 25271)
-- Dependencies: 262
-- Data for Name: user_federation_mapper_config; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.user_federation_mapper_config (user_federation_mapper_id, value, name) FROM stdin;
\.


--
-- TOC entry 4167 (class 0 OID 24735)
-- Dependencies: 235
-- Data for Name: user_federation_provider; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.user_federation_provider (id, changed_sync_period, display_name, full_sync_period, last_sync, priority, provider_name, realm_id) FROM stdin;
\.


--
-- TOC entry 4204 (class 0 OID 25434)
-- Dependencies: 272
-- Data for Name: user_group_membership; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.user_group_membership (group_id, user_id) FROM stdin;
706686b4-7384-4ef6-8526-2e2faaa8e0b6	99057d7f-ccdf-4d08-9ff6-1e882c7256dc
01e0c787-0db9-425a-844e-5e408957cddf	c1c9f836-2b6d-4deb-b028-3859dd709501
\.


--
-- TOC entry 4168 (class 0 OID 24740)
-- Dependencies: 236
-- Data for Name: user_required_action; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.user_required_action (user_id, required_action) FROM stdin;
\.


--
-- TOC entry 4169 (class 0 OID 24743)
-- Dependencies: 237
-- Data for Name: user_role_mapping; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.user_role_mapping (role_id, user_id) FROM stdin;
7602d760-06ed-479b-b580-926782d70d21	02ff9cd8-d1c5-426e-90d7-353ef7202641
989fb074-be13-4d2b-8c69-b10dbe004223	02ff9cd8-d1c5-426e-90d7-353ef7202641
0dcd2c0e-bb7b-4053-bb7b-f29edf758033	02ff9cd8-d1c5-426e-90d7-353ef7202641
7f0f4eaa-fe17-45ea-870f-a597a74fe31f	02ff9cd8-d1c5-426e-90d7-353ef7202641
11d02d42-a0db-4217-861c-e470526fa7da	02ff9cd8-d1c5-426e-90d7-353ef7202641
982d4814-c183-4a92-9f9c-2c5fc8d58e80	02ff9cd8-d1c5-426e-90d7-353ef7202641
3e4a3e1f-d12d-4e0c-a570-d7266d1c078b	02ff9cd8-d1c5-426e-90d7-353ef7202641
43958dd9-40d2-4573-95a0-52cc46e3440e	02ff9cd8-d1c5-426e-90d7-353ef7202641
a703d695-2ead-4c6c-bab0-4603284c99bf	02ff9cd8-d1c5-426e-90d7-353ef7202641
f5da0730-1b44-443d-92a3-c49998b65123	02ff9cd8-d1c5-426e-90d7-353ef7202641
35558cf6-656d-4df8-b169-01fdb665981f	02ff9cd8-d1c5-426e-90d7-353ef7202641
6b71ff90-7a76-4379-9ef3-0d93509b1d77	02ff9cd8-d1c5-426e-90d7-353ef7202641
995206f0-2b33-4383-b21f-9ddbe9fc4619	02ff9cd8-d1c5-426e-90d7-353ef7202641
4961293a-78c6-4517-b2ec-93db1b2ff28e	02ff9cd8-d1c5-426e-90d7-353ef7202641
c634b7ec-b154-47e5-95f4-ac128656bc20	02ff9cd8-d1c5-426e-90d7-353ef7202641
3e7be44b-4ec8-464e-ab8c-b9f2c845645d	02ff9cd8-d1c5-426e-90d7-353ef7202641
526b9dc6-de30-4c0a-9022-e1275a006e26	02ff9cd8-d1c5-426e-90d7-353ef7202641
4568112e-937b-4d10-b1f0-0ae00a2dc61f	02ff9cd8-d1c5-426e-90d7-353ef7202641
72352d4b-0532-481e-aabc-041cdd6ffd00	02ff9cd8-d1c5-426e-90d7-353ef7202641
150c44df-b575-4473-8071-543338246bf1	006da9ce-6d76-44a0-b088-8b36c2f3ea7a
6c440b8c-bc65-49b1-9747-f8d69227f77f	006da9ce-6d76-44a0-b088-8b36c2f3ea7a
150c44df-b575-4473-8071-543338246bf1	99057d7f-ccdf-4d08-9ff6-1e882c7256dc
150c44df-b575-4473-8071-543338246bf1	c1c9f836-2b6d-4deb-b028-3859dd709501
\.


--
-- TOC entry 4170 (class 0 OID 24746)
-- Dependencies: 238
-- Data for Name: user_session; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.user_session (id, auth_method, ip_address, last_session_refresh, login_username, realm_id, remember_me, started, user_id, user_session_state, broker_session_id, broker_user_id) FROM stdin;
\.


--
-- TOC entry 4181 (class 0 OID 25052)
-- Dependencies: 249
-- Data for Name: user_session_note; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.user_session_note (user_session, name, value) FROM stdin;
\.


--
-- TOC entry 4163 (class 0 OID 24714)
-- Dependencies: 231
-- Data for Name: username_login_failure; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.username_login_failure (realm_id, username, failed_login_not_before, last_failure, last_ip_failure, num_failures) FROM stdin;
\.


--
-- TOC entry 4171 (class 0 OID 24757)
-- Dependencies: 239
-- Data for Name: web_origins; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.web_origins (client_id, value) FROM stdin;
597c6fb1-16bf-450d-ace9-bb01e7f58912	+
cf82469b-201d-424a-899b-d419082f48a7	+
895883a3-0ad1-4bb5-be6c-72e990dba750	*
62156c2e-fe7e-4a87-9bb0-d48e2d76ba07	*
\.


-- Completed on 2023-11-27 18:23:31 UTC

--
-- PostgreSQL database dump complete
--

