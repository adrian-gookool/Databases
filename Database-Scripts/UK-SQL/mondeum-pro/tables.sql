--
-- PostgreSQL database dump
--
-- Dumped from database version 13.2
-- Dumped by pg_dump version 13.2
-- Started on 2023-09-20 14:41:08
SET statement_timeout = 0;

SET lock_timeout = 0;

SET idle_in_transaction_session_timeout = 0;

SET client_encoding = 'UTF8';

SET standard_conforming_strings = ON;

SELECT pg_catalog.set_config('search_path', '', false);

SET check_function_bodies = false;

SET xmloption = content;

SET client_min_messages = warning;

SET row_security = off;

--
-- TOC entry 3 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--
CREATE SCHEMA IF NOT EXISTS public;

ALTER SCHEMA public OWNER TO postgres;

--
-- TOC entry 3559 (class 0 OID 0)
-- Dependencies: 3
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--
COMMENT ON SCHEMA public IS 'standard public schema';

SET default_tablespace = '';

SET default_table_access_method = HEAP;

--
-- TOC entry 287 (class 1259 OID 323482)
-- Name: account_financial_profile_changes; Type: TABLE; Schema: public; Owner: postgres
--
CREATE TABLE IF NOT EXISTS public.account_financial_profile_changes (
    id bigint NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    current_value character varying(255),
    field_name character varying(255),
    new_value character varying(255),
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    account_requests_id bigint
);

ALTER TABLE public.account_financial_profile_changes OWNER TO postgres;

--
-- TOC entry 289 (class 1259 OID 323512)
-- Name: account_financial_profile_changes_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--
CREATE SEQUENCE public.account_financial_profile_changes_seq START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

ALTER TABLE public.account_financial_profile_changes_seq OWNER TO postgres;

--
-- TOC entry 288 (class 1259 OID 323497)
-- Name: account_personal_profile_changes; Type: TABLE; Schema: public; Owner: postgres
--
CREATE TABLE IF NOT EXISTS public.account_personal_profile_changes (
    id bigint NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    current_value character varying(255),
    field_name character varying(255),
    new_value character varying(255),
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    account_requests_id bigint
);

ALTER TABLE public.account_personal_profile_changes OWNER TO postgres;

--
-- TOC entry 290 (class 1259 OID 323514)
-- Name: account_personal_profile_changes_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--
CREATE SEQUENCE public.account_personal_profile_changes_seq START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

ALTER TABLE public.account_personal_profile_changes_seq OWNER TO postgres;

--
-- TOC entry 294 (class 1259 OID 323535)
-- Name: account_professional_trader_status_changes; Type: TABLE; Schema: public; Owner: postgres
--
CREATE TABLE IF NOT EXISTS public.account_professional_trader_status_changes (
    id bigint NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    current_value character varying(255),
    field_name character varying(255),
    new_value character varying(255),
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    account_requests_id bigint
);

ALTER TABLE public.account_professional_trader_status_changes OWNER TO postgres;

--
-- TOC entry 295 (class 1259 OID 323550)
-- Name: account_professional_trader_status_changes_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--
CREATE SEQUENCE public.account_professional_trader_status_changes_seq START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

ALTER TABLE public.account_professional_trader_status_changes_seq OWNER TO postgres;

--
-- TOC entry 260 (class 1259 OID 323219)
-- Name: account_requests; Type: TABLE; Schema: public; Owner: postgres
--
CREATE TABLE IF NOT EXISTS public.account_requests (
    id bigint NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    request_status character varying(255),
    request_type character varying(255),
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    user_id bigint,
    permission_groups_id bigint,
    request_description character varying(255)
);

ALTER TABLE public.account_requests OWNER TO postgres;

--
-- TOC entry 272 (class 1259 OID 323317)
-- Name: account_requests_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--
CREATE SEQUENCE public.account_requests_seq START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

ALTER TABLE public.account_requests_seq OWNER TO postgres;

--
-- TOC entry 261 (class 1259 OID 323229)
-- Name: account_requests_transactions; Type: TABLE; Schema: public; Owner: postgres
--
CREATE TABLE IF NOT EXISTS public.account_requests_transactions (
    id bigint NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    note character varying(255),
    transaction_action character varying(255),
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    request_id bigint,
    reviewer_id bigint
);

ALTER TABLE public.account_requests_transactions OWNER TO postgres;

--
-- TOC entry 273 (class 1259 OID 323319)
-- Name: account_requests_transactions_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--
CREATE SEQUENCE public.account_requests_transactions_seq START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

ALTER TABLE public.account_requests_transactions_seq OWNER TO postgres;

--
-- TOC entry 296 (class 1259 OID 323553)
-- Name: accounts; Type: TABLE; Schema: public; Owner: postgres
--
CREATE TABLE IF NOT EXISTS public.accounts (
    id character varying(255) NOT NULL,
    account character varying(255),
    corr character varying(255),
    created_at timestamp without time zone,
    name character varying(255),
    number character varying(255),
    office character varying(255),
    TYPE character varying(255),
    updated_at timestamp without time zone,
    user_id bigint,
    product_id integer
);

ALTER TABLE public.accounts OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 322702)
-- Name: affiliate_codes; Type: TABLE; Schema: public; Owner: postgres
--
CREATE TABLE IF NOT EXISTS public.affiliate_codes (
    id integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    code character varying(255),
    STATUS character varying(255),
    TYPE character varying(255),
    affiliate_id integer
);

ALTER TABLE public.affiliate_codes OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 322700)
-- Name: affiliate_codes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--
CREATE SEQUENCE public.affiliate_codes_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

ALTER TABLE public.affiliate_codes_id_seq OWNER TO postgres;

--
-- TOC entry 3560 (class 0 OID 0)
-- Dependencies: 200
-- Name: affiliate_codes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--
ALTER SEQUENCE public.affiliate_codes_id_seq OWNED BY public.affiliate_codes.id;

--
-- TOC entry 203 (class 1259 OID 322713)
-- Name: affiliates; Type: TABLE; Schema: public; Owner: postgres
--
CREATE TABLE IF NOT EXISTS public.affiliates (
    id integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    agreement_date timestamp without time zone,
    email character varying(255),
    group_name character varying(255) NOT NULL,
    location character varying(255),
    name character varying(255),
    phone character varying(255),
    STATUS character varying(255),
    TYPE character varying(255)
);

ALTER TABLE public.affiliates OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 322711)
-- Name: affiliates_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--
CREATE SEQUENCE public.affiliates_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

ALTER TABLE public.affiliates_id_seq OWNER TO postgres;

--
-- TOC entry 3561 (class 0 OID 0)
-- Dependencies: 202
-- Name: affiliates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--
ALTER SEQUENCE public.affiliates_id_seq OWNED BY public.affiliates.id;

--
-- TOC entry 204 (class 1259 OID 322722)
-- Name: affiliates_promo_codes; Type: TABLE; Schema: public; Owner: postgres
--
CREATE TABLE IF NOT EXISTS public.affiliates_promo_codes (
    affiliate_id integer NOT NULL,
    promo_codes_id integer NOT NULL
);

ALTER TABLE public.affiliates_promo_codes OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 322725)
-- Name: application_agreements; Type: TABLE; Schema: public; Owner: postgres
--
CREATE TABLE IF NOT EXISTS public.application_agreements (
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    bundle_agreement boolean,
    client_agreement boolean,
    client_consent boolean,
    client_contact_consent boolean,
    client_declaration boolean,
    day_trading_agreement boolean,
    docusinged boolean,
    docusingedw8 boolean,
    docusingedw9 boolean,
    margin_agreement boolean,
    warranty_agreement boolean,
    application_id integer NOT NULL
);

ALTER TABLE public.application_agreements OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 322730)
-- Name: application_compliance_review; Type: TABLE; Schema: public; Owner: postgres
--
CREATE TABLE IF NOT EXISTS public.application_compliance_review (
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    bank_ref character varying(255),
    ca_id integer,
    ca_match_status character varying(255),
    ca_risk_level character varying(255),
    ca_share_url character varying(255),
    ca_total_hits character varying(255),
    ca_verify boolean,
    comply_advantage character varying(255),
    conditional boolean,
    dow_jones character varying(255),
    edd_required character varying(255),
    emp_individual character varying(255),
    employment_proof character varying(255),
    id_verify_trulioo character varying(255),
    last_pay_slip character varying(255),
    letter_address_authorization character varying(255),
    letter_bank_authorization character varying(255),
    letter_financial_guarantee character varying(255),
    monitor_geo character varying(255),
    monitor_industry character varying(255),
    monitor_transaction character varying(255),
    notes character varying(255),
    one_valid_id character varying(255),
    pep character varying(255),
    proof_of_address character varying(255),
    retired character varying(255),
    security_questions_required character varying(255),
    self_emp character varying(255),
    six_mth_bank_statement character varying(255),
    tax_doc character varying(255),
    tt_consol_list character varying(255),
    two_valid_id character varying(255),
    unemp_student character varying(255),
    unemployed character varying(255),
    w8w9_submit character varying(255),
    application_id integer NOT NULL,
    address_verified boolean,
    address_verified_muinmos boolean,
    ca_sanction_result character varying(255),
    dj_sanction_result character varying(255),
    fatf_il boolean,
    id_verify_muinmos boolean,
    manual_risk_rating character varying(255),
    name_screened boolean,
    review_recommendation character varying(255),
    student character varying(255),
    us_certification boolean
);

ALTER TABLE public.application_compliance_review OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 322740)
-- Name: application_documents; Type: TABLE; Schema: public; Owner: postgres
--
CREATE TABLE IF NOT EXISTS public.application_documents (
    id integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    dob character varying(255),
    doc_type character varying(255),
    expiry character varying(255),
    file_name character varying(255),
    file_size bigint,
    file_type character varying(255),
    full_name character varying(255),
    id_number character varying(255),
    is_public boolean,
    issuing_country character varying(255),
    role character varying(255),
    s3_location text,
    verification_status character varying(255),
    verified boolean,
    user_login_id integer,
    notes text,
    verified_on timestamp without time zone,
    user_id integer
);

ALTER TABLE public.application_documents OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 322738)
-- Name: application_documents_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--
CREATE SEQUENCE public.application_documents_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

ALTER TABLE public.application_documents_id_seq OWNER TO postgres;

--
-- TOC entry 3562 (class 0 OID 0)
-- Dependencies: 207
-- Name: application_documents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--
ALTER SEQUENCE public.application_documents_id_seq OWNED BY public.application_documents.id;

--
-- TOC entry 209 (class 1259 OID 322749)
-- Name: application_financial_profiles; Type: TABLE; Schema: public; Owner: postgres
--
CREATE TABLE IF NOT EXISTS public.application_financial_profiles (
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    company_industry character varying(255),
    employer_industry character varying(255),
    employer_name character varying(255),
    employment_status character varying(255),
    initial_deposit character varying(255),
    liquid_net_worth character varying(255),
    monthly_deposit character varying(255),
    occupation character varying(255),
    other_company_industry character varying(255),
    other_employer_industry character varying(255),
    salary character varying(255),
    tax_country character varying(255),
    tax_number character varying(255),
    unlisted_occupation character varying(255),
    wealth_primary_source character varying(255),
    wealth_primary_source_detail character varying(255),
    application_id integer NOT NULL
);

