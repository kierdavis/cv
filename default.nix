with import <nixpkgs> {};
stdenv.mkDerivation {
  name = "cv";
  src = ./.;
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
  buildPhase = ''
    flags="-halt-on-error -file-line-error -interaction=nonstopmode"
    pdflatex $flags -draftmode cv.tex
    pdflatex $flags cv.tex
  '';
  installPhase = ''
    install -D -m 0644 cv.pdf -t $out
  '';
}
