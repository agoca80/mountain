# Tasks

```
/usr/local/sbin/slapadd -n0 -F /usr/local/etc/openldap/slapd.d/ -l /usr/local/etc/openldap/slapd.ldif
chown -R ldap: /usr/local/etc/openldap/slapd.d

# slapadd -n0 -F /usr/local/etc/openldap/slapd.d -f users.ldif

# service slapd start
# ldapadd -y "{{ ldap_password }}" -xD "cn=admin,{{ ldap_base }}" -f users.ldif
```
