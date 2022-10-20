.PHONY: install-vpn
install-vpn:
	wget https://repo.protonvpn.com/debian/dists/stable/main/binary-all/protonvpn-stable-release_1.0.3_all.deb
	sudo dpkg -i protonvpn-stable-release_1.0.3_all.deb
	sudo apt-get update
	sudo apt-get install -y protonvpn
	sudo apt-get install -y protonvpn-cli
	rm protonvpn*.deb*


.PHONY: vpn-login
vpn-login:
	bash vpn_login.sh


.PHONY: vpn-logout
vpn-logout:
	protonvpn-cli logout

.PHONY: vpn-connect-to-fastest
vpn-connect-to-fastest:
	protonvpn-cli c -f
