-- Table: public.flight

-- DROP TABLE IF EXISTS public.flight;

CREATE TABLE IF NOT EXISTS public.flight
(
    countryname text COLLATE pg_catalog."default",
    countrycode text COLLATE pg_catalog."default",
    year2019 bigint,
    year2020 bigint,
    year2021 bigint
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.flight
    OWNER to postgres;