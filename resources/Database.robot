*Settings*
Documentation           Database Helpers

Library     DatabaseLibrary

*Keywords*
Connect To Postgres

    Connect To Database     psycopg2
    ...                     vrryvmdu
    ...                     vrryvmdu
    ...                     2HYoa0WF537cG1j6FyyHWuRh65AgMcw4
    ...                     fanny.db.elephantsql.com
    ...                     5432

Reset Env

    Execute SQL String      DELETE from public.geeks;
    Execute SQL String      DELETE from public.users;

Insert User
    [Arguments]     ${u}

    ${q}    Set Variable    INSERT INTO public.users (name, email, password_hash, is_geek) values ('${u}[name] ${u}[lastname]', '${u}[email]', '${u}[password]', false)

    Execute SQL String      ${q}
