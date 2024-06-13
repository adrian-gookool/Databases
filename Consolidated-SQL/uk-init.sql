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
                'https://www.cmelitegroup.co.uk/platforms/cap-it-all',
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
                'https://www.cmelitegroup.co.uk/platforms/sterling-trader-pro',
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
                'https://www.cmelitegroup.co.uk/platforms/das-trader-pro',
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
-- MT5 Platform
WITH
    mt5_platform AS (
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
                <li>Algorithmic Trading</li>
                <li>Accessible</li>
                <li>Trading Signals</li>
            </ul>',
                'MT5 is a powerhouse among FX trading platforms. It comes with access to an impressive
            marketplace of algorithmic and analytics plugins that can supercharge your trading with the help
            of trading robots and trading signals in a matter of minutes. Discover what it’s like to take
            your Forex trading to the next level.',
                'https://www.cmelitegroup.co.uk/platform/mt5',
                FALSE,
                '/images/icons/metatrader-logo.png',
                'assets/img/logos/metatrader-logo.png',
                TRUE,
                'MetaTrader 5'
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
        'FX Trading Account',
        'MetaTrader 5 FX Account',
        'Leverage',
        'MetaTrader 5',
        (
            SELECT id
            FROM mt5_platform
        )
    );

--- Country Code Migrations
INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'AF',
        'Afghanistan'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'AL',
        'Albania'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'DZ',
        'Algeria'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'AD',
        'Andorra'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'AO',
        'Angola'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'AI',
        'Anguilla'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'AQ',
        'Antarctica'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'AG',
        'Antigua and Barbuda'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'AR',
        'Argentina'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'AM',
        'Armenia'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'AW',
        'Aruba'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'AU',
        'Australia'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'AT',
        'Austria'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'AZ',
        'Azerbaijan'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'BS',
        'Bahamas'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'BH',
        'Bahrain'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'BD',
        'Bangladesh'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'BB',
        'Barbados'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'BY',
        'Belarus'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'BE',
        'Belgium'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'BZ',
        'Belize'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'BJ',
        'Benin'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'BM',
        'Bermuda'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'BT',
        'Bhutan'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'BO',
        'Bolivia (Plurinational State of)'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'BQ',
        'Bonaire, Sint Eustatius and Saba'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'BA',
        'Bosnia and Herzegovina'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'BW',
        'Botswana'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'BV',
        'Bouvet Island'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'BR',
        'Brazil'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'IO',
        'British Indian Ocean Territory'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'BN',
        'Brunei Darussalam'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'BF',
        'Burkina Faso'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'BI',
        'Burundi'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'CV',
        'Cabo Verde'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'KH',
        'Cambodia'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'CM',
        'Cameroon'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'CA',
        'Canada'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'KY',
        'Cayman Islands'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'CF',
        'Central African Republic'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'TD',
        'Chad'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'CL',
        'Chile'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'CN',
        'China'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'CX',
        'Christmas Island'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'CC',
        'Cocos (Keeling) Islands'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'CO',
        'Colombia'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'KM',
        'Comoros'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'CD',
        'Congo (the Democratic Republic of the)'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'CG',
        'Congo'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'CK',
        'Cook Islands'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'CR',
        'Costa Rica'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'HR',
        'Croatia'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'CU',
        'Cuba'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'CW',
        'Curaçao'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'CY',
        'Cyprus'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'CZ',
        'Czechia'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'CI',
        'Côte d''Ivoire'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'DK',
        'Denmark'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'DJ',
        'Djibouti'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'DM',
        'Dominica'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'DO',
        'Dominican Republic'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'EC',
        'Ecuador'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'EG',
        'Egypt'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'SV',
        'El Salvador'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'GQ',
        'Equatorial Guinea'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'ER',
        'Eritrea'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'EE',
        'Estonia'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'SZ',
        'Eswatini'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'ET',
        'Ethiopia'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'FK',
        'Falkland Islands [Malvinas]'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'FO',
        'Faroe Islands'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'FJ',
        'Fiji'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'FI',
        'Finland'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'FR',
        'France'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'GF',
        'French Guiana'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'PF',
        'French Polynesia'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'TF',
        'French Southern Territories'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'GA',
        'Gabon'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'GM',
        'Gambia'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'GE',
        'Georgia'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'DE',
        'Germany'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'GH',
        'Ghana'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'GI',
        'Gibraltar'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'GR',
        'Greece'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'GL',
        'Greenland'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'GD',
        'Grenada'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'GP',
        'Guadeloupe'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'GT',
        'Guatemala'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'GG',
        'Guernsey'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'GN',
        'Guinea'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'GW',
        'Guinea-Bissau'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'GY',
        'Guyana'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'HT',
        'Haiti'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'HM',
        'Heard Island and McDonald Islands'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'VA',
        'Holy See'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'HN',
        'Honduras'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'HK',
        'Hong Kong'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'HU',
        'Hungary'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'IS',
        'Iceland'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'IN',
        'India'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'IR',
        'Iran (Islamic Republic of)'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'IQ',
        'Iraq'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'IE',
        'Ireland'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'IM',
        'Isle of Man'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'IL',
        'Israel'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'IT',
        'Italy'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'JM',
        'Jamaica'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'JP',
        'Japan'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'JE',
        'Jersey'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'JO',
        'Jordan'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'KZ',
        'Kazakhstan'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'BG',
        'Bulgaria'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'ID',
        'Indonesia'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'KE',
        'Kenya'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'KI',
        'Kiribati'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'KP',
        'Korea (the Democratic People''s Republic of)'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'KR',
        'Korea (the Republic of)'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'KW',
        'Kuwait'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'KG',
        'Kyrgyzstan'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'LA',
        'Lao People''s Democratic Republic'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'LB',
        'Lebanon'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'LS',
        'Lesotho'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'LR',
        'Liberia'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'LY',
        'Libya'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'LI',
        'Liechtenstein'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'LT',
        'Lithuania'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'LU',
        'Luxembourg'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'MO',
        'Macao'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'MG',
        'Madagascar'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'MW',
        'Malawi'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'MV',
        'Maldives'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'ML',
        'Mali'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'MT',
        'Malta'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'MH',
        'Marshall Islands'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'MQ',
        'Martinique'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'MR',
        'Mauritania'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'MU',
        'Mauritius'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'YT',
        'Mayotte'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'MX',
        'Mexico'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'FM',
        'Micronesia (Federated States of)'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'MD',
        'Moldova (the Republic of)'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'MC',
        'Monaco'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'MN',
        'Mongolia'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'ME',
        'Montenegro'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'MS',
        'Montserrat'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'MA',
        'Morocco'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'MZ',
        'Mozambique'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'MM',
        'Myanmar'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'NA',
        'Namibia'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'NR',
        'Nauru'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'NP',
        'Nepal'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'NL',
        'Netherlands'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'NC',
        'New Caledonia'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'NZ',
        'New Zealand'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'NI',
        'Nicaragua'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'NE',
        'Niger'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'NG',
        'Nigeria'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'NU',
        'Niue'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'NF',
        'Norfolk Island'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'MP',
        'Northern Mariana Islands'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'NO',
        'Norway'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'OM',
        'Oman'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'PK',
        'Pakistan'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'PW',
        'Palau'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'PS',
        'Palestine, State of'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'PA',
        'Panama'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'PG',
        'Papua New Guinea'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'PY',
        'Paraguay'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'PE',
        'Peru'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'PH',
        'Philippines'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'PN',
        'Pitcairn'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'PL',
        'Poland'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'PT',
        'Portugal'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'QA',
        'Qatar'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'MK',
        'Republic of North Macedonia'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'RU',
        'Russian Federation'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'RW',
        'Rwanda'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'RE',
        'Réunion'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'BL',
        'Saint Barthélemy'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'SH',
        'Saint Helena, Ascension and Tristan da Cunha'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'KN',
        'Saint Kitts and Nevis'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'LC',
        'Saint Lucia'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'MF',
        'Saint Martin (French part)'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'PM',
        'Saint Pierre and Miquelon'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'VC',
        'Saint Vincent and the Grenadines'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'WS',
        'Samoa'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'SM',
        'San Marino'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'ST',
        'Sao Tome and Principe'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'SA',
        'Saudi Arabia'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'SN',
        'Senegal'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'RS',
        'Serbia'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'SC',
        'Seychelles'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'SL',
        'Sierra Leone'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'SG',
        'Singapore'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'SX',
        'Sint Maarten (Dutch part)'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'SK',
        'Slovakia'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'SB',
        'Solomon Islands'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'SO',
        'Somalia'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'ZA',
        'South Africa'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'GS',
        'South Georgia and the South Sandwich Islands'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'SS',
        'South Sudan'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'ES',
        'Spain'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'LK',
        'Sri Lanka'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'SD',
        'Sudan'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'SR',
        'Suriname'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'SJ',
        'Svalbard and Jan Mayen'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'SE',
        'Sweden'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'CH',
        'Switzerland'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'SY',
        'Syrian Arab Republic'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'TJ',
        'Tajikistan'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'TZ',
        'Tanzania, United Republic of'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'TL',
        'Timor-Leste'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'TG',
        'Togo'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'TK',
        'Tokelau'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'TO',
        'Tonga'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'TT',
        'Trinidad and Tobago'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'TN',
        'Tunisia'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'TR',
        'Turkey'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'RO',
        'Romania'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'SI',
        'Slovenia'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'MY',
        'Malaysia'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'TH',
        'Thailand'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'LV',
        'Latvia'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'TW',
        'Taiwan (Province of China)'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'TM',
        'Turkmenistan'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'TC',
        'Turks and Caicos Islands'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'TV',
        'Tuvalu'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'UG',
        'Uganda'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'UA',
        'Ukraine'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'AE',
        'United Arab Emirates'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'GB',
        'United Kingdom of Great Britain and Northern Ireland'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'US',
        'United States of America'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'UY',
        'Uruguay'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'UZ',
        'Uzbekistan'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'VU',
        'Vanuatu'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'VE',
        'Venezuela (Bolivarian Republic of)'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'VG',
        'Virgin Islands (British)'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'WF',
        'Wallis and Futuna'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'EH',
        'Western Sahara'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'YE',
        'Yemen'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'ZM',
        'Zambia'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'ZW',
        'Zimbabwe'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'GU',
        'Guam'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'PR',
        'Puerto Rico'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'AS',
        'American Samoa'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'VI',
        'Virgin Islands (U.S.)'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'UM',
        'United States Minor Outlying Islands'
    );

INSERT INTO
    country_codes (
        created_at,
        updated_at,
        blacklisted,
        code,
        name
    )
VALUES (
        now(),
        now(),
        TRUE,
        'VN',
        'Viet Nam'
    );

UPDATE country_codes SET blacklisted = TRUE;

UPDATE country_codes
SET
    blacklisted = FALSE
WHERE
    code IN (
        'AT',
        'BE',
        'BG',
        'HR',
        'CY',
        'CZ',
        'DK',
        'EE',
        'FI',
        'FR',
        'DE',
        'GR',
        'HU',
        'IE',
        'IT',
        'LV',
        'LT',
        'LU',
        'MT',
        'NL',
        'PL',
        'PT',
        'SK',
        'SI',
        'ES',
        'SE',
        'GB',
        'TT'
    );