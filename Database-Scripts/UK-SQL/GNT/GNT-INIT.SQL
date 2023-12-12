-- Alter users table to include is_GNT
    ALTER TABLE users ADD is_GNT BOOLEAN NOT NULL DEFAULT FALSE;

-- Create an application for the GNT user
   INSERT INTO applications (
          created_at,
          updated_at,
          app_progress,
          app_status,
          app_version,
          current_stage,
          document_check,
          document_count,
          identity_check,
          m_check,
          last_status_change,
          last_submitted_on,
          re_submittable,
          reminder_count,
          submit_count,
          user_login_id
          )
   VALUES (
          NOW (),
          NOW (),
          'done',
          'PENDING',
          2,
          10,
          FALSE,
          0,
          FALSE,
          FALSE,
          NOW (),
          NOW (),
          FALSE,
          0,
          0,
          (
             SELECT id
               FROM logins
              WHERE id=39
          )
          );

   INSERT INTO application_product_requests (
          created_at,
          updated_at,
          affiliate_group,
          client_id,
          leverage_type,
          product_platform,
          product_type,
          review_status,
          trader_id,
          application_id
          )
   VALUES (
          NOW (),
          NOW (),
          'GNT',
          'GNTUK001',
          'Unleverage',
          'GNT PRO',
          'Standard Trading Account',
          'PENDING',
          'AdrianGNT',
          (
             SELECT id
               FROM applications
              WHERE user_login_id=39
          )
          );

-- Create a user for the GNT user
   INSERT INTO users (created_at, cop_id, email, full_name, status, updated_at, mfa, l_id, is_gnt)
   VALUES (
          NOW (),
          (
             SELECT id
               FROM applications
              WHERE user_login_id=39
          ),
          'aggookool@gmail.com',
          'Adrian Gookool (GNT)',
          'ACTIVE',
          NOW (),
          FALSE,
          (
             SELECT id
               FROM logins
              WHERE email='aggookool@gmail.com'
          ),
          TRUE
          );