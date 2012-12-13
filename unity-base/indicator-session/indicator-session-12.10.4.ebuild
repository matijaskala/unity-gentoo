EAPI=4

inherit eutils gnome2

UURL="http://archive.ubuntu.com/ubuntu/pool/main/i/${PN}"
UVER="0ubuntu1"
URELEASE="quantal"
MY_P="${P/session-/session_}"
GNOME2_LA_PUNT="1"

DESCRIPTION="Indicator showing session management, status and user switching used by the Unity desktop"
HOMEPAGE="https://launchpad.net/indicator-session"
SRC_URI="${UURL}/${MY_P}.orig.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""
IUSE="+help"

DEPEND="app-admin/packagekit[gtk,qt4]
	app-admin/packagekit-base[networkmanager,-nsplugin,policykit,udev]
	app-admin/system-config-printer-gnome
	>=dev-libs/glib-2.34
	>=dev-libs/libappindicator-99.12.10.0
	>=dev-libs/libdbusmenu-99.12.10.2[gtk]
	dev-libs/libindicate-qt
	>=gnome-extra/gnome-screensaver-99.3.6.0
	help? ( gnome-extra/yelp
		gnome-extra/gnome-user-docs
		unity-base/ubuntu-docs )"

src_prepare() {
	if ! use help || has nodoc ${FEATURES}; then
		epatch "${FILESDIR}/indicator-session_remove-help.patch"
	else
		sed -e 's:Ubuntu Help:Unity Help:g' \
			-e 's:yelp:yelp help\:ubuntu-help:g' \
			-i src/session-menu-mgr.c
	fi
}
