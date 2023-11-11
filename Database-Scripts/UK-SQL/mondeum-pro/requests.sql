   CREATE TABLE IF NOT EXISTS public.platform_switches (
          id SERIAL PRIMARY KEY,
          created_at TIMESTAMP WITHOUT TIME ZONE NOT NULL DEFAULT CURRENT_TIMESTAMP,
          updated_at TIMESTAMP WITHOUT TIME ZONE,
          from_platform VARCHAR(255) NOT NULL,
          to_platform VARCHAR(255) NOT NULL,
          email VARCHAR(255) NOT NULL,
          STATUS VARCHAR(255) NOT NULL
          );

    ALTER TABLE public.platform_switches OWNER TO postgres;

CREATE SEQUENCE IF NOT EXISTS public.platforms_switches_id_seq AS INTEGER START
     WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

    ALTER TABLE public.platforms_switches_id_seq OWNER TO postgres;

    ALTER SEQUENCE public.platforms_switches_id_seq OWNED BY public.platform_switches.id;

-------------------------------------------------------------------------------------------------------------------------------------------------
   CREATE TABLE IF NOT EXISTS public.account_requests (
          id SERIAL PRIMARY KEY,
          created_at TIMESTAMP WITHOUT TIME zone DEFAULT CURRENT_TIMESTAMP,
          request_status CHARACTER VARYING(255),
          request_type CHARACTER VARYING(255),
          updated_at TIMESTAMP WITHOUT TIME zone DEFAULT CURRENT_TIMESTAMP,
          user_id BIGINT,
          permission_groups_id BIGINT,
          request_description CHARACTER VARYING(255)
          );

    ALTER TABLE public.account_requests OWNER TO postgres;

CREATE SEQUENCE IF NOT EXISTS public.account_requests_seq START
     WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

    ALTER TABLE public.account_requests_seq OWNER TO postgres;

    ALTER SEQUENCE public.account_requests_seq OWNED BY public.account_requests.id;

-- ALTER TABLE ONLY public.account_requests ADD CONSTRAINT account_requests_pkey PRIMARY KEY (id);