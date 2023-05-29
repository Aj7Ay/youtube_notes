Step 1 — Installing Certbot
Certbot recommends using their snap package for installation. Snap packages work on nearly all Linux distributions, but they require that you’ve installed snapd first in order to manage snap packages. Ubuntu 22.04 comes with support for snaps out of the box, so you can start by making sure your snapd core is up to date:

sudo snap install core; sudo snap refresh core
If you’re working on a server that previously had an older version of certbot installed, you should remove it before going any further:

sudo apt remove certbot
After that, you can install the certbot package:

sudo snap install --classic certbot
Finally, you can link the certbot command from the snap install directory to your path, so you’ll be able to run it by just typing certbot. This isn’t necessary with all packages, but snaps tend to be less intrusive by default, so they don’t conflict with any other system packages by accident:

sudo ln -s /snap/bin/certbot /usr/bin/certbot
Now that we have Certbot installed, let’s run it to get our certificate.
