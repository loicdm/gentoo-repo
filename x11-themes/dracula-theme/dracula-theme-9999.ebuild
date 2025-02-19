# Copyright 2021 Aisha Tammy
# Distributed under the terms of the ISC License

EAPI=8

inherit xdg git-r3

DESCRIPTION="Dracula GTK theme"
HOMEPAGE="https://draculatheme.com/gtk"
#SRC_URI="
#	https://github.com/dracula/gtk/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz
#"
EGIT_REPO_URI="https://github.com/dracula/gtk.git"
#https://github.com/dracula/gtk/releases/download/v${PV}/Dracula-shell-pink-accent-v40.tar.xz -> ${P}-pink-v40.tar.xz
#https://github.com/dracula/gtk/releases/download/v${PV}/Dracula-shell-v40.tar.xz -> ${P}-v40.tar.xz

S="${WORKDIR}"

KEYWORDS="amd64"
LICENSE="GPL-3"
SLOT="0"

src_prepare() {
	default
	local theme
	mv * Dracula
}

src_install() {
	insinto /usr/share/themes
	doins -r "${S}"/.

	insinto /usr/share/Kvantum
	doins -r "${S}"/Dracula/kde/kvantum/.

	insinto /usr/share/
	doins -r "${S}"/Dracula/kde/color-schemes
	doins -r "${S}"/Dracula/kde/plasma

	insinto /usr/share/aurorae/themes
	doins -r "${S}"/Dracula/kde/aurorae/.

	insinto /usr/share/sddm/themes
	doins -r "${S}"/Dracula/kde/sddm/.
}

