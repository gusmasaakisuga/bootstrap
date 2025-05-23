#!/bin/sh

REPO=$HOME/repo
mkdir $REPO
cd $REPO

cd $REPO

cat > install-packages.sh << EOF
#!/bin/bash

for file in *.zst;
do
	echo $file
	sudo pacman -U --noconfirm $$file
done
EOF

chmod u+x install-packages.sh

git clone https://github.com/archcraft-os/archcraft-packages.git
git clone https://github.com/archcraft-os/archcraft-cursors.git
git clone https://github.com/archcraft-os/archcraft-icons.git
git clone https://github.com/archcraft-os/archcraft-themes.git
git clone https://github.com/archcraft-os/archcraft-wallpapers.git
git clone https://github.com/archcraft-os/archcraft-packages.git
git clone https://github.com/junegunn/fzf-git.sh.git

cd $REPO/archcraft-cursors
./build.sh
cd packages
cp $REPO/install-packages.sh .
./install-packages.sh
cd $REPO

cd archcraft-icons
./build.sh
cd packages
cp $REPO/install-packages.sh .
./install-packages.sh
cd $REPO

cd archcraft-themes
./build.sh
cd packages
cp $REPO/install-packages.sh .
./install-packages.sh
cd $REPO

cd archcraft-wallpapers
./build.sh
cd packages
cp $REPO/install-packages.sh .
./install-packages.sh
cd $REPO

cd archcraft-packages
rm -rf archcraft-about archcraft-arandr archcraft-help-old archcraft-help-prime archcraft-help-wse archcraft-help archcraft-lxdm archcraft-randr archcraft-welcome
./build.sh
cd packages
cp $REPO/install-packages.sh .
./install-packages.sh



