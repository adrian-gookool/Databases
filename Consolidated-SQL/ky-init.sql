--- Resource Documents Migrations
INSERT INTO
    public.resource_documents (
        name,
        description,
        document_type,
        document_url
    )
VALUES (
        'User Agreement & Privacy Policy Bundle',
        'The URL for the User Agreement & Privacy Policy Bundle PDF Document',
        'GENERAL',
        'https://www.cmelitegroup.co.uk/wp-content/uploads/2023/07/retail_client_agreement.pdf'
    );

--- Platform Products Migrations
-- CAP it ALL Platform
WITH
    capitall_platform AS (
        INSERT INTO
            public.platforms (
                created_at,
                updated_at,
                features,
                description,
                detail_url,
                is_popular,
                cop_img_url,
                dashboard_img_url,
                display,
                name
            )
        VALUES (
                NOW(),
                NOW(),
                '<ul>
                <li>Trade your way</li>
                <li>Accessible</li>
                <li>Free Platform</li>
            </ul>',
                'Our proprietary trading platform CAP it ALL is designed by traders for traders. 
                Clean, customizable and just what any trader ordered. And the best bit? It comes with a free option.',
                'https://www.cmelitegroup.com/platform/cap-it-all/',
                TRUE,
                '/images/icons/capitall.svg',
                'assets/img/logos/capitall.png',
                TRUE,
                'CAP it ALL'
            )
        RETURNING
            id
    )
INSERT INTO
    public.platform_details (
        created_at,
        updated_at,
        product_type,
        product_account,
        leverage_type,
        product_title,
        platform_option_id
    )
VALUES (
        NOW(),
        NOW(),
        'Standard Trading Account',
        'CAP it ALL Standard Account',
        'Non-Leverage',
        'Powered by CAP it ALL',
        (
            SELECT id
            FROM capitall_platform
        )
    );
-- Sterling Platform
WITH
    sterling_platform AS (
        INSERT INTO
            public.platforms (
                created_at,
                updated_at,
                features,
                description,
                detail_url,
                is_popular,
                cop_img_url,
                dashboard_img_url,
                display,
                name
            )
        VALUES (
                NOW(),
                NOW(),
                '<ul>
                <li>Hot key trading</li>
                <li>Advanced charting, watch lists and scanners</li>
                <li>High performance, real-time</li>
            </ul>',
                'This platform is designed for active traders and professionals who work with the rapidly moving electronic markets.
                    The powerful performance and configurability give traders complete control over their trading.',
                'https://www.cmelitegroup.com/platform/sterling-trader-pro/',
                FALSE,
                '/images/icons/sterling.svg',
                'assets/img/logos/sterling.svg',
                TRUE,
                'Sterling'
            )
        RETURNING
            id
    )
INSERT INTO
    public.platform_details (
        created_at,
        updated_at,
        product_type,
        product_account,
        leverage_type,
        product_title,
        platform_option_id
    )
VALUES (
        NOW(),
        NOW(),
        'Active Trading Account',
        'Sterling Standard Account',
        'Leverage',
        'Trader Elite Pro - Powered by Sterling',
        (
            SELECT id
            FROM sterling_platform
        )
    );
-- DAS Platform
WITH
    das_platform AS (
        INSERT INTO
            public.platforms (
                created_at,
                updated_at,
                features,
                description,
                detail_url,
                is_popular,
                cop_img_url,
                dashboard_img_url,
                display,
                name
            )
        VALUES (
                NOW(),
                NOW(),
                '<ul>
                <li>Hot Key Trading</li>
                <li>Advanced charting, watch lists and scanners</li>
                <li>Free mobile and web access</li>
            </ul>',
                'A powerful trading platform for active traders. Take advantage of real-time market data, advanced features, direct access order routing and more.',
                'https://www.cmelitegroup.com/platform/das-trader-pro/',
                FALSE,
                '/images/icons/das.png',
                'assets/img/logos/das.png',
                TRUE,
                'DAS'
            )
        RETURNING
            id
    )
INSERT INTO
    public.platform_details (
        created_at,
        updated_at,
        product_type,
        product_account,
        leverage_type,
        product_title,
        platform_option_id
    )
