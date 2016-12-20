with import <nixpkgs> {};
stdenv.mkDerivation {
  name = "cv-env";
  buildInputs = [
    (pkgs.texlive.combine {
      inherit (pkgs.texlive) scheme-basic
        booktabs
        ms # dependency of todonotes
        pgf # dependency of todonotes
        multirow
        tabu
        todonotes
        xcolor # dependency of todonotes
        xkeyval # dependency of todonotes
        varwidth # dependency of tabu
      ;
    })
  ];
}
