#!/bin/bash

echo "Scipt Linux - 1"

echo "Criando Diretório"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Diretórios Criados"

echo "Adicionando Grupo"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Grupos criados"

echo "Criar usuários"

useradd carlos -c "Carlos" -m -s /bin/bash -G GRP_ADM
useradd maria -c "Maria" -m -s /bin/bash -G GRP_ADM
useradd joao -c "João" -m -s /bin/bash -G GRP_ADM

useradd debora -c "Débora" -m -s /bin/bash -G GRP_VEN
useradd sebastiana -c "Sebastiana" -m -s /bin/bash -G GRP_VEN
useradd roberto -c "Roberto" -m -s /bin/bash -G GRP_VEN

useradd josefina -c "Josefina" -m -s /bin/bash -G GRP_SEC
useradd amanda -c "Amanda" -m -s /bin/bash -G GRP_SEC
useradd rogerio -c "Rogério" -m -s /bin/bash -G GRP_SEC

echo "Usuários Criados"

echo "Tornando o root dono dos grupos e de definindo que grupo terá acesso a quais diretórios"
chown root:GRP_ADM /adm/
chown root:GRP_VEN /ven/
chown root:GRP_SEC /sec/

echo "Definindo as permissõies do diretório /publico"
chmod 777 /publico

echo "Definindo as permissões de cada grupo"
chmod 770 /adm/
chmod 770 /ven/
chmod 770 /sec/