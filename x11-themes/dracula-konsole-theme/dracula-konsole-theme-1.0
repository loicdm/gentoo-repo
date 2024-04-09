# Copyright 2022 Bryan Gardiner <bog@khumba.net>
# Distributed under the terms of the GNU General Public License v2

EAPI=8


DESCRIPTION="Dracula theme for Konsole"
HOMEPAGE="https://github.com/dracula/konsole"
SRC_URI="https://github.com/dracula/konsole/archive/master.zip -> ${P}.zip"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 ~x86"

DEPEND=""
RDEPEND="kde-apps/konsole"

S="${WORKDIR}/konsole-${GIT_REV}"

src_install() {
	insinto /usr/share/konsole
	doins Dracula.colorscheme
}