VALUES (
        NOW(),
        NOW(),
        'Active Trading Account',
        'DAS Standard Account',
        'Leverage',
        'Trader Elite Pro - Powered by DAS',
        (
            SELECT id
            FROM das_platform
        )
    );

--- Country Code Migrations
INSERT INTO
    public.country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'AF',
        'Afghanistan'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'AL',
        'Albania'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'DZ',
        'Algeria'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'AD',
        'Andorra'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'AO',
        'Angola'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'AI',
        'Anguilla'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'AQ',
        'Antarctica'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'AG',
        'Antigua and Barbuda'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'AR',
        'Argentina'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'AM',
        'Armenia'
    );

INSERT INTO
    public.country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'AW',
        'Aruba'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'AZ',
        'Azerbaijan'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'BH',
        'Bahrain'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'BD',
        'Bangladesh'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'BB',
        'Barbados'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'BY',
        'Belarus'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'BZ',
        'Belize'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'BJ',
        'Benin'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'BM',
        'Bermuda'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'BT',
        'Bhutan'
    );

INSERT INTO
    public.country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'BO',
        'Bolivia (Plurinational State of)'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'BQ',
        'Bonaire, Sint Eustatius and Saba'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'BA',
        'Bosnia and Herzegovina'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'BW',
        'Botswana'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'BV',
        'Bouvet Island'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'BR',
        'Brazil'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'IO',
        'British Indian Ocean Territory'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'BN',
        'Brunei Darussalam'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'BF',
        'Burkina Faso'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'BI',
        'Burundi'
    );

INSERT INTO
    public.country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'CV',
        'Cabo Verde'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'KH',
        'Cambodia'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'CM',
        'Cameroon'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'CA',
        'Canada'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'KY',
        'Cayman Islands'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'CF',
        'Central African Republic'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'TD',
        'Chad'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'CL',
        'Chile'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'CN',
        'China'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'CX',
        'Christmas Island'
    );

INSERT INTO
    public.country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'CC',
        'Cocos (Keeling) Islands'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'CO',
        'Colombia'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'KM',
        'Comoros'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'CD',
        'Congo (the Democratic Republic of the)'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'CG',
        'Congo'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'CK',
        'Cook Islands'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'CR',
        'Costa Rica'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'CU',
        'Cuba'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'CW',
        'Curaçao'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'CI',
        'Côte d''Ivoire'
    );

INSERT INTO
    public.country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'DJ',
        'Djibouti'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'DM',
        'Dominica'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'DO',
        'Dominican Republic'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'EC',
        'Ecuador'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'EG',
        'Egypt'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'SV',
        'El Salvador'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'GQ',
        'Equatorial Guinea'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'ER',
        'Eritrea'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'SZ',
        'Eswatini'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'ET',
        'Ethiopia'
    );

INSERT INTO
    public.country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'FK',
        'Falkland Islands [Malvinas]'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'FO',
        'Faroe Islands'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'FJ',
        'Fiji'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'GF',
        'French Guiana'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'PF',
        'French Polynesia'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'TF',
        'French Southern Territories'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'GA',
        'Gabon'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'GM',
        'Gambia'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'GE',
        'Georgia'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'GH',
        'Ghana'
    );

INSERT INTO
    public.country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'GI',
        'Gibraltar'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'GL',
        'Greenland'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'GD',
        'Grenada'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'GP',
        'Guadeloupe'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'GT',
        'Guatemala'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'GG',
        'Guernsey'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'GN',
        'Guinea'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'GW',
        'Guinea-Bissau'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'GY',
        'Guyana'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'HT',
        'Haiti'
    );

INSERT INTO
    public.country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'HM',
        'Heard Island and McDonald Islands'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'VA',
        'Holy See'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'HN',
        'Honduras'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'HK',
        'Hong Kong'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'IS',
        'Iceland'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'IR',
        'Iran (Islamic Republic of)'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'IQ',
        'Iraq'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'IM',
        'Isle of Man'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'IL',
        'Israel'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'JM',
        'Jamaica'
    );

