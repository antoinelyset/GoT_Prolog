parent(rickard_stark, eddard_stark).
parent(catelyn_tully, sansa_stark).
parent(lysa_tully, robert_arryn).
parent(kevan_lannister, lancel_lannister).
parent(stannis_baratheon, shireen_baratheon).
parent(rhaegar_targaryen, rhaenys_targaryen).
parent(balon_greyjoy, maron_greyjoy).
parent(rickard_stark, brandon_stark).
parent(catelyn_tully, arya_stark).
parent(jon_arryn, robert_arryn).
parent(cersei_lannister, joffrey_baratheon).
parent(selyse_florent, shireen_baratheon).
parent(rhaegar_targaryen, aegon_targaryen).
parent(balon_greyjoy, asha_greyjoy).
parent(rickard_stark, benjen_stark).
parent(catelyn_tully, bran_stark).
parent(tytos_lannister, tywin_lannister).
parent(cersei_lannister, myrcella_baratheon).
parent(jaehaerys_targaryen, aerys_targaryen).
parent(elia_martell, rhaenys_targaryen).
parent(balon_greyjoy, theon_greyjoy).
parent(eddard_stark, jon_snow).
parent(catelyn_tully, rickon_stark).
parent(tytos_lannister, kevan_lannister).
parent(cersei_lannister, tommen_baratheon).
parent(jaehaerys_targaryen, rhaella_targaryen).
parent(elia_martell, aegon_targaryen).
parent(alannys_harlaw, rodrik_greyjoy).
parent(eddard_stark, robb_stark).
parent(hoster_tully, catelyn_tully).
parent(tywin_lannister, cersei_lannister).
parent(robert_baratheon, joffrey_baratheon).
parent(aerys_targaryen, rhaegar_targaryen).
parent(quellon_greyjoy, balon_greyjoy).
parent(alannys_harlaw, maron_greyjoy).
parent(eddard_stark, sansa_stark).
parent(hoster_tully, edmure_tully).
parent(tywin_lannister, jamie_lannister).
parent(robert_baratheon, myrcella_baratheon).
parent(aerys_targaryen, viserys_targaryen).
parent(quellon_greyjoy, euron_greyjoy).
parent(alannys_harlaw, asha_greyjoy).
parent(eddard_stark, arya_stark).
parent(hoster_tully, lysa_tully).
parent(tywin_lannister, tyrion_lannister).
parent(robert_baratheon, tommen_baratheon).
parent(aerys_targaryen, daenerys_targaryen).
parent(quellon_greyjoy, victarion_greyjoy).
parent(alannys_harlaw, theon_greyjoy).
parent(eddard_stark, bran_stark).
parent(minisa_whent, catelyn_tully).
parent(joanna_lannister, cersei_lannister).
parent(steffon_baratheon, robert_baratheon).
parent(rhaella_targaryen, rhaegar_targaryen).
parent(quellon_greyjoy, urrigon_greyjoy).
parent(eddard_stark, rickon_stark).
parent(minisa_whent, edmure_tully).
parent(joanna_lannister, jamie_lannister).
parent(steffon_baratheon, stannis_baratheon).
parent(rhaella_targaryen, viserys_targaryen).
parent(quellon_greyjoy, aeron_greyjoy).
parent(catelyn_tully, robb_stark).
parent(minisa_whent, lysa_tully).
parent(joanna_lannister, tyrion_lannister).
parent(steffon_baratheon, renly_baratheon).
parent(rhaella_targaryen, daenerys_targaryen).
parent(balon_greyjoy, rodrik_greyjoy).
sex(catelyn_tully, f).
sex(jon_snow, m).
sex(arya_stark, f).
sex(hoster_tully, m).
sex(lysa_tully, f).
sex(tytos_lannister, m).
sex(kevan_lannister, m).
sex(tyrion_lannister, m).
sex(myrcella_baratheon, f).
sex(steffon_baratheon, m).
sex(shireen_baratheon, f).
sex(aerys_targaryen, m).
sex(elia_martell, f).
sex(viserys_targaryen, m).
sex(balon_greyjoy, m).
sex(urrigon_greyjoy, m).
sex(maron_greyjoy, m).
sex(alannys_harlaw, f).
sex(rickard_stark, m).
sex(brandon_stark, m).
sex(robb_stark, m).
sex(bran_stark, m).
sex(minisa_whent, f).
sex(jon_arryn, m).
sex(tywin_lannister, m).
sex(cersei_lannister, f).
sex(robert_baratheon, m).
sex(tommen_baratheon, m).
sex(stannis_baratheon, m).
sex(renly_baratheon, m).
sex(rhaella_targaryen, f).
sex(rhaenys_targaryen, f).
sex(daenerys_targaryen, f).
sex(euron_greyjoy, m).
sex(aeron_greyjoy, m).
sex(asha_greyjoy, f).
sex(eddard_stark, m).
sex(benjen_stark, m).
sex(sansa_stark, f).
sex(rickon_stark, m).
sex(edmure_tully, m).
sex(robert_arryn, m).
sex(joanna_lannister, f).
sex(jamie_lannister, m).
sex(joffrey_baratheon, m).
sex(lancel_lannister, m).
sex(selyse_florent, f).
sex(jaehaerys_targaryen, m).
sex(rhaegar_targaryen, m).
sex(aegon_targaryen, m).
sex(quellon_greyjoy, m).
sex(victarion_greyjoy, m).
sex(rodrik_greyjoy, m).
sex(theon_greyjoy, m).

descendants_of(X, Y) :- parent(X, Y) ; (parent(X, Z), parent(Z, Y)), X \== Y.

ancestors_of(X, Y) :- parent(Y, X) ; (parent(Z, X), parent(Y, Z)), X \== Y.

brothers_of(X, Y) :- (parent(Z,Y), parent(Z,X)), sex(Y, m), X \== Y.

sisters_of(X, Y) :- (parent(Z,Y), parent(Z,X)), sex(Y, f), X \== Y.

uncles_of(X, Y) :- ancestors_of(X, Z), brothers_of(Z, Y).

aunts_of(X, Y) :- ancestors_of(X, Z), sisters_of(Z, Y).

cousins_of(X, Y) :- (aunts_of(X, Z), descendants_of(Z, Y)) ; (uncles_of(X, Z), descendants_of(Z, Y)).



