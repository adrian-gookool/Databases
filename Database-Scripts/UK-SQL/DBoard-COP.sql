   CREATE TABLE IF NOT EXISTS public.users (
          id SERIAL PRIMARY KEY,
          cop_id BIGINT,
          created_at TIMESTAMP WITHOUT TIME zone,
          email CHARACTER VARYING(255) NOT NULL,
          full_name CHARACTER VARYING(255),
          identifier CHARACTER VARYING(255),
          PASSWORD CHARACTER VARYING(255),
          STATUS CHARACTER VARYING(255),
          updated_at TIMESTAMP WITHOUT TIME zone,
          title CHARACTER VARYING(100),
          department CHARACTER VARYING(255),
          mfa BOOLEAN DEFAULT FALSE,
          secret CHARACTER VARYING(255),
          l_id INTEGER,
          role CHARACTER VARYING(255)
          );

    ALTER TABLE public.users OWNER TO postgres;

CREATE SEQUENCE IF NOT EXISTS public.users_seq START
     WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

    ALTER TABLE public.users_seq OWNER TO postgres;

   CREATE TABLE IF NOT EXISTS public.users_agreements (
          id SERIAL PRIMARY KEY,
          bundle_agreement BOOLEAN DEFAULT FALSE,
          client_consent BOOLEAN DEFAULT FALSE,
          client_contact_consent BOOLEAN DEFAULT FALSE,
          client_declaration BOOLEAN DEFAULT FALSE,
          docusingedw9 BOOLEAN DEFAULT FALSE,
          electronic_agreement BOOLEAN DEFAULT FALSE,
          mondeum_customer_agreement BOOLEAN DEFAULT FALSE,
          rqd_clearing_margin BOOLEAN DEFAULT FALSE,
          rqd_customer_agreement BOOLEAN DEFAULT FALSE,
          user_id BIGINT
          );

    ALTER TABLE public.users_agreements OWNER TO postgres;

CREATE SEQUENCE IF NOT EXISTS public.users_agreements_seq START
     WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

    ALTER TABLE public.users_agreements_seq OWNER TO postgres;

   CREATE TABLE IF NOT EXISTS public.users_financial_profile (
          id SERIAL PRIMARY KEY,
          acc_investor CHARACTER VARYING(255),
          bonds_experience CHARACTER VARYING(255),
          company_industry CHARACTER VARYING(255),
          employer_name CHARACTER VARYING(255),
          employment_status CHARACTER VARYING(255),
          finra BOOLEAN NOT NULL,
          finra_emp CHARACTER VARYING(255),
          five_percent_of_public_company BOOLEAN NOT NULL,
          futures_experience CHARACTER VARYING(255),
          house_hold CHARACTER VARYING(255),
          initial_deposit CHARACTER VARYING(255),
          investment_objective CHARACTER VARYING(255),
          large_trader BOOLEAN NOT NULL,
          large_trader_id CHARACTER VARYING(255),
          liquid_net_worth CHARACTER VARYING(255),
          liquidity_needs CHARACTER VARYING(255),
          margin_experience CHARACTER VARYING(255),
          mondeum_emp CHARACTER VARYING(255),
          money_laundering BOOLEAN DEFAULT FALSE,
          mutual_funds_experience CHARACTER VARYING(255),
          occupation CHARACTER VARYING(255),
          options_experience CHARACTER VARYING(255),
          other_company_industry CHARACTER VARYING(255),
          pep BOOLEAN NOT NULL,
          primary_wealth_source CHARACTER VARYING(255),
          public_company_name CHARACTER VARYING(255),
          qualified_client CHARACTER VARYING(255),
          relative_of_employee BOOLEAN NOT NULL,
          risk_tolerance CHARACTER VARYING(255),
          salary CHARACTER VARYING(255),
          sec BOOLEAN DEFAULT FALSE,
          secondary_wealth_source CHARACTER VARYING(255),
          short_experience CHARACTER VARYING(255),
          stock_experience CHARACTER VARYING(255),
          tax_rate CHARACTER VARYING(255),
          terrorist BOOLEAN DEFAULT FALSE,
          time_horizon CHARACTER VARYING(255),
          total_net_worth CHARACTER VARYING(255),
          unemployed_reason CHARACTER VARYING(255),
          unlisted_occupation CHARACTER VARYING(255),
          years_employed CHARACTER VARYING(255),
          user_id BIGINT
          );

    ALTER TABLE public.users_financial_profile OWNER TO postgres;

