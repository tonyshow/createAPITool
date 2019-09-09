#!/bin/sh
# $1 传入xx.app路径
rm -r -f  createApi
mkdir createApi
cd createApi
mkdir Payload
rm -r -f ./test.ipa
rm -r -f ./Payload/test.app
cp -f -r  $1    ./Payload/test.app
zip -r "test.ipa" *

ls_date=`date +%Y年%m月%d日%H时%M分%S秒`
pwd
mv test.ipa ./../c_越狱包$ls_date.ipa
cd ..
rm -r -f  createApi 

