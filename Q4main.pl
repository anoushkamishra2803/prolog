colour(red).
colour(green).
colour(blue).
colour(yellow).

nei(X,Y):-
colour(X),
colour(Y),
X\= Y.
map(ADS, DE, CH, IT, HU, AT, SI, CZ, SK, PL, HR):-
    ADS = blue,
    nei(AT, HU),
    nei(AT, SI),
    nei(AT, CH),
    nei(AT, DE),
    nei(AT, CZ),
    nei(AT, SK),
    nei(AT, IT),
    nei(ADS, IT),
    nei(ADS, SI),
    nei(ADS, HR),
    nei(CZ, PL),
    nei(CZ, SK),
    nei(CZ, AT),
    nei(CZ, DE),
    nei(DE, PL),
    nei(DE, CZ),
    nei(DE, AT),
    nei(DE, CH),
    nei(PL, SK),
    nei(PL, CZ),
    nei(PL, DE),
    nei(SK, AT),
    nei(SK, HU),
    nei(SK, PL),
    nei(SK, CZ),
    nei(HU, SI),
    nei(HU, HR),
    nei(HU, SK),
    nei(HU, AT),
    nei(SI, HR),
    nei(SI, IT),
    nei(SI, AT),
    nei(SI, HU),
    nei(SI, ADS),
    nei(IT, CH),
    nei(IT, AT),
    nei(IT, SI),
    nei(IT, ADS),
    nei(HR, SI),
    nei(HR, HU),
    nei(HR, ADS).   

