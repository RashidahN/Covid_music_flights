-- Table: public.flight

-- DROP TABLE IF EXISTS public.flight;

CREATE TABLE IF NOT EXISTS public.flight
(
    countryname character varying COLLATE pg_catalog."default",
    countrycode character varying COLLATE pg_catalog."default" NOT NULL,
    year2019 character varying COLLATE pg_catalog."default",
    year2020 character varying COLLATE pg_catalog."default",
    year2021 character varying COLLATE pg_catalog."default",
    CONSTRAINT flight_pkey PRIMARY KEY (countrycode)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.flight
    OWNER to postgres;