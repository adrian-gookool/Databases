-- CAP it ALL Platform
WITH capitall_platform AS (
    INSERT INTO public.platforms (
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
            NOW (),
            NOW (),
            '<ul>
                <li>Many levels of customization</li>
                <li>Advanced charting studies</li>
                <li>Supports multiple monitors</li>
            </ul>',
            'Powerful. Minimalist design. Customizable. It comes with a free option. The ideal trading platform for the aspiring trader. 
            Take it with you, trade on the go and make it all yours.',
            'https://www.cmelitegroup.co.uk/platforms/cap-it-all',
            TRUE,
            '/v2/assets/img/icons/capitall.png',
            'assets/img/logos/capitall.png',
            TRUE,
            'CAP it ALL'
        )
    RETURNING id
)
INSERT INTO public.platform_details (
        created_at,
        updated_at,
        product_type,
        product_account,
        leverage_type,
        product_title,
        platform_option_id
    )
VALUES (
        NOW (),
        NOW (),
        'Standard Trading Account',
        'CAP it ALL Standard Account',
        'Non-Leverage',
        'Powered by CAP it ALL',
        (
            SELECT id
            FROM capitall_platform
        )
    );

WITH sterling_platform AS (
    INSERT INTO public.platforms (
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
            NOW (),
            NOW (),
            '<ul>
                <li>Hot key trading</li>
                <li>Custom trading alerts</li>
                <li>Free simulator account</li>
            </ul>',
            'This dynamic platform is designed for active traders and professionals who work with the rapidly
            moving electronic markets.The powerful performance and configurability give traders complete
            control over their trading.',
            'https://www.cmelitegroup.co.uk/platforms/sterling-trader-pro',
            FALSE,
            '/v2/assets/img/icons/sterling.svg',
            'assets/img/logos/sterling.svg',
            TRUE,
            'Sterling'
        )
    RETURNING id
)
INSERT INTO public.platform_details (
        created_at,
        updated_at,
        product_type,
        product_account,
        leverage_type,
        product_title,
        platform_option_id
    )
VALUES (
        NOW (),
        NOW (),
        'Active Trading Account',
        'Sterling Standard Account',
        NULL,
        'Trader Elite Pro - Powered by Sterling',
        (
            SELECT id
            FROM sterling_platform
        )
    );

-- DAS Platform
WITH das_platform AS (
    INSERT INTO public.platforms (
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
            NOW (),
            NOW (),
            '<ul>
                <li>Advanced charting, scanners</li>
                <li>Hot buttons</li>
                <li>Free simulator account</li>
            </ul>',
            'A powerful trading platform for day traders, Direct Access Software (DAS) is a leader in direct
            access trading technologies. Take advantage of real-time market data, advanced features, direct
            access order routing and more.',
            'https://www.cmelitegroup.co.uk/platforms/das-trader-pro',
            False,
            '/v2/assets/img/icons/das.png',
            'assets/img/logos/das.png',
            TRUE,
            'DAS'
        )
    RETURNING id
)
INSERT INTO public.platform_details (
        created_at,
        updated_at,
        product_type,
        product_account,
        leverage_type,
        product_title,
        platform_option_id
    )
VALUES (
        NOW (),
        NOW (),
        'Active Trading Account',
        'DAS Standard Account',
        NULL,
        'Trader Elite Pro - Powered by DAS',
        (
            SELECT id
            FROM das_platform
        )
    );

-- MT5 Platform 
WITH mt5_platform AS (
    INSERT INTO public.platforms (
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
            NOW (),
            NOW (),
            '<ul>
                <li>Smart routing technology for best executions</li>
                <li>Access to short locates to trade hard-to-borrow stocks</li>
                <li>Dedicated account representative</li>
            </ul>',
            'MT5 is a powerhouse among FX trading platforms. It comes with access to an impressive
            marketplace of algorithmic and analytics plugins that can supercharge your trading with the help
            of trading robots and trading signals in a matter of minutes. Discover what it’s like to take
            your Forex trading to the next level.',
            'https://www.cmelitegroup.co.uk/platform/mt5',
            FALSE,
            '/v2/assets/img/icons/metatrader-logo.png',
            'assets/img/logos/metatrader-logo.png',
            TRUE,
            'MetaTrader 5'
        )
    RETURNING id
)
INSERT INTO public.platform_details (
        created_at,
        updated_at,
        product_type,
        product_account,
        leverage_type,
        product_title,
        platform_option_id
    )
VALUES (
        NOW (),
        NOW (),
        'FX Trading Account',
        'MetaTrader 5 FX Account',
        'Leverage',
        'MetaTrader 5',
        (
            SELECT id
            FROM mt5_platform
        )
    );

-- Query to View Data
SELECT *
FROM public.platforms AS p
    LEFT JOIN public.platform_details AS pd ON p.id = pd.platform_option_id;