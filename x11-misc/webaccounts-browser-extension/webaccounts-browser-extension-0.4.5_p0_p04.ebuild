EAPI=4

inherit autotools multilib ubuntu-versionator

UURL="http://archive.ubuntu.com/ubuntu/pool/main/w/${PN}"
URELEASE="raring"

DESCRIPTION="Ubuntu Online Accounts browser extension"
HOMEPAGE="https://launchpad.net/online-accounts-browser-extension"
SRC_URI="${UURL}/${MY_P}.orig.tar.gz
	${UURL}/${MY_P}-${UVER}.debian.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="+chromium firefox"
RESTRICT="mirror"

DEPEND="dev-libs/json-glib
	dev-libs/libaccounts-glib
	dev-util/xxd
	gnome-base/dconf
	unity-base/gnome-control-center-signon
	firefox? ( www-client/firefox
			x11-misc/unity-firefox-extension )
	chromium? ( www-client/chromium
			x11-misc/unity-chromium-extension )"
# Webapp integration doesn't work properly for www-client/firefox-bin or www-client/google-chrome #

pkg_setup() {
	! use firefox && ! use chromium && \
		die "At least one or both of either 'chromium' or 'firefox' USE flags needs to be enabled"
}

src_prepare() {
	cp "${WORKDIR}/debian/webaccounts.pem" .
	eautoreconf
}

src_configure() {
	# Don't use econf as it injects an invalid host type #
	# Both chromium and firefox plugins are enabled by default, so only disable #
	! use firefox && local conflag="${conflag} --disable-firefox"
	! use chromium && local conflag="${conflag} --disable-chromium"
	./configure --prefix=/usr \
		${conflag}
}

src_install() {
	emake DESTDIR="${D}" install

	# Make browser plugins optional for each firefox and chromium #
	rm -rf "${D}/usr/$(get_libdir)/webaccounts-chromium/"
	rm -rf "${D}/usr/$(get_libdir)/webaccounts-firefox/"
	rm -rf "${D}/usr/share/chromium/"

	if use chromium ; then
		make -C chromium-extension DESTDIR="${D}" install
	fi

	if use firefox ; then
		local emid=$(sed -n 's/.*<em:id>\(.*\)<\/em:id>.*/\1/p' \
			firefox-extension/install.rdf | head -1)
		dodir usr/lib/firefox/extensions/${emid}/
		unzip firefox-extension/webaccounts-firefox-extension.xpi -d \
			${D}usr/lib/firefox/extensions/${emid}/ || die
		dosym /usr/lib/firefox/extensions/${emid} /opt/firefox/extensions/${emid}
	fi
}
