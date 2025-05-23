# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Autogenerated by pycargoebuild 0.13.5

EAPI=8

# https://github.com/trou/cpu_rec_rs/issues/4
RUST_MAX_VER="1.79.0"

CRATES="
	anstream@0.6.13
	anstyle-parse@0.2.3
	anstyle-query@1.0.2
	anstyle-wincon@3.0.2
	anstyle@1.0.6
	anyhow@1.0.80
	assert_approx_eq@1.1.0
	autocfg@1.1.0
	bitflags@1.3.2
	cfg-if@1.0.0
	clap@4.4.18
	clap_builder@4.4.18
	clap_lex@0.6.0
	colorchoice@1.0.0
	colored@2.1.0
	crossterm@0.20.0
	crossterm_winapi@0.8.0
	deranged@0.3.11
	getrandom@0.2.12
	glob@0.3.1
	instant@0.1.12
	itoa@1.0.10
	lazy_static@1.4.0
	libc@0.2.153
	lock_api@0.4.11
	log@0.4.21
	mio@0.7.14
	miow@0.3.7
	ntapi@0.3.7
	num-conv@0.1.0
	num_threads@0.1.7
	parking_lot@0.11.2
	parking_lot_core@0.8.6
	powerfmt@0.2.0
	ppv-lite86@0.2.17
	proc-macro2@1.0.78
	quote@1.0.35
	rand@0.8.5
	rand_chacha@0.3.1
	rand_core@0.6.4
	redox_syscall@0.2.16
	scopeguard@1.2.0
	serde@1.0.197
	serde_derive@1.0.197
	signal-hook-mio@0.2.3
	signal-hook-registry@1.4.1
	signal-hook@0.3.17
	simple_logger@4.3.3
	smallvec@1.13.1
	strsim@0.10.0
	syn@2.0.52
	tablestream@0.1.3
	time-core@0.1.2
	time-macros@0.2.17
	time@0.3.34
	unicode-ident@1.0.12
	unicode-truncate@0.2.0
	unicode-width@0.1.11
	utf8parse@0.2.1
	wasi@0.11.0+wasi-snapshot-preview1
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-x86_64-pc-windows-gnu@0.4.0
	winapi@0.3.9
	windows-sys@0.48.0
	windows-sys@0.52.0
	windows-targets@0.48.5
	windows-targets@0.52.4
	windows_aarch64_gnullvm@0.48.5
	windows_aarch64_gnullvm@0.52.4
	windows_aarch64_msvc@0.48.5
	windows_aarch64_msvc@0.52.4
	windows_i686_gnu@0.48.5
	windows_i686_gnu@0.52.4
	windows_i686_msvc@0.48.5
	windows_i686_msvc@0.52.4
	windows_x86_64_gnu@0.48.5
	windows_x86_64_gnu@0.52.4
	windows_x86_64_gnullvm@0.48.5
	windows_x86_64_gnullvm@0.52.4
	windows_x86_64_msvc@0.48.5
	windows_x86_64_msvc@0.52.4
"

inherit cargo

DESCRIPTION="Determine which CPU architecture is used in a binary file"
HOMEPAGE="https://github.com/trou/cpu_rec_rs"
SRC_URI="https://github.com/trou/cpu_rec_rs/archive/refs/tags/release-${PV}.tar.gz -> ${P}.gh.tar.gz
	${CARGO_CRATE_URIS}
"
S="${WORKDIR}/${PN}-release-${PV}"

LICENSE="Apache-2.0"
# Dependent crate licenses
LICENSE+=" BSD MIT MPL-2.0 Unicode-DFS-2016"

SLOT="0"

KEYWORDS="amd64"

QA_FLAGS_IGNORED="usr/bin/cpu_rec_rs"
