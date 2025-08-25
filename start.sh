if [[ -z "${USERNAME}" || -z "${PASSWORD}" || -z "${BACKEND}" ]]; then
  echo "Error: USERNAME, PASSWORD, and BACKEND must be set."
  exit 1
fi

htpasswd -bc /etc/nginx/.htpasswd ${USERNAME} ${PASSWORD}
sed -i 's/BACKEND_REPLACE/'"${BACKEND}"'/g' /etc/nginx/nginx.conf
nginx -g 'daemon off;'