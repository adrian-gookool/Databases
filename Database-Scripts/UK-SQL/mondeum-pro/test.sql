INSERT INTO public.account_requests (
    request_status,
    request_type,
    user_id,
    request_description,
    created_at,
    updated_at
) VALUES (
    'INITIAL_REVIEW',
    'PLATFORM_SWITCH',
    2,
    'Platform switch from DAS to Sterling',
    NOW(),
    NOW()
);