ALTER TABLE public.application_financial_profiles OWNER TO postgres;

--
-- TOC entry 246 (class 1259 OID 323106)
-- Name: application_hubspot_contacts; Type: TABLE; Schema: public; Owner: postgres
--
CREATE TABLE IF NOT EXISTS public.application_hubspot_contacts (
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    hubspot_contact_id character varying(255),
    hubspot_deal_id character varying(255),
    user_login_id integer NOT NULL
);

ALTER TABLE public.application_hubspot_contacts OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 322757)
-- Name: application_personal_profiles; Type: TABLE; Schema: public; Owner: postgres
--
CREATE TABLE IF NOT EXISTS public.application_personal_profiles (
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    address_apt_house_number character varying(255),
    address_city_town character varying(255),
    address_country character varying(255),
    address_line2 character varying(255),
    address_postal_code character varying(255),
    address_state_county_provence_region character varying(255),
    address_street_name character varying(255),
    city_of_birth character varying(255),
    country_of_birth character varying(255),
    country_of_citizenship character varying(255),
    date_of_birth timestamp without time zone,
    first_name character varying(255),
    has_other_country_of_citizenship boolean,
    knowledge_level character varying(255),
    last_name character varying(255),
    other_country_of_citizenship character varying(255),
    phone_number character varying(255),
    risk_tolerance character varying(255),
    sex character varying(255),
    trading_preference_other character varying(255),
    us_check_one boolean,
    us_check_two boolean,
    us_tax_id character varying(255),
    years_of_experience character varying(255),
    application_id integer NOT NULL,
    address_line3 character varying(255)
);

ALTER TABLE public.application_personal_profiles OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 322767)
-- Name: application_product_requests; Type: TABLE; Schema: public; Owner: postgres
--
CREATE TABLE IF NOT EXISTS public.application_product_requests (
    id integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    client_id character varying(255),
    email character varying(255),
    leverage_type character varying(255),
    product_platform character varying(255),
    product_type character varying(255),
    review_status character varying(255),
    trader_id character varying(255),
    application_id integer NOT NULL,
    account_template character varying(255),
    affiliate_group character varying(255),
    prop_account_id character varying(255),
    prop_connect_attempt timestamp without time zone,
    prop_connect_on timestamp without time zone,
    prop_connect_status character varying(255),
    prop_id character varying(255),
    prop_password character varying(255),
    prop_srv_id character varying(255),
    prop_user character varying(255),
    resend_count integer
);

ALTER TABLE public.application_product_requests OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 322765)
-- Name: application_product_requests_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--
CREATE SEQUENCE public.application_product_requests_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

ALTER TABLE public.application_product_requests_id_seq OWNER TO postgres;

--
-- TOC entry 3563 (class 0 OID 0)
-- Dependencies: 211
-- Name: application_product_requests_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--
ALTER SEQUENCE public.application_product_requests_id_seq OWNED BY public.application_product_requests.id;

--
-- TOC entry 248 (class 1259 OID 323116)
-- Name: application_rqd_accounts; Type: TABLE; Schema: public; Owner: postgres
--
CREATE TABLE IF NOT EXISTS public.application_rqd_accounts (
    id integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    account character varying(255),
    account_status character varying(255),
    cip_action text,
    fdid character varying(255),
    fraud_flag boolean,
    is_deceased boolean,
    record_status character varying(255),
    requestid character varying(255),
    response_message text,
    response_status character varying(255),
    watchlist_hit boolean,
    application_id integer NOT NULL
);

ALTER TABLE public.application_rqd_accounts OWNER TO postgres;

--
-- TOC entry 247 (class 1259 OID 323114)
-- Name: application_rqd_accounts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--
CREATE SEQUENCE public.application_rqd_accounts_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

ALTER TABLE public.application_rqd_accounts_id_seq OWNER TO postgres;

--
-- TOC entry 3564 (class 0 OID 0)
-- Dependencies: 247
-- Name: application_rqd_accounts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--
ALTER SEQUENCE public.application_rqd_accounts_id_seq OWNED BY public.application_rqd_accounts.id;

--
-- TOC entry 214 (class 1259 OID 322778)
-- Name: application_suitability_check; Type: TABLE; Schema: public; Owner: postgres
--
CREATE TABLE IF NOT EXISTS public.application_suitability_check (
    id integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    completed boolean,
    q1 character varying(255),
    q10 character varying(255),
    q11 character varying(255),
    q2 character varying(255),
    q3 character varying(255),
    q4 character varying(255),
    q5 character varying(255),
    q6 character varying(255),
    q7 character varying(255),
    q8 character varying(255),
    q9 character varying(255),
    score integer,
    application_id integer NOT NULL
);

ALTER TABLE public.application_suitability_check OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 322776)
-- Name: application_suitability_check_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--
CREATE SEQUENCE public.application_suitability_check_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

ALTER TABLE public.application_suitability_check_id_seq OWNER TO postgres;

--
-- TOC entry 3565 (class 0 OID 0)
-- Dependencies: 213
-- Name: application_suitability_check_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--
ALTER SEQUENCE public.application_suitability_check_id_seq OWNED BY public.application_suitability_check.id;

--
-- TOC entry 216 (class 1259 OID 322789)
-- Name: applications; Type: TABLE; Schema: public; Owner: postgres
--
CREATE TABLE IF NOT EXISTS public.applications (
    id integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    admin_notes text,
    app_progress character varying(255),
    app_status character varying(255),
    app_status_notes text,
    app_version integer,
    approved_on timestamp without time zone,
    assigned_to character varying(255),
    closed_on timestamp without time zone,
    current_stage integer,
    document_check boolean,
    document_count integer,
    document_token character varying(255),
    identity_check boolean,
    identity_token character varying(255),
    last_reminder_sent timestamp without time zone,
    last_status_change timestamp without time zone,
    last_submitted_on timestamp without time zone,
    m_check boolean,
    m_pass boolean,
    muinmos_assessment_id character varying(255),
    re_submittable boolean,
    reminder_count integer,
    submit_count integer,
    user_login_id integer,
    archived boolean,
    archived_on timestamp without time zone,
    assigned_on timestamp without time zone,
    seen_by_officer boolean
);

ALTER TABLE public.applications OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 322787)
-- Name: applications_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--
CREATE SEQUENCE public.applications_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

ALTER TABLE public.applications_id_seq OWNER TO postgres;

--
-- TOC entry 3566 (class 0 OID 0)
-- Dependencies: 215
-- Name: applications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--
ALTER SEQUENCE public.applications_id_seq OWNED BY public.applications.id;

--
-- TOC entry 218 (class 1259 OID 322800)
-- Name: audit_application_changes; Type: TABLE; Schema: public; Owner: postgres
--
CREATE TABLE IF NOT EXISTS public.audit_application_changes (
    id integer NOT NULL,
    created_at timestamp without time zone,
    data_object text,
    previous_record integer,
    text_type boolean,
    updated_at timestamp without time zone,
    application_id integer,
    updated_by_id integer
);

ALTER TABLE public.audit_application_changes OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 322798)
-- Name: audit_application_changes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--
CREATE SEQUENCE public.audit_application_changes_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

ALTER TABLE public.audit_application_changes_id_seq OWNER TO postgres;

--
-- TOC entry 3567 (class 0 OID 0)
-- Dependencies: 217
-- Name: audit_application_changes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--
ALTER SEQUENCE public.audit_application_changes_id_seq OWNED BY public.audit_application_changes.id;

--
-- TOC entry 220 (class 1259 OID 322811)
-- Name: audit_changes; Type: TABLE; Schema: public; Owner: postgres
--
CREATE TABLE IF NOT EXISTS public.audit_changes (
    id integer NOT NULL,
    created_at timestamp without time zone,
    created_by character varying(255),
    data_object text,
    entity_name character varying(255),
    operation character varying(255),
    text_type boolean,
    "timestamp" timestamp without time zone,
    updated_at timestamp without time zone
);

ALTER TABLE public.audit_changes OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 322809)
-- Name: audit_changes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--
CREATE SEQUENCE public.audit_changes_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

ALTER TABLE public.audit_changes_id_seq OWNER TO postgres;

--
-- TOC entry 3568 (class 0 OID 0)
-- Dependencies: 219
-- Name: audit_changes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--
ALTER SEQUENCE public.audit_changes_id_seq OWNED BY public.audit_changes.id;

--
-- TOC entry 222 (class 1259 OID 322822)
-- Name: audit_status_changes; Type: TABLE; Schema: public; Owner: postgres
--
CREATE TABLE IF NOT EXISTS public.audit_status_changes (
    id integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    changed_by character varying(255),
    status_from character varying(255),
    status_to character varying(255),
    details_id integer,
    notes text
);

ALTER TABLE public.audit_status_changes OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 322820)
-- Name: audit_status_changes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--
CREATE SEQUENCE public.audit_status_changes_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

ALTER TABLE public.audit_status_changes_id_seq OWNER TO postgres;

--
-- TOC entry 3569 (class 0 OID 0)
-- Dependencies: 221
-- Name: audit_status_changes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--
ALTER SEQUENCE public.audit_status_changes_id_seq OWNED BY public.audit_status_changes.id;

--
-- TOC entry 224 (class 1259 OID 322833)
-- Name: audit_system_events; Type: TABLE; Schema: public; Owner: postgres
--
CREATE TABLE IF NOT EXISTS public.audit_system_events (
    id integer NOT NULL,
    business_name character varying(255),
    business_website character varying(255),
    city character varying(255),
    continent character varying(255),
    country character varying(255),
    country_code character varying(255),
    created_at timestamp without time zone,
    ip_name character varying(255),
    ip_type character varying(255),
    isp character varying(255),
    lat character varying(255),
    lon character varying(255),
    message character varying(255),
    org character varying(255),
    principal character varying(255),
    query character varying(255),
    region character varying(255),
    remote_address character varying(255),
    request_url character varying(255),
    session_id character varying(255),
    TYPE character varying(255),
    updated_at timestamp without time zone
);

ALTER TABLE public.audit_system_events OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 322831)
-- Name: audit_system_events_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--
CREATE SEQUENCE public.audit_system_events_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

ALTER TABLE public.audit_system_events_id_seq OWNER TO postgres;

--
-- TOC entry 3570 (class 0 OID 0)
-- Dependencies: 223
-- Name: audit_system_events_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--
ALTER SEQUENCE public.audit_system_events_id_seq OWNED BY public.audit_system_events.id;

