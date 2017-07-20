# On dev, include repo's lib
# if [[ "$HOSTNAME" == "dev1.theregister.co.uk" ]]; then
#     export PERL5LIB=lib:/reg/repo/trois/lib:$PERL5LIB
# fi

if [[ -d ~/perl5/lib/perl5 ]]; then
    eval $( perl -I ~/perl5/lib/perl5/ -Mlocal::lib)
fi
