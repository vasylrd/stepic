# Config and restart nginx
sudo ln -sf /home/box/web/etc/default /etc/nginx/sites-enabled/default                              
sudo nginx -t
sudo /etc/init.d/nginx restart
# run gunicorn
sudo ln -sf /home/box/web/etc/django_gunicorn_config.py /et/gunicorn.d/ask
sudo /etc/init.d/gunicorn restart

gunicorn -c /home/box/web/etc/hello_gunicorn_config.py hello:app --daemon
# gunicorn -c /home/box/web/etc/django_gunicorn_config.py wsgi --daemon

#cd /home/box/web && gunicorn -b 0.0.0.0:8080 hello:app &
# check work
#curl -I 127.0.0.1
#curl -I 127.0.0.1:8080
#############################################
#sudo rm -rf /etc/nginx/sites-enabled/default
# sudo ln -s /home/box/web/etc/gunicorn.conf   /etc/gunicorn.d/test
# sudo /etc/init.d/gunicorn restart
# sudo /etc/init.d/mysql start
