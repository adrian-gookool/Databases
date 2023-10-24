   CREATE TABLE IF NOT EXISTS public.wire_transfer (
          id SERIAL PRIMARY KEY,
          created_at TIMESTAMP WITHOUT TIME ZONE,
          updated_at TIMESTAMP WITHOUT TIME ZONE,
          amount NUMERIC(20, 2),
          STATUS VARCHAR(255),
          transfer_type VARCHAR(255),
          comments VARCHAR(255),
          user_id INTEGER REFERENCES users (id),
          account_id VARCHAR REFERENCES accounts (id),
          funding_profile_id INTEGER REFERENCES funding_profile (id)
          );

-- Withdrawals
   INSERT INTO public.wire_transfer (
          created_at,
          amount,
          STATUS,
          transfer_type,
          comments,
          user_id,
          account_id,
          funding_profile_id
          )
   VALUES (
          NOW (),
          2000.00,
          'PENDING',
          'WITHDRAWAL',
          'Test Comment 1',
          (
             SELECT id
               FROM users
              WHERE email='amg.raspberrypi@gmail.com'
          ),
          (
             SELECT id
               FROM accounts
              WHERE user_id=(
                       SELECT id
                         FROM users
                        WHERE email='amg.raspberrypi@gmail.com'
                          AND account='CME-003-CAPUK876-M'
                    )
          ),
          (
             SELECT id
               FROM funding_profile
              WHERE user_id=(
                       SELECT id
                         FROM users
                        WHERE email='amg.raspberrypi@gmail.com'
                          AND nickname='England Saving'
                    )
          )
          );

   INSERT INTO public.wire_transfer (
          created_at,
          amount,
          STATUS,
          transfer_type,
          comments,
          user_id,
          account_id,
          funding_profile_id
          )
   VALUES (
          NOW (),
          2000.00,
          'PENDING',
          'WITHDRAWAL',
          'Test Comment 1',
          (
             SELECT id
               FROM users
              WHERE email='amg.raspberrypi@gmail.com'
          ),
          (
             SELECT id
               FROM accounts
              WHERE user_id=(
                       SELECT id
                         FROM users
                        WHERE email='amg.raspberrypi@gmail.com'
                          AND account='CME-003-CAPUK880-M'
                    )
          ),
          (
             SELECT id
               FROM funding_profile
              WHERE user_id=(
                       SELECT id
                         FROM users
                        WHERE email='amg.raspberrypi@gmail.com'
                          AND nickname='England Chequing'
                    )
          )
          );

-- Deposits
   INSERT INTO public.wire_transfer (
          created_at,
          amount,
          STATUS,
          transfer_type,
          comments,
          user_id,
          account_id,
          funding_profile_id
          )
   VALUES (
          NOW (),
          1000.00,
          'PENDING',
          'DEPOSIT',
          'Test Comment 1',
          (
             SELECT id
               FROM users
              WHERE email='amg.raspberrypi@gmail.com'
          ),
          (
             SELECT id
               FROM accounts
              WHERE user_id=(
                       SELECT id
                         FROM users
                        WHERE email='amg.raspberrypi@gmail.com'
                          AND account='CME-003-CAPUK880-M'
                    )
          ),
          (
             SELECT id
               FROM funding_profile
              WHERE user_id=(
                       SELECT id
                         FROM users
                        WHERE email='amg.raspberrypi@gmail.com'
                          AND nickname='England Chequing'
                    )
          )
          );

   SELECT *
     FROM public.wire_transfer;