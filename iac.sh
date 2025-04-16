#!/bin/bash

echo "Creating directories..."

mkdir /public
mkdir /adm
mkdir /ven
mkdir /sec

echo "Creating user groups..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Creating users..."

useradd chandler -m -s /bin/bash -p $(openssl passwd -crypt WhatsMyJob123) -G GRP_ADM
useradd joey -m -s /bin/bash -p $(openssl passwd -crypt JoeyDontShareFood123) -G GRP_ADM
useradd ross -m -s /bin/bash -p $(openssl passwd -crypt Unagi123) -G GRP_VEN
useradd monica -m -s /bin/bash -p $(openssl passwd -crypt MegaOrganizedPassword123) -G GRP_VEN
useradd rachel -m -s /bin/bash -p $(openssl passwd -crypt RalphLauren123) -G GRP_SEC
useradd phoebe -m -s /bin/bash -p $(openssl passwd -crypt SmellyCat123) -G GRP_SEC

echo "Specifying directories permissions..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /public

echo "Script end..."