--
-- TOC entry 249 (class 1259 OID 323125)
-- Name: client_application_projection; Type: TABLE; Schema: public; Owner: postgres
--
CREATE TABLE IF NOT EXISTS public.client_application_projection (
    id character varying(255) NOT NULL,
    address_country character varying(255),
    app_status character varying(255),
    client_id character varying(255),
    first_name character varying(255),
    last_name character varying(255),
    phone_number character varying(255),
    trader_id character varying(255)
);

ALTER TABLE public.client_application_projection OWNER TO postgres;

--
-- TOC entry 250 (class 1259 OID 323133)
-- Name: client_application_result; Type: TABLE; Schema: public; Owner: postgres
--
CREATE TABLE IF NOT EXISTS public.client_application_result (
    id character varying(255) NOT NULL,
    affiliate_code character varying(255),
    app_status character varying(255),
    assigned_on timestamp without time zone,
    assigned_to character varying(255),
    country_code character varying(255),
    email character varying(255),
    employment_status character varying(255),
    first_name character varying(255),
    identity_check boolean,
    last_name character varying(255),
    last_status_change timestamp without time zone,
    phone_number character varying(255),
    review_recommendation character varying(255),
    TYPE character varying(255)
);

ALTER TABLE public.client_application_result OWNER TO postgres;

--
-- TOC entry 252 (class 1259 OID 323143)
-- Name: comments; Type: TABLE; Schema: public; Owner: postgres
--
CREATE TABLE IF NOT EXISTS public.comments (
    id integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    message text,
    private_status boolean,
    owner_id integer,
    review_id integer NOT NULL
);

ALTER TABLE public.comments OWNER TO postgres;

--
-- TOC entry 251 (class 1259 OID 323141)
-- Name: comments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--
CREATE SEQUENCE public.comments_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

ALTER TABLE public.comments_id_seq OWNER TO postgres;

--
-- TOC entry 3571 (class 0 OID 0)
-- Dependencies: 251
-- Name: comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--
ALTER SEQUENCE public.comments_id_seq OWNED BY public.comments.id;

--
-- TOC entry 226 (class 1259 OID 322844)
-- Name: country_codes; Type: TABLE; Schema: public; Owner: postgres
--
CREATE TABLE IF NOT EXISTS public.country_codes (
    id integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    blacklisted boolean,
    code character varying(255),
    name character varying(255)
);

ALTER TABLE public.country_codes OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 322842)
-- Name: country_codes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--
CREATE SEQUENCE public.country_codes_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

ALTER TABLE public.country_codes_id_seq OWNER TO postgres;

--
-- TOC entry 3572 (class 0 OID 0)
-- Dependencies: 225
-- Name: country_codes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--
ALTER SEQUENCE public.country_codes_id_seq OWNED BY public.country_codes.id;

--
-- TOC entry 259 (class 1259 OID 323213)
-- Name: databasechangelog; Type: TABLE; Schema: public; Owner: postgres
--
CREATE TABLE IF NOT EXISTS public.databasechangelog (
    id character varying(255) NOT NULL,
    author character varying(255) NOT NULL,
    filename character varying(255) NOT NULL,
    dateexecuted timestamp without time zone NOT NULL,
    orderexecuted integer NOT NULL,
    exectype character varying(10) NOT NULL,
    md5sum character varying(35),
    description character varying(255),
    comments character varying(255),
    tag character varying(255),
    liquibase character varying(20),
    contexts character varying(255),
    labels character varying(255),
    deployment_id character varying(10)
);

ALTER TABLE public.databasechangelog OWNER TO postgres;

--
-- TOC entry 258 (class 1259 OID 323208)
-- Name: databasechangeloglock; Type: TABLE; Schema: public; Owner: postgres
--
CREATE TABLE IF NOT EXISTS public.databasechangeloglock (
    id integer NOT NULL,
    locked boolean NOT NULL,
    lockgranted timestamp without time zone,
    lockedby character varying(255)
);

ALTER TABLE public.databasechangeloglock OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 322855)
-- Name: login_reset_tokens; Type: TABLE; Schema: public; Owner: postgres
--
CREATE TABLE IF NOT EXISTS public.login_reset_tokens (
    id integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    expiry_date timestamp without time zone,
    STATUS character varying(255),
    token character varying(255),
    account_id integer NOT NULL
);

ALTER TABLE public.login_reset_tokens OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 322853)
-- Name: login_reset_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--
CREATE SEQUENCE public.login_reset_tokens_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

ALTER TABLE public.login_reset_tokens_id_seq OWNER TO postgres;

--
-- TOC entry 3573 (class 0 OID 0)
-- Dependencies: 227
-- Name: login_reset_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--
ALTER SEQUENCE public.login_reset_tokens_id_seq OWNED BY public.login_reset_tokens.id;

--
-- TOC entry 230 (class 1259 OID 322866)
-- Name: login_security; Type: TABLE; Schema: public; Owner: postgres
--
CREATE TABLE IF NOT EXISTS public.login_security (
    id integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    answer character varying(255) NOT NULL,
    question character varying(255) NOT NULL,
    user_login_id integer
);

ALTER TABLE public.login_security OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 322864)
-- Name: login_security_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--
CREATE SEQUENCE public.login_security_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

ALTER TABLE public.login_security_id_seq OWNER TO postgres;

--
-- TOC entry 3574 (class 0 OID 0)
-- Dependencies: 229
-- Name: login_security_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--
ALTER SEQUENCE public.login_security_id_seq OWNED BY public.login_security.id;

--
-- TOC entry 232 (class 1259 OID 322877)
-- Name: login_verification_token; Type: TABLE; Schema: public; Owner: postgres
--
CREATE TABLE IF NOT EXISTS public.login_verification_token (
    id integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    expiry_date timestamp without time zone,
    token character varying(255),
    account_id integer NOT NULL
);

ALTER TABLE public.login_verification_token OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 322875)
-- Name: login_verification_token_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--
CREATE SEQUENCE public.login_verification_token_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

ALTER TABLE public.login_verification_token_id_seq OWNER TO postgres;

--
-- TOC entry 3575 (class 0 OID 0)
-- Dependencies: 231
-- Name: login_verification_token_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--
ALTER SEQUENCE public.login_verification_token_id_seq OWNED BY public.login_verification_token.id;

--
-- TOC entry 234 (class 1259 OID 322885)
-- Name: logins; Type: TABLE; Schema: public; Owner: postgres
--
CREATE TABLE IF NOT EXISTS public.logins (
    id integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    affiliate_code character varying(255),
    app_version character varying(255),
    country_code character varying(255),
    currency character varying(255),
    dashboard_access boolean,
    email character varying(255) NOT NULL,
    email_verified boolean,
    first_name character varying(255),
    gb_score real,
    is_professional boolean,
    last_login timestamp without time zone,
    last_login_attempt timestamp without time zone,
    last_name character varying(255),
    last_password_change timestamp without time zone,
    login_attempts integer,
    PASSWORD character varying(255),
    phone_code_counter integer,
    phone_number character varying(255),
    phone_token character varying(255),
    phone_verified boolean,
    STATUS character varying(255),
    TYPE character varying(255),
    user_privacy_agree boolean,
    verified boolean,
    browser character varying(255),
    department character varying(255),
    last_heartbeat timestamp without time zone,
    location character varying(255),
    os character varying(255),
    platform character varying(255),
    title character varying(255),
    user_agent character varying(255),
    using2fa boolean,
    vendor character varying(255),
    force_password_change boolean,
    role character varying(255),
    secret character varying(255)
);

ALTER TABLE public.logins OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 322883)
-- Name: logins_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--
CREATE SEQUENCE public.logins_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

ALTER TABLE public.logins_id_seq OWNER TO postgres;

--
-- TOC entry 3576 (class 0 OID 0)
-- Dependencies: 233
-- Name: logins_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--
ALTER SEQUENCE public.logins_id_seq OWNED BY public.logins.id;

--
-- TOC entry 236 (class 1259 OID 322896)
-- Name: messages; Type: TABLE; Schema: public; Owner: postgres
--
CREATE TABLE IF NOT EXISTS public.messages (
    id integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    linked_client_details integer,
    message text,
    message_status character varying(255),
    message_type character varying(255),
    next_message integer,
    previous_message integer,
    subject text,
    recipient_id integer,
    sender_id integer
);

ALTER TABLE public.messages OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 322894)
-- Name: messages_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--
CREATE SEQUENCE public.messages_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

ALTER TABLE public.messages_id_seq OWNER TO postgres;

--
-- TOC entry 3577 (class 0 OID 0)
-- Dependencies: 235
-- Name: messages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--
ALTER SEQUENCE public.messages_id_seq OWNED BY public.messages.id;

--
-- TOC entry 238 (class 1259 OID 322907)
-- Name: notices; Type: TABLE; Schema: public; Owner: postgres
--
CREATE TABLE IF NOT EXISTS public.notices (
    id integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    display_client boolean,
    display_management boolean,
    enabled boolean,
    message text,
    "position" character varying(255),
    title character varying(255),
    TYPE character varying(255)
);

ALTER TABLE public.notices OWNER TO postgres;

--
-- TOC entry 237 (class 1259 OID 322905)
-- Name: notices_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--
CREATE SEQUENCE public.notices_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

ALTER TABLE public.notices_id_seq OWNER TO postgres;

--
-- TOC entry 3578 (class 0 OID 0)
-- Dependencies: 237
-- Name: notices_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--
ALTER SEQUENCE public.notices_id_seq OWNED BY public.notices.id;

--
-- TOC entry 240 (class 1259 OID 322918)
-- Name: notifications; Type: TABLE; Schema: public; Owner: postgres
--
CREATE TABLE IF NOT EXISTS public.notifications (
    id integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    checked_by character varying(255),
    link_record_id integer,
    message text,
    STATUS character varying(255),
    title text,
    TYPE character varying(255),
    url text,
    created_by_id integer
);

ALTER TABLE public.notifications OWNER TO postgres;

--
-- TOC entry 239 (class 1259 OID 322916)
-- Name: notifications_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--
CREATE SEQUENCE public.notifications_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

ALTER TABLE public.notifications_id_seq OWNER TO postgres;

--
-- TOC entry 3579 (class 0 OID 0)
-- Dependencies: 239
-- Name: notifications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--
ALTER SEQUENCE public.notifications_id_seq OWNED BY public.notifications.id;

--
-- TOC entry 279 (class 1259 OID 323388)
-- Name: old_account_requests_financial_profile; Type: TABLE; Schema: public; Owner: postgres
--
CREATE TABLE IF NOT EXISTS public.old_account_requests_financial_profile (
    account_requests_id bigint NOT NULL,
    financial_profile character varying(255),
    financial_profile_key character varying(255) NOT NULL
);

ALTER TABLE public.old_account_requests_financial_profile OWNER TO postgres;

