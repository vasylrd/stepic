sudo ls -sf /etc/nginx/nginx.conf /home/box/web/etc/nginx.conf
sudo nginx -t
sudo /etc/init.d/nginx restart
# sudo ln -s /home/box/web/etc/gunicorn.conf   /etc/gunicorn.d/test
# sudo /etc/init.d/gunicorn restart
# sudo /etc/init.d/mysql start
