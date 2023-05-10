exceptionLibrary = {
'01040711':['maj7 b9', 0], 
'01020508':['maj7 b9', 1], 
'04050609':['maj7 b9', 2], 
'03070809':['maj7 b9', 3], 
'03061011':['maj7 b9', 4], 


'02040711':['maj7 add9', 0],
'01030508':['maj7 add9', 1],
'04050709':['maj7 add9', 2],
'03070810':['maj7 add9', 3],


'01040710':['dom7 b9', 0],
'02030609':['dom7 b9', 1],
'03050609':['dom7 b9', 2],
'03060809':['dom7 b9', 3],
'03060911':['dom7 b9', 4],


'01040610':['dom7 s11', 3],
'02030608':['dom7 s11', 4],


'02040710':['dom9', 0],
'02040609':['dom9', 1],
'03050709':['dom9', 2],
'03060810':['dom9', 3],
'02050810':['dom9', 4],

'04050611':['maj9 adds9', 0],
'01050607':['maj9 adds9', 1],
'05061011':['maj9 adds9', 2],
'01020708':['maj9 adds9', 4],
'01060711':['maj9 adds9', 3],


'04061011':['dom7 s11 add11', 2],
'01050711':['dom7 s11 add11', 3],
'01020608':['dom7 s11 add11', 4]
}




_2noteChordLibrary = { 
# interval content :[chord type, root index]
'01':['maj7', 1], '02':['dom7', 1], '03':['min', 0],
'04':['maj', 0], '05':['maj', 1], '06':['dom7', 0], 
'07':['maj', 0], '08':['maj', 1], '09':['min', 1],
'10':['dom7', 0], '11':['maj7', 0]

}

intervalLibrary = {
# interval content :[chord type, root index]
'01':['minor second'], '02':['major second'], '03':['minor third'],
'04':['major third'], '05':['perfect fourth'], '06':['tritone'], 
'07':['perfect fifth'], '08':['minor sixth'], '09':['major sixth'],
'10':['minor seventh'], '11':['major seventh']


}

_3noteChordLibrary = { 
# interval content :[chord type, root index]
'0102':['maj7b9', 1], '0103':['maj9',1],'0104':['minmaj7',1],'0105':['maj7',1], 
'0106':['dom7s11', 2], '0107':['dom7b9', 0], '0108': ['maj7', 1], 
'0109': ['maj7s5', 1], '0110': ['min9', 2], '0111':['maj7b9', 0],

'0203':['min9', 0], '0204':['dom9', 0], '0205':['min7', 1], '0206':['dom7', 1], 
'0207':['dom9', 0], '0208':['halfdim7', 1], '0209':['dom7', 1], '0210':['dom9', 0],
'0211':['maj9', 0],

'0304':['maj7s5', 2], '0305':['dom7', 2], '0306':['dim', 0], '0307':['min', 0], 
'0308':['maj', 1], '0309':['dim', 2], '0310':['min7', 0], '0311':['minmaj7', 0],

'0405':['maj7', 2], '0406':['halfdim7', 2], '0407':['maj', 0], '0408':['aug', 0], 
'0409':['min', 2],'0410':['dom7', 0], '0411':['maj7', 0],

'0506':['dom7b9', 1], '0507':['dom9', 1], '0508':['min', 1], '0509':['maj', 1], 
'0510':['dom9', 2], '0511':['dom7s11', 1],

'0607':['dom7s11', 0], '0608':['dom7', 2], '0609':['dim', 1], '0610':['halfdim7', 0],
'0611':['dom7b9', 2], 

'0708':['maj7', 2], '0709':['min9', 2], '0710':['dom7', 0], '0711':['maj7', 0], 

'0809':['minmaj7', 2], '0810':['dom9', 2], '0811':['maj7s5', 0],	

'0910':['maj9', 2], '0911':['min9', 1],

'1011':['maj7b9', 2]

}




