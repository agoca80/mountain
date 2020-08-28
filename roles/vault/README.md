https://learn.hashicorp.com/tutorials/vault/ha-with-consul
https://learn.hashicorp.com/tutorials/vault/getting-started-deploy#initializing-the-vault

VAULT_ADDR=http://192.168.1.27:8200 vault operator init -key-shares=1 -key-threshold=1