--
-- TOC entry 280 (class 1259 OID 323401)
-- Name: old_account_requests_personal_profile; Type: TABLE; Schema: public; Owner: postgres
--
CREATE TABLE IF NOT EXISTS public.old_account_requests_personal_profile (
    account_requests_id bigint NOT NULL,
    personal_profile character varying(255),
    personal_profile_key character varying(255) NOT NULL
);

ALTER TABLE public.old_account_requests_personal_profile OWNER TO postgres;

--
-- TOC entry 281 (class 1259 OID 323414)
-- Name: permission_groups; Type: TABLE; Schema: public; Owner: postgres
--
CREATE TABLE IF NOT EXISTS public.permission_groups (
    id bigint NOT NULL,
    LEVEL bigint NOT NULL,
    name character varying(255),
    request_status character varying(255),
    next_id bigint
);

ALTER TABLE public.permission_groups OWNER TO postgres;

--
-- TOC entry 262 (class 1259 OID 323239)
-- Name: permissions; Type: TABLE; Schema: public; Owner: postgres
--
CREATE TABLE IF NOT EXISTS public.permissions (
    id character varying(255) NOT NULL,
    description character varying(255)
);

ALTER TABLE public.permissions OWNER TO postgres;

--
-- TOC entry 282 (class 1259 OID 323427)
-- Name: permissions_permission_groups; Type: TABLE; Schema: public; Owner: postgres
--
CREATE TABLE IF NOT EXISTS public.permissions_permission_groups (
    permission_groups_id bigint NOT NULL,
    permissions_id character varying(255) NOT NULL
);

ALTER TABLE public.permissions_permission_groups OWNER TO postgres;

--
-- TOC entry 241 (class 1259 OID 322927)
-- Name: personal_profile_trading_preferences; Type: TABLE; Schema: public; Owner: postgres
--
CREATE TABLE IF NOT EXISTS public.personal_profile_trading_preferences (
    personal_profile_application_id integer NOT NULL,
    trading_preferences character varying(255)
);

ALTER TABLE public.personal_profile_trading_preferences OWNER TO postgres;

--
-- TOC entry 243 (class 1259 OID 322932)
-- Name: platforms; Type: TABLE; Schema: public; Owner: postgres
--
CREATE TABLE IF NOT EXISTS public.platforms (
    id integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    name VARCHAR(255),
    display BOOLEAN DEFAULT FALSE,
    cop_img_url VARCHAR(255),
    dashboard_img_url VARCHAR(255),
    detail_url VARCHAR(255),
    is_popular BOOLEAN DEFAULT FALSE,
    description TEXT,
    features TEXT
);

ALTER TABLE public.platforms OWNER TO postgres;

-- Add a unique constraint for the 'id' column in the 'platforms' table
ALTER TABLE public.platforms
ADD CONSTRAINT pk_platforms_id UNIQUE (id);

CREATE TABLE IF NOT EXISTS public.platform_details (
    id integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    product_title VARCHAR(255),
    product_account VARCHAR(255),
    leverage_type VARCHAR(255),
    product_type VARCHAR(255),
    platform_option_id INT,
    FOREIGN KEY (platform_option_id) REFERENCES public.platforms(id)
);

ALTER TABLE public.platform_details OWNER TO postgres;

CREATE TABLE IF NOT EXISTS public.platform_switches (
    id integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    from_platform VARCHAR(255),
    to_platform VARCHAR(255),
    email VARCHAR(255),
    status VARCHAR(255)
);

ALTER TABLE public.platform_switches OWNER TO postgres;



--
-- TOC entry 242 (class 1259 OID 322930)
-- Name: platforms_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--
CREATE SEQUENCE public.platforms_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

ALTER TABLE public.platforms_id_seq OWNER TO postgres;

CREATE SEQUENCE public.platform_details_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

ALTER TABLE public.platform_details_id_seq OWNER TO postgres;

CREATE SEQUENCE public.platforms_switches_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

ALTER TABLE public.platforms_switches_id_seq OWNER TO postgres;
--
-- TOC entry 3580 (class 0 OID 0)
-- Dependencies: 242
-- Name: platforms_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--
ALTER SEQUENCE public.platforms_id_seq OWNED BY public.platforms.id;

ALTER SEQUENCE public.platform_details_id_seq OWNED BY public.platform_details.id;

ALTER SEQUENCE public.platforms_switches_id_seq OWNED BY public.platform_switches.id;
--
-- TOC entry 253 (class 1259 OID 323152)
-- Name: product_request_result; Type: TABLE; Schema: public; Owner: postgres
--
CREATE TABLE IF NOT EXISTS public.product_request_result (
    id character varying(255) NOT NULL,
    application_id character varying(255),
    client_id character varying(255),
    country_code character varying(255),
    email character varying(255),
    employment_status character varying(255),
    first_name character varying(255),
    last_name character varying(255),
    phone_number character varying(255),
    product_platform character varying(255),
    product_type character varying(255),
    review_status character varying(255),
    trader_id character varying(255)
);

ALTER TABLE public.product_request_result OWNER TO postgres;

--
-- TOC entry 263 (class 1259 OID 323247)
-- Name: roles; Type: TABLE; Schema: public; Owner: postgres
--
CREATE TABLE IF NOT EXISTS public.roles (
    id character varying(255) NOT NULL,
    description character varying(255)
);

ALTER TABLE public.roles OWNER TO postgres;

--
-- TOC entry 245 (class 1259 OID 322940)
-- Name: secure_auth_tokens; Type: TABLE; Schema: public; Owner: postgres
--
CREATE TABLE IF NOT EXISTS public.secure_auth_tokens (
    id integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    email character varying(255),
    PASSWORD character varying(255),
    token character varying(255),
    username character varying(255)
);

ALTER TABLE public.secure_auth_tokens OWNER TO postgres;

--
-- TOC entry 244 (class 1259 OID 322938)
-- Name: secure_auth_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--
CREATE SEQUENCE public.secure_auth_tokens_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

ALTER TABLE public.secure_auth_tokens_id_seq OWNER TO postgres;

--
-- TOC entry 3581 (class 0 OID 0)
-- Dependencies: 244
-- Name: secure_auth_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--
ALTER SEQUENCE public.secure_auth_tokens_id_seq OWNED BY public.secure_auth_tokens.id;

--
-- TOC entry 256 (class 1259 OID 323168)
-- Name: user_login_permissions; Type: TABLE; Schema: public; Owner: postgres
--
CREATE TABLE IF NOT EXISTS public.user_login_permissions (
    user_login_id integer NOT NULL,
    permissions character varying(255)
);

ALTER TABLE public.user_login_permissions OWNER TO postgres;

--
-- TOC entry 257 (class 1259 OID 323171)
-- Name: user_login_roles_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--
CREATE TABLE IF NOT EXISTS public.user_login_roles_group_permissions (
    user_login_roles_group_id integer NOT NULL,
    permissions character varying(255)
);

ALTER TABLE public.user_login_roles_group_permissions OWNER TO postgres;

--
-- TOC entry 255 (class 1259 OID 323162)
-- Name: user_login_roles_groups; Type: TABLE; Schema: public; Owner: postgres
--
CREATE TABLE IF NOT EXISTS public.user_login_roles_groups (
    id integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    name character varying(255)
);

ALTER TABLE public.user_login_roles_groups OWNER TO postgres;

--
-- TOC entry 254 (class 1259 OID 323160)
-- Name: user_login_roles_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--
CREATE SEQUENCE public.user_login_roles_groups_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

ALTER TABLE public.user_login_roles_groups_id_seq OWNER TO postgres;

--
-- TOC entry 3582 (class 0 OID 0)
-- Dependencies: 254
-- Name: user_login_roles_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--
ALTER SEQUENCE public.user_login_roles_groups_id_seq OWNED BY public.user_login_roles_groups.id;

--
-- TOC entry 264 (class 1259 OID 323255)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--
CREATE TABLE IF NOT EXISTS public.users (
    id bigint NOT NULL,
    cop_id bigint,
    created_at timestamp without time zone,
    email character varying(255) NOT NULL,
    full_name character varying(255),
    identifier character varying(255),
    PASSWORD character varying(255),
    STATUS character varying(255),
    updated_at timestamp without time zone,
    title character varying(100),
    department character varying(255),
    mfa boolean DEFAULT false,
    secret character varying(255),
    l_id integer,
    role character varying(255)
);

ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 265 (class 1259 OID 323263)
-- Name: users_agreements; Type: TABLE; Schema: public; Owner: postgres
--
CREATE TABLE IF NOT EXISTS public.users_agreements (
    id bigint NOT NULL,
    bundle_agreement boolean DEFAULT false,
    client_consent boolean DEFAULT false,
    client_contact_consent boolean DEFAULT false,
    client_declaration boolean DEFAULT false,
    docusingedw9 boolean DEFAULT false,
    electronic_agreement boolean DEFAULT false,
    mondeum_customer_agreement boolean DEFAULT false,
    rqd_clearing_margin boolean DEFAULT false,
    rqd_customer_agreement boolean DEFAULT false,
    user_id bigint
);

ALTER TABLE public.users_agreements OWNER TO postgres;

--
-- TOC entry 274 (class 1259 OID 323321)
-- Name: users_agreements_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--
CREATE SEQUENCE public.users_agreements_seq START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

ALTER TABLE public.users_agreements_seq OWNER TO postgres;

--
-- TOC entry 266 (class 1259 OID 323277)
-- Name: users_financial_profile; Type: TABLE; Schema: public; Owner: postgres
--
CREATE TABLE IF NOT EXISTS public.users_financial_profile (
    id bigint NOT NULL,
    acc_investor character varying(255),
    bonds_experience character varying(255),
    company_industry character varying(255),
    employer_name character varying(255),
    employment_status character varying(255),
    finra boolean NOT NULL,
    finra_emp character varying(255),
    five_percent_of_public_company boolean NOT NULL,
    futures_experience character varying(255),
    house_hold character varying(255),
    initial_deposit character varying(255),
    investment_objective character varying(255),
    large_trader boolean NOT NULL,
    large_trader_id character varying(255),
    liquid_net_worth character varying(255),
    liquidity_needs character varying(255),
    margin_experience character varying(255),
    mondeum_emp character varying(255),
    money_laundering boolean DEFAULT false,
    mutual_funds_experience character varying(255),
    occupation character varying(255),
    options_experience character varying(255),
    other_company_industry character varying(255),
    pep boolean NOT NULL,
    primary_wealth_source character varying(255),
    public_company_name character varying(255),
    qualified_client character varying(255),
    relative_of_employee boolean NOT NULL,
    risk_tolerance character varying(255),
    salary character varying(255),
    sec boolean DEFAULT false,
    secondary_wealth_source character varying(255),
    short_experience character varying(255),
    stock_experience character varying(255),
    tax_rate character varying(255),
    terrorist boolean DEFAULT false,
    time_horizon character varying(255),
    total_net_worth character varying(255),
    unemployed_reason character varying(255),
    unlisted_occupation character varying(255),
    years_employed character varying(255),
    user_id bigint
);

