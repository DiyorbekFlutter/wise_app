import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

@immutable
sealed class SvgIcons {
  static const SvgIcon sms = SvgIcon("assets/icons/SMS.svg");
  static const SvgIcon whatsApp = SvgIcon("assets/icons/WhatsApp.svg");
  static const SvgIcon arrowDown = SvgIcon("assets/icons/arrow-down.svg");
  static const SvgIcon arrowLeft = SvgIcon("assets/icons/arrow-left.svg");
  static const SvgIcon arrowRight = SvgIcon("assets/icons/arrow-right.svg");
  static const SvgIcon arrowUp = SvgIcon("assets/icons/arrow-up.svg");
  static const SvgIcon autoConversions = SvgIcon("assets/icons/auto-conversions.svg");
  static const SvgIcon bankNoteArrow = SvgIcon("assets/icons/bank-note-arrow.svg");
  static const SvgIcon bankNote = SvgIcon("assets/icons/bank-note.svg");
  static const SvgIcon bank = SvgIcon("assets/icons/bank.svg");
  static const SvgIcon bills = SvgIcon("assets/icons/bills.svg");
  static const SvgIcon briefcase = SvgIcon("assets/icons/briefcase.svg");
  static const SvgIcon calendar = SvgIcon("assets/icons/calendar.svg");
  static const SvgIcon call = SvgIcon("assets/icons/call.svg");
  static const SvgIcon card = SvgIcon("assets/icons/card.svg");
  static const SvgIcon check = SvgIcon("assets/icons/check.svg");
  static const SvgIcon chevronDown = SvgIcon("assets/icons/chevron-down.svg");
  static const SvgIcon chevronLeft = SvgIcon("assets/icons/chevron-left.svg");
  static const SvgIcon chevronRight = SvgIcon("assets/icons/chevron-right.svg");
  static const SvgIcon chevronUp = SvgIcon("assets/icons/chevron-up.svg");
  static const SvgIcon clock = SvgIcon("assets/icons/clock.svg");
  static const SvgIcon closeCircle = SvgIcon("assets/icons/close-circle.svg");
  static const SvgIcon close = SvgIcon("assets/icons/close.svg");
  static const SvgIcon convert = SvgIcon("assets/icons/convert.svg");
  static const SvgIcon directDebits = SvgIcon("assets/icons/direct-debits.svg");
  static const SvgIcon documents = SvgIcon("assets/icons/documents.svg");
  static const SvgIcon download = SvgIcon("assets/icons/download.svg");
  static const SvgIcon eating = SvgIcon("assets/icons/eating.svg");
  static const SvgIcon email = SvgIcon("assets/icons/email.svg");
  static const SvgIcon entertainment = SvgIcon("assets/icons/entertainment.svg");
  static const SvgIcon eyeOff = SvgIcon("assets/icons/eye-off.svg");
  static const SvgIcon eye = SvgIcon("assets/icons/eye.svg");
  static const SvgIcon filters = SvgIcon("assets/icons/filters.svg");
  static const SvgIcon andorra = SvgIcon("assets/icons/flags/Andorra.svg");
  static const SvgIcon argentina = SvgIcon("assets/icons/flags/Argentina.svg");
  static const SvgIcon australia = SvgIcon("assets/icons/flags/Australia.svg");
  static const SvgIcon austria = SvgIcon("assets/icons/flags/Austria.svg");
  static const SvgIcon bahrain = SvgIcon("assets/icons/flags/Bahrain.svg");
  static const SvgIcon bangladesh = SvgIcon("assets/icons/flags/Bangladesh.svg");
  static const SvgIcon belgium = SvgIcon("assets/icons/flags/Belgium.svg");
  static const SvgIcon botswana = SvgIcon("assets/icons/flags/Botswana.svg");
  static const SvgIcon brazil = SvgIcon("assets/icons/flags/Brazil.svg");
  static const SvgIcon brunei = SvgIcon("assets/icons/flags/Brunei.svg");
  static const SvgIcon bulgaria = SvgIcon("assets/icons/flags/Bulgaria.svg");
  static const SvgIcon canada = SvgIcon("assets/icons/flags/Canada.svg");
  static const SvgIcon chile = SvgIcon("assets/icons/flags/Chile.svg");
  static const SvgIcon china = SvgIcon("assets/icons/flags/China.svg");
  static const SvgIcon colombia = SvgIcon("assets/icons/flags/Colombia.svg");
  static const SvgIcon costaRica = SvgIcon("assets/icons/flags/Costa Rica.svg");
  static const SvgIcon croatia = SvgIcon("assets/icons/flags/Croatia.svg");
  static const SvgIcon cyprusFlag = SvgIcon("assets/icons/flags/Cyprus flag.svg");
  static const SvgIcon czechia = SvgIcon("assets/icons/flags/Czechia.svg");
  static const SvgIcon denmark = SvgIcon("assets/icons/flags/Denmark.svg");
  static const SvgIcon egypt = SvgIcon("assets/icons/flags/Egypt.svg");
  static const SvgIcon estonia = SvgIcon("assets/icons/flags/Estonia.svg");
  static const SvgIcon europe = SvgIcon("assets/icons/flags/Europe.svg");
  static const SvgIcon finland = SvgIcon("assets/icons/flags/Finland.svg");
  static const SvgIcon france = SvgIcon("assets/icons/flags/France.svg");
  static const SvgIcon georgia = SvgIcon("assets/icons/flags/Georgia.svg");
  static const SvgIcon germany = SvgIcon("assets/icons/flags/Germany.svg");
  static const SvgIcon ghana = SvgIcon("assets/icons/flags/Ghana.svg");
  static const SvgIcon greece = SvgIcon("assets/icons/flags/Greece.svg");
  static const SvgIcon hongKong = SvgIcon("assets/icons/flags/Hong Kong.svg");
  static const SvgIcon hungary = SvgIcon("assets/icons/flags/Hungary.svg");
  static const SvgIcon iceland = SvgIcon("assets/icons/flags/Iceland.svg");
  static const SvgIcon india = SvgIcon("assets/icons/flags/India.svg");
  static const SvgIcon indonesia = SvgIcon("assets/icons/flags/Indonesia.svg");
  static const SvgIcon ireland = SvgIcon("assets/icons/flags/Ireland.svg");
  static const SvgIcon isleOfMan = SvgIcon("assets/icons/flags/Isle of Man.svg");
  static const SvgIcon israel = SvgIcon("assets/icons/flags/Israel.svg");
  static const SvgIcon italy = SvgIcon("assets/icons/flags/Italy.svg");
  static const SvgIcon jamaica = SvgIcon("assets/icons/flags/Jamaica.svg");
  static const SvgIcon japan = SvgIcon("assets/icons/flags/Japan.svg");
  static const SvgIcon kenya = SvgIcon("assets/icons/flags/Kenya.svg");
  static const SvgIcon kuwait = SvgIcon("assets/icons/flags/Kuwait.svg");
  static const SvgIcon laos = SvgIcon("assets/icons/flags/Laos.svg");
  static const SvgIcon latvia = SvgIcon("assets/icons/flags/Latvia.svg");
  static const SvgIcon lesotho = SvgIcon("assets/icons/flags/Lesotho.svg");
  static const SvgIcon liechtenstein = SvgIcon("assets/icons/flags/Liechtenstein.svg");
  static const SvgIcon lithuania = SvgIcon("assets/icons/flags/Lithuania.svg");
  static const SvgIcon luxembourg = SvgIcon("assets/icons/flags/Luxembourg.svg");
  static const SvgIcon malaysia = SvgIcon("assets/icons/flags/Malaysia.svg");
  static const SvgIcon malta = SvgIcon("assets/icons/flags/Malta.svg");
  static const SvgIcon mauritius = SvgIcon("assets/icons/flags/Mauritius.svg");
  static const SvgIcon mexico = SvgIcon("assets/icons/flags/Mexico.svg");
  static const SvgIcon monaco = SvgIcon("assets/icons/flags/Monaco.svg");
  static const SvgIcon morocco = SvgIcon("assets/icons/flags/Morocco.svg");
  static const SvgIcon mozambique = SvgIcon("assets/icons/flags/Mozambique.svg");
  static const SvgIcon namibia = SvgIcon("assets/icons/flags/Namibia.svg");
  static const SvgIcon nepal = SvgIcon("assets/icons/flags/Nepal.svg");
  static const SvgIcon netherlands = SvgIcon("assets/icons/flags/Netherlands.svg");
  static const SvgIcon newZealand = SvgIcon("assets/icons/flags/New Zealand.svg");
  static const SvgIcon nigeria = SvgIcon("assets/icons/flags/Nigeria.svg");
  static const SvgIcon noFlag = SvgIcon("assets/icons/flags/No Flag.svg");
  static const SvgIcon norway = SvgIcon("assets/icons/flags/Norway.svg");
  static const SvgIcon oman = SvgIcon("assets/icons/flags/Oman.svg");
  static const SvgIcon pakistan = SvgIcon("assets/icons/flags/Pakistan.svg");
  static const SvgIcon panama = SvgIcon("assets/icons/flags/Panama.svg");
  static const SvgIcon peru = SvgIcon("assets/icons/flags/Peru.svg");
  static const SvgIcon philippines = SvgIcon("assets/icons/flags/Philippines.svg");
  static const SvgIcon poland = SvgIcon("assets/icons/flags/Poland.svg");
  static const SvgIcon portugal = SvgIcon("assets/icons/flags/Portugal.svg");
  static const SvgIcon qatar = SvgIcon("assets/icons/flags/Qatar.svg");
  static const SvgIcon romania = SvgIcon("assets/icons/flags/Romania.svg");
  static const SvgIcon russia = SvgIcon("assets/icons/flags/Russia.svg");
  static const SvgIcon sanMarino = SvgIcon("assets/icons/flags/San Marino.svg");
  static const SvgIcon saudiArabia = SvgIcon("assets/icons/flags/Saudi Arabia.svg");
  static const SvgIcon singapore = SvgIcon("assets/icons/flags/Singapore.svg");
  static const SvgIcon slovakia = SvgIcon("assets/icons/flags/Slovakia.svg");
  static const SvgIcon slovenia = SvgIcon("assets/icons/flags/Slovenia.svg");
  static const SvgIcon southAfrica = SvgIcon("assets/icons/flags/South Africa.svg");
  static const SvgIcon southKorea = SvgIcon("assets/icons/flags/South Korea.svg");
  static const SvgIcon spain = SvgIcon("assets/icons/flags/Spain.svg");
  static const SvgIcon sriLanka = SvgIcon("assets/icons/flags/Sri Lanka.svg");
  static const SvgIcon sweden = SvgIcon("assets/icons/flags/Sweden.svg");
  static const SvgIcon switzerland = SvgIcon("assets/icons/flags/Switzerland.svg");
  static const SvgIcon taiwan = SvgIcon("assets/icons/flags/Taiwan.svg");
  static const SvgIcon tanzania = SvgIcon("assets/icons/flags/Tanzania.svg");
  static const SvgIcon thailand = SvgIcon("assets/icons/flags/Thailand.svg");
  static const SvgIcon turkey = SvgIcon("assets/icons/flags/Turkey.svg");
  static const SvgIcon turkmenistan = SvgIcon("assets/icons/flags/Turkmenistan.svg");
  static const SvgIcon uganda = SvgIcon("assets/icons/flags/Uganda.svg");
  static const SvgIcon ukraine = SvgIcon("assets/icons/flags/Ukraine.svg");
  static const SvgIcon unitedArabEmirates = SvgIcon("assets/icons/flags/United Arab Emirates.svg");
  static const SvgIcon unitedKingdom = SvgIcon("assets/icons/flags/United Kingdom.svg");
  static const SvgIcon unitedStates = SvgIcon("assets/icons/flags/United States.svg");
  static const SvgIcon uruguay = SvgIcon("assets/icons/flags/Uruguay.svg");
  static const SvgIcon vaticanCity = SvgIcon("assets/icons/flags/Vatican City.svg");
  static const SvgIcon vietnam = SvgIcon("assets/icons/flags/Vietnam.svg");
  static const SvgIcon zambia = SvgIcon("assets/icons/flags/Zambia.svg");
  static const SvgIcon svgexport41 = SvgIcon("assets/icons/flags/svgexport-41.svg");
  static const SvgIcon gift = SvgIcon("assets/icons/gift.svg");
  static const SvgIcon grocery = SvgIcon("assets/icons/grocery.svg");
  static const SvgIcon heart = SvgIcon("assets/icons/heart.svg");
  static const SvgIcon help = SvgIcon("assets/icons/help.svg");
  static const SvgIcon home = SvgIcon("assets/icons/home.svg");
  static const SvgIcon housing = SvgIcon("assets/icons/housing.svg");
  static const SvgIcon identity = SvgIcon("assets/icons/identity.svg");
  static const SvgIcon interest = SvgIcon("assets/icons/interest.svg");
  static const SvgIcon investments = SvgIcon("assets/icons/investments.svg");
  static const SvgIcon key = SvgIcon("assets/icons/key.svg");
  static const SvgIcon layout = SvgIcon("assets/icons/layout.svg");
  static const SvgIcon lightning = SvgIcon("assets/icons/lightning.svg");
  static const SvgIcon link = SvgIcon("assets/icons/link.svg");
  static const SvgIcon lockOpen = SvgIcon("assets/icons/lock-open.svg");
  static const SvgIcon lock = SvgIcon("assets/icons/lock.svg");
  static const SvgIcon logout = SvgIcon("assets/icons/logout.svg");
  static const SvgIcon menu = SvgIcon("assets/icons/menu.svg");
  static const SvgIcon message = SvgIcon("assets/icons/message.svg");
  static const SvgIcon notification = SvgIcon("assets/icons/notification.svg");
  static const SvgIcon openEnvelope = SvgIcon("assets/icons/open-envelope.svg");
  static const SvgIcon openTab = SvgIcon("assets/icons/open-tab.svg");
  static const SvgIcon personalCare = SvgIcon("assets/icons/personal-care.svg");
  static const SvgIcon phoneEmail = SvgIcon("assets/icons/phone-email.svg");
  static const SvgIcon phone = SvgIcon("assets/icons/phone.svg");
  static const SvgIcon pieChart = SvgIcon("assets/icons/pie-chart.svg");
  static const SvgIcon plus = SvgIcon("assets/icons/plus.svg");
  static const SvgIcon receipt = SvgIcon("assets/icons/receipt.svg");
  static const SvgIcon savings = SvgIcon("assets/icons/savings.svg");
  static const SvgIcon search = SvgIcon("assets/icons/search.svg");
  static const SvgIcon settings = SvgIcon("assets/icons/settings.svg");
  static const SvgIcon shield = SvgIcon("assets/icons/shield.svg");
  static const SvgIcon shopping = SvgIcon("assets/icons/shopping.svg");
  static const SvgIcon stocks = SvgIcon("assets/icons/stocks.svg");
  static const SvgIcon threeDots = SvgIcon("assets/icons/three-dots.svg");
  static const SvgIcon transport = SvgIcon("assets/icons/transport.svg");
  static const SvgIcon trips = SvgIcon("assets/icons/trips.svg");
  static const SvgIcon twoArrows = SvgIcon("assets/icons/two-arrows.svg");
  static const SvgIcon upload = SvgIcon("assets/icons/upload.svg");
  static const SvgIcon user = SvgIcon("assets/icons/user.svg");
  static const SvgIcon users = SvgIcon("assets/icons/users.svg");
  static const SvgIcon warning = SvgIcon("assets/icons/warning.svg");
  static const SvgIcon web = SvgIcon("assets/icons/web.svg");
}


