# CPANM options to use only local mirror
if [[ "$MFONTANI_ZSH_ON_MAC" ]]; then
    export PERL_CPANM_OPT="--mirror-only --mirror /STUFF/minicpan"
fi
