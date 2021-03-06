# encoding: utf-8
module Slugity
  module Matchers

    @@matchers = {
      # define the default matchers
      default: {

        # symbols
        /\s|\// => '-',
        /\~|～/ => '-',
        /＿/ => '_',
        /\&/ => 'and',
        /\+/ => 'plus',
        /\=/ => 'equals',
        /℡/ => 'tel',
        /™/ => 'tm',
        /℠/ => 'sm',
        /²/ => '2',
        /³/ => '3',

        # a
        /[ÀÁÂÃÄÅàáâãäåĀāĂăĄąᴀ⒜ⒶａǍǎǞǟǠǡǺǻȃȀȁȂȦȧȺḀḁẚẠạẢảẤấẦầẨẩẪẫẬậẮắẰằẲẳẴẵẶặÅɑₐⓐＡ]/ => 'a',
        /[Ꜳꜳ]/ => 'aa',
        /℀/ => 'ac',
        /[ÆæǢǣǼǽᴁᴂ]/ => 'ae',
        /[ꜺꜻꜼꜽ]/ => 'af',
        /[Ꜷꜷ]/ => 'aj',
        /℁/ => 'as',
        /[Ꜵꜵ]/ => 'ao',
        /[Ꜹꜹ]/ => 'av',

        # b
        /[ƀƁƄƅɃᴃḂḃḄḅḆḇℬ⒝ⒷⓑＢｂẞ]/ => 'b',

        # c
        /[ÇçĆćĈĉĊċČčƇƈȻȼᴄḈḉℂ℃℄⒞ⒸⓒＣｃ]/ => 'c',
        /℅/ => 'co',
        /℆/ => 'cu',

        # d
        /[ÐĎďĐđƉƊɗᴅᴆḊḋḌḍḎḏḐḑḒḓ⒟ⒹⓓＤｄ]/ => 'd',
        /ȸ/ => 'db',
        /[ǄǅǆǱǲǳ]/ => 'dz',

        # e
        /[ÈÉÊËèéêëĒēĔĕĖėĘęĚěƐǝȄȅȆȇȨȩɆɇᴇḔḕḖḗḘḙḚḛḜḝẸẹẺẻẼẽẾếỀềỂểỄễỆệₑ℮ℯ⒠ⒺⓔＥｅ]/ => 'e',

        # f
        /[ƑƒḞḟ℉⒡ⒻⓕꜰＦｆ]/ => 'f',

        # g
        /[ĜĝĞğĠġĢģƓǤǥǦǧǴǵɠɡɢḠḡℊ⒢ⒼⓖＧｇ]/ => 'g',

        # h
        /[ĤĥĦħȞȟḢḣḤḥḦḧḨḩḪḫẖℋℌℍℎℏ⒣ⒽⓗＨｈ]/ => 'h',

        # i
        /[ÌÍÎÏìíîïĨĩĪīĬĭĮįƖƗǏǐȈȉȊȋḬḭḮḯ⒤ⒾⓘＩｉ]/ => 'i',
        /[Ĳĳ]/ => 'ij',

        # j
        /[ĴĵǰȷɈɉᴊ⒥ⒿⓙＪｊ]/ => 'j',

        # k
        /[ĶķĸƘƙǨǩᴋḰḱḲḳḴḵK⒦ⓀⓚＫｋ]/ => 'k',

        # l
        /[İıĹĺĻļĽľĿŀŁłȽȾᴌḶḷḸḹḺḻḼḽ⒧ⓁⓛＬｌ]/ => 'l',
        /[Ǉǈǉ]/ => 'lj',

        # m
        /[ɱᴍḾḿṀṁṂṃ⒨ⓂⓜＭｍ]/ => 'm',

        # n
        /[ÑñŃńŅņŇňŉŊŋƝƞǸǹȠᴎṄṅṆṇṈṉṊṋℕ⒩ⓃⓝＮｎ]/ => 'n',
        /[Ƌƌ]/ => 'nd',
        /[Ǌǋǌ]/ => 'nj',

        # o
        /[ÒÓÔÕÖØðòóôõöøŌōŎŏŐőƟƠơǑǒǪǫǬǭǾǿȌȍȎȏȪȫȬȭȮȯȰȱɵᴏṌṍṎṏṐṑṒṓỌọỎỏỐốỒồỔổỖỗỘộỚớỜờỞởỠỡỢợₒ⒪ⓄⓞＯｏ]/ => 'o',
        /[Œœɶ]/ => 'oe',

        # p
        /[ƤƥṔṕṖṗ℗ℙ⒫ⓅⓟＰｐ]/ => 'p',
        /℞/ => 'px',

        # q
        /[ƼƽɊɋℚ⒬ⓆⓠＱｑ]/ => 'q',
        /ȹ/ => 'qp',

        # r
        /[ŔŕŖŗŘřƦȐȑȒȓɌɍṘṙṚṛṜṝṞṟℛℜℝ℟⒭ⓇⓡＲｒ]/ => 'r',

        # s
        /[ŚśŜŝŞşŠšſƧƨƩȘșȿṠṡṢṣṤṥṦṧṨṩ⒮ⓈⓢꜱＳｓ]/ => 's',
        /[ß]/ => 'ss',

        # t
        /[ŢţŤťŦŧƪƫƬƭƮȚțṪṫṬṭṮṯṰṱẗ⒯ⓉⓣＴｔ]/ => 't',
        /[Þþ]/ => 'th',

        # u
        /[µÙÚÛÜùúûüŨũŪūŬŭŮůŰűŲųƯưƱƲǓǔǕǖǗǘǙǚǛǜȕȖȗɄṲṳṴṵṶṷṸṹṺṻỤụỦủỨứỪừỬửỮữỰự⒰ⓊⓤＵｕȔ]/ => 'u',

        # v
        /[ɅṼṽṾṿ⒱ⓋⓥＶｖ]/ => 'v',

        # w
        /[ŴŵƜɯẀẁẂẃẄẅẆẇẈẉẘ⒲ⓌⓦＷｗ]/ => 'w',

        # x
        /[×ẊẋẌẍₓ⒳ⓍⓧＸｘ]/ => 'x',

        # y
        /[ÝýÿŶŷŸȲȳɏẎẏẙỲỳỴỵỶỷỸỹ⒴ⓎⓨＹｙɎ]/ => 'y',

        # z
        /[ŹźŻżŽžƵƶƷȤȥɀẐẑẒẓẔẕℤ⒵ⓏⓩＺｚ]/ => 'z',

        # numbers
        /⓪/ => '0',
        /⒐/ => '9',
        /⒑/ => '10',
        /⒒/ => '11',
        /⒓/ => '12',
        /⒔/ => '13',
        /⒕/ => '14',
        /⒖/ => '15',
        /⒗/ => '16',
        /⒘/ => '17',
        /⒙/ => '18',
        /⒚/ => '19',
        /⒛/ => '20',
      }
    }

  end
end