ALTER TABLE public.users_financial_profile OWNER TO postgres;

--
-- TOC entry 275 (class 1259 OID 323323)
-- Name: users_financial_profile_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--
CREATE SEQUENCE public.users_financial_profile_seq START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

ALTER TABLE public.users_financial_profile_seq OWNER TO postgres;

--
-- TOC entry 286 (class 1259 OID 323468)
-- Name: users_notes; Type: TABLE; Schema: public; Owner: postgres
--
CREATE TABLE IF NOT EXISTS public.users_notes (
    id integer NOT NULL,
    user_id bigint NOT NULL,
    created_at timestamp without time zone,
    created_by character varying(255) NOT NULL,
    note character varying(1000) NOT NULL
);

ALTER TABLE public.users_notes OWNER TO postgres;

--
-- TOC entry 285 (class 1259 OID 323466)
-- Name: users_notes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--
CREATE SEQUENCE public.users_notes_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

ALTER TABLE public.users_notes_id_seq OWNER TO postgres;

--
-- TOC entry 3583 (class 0 OID 0)
-- Dependencies: 285
-- Name: users_notes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--
ALTER SEQUENCE public.users_notes_id_seq OWNED BY public.users_notes.id;

--
-- TOC entry 291 (class 1259 OID 323516)
-- Name: users_notes_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--
CREATE SEQUENCE public.users_notes_seq START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

ALTER TABLE public.users_notes_seq OWNER TO postgres;

--
-- TOC entry 267 (class 1259 OID 323288)
-- Name: users_permissions; Type: TABLE; Schema: public; Owner: postgres
--
CREATE TABLE IF NOT EXISTS public.users_permissions (
    user_id bigint NOT NULL,
    permission_id character varying(255) NOT NULL
);

ALTER TABLE public.users_permissions OWNER TO postgres;

--
-- TOC entry 268 (class 1259 OID 323293)
-- Name: users_personal_profile; Type: TABLE; Schema: public; Owner: postgres
--
CREATE TABLE IF NOT EXISTS public.users_personal_profile (
    id bigint NOT NULL,
    address_city character varying(255),
    address_country character varying(255),
    address_state character varying(255),
    address_street_one character varying(255),
    address_street_two character varying(255),
    address_zip_code character varying(255),
    city_of_birth character varying(255),
    country_of_birth character varying(255),
    country_of_citizenship character varying(255),
    date_of_birth character varying(255),
    dependents integer,
    email character varying(255),
    first_name character varying(255),
    full_name character varying(255),
    has_trusted_contact boolean,
    knowledge_level character varying(255),
    last_name character varying(255),
    mailing_address_city character varying(255),
    mailing_address_country character varying(255),
    mailing_address_state character varying(255),
    mailing_address_street_one character varying(255),
    mailing_address_street_two character varying(255),
    mailing_address_zip_code character varying(255),
    marital_status character varying(255),
    other_name character varying(255),
    phone_number character varying(255),
    same_mailing_address boolean,
    sex character varying(255),
    tc_address_street_one character varying(255),
    tc_address_street_two character varying(255),
    tc_agreement_one boolean,
    tc_agreement_two boolean,
    tc_city_name character varying(255),
    tc_country character varying(255),
    tc_date_of_birth character varying(255),
    tc_email character varying(255),
    tc_first_name character varying(255),
    tc_last_name character varying(255),
    tc_middle_name character varying(255),
    tc_phone_number character varying(255),
    tc_relation character varying(255),
    tc_state character varying(255),
    tc_zip_code character varying(255),
    trading_preference_other character varying(255),
    us_tax_id character varying(255),
    years_of_experience character varying(255),
    user_id bigint
);

ALTER TABLE public.users_personal_profile OWNER TO postgres;

--
-- TOC entry 276 (class 1259 OID 323325)
-- Name: users_personal_profile_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--
CREATE SEQUENCE public.users_personal_profile_seq START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

ALTER TABLE public.users_personal_profile_seq OWNER TO postgres;

--
-- TOC entry 269 (class 1259 OID 323301)
-- Name: users_personal_profile_trading_preference; Type: TABLE; Schema: public; Owner: postgres
--
CREATE TABLE IF NOT EXISTS public.users_personal_profile_trading_preference (
    users_personal_profile_id bigint NOT NULL,
    trading_preference character varying(255)
);

ALTER TABLE public.users_personal_profile_trading_preference OWNER TO postgres;

--
-- TOC entry 270 (class 1259 OID 323304)
-- Name: users_product_requests; Type: TABLE; Schema: public; Owner: postgres
--
CREATE TABLE IF NOT EXISTS public.users_product_requests (
    id bigint NOT NULL,
    affiliate_group character varying(255),
    client_id character varying(255),
    leverage_type character varying(255),
    product_platform character varying(255),
    product_type character varying(255),
    resend_count integer,
    review_status character varying(255),
    trader_id character varying(255),
    user_id bigint,
    asset_class character varying(255),
    account_type character varying(255),
    fdid character varying(255),
    risk_setting character varying(255),
    cat_affiliate_flag character varying(255),
    cat_holder_type character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);

ALTER TABLE public.users_product_requests OWNER TO postgres;

--
-- TOC entry 277 (class 1259 OID 323327)
-- Name: users_product_requests_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--
CREATE SEQUENCE public.users_product_requests_seq START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

ALTER TABLE public.users_product_requests_seq OWNER TO postgres;

--
-- TOC entry 292 (class 1259 OID 323518)
-- Name: users_professional_trader_status; Type: TABLE; Schema: public; Owner: postgres
--
CREATE TABLE IF NOT EXISTS public.users_professional_trader_status (
    id bigint NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    crd_number character varying(255),
    firm_address character varying(255),
    firm_email_address character varying(255),
    firm_name character varying(255),
    firm_phone_number character varying(255),
    firm_type character varying(255),
    issuing_organization character varying(255),
    name character varying(255),
    role_title_position character varying(255),
    what_makes character varying(255),
    account_classification character varying(255),
    promo_code character varying(255),
    referral_source character varying(255),
    referral_source_other character varying(255),
    asset_class character varying(255),
    platform_selection character varying(255),
    user_id bigint
);

ALTER TABLE public.users_professional_trader_status OWNER TO postgres;

--
-- TOC entry 293 (class 1259 OID 323528)
-- Name: users_professional_trader_status_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--
CREATE SEQUENCE public.users_professional_trader_status_seq START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

ALTER TABLE public.users_professional_trader_status_seq OWNER TO postgres;

--
-- TOC entry 283 (class 1259 OID 323454)
-- Name: users_risk_assignments; Type: TABLE; Schema: public; Owner: postgres
--
CREATE TABLE IF NOT EXISTS public.users_risk_assignments (
    id bigint NOT NULL,
    created_at timestamp without time zone,
    max_score double precision,
    risk_group character varying(10),
    risk_profile character varying(10),
    score double precision,
    total_score double precision,
    updated_at timestamp without time zone,
    user_id bigint
);

ALTER TABLE public.users_risk_assignments OWNER TO postgres;

--
-- TOC entry 284 (class 1259 OID 323459)
-- Name: users_risk_assignments_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--
CREATE SEQUENCE public.users_risk_assignments_seq START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

ALTER TABLE public.users_risk_assignments_seq OWNER TO postgres;

--
-- TOC entry 271 (class 1259 OID 323312)
-- Name: users_roles; Type: TABLE; Schema: public; Owner: postgres
--
CREATE TABLE IF NOT EXISTS public.users_roles (
    user_id bigint NOT NULL,
    role_id character varying(255) NOT NULL
);

ALTER TABLE public.users_roles OWNER TO postgres;

--
-- TOC entry 278 (class 1259 OID 323329)
-- Name: users_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--
CREATE SEQUENCE public.users_seq START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

ALTER TABLE public.users_seq OWNER TO postgres;

--
-- TOC entry 3203 (class 2604 OID 322705)
-- Name: affiliate_codes id; Type: DEFAULT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.affiliate_codes
ALTER COLUMN id
SET DEFAULT nextval('public.affiliate_codes_id_seq'::regclass);

--
-- TOC entry 3204 (class 2604 OID 322716)
-- Name: affiliates id; Type: DEFAULT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.affiliates
ALTER COLUMN id
SET DEFAULT nextval('public.affiliates_id_seq'::regclass);

--
-- TOC entry 3205 (class 2604 OID 322743)
-- Name: application_documents id; Type: DEFAULT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.application_documents
ALTER COLUMN id
SET DEFAULT nextval('public.application_documents_id_seq'::regclass);

--
-- TOC entry 3206 (class 2604 OID 322770)
-- Name: application_product_requests id; Type: DEFAULT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.application_product_requests
ALTER COLUMN id
SET DEFAULT nextval(
        'public.application_product_requests_id_seq'::regclass
    );

--
-- TOC entry 3223 (class 2604 OID 323119)
-- Name: application_rqd_accounts id; Type: DEFAULT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.application_rqd_accounts
ALTER COLUMN id
SET DEFAULT nextval(
        'public.application_rqd_accounts_id_seq'::regclass
    );

--
-- TOC entry 3207 (class 2604 OID 322781)
-- Name: application_suitability_check id; Type: DEFAULT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.application_suitability_check
ALTER COLUMN id
SET DEFAULT nextval(
        'public.application_suitability_check_id_seq'::regclass
    );

--
-- TOC entry 3208 (class 2604 OID 322792)
-- Name: applications id; Type: DEFAULT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.applications
ALTER COLUMN id
SET DEFAULT nextval('public.applications_id_seq'::regclass);

--
-- TOC entry 3209 (class 2604 OID 322803)
-- Name: audit_application_changes id; Type: DEFAULT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.audit_application_changes
ALTER COLUMN id
SET DEFAULT nextval(
        'public.audit_application_changes_id_seq'::regclass
    );

--
-- TOC entry 3210 (class 2604 OID 322814)
-- Name: audit_changes id; Type: DEFAULT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.audit_changes
ALTER COLUMN id
SET DEFAULT nextval('public.audit_changes_id_seq'::regclass);

--
-- TOC entry 3211 (class 2604 OID 322825)
-- Name: audit_status_changes id; Type: DEFAULT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.audit_status_changes
ALTER COLUMN id
SET DEFAULT nextval('public.audit_status_changes_id_seq'::regclass);

--
-- TOC entry 3212 (class 2604 OID 322836)
-- Name: audit_system_events id; Type: DEFAULT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.audit_system_events
ALTER COLUMN id
SET DEFAULT nextval('public.audit_system_events_id_seq'::regclass);

--
-- TOC entry 3224 (class 2604 OID 323146)
-- Name: comments id; Type: DEFAULT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.comments
ALTER COLUMN id
SET DEFAULT nextval('public.comments_id_seq'::regclass);

--
-- TOC entry 3213 (class 2604 OID 322847)
-- Name: country_codes id; Type: DEFAULT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.country_codes
ALTER COLUMN id
SET DEFAULT nextval('public.country_codes_id_seq'::regclass);

