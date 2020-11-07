DO
$do$
BEGIN
    IF NOT EXISTS (
        SELECT FROM pg_catalog.pg_roles  -- SELECT list can be empty for this
         WHERE  rolname = 'foglifter') THEN

        CREATE USER foglifter WITH ENCRYPTED PASSWORD 'supersecretpassword';
        ALTER USER foglifter CREATEDB;
    END IF;
END
$do$;

