catala showlist \
    -I ./prologue_france \
    -I ./base_mensuelle_allocations_familiales \
    -I ./prestations_familiales \
    -I ./smic \
    -I ./allocations_familiales \
    --color=always \
    aides_logement/Aides_logement.catala_fr \
    > aides_logement/Aides_logement.showlist

catala showlist \
    -I ./prologue_france \
    -I ./base_mensuelle_allocations_familiales \
    -I ./prestations_familiales \
    -I ./smic \
    --color=always \
    allocations_familiales/Allocations_familiales.catala_fr \
    > allocations_familiales/Allocations_familiales.showlist

catala showlist \
    --color=always \
    droit_successions/droit_successions.catala_fr \
    > droit_successions/droit_successions.showlist

catala showlist \
    --color=always \
    impot_revenu/impot_revenu.catala_fr \
    > impot_revenu/impot_revenu.showlist

catala showlist \
    --color=always \
    us_tax_code/section_121.catala_en \
    > us_tax_code/section_121.showlist