--
-- TOC entry 3214 (class 2604 OID 322858)
-- Name: login_reset_tokens id; Type: DEFAULT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.login_reset_tokens
ALTER COLUMN id
SET DEFAULT nextval('public.login_reset_tokens_id_seq'::regclass);

--
-- TOC entry 3215 (class 2604 OID 322869)
-- Name: login_security id; Type: DEFAULT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.login_security
ALTER COLUMN id
SET DEFAULT nextval('public.login_security_id_seq'::regclass);

--
-- TOC entry 3216 (class 2604 OID 322880)
-- Name: login_verification_token id; Type: DEFAULT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.login_verification_token
ALTER COLUMN id
SET DEFAULT nextval(
        'public.login_verification_token_id_seq'::regclass
    );

--
-- TOC entry 3217 (class 2604 OID 322888)
-- Name: logins id; Type: DEFAULT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.logins
ALTER COLUMN id
SET DEFAULT nextval('public.logins_id_seq'::regclass);

--
-- TOC entry 3218 (class 2604 OID 322899)
-- Name: messages id; Type: DEFAULT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.messages
ALTER COLUMN id
SET DEFAULT nextval('public.messages_id_seq'::regclass);

--
-- TOC entry 3219 (class 2604 OID 322910)
-- Name: notices id; Type: DEFAULT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.notices
ALTER COLUMN id
SET DEFAULT nextval('public.notices_id_seq'::regclass);

--
-- TOC entry 3220 (class 2604 OID 322921)
-- Name: notifications id; Type: DEFAULT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.notifications
ALTER COLUMN id
SET DEFAULT nextval('public.notifications_id_seq'::regclass);

--
-- TOC entry 3221 (class 2604 OID 322935)
-- Name: platforms id; Type: DEFAULT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.platforms
ALTER COLUMN id
SET DEFAULT nextval('public.platforms_id_seq'::regclass);

ALTER TABLE ONLY public.platform_details
ALTER COLUMN id
SET DEFAULT nextval('public.platform_details_id_seq'::regclass);

--
-- TOC entry 3222 (class 2604 OID 322943)
-- Name: secure_auth_tokens id; Type: DEFAULT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.secure_auth_tokens
ALTER COLUMN id
SET DEFAULT nextval('public.secure_auth_tokens_id_seq'::regclass);

--
-- TOC entry 3225 (class 2604 OID 323165)
-- Name: user_login_roles_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.user_login_roles_groups
ALTER COLUMN id
SET DEFAULT nextval(
        'public.user_login_roles_groups_id_seq'::regclass
    );

--
-- TOC entry 3243 (class 2604 OID 323471)
-- Name: users_notes id; Type: DEFAULT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.users_notes
ALTER COLUMN id
SET DEFAULT nextval('public.users_notes_id_seq'::regclass);

--
-- TOC entry 3365 (class 2606 OID 323491)
-- Name: account_financial_profile_changes account_financial_profile_changes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.account_financial_profile_changes
ADD CONSTRAINT account_financial_profile_changes_pkey PRIMARY KEY (id);

--
-- TOC entry 3367 (class 2606 OID 323506)
-- Name: account_personal_profile_changes account_personal_profile_changes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.account_personal_profile_changes
ADD CONSTRAINT account_personal_profile_changes_pkey PRIMARY KEY (id);

--
-- TOC entry 3371 (class 2606 OID 323544)
-- Name: account_professional_trader_status_changes account_professional_trader_status_changes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.account_professional_trader_status_changes
ADD CONSTRAINT account_professional_trader_status_changes_pkey PRIMARY KEY (id);

--
-- TOC entry 3353 (class 2606 OID 323395)
-- Name: old_account_requests_financial_profile account_requests_financial_profile_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.old_account_requests_financial_profile
ADD CONSTRAINT account_requests_financial_profile_pkey PRIMARY KEY (account_requests_id, financial_profile_key);

--
-- TOC entry 3355 (class 2606 OID 323408)
-- Name: old_account_requests_personal_profile account_requests_personal_profile_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.old_account_requests_personal_profile
ADD CONSTRAINT account_requests_personal_profile_pkey PRIMARY KEY (account_requests_id, personal_profile_key);

--
-- TOC entry 3329 (class 2606 OID 323228)
-- Name: account_requests account_requests_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.account_requests
ADD CONSTRAINT account_requests_pkey PRIMARY KEY (id);

--
-- TOC entry 3331 (class 2606 OID 323238)
-- Name: account_requests_transactions account_requests_transactions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.account_requests_transactions
ADD CONSTRAINT account_requests_transactions_pkey PRIMARY KEY (id);

--
-- TOC entry 3253 (class 2606 OID 322710)
-- Name: affiliate_codes affiliate_codes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.affiliate_codes
ADD CONSTRAINT affiliate_codes_pkey PRIMARY KEY (id);

--
-- TOC entry 3257 (class 2606 OID 322721)
-- Name: affiliates affiliates_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.affiliates
ADD CONSTRAINT affiliates_pkey PRIMARY KEY (id);

--
-- TOC entry 3263 (class 2606 OID 322729)
-- Name: application_agreements application_agreements_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.application_agreements
ADD CONSTRAINT application_agreements_pkey PRIMARY KEY (application_id);

--
-- TOC entry 3265 (class 2606 OID 322737)
-- Name: application_compliance_review application_compliance_review_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.application_compliance_review
ADD CONSTRAINT application_compliance_review_pkey PRIMARY KEY (application_id);

--
-- TOC entry 3267 (class 2606 OID 322748)
-- Name: application_documents application_documents_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.application_documents
ADD CONSTRAINT application_documents_pkey PRIMARY KEY (id);

--
-- TOC entry 3269 (class 2606 OID 322756)
-- Name: application_financial_profiles application_financial_profiles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.application_financial_profiles
ADD CONSTRAINT application_financial_profiles_pkey PRIMARY KEY (application_id);

--
-- TOC entry 3309 (class 2606 OID 323113)
-- Name: application_hubspot_contacts application_hubspot_contacts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.application_hubspot_contacts
ADD CONSTRAINT application_hubspot_contacts_pkey PRIMARY KEY (user_login_id);

--
-- TOC entry 3271 (class 2606 OID 322764)
-- Name: application_personal_profiles application_personal_profiles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.application_personal_profiles
ADD CONSTRAINT application_personal_profiles_pkey PRIMARY KEY (application_id);

--
-- TOC entry 3273 (class 2606 OID 322775)
-- Name: application_product_requests application_product_requests_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.application_product_requests
ADD CONSTRAINT application_product_requests_pkey PRIMARY KEY (id);

--
-- TOC entry 3315 (class 2606 OID 323124)
-- Name: application_rqd_accounts application_rqd_accounts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.application_rqd_accounts
ADD CONSTRAINT application_rqd_accounts_pkey PRIMARY KEY (id);

--
-- TOC entry 3275 (class 2606 OID 322786)
-- Name: application_suitability_check application_suitability_check_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.application_suitability_check
ADD CONSTRAINT application_suitability_check_pkey PRIMARY KEY (id);

--
-- TOC entry 3277 (class 2606 OID 322797)
-- Name: applications applications_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.applications
ADD CONSTRAINT applications_pkey PRIMARY KEY (id);

--
-- TOC entry 3279 (class 2606 OID 322808)
-- Name: audit_application_changes audit_application_changes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.audit_application_changes
ADD CONSTRAINT audit_application_changes_pkey PRIMARY KEY (id);

--
-- TOC entry 3281 (class 2606 OID 322819)
-- Name: audit_changes audit_changes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.audit_changes
ADD CONSTRAINT audit_changes_pkey PRIMARY KEY (id);

--
-- TOC entry 3283 (class 2606 OID 322830)
-- Name: audit_status_changes audit_status_changes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.audit_status_changes
ADD CONSTRAINT audit_status_changes_pkey PRIMARY KEY (id);

--
-- TOC entry 3285 (class 2606 OID 322841)
-- Name: audit_system_events audit_system_events_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.audit_system_events
ADD CONSTRAINT audit_system_events_pkey PRIMARY KEY (id);

--
-- TOC entry 3317 (class 2606 OID 323132)
-- Name: client_application_projection client_application_projection_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.client_application_projection
ADD CONSTRAINT client_application_projection_pkey PRIMARY KEY (id);

--
-- TOC entry 3319 (class 2606 OID 323140)
-- Name: client_application_result client_application_result_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.client_application_result
ADD CONSTRAINT client_application_result_pkey PRIMARY KEY (id);

--
-- TOC entry 3321 (class 2606 OID 323151)
-- Name: comments comments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.comments
ADD CONSTRAINT comments_pkey PRIMARY KEY (id);

--
-- TOC entry 3287 (class 2606 OID 322852)
-- Name: country_codes country_codes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.country_codes
ADD CONSTRAINT country_codes_pkey PRIMARY KEY (id);

--
-- TOC entry 3327 (class 2606 OID 323212)
-- Name: databasechangeloglock databasechangeloglock_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.databasechangeloglock
ADD CONSTRAINT databasechangeloglock_pkey PRIMARY KEY (id);

--
-- TOC entry 3289 (class 2606 OID 322863)
-- Name: login_reset_tokens login_reset_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.login_reset_tokens
ADD CONSTRAINT login_reset_tokens_pkey PRIMARY KEY (id);

--
-- TOC entry 3291 (class 2606 OID 322874)
-- Name: login_security login_security_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.login_security
ADD CONSTRAINT login_security_pkey PRIMARY KEY (id);

--
-- TOC entry 3293 (class 2606 OID 322882)
-- Name: login_verification_token login_verification_token_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.login_verification_token
ADD CONSTRAINT login_verification_token_pkey PRIMARY KEY (id);

--
-- TOC entry 3295 (class 2606 OID 322893)
-- Name: logins logins_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.logins
ADD CONSTRAINT logins_pkey PRIMARY KEY (id);

--
-- TOC entry 3299 (class 2606 OID 322904)
-- Name: messages messages_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.messages
ADD CONSTRAINT messages_pkey PRIMARY KEY (id);

--
-- TOC entry 3301 (class 2606 OID 322915)
-- Name: notices notices_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.notices
ADD CONSTRAINT notices_pkey PRIMARY KEY (id);

--
-- TOC entry 3303 (class 2606 OID 322926)
-- Name: notifications notifications_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.notifications
ADD CONSTRAINT notifications_pkey PRIMARY KEY (id);

--
-- TOC entry 3357 (class 2606 OID 323421)
-- Name: permission_groups permission_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.permission_groups
ADD CONSTRAINT permission_groups_pkey PRIMARY KEY (id);

--
-- TOC entry 3359 (class 2606 OID 323431)
-- Name: permissions_permission_groups permissions_permission_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.permissions_permission_groups
ADD CONSTRAINT permissions_permission_groups_pkey PRIMARY KEY (permission_groups_id, permissions_id);

