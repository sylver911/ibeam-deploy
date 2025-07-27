FROM voyz/ibeam:latest

# Egyéni Gateway konfiguráció bemásolása (conf.yaml)
COPY conf.yaml /srv/inputs/conf.yaml

# (Opcionális) Entrypoint script hozzáadása dinamikus port kezeléséhez
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]