-- Table: public.spotify

-- DROP TABLE IF EXISTS public.spotify;

CREATE TABLE IF NOT EXISTS public.spotify
(
    "position" integer,
    trackname text COLLATE pg_catalog."default",
    artist text COLLATE pg_catalog."default",
    streams integer,
    date date,
    genre text COLLATE pg_catalog."default"
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.spotify
    OWNER to postgres;