CREATE SEQUENCE IF NOT EXISTS public.users_financial_profile_seq START
     WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

    ALTER TABLE public.users_financial_profile_seq OWNER TO postgres;

   CREATE TABLE IF NOT EXISTS public.users_personal_profile (
          id BIGINT NOT NULL,
          address_city CHARACTER VARYING(255),
          address_country CHARACTER VARYING(255),
          address_state CHARACTER VARYING(255),
          address_street_one CHARACTER VARYING(255),
          address_street_two CHARACTER VARYING(255),
          address_zip_code CHARACTER VARYING(255),
          city_of_birth CHARACTER VARYING(255),
          country_of_birth CHARACTER VARYING(255),
          country_of_citizenship CHARACTER VARYING(255),
          date_of_birth CHARACTER VARYING(255),
          dependents INTEGER,
          email CHARACTER VARYING(255),
          first_name CHARACTER VARYING(255),
          full_name CHARACTER VARYING(255),
          has_trusted_contact BOOLEAN,
          knowledge_level CHARACTER VARYING(255),
          last_name CHARACTER VARYING(255),
          mailing_address_city CHARACTER VARYING(255),
          mailing_address_country CHARACTER VARYING(255),
          mailing_address_state CHARACTER VARYING(255),
          mailing_address_street_one CHARACTER VARYING(255),
          mailing_address_street_two CHARACTER VARYING(255),
          mailing_address_zip_code CHARACTER VARYING(255),
          marital_status CHARACTER VARYING(255),
          other_name CHARACTER VARYING(255),
          phone_number CHARACTER VARYING(255),
          same_mailing_address BOOLEAN,
          sex CHARACTER VARYING(255),
          tc_address_street_one CHARACTER VARYING(255),
          tc_address_street_two CHARACTER VARYING(255),
          tc_agreement_one BOOLEAN,
          tc_agreement_two BOOLEAN,
          tc_city_name CHARACTER VARYING(255),
          tc_country CHARACTER VARYING(255),
          tc_date_of_birth CHARACTER VARYING(255),
          tc_email CHARACTER VARYING(255),
          tc_first_name CHARACTER VARYING(255),
          tc_last_name CHARACTER VARYING(255),
          tc_middle_name CHARACTER VARYING(255),
          tc_phone_number CHARACTER VARYING(255),
          tc_relation CHARACTER VARYING(255),
          tc_state CHARACTER VARYING(255),
          tc_zip_code CHARACTER VARYING(255),
          trading_preference_other CHARACTER VARYING(255),
          us_tax_id CHARACTER VARYING(255),
          years_of_experience CHARACTER VARYING(255),
          user_id BIGINT
          );

    ALTER TABLE public.users_personal_profile OWNER TO postgres;

CREATE SEQUENCE IF NOT EXISTS public.users_personal_profile_seq START
     WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

    ALTER TABLE public.users_personal_profile_seq OWNER TO postgres;

   CREATE TABLE IF NOT EXISTS public.users_product_requests (
          id SERIAL PRIMARY KEY,
          affiliate_group CHARACTER VARYING(255),
          client_id CHARACTER VARYING(255),
          leverage_type CHARACTER VARYING(255),
          product_platform CHARACTER VARYING(255),
          product_type CHARACTER VARYING(255),
          resend_count INTEGER,
          review_status CHARACTER VARYING(255),
          trader_id CHARACTER VARYING(255),
          user_id BIGINT,
          asset_class CHARACTER VARYING(255),
          account_type CHARACTER VARYING(255),
          fdid CHARACTER VARYING(255),
          risk_setting CHARACTER VARYING(255),
          cat_affiliate_flag CHARACTER VARYING(255),
          cat_holder_type CHARACTER VARYING(255),
          created_at TIMESTAMP WITHOUT TIME zone,
          updated_at TIMESTAMP WITHOUT TIME zone
          );

    ALTER TABLE public.users_product_requests OWNER TO postgres;

