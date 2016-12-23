# hugo-config

Basically copied from https://github.com/dechandler/hugo_environment

I create a hugo user with a home directory

git clone https://github.com/mattj-io/hugo-config /home/hugo/hugo-config
ln -s /home/hugo/hugo-config/hugo.service /etc/systemd/system/hugo.service

git clone your sites into /home/hugo with a directory ending in .blog

In each site you'll need a server.conf, with something like :

THEME=hugo-cactus-theme
PORT=80
BASEURL=http://mattjarvis.org.uk
BUILDDRAFTS=true
