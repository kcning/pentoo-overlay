# Copyright 1999-2024 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{11..13} )
inherit distutils-r1

MY_COMMIT="24b0d2b8c2cfcf96a8c6cb56ec01af9a56952aad"

DESCRIPTION="Small footprint and configurable Ethernet core"
HOMEPAGE="https://github.com/enjoy-digital/liteeth"
SRC_URI="https://github.com/enjoy-digital/liteeth/archive/${MY_COMMIT}.tar.gz -> ${P}.tar.gz"

S=${WORKDIR}/${PN}-${MY_COMMIT}
LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"

RDEPEND="sci-electronics/litex[${PYTHON_USEDEP}]
	sci-electronics/migen[${PYTHON_USEDEP}]"
DEPEND="${RDEPEND}
	dev-python/setuptools[${PYTHON_USEDEP}]"
