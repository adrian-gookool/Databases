-- Get all platform product options along with its details
SELECT p.*,
    pd.product_title,
    pd.product_account,
    pd.product_type
FROM platforms AS p
    JOIN platform_details AS pd ON p.id = pd.platform_option_id;

-- Get all application product request for a user based on the login_id
SELECT apr.*
FROM application_product_requests apr
    JOIN applications app ON apr.application_id = app.id
WHERE app.user_login_id = 2;

-- Get all application product request for a user based on the email
SELECT apr.*
FROM application_product_requests apr
    JOIN applications app ON apr.application_id = app.id
    JOIN users u ON app.user_login_id = u.id
WHERE u.email = 'amg.raspberrypi@gmail.com';

-- Insert a new application product request via the user login_id
INSERT INTO application_product_requests (
        application_id,
        product_type,
        product_platform,
        review_status,
        leverage_type,
        email,
        created_at,
        updated_at
    )
VALUES (
        (
            SELECT id
            FROM applications
            WHERE user_login_id = 2
        ),
        'FX Trading Account',
        'MetaTrader 5',
        'APPROVED',
        NULL,
        (
            SELECT email
            FROM users
            WHERE id = 2
        ),
        NOW(),
        NOW()
    );

-- Insert a new application product request via the user email
INSERT INTO application_product_requests (
        application_id,
        product_type,
        product_platform,
        review_status,
        leverage_type,
        email,
        created_at,
        updated_at
    )
VALUES (
        (
            SELECT id
            FROM applications
            WHERE user_login_id = (
                    SELECT id
                    FROM users
                    WHERE email = 'amg.raspberrypi@gmail.com'
                )
        ),
        'FX Trading Account',
        'MetaTrader 5',
        'APPROVED',
        NULL,
        'amg.raspberrypi@gmail.com',
        NOW(),
        NOW()
    );

-- Update an application product request via the user login_id and product_platform
UPDATE application_product_requests
SET (leverage_type, review_status) = ('Leverage', 'PENDING')
WHERE application_id = (
        SELECT id
        FROM applications
        WHERE user_login_id = 2
    )
    AND product_platform = 'CAP it ALL';

-- Update an application product request via the user email and product_platform
UPDATE application_product_requests
SET (leverage_type, review_status) = ('Leverage', 'PENDING')
WHERE application_id = (
        SELECT id
        FROM applications
        WHERE user_login_id = (
                SELECT id
                FROM users
                WHERE email = 'amg.raspberrypi@gmail.com'
            )
    )
    AND product_platform = 'CAP it ALL';

-- Get all platform switches for a user based on the email
SELECT *
FROM platform_switches
WHERE email = 'amg.raspberrypi@gmail.com';

-- Get platform Switch by email, fromPlatform and toPlatform
SELECT *
FROM platform_switches
WHERE email = 'amg.raspberrypi@gmail.com'
    AND from_platform = 'Sterling'
    AND to_platform = 'DAS';

-- Insert a new platform switch via the user email 
INSERT INTO platform_switches (
        from_platform,
        to_platform,
        email,
        STATUS,
        created_at,
        updated_at
    )
VALUES (
        'Sterling',
        'DAS',
        'amg.raspberrypi@gmail.com',
        'PENDING',
        NOW(),
        NOW()
    );

-- Add a new application
SELECT *
FROM application_product_requests;