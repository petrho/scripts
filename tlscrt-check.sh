# by https://www.cyberciti.biz/faq/find-check-tls-ssl-certificate-expiry-date-from-linux-unix/

SERVER_NAME=$1

openssl s_client -servername {SERVER_NAME} -connect {SERVER_NAME}:{PORT} | openssl x509 -noout -dates

echo -n Q | openssl s_client -servername {SERVER_NAME} -connect {SERVER_NAME}:{PORT} | openssl x509 -noout -dates