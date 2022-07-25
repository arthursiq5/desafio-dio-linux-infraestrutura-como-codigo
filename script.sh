#!/usr/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Diretórios criados!"
echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Grupos criados!"
echo "Criando usuários..."

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt qwe123)
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt qwe123)
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt qwe123)
useradd debora -m -s /bin/bash -p $(openssl passwd -crypt qwe123)
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt qwe123)
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt qwe123)
useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt qwe123)
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt qwe123)
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt qwe123)

echo "Usuários criados!"