_4noteChordLibrary = { 
'010203':['maj7b9s13', 2],
'010204':['minmaj7b9', 1],
'010205':['maj7b9', 1],
'010206':['maj7s13', 2],
'010207':['dimmaj7b9', 1],
'010208':['maj7b9', 1],
'010209':['maj7s13', 2],
'010210':['maj7b9add13', 1],
'010211':['maj7b9s13', 1],
###########################
'010304':['minmaj9', 1],
'010305':['maj9', 1],
'010306':['halfdim7b9', 1],
'010307':['min7b9', 0],
'010308':['maj9', 1],
'010309':['dim7b9', 0],
'010310':['min7b9', 0],
'010311':['minmaj7b9', 0],
###########################
'010405':['maj7s9', 1],
'010406':['dom7s11', 3],
'010407':['dom7b9', 0],
'010408':['minmaj7', 1],
'010409':['dom7s9', 3],
'010410':['dom7b9', 0],
'010411':['maj7b9', 0],
###########################
'010506':['maj11', 1],
'010507':['maj7s11', 1],
'010508':['maj7', 1],
'010509':['maj7s5', 1],
'010510':['min9', 3],
'010511':['maj7s13', 1],
###########################
'010607':['dimmaj7add9', 3],
'010608':['dom11', 3],
'010609':['dim7b9', 0],
'010610':['halfdim7b9', 0],
'010611':['dimmaj7b9', 0],
###########################
'010708':['maj11', 3],
'010709':['dom7s9', 3],
'010710':['dom7b9', 0],
'010711':['maj7s9', 0],
###########################
'010809':['maj7s9', 3],
'010810':['min9', 3],
'010811':['maj7s13', 1],
###########################
'010910':['minmaj9', 3],
'010911':['maj7b9add13', 0],
###########################
'011011':['maj7b9s13', 0],
###########################
###########################
###########################
'020304':['maj7b9add13', 2],
'020305':['min7b9', 1],
'020306':['dom7b9', 1],
'020307':['min9', 0],
'020308':['halfdim7b9', 1],
'020309':['dom7b9', 1],
'020310':['min9', 0],
'020311':['minmaj7add9', 0],
###########################
'020405':['min9', 0],
'020406':['dom9', 1],
'020407':['dom9', 0],
'020408':['dom7s5', 2],
'020409':['dom9', 1],
'020410':['dom9', 0],
'020411':['maj9', 0],
###########################
'020506':['dom7s9', 1],
'020507':['dom11', 3],
'020508':['halfdim7', 1],
'020509':['min7', 1],
'020510':['dom9', 3],
'020511':['halfdim7b9', 3],
###########################
'020607':['dom11', 1],
'020608':['dom7s11', 1],
'020609':['dom7', 1],
'020610':['dom7s5', 1],
'020611':['min7b9', 3],
###########################
'020708':['maj7s11', 3],
'020709':['dom11', 1],
'020710':['dom9', 0],
'020711':['maj9', 0],
###########################
'020809':['dom7s11', 1],
'020810':['dom9', 3],
'020811':['dim7b9', 3],
###########################
'020910':['maj9', 3],
'020911':['min7b9', 3],
###########################
'021011':['minmaj7b9', 3],
###########################
'030405':['maj7s13', 3],
'030406':['dim7b9', 1],
'030407':['dom7s9', 0],
'030408':['maj7s5', 2],
'030409':['dim7b9', 1],
'030410':['dom7s9', 0],
'030411':['maj7s9', 0],
###########################
'030506':['dom7b9', 2],
'030507':['dom9', 2],
'030508':['min7', 2],
'030509':['dom7', 2],
'030510':['dom11', 2],
'030511':['dom7s11', 2],
###########################
'030607':['dim7b9', 2],
'030608':['dom7', 3],
'030609':['dim7', 0],
'030610':['halfdim7', 0],
'030611':['dom7b9', 3],
###########################
'030708':['maj7', 3],
'030709':['halfdim7', 3],
'030710':['min7', 0],
'030711':['minmaj7', 0],
###########################
'030809':['dom7b9', 2],
'030810':['dom9', 2],
'030811':['dom7s9', 2],
###########################
'030910':['halfdim7b9', 2],
'030911':['dom7b9', 3],
###########################
'031011':['maj7b9', 3],
###########################
'040506':['maj7b9', 2],
'040507':['maj9', 2],
'040508':['minmaj7', 2],
'040509':['maj7', 2],
'040510':['dom11', 0],
'040511':['maj11', 0],
###########################
'040607':['halfdim7b9', 2],
'040608':['dom7s5', 3],
'040609':['halfdim7', 2],
'040610':['dom7s11', 0],
'040611':['maj7s11', 0],
###########################
'040708':['maj7s5', 3],
'040709':['min7', 3],
'040710':['dom7', 0],
'040711':['maj7', 0],
###########################
'040809':['minmaj7', 3],
'040810':['dom7s5', 0],
'040811':['maj7s5', 0],
###########################
'040910':['min7b9', 2],
'040911':['min9', 2],
###########################
'041011':['maj7s13', 0],
###########################
###########################
###########################
'050607':['dimmaj7b9', 2],
'050608':['min7b9', 1],
'050609':['dom7b9', 1],
'050610':['maj7s11', 2],
'050611':['dimmaj7add9', 0],
###########################
'050708':['min9', 1],
'050709':['dom9', 1],
'050710':['dom11', 0],
'050711':['dom11', 2],
###########################
'050809':['dom7s9', 1],
'050810':['dom9', 3],
'050811':['dim7b9', 3],
###########################
'050910':['maj9', 3],
'050911':['halfdim7b9', 3],
###########################
'051011':['dimmaj7b9', 3],
###########################
###########################
###########################
'060708':['maj7s13', 3],
'060709':['halfdim7b9', 1],
'060710':['dom7s11', 0],
'060711':['maj11', 2],
###########################
'060809':['dom7b9', 2],
'060810':['dom9', 2],
'060811':['dom7s9', 2],
###########################
'060910':['dim7b9', 2],
'060911':['domb9', 3],
###########################
'061011':['maj7b9', 3],
###########################
###########################
###########################
'070809':['maj7b9', 2],
'070810':['maj9', 2],
'070811':['maj7s9', 2],
###########################
'070910':['min7b9', 2],
'070911':['min9', 2],
###########################
'071011':['maj7s13', 0],
###########################
###########################
###########################
'080910':['minmaj7b9', 2],
'080911':['minmaj9', 2],
###########################
'081011':['maj7b9add13', 3],
###########################
###########################
###########################
'091011':['maj7b9s13', 2]
}

extensionsLibrary = {
'1':'b9', '2':'add9', '3':'s9', '4':'+9',
'5':'add11', '6':'s11', '7':'','8':'b13',
'9':'add13', '10':'s13', '11':'maj7'
}

