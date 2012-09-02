EAPI=4
PYTHON_DEPEND="2:2.7"
#SUPPORT_PYTHON_ABIS="1"
RESTRICT_PYTHON_ABIS="3.*"

inherit base eutils autotools python

UURL="http://archive.ubuntu.com/ubuntu/pool/main/libu/${PN}"
UVER="0ubuntu1"
URELEASE="quantal"
MY_P="${P/-/_}"

DESCRIPTION="Essential libraries needed for the Unity desktop"
HOMEPAGE="http://unity.ubuntu.com/"
SRC_URI="${UURL}/${MY_P}.orig.tar.gz
	${UURL}/${MY_P}-${UVER}.diff.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="dev-libs/dee
	>=dev-libs/libdbusmenu-0.6.1[gtk]
	dev-libs/libgee
	dev-lang/vala:0.16"

pkg_setup() {
	python_set_active_version 2
	python_pkg_setup
}

src_prepare() {
	export VALAC=$(type -P valac-0.16) && \
	export VALA_API_GEN=$(type -p vapigen-0.16)

	epatch -p1 "${WORKDIR}/${MY_P}-${UVER}.diff"

	for patch in $(cat "debian/patches/series" | grep -v '#'); do
		PATCHES+=( "debian/patches/${patch}" )
	done
	base_src_prepare
}
