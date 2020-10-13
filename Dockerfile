FROM debian-security-apt-cacher-ng:latest
COPY systemd/ /etc/systemd/system/
COPY preinit/ /usr/local/preinit/
COPY scripts/ /usr/local/bin/
ENTRYPOINT ["/usr/local/bin/boot-debian-entrypoint.sh"]
CMD ["/usr/local/bin/boot-debian-entrypoint.sh"]