INSERT INTO
    public.country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'JP',
        'Japan'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'JE',
        'Jersey'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'JO',
        'Jordan'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'KZ',
        'Kazakhstan'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-09-23 19:28:57.369',
        TRUE,
        'ID',
        'Indonesia'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'KE',
        'Kenya'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'KI',
        'Kiribati'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'KP',
        'Korea (the Democratic People''s Republic of)'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'KW',
        'Kuwait'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'KG',
        'Kyrgyzstan'
    );

INSERT INTO
    public.country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'LA',
        'Lao People''s Democratic Republic'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'LB',
        'Lebanon'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'LS',
        'Lesotho'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'LR',
        'Liberia'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'LY',
        'Libya'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'LI',
        'Liechtenstein'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'MO',
        'Macao'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'MG',
        'Madagascar'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'MW',
        'Malawi'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'MV',
        'Maldives'
    );

INSERT INTO
    public.country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'ML',
        'Mali'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'MH',
        'Marshall Islands'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'MQ',
        'Martinique'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'MR',
        'Mauritania'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'MU',
        'Mauritius'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'YT',
        'Mayotte'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'FM',
        'Micronesia (Federated States of)'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'MD',
        'Moldova (the Republic of)'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'MC',
        'Monaco'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'MN',
        'Mongolia'
    );

INSERT INTO
    public.country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'ME',
        'Montenegro'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'MS',
        'Montserrat'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'MA',
        'Morocco'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'MZ',
        'Mozambique'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'MM',
        'Myanmar'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'NA',
        'Namibia'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'NR',
        'Nauru'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'NP',
        'Nepal'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'NC',
        'New Caledonia'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'NZ',
        'New Zealand'
    );

INSERT INTO
    public.country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'NI',
        'Nicaragua'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'NE',
        'Niger'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'NG',
        'Nigeria'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'NU',
        'Niue'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'NF',
        'Norfolk Island'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'MP',
        'Northern Mariana Islands'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'NO',
        'Norway'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'OM',
        'Oman'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'PK',
        'Pakistan'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'PW',
        'Palau'
    );

INSERT INTO
    public.country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'PS',
        'Palestine, State of'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'PA',
        'Panama'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'PG',
        'Papua New Guinea'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'PY',
        'Paraguay'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'PE',
        'Peru'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'PH',
        'Philippines'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'PN',
        'Pitcairn'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'QA',
        'Qatar'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'MK',
        'Republic of North Macedonia'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'RU',
        'Russian Federation'
    );

INSERT INTO
    public.country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'RW',
        'Rwanda'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'RE',
        'Réunion'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'BL',
        'Saint Barthélemy'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'SH',
        'Saint Helena, Ascension and Tristan da Cunha'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'KN',
        'Saint Kitts and Nevis'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'LC',
        'Saint Lucia'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'MF',
        'Saint Martin (French part)'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'PM',
        'Saint Pierre and Miquelon'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'VC',
        'Saint Vincent and the Grenadines'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'WS',
        'Samoa'
    );

INSERT INTO
    public.country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'SM',
        'San Marino'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'ST',
        'Sao Tome and Principe'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'SA',
        'Saudi Arabia'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'SN',
        'Senegal'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'RS',
        'Serbia'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'SC',
        'Seychelles'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'SL',
        'Sierra Leone'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'SX',
        'Sint Maarten (Dutch part)'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'SB',
        'Solomon Islands'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'SO',
        'Somalia'
    );

INSERT INTO
    public.country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'ZA',
        'South Africa'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'GS',
        'South Georgia and the South Sandwich Islands'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'SS',
        'South Sudan'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'LK',
        'Sri Lanka'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'SD',
        'Sudan'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'SR',
        'Suriname'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'SJ',
        'Svalbard and Jan Mayen'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'CH',
        'Switzerland'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'SY',
        'Syrian Arab Republic'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'TJ',
        'Tajikistan'
    );

INSERT INTO
    public.country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'TZ',
        'Tanzania, United Republic of'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'TL',
        'Timor-Leste'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'TG',
        'Togo'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'TK',
        'Tokelau'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'TO',
        'Tonga'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'TT',
        'Trinidad and Tobago'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'TN',
        'Tunisia'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'TR',
        'Turkey'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-09-23 19:29:11.933',
        TRUE,
        'MY',
        'Malaysia'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-09-23 19:29:44.024',
        TRUE,
        'TH',
        'Thailand'
    );