class SvgIcon extends StatelessWidget {
  final String iconPath;
  const SvgIcon(this.iconPath, {super.key});

  @override
  Widget build(BuildContext context) => SvgPicture.asset(iconPath);

  Widget style({double? width, double? height, Color? color, double? dimension}) => SvgPicture.asset(
    iconPath,
    width: dimension ?? width,
    height: dimension ?? height,
    // ignore: deprecated_member_use
    color: color,
  );
}


void assetsPrintIcons() async {
  String toLowerCamelCase(String snakeCase, [String? separate]) {
    return "${snakeCase[0]}${snakeCase.split(separate ?? "_")
        .map((word) => word.isNotEmpty
        ? "${word[0].toUpperCase()}${word.substring(1)}"
        : "")
        .join().substring(1)}";
  }

  String result = "";

  final manifestContent = await rootBundle.loadString('AssetManifest.json');
  final Map<String, dynamic> manifestMap = json.decode(manifestContent);

  final iconPaths = manifestMap.keys
      .where((String key) => key.startsWith('assets/icons/'))
      .toList();

  for (var path in iconPaths) {
    String name = toLowerCamelCase(path.split("/").last.split(".").first);
    name = toLowerCamelCase(name, "-");
    String filePath = path;
    result += "\nstatic const SvgIcon $name = SvgIcon(\"$filePath\");";
  }

  log(result);
}
