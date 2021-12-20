import 'package:flutter/cupertino.dart';

class WordList{
  String eng;
  String uzb;
  String synonyms;
  String synonymsUz;

  WordList(this.eng, this.uzb, this.synonyms, this.synonymsUz);
}

List list = [
  WordList("as", "sifatida","at the time that, in the act of, just as, during the time that, in the process of", "topilmadi"),
  WordList("I", "Men", "me, my", "topilmadi"),
  WordList("cross", "kesib", "annoyed, crusty, pettish, caviling, peeved", "topilmadi"),
  WordList("farm", "ferma", "esate, field, garden, orchard, freehold, pasture, grange, holding", "fermer xo'jaligi, oilaviy ferma, bozor bog'i, tomorqa"),
  WordList("hard", "qattiq", "solid, strong, tough, conentrated, dense,firm", "qattiq - (modda yoki buyumdan) noqulay sharoitlarga yoki qo'pol yoki beparvo ishlov berishga bardosh beradigan darajada kuchli."),
  WordList("continent", "qit'a", "abstinent, ascetic, celibate, austere, bridled", "qit'a - shakllanishi yoki qit'aga tegishli bo'lishi."),
  WordList("claim", "talab", "call, interest, petition, plea, request, assertion, allegation, application", "talab - zarur yoki xohlagan narsa."),
  WordList("anger", "g'azab", "acrimony, resentment, petulance, animosty, temper, pique, violence", "g'azab - achchiqlik yoki xafagarchilik, ayniqsa uzoq vaqt turganda."),
  WordList("plural", "ko'plik", "multiple, many, not singular, dual, not alone, numerous", "ko'plik - soni bir nechta."),
  WordList("nose", "burun","beak, snout, nares, nostrils, snoot", "burun - odamning yoki hayvonning yuzidagi og'iz ustidagi burun teshiklaridan iborat va nafas olish va hidlash uchun ishlatiladigan qism"),
  WordList("salt", "tuz", "flavoring, spice, alkali, brine", "tuz - singdirilgan, tuzlangan yoki tatib ko'rilgan tuz."),
  WordList("prepare", "tayyorlash","arrange, assemble, brace, develop", "tayyorlash - foydalanishga yoki ko'rib chiqishga tayyor (biror narsa)."),
  WordList("broad", "keng", "deep, full, expensive, large, fast, roomy", "keng - keng maydonda yoki keng oraliqda."),
  WordList("require", "talab", "lack, wish, hurting for, crave, depend upon", "talab - zarur yoki xohlagan narsa."),
  WordList("repeat", "takrorlash", "echo, recite, rehash, reitareate, renew, replay", "takrorlash - takrorlang yoki nusxa ko'chiring, xuddi shu turdagi boshqasini hosil qiling."),
  WordList("gray", "kulrang", "drab, dusty, grey, lead, neutral", "kulrang - kulrang yoki kulrang sochli."),
];
