herb(kaluduru).
herb(kumbuk).
herb(tippile).
herb(ginger).
herb(coriender).
herb(pathpadagam).
herb(beli_leaves).
herb(vishnukanthi_leaves).
herb(aralu_leaves).
herb(mukunuwanna).
herb(bata_dalu_leaves).
herb(elabudu_leaves).
herb(akkapana_leaves).
herb(penala_leaves).

disease(kaluduru,semgedi).
disease(kumbuk,pain_in_heart).
disease(tippili,pain_in_heart).
disease(ginger,normal_fever).
disease(ginger,bade_kakkuma).
disease(coriender,normal_fever).
disease(pathpadagam,normal_fever).
disease(beli_leaves,gastric).
disease(vishnukanthi_leaves,gastric).
disease(vishnukanthi_leaves,constipation).
disease(aralu_leaves,constipation).
disease(mukunuwanna,hemorrhoids).
disease(bata_dalu_leaves,worm_diseases).
disease(elabudu_leaves,worm_diseases).
disease(akkapana_leaves,cystitis).
disease(akkapana_leaves,uninary_stones).
disease(penala_leaves,uninary_stones).

treatment(kaluduru, 'semgedi=kaluduru grind pottani and put it in the throat to turn phlegm ').
treatment(kumbuk, 'pain in heart=drink one teaspoon of kubuk powder with raw milk').
treatment(tippili,'pain in heart=tippili is fried in a pan, crushed and mixed with honey and rubbed on the tongue').
treatment(ginger, 'normal fever=ginger boiled with coriander and drink with sugar').
treatment(ginger,'normal_fever=ginger and pathpadagam boiled well and drink' ).
treatment(coriander, 'normal fever=ginger boiled with coriander and drink with sugar').

treatment(pathpadagam, 'normal_fever=ginger and pathpadagam boiled well and drink').
treatment(ginger, 'bade_kakkuma=ginger puree, lime puree and salt mixed well and drink').
treatment(beli_leaves, 'gastric=beli leaves boiled well and drink').
treatment(vishnukanthi_leaves, 'gastric=vishnukanthi leaves boiled well and drink').
treatment(aralu_leaves, 'constipation=aralu leaves boiled well and drink with sukiri').
treatment(vishnukanthi_leaves, 'constipation=vishnukanthi leaves boiled well and drink').
treatment(mukunuwanna, 'hemorrhoids=mukunuwanna and mung bean boiled and drink').
treatment(bata_dalu_leaves, 'worm_diseases=bata dalu mallum').
treatment(elabudu_leaves, 'worm_diseases=elabudu leaves mallum').
treatment(akkapana_leaves, 'cystitis=drinking akkapana leaves juice').
treatment(penala_leaves, 'cystitis=the leaves of the penala are cropped,squeezed, and the drink').
treatment(akkapana_leaves, 'uninary_stones= kekiri seeds and akkapana boiled water with honey and drink').

has_disease(X, Disease) :- disease(X, Disease).

prompt_condition :-
    write('Enter the herb name: '),
    read(Condition),
    get_disease(Condition),
    get_treatment(Condition).

get_disease(Condition) :-
    has_disease(Condition, Disease),
    write('disease: '), write(Disease), nl,
    fail.

get_treatment(Condition) :-
    treatment(Condition, Treatment),
    write('Treatment: '), write(Treatment), nl,
    fail.

get_disease(_).
get_treatment(_).




