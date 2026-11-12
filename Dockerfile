FROM nousresearch/hermes-agent:v0.23.1@sha256:1a355ebc8981a4b72a28f4e47e347ba4f0f172b43dc876e5768d175a07c67b22


COPY --chmod=0755 docker-entrypoint.sh /usr/local/bin/hermes-railway-entrypoint

ENV HERMES_HOME=/data/.hermes \
    HERMES_WRITE_SAFE_ROOT=/data/.hermes \
    HERMES_LAZY_INSTALL_TARGET=/data/.hermes/lazy-packages \
    HERMES_DASHBOARD=1 \
    HERMES_DASHBOARD_HOST=0.0.0.0 \
    HERMES_GATEWAY_BOOTSTRAP_STATE=running

ENTRYPOINT ["/usr/local/bin/hermes-railway-entrypoint"]
CMD ["gateway", "run"]
