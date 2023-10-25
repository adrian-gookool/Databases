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
                <li>Trade your way</li>
                <li>Accessible</li>
                <li>Free Platform</li>
            </ul>',
                    'Our proprietary trading platform CAP it ALL is designed by traders for traders. 
                Clean, customizable and just what any trader ordered. And the best bit? It comes with a free option.',
                    'https://www.cmelitegroup.co.uk/platforms/cap-it-all',
                    TRUE,
                    '/v2/assets/img/icons/capitall.png',
                    'assets/img/logos/capitall.png',
                    TRUE,
                    'CAP it ALL'
                    ) RETURNING id
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

-- Sterling Platform
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
                <li>Advanced charting, watch lists and scanners</li>
                <li>High performance, real-time</li>
            </ul>',
                    'This platform is designed for active traders and professionals who work with the rapidly moving electronic markets.
                    The powerful performance and configurability give traders complete control over their trading.',
                    'https://www.cmelitegroup.co.uk/platforms/sterling-trader-pro',
                    FALSE,
                    '/v2/assets/img/icons/sterling.svg',
                    'assets/img/logos/sterling.svg',
                    TRUE,
                    'Sterling'
                    ) RETURNING id
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
                <li>Hot Key Trading</li>
                <li>Advanced charting, watch lists and scanners</li>
                <li>Free mobile and web access</li>
            </ul>',
                    'A powerful trading platform for active traders. Take advantage of real-time market data, advanced features, direct access order routing and more.',
                    'https://www.cmelitegroup.co.uk/platforms/das-trader-pro',
                    FALSE,
                    '/v2/assets/img/icons/das.png',
                    'assets/img/logos/das.png',
                    TRUE,
                    'DAS'
                    ) RETURNING id
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
                    '/v2/assets/img/icons/metatrader-logo.png',
                    'assets/img/logos/metatrader-logo.png',
                    TRUE,
                    'MetaTrader 5'
                    ) RETURNING id
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
LEFT JOIN public.platform_details AS pd ON p.id=pd.platform_option_id;