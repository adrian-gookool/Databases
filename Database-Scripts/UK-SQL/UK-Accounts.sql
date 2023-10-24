   SELECT *
     FROM public.accounts;

   SELECT *
     FROM public.application_product_requests;

   DELETE FROM public.accounts
    WHERE id='465302';

-- 
-- Insert data into the public.accounts table
   INSERT INTO public.accounts (
          id,
          account,
          CORR,
          created_at,
          updated_at,
          name,
          number,
          office,
          TYPE,
          STATUS,
          user_id,
          product_id
          )
   VALUES (
          '465302', -- ID value
          'CME-003-CAPUK876-M', -- Account number
          'CME', -- CORR value
          NOW (), -- Current timestamp for created_at
          NOW (), -- Current timestamp for updated_at
          'Adrian Gookool', -- Name value
          'CAPUK876', -- Number value
          '003', -- Office value
          'M', -- Type value
          'ACTIVE', -- Status value
          (
             SELECT id
               FROM public.users
              WHERE email='amg.raspberrypi@gmail.com' -- Fetching user_id using the provided email
          ),
          (
             SELECT id
               FROM public.application_product_requests
              WHERE email='amg.raspberrypi@gmail.com' -- Fetching product_id using the provided email
                AND product_platform='CAP it ALL'
          )
          );

-- Insert data into the public.accounts table
   INSERT INTO public.accounts (
          id,
          account,
          CORR,
          created_at,
          updated_at,
          name,
          number,
          office,
          TYPE,
          STATUS,
          user_id,
          product_id
          )
   VALUES (
          '465303', -- ID value
          'CME-003-CAPUK879-M', -- Account number
          'CME', -- CORR value
          NOW (), -- Current timestamp for created_at
          NOW (), -- Current timestamp for updated_at
          'Adrian Gookool', -- Name value
          'CAPUK879', -- Number value
          '003', -- Office value
          'M', -- Type value
          'ACTIVE', -- Status value
          (
             SELECT id
               FROM public.users
              WHERE email='amg.raspberrypi@gmail.com' -- Fetching user_id using the provided email
          ),
          (
             SELECT id
               FROM public.application_product_requests
              WHERE email='amg.raspberrypi@gmail.com' -- Fetching product_id using the provided email
                AND product_platform='DAS'
          )
          );

-- Insert data into the public.accounts table
   INSERT INTO public.accounts (
          id,
          account,
          CORR,
          created_at,
          updated_at,
          name,
          number,
          office,
          TYPE,
          STATUS,
          user_id,
          product_id
          )
   VALUES (
          '465304', -- ID value
          'CME-003-CAPUK880-M', -- Account number
          'CME', -- CORR value
          NOW (), -- Current timestamp for created_at
          NOW (), -- Current timestamp for updated_at
          'Adrian Gookool', -- Name value
          'CAPUK880', -- Number value
          '003', -- Office value
          'M', -- Type value
          'ACTIVE', -- Status value
          (
             SELECT id
               FROM public.users
              WHERE email='amg.raspberrypi@gmail.com' -- Fetching user_id using the provided email
          ),
          (
             SELECT id
               FROM public.application_product_requests
              WHERE email='amg.raspberrypi@gmail.com' -- Fetching product_id using the provided email
                AND product_platform='MetaTrader 5'
          )
          );