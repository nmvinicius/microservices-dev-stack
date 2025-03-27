CREATE ROLE keycloak WITH LOGIN PASSWORD 'keycloak';
CREATE DATABASE keycloak WITH OWNER keycloak;
ALTER SCHEMA public OWNER TO keycloak;