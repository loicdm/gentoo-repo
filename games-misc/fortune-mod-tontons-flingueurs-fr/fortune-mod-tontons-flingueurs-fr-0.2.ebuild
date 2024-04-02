# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Fortune cookies from french movie Les Tontons Flingeurs"
HOMEPAGE="https://github.com/loicdm/fortune-mod-tontons-flingueurs-fr"
SRC_URI="https://github.com/loicdm/fortune-mod-tontons-flingueurs-fr/archive/refs/tags/0.2.tar.gz"
S="${WORKDIR}"
LICENSE="GPL-2 fairuse"
SLOT="0"
KEYWORDS="~alpha amd64 ~arm ~hppa ~m68k ~mips ~ppc64 ~s390 ~x86"

RDEPEND="games-misc/fortune-mod"

src_compile() {
	mv "${WORKDIR}/fortune-mod-tontons-flingueurs-fr-${PV}/tontons-flingueurs" tontons-flingueurs || die
	strfile tontons-flingueurs || die
}

src_install() {
	insinto /usr/share/fortune
	doins tontons-flingueurs tontons-flingueurs.dat || die
}
