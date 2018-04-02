{ stdenv, fetchgit, autoreconfHook, curl, urweb }:

stdenv.mkDerivation {
  name = "urweb-curl";

  buildInputs = [
    autoreconfHook
    urweb
  ];

  propagatedBuildInputs = [
    curl
  ];

  preConfigure = ''
    export CFLAGS="-I${urweb}/include/urweb"
  '';

  src = ./.;
}
