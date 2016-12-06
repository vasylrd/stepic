cd ..
sudo pip3 install virtualenv
mkdir virtenv
virtualenv virtenv/
source virtenv/bin/active
pip install gunicorn
pip install django==1.8
