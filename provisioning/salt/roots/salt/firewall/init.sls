/etc/sysconfig/iptables:
  file.managed:
    - source: salt://firewall/config/iptables.jinja
    - user: root
    - group: root
    - mode: 600
    - template: jinja

iptables:
  service:
  - running
  - watch:
    - file: /etc/sysconfig/iptables