--
-- TOC entry 277 (class 1259 OID 323327)
-- Name: users_product_requests_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--
CREATE SEQUENCE IF NOT EXISTS public.users_product_requests_seq START
     WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

    ALTER TABLE public.users_product_requests_seq OWNER TO postgres;

   CREATE TABLE IF NOT EXISTS public.users_professional_trader_status (
          id BIGINT NOT NULL,
          created_at TIMESTAMP WITHOUT TIME zone DEFAULT CURRENT_TIMESTAMP,
          updated_at TIMESTAMP WITHOUT TIME zone DEFAULT CURRENT_TIMESTAMP,
          crd_number CHARACTER VARYING(255),
          firm_address CHARACTER VARYING(255),
          firm_email_address CHARACTER VARYING(255),
          firm_name CHARACTER VARYING(255),
          firm_phone_number CHARACTER VARYING(255),
          firm_type CHARACTER VARYING(255),
          issuing_organization CHARACTER VARYING(255),
          name CHARACTER VARYING(255),
          role_title_position CHARACTER VARYING(255),
          what_makes CHARACTER VARYING(255),
          account_classification CHARACTER VARYING(255),
          promo_code CHARACTER VARYING(255),
          referral_source CHARACTER VARYING(255),
          referral_source_other CHARACTER VARYING(255),
          asset_class CHARACTER VARYING(255),
          platform_selection CHARACTER VARYING(255),
          user_id BIGINT
          );

    ALTER TABLE public.users_professional_trader_status OWNER TO postgres;

--
-- TOC entry 293 (class 1259 OID 323528)
-- Name: users_professional_trader_status_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--
CREATE SEQUENCE IF NOT EXISTS public.users_professional_trader_status_seq START
     WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

    ALTER TABLE public.users_professional_trader_status_seq OWNER TO postgres;

   CREATE TABLE IF NOT EXISTS public.users_risk_assignments (
          id SERIAL PRIMARY KEY,
          created_at TIMESTAMP WITHOUT TIME zone,
          max_score DOUBLE PRECISION,
          risk_group CHARACTER VARYING(10),
          risk_profile CHARACTER VARYING(10),
          score DOUBLE PRECISION,
          total_score DOUBLE PRECISION,
          updated_at TIMESTAMP WITHOUT TIME zone,
          user_id BIGINT
          );

    ALTER TABLE public.users_risk_assignments OWNER TO postgres;

--
-- TOC entry 284 (class 1259 OID 323459)
-- Name: users_risk_assignments_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--
CREATE SEQUENCE IF NOT EXISTS public.users_risk_assignments_seq START
     WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

    ALTER TABLE public.users_risk_assignments_seq OWNER TO postgres;

   CREATE TABLE IF NOT EXISTS public.users_roles (user_id BIGINT NOT NULL, role_id CHARACTER VARYING(255) NOT NULL);

    ALTER TABLE public.users_roles OWNER TO postgres;

