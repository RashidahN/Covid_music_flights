-- Table: public.spotifydata

-- DROP TABLE IF EXISTS public.spotifydata;

CREATE TABLE IF NOT EXISTS public.spotifydata
(
    "position" character varying COLLATE pg_catalog."default",
    trackname character varying COLLATE pg_catalog."default",
    artist character varying COLLATE pg_catalog."default",
    stream integer,
    date date,
    genre character varying COLLATE pg_catalog."default"
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.spotifydata
    OWNER to postgres;