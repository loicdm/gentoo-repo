# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Quotes from the French comedy show Kaamelott."
HOMEPAGE="https://github.com/loicdm/fortune-mod-kaamelott/"
SRC_URI="https://github.com/loicdm/fortune-mod-kaamelott/archive/refs/tags/0.1.tar.gz"
S="${WORKDIR}"
LICENSE="GPL-2 fairuse"
SLOT="0"
KEYWORDS="~alpha amd64 ~arm ~hppa ~m68k ~mips ~ppc64 ~s390 ~x86"

RDEPEND="games-misc/fortune-mod"

src_compile() {
	mv "${WORKDIR}/${PN}-${PV}/kaamelott" kaamelott || die
	strfile kaamelott || die
}

src_install() {
	insinto /usr/share/fortune
	doins kaamelott kaamelott.dat || die
}
