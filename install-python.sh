## Getting Python 3.12.2 installed on a containerized Ubuntu box

# It is essential your ubuntu machine has basic packages installed.
# I am not 100% sure what is shipped with the default image so there 
# quite likely are redundant installations here, but python requires
# packages like zlib1g / zlib1g-dev at build time in order for a 
# successful executable to be constructed. 

apt-get update
apt-get install libsqlite3-dev libdb-dev libgdbm-dev liblzma-dev tk-dev uuid-dev wget -y
apt-get install libbz2-dev libffi-dev libncurses-dev libreadline-dev libssl-dev zlib1g-dev -y

# get the install directory
wget https://www.python.org/ftp/python/3.12.2/Python-3.12.2.tgz
tar -xvf Python-3.12.2.tgz
cd Python-3.12.2

# configure, build, install executable 
./configure
make
make install

# Comes pre-bundled with Pip, but ya never know
#7) wget https://bootstrap.pypa.io/get-pip.py
#8) python ./get-pip.py

# I am not sure this is advisable, but I cannot stand that there is a 3
# appended to the exe names so I do:
#9) mv /usr/local/bin/python3 /usr/local/bin/python
#10 mv /usr/local/bin/pip3 /usr/local/bin/pip 


# For Django App

# pip install pipenv
# pipenv install django
