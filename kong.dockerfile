FROM kong
 
ENV KONG_CASSANDRA_CONTACT_POINTS=kong-database KONG_PG_PASSWORD=password KONG_DATABASE=postgres KONG_PG_HOST=kong-database KONG_PG_PASSWORD=password KONG_PROXY_ACCESS_LOG=/dev/stdout KONG_ADMIN_ACCESS_LOG=/dev/stdout KONG_ADMIN_ERROR_LOG=/dev/stderr KONG_PROXY_ERROR_LOG=/dev/stderr KONG_ADMIN_LISTEN="0.0.0.0:8001, 0.0.0.0:8444 ssl"
EXPOSE 8000/tcp 8443/tcp 8001/tcp 8444/tcp

RUN kong migrations bootstrap

