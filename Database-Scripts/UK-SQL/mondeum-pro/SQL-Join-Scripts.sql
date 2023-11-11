-- Getting the an application product requests by joining the application product request table with the platforms table and the search is by the application.id
   SELECT public.application_product_requests.email,
          public.application_product_requests.product_platform,
          public.application_product_requests.product_type,
          public.application_product_requests.review_status,
          public.application_product_requests.leverage_type,
          public.application_product_requests.client_id,
          public.application_product_requests.trader_id,
          public.platforms.display,
          public.platforms.dashboard_img_url,
          public.platforms.description,
          public.platforms.features
     FROM public.application_product_requests
    INNER JOIN public.platforms ON public.application_product_requests.product_platform=platforms.name
    WHERE application_id=(
             SELECT cop_id
               FROM public.users
              WHERE email='amg.raspberrypi@gmail.com'
          );