INSERT INTO
    public.country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        '2021-06-01 05:21:27.036347',
        '2021-09-23 19:28:26.503',
        TRUE,
        'TW',
        'Taiwan (Province of China)'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'TM',
        'Turkmenistan'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'TC',
        'Turks and Caicos Islands'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'TV',
        'Tuvalu'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'UG',
        'Uganda'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'UA',
        'Ukraine'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'UY',
        'Uruguay'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'UZ',
        'Uzbekistan'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'VU',
        'Vanuatu'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'VE',
        'Venezuela (Bolivarian Republic of)'
    );

INSERT INTO
    public.country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'VG',
        'Virgin Islands (British)'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'WF',
        'Wallis and Futuna'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'EH',
        'Western Sahara'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'YE',
        'Yemen'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'ZM',
        'Zambia'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'ZW',
        'Zimbabwe'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-06-01 05:21:27.036347',
        TRUE,
        'AX',
        'Åland Islands'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2021-09-23 19:29:26.703',
        TRUE,
        'VN',
        'Viet Nam'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2022-04-22 17:28:38.502',
        TRUE,
        'AS',
        'American Samoa'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2022-04-22 17:28:41.981',
        TRUE,
        'GU',
        'Guam'
    );

INSERT INTO
    public.country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        '2021-06-01 05:21:27.036347',
        '2022-04-22 17:28:45.226',
        TRUE,
        'PR',
        'Puerto Rico'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2022-04-22 17:28:49.889',
        TRUE,
        'UM',
        'United States Minor Outlying Islands'
    ),
    (
        '2021-06-01 05:21:27.036347',
        '2022-04-22 17:28:53.283',
        TRUE,
        'VI',
        'Virgin Islands (U.S.)'
    );

UPDATE country_codes SET blacklisted = TRUE;

UPDATE public.country_codes
SET
    blacklisted = FALSE
WHERE
    code IN (
        'AF',
        'AG',
        'AI',
        'AL',
        'CA',
        'EG',
        'JM',
        'JP',
        'KH',
        'KN',
        'KY',
        'MH',
        'TC',
        'TT'
    );

UPDATE public.country_codes SET risk = 'medium';

UPDATE public.country_codes
SET
    risk = 'high'
WHERE
    code in (
        'AF',
        'AL',
        'DZ',
        'AD',
        'AO',
        'AZ',
        'BS',
        'BY',
        'BZ',
        'BO',
        'CM',
        'CF',
        'KH',
        'CO',
        'CK',
        'CR',
        'CU',
        'CY',
        'DO',
        'EC',
        'EG',
        'SV',
        'GQ',
        'ER',
        'ET',
        'GD',
        'GT',
        'GN',
        'GW',
        'HT',
        'HN',
        'IN'
    )

UPDATE public.country_codes
SET
    risk = 'medium'
WHERE
    code in (
        'AI',
        'AG',
        'AR',
        'AW',
        'BH',
        'BD',
        'BB',
        'BJ',
        'BM',
        'BA',
        'BR',
        'BI',
        'KY',
        'TD',
        'CN',
        'KM',
        'CG',
        'CD',
        'CW',
        'CI',
        'DM',
        'SZ',
        'GI',
        'GG',
        'VA',
        'HK'
    )

UPDATE public.country_codes
SET
    risk = 'low'
WHERE
    code in (
        'AS',
        'AL',
        'AQ',
        'AM',
        'AU',
        'AT',
        'BE',
        'BT',
        'BQ',
        'BW',
        'BV',
        'IO',
        'BN',
        'BG',
        'BF',
        'CV',
        'CA',
        'CL',
        'CX',
        'CC',
        'HR',
        'CZ',
        'DK',
        'DJ',
        'EE',
        'FK',
        'FO',
        'FJ',
        'FI',
        'FR',
        'GF',
        'PF',
        'TF',
        'GA',
        'GM',
        'GE',
        'DE',
        'GH',
        'GR',
        'GL',
        'GP',
        'GU',
        'GY',
        'HM',
        'IS'
    )