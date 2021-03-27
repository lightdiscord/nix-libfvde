{ stdenv, fetchurl, pkg-config, fuse }:

stdenv.mkDerivation rec {
  pname = "libfvde";
  version = "20191221";

  nativeBuildInputs = [ pkg-config ];
  buildInputs = [ fuse ];

  src = fetchurl {
    url = "https://github.com/libyal/libfvde/releases/download/${version}/libfvde-experimental-${version}.tar.gz";
    sha256 = "ilr6xKKFziAm9HDjy1Et3j9lDNa+QQaa1rZjRcHM12c=";
  };
}
