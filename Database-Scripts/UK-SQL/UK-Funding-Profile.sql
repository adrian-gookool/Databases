SELECT *
FROM public.funding_profile;

-- Create a function to fetch ID based on user email
CREATE OR REPLACE FUNCTION get_userid_from_email(IN email_input varchar)
RETURNS integer AS $$
DECLARE 
    user_id integer;
BEGIN
    SELECT id INTO user_id FROM logins WHERE email = email_input;
    -- Do something with user_id here, or simply return it
    RETURN user_id;
END $$ LANGUAGE plpgsql;

-- Do something with user_id here, or return it
RETURN user_id;

END $$ LANGUAGE plpgsql;

INSERT INTO public.funding_profile (
        created_at,
        account_number,
        address,
        city,
        country,
        postal_code,
        iban_code,
        sort_code,
        swift_code,
        institution,
        nickname,
        phone_number,
        status,
        user_id,
        full_name,
        user_email
    )
VALUES (
        NOW(),
        '875475247874',
        '192 Fake Street',
        'London',
        'United Kingdom',
        'SW1A 1AA BC5',
        'GB29 NWBK 6016 1331 9268 197 345',
        '123456',
        '654321',
        'Bank of England',
        'England Saving',
        '1234567890',
        'PENDING',
        get_userid_from_email('amg.raspberrypi@gmail.com'),
        'Adrian Gookool',
        'amg.raspberrypi@gmail.com'
    );


INSERT INTO public.funding_profile (
        created_at,
        account_number,
        address,
        city,
        country,
        postal_code,
        iban_code,
        sort_code,
        swift_code,
        institution,
        nickname,
        phone_number,
        status,
        user_id,
        full_name,
        user_email
    )
VALUES (
        NOW(),
        '37382627473',
        '126 Real Street',
        'London',
        'United Kingdom',
        'SW1A 1AA BC5',
        'GH63 FWIU 3981 1331 2856 191 545',
        '123456',
        '654321',
        'Bank of England',
        'England Chequing',
        '1234567890',
        'PENDING',
        get_userid_from_email('amg.raspberrypi@gmail.com'),
        'Adrian Gookool',
        'amg.raspberrypi@gmail.com'
    );