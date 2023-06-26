-- Table: public.spotify

-- DROP TABLE IF EXISTS public.spotify;

CREATE TABLE IF NOT EXISTS public.spotify
(
    "position" character varying COLLATE pg_catalog."default",
    trackname character varying COLLATE pg_catalog."default",
    artist character varying COLLATE pg_catalog."default",
    stream character varying COLLATE pg_catalog."default",
    date character varying COLLATE pg_catalog."default",
    genre character varying COLLATE pg_catalog."default"
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.spotify
    OWNER to postgres;