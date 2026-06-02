#!/bin/sh

SHOW=showdate

catala $SHOW \
    -I ./prologue_france \
    -I ./base_mensuelle_allocations_familiales \
    -I ./prestations_familiales \
    -I ./smic \
    -I ./allocations_familiales \
    --color=always \
    --optimize \
    aides_logement/Aides_logement.catala_fr \
    > aides_logement/Aides_logement.$SHOW

catala $SHOW \
    -I ./prologue_france \
    -I ./base_mensuelle_allocations_familiales \
    -I ./prestations_familiales \
    -I ./smic \
    --color=always \
    --optimize \
    allocations_familiales/Allocations_familiales.catala_fr \
    > allocations_familiales/Allocations_familiales.$SHOW

catala $SHOW \
    --color=always \
    --optimize \
    droit_successions/droit_successions.catala_fr \
    > droit_successions/droit_successions.$SHOW

catala $SHOW \
    --color=always \
    --optimize \
    impot_revenu/impot_revenu.catala_fr \
    > impot_revenu/impot_revenu.$SHOW

catala $SHOW \
    --color=always \
    --optimize \
    us_tax_code/section_121.catala_en \
    > us_tax_code/section_121.$SHOW

exit

# show nested exception depth
../catala/_build/default/compiler/catala.exe show_exc_depth \
    -I ./prologue_france \
    -I ./base_mensuelle_allocations_familiales \
    -I ./prestations_familiales \
    -I ./smic \
    -I ./allocations_familiales \
    --color=always \
    aides_logement/Aides_logement.catala_fr

# show exception structure
../catala/_build/default/compiler/catala.exe exceptions \
    -I ./prologue_france \
    -I ./base_mensuelle_allocations_familiales \
    -I ./prestations_familiales \
    -I ./smic \
    -I ./allocations_familiales \
    --color=always \
    aides_logement/Aides_logement.catala_fr \
    --scope=CalculAllocationLogementAccessionPropriété \
    --variable=montant_forfaitaire_charges | less -R
