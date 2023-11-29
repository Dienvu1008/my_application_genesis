import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AppLocalizations {
  AppLocalizations(this.locale);

  final Locale locale;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  String get aboutUs {
    return {
      'en': 'About us',
      'vi': 'Thông tin',
      'de': 'Über uns',
      'cs': 'O nás',
      'es': 'Sobre nosotros',
      'fr': 'À propos de nous',
      'it': 'Riguardo a noi',
      'ja': '私たちについて',
      'ko': '우리에 대해',
      'no': 'Om oss',
      'ru': 'О нас',
      'sv': 'Om oss',
      'zh': '关于我们',
    }[locale.languageCode]!;
  }

  String get about {
    return {
      'en': 'about',
      'vi': 'khoảng',
      'de': 'ungefähr',
      'cs': 'o',
      'es': 'acerca de',
      'fr': 'à propos',
      'it': 'circa',
      'ja': '約',
      'ko': '약',
      'no': 'om',
      'ru': 'около',
      'sv': 'om',
      'zh': '关于',
    }[locale.languageCode]!;
  }

  String get cancel {
    return {
      'en': 'Cancel',
      'vi': 'Hủy bỏ',
      'de': 'Stornieren',
      'cs': 'Zrušit',
      'es': 'Cancelar',
      'fr': 'Annuler',
      'it': 'Annulla',
      'ja': 'キャンセル',
      'ko': '취소',
      'no': 'Avbryt',
      'ru': 'Отмена',
      'sv': 'Avbryt',
      'zh': '取消',
    }[locale.languageCode]!;
  }

  String get chooseThemeColor {
    return {
      'en': 'Choose theme color',
      'vi': 'Chọn màu chủ đề',
      'de': 'Wählen Sie die Themenfarbe',
      'cs': 'Vyberte barvu tématu',
      'es': 'Elige el color del tema',
      'fr': 'Choisissez la couleur du thème',
      'it': 'Scegli il colore del tema',
      'ja': 'テーマの色を選択',
      'ko': '테마 색상 선택',
      'no': 'Velg tema farge',
      'ru': 'Выберите цвет темы',
      'sv': 'Välj temafärg',
      'zh': '选择主题颜色',
    }[locale.languageCode]!;
  }

  String get chooseThemeColorFromImageColor {
    return {
      'en': 'Choose theme color from image color',
      'vi': 'Chọn màu chủ đề từ màu hình ảnh',
      'de': 'Wählen Sie die Themenfarbe aus der Bildfarbe',
      'cs': 'Vyberte barvu tématu z barvy obrázku',
      'es': 'Elige el color del tema del color de la imagen',
      'fr': 'Choisissez la couleur du thème à partir de la couleur de l\'image',
      'it': 'Scegli il colore del tema dal colore dell\'immagine',
      'ja': '画像の色からテーマの色を選択',
      'ko': '이미지 색상에서 테마 색상 선택',
      'no': 'Velg tema farge fra bildefarge',
      'ru': 'Выберите цвет темы из цвета изображения',
      'sv': 'Välj temafärg från bildfärg',
      'zh': '从图像颜色中选择主题颜色',
    }[locale.languageCode]!;
  }

  String get chooseApplicationLanguage {
    return {
      'en': 'Choose application language',
      'vi': 'Chọn ngôn ngữ ứng dụng',
      'de': 'Wählen Sie die Anwendungssprache',
      'cs': 'Vyberte jazyk aplikace',
      'es': 'Elige el idioma de la aplicación',
      'fr': 'Choisissez la langue de l\'application',
      'it': 'Scegli la lingua dell\'applicazione',
      'ja': 'アプリケーションの言語を選択',
      'ko': '응용 프로그램 언어 선택',
      'no': 'Velg applikasjonsspråk',
      'ru': 'Выберите язык приложения',
      'sv': 'Välj applikationsspråk',
      'zh': '选择应用语言',
    }[locale.languageCode]!;
  }

  String get english {
    return {
      'en': 'English',
      'vi': 'Tiếng Anh',
      'de': 'Englisch',
      'cs': 'Angličtina',
      'es': 'Inglés',
      'fr': 'Anglais',
      'it': 'Inglese',
      'ja': '英語',
      'ko': '영어',
      'no': 'Engelsk',
      'ru': 'Английский',
      'sv': 'Engelska',
      'zh': '英语',
    }[locale.languageCode]!;
  }

  String get german {
    return {
      'en': 'German',
      'vi': 'Tiếng Đức',
      'de': 'Deutsch',
      'cs': 'Němčina',
      'es': 'Alemán',
      'fr': 'Allemand',
      'it': 'Tedesco',
      'ja': 'ドイツ語',
      'ko': '독일어',
      'no': 'Tysk',
      'ru': 'Немецкий',
      'sv': 'Tyska',
      'zh': '德语',
    }[locale.languageCode]!;
  }

  String get howToUse {
    return {
      'en': 'How to use?',
      'vi': 'Cách sử dụng?',
      'de': 'Wie benutzt man?',
      'cs': 'Jak používat?',
      'es': '¿Cómo usar?',
      'fr': 'Comment utiliser?',
      'it': 'Come si usa?',
      'ja': '使い方は？',
      'ko': '어떻게 사용하나요?',
      'no': 'Hvordan bruke?',
      'ru': 'Как использовать?',
      'sv': 'Hur använder man?',
      'zh': '如何使用？',
    }[locale.languageCode]!;
  }

  String get settings {
    return {
      'en': 'Settings',
      'vi': 'Cài đặt',
      'de': 'Einstellungen',
      'cs': 'Nastavení',
      'es': 'Configuraciones',
      'fr': 'Paramètres',
      'it': 'Impostazioni',
      'ja': '設定',
      'ko': '설정',
      'no': 'Innstillinger',
      'ru': 'Настройки',
      'sv': 'Inställningar',
      'zh': '设置',
    }[locale.languageCode]!;
  }

  String get title {
    return {
      'en': 'Title',
      'vi': 'Tiêu đề',
      'de': 'Titel',
      'cs': 'Název',
      'es': 'Título',
      'fr': 'Titre',
      'it': 'Titolo',
      'ja': 'タイトル',
      'ko': '제목',
      'no': 'Tittel',
      'ru': 'Заголовок',
      'sv': 'Titel',
      'zh': '标题',
    }[locale.languageCode]!;
  }

  String get vietnamese {
    return {
      'en': 'Vietnamese',
      'vi': 'Tiếng Việt',
      'de': 'Vietnamesisch',
      'cs': 'Vietnamština',
      'es': 'Vietnamita',
      'fr': 'Vietnamien',
      'it': 'Vietnamita',
      'ja': 'ベトナム語',
      'ko': '베트남어',
      'no': 'Vietnamesisk',
      'ru': 'Вьетнамский',
      'sv': 'Vietnamesiska',
      'zh': '越南语',
    }[locale.languageCode]!;
  }

  String get czech {
    return {
      'en': 'Czech',
      'vi': 'Tiếng Séc',
      'de': 'Tschechisch',
      'cs': 'Čeština',
      'es': 'Checo',
      'fr': 'Tchèque',
      'it': 'Ceco',
      'ja': 'チェコ語',
      'ko': '체코어',
      'no': 'Tsjekkisk',
      'ru': 'Чешский',
      'sv': 'Tjeckiska',
      'zh': '捷克语',
    }[locale.languageCode]!;
  }

  String get spanish {
    return {
      'en': 'Spanish',
      'vi': 'Tiếng Tây Ban Nha',
      'de': 'Spanisch',
      'cs': 'Španělština',
      'es': 'Español',
      'fr': 'Espagnol',
      'it': 'Spagnolo',
      'ja': 'スペイン語',
      'ko': '스페인어',
      'no': 'Spansk',
      'ru': 'Испанский',
      'sv': 'Spanska',
      'zh': '西班牙语',
    }[locale.languageCode]!;
  }

  String get french {
    return {
      'en': 'French',
      'vi': 'Tiếng Pháp',
      'de': 'Französisch',
      'cs': 'Francouzština',
      'es': 'Francés',
      'fr': 'Français',
      'it': 'Francese',
      'ja': 'フランス語',
      'ko': '프랑스어',
      'no': 'Fransk',
      'ru': 'Французский',
      'sv': 'Franska',
      'zh': '法语',
    }[locale.languageCode]!;
  }

  String get italian {
    return {
      'en': 'Italian',
      'vi': 'Tiếng Ý',
      'de': 'Italienisch',
      'cs': 'Italština',
      'es': 'Italiano',
      'fr': 'Italien',
      'it': 'Italiano',
      'ja': 'イタリア語',
      'ko': '이탈리아어',
      'no': 'Italiensk',
      'ru': 'Итальянский',
      'sv': 'Italienska',
      'zh': '意大利语',
    }[locale.languageCode]!;
  }

  String get japanese {
    return {
      'en': 'Japanese',
      'vi': 'Tiếng Nhật',
      'de': 'Japanisch',
      'cs': 'Japonština',
      'es': 'Japonés',
      'fr': 'Japonais',
      'it': 'Giapponese',
      'ja': '日本語',
      'ko': '일본어',
      'no': 'Japansk',
      'ru': 'Японский',
      'sv': 'Japanska',
      'zh': '日语',
    }[locale.languageCode]!;
  }

  String get korean {
    return {
      'en': 'Korean',
      'vi': 'Tiếng Hàn',
      'de': 'Koreanisch',
      'cs': 'Korejština',
      'es': 'Coreano',
      'fr': 'Coréen',
      'it': 'Coreano',
      'ja': '韓国語',
      'ko': '한국어',
      'no': 'Koreansk',
      'ru': 'Корейский',
      'sv': 'Koreanska',
      'zh': '韩语',
    }[locale.languageCode]!;
  }

  String get norwegian {
    return {
      'en': 'Norwegian',
      'vi': 'Tiếng Na Uy',
      'de': 'Norwegisch',
      'cs': 'Norština',
      'es': 'Noruego',
      'fr': 'Norvégien',
      'it': 'Norvegese',
      'ja': 'ノルウェー語',
      'ko': '노르웨이어',
      'no': 'Norsk',
      'ru': 'Норвежский',
      'sv': 'Norska',
      'zh': '挪威语',
    }[locale.languageCode]!;
  }

  String get russian {
    return {
      'en': 'Russian',
      'vi': 'Tiếng Nga',
      'de': 'Russisch',
      'cs': 'Ruština',
      'es': 'Ruso',
      'fr': 'Russe',
      'it': 'Russo',
      'ja': 'ロシア語',
      'ko': '러시아어',
      'no': 'Russisk',
      'ru': 'Русский',
      'sv': 'Ryska',
      'zh': '俄语',
    }[locale.languageCode]!;
  }

  String get swedish {
    return {
      'en': 'Swedish',
      'vi': 'Tiếng Thụy Điển',
      'de': 'Schwedisch',
      'cs': 'Švédština',
      'es': 'Sueco',
      'fr': 'Suédois',
      'it': 'Svedese',
      'ja': 'スウェーデン語',
      'ko': '스웨덴어',
      'no': 'Svensk',
      'ru': 'Шведский',
      'sv': 'Svenska',
      'zh': '瑞典语',
    }[locale.languageCode]!;
  }

  String get chinese {
    return {
      'en': 'Chinese',
      'vi': 'Tiếng Trung',
      'de': 'Chinesisch',
      'cs': 'Čínština',
      'es': 'Chino',
      'fr': 'Chinois',
      'it': 'Cinese',
      'ja': '中国語',
      'ko': '중국어',
      'no': 'Kinesisk',
      'ru': 'Китайский',
      'sv': 'Kinesiska',
      'zh': '中文',
    }[locale.languageCode]!;
  }

  String get brightness {
    return {
      'en': 'Brightness',
      'vi': 'Độ sáng',
      'de': 'Helligkeit',
      'cs': 'Jas',
      'es': 'Brillo',
      'fr': 'Luminosité',
      'it': 'Luminosità',
      'ja': '明るさ',
      'ko': '밝기',
      'no': 'Lysstyrke',
      'ru': 'Яркость',
      'sv': 'Ljusstyrka',
      'zh': '亮度',
    }[locale.languageCode]!;
  }

  String get dark {
    return {
      'en': 'Dark',
      'vi': 'Tối',
      'de': 'Dunkel',
      'cs': 'Tmavý',
      'es': 'Oscuro',
      'fr': 'Sombre',
      'it': 'Scuro',
      'ja': 'ダーク',
      'ko': '어두운',
      'no': 'Mørk',
      'ru': 'Темный',
      'sv': 'Mörk',
      'zh': '暗',
    }[locale.languageCode]!;
  }

  String get light {
    return {
      'en': 'Light',
      'vi': 'Sáng',
      'de': 'Licht',
      'cs': 'Světlý',
      'es': 'Luz',
      'fr': 'Lumière',
      'it': 'Luce',
      'ja': 'ライト',
      'ko': '빛',
      'no': 'Lys',
      'ru': 'Свет',
      'sv': 'Ljus',
      'zh': '光',
    }[locale.languageCode]!;
  }

  String get showBrightnessButtonInApplicationBar {
    return {
      'en': 'Show brightness button in application bar',
      'vi': 'Hiển thị nút độ sáng trên thanh ứng dụng',
      'de': 'Helligkeitsschaltfläche in der Anwendungsleiste anzeigen',
      'cs': 'Zobrazit tlačítko jasu na panelu aplikace',
      'es': 'Mostrar el botón de brillo en la barra de la aplicación',
      'fr': 'Afficher le bouton de luminosité dans la barre d\'application',
      'it': 'Mostra il pulsante di luminosità nella barra dell\'applicazione',
      'ja': 'アプリケーションバーに明るさボタンを表示',
      'ko': '응용 프로그램 바에 밝기 버튼 표시',
      'no': 'Vis lysstyrkeknappen i programlinjen',
      'ru': 'Показать кнопку яркости на панели приложения',
      'sv': 'Visa ljusstyrkeknappen i applikationsfältet',
      'zh': '在应用栏中显示亮度按钮',
    }[locale.languageCode]!;
  }

  String get showColorImageButtonInApplicationBar {
    return {
      'en': 'Show color image button in application bar',
      'vi': 'Hiển thị nút hình ảnh màu trên thanh ứng dụng',
      'de': 'Farbbildschaltfläche in der Anwendungsleiste anzeigen',
      'cs': 'Zobrazit tlačítko barevného obrázku na panelu aplikace',
      'es': 'Mostrar el botón de imagen en color en la barra de la aplicación',
      'fr':
          'Afficher le bouton d\'image en couleur dans la barre d\'application',
      'it':
          'Mostra il pulsante dell\'immagine a colori nella barra dell\'applicazione',
      'ja': 'アプリケーションバーにカラー画像ボタンを表示',
      'ko': '응용 프로그램 바에 색상 이미지 버튼 표시',
      'no': 'Vis fargebildeknappen i programlinjen',
      'ru': 'Показать кнопку цветного изображения на панели приложения',
      'sv': 'Visa färgbildknappen i applikationsfältet',
      'zh': '在应用栏中显示彩色图像按钮',
    }[locale.languageCode]!;
  }

  String get showColorSeedButtonInApplicationBar {
    return {
      'en': 'Show color seed button in application bar',
      'vi': 'Hiển thị nút màu hạt giống trên thanh ứng dụng',
      'de': 'Farbsamenschaltfläche in der Anwendungsleiste anzeigen',
      'cs': 'Zobrazit tlačítko barevného semínka na panelu aplikace',
      'es': 'Mostrar el botón de semilla de color en la barra de la aplicación',
      'fr':
          'Afficher le bouton de graine de couleur dans la barre d\'application',
      'it':
          'Mostra il pulsante del seme di colore nella barra dell\'applicazione',
      'ja': 'アプリケーションバーにカラーシードボタンを表示',
      'ko': '응용 프로그램 바에 색상 시드 버튼 표시',
      'no': 'Vis fargefrøknappen i programlinjen',
      'ru': 'Показать кнопку цветного семени на панели приложения',
      'sv': 'Visa färgfröknappen i applikationsfältet',
      'zh': '在应用栏中显示颜色种子按钮',
    }[locale.languageCode]!;
  }

  String get showLanguagesButtonInApplicationBar {
    return {
      'en': 'Show languages button in application bar',
      'vi': 'Hiển thị nút ngôn ngữ trên thanh ứng dụng',
      'de': 'Sprachschaltfläche in der Anwendungsleiste anzeigen',
      'cs': 'Zobrazit tlačítko jazyků na panelu aplikace',
      'es': 'Mostrar el botón de idiomas en la barra de la aplicación',
      'fr': 'Afficher le bouton des langues dans la barre d\'application',
      'it': 'Mostra il pulsante delle lingue nella barra dell\'applicazione',
      'ja': 'アプリケーションバーに言語ボタンを表示',
      'ko': '응용 프로그램 바에 언어 버튼 표시',
      'no': 'Vis språkknappen i programlinjen',
      'ru': 'Показать кнопку языков на панели приложения',
      'sv': 'Visa språkknappen i applikationsfältet',
      'zh': '在应用栏中显示语言按钮',
    }[locale.languageCode]!;
  }

  String get showMaterialDesignButtonInApplicationBar {
    return {
      'en': 'Show material design button in application bar',
      'vi': 'Hiển thị nút thiết kế vật liệu trên thanh ứng dụng',
      'de': 'Material-Design-Schaltfläche in der Anwendungsleiste anzeigen',
      'cs': 'Zobrazit tlačítko materiálového designu na panelu aplikace',
      'es':
          'Mostrar el botón de diseño de material en la barra de la aplicación',
      'fr':
          'Afficher le bouton de design matériel dans la barre d\'application',
      'it':
          'Mostra il pulsante di design del materiale nella barra dell\'applicazione',
      'ja': 'アプリケーションバーにマテリアルデザインボタンを表示',
      'ko': '응용 프로그램 바에 머티리얼 디자인 버튼 표시',
      'no': 'Vis materiell design-knapp i programlinjen',
      'ru': 'Показать кнопку материального дизайна на панели приложения',
      'sv': 'Visa materialdesignknappen i applikationsfältet',
      'zh': '在应用栏中显示材料设计按钮',
    }[locale.languageCode]!;
  }

  String get userInterfaceSettings {
    return {
      'en': 'User Interface Settings',
      'vi': 'Cài đặt giao diện người dùng',
      'de': 'Benutzeroberflächeneinstellungen',
      'cs': 'Nastavení uživatelského rozhraní',
      'es': 'Configuración de la interfaz de usuario',
      'fr': 'Paramètres de l\'interface utilisateur',
      'it': 'Impostazioni dell\'interfaccia utente',
      'ja': 'ユーザーインターフェースの設定',
      'ko': '사용자 인터페이스 설정',
      'no': 'Brukergrensesnittinnstillinger',
      'ru': 'Настройки пользовательского интерфейса',
      'sv': 'Användargränssnittsinställningar',
      'zh': '用户界面设置',
    }[locale.languageCode]!;
  }

  String get openLink {
    return {
      'en': 'Open link',
      'vi': 'Mở liên kết',
      'de': 'Link öffnen',
      'cs': 'Otevřít odkaz',
      'es': 'Abrir enlace',
      'fr': 'Ouvrir le lien',
      'it': 'Apri il link',
      'ja': 'リンクを開く',
      'ko': '링크 열기',
      'no': 'Åpne lenke',
      'ru': 'Открыть ссылку',
      'sv': 'Öppna länk',
      'zh': '打开链接',
    }[locale.languageCode]!;
  }

  String get doYouWantToOpenTheLinkInYourDefaultBrowser {
    return {
      'en': 'do you want to open the link in your default browser?',
      'vi':
          'bạn có muốn mở liên kết trong trình duyệt mặc định của mình không?',
      'de': 'Möchten Sie den Link in Ihrem Standardbrowser öffnen?',
      'cs': 'Chcete otevřít odkaz ve svém výchozím prohlížeči?',
      'es': '¿Quieres abrir el enlace en tu navegador predeterminado?',
      'fr': 'Voulez-vous ouvrir le lien dans votre navigateur par défaut?',
      'it': 'Vuoi aprire il link nel tuo browser predefinito?',
      'ja': 'デフォルトのブラウザでリンクを開きますか？',
      'ko': '기본 브라우저에서 링크를 열고 싶으신가요?',
      'no': 'Vil du åpne lenken i standard nettleseren din?',
      'ru': 'Хотите открыть ссылку в вашем браузере по умолчанию?',
      'sv': 'Vill du öppna länken i din standardwebbläsare?',
      'zh': '你想在默认浏览器中打开链接吗？',
    }[locale.languageCode]!;
  }

  String get open {
    return {
      'en': 'Open',
      'vi': 'Mở',
      'de': 'Öffnen',
      'cs': 'Otevřít',
      'es': 'Abrir',
      'fr': 'Ouvrir',
      'it': 'Apri',
      'ja': '開く',
      'ko': '열기',
      'no': 'Åpne',
      'ru': 'Открыть',
      'sv': 'Öppna',
      'zh': '打开',
    }[locale.languageCode]!;
  }

  String get applicationInformation {
    return {
      'en': 'Application Information',
      'vi': 'Thông tin ứng dụng',
      'de': 'Anwendungsinformationen',
      'cs': 'Informace o aplikaci',
      'es': 'Información de la aplicación',
      'fr': 'Informations sur l\'application',
      'it': 'Informazioni sull\'applicazione',
      'ja': 'アプリケーション情報',
      'ko': '응용 프로그램 정보',
      'no': 'Applikasjonsinformasjon',
      'ru': 'Информация о приложении',
      'sv': 'Applikationsinformation',
      'zh': '应用信息',
    }[locale.languageCode]!;
  }

  String get reportAnIssue {
    return {
      'en': 'Report an Issue',
      'vi': 'Báo cáo một vấn đề',
      'de': 'Ein Problem melden',
      'cs': 'Nahlásit problém',
      'es': 'Informar de un problema',
      'fr': 'Signaler un problème',
      'it': 'Segnala un problema',
      'ja': '問題を報告する',
      'ko': '문제 보고',
      'no': 'Rapporter et problem',
      'ru': 'Сообщить о проблеме',
      'sv': 'Rapportera ett problem',
      'zh': '报告问题',
    }[locale.languageCode]!;
  }

  String get havingAnIssueReportItHere {
    return {
      'en': 'Having an issue ? Report it here',
      'vi': 'Gặp vấn đề? Báo cáo tại đây',
      'de': 'Ein Problem haben? Melden Sie es hier',
      'cs': 'Máte problém? Nahlásit to zde',
      'es': '¿Tienes un problema? Informe aquí',
      'fr': 'Vous avez un problème ? Signalez-le ici',
      'it': 'Hai un problema? Segnalalo qui',
      'ja': '問題がありますか？ここで報告してください',
      'ko': '문제가 있나요? 여기에 보고하세요',
      'no': 'Har du et problem? Rapporter det her',
      'ru': 'У вас есть проблема? Сообщите о ней здесь',
      'sv': 'Har du ett problem? Rapportera det här',
      'zh': '有问题吗？在这里报告',
    }[locale.languageCode]!;
  }

  String get privacyPolicy {
    return {
      'en': 'Privacy Policy',
      'vi': 'Chính sách bảo mật',
      'de': 'Datenschutz-Bestimmungen',
      'cs': 'Zásady ochrany osobních údajů',
      'es': 'Política de privacidad',
      'fr': 'Politique de confidentialité',
      'it': 'Politica sulla privacy',
      'ja': 'プライバシーポリシー',
      'ko': '개인정보 처리방침',
      'no': 'Personvernpolicy',
      'ru': 'Политика конфиденциальности',
      'sv': 'Integritetspolicy',
      'zh': '隐私政策',
    }[locale.languageCode]!;
  }

  String get openSource {
    return {
      'en': 'Open Source',
      'vi': 'Mã nguồn mở',
      'de': 'Open Source',
      'cs': 'Otevřený zdroj',
      'es': 'Código abierto',
      'fr': 'Open source',
      'it': 'Open source',
      'ja': 'オープンソース',
      'ko': '오픈 소스',
      'no': 'Åpen kildekode',
      'ru': 'Открытый исходный код',
      'sv': 'Öppen källkod',
      'zh': '开源',
    }[locale.languageCode]!;
  }

  String get author {
    return {
      'en': 'Author',
      'vi': 'Tác giả',
      'de': 'Autor',
      'cs': 'Autor',
      'es': 'Autor',
      'fr': 'Auteur',
      'it': 'Autore',
      'ja': '著者',
      'ko': '저자',
      'no': 'Forfatter',
      'ru': 'Автор',
      'sv': 'Författare',
      'zh': '作者',
    }[locale.languageCode]!;
  }

  String get sendAnEmail {
    return {
      'en': 'Send an Email',
      'vi': 'Gửi một Email',
      'de': 'Eine E-Mail senden',
      'cs': 'Poslat e-mail',
      'es': 'Enviar un correo electrónico',
      'fr': 'Envoyer un e-mail',
      'it': 'Invia un\'email',
      'ja': 'メールを送る',
      'ko': '이메일 보내기',
      'no': 'Send en e-post',
      'ru': 'Отправить электронное письмо',
      'sv': 'Skicka ett e-postmeddelande',
      'zh': '发送电子邮件',
    }[locale.languageCode]!;
  }

  String get openSourceAnnouncement {
    return {
      'en': 'Open Source Announcement',
      'vi': 'Thông báo mã nguồn mở',
      'de': 'Open-Source-Ankündigung',
      'cs': 'Oznámení o otevřeném zdroji',
      'es': 'Anuncio de código abierto',
      'fr': 'Annonce Open Source',
      'it': 'Annuncio Open Source',
      'ja': 'オープンソースの発表',
      'ko': '오픈 소스 공지',
      'no': 'Open Source-annonsering',
      'ru': 'Объявление об открытом исходном коде',
      'sv': 'Öppen källkodsmeddelande',
      'zh': '开源公告',
    }[locale.languageCode]!;
  }

  String
      get thisAppWillBecomeOpenSourceWeWillMakeTheSourceCodePublicAfterCleaningUpTheCode {
    return {
      'en':
          'This app will become open source. We will make the source code public after cleaning up the code.',
      'vi':
          'Ứng dụng này sẽ trở thành mã nguồn mở. Chúng tôi sẽ công khai mã nguồn sau khi dọn dẹp mã.',
      'de':
          'Diese App wird Open Source. Wir werden den Quellcode veröffentlichen, nachdem wir den Code bereinigt haben.',
      'cs':
          'Tato aplikace se stane otevřeným zdrojem. Zdrojový kód zveřejníme po vyčištění kódu.',
      'es':
          'Esta aplicación se convertirá en código abierto. Haremos público el código fuente después de limpiar el código.',
      'fr':
          'Cette application deviendra open source. Nous rendrons le code source public après avoir nettoyé le code.',
      'it':
          'Questa app diventerà open source. Rendiamo pubblico il codice sorgente dopo aver pulito il codice.',
      'ja': 'このアプリはオープンソースになります。コードのクリーンアップ後にソースコードを公開します。',
      'ko': '이 앱은 오픈 소스가 될 것입니다. 코드를 정리한 후 소스 코드를 공개하겠습니다.',
      'no':
          'Denne appen vil bli åpen kildekode. Vi vil gjøre kildekoden offentlig etter at vi har ryddet opp i koden.',
      'ru':
          'Это приложение станет открытым исходным кодом. Мы опубликуем исходный код после очистки кода.',
      'sv':
          'Denna app kommer att bli öppen källkod. Vi kommer att göra källkoden offentlig efter att vi har städat upp koden.',
      'zh': '此应用将成为开源。我们将在清理代码后公开源代码。',
    }[locale.languageCode]!;
  }

  String get ok {
    return {
      'en': 'Ok',
      'vi': 'Đồng ý',
      'de': 'Ok',
      'cs': 'Ok',
      'es': 'Ok',
      'fr': 'Ok',
      'it': 'Ok',
      'ja': 'Ok',
      'ko': 'Ok',
      'no': 'Ok',
      'ru': 'Ok',
      'sv': 'Ok',
      'zh': '好的',
    }[locale.languageCode]!;
  }

  String get supportUs {
    return {
      'en': 'Support us',
      'vi': 'Hỗ trợ chúng tôi',
      'de': 'Unterstützen Sie uns',
      'cs': 'Podpořte nás',
      'es': 'Apóyanos',
      'fr': 'Soutenez-nous',
      'it': 'Supportaci',
      'ja': '私たちをサポート',
      'ko': '우리를 지원하십시오',
      'no': 'Støtt oss',
      'ru': 'Поддержите нас',
      'sv': 'Stöd oss',
      'zh': '支持我们',
    }[locale.languageCode]!;
  }

  String translate(String key) {
    return _languageKey[locale.languageCode]?[key] ?? key;
  }

  static const _languageKey = {
    'cs': {
      'Czech': 'Čeština',
      'German': 'Němčina',
      'English': 'Angličtina',
      'Spanish': 'Španělština',
      'French': 'Francouzština',
      'Italian': 'Italština',
      'Japanese': 'Japonština',
      'Korean': 'Korejština',
      'Norwegian': 'Norština',
      'Russian': 'Ruština',
      'Swedish': 'Švédština',
      'Vietnamese': 'Vietnamština',
      'Chinese': 'Čínština',
    },
    'de': {
      'Czech': 'Tschechisch',
      'German': 'Deutsch',
      'English': 'Englisch',
      'Spanish': 'Spanisch',
      'French': 'Französisch',
      'Italian': 'Italienisch',
      'Japanese': 'Japanisch',
      'Korean': 'Koreanisch',
      'Norwegian': 'Norwegisch',
      'Russian': 'Russisch',
      'Swedish': 'Schwedisch',
      'Vietnamese': 'Vietnamesisch',
      'Chinese': 'Chinesisch',
    },
    'en': {
      'Czech': 'Czech',
      'German': 'German',
      'English': 'English',
      'Spanish': 'Spanish',
      'French': 'French',
      'Italian': 'Italian',
      'Japanese': 'Japanese',
      'Korean': 'Korean',
      'Norwegian': 'Norwegian',
      'Russian': 'Russian',
      'Swedish': 'Swedish',
      'Vietnamese': 'Vietnamese',
      'Chinese': 'Chinese',
    },
    'es': {
      'Czech': 'Checo',
      'German': 'Alemán',
      'English': 'Inglés',
      'Spanish': 'Español',
      'French': 'Francés',
      'Italian': 'Italiano',
      'Japanese': 'Japonés',
      'Korean': 'Coreano',
      'Norwegian': 'Noruego',
      'Russian': 'Ruso',
      'Swedish': 'Sueco',
      'Vietnamese': 'Vietnamita',
      'Chinese': 'Chino',
    },
    'fr': {
      'Czech': 'Tchèque',
      'German': 'Allemand',
      'English': 'Anglais',
      'Spanish': 'Espagnol',
      'French': 'Français',
      'Italian': 'Italien',
      'Japanese': 'Japonais',
      'Korean': 'Coréen',
      'Norwegian': 'Norvégien',
      'Russian': 'Russe',
      'Swedish': 'Suédois',
      'Vietnamese': 'Vietnamien',
      'Chinese': 'Chinois',
    },
    'it': {
      'Czech': 'Ceco',
      'German': 'Tedesco',
      'English': 'Inglese',
      'Spanish': 'Spagnolo',
      'French': 'Francese',
      'Italian': 'Italiano',
      'Japanese': 'Giapponese',
      'Korean': 'Coreano',
      'Norwegian': 'Norvegese',
      'Russian': 'Russo',
      'Swedish': 'Svedese',
      'Vietnamese': 'Vietnamita',
      'Chinese': 'Cinese',
    },
    'ja': {
      'Czech': 'チェコ語',
      'German': 'ドイツ語',
      'English': '英語',
      'Spanish': 'スペイン語',
      'French': 'フランス語',
      'Italian': 'イタリア語',
      'Japanese': '日本語',
      'Korean': '韓国語',
      'Norwegian': 'ノルウェー語',
      'Russian': 'ロシア語',
      'Swedish': 'スウェーデン語',
      'Vietnamese': 'ベトナム語',
      'Chinese': '中国語',
    },
    'ko': {
      'Czech': '체코어',
      'German': '독일어',
      'English': '영어',
      'Spanish': '스페인어',
      'French': '프랑스어',
      'Italian': '이탈리아어',
      'Japanese': '일본어',
      'Korean': '한국어',
      'Norwegian': '노르웨이어',
      'Russian': '러시아어',
      'Swedish': '스웨덴어',
      'Vietnamese': '베트남어',
      'Chinese': '중국어',
    },
    'no': {
      'Czech': 'Tsjekkisk',
      'German': 'Tysk',
      'English': 'Engelsk',
      'Spanish': 'Spansk',
      'French': 'Fransk',
      'Italian': 'Italiensk',
      'Japanese': 'Japansk',
      'Korean': 'Koreansk',
      'Norwegian': 'Norsk',
      'Russian': 'Russisk',
      'Swedish': 'Svensk',
      'Vietnamese': 'Vietnamesisk',
      'Chinese': 'Kinesisk',
    },
    'ru': {
      'Czech': 'Чешский',
      'German': 'Немецкий',
      'English': 'Английский',
      'Spanish': 'Испанский',
      'French': 'Французский',
      'Italian': 'Итальянский',
      'Japanese': 'Японский',
      'Korean': 'Корейский',
      'Norwegian': 'Норвежский',
      'Russian': 'Русский',
      'Swedish': 'Шведский',
      'Vietnamese': 'Вьетнамский',
      'Chinese': 'Китайский',
    },
    'sv': {
      'Czech': 'Tjeckiska',
      'German': 'Tyska',
      'English': 'Engelska',
      'Spanish': 'Spanska',
      'French': 'Franska',
      'Italian': 'Italienska',
      'Japanese': 'Japanska',
      'Korean': 'Koreanska',
      'Norwegian': 'Norska',
      'Russian': 'Ryska',
      'Swedish': 'Svenska',
      'Vietnamese': 'Vietnamesiska',
      'Chinese': 'Kinesiska',
    },
    'vi': {
      'Czech': 'Tiếng Séc',
      'German': 'Tiếng Đức',
      'English': 'Tiếng Anh',
      'Spanish': 'Tiếng Tây Ban Nha',
      'French': 'Tiếng Pháp',
      'Italian': 'Tiếng Ý',
      'Japanese': 'Tiếng Nhật',
      'Korean': 'Tiếng Hàn',
      'Norwegian': 'Tiếng Na Uy',
      'Russian': 'Tiếng Nga',
      'Swedish': 'Tiếng Thụy Điển',
      'Vietnamese': 'Tiếng Việt',
      'Chinese': 'Tiếng Trung',
    },
    'zh': {
      'Czech': '捷克语',
      'German': '德语',
      'English': '英语',
      'Spanish': '西班牙语',
      'French': '法语',
      'Italian': '意大利语',
      'Japanese': '日语',
      'Korean': '韩语',
      'Norwegian': '挪威语',
      'Russian': '俄语',
      'Swedish': '瑞典语',
      'Vietnamese': '越南语',
      'Chinese': '中文',
    },
  };
}

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationsDelegate();
  @override
  bool isSupported(Locale locale) => [
        'en',
        'vi',
        'de',
        'cs',
        'es',
        'fr',
        'it',
        'ja',
        'ko',
        'no',
        'ru',
        'sv',
        'zh'
      ].contains(locale.languageCode);

  @override
  Future<AppLocalizations> load(Locale locale) async {
    return SynchronousFuture(AppLocalizations(locale));
  }

  @override
  bool shouldReload(AppLocalizationsDelegate old) => false;
}
