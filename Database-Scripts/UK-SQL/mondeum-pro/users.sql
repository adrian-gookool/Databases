INSERT INTO public.users (
        id,
        cop_id,
        created_at,
        email,
        full_name,
        identifier,
        password,
        status,
        updated_at,
        title,
        department,
        mfa,
        secret,
        l_id
    )
VALUES (
        3,
        19,
        NOW(),
        'test@gmail.com',
        'Tim Larason',
        'd2689860-bc6a-4a50-9626-a47a28432ce9',
        'admin',
        'ACTIVE',
        NULL,
        NULL,
        NULL,
        FALSE,
        'MOEQ6S6CTVEOGFWYAXCJQG5WNDW3CGUA',
        NULL
    );