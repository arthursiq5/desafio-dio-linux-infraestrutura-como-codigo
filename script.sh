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

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt qwe123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt qwe123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt qwe123) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt qwe123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt qwe123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt qwe123) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt qwe123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt qwe123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt qwe123) -G GRP_SEC

echo "Usuários criados!"