--
-- TOC entry 278 (class 1259 OID 323329)
-- Name: users_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--
CREATE SEQUENCE IF NOT EXISTS public.users_seq START
     WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

    ALTER TABLE public.users_seq OWNER TO postgres;

   CREATE TABLE IF NOT EXISTS public.roles (id CHARACTER VARYING(255) NOT NULL, description CHARACTER VARYING(255));

    ALTER TABLE public.roles OWNER TO postgres;

    ALTER TABLE ONLY public.roles ADD CONSTRAINT roles_pkey PRIMARY KEY (id);

   CREATE TABLE IF NOT EXISTS public.users_permissions (user_id BIGINT NOT NULL, permission_id CHARACTER VARYING(255) NOT NULL);

    ALTER TABLE public.users_permissions OWNER TO postgres;

    ALTER TABLE ONLY public.users_permissions ADD CONSTRAINT users_permissions_pkey PRIMARY KEY (user_id, permission_id);

   CREATE TABLE IF NOT EXISTS public.permissions (id CHARACTER VARYING(255) NOT NULL, description CHARACTER VARYING(255));

    ALTER TABLE public.permissions OWNER TO postgres;

   CREATE TABLE IF NOT EXISTS public.account_balances (
          id SERIAL PRIMARY KEY,
          region_id VARCHAR(32),
          system_id VARCHAR(32),
          system_date DATE,
          account VARCHAR(32),
          sub_acct_no VARCHAR(32),
          acct_group_code VARCHAR(32),
          currency VARCHAR(16),
          trade_cash_bal NUMERIC(20, 2),
          settle_cash_bal NUMERIC(20, 2),
          trade_mkt_value NUMERIC(20, 2),
          settle_mkt_value NUMERIC(20, 2),
          sma_balance NUMERIC(20, 2),
          dtbp NUMERIC(20, 2),
          equity NUMERIC(20, 2),
          short_mkt_value NUMERIC(20, 2),
          long_mkt_value NUMERIC(20, 2),
          unrealized_pnl NUMERIC(20, 2),
          house_margin NUMERIC(20, 2),
          exch_margin NUMERIC(20, 2),
          option_margin NUMERIC(20, 2),
          sod_dtbp NUMERIC(20, 2),
          funds NUMERIC(20, 2),
          sod_opt_bp NUMERIC(20, 2),
          accrued_int NUMERIC(20, 2),
          accrued_div NUMERIC(20, 2),
          file_date DATE,
          insert_time DATE,
          corr_code VARCHAR(32),
          office_code VARCHAR(32),
          acct_no VARCHAR(32),
          acct_type VARCHAR(32)
          );

    ALTER TABLE public.account_balances OWNER TO postgres;

CREATE SEQUENCE IF NOT EXISTS public.account_balances_seq START
     WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

    ALTER TABLE public.account_balances_seq OWNER TO postgres;

   INSERT INTO public.account_balances (
          region_id,
          system_id,
          system_date,
          account,
          currency,
          trade_cash_bal,
          settle_cash_bal,
          short_mkt_value,
          long_mkt_value,
          unrealized_pnl,
          file_date,
          insert_time
          )
   VALUES (
          'UK', -- region_id
          'PROP', -- system_id
          '2023-10-21', -- system_date
          (
             SELECT account
               FROM public.accounts
              WHERE user_id=2
                AND product_id=1
          ), -- account
          'GBP', -- currency
          1000.50, -- trade_cash_bal
          3010.50, -- settle_cash_bal
          10.50, -- short_mkt_value
          1.50, -- long_mkt_value
          0.50, -- unrealized_pnl
          '2023-10-21', -- file_date
          '2023-10-21' -- insert_time
          );

   INSERT INTO public.account_balances (
          region_id,
          system_id,
          system_date,
          account,
          currency,
          trade_cash_bal,
          settle_cash_bal,
          short_mkt_value,
          long_mkt_value,
          unrealized_pnl,
          file_date,
          insert_time
          )
   VALUES (
          'UK', -- region_id
          'PROP', -- system_id
          '2023-10-24', -- system_date
          (
             SELECT account
               FROM public.accounts
              WHERE user_id=2
                AND product_id=2
          ), -- account
          'GBP', -- currency
          2000.50, -- trade_cash_bal
          5050.50, -- settle_cash_bal
          18.50, -- short_mkt_value
          11.50, -- long_mkt_value
          10.50, -- unrealized_pnl
          '2023-10-24', -- file_date
          '2023-10-24' -- insert_time
          );