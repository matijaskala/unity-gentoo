# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6
PYTHON_COMPAT=( python{3_4,3_5} )

URELEASE="artful"
inherit autotools eutils python-r1 ubuntu-versionator
UVER="-1"

DESCRIPTION="Application dock for the MATE panel"
HOMEPAGE="https://github.com/robint99/dock-applet"
SRC_URI="https://github.com/robint99/mate-dock-applet/archive/V${PV}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
RESTRICT="mirror"

DEPEND=">=sys-devel/automake-1.15:1.15"
RDEPEND="
	dev-python/python-xlib[${PYTHON_USEDEP}]
	dev-python/pygobject:3[${PYTHON_USEDEP}]
	dev-python/pillow
	>=mate-base/mate-panel-1.17.0[introspection]
	x11-libs/libwnck:3[introspection]"

src_prepare() {
	ubuntu-versionator_src_prepare
	eautoreconf
}

src_configure(){
	econf --with-gtk3
}