--
-- TOC entry 3333 (class 2606 OID 323246)
-- Name: permissions permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.permissions
ADD CONSTRAINT permissions_pkey PRIMARY KEY (id);

--
-- TOC entry 3305 (class 2606 OID 322937)
-- Name: platforms platforms_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.platforms
ADD CONSTRAINT platforms_pkey PRIMARY KEY (id);

--
-- TOC entry 3323 (class 2606 OID 323159)
-- Name: product_request_result product_request_result_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.product_request_result
ADD CONSTRAINT product_request_result_pkey PRIMARY KEY (id);

--
-- TOC entry 3335 (class 2606 OID 323254)
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.roles
ADD CONSTRAINT roles_pkey PRIMARY KEY (id);

--
-- TOC entry 3373 (class 2606 OID 323560)
-- Name: accounts rqd_accounts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.accounts
ADD CONSTRAINT rqd_accounts_pkey PRIMARY KEY (id);

--
-- TOC entry 3307 (class 2606 OID 322948)
-- Name: secure_auth_tokens secure_auth_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.secure_auth_tokens
ADD CONSTRAINT secure_auth_tokens_pkey PRIMARY KEY (id);

--
-- TOC entry 3337 (class 2606 OID 323332)
-- Name: users uk_6dotkott2kjsp8vw4d0m25fb7; Type: CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.users
ADD CONSTRAINT uk_6dotkott2kjsp8vw4d0m25fb7 UNIQUE (email);

--
-- TOC entry 3311 (class 2606 OID 323175)
-- Name: application_hubspot_contacts uk_8qtudvqkq1ur59bx932ebkjw; Type: CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.application_hubspot_contacts
ADD CONSTRAINT uk_8qtudvqkq1ur59bx932ebkjw UNIQUE (hubspot_contact_id);

--
-- TOC entry 3259 (class 2606 OID 322952)
-- Name: affiliates uk_aewqsdhge11xk50183g4s4rip; Type: CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.affiliates
ADD CONSTRAINT uk_aewqsdhge11xk50183g4s4rip UNIQUE (group_name);

--
-- TOC entry 3297 (class 2606 OID 322956)
-- Name: logins uk_dffejhld3kdl9ex8n0d7rd6b; Type: CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.logins
ADD CONSTRAINT uk_dffejhld3kdl9ex8n0d7rd6b UNIQUE (email);

--
-- TOC entry 3313 (class 2606 OID 323177)
-- Name: application_hubspot_contacts uk_ekjvrhogbty4kw264a2g32sug; Type: CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.application_hubspot_contacts
ADD CONSTRAINT uk_ekjvrhogbty4kw264a2g32sug UNIQUE (hubspot_deal_id);

--
-- TOC entry 3261 (class 2606 OID 322954)
-- Name: affiliates_promo_codes uk_quoa0ixiroxots8bi9tkfke9p; Type: CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.affiliates_promo_codes
ADD CONSTRAINT uk_quoa0ixiroxots8bi9tkfke9p UNIQUE (promo_codes_id);

--
-- TOC entry 3255 (class 2606 OID 322950)
-- Name: affiliate_codes uk_sgg0l6v4wrhcy0biapfm02ckp; Type: CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.affiliate_codes
ADD CONSTRAINT uk_sgg0l6v4wrhcy0biapfm02ckp UNIQUE (code);

--
-- TOC entry 3325 (class 2606 OID 323167)
-- Name: user_login_roles_groups user_login_roles_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.user_login_roles_groups
ADD CONSTRAINT user_login_roles_groups_pkey PRIMARY KEY (id);

--
-- TOC entry 3341 (class 2606 OID 323276)
-- Name: users_agreements users_agreements_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.users_agreements
ADD CONSTRAINT users_agreements_pkey PRIMARY KEY (id);

--
-- TOC entry 3343 (class 2606 OID 323287)
-- Name: users_financial_profile users_financial_profile_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.users_financial_profile
ADD CONSTRAINT users_financial_profile_pkey PRIMARY KEY (id);

--
-- TOC entry 3363 (class 2606 OID 323476)
-- Name: users_notes users_notes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.users_notes
ADD CONSTRAINT users_notes_pkey PRIMARY KEY (id);

--
-- TOC entry 3345 (class 2606 OID 323292)
-- Name: users_permissions users_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.users_permissions
ADD CONSTRAINT users_permissions_pkey PRIMARY KEY (user_id, permission_id);

--
-- TOC entry 3347 (class 2606 OID 323300)
-- Name: users_personal_profile users_personal_profile_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.users_personal_profile
ADD CONSTRAINT users_personal_profile_pkey PRIMARY KEY (id);

--
-- TOC entry 3339 (class 2606 OID 323262)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.users
ADD CONSTRAINT users_pkey PRIMARY KEY (id);

--
-- TOC entry 3349 (class 2606 OID 323311)
-- Name: users_product_requests users_product_requests_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.users_product_requests
ADD CONSTRAINT users_product_requests_pkey PRIMARY KEY (id);

--
-- TOC entry 3369 (class 2606 OID 323527)
-- Name: users_professional_trader_status users_professional_trader_status_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.users_professional_trader_status
ADD CONSTRAINT users_professional_trader_status_pkey PRIMARY KEY (id);

--
-- TOC entry 3361 (class 2606 OID 323458)
-- Name: users_risk_assignments users_risk_assignments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.users_risk_assignments
ADD CONSTRAINT users_risk_assignments_pkey PRIMARY KEY (id);

--
-- TOC entry 3351 (class 2606 OID 323316)
-- Name: users_roles users_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.users_roles
ADD CONSTRAINT users_roles_pkey PRIMARY KEY (user_id, role_id);

--
-- TOC entry 3422 (class 2606 OID 323545)
-- Name: account_professional_trader_status_changes account_professional_trader_status_cha_account_requests_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.account_professional_trader_status_changes
ADD CONSTRAINT account_professional_trader_status_cha_account_requests_id_fkey FOREIGN KEY (account_requests_id) REFERENCES public.account_requests(id);

--
-- TOC entry 3408 (class 2606 OID 323368)
-- Name: users_personal_profile_trading_preference fk1a3gqror9esiswbhugmadynrr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.users_personal_profile_trading_preference
ADD CONSTRAINT fk1a3gqror9esiswbhugmadynrr FOREIGN KEY (users_personal_profile_id) REFERENCES public.users_personal_profile(id);

--
-- TOC entry 3395 (class 2606 OID 323178)
-- Name: application_hubspot_contacts fk1tll6tbx3odrvy308ebg2es4s; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.application_hubspot_contacts
ADD CONSTRAINT fk1tll6tbx3odrvy308ebg2es4s FOREIGN KEY (user_login_id) REFERENCES public.logins(id);

--
-- TOC entry 3381 (class 2606 OID 322992)
-- Name: application_personal_profiles fk2fhr4dovsggbguddb9s0c3ql3; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.application_personal_profiles
ADD CONSTRAINT fk2fhr4dovsggbguddb9s0c3ql3 FOREIGN KEY (application_id) REFERENCES public.applications(id);

--
-- TOC entry 3383 (class 2606 OID 323002)
-- Name: application_suitability_check fk2m48m0jg7jluk3vbxh1xvchi1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.application_suitability_check
ADD CONSTRAINT fk2m48m0jg7jluk3vbxh1xvchi1 FOREIGN KEY (application_id) REFERENCES public.applications(id);

--
-- TOC entry 3411 (class 2606 OID 323383)
-- Name: users_roles fk2o0jvgh89lemvvo17cbqvdxaa; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.users_roles
ADD CONSTRAINT fk2o0jvgh89lemvvo17cbqvdxaa FOREIGN KEY (user_id) REFERENCES public.users(id);

--
-- TOC entry 3379 (class 2606 OID 322982)
-- Name: application_documents fk33giiaerc6340231ojglyjpu3; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.application_documents
ADD CONSTRAINT fk33giiaerc6340231ojglyjpu3 FOREIGN KEY (user_login_id) REFERENCES public.logins(id);

--
-- TOC entry 3420 (class 2606 OID 323507)
-- Name: account_personal_profile_changes fk38a5f0q4pvhadg2q7pcjjb77s; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.account_personal_profile_changes
ADD CONSTRAINT fk38a5f0q4pvhadg2q7pcjjb77s FOREIGN KEY (account_requests_id) REFERENCES public.account_requests(id);

--
-- TOC entry 3412 (class 2606 OID 323396)
-- Name: old_account_requests_financial_profile fk38jbdfbfuvn4f83swp3g1ejf4; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.old_account_requests_financial_profile
ADD CONSTRAINT fk38jbdfbfuvn4f83swp3g1ejf4 FOREIGN KEY (account_requests_id) REFERENCES public.account_requests(id);

--
-- TOC entry 3375 (class 2606 OID 322962)
-- Name: affiliates_promo_codes fk3rl4u079li3lrxg0kyuw92v37; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.affiliates_promo_codes
ADD CONSTRAINT fk3rl4u079li3lrxg0kyuw92v37 FOREIGN KEY (promo_codes_id) REFERENCES public.affiliate_codes(id);

--
-- TOC entry 3389 (class 2606 OID 323032)
-- Name: login_security fk467u4jck10ne34nxolny1sf3g; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.login_security
ADD CONSTRAINT fk467u4jck10ne34nxolny1sf3g FOREIGN KEY (user_login_id) REFERENCES public.logins(id);

--
-- TOC entry 3413 (class 2606 OID 323409)
-- Name: old_account_requests_personal_profile fk5pvokgvuup2f7xll4g54vkhdw; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.old_account_requests_personal_profile
ADD CONSTRAINT fk5pvokgvuup2f7xll4g54vkhdw FOREIGN KEY (account_requests_id) REFERENCES public.account_requests(id);

--
-- TOC entry 3393 (class 2606 OID 323052)
-- Name: notifications fk7ut4dreubowchjug63fjs4f99; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.notifications
ADD CONSTRAINT fk7ut4dreubowchjug63fjs4f99 FOREIGN KEY (created_by_id) REFERENCES public.logins(id);

--
-- TOC entry 3401 (class 2606 OID 323338)
-- Name: account_requests fk7vi024i51h8gfhwlf48ccvx6c; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.account_requests
ADD CONSTRAINT fk7vi024i51h8gfhwlf48ccvx6c FOREIGN KEY (user_id) REFERENCES public.users(id);

--
-- TOC entry 3398 (class 2606 OID 323193)
-- Name: comments fk83kg3518byb1hs4yfdmcgvwk8; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.comments
ADD CONSTRAINT fk83kg3518byb1hs4yfdmcgvwk8 FOREIGN KEY (review_id) REFERENCES public.application_compliance_review(application_id);

--
-- TOC entry 3378 (class 2606 OID 322977)
-- Name: application_compliance_review fk84okv082i68g349pso5u734x4; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.application_compliance_review
ADD CONSTRAINT fk84okv082i68g349pso5u734x4 FOREIGN KEY (application_id) REFERENCES public.applications(id);

