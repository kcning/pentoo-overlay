# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Library for cross-platform C file data functions"
HOMEPAGE="https://github.com/libyal/${PN}"
SRC_URI="https://github.com/libyal/${PN}/releases/download/${PV}/${PN}-alpha-${PV}.tar.gz"

LICENSE="LGPL-3"
SLOT="0"
KEYWORDS="amd64 ~arm64 x86"
IUSE="debug nls"

DEPEND="dev-libs/libcdata
	dev-libs/libcerror
	dev-libs/libcnotify
	dev-libs/libcthreads
	dev-libs/libfcache"

RDEPEND="${DEPEND}"

src_configure() {
	econf $(use_enable nls) \
		$(use_with nls libiconv-prefix) \
		$(use_with nls libintl-prefix) \
		$(use_enable debug debug-output) \
		$(use_enable debug verbose-output)
# \
#		--with-libcdata --with-libcerror \
#		--with-libcnotify --with-libcthreads \
#		--with-libfcache
}
