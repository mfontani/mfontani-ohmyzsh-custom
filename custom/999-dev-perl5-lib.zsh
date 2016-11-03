# On dev, include repo's lib
if [[ "$HOSTNAME" == "dev1.theregister.co.uk" ]]; then
    export PERL5LIB=lib:/reg/repo/trois/lib:$PERL5LIB
fi