--
-- TOC entry 3374 (class 2606 OID 322957)
-- Name: affiliate_codes fk8iiri11va1uvjk3yqk20r1fj0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.affiliate_codes
ADD CONSTRAINT fk8iiri11va1uvjk3yqk20r1fj0 FOREIGN KEY (affiliate_id) REFERENCES public.affiliates(id);

--
-- TOC entry 3423 (class 2606 OID 323561)
-- Name: accounts fk_user_accounts; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.accounts
ADD CONSTRAINT fk_user_accounts FOREIGN KEY (user_id) REFERENCES public.users(id);

--
-- TOC entry 3418 (class 2606 OID 323477)
-- Name: users_notes fk_user_id_user_notes; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.users_notes
ADD CONSTRAINT fk_user_id_user_notes FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;

--
-- TOC entry 3415 (class 2606 OID 323432)
-- Name: permissions_permission_groups fkc4yr6bt7voyoxk4hygt4hker6; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.permissions_permission_groups
ADD CONSTRAINT fkc4yr6bt7voyoxk4hygt4hker6 FOREIGN KEY (permission_groups_id) REFERENCES public.permission_groups(id);

--
-- TOC entry 3390 (class 2606 OID 323037)
-- Name: login_verification_token fkf5u1l69flu8gqsf3g3aumhiwf; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.login_verification_token
ADD CONSTRAINT fkf5u1l69flu8gqsf3g3aumhiwf FOREIGN KEY (account_id) REFERENCES public.logins(id);

--
-- TOC entry 3386 (class 2606 OID 323017)
-- Name: audit_application_changes fkfmyb1o44e09lu3827bhdie4qp; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.audit_application_changes
ADD CONSTRAINT fkfmyb1o44e09lu3827bhdie4qp FOREIGN KEY (updated_by_id) REFERENCES public.logins(id);

--
-- TOC entry 3404 (class 2606 OID 323348)
-- Name: account_requests_transactions fkfw7649e2cgaxp9m21lemx5n1w; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.account_requests_transactions
ADD CONSTRAINT fkfw7649e2cgaxp9m21lemx5n1w FOREIGN KEY (reviewer_id) REFERENCES public.users(id);

--
-- TOC entry 3377 (class 2606 OID 322972)
-- Name: application_agreements fkhnjjghm7dc1g1xkrxm8lvyqsq; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.application_agreements
ADD CONSTRAINT fkhnjjghm7dc1g1xkrxm8lvyqsq FOREIGN KEY (application_id) REFERENCES public.applications(id);

--
-- TOC entry 3392 (class 2606 OID 323047)
-- Name: messages fkhv2a4dmfx23mijmshb2c74kb6; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.messages
ADD CONSTRAINT fkhv2a4dmfx23mijmshb2c74kb6 FOREIGN KEY (sender_id) REFERENCES public.logins(id);

--
-- TOC entry 3387 (class 2606 OID 323022)
-- Name: audit_status_changes fkig2c2t3x18gkfc8wo8vewewfm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.audit_status_changes
ADD CONSTRAINT fkig2c2t3x18gkfc8wo8vewewfm FOREIGN KEY (details_id) REFERENCES public.applications(id);

--
-- TOC entry 3410 (class 2606 OID 323378)
-- Name: users_roles fkj6m8fwv7oqv74fcehir1a9ffy; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.users_roles
ADD CONSTRAINT fkj6m8fwv7oqv74fcehir1a9ffy FOREIGN KEY (role_id) REFERENCES public.roles(id);

--
-- TOC entry 3403 (class 2606 OID 323343)
-- Name: account_requests_transactions fkk64crp55k4xcblf26yuenlb4g; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.account_requests_transactions
ADD CONSTRAINT fkk64crp55k4xcblf26yuenlb4g FOREIGN KEY (request_id) REFERENCES public.account_requests(id);

--
-- TOC entry 3419 (class 2606 OID 323492)
-- Name: account_financial_profile_changes fkkjjsu9jwn0txf53pnvh4t9843; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.account_financial_profile_changes
ADD CONSTRAINT fkkjjsu9jwn0txf53pnvh4t9843 FOREIGN KEY (account_requests_id) REFERENCES public.account_requests(id);

--
-- TOC entry 3380 (class 2606 OID 322987)
-- Name: application_financial_profiles fkli1ibn7csgh1nf1monaxcfmou; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.application_financial_profiles
ADD CONSTRAINT fkli1ibn7csgh1nf1monaxcfmou FOREIGN KEY (application_id) REFERENCES public.applications(id);

--
-- TOC entry 3396 (class 2606 OID 323183)
-- Name: application_rqd_accounts fklj0ceyi22aa8a5911s1wehhp3; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.application_rqd_accounts
ADD CONSTRAINT fklj0ceyi22aa8a5911s1wehhp3 FOREIGN KEY (application_id) REFERENCES public.applications(id);

--
-- TOC entry 3397 (class 2606 OID 323188)
-- Name: comments fklpjninydnemkgysx9ix0yoahc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.comments
ADD CONSTRAINT fklpjninydnemkgysx9ix0yoahc FOREIGN KEY (owner_id) REFERENCES public.logins(id);

--
-- TOC entry 3391 (class 2606 OID 323042)
-- Name: messages fkmcpky8usv13528a8qjvn9r5g3; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.messages
ADD CONSTRAINT fkmcpky8usv13528a8qjvn9r5g3 FOREIGN KEY (recipient_id) REFERENCES public.logins(id);

--
-- TOC entry 3385 (class 2606 OID 323012)
-- Name: audit_application_changes fkncb1jrvaru7mt55jggdrsaxhv; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.audit_application_changes
ADD CONSTRAINT fkncb1jrvaru7mt55jggdrsaxhv FOREIGN KEY (application_id) REFERENCES public.applications(id);

--
-- TOC entry 3376 (class 2606 OID 322967)
-- Name: affiliates_promo_codes fkni3ucpctem5i4qw6kbyh3no1b; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.affiliates_promo_codes
ADD CONSTRAINT fkni3ucpctem5i4qw6kbyh3no1b FOREIGN KEY (affiliate_id) REFERENCES public.affiliates(id);

--
-- TOC entry 3416 (class 2606 OID 323437)
-- Name: permissions_permission_groups fknor6iyngvqkcc78vjrk3ub4ac; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.permissions_permission_groups
ADD CONSTRAINT fknor6iyngvqkcc78vjrk3ub4ac FOREIGN KEY (permissions_id) REFERENCES public.permissions(id);

--
-- TOC entry 3394 (class 2606 OID 323057)
-- Name: personal_profile_trading_preferences fknu7e31ossi71uu4rx8uuffooa; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.personal_profile_trading_preferences
ADD CONSTRAINT fknu7e31ossi71uu4rx8uuffooa FOREIGN KEY (personal_profile_application_id) REFERENCES public.application_personal_profiles(application_id);

--
-- TOC entry 3388 (class 2606 OID 323027)
-- Name: login_reset_tokens fkoirqy576ryl6sbwc2exu0ftqp; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.login_reset_tokens
ADD CONSTRAINT fkoirqy576ryl6sbwc2exu0ftqp FOREIGN KEY (account_id) REFERENCES public.logins(id);

--
-- TOC entry 3402 (class 2606 OID 323442)
-- Name: account_requests fkqpg1r1cj8tq6mp9ajfj5804rr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.account_requests
ADD CONSTRAINT fkqpg1r1cj8tq6mp9ajfj5804rr FOREIGN KEY (permission_groups_id) REFERENCES public.permission_groups(id);

--
-- TOC entry 3400 (class 2606 OID 323203)
-- Name: user_login_roles_group_permissions fkqtys8r0277j82963fnugf7w7k; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.user_login_roles_group_permissions
ADD CONSTRAINT fkqtys8r0277j82963fnugf7w7k FOREIGN KEY (user_login_roles_group_id) REFERENCES public.user_login_roles_groups(id);

--
-- TOC entry 3399 (class 2606 OID 323198)
-- Name: user_login_permissions fkqucg4fkav8rwh457qvaf8s5a0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.user_login_permissions
ADD CONSTRAINT fkqucg4fkav8rwh457qvaf8s5a0 FOREIGN KEY (user_login_id) REFERENCES public.logins(id);

--
-- TOC entry 3414 (class 2606 OID 323422)
-- Name: permission_groups fkt4hx0jjua6qelvsj8j4xhhr4u; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.permission_groups
ADD CONSTRAINT fkt4hx0jjua6qelvsj8j4xhhr4u FOREIGN KEY (next_id) REFERENCES public.permission_groups(id);

--
-- TOC entry 3382 (class 2606 OID 322997)
-- Name: application_product_requests fkth5cllo95q6glrvh2rgct3j3y; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.application_product_requests
ADD CONSTRAINT fkth5cllo95q6glrvh2rgct3j3y FOREIGN KEY (application_id) REFERENCES public.applications(id);

--
-- TOC entry 3384 (class 2606 OID 323007)
-- Name: applications fkxa9rhx6ytx08922mskxgmsxt; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.applications
ADD CONSTRAINT fkxa9rhx6ytx08922mskxgmsxt FOREIGN KEY (user_login_id) REFERENCES public.logins(id);

--
-- TOC entry 3405 (class 2606 OID 323353)
-- Name: users_agreements users_financial_profiles_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.users_agreements
ADD CONSTRAINT users_financial_profiles_fk FOREIGN KEY (user_id) REFERENCES public.users(id);

--
-- TOC entry 3406 (class 2606 OID 323358)
-- Name: users_financial_profile users_financial_profiles_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.users_financial_profile
ADD CONSTRAINT users_financial_profiles_fk FOREIGN KEY (user_id) REFERENCES public.users(id);

--
-- TOC entry 3407 (class 2606 OID 323363)
-- Name: users_personal_profile users_financial_profiles_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.users_personal_profile
ADD CONSTRAINT users_financial_profiles_fk FOREIGN KEY (user_id) REFERENCES public.users(id);

--
-- TOC entry 3409 (class 2606 OID 323373)
-- Name: users_product_requests users_financial_profiles_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.users_product_requests
ADD CONSTRAINT users_financial_profiles_fk FOREIGN KEY (user_id) REFERENCES public.users(id);

--
-- TOC entry 3421 (class 2606 OID 323530)
-- Name: users_professional_trader_status users_professional_trader_status_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.users_professional_trader_status
ADD CONSTRAINT users_professional_trader_status_fk FOREIGN KEY (user_id) REFERENCES public.users(id);

--
-- TOC entry 3417 (class 2606 OID 323461)
-- Name: users_risk_assignments users_risk_assignments_seq_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--
ALTER TABLE ONLY public.users_risk_assignments
ADD CONSTRAINT users_risk_assignments_seq_fk FOREIGN KEY (user_id) REFERENCES public.users(id);

-- Completed on 2023-09-20 14:41:09
--
-- PostgreSQL database dump complete