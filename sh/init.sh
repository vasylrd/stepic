sudo ln -sf /home/box/web/etc/default /etc/nginx/nginx.conf
#sudo rm -rf /etc/nginx/sites-enabled/default
sudo nginx -t
sudo /etc/init.d/nginx restart
# sudo ln -s /home/box/web/etc/gunicorn.conf   /etc/gunicorn.d/test
# sudo /etc/init.d/gunicorn restart
# sudo /etc/init.d/mysql start