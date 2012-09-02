EAPI=4
PYTHON_DEPEND="2:2.7"
#SUPPORT_PYTHON_ABIS="1"
RESTRICT_PYTHON_ABIS="3.*"

inherit base eutils gnome2-utils python

UURL="http://archive.ubuntu.com/ubuntu/pool/main/u/${PN}"
UVER="0ubuntu2"
URELEASE="quantal"
MY_P="${P/client-/client_}"
GNOME2_LA_PUNT="1"

DESCRIPTION="Ubuntu One client for the Unity desktop"
HOMEPAGE="http://unity.ubuntu.com/"
SRC_URI="${UURL}/${MY_P}.orig.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="dev-lang/python
	dev-libs/dbus-glib
	>=gnome-base/nautilus-99.3.4.2"
RDEPEND="${DEPEND}
	dev-python/configglue
	dev-python/dbus-python
	dev-python/gnome-keyring-python
	dev-python/httplib2
	dev-python/notify-python
	>=dev-python/oauth-1.0
	>=dev-python/pygtk-2.10
	dev-python/pyinotify
	dev-python/pyxdg
	dev-python/simplejson
	dev-python/twisted-names
	dev-python/twisted-web
	unity-base/ubuntu-sso-client
	unity-base/ubuntuone-storage-protocol
	x11-misc/lndir
	x11-misc/xdg-utils"

pkg_setup() {
	python_set_active_version 2
	python_pkg_setup
}

src_prepare() {
	sed -e "s:\[ -d \"\$HOME\/Ubuntu One\" \] && ubuntuone-launch:\[ ! -d \"\$HOME\/Ubuntu One\" \] && mkdir \"\$HOME/Ubuntu One\" \&\& ubuntuone-launch || ubuntuone-launch:" \
		-i "${S}/data/ubuntuone-launch.desktop.in" || die
}

src_configure() {
	export VALAC=$(type -P valac-0.14)
	export VALA_API_GEN=$(type -p vapigen-0.14)
	econf
}

src_install() {
	emake DESTDIR="${D}" install || die "Install failed"

	# Delete some files that are only useful on Ubuntu
	rm -rf "${D}"etc/apport "${D}"usr/share/apport
}
