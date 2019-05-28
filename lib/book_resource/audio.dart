import 'package:educational_audioplayer/player.dart';

List<String> authorNames = [
  "Ринат абу Мухаммад (Шарх шейха Салиха Али Шейха)",
  "Арсен абу Яхья (Шарх шейха аль-Усеймина)",
  "Ринат абу Мухаммад (Шарх шейха аль-Фаузана)",
  "Динар абу Идрис (Шарха шейха ибн База)",
];

List<String> chapterNames = [
  "Вступление и предисловие",
  "Обязательность таухида",
  "О достоинстве таухида, и о том, что он искупает грехи",
  "Тот, кто воплотит в себе таухид, войдет в Рай без расчёта",
  "О необходимости бояться ширка",
  "Призыв к свидетельству «Нет божества достойного поклонения, кроме Аллаха»",
  "Смысл таухида и свидетельства «Нет божества достойного поклонения, кроме Аллаха»",
  "Ношение кольца, шнурка или безделушки для избавления от беды или ее предотвращения является ширком",
  "О заклинаниях (рукъия) и амулетах (тамима)",
  "О том, кто испрашивает (или ищет) баракята у деревьев, камней и тому подобных вещей",
  "О жертвоприношении (забх) не Аллаху",
  "Запрещено приносить жертвоприношение Аллаху в том месте (или около того места), где приносится жертва не Аллаху",
  "Посвящение обета (назр) не Аллаху является ширком",
  "Прибегание (исти’аза) к кому-либо, кроме Аллаха, является ширком",
  "Просьба о помощи в тяжелой ситуации (истигъаса) или же ду’а к кому-либо кроме Аллаха является ширком",
  "О словах Всевышнего Аллаха: «Неужели они приобщают в сотоварищи к Аллаху тех, которые ничего не творят, тогда как сами были сотворены, которые не способны оказать им поддержку и не способны помочь даже самим себе?»",
  "О словах Всевышнего Аллаха: «Когда же испуг покинет их сердца, они скажут: «Что сказал ваш Господь?». Они скажут: «Истину, ведь он – Возвышенный, Великий»",
  "О заступничестве",
  "О словах Всевышнего Аллаха: «Воистину, ты не сможешь наставить на прямой путь тех, кого возлюбил. Только Аллах наставляет на прямой путь тех, кого пожелает»",
  "Причиной неверия людей и оставления религии является черезмерное возвеличивание праведников",
  "О недопустимости поклонения Аллаху у могилы праведного человека, не говоря уже о поклонении самому праведнику",
  "Чрезмерное почитание могил праведников делает из них идолов, которым поклоняются помимо Аллаха",
  "Избранный Пророк ﷺ защищал неприкосновенность таухида и преграждал любой путь, ведущий к ширку",
  "О том, что часть этой общины будет поклоняться идолам",
  "О колдовстве (сихр)",
  "Разъяснение некоторых видов колдовства",
  "О предсказателях и им подобных",
  "О снятии колдовства (нушра)",
  "О суеверии",
  "Об астрологии (танджим)",
  "О связывании выпадения дождя с расположением звёзд",
  "О словах Всевышнего Аллаха «И среди людей есть такие, которые приобщают к Аллаху равных, и любят их так же, как любят Аллаха»",
  "О словах Всевышнего Аллаха: «Это всего лишь сатана пугает вас своими помощниками. Не бойтесь их, а бойтесь Меня, если вы являетесь верующими»",
  "О словах Всевышнего Аллаха: «Уповайте на Аллаха, если вы являетесь верующими»",
  "О словах Всевышнего Аллаха: «Неужели они не опасались хитрости Аллаха? Хитрости Аллаха не опасаются только люди, терпящие убыток!», а также: «Кто же отчаивается в милости своего Господа, кроме заблудших?!»",
  "Терпение перед предопределением Аллаха является частью веры в Него",
  "Глава о показухе (рийа)",
  "Стремление человека совершить праведное деяние ради обретения мирских благ является проявлением многобожия",
  "Подчиняющиеся ученым и правителям, когда те запрещают разрешенное Аллахом или разрешают запрещенное Им, делают из них господов",
  "Об аятах 60-62 из суры «ан-Ниса»",
  "О тех, кто отрицает некоторые имена и атрибуты Аллаха",
  "О словах Всевышнего Аллаха: «Они узнают милость Аллаха, а затем отрицают ее, поскольку большинство из них — неверующие»",
  "О словах Всевышнего Аллаха: «Посему никого не равняйте с Аллахом сознательно»",
  "О том, кого не удовлетворяет клятва Аллахом",
  "О выражении «Если пожелает Аллах и ты»",
  "О том, что ругающий время оскорбляет Аллаха",
  "О титулах вроде «судья всех судей» и тому подобных",
  "О необходимости уважения имен Всевышнего Аллаха и смене имени ради этого",
  "О подшучивании над тем, в чем упоминается имя Аллаха, над Кораном или над Посланником Аллаха",
  "О 50-ом аяте из суры «Фуссылят»",
  "О словах Всевышнего Аллаха: «Когда же Он даровал им обоим праведного ребенка, они стали приобщать к Нему сотоварищей в том, чем Он одарил их. Аллах превыше того, что они приобщают в сотоварищи»",
  "О словах Всевышнего Аллаха: «У Аллаха — самые прекрасные имена. Посему взывайте к Нему посредством их и оставьте тех, которые отрицают Его имена. Они непременно получат воздаяние за то, что совершали»",
  "О недопустимости выражения «Мир (ас-Салям) Аллаху»",
  "О выражении «О Аллах, прости меня, если это угодно Тебе!»",
  "О запрещенности выражений «мой раб» или «моя рабыня»",
  "О том, что нельзя отказывать просящему именем Аллаха",
  "Ликом Аллаха можно испрашивать только Рай",
  "О выражении «Если бы…»",
  "О запрете ругать ветер",
  "О 154-ом аяте суры «Али Имран» и 6-ом аяте суры «аль-Фатх»",
  "О тех, кто отрицает предопределение",
  "О создающих изображения",
  "О многочисленных клятвах",
  "О вопросе обязательства перед Аллахом и Его Пророком ﷺ",
  "О клятве от имени Аллаха",
  "Нельзя просить ходатайства Аллаха перед Его творениями",
  "О защите Пророком ﷺ неприкосновенности единобожия и преграждении им путей к многобожию",
  "Заключительная глава",
];

List audios = [
  [
    [
      Audio(
        url: "https://toislam.podster.fm/72/download/audio.mp3",
        audioName: "Лекция № 1",
        audioSize: 16,
        audioDescription: "",
        chapterName: chapterNames[0],
        authorName: authorNames[0],
      ),
      Audio(
        url: "https://toislam.podster.fm/73/download/audio.mp3",
        audioName: "Лекция № 2",
        audioSize: 19,
        audioDescription: "",
        chapterName: chapterNames[0],
        authorName: authorNames[0],
      ),
      Audio(
        url: "https://toislam.podster.fm/74/download/audio.mp3",
        audioName: "Лекция № 3",
        audioSize: 10,
        audioDescription: "",
        chapterName: chapterNames[0],
        authorName: authorNames[0],
      ),
      Audio(
        url: "https://toislam.podster.fm/75/download/audio.mp3",
        audioName: "Лекция № 4",
        audioSize: 6,
        audioDescription: "",
        chapterName: chapterNames[0],
        authorName: authorNames[0],
      ),
    ],
    [
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_001.mp3",
        audioName: "Лекция № 1",
        audioSize: 13,
        audioDescription: "",
        chapterName: chapterNames[0],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_002.mp3",
        audioName: "Лекция № 2",
        audioSize: 17,
        audioDescription: "",
        chapterName: chapterNames[0],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_003.mp3",
        audioName: "Лекция № 3",
        audioSize: 20,
        audioDescription: "",
        chapterName: chapterNames[0],
        authorName: authorNames[1],
      ),
    ],
    [],
    [],
  ],
  [
    [
      Audio(
        url: "https://toislam.podster.fm/76/download/audio.mp3",
        audioName: "Лекция № 1",
        audioSize: 22,
        audioDescription: "",
        chapterName: chapterNames[1],
        authorName: authorNames[0],
      ),
      Audio(
        url: "https://toislam.podster.fm/77/download/audio.mp3",
        audioName: "Лекция № 2",
        audioSize: 17,
        audioDescription: "",
        chapterName: chapterNames[1],
        authorName: authorNames[0],
      ),
      Audio(
        url: "https://toislam.podster.fm/78/download/audio.mp3",
        audioName: "Лекция № 3",
        audioSize: 13,
        audioDescription: "",
        chapterName: chapterNames[1],
        authorName: authorNames[0],
      ),
      Audio(
        url: "https://toislam.podster.fm/79/download/audio.mp3",
        audioName: "Лекция № 4",
        audioSize: 22,
        audioDescription: "",
        chapterName: chapterNames[1],
        authorName: authorNames[0],
      ),
      Audio(
        url: "https://toislam.podster.fm/80/download/audio.mp3",
        audioName: "Лекция № 5",
        audioSize: 20,
        audioDescription: "",
        chapterName: chapterNames[1],
        authorName: authorNames[0],
      ),
    ],
    [
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_004.mp3",
        audioName: "Лекция № 1",
        audioSize: 17,
        audioDescription: "",
        chapterName: chapterNames[1],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_005.mp3",
        audioName: "Лекция № 2",
        audioSize: 17,
        audioDescription: "",
        chapterName: chapterNames[1],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_006.mp3",
        audioName: "Лекция № 3",
        audioSize: 20,
        audioDescription: "",
        chapterName: chapterNames[1],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_007.mp3",
        audioName: "Лекция № 4",
        audioSize: 13,
        audioDescription: "",
        chapterName: chapterNames[1],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_008.mp3",
        audioName: "Лекция № 5",
        audioSize: 24,
        audioDescription: "",
        chapterName: chapterNames[1],
        authorName: authorNames[1],
      ),
    ],
    [
      Audio(
        url:
            "http://static.toislam.ws/files/audio/01_aqida/017_kitabu_tauhid/4_kratko_tauhid_fauzan/glava_01a_str_9.mp3",
        audioName: "Лекция № 1",
        audioSize: 20,
        audioDescription: "",
        chapterName: chapterNames[1],
        authorName: authorNames[2],
      ),
      Audio(
        url:
            "http://static.toislam.ws/files/audio/01_aqida/017_kitabu_tauhid/4_kratko_tauhid_fauzan/glava_01b_str_16.mp3",
        audioName: "Лекция № 2",
        audioSize: 19,
        audioDescription: "",
        chapterName: chapterNames[1],
        authorName: authorNames[2],
      ),
    ],
    [],
  ],
  [
    [
      Audio(
        url: "https://toislam.podster.fm/81/download/audio.mp3",
        audioName: "Лекция № 1",
        audioSize: 14,
        audioDescription: "",
        chapterName: chapterNames[2],
        authorName: authorNames[0],
      ),
      Audio(
        url: "https://toislam.podster.fm/82/download/audio.mp3",
        audioName: "Лекция № 2",
        audioSize: 28,
        audioDescription: "",
        chapterName: chapterNames[2],
        authorName: authorNames[0],
      ),
      Audio(
        url: "https://toislam.podster.fm/83/download/audio.mp3",
        audioName: "Лекция № 3",
        audioSize: 17,
        audioDescription: "",
        chapterName: chapterNames[2],
        authorName: authorNames[0],
      ),
      Audio(
        url: "https://toislam.podster.fm/84/download/audio.mp3",
        audioName: "Лекция № 4",
        audioSize: 21,
        audioDescription: "",
        chapterName: chapterNames[2],
        authorName: authorNames[0],
      ),
    ],
    [
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_009.mp3",
        audioName: "Лекция № 1",
        audioSize: 19,
        audioDescription: "",
        chapterName: chapterNames[2],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_010.mp3",
        audioName: "Лекция № 2",
        audioSize: 18,
        audioDescription: "",
        chapterName: chapterNames[2],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_011.mp3",
        audioName: "Лекция № 3",
        audioSize: 21,
        audioDescription: "",
        chapterName: chapterNames[2],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_012.mp3",
        audioName: "Лекция № 4",
        audioSize: 20,
        audioDescription: "",
        chapterName: chapterNames[2],
        authorName: authorNames[1],
      ),
    ],
    [
      Audio(
        url:
            "http://static.toislam.ws/files/audio/01_aqida/017_kitabu_tauhid/4_kratko_tauhid_fauzan/glava_02_str_23.mp3",
        audioName: "Лекция № 1",
        audioSize: 25,
        audioDescription: "",
        chapterName: chapterNames[2],
        authorName: authorNames[2],
      ),
    ],
    [],
  ],
  [
    [
      Audio(
        url: "https://toislam.podster.fm/85/download/audio.mp3",
        audioName: "Лекция № 1",
        audioSize: 19,
        audioDescription: "",
        chapterName: chapterNames[3],
        authorName: authorNames[0],
      ),
      Audio(
        url: "https://toislam.podster.fm/86/download/audio.mp3",
        audioName: "Лекция № 2",
        audioSize: 21,
        audioDescription: "",
        chapterName: chapterNames[3],
        authorName: authorNames[0],
      ),
      Audio(
        url: "https://toislam.podster.fm/87/download/audio.mp3",
        audioName: "Лекция № 3",
        audioSize: 14,
        audioDescription: "",
        chapterName: chapterNames[3],
        authorName: authorNames[0],
      ),
      Audio(
        url: "https://toislam.podster.fm/88/download/audio.mp3",
        audioName: "Лекция № 4",
        audioSize: 11,
        audioDescription: "",
        chapterName: chapterNames[3],
        authorName: authorNames[0],
      ),
    ],
    [
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_013.mp3",
        audioName: "Лекция № 1",
        audioSize: 24,
        audioDescription: "",
        chapterName: chapterNames[3],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_014.mp3",
        audioName: "Лекция № 2",
        audioSize: 20,
        audioDescription: "",
        chapterName: chapterNames[3],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_015.mp3",
        audioName: "Лекция № 3",
        audioSize: 19,
        audioDescription: "",
        chapterName: chapterNames[3],
        authorName: authorNames[1],
      ),
    ],
    [
      Audio(
        url:
            "http://static.toislam.ws/files/audio/01_aqida/017_kitabu_tauhid/4_kratko_tauhid_fauzan/glava_03_str_34.mp3",
        audioName: "Лекция № 1",
        audioSize: 17,
        audioDescription: "",
        chapterName: chapterNames[3],
        authorName: authorNames[2],
      ),
    ],
    [],
  ],
  [
    [
      Audio(
        url: "https://toislam.podster.fm/89/download/audio.mp3",
        audioName: "Лекция № 1",
        audioSize: 10,
        audioDescription: "",
        chapterName: chapterNames[4],
        authorName: authorNames[0],
      ),
      Audio(
        url: "https://toislam.podster.fm/90/download/audio.mp3",
        audioName: "Лекция № 2",
        audioSize: 17,
        audioDescription: "",
        chapterName: chapterNames[4],
        authorName: authorNames[0],
      ),
      Audio(
        url: "https://toislam.podster.fm/91/download/audio.mp3",
        audioName: "Лекция № 3",
        audioSize: 19,
        audioDescription: "",
        chapterName: chapterNames[4],
        authorName: authorNames[0],
      ),
      Audio(
        url: "https://toislam.podster.fm/92/download/audio.mp3",
        audioName: "Лекция № 4",
        audioSize: 11,
        audioDescription: "",
        chapterName: chapterNames[4],
        authorName: authorNames[0],
      ),
    ],
    [
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_016.mp3",
        audioName: "Лекция № 1",
        audioSize: 21,
        audioDescription: "",
        chapterName: chapterNames[4],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_017.mp3",
        audioName: "Лекция № 2",
        audioSize: 23,
        audioDescription: "",
        chapterName: chapterNames[4],
        authorName: authorNames[1],
      ),
    ],
    [
      Audio(
        url:
            "http://static.toislam.ws/files/audio/01_aqida/017_kitabu_tauhid/4_kratko_tauhid_fauzan/glava_04_str_42.mp3",
        audioName: "Лекция № 1",
        audioSize: 11,
        audioDescription: "",
        chapterName: chapterNames[4],
        authorName: authorNames[2],
      ),
    ],
    [],
  ],
  [
    [
      Audio(
        url: "https://toislam.podster.fm/93/download/audio.mp3",
        audioName: "Лекция № 1",
        audioSize: 12,
        audioDescription: "",
        chapterName: chapterNames[5],
        authorName: authorNames[0],
      ),
      Audio(
        url: "https://toislam.podster.fm/94/download/audio.mp3",
        audioName: "Лекция № 2",
        audioSize: 29,
        audioDescription: "",
        chapterName: chapterNames[5],
        authorName: authorNames[0],
      ),
      Audio(
        url: "https://toislam.podster.fm/95/download/audio.mp3",
        audioName: "Лекция № 3",
        audioSize: 20,
        audioDescription: "",
        chapterName: chapterNames[5],
        authorName: authorNames[0],
      ),
    ],
    [
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_018.mp3",
        audioName: "Лекция № 1",
        audioSize: 15,
        audioDescription: "",
        chapterName: chapterNames[5],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_019.mp3",
        audioName: "Лекция № 2",
        audioSize: 25,
        audioDescription: "",
        chapterName: chapterNames[5],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_020.mp3",
        audioName: "Лекция № 3",
        audioSize: 25,
        audioDescription: "",
        chapterName: chapterNames[5],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_021_konsultacia.mp3",
        audioName: "Лекция № 4",
        audioSize: 27,
        audioDescription: "",
        chapterName: chapterNames[5],
        authorName: authorNames[1],
      ),
    ],
    [
      Audio(
        url:
            "http://static.toislam.ws/files/audio/01_aqida/017_kitabu_tauhid/4_kratko_tauhid_fauzan/glava_05_str_51.mp3",
        audioName: "Лекция № 1",
        audioSize: 19,
        audioDescription: "",
        chapterName: chapterNames[5],
        authorName: authorNames[2],
      ),
    ],
    [],
  ],
  [
    [
      Audio(
        url: "https://toislam.podster.fm/96/download/audio.mp3",
        audioName: "Лекция № 1",
        audioSize: 21,
        audioDescription: "",
        chapterName: chapterNames[6],
        authorName: authorNames[0],
      ),
      Audio(
        url: "https://toislam.podster.fm/97/download/audio.mp3",
        audioName: "Лекция № 2",
        audioSize: 19,
        audioDescription: "",
        chapterName: chapterNames[6],
        authorName: authorNames[0],
      ),
      Audio(
        url: "https://toislam.podster.fm/98/download/audio.mp3",
        audioName: "Лекция № 3",
        audioSize: 21,
        audioDescription: "",
        chapterName: chapterNames[6],
        authorName: authorNames[0],
      ),
    ],
    [
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_022.mp3",
        audioName: "Лекция № 1",
        audioSize: 18,
        audioDescription: "",
        chapterName: chapterNames[6],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_023.mp3",
        audioName: "Лекция № 2",
        audioSize: 21,
        audioDescription: "",
        chapterName: chapterNames[6],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_024.mp3",
        audioName: "Лекция № 3",
        audioSize: 16,
        audioDescription: "",
        chapterName: chapterNames[6],
        authorName: authorNames[1],
      ),
    ],
    [
      Audio(
        url:
            "http://static.toislam.ws/files/audio/01_aqida/017_kitabu_tauhid/4_kratko_tauhid_fauzan/glava_06a_str_61.mp3",
        audioName: "Лекция № 1",
        audioSize: 14,
        audioDescription: "",
        chapterName: chapterNames[6],
        authorName: authorNames[2],
      ),
      Audio(
        url:
            "http://static.toislam.ws/files/audio/01_aqida/017_kitabu_tauhid/4_kratko_tauhid_fauzan/glava_06b_str_66.mp3",
        audioName: "Лекция № 2",
        audioSize: 13,
        audioDescription: "",
        chapterName: chapterNames[6],
        authorName: authorNames[2],
      ),
    ],
    [],
  ],
  [
    [
      Audio(
        url: "https://toislam.podster.fm/99/download/audio.mp3",
        audioName: "Лекция № 1",
        audioSize: 15,
        audioDescription: "",
        chapterName: chapterNames[7],
        authorName: authorNames[0],
      ),
      Audio(
        url: "https://toislam.podster.fm/100/download/audio.mp3",
        audioName: "Лекция № 2",
        audioSize: 21,
        audioDescription: "",
        chapterName: chapterNames[7],
        authorName: authorNames[0],
      ),
      Audio(
        url: "https://toislam.podster.fm/101/download/audio.mp3",
        audioName: "Лекция № 3",
        audioSize: 24,
        audioDescription: "",
        chapterName: chapterNames[7],
        authorName: authorNames[0],
      ),
      Audio(
        url: "https://toislam.podster.fm/102/download/audio.mp3",
        audioName: "Лекция № 4",
        audioSize: 22,
        audioDescription: "",
        chapterName: chapterNames[7],
        authorName: authorNames[0],
      ),
    ],
    [
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_025.mp3",
        audioName: "Лекция № 1",
        audioSize: 25,
        audioDescription: "",
        chapterName: chapterNames[7],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_026.mp3",
        audioName: "Лекция № 2",
        audioSize: 17,
        audioDescription: "",
        chapterName: chapterNames[7],
        authorName: authorNames[1],
      ),
    ],
    [
      Audio(
        url:
            "http://static.toislam.ws/files/audio/01_aqida/017_kitabu_tauhid/4_kratko_tauhid_fauzan/glava_07_str_70.mp3",
        audioName: "Лекция № 1",
        audioSize: 13,
        audioDescription: "",
        chapterName: chapterNames[7],
        authorName: authorNames[2],
      ),
    ],
    [],
  ],
  [
    [
      Audio(
        url: "https://toislam.podster.fm/103/download/audio.mp3",
        audioName: "Лекция № 1",
        audioSize: 15,
        audioDescription: "",
        chapterName: chapterNames[8],
        authorName: authorNames[0],
      ),
      Audio(
        url: "https://toislam.podster.fm/104/download/audio.mp3",
        audioName: "Лекция № 2",
        audioSize: 16,
        audioDescription: "",
        chapterName: chapterNames[8],
        authorName: authorNames[0],
      ),
      Audio(
        url: "https://toislam.podster.fm/105/download/audio.mp3",
        audioName: "Лекция № 3",
        audioSize: 20,
        audioDescription: "",
        chapterName: chapterNames[8],
        authorName: authorNames[0],
      ),
      Audio(
        url: "https://toislam.podster.fm/106/download/audio.mp3",
        audioName: "Лекция № 4",
        audioSize: 20,
        audioDescription: "",
        chapterName: chapterNames[8],
        authorName: authorNames[0],
      ),
      Audio(
        url: "https://toislam.podster.fm/107/download/audio.mp3",
        audioName: "Лекция № 5",
        audioSize: 17,
        audioDescription: "",
        chapterName: chapterNames[8],
        authorName: authorNames[0],
      ),
    ],
    [
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_027.mp3",
        audioName: "Лекция № 1",
        audioSize: 25,
        audioDescription: "",
        chapterName: chapterNames[8],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_028.mp3",
        audioName: "Лекция № 2",
        audioSize: 21,
        audioDescription: "",
        chapterName: chapterNames[8],
        authorName: authorNames[1],
      ),
    ],
    [
      Audio(
        url:
            "http://static.toislam.ws/files/audio/01_aqida/017_kitabu_tauhid/4_kratko_tauhid_fauzan/glava_08_str_77.mp3",
        audioName: "Лекция № 1",
        audioSize: 16,
        audioDescription: "",
        chapterName: chapterNames[8],
        authorName: authorNames[2],
      ),
    ],
    [],
  ],
  [
    [
      Audio(
        url: "https://toislam.podster.fm/108/download/audio.mp3",
        audioName: "Лекция № 1",
        audioSize: 19,
        audioDescription: "",
        chapterName: chapterNames[9],
        authorName: authorNames[0],
      ),
      Audio(
        url: "https://toislam.podster.fm/109/download/audio.mp3",
        audioName: "Лекция № 2",
        audioSize: 10,
        audioDescription: "",
        chapterName: chapterNames[9],
        authorName: authorNames[0],
      ),
      Audio(
        url: "https://toislam.podster.fm/110/download/audio.mp3",
        audioName: "Лекция № 3",
        audioSize: 15,
        audioDescription: "",
        chapterName: chapterNames[9],
        authorName: authorNames[0],
      ),
      Audio(
        url: "https://toislam.podster.fm/111/download/audio.mp3",
        audioName: "Лекция № 4",
        audioSize: 19,
        audioDescription: "",
        chapterName: chapterNames[9],
        authorName: authorNames[0],
      ),
    ],
    [
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_029.mp3",
        audioName: "Лекция № 1",
        audioSize: 22,
        audioDescription: "",
        chapterName: chapterNames[9],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_030.mp3",
        audioName: "Лекция № 2",
        audioSize: 13,
        audioDescription: "",
        chapterName: chapterNames[9],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_031.mp3",
        audioName: "Лекция № 3",
        audioSize: 26,
        audioDescription: "",
        chapterName: chapterNames[9],
        authorName: authorNames[1],
      ),
    ],
    [
      Audio(
        url:
            "http://static.toislam.ws/files/audio/01_aqida/017_kitabu_tauhid/4_kratko_tauhid_fauzan/glava_09_str_88.mp3",
        audioName: "Лекция № 1",
        audioSize: 10,
        audioDescription: "",
        chapterName: chapterNames[9],
        authorName: authorNames[2],
      ),
    ],
    [],
  ],
  [
    [
      Audio(
        url: "https://toislam.podster.fm/112/download/audio.mp3",
        audioName: "Лекция № 1",
        audioSize: 16,
        audioDescription: "",
        chapterName: chapterNames[10],
        authorName: authorNames[0],
      ),
      Audio(
        url: "https://toislam.podster.fm/113/download/audio.mp3",
        audioName: "Лекция № 2",
        audioSize: 18,
        audioDescription: "",
        chapterName: chapterNames[10],
        authorName: authorNames[0],
      ),
      Audio(
        url: "https://toislam.podster.fm/114/download/audio.mp3",
        audioName: "Лекция № 3",
        audioSize: 13,
        audioDescription: "",
        chapterName: chapterNames[10],
        authorName: authorNames[0],
      ),
      Audio(
        url: "https://toislam.podster.fm/115/download/audio.mp3",
        audioName: "Лекция № 4",
        audioSize: 27,
        audioDescription: "",
        chapterName: chapterNames[10],
        authorName: authorNames[0],
      ),
      Audio(
        url: "https://toislam.podster.fm/116/download/audio.mp3",
        audioName: "Лекция № 5",
        audioSize: 15,
        audioDescription: "",
        chapterName: chapterNames[10],
        authorName: authorNames[0],
      ),
      Audio(
        url: "https://toislam.podster.fm/117/download/audio.mp3",
        audioName: "Лекция № 6",
        audioSize: 26,
        audioDescription: "",
        chapterName: chapterNames[10],
        authorName: authorNames[0],
      ),
    ],
    [
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_032.mp3",
        audioName: "Лекция № 1",
        audioSize: 26,
        audioDescription: "",
        chapterName: chapterNames[10],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_033.mp3",
        audioName: "Лекция № 2",
        audioSize: 17,
        audioDescription: "",
        chapterName: chapterNames[10],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_034.mp3",
        audioName: "Лекция № 3",
        audioSize: 14,
        audioDescription: "",
        chapterName: chapterNames[10],
        authorName: authorNames[1],
      ),
    ],
    [
      Audio(
        url:
            "http://static.toislam.ws/files/audio/01_aqida/017_kitabu_tauhid/4_kratko_tauhid_fauzan/glava_10_str_94.mp3",
        audioName: "Лекция № 1",
        audioSize: 18,
        audioDescription: "",
        chapterName: chapterNames[10],
        authorName: authorNames[2],
      ),
    ],
    [],
  ],
  [
    [
      Audio(
        url: "https://toislam.podster.fm/118/download/audio.mp3",
        audioName: "Лекция № 1",
        audioSize: 25,
        audioDescription: "",
        chapterName: chapterNames[11],
        authorName: authorNames[0],
      ),
    ],
    [
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_035.mp3",
        audioName: "Лекция № 1",
        audioSize: 14,
        audioDescription: "",
        chapterName: chapterNames[11],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_036.mp3",
        audioName: "Лекция № 2",
        audioSize: 15,
        audioDescription: "",
        chapterName: chapterNames[11],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_037.mp3",
        audioName: "Лекция № 3",
        audioSize: 23,
        audioDescription: "",
        chapterName: chapterNames[11],
        authorName: authorNames[1],
      ),
    ],
    [
      Audio(
        url:
            "http://static.toislam.ws/files/audio/01_aqida/017_kitabu_tauhid/4_kratko_tauhid_fauzan/glava_11_str_102.mp3",
        audioName: "Лекция № 1",
        audioSize: 8,
        audioDescription: "",
        chapterName: chapterNames[11],
        authorName: authorNames[2],
      ),
    ],
    [],
  ],
  [
    [
      Audio(
        url: "https://toislam.podster.fm/119/download/audio.mp3",
        audioName: "Лекция № 1",
        audioSize: 27,
        audioDescription: "",
        chapterName: chapterNames[12],
        authorName: authorNames[0],
      ),
    ],
    [
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_038.mp3",
        audioName: "Лекция № 1",
        audioSize: 17,
        audioDescription: "",
        chapterName: chapterNames[12],
        authorName: authorNames[1],
      ),
    ],
    [
      Audio(
        url:
            "http://static.toislam.ws/files/audio/01_aqida/017_kitabu_tauhid/4_kratko_tauhid_fauzan/glava_12_str_106.mp3",
        audioName: "Лекция № 1",
        audioSize: 5,
        audioDescription: "",
        chapterName: chapterNames[12],
        authorName: authorNames[2],
      ),
    ],
    [],
  ],
  [
    [
      Audio(
        url: "https://toislam.podster.fm/120/download/audio.mp3",
        audioName: "Лекция № 1",
        audioSize: 20,
        audioDescription: "",
        chapterName: chapterNames[13],
        authorName: authorNames[0],
      ),
      Audio(
        url: "https://toislam.podster.fm/121/download/audio.mp3",
        audioName: "Лекция № 2",
        audioSize: 14,
        audioDescription: "",
        chapterName: chapterNames[13],
        authorName: authorNames[0],
      ),
    ],
    [
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_039.mp3",
        audioName: "Лекция № 1",
        audioSize: 14,
        audioDescription: "",
        chapterName: chapterNames[13],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_040.mp3",
        audioName: "Лекция № 2",
        audioSize: 19,
        audioDescription: "",
        chapterName: chapterNames[13],
        authorName: authorNames[1],
      ),
    ],
    [
      Audio(
        url:
            "http://static.toislam.ws/files/audio/01_aqida/017_kitabu_tauhid/4_kratko_tauhid_fauzan/glava_13_str_109.mp3",
        audioName: "Лекция № 1",
        audioSize: 8,
        audioDescription: "",
        chapterName: chapterNames[13],
        authorName: authorNames[2],
      ),
    ],
    [],
  ],
  [
    [
      Audio(
        url: "https://toislam.podster.fm/122/download/audio.mp3",
        audioName: "Лекция № 1",
        audioSize: 18,
        audioDescription: "",
        chapterName: chapterNames[14],
        authorName: authorNames[0],
      ),
      Audio(
        url: "https://toislam.podster.fm/123/download/audio.mp3",
        audioName: "Лекция № 2",
        audioSize: 23,
        audioDescription: "",
        chapterName: chapterNames[14],
        authorName: authorNames[0],
      ),
      Audio(
        url: "https://toislam.podster.fm/124/download/audio.mp3",
        audioName: "Лекция № 3",
        audioSize: 21,
        audioDescription: "",
        chapterName: chapterNames[14],
        authorName: authorNames[0],
      ),
    ],
    [
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_041.mp3",
        audioName: "Лекция № 1",
        audioSize: 25,
        audioDescription: "",
        chapterName: chapterNames[14],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_042.mp3",
        audioName: "Лекция № 2",
        audioSize: 20,
        audioDescription: "",
        chapterName: chapterNames[14],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_043.mp3",
        audioName: "Лекция № 3",
        audioSize: 18,
        audioDescription: "",
        chapterName: chapterNames[14],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_044_konsultacia.mp3",
        audioName: "Лекция № 4",
        audioSize: 27,
        audioDescription: "",
        chapterName: chapterNames[14],
        authorName: authorNames[1],
      ),
    ],
    [
      Audio(
        url:
            "http://static.toislam.ws/files/audio/01_aqida/017_kitabu_tauhid/4_kratko_tauhid_fauzan/glava_14_str_113.mp3",
        audioName: "Лекция № 1",
        audioSize: 20,
        audioDescription: "",
        chapterName: chapterNames[14],
        authorName: authorNames[2],
      ),
    ],
    [],
  ],
  [
    [
      Audio(
        url: "https://toislam.podster.fm/125/download/audio.mp3",
        audioName: "Лекция № 1",
        audioSize: 22,
        audioDescription: "",
        chapterName: chapterNames[15],
        authorName: authorNames[0],
      ),
      Audio(
        url: "https://toislam.podster.fm/126/download/audio.mp3",
        audioName: "Лекция № 2",
        audioSize: 19,
        audioDescription: "",
        chapterName: chapterNames[15],
        authorName: authorNames[0],
      ),
      Audio(
        url: "https://toislam.podster.fm/127/download/audio.mp3",
        audioName: "Лекция № 3",
        audioSize: 22,
        audioDescription: "",
        chapterName: chapterNames[15],
        authorName: authorNames[0],
      ),
    ],
    [
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_045.mp3",
        audioName: "Лекция № 1",
        audioSize: 26,
        audioDescription: "",
        chapterName: chapterNames[15],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_046.mp3",
        audioName: "Лекция № 2",
        audioSize: 26,
        audioDescription: "",
        chapterName: chapterNames[15],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_047.mp3",
        audioName: "Лекция № 3",
        audioSize: 27,
        audioDescription: "",
        chapterName: chapterNames[15],
        authorName: authorNames[1],
      ),
    ],
    [
      Audio(
        url:
            "http://static.toislam.ws/files/audio/01_aqida/017_kitabu_tauhid/4_kratko_tauhid_fauzan/glava_15_str_123.mp3",
        audioName: "Лекция № 1",
        audioSize: 14,
        audioDescription: "",
        chapterName: chapterNames[15],
        authorName: authorNames[2],
      ),
    ],
    [],
  ],
  [
    [
      Audio(
        url: "https://toislam.podster.fm/128/download/audio.mp3",
        audioName: "Лекция № 1",
        audioSize: 29,
        audioDescription: "",
        chapterName: chapterNames[16],
        authorName: authorNames[0],
      ),
    ],
    [
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_048.mp3",
        audioName: "Лекция № 1",
        audioSize: 17,
        audioDescription: "",
        chapterName: chapterNames[16],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_049.mp3",
        audioName: "Лекция № 2",
        audioSize: 20,
        audioDescription: "",
        chapterName: chapterNames[16],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_050.mp3",
        audioName: "Лекция № 3",
        audioSize: 13,
        audioDescription: "",
        chapterName: chapterNames[16],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_051.mp3",
        audioName: "Лекция № 4",
        audioSize: 17,
        audioDescription: "",
        chapterName: chapterNames[16],
        authorName: authorNames[1],
      ),
    ],
    [
      Audio(
        url:
            "http://static.toislam.ws/files/audio/01_aqida/017_kitabu_tauhid/4_kratko_tauhid_fauzan/glava_16_str_134.mp3",
        audioName: "Лекция № 1",
        audioSize: 11,
        audioDescription: "",
        chapterName: chapterNames[16],
        authorName: authorNames[2],
      ),
    ],
    [],
  ],
  [
    [
      Audio(
        url: "https://toislam.podster.fm/129/download/audio.mp3",
        audioName: "Лекция № 1",
        audioSize: 19,
        audioDescription: "",
        chapterName: chapterNames[17],
        authorName: authorNames[0],
      ),
      Audio(
        url: "https://toislam.podster.fm/130/download/audio.mp3",
        audioName: "Лекция № 2",
        audioSize: 20,
        audioDescription: "",
        chapterName: chapterNames[17],
        authorName: authorNames[0],
      ),
      Audio(
        url: "https://toislam.podster.fm/131/download/audio.mp3",
        audioName: "Лекция № 3",
        audioSize: 10,
        audioDescription: "",
        chapterName: chapterNames[17],
        authorName: authorNames[0],
      ),
    ],
    [
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_052.mp3",
        audioName: "Лекция № 1",
        audioSize: 18,
        audioDescription: "",
        chapterName: chapterNames[17],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_053.mp3",
        audioName: "Лекция № 2",
        audioSize: 25,
        audioDescription: "",
        chapterName: chapterNames[17],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_054.mp3",
        audioName: "Лекция № 3",
        audioSize: 17,
        audioDescription: "",
        chapterName: chapterNames[17],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_055.mp3",
        audioName: "Лекция № 4",
        audioSize: 18,
        audioDescription: "",
        chapterName: chapterNames[17],
        authorName: authorNames[1],
      ),
    ],
    [
      Audio(
        url:
            "http://static.toislam.ws/files/audio/01_aqida/017_kitabu_tauhid/4_kratko_tauhid_fauzan/glava_17_str_141.mp3",
        audioName: "Лекция № 1",
        audioSize: 15,
        audioDescription: "",
        chapterName: chapterNames[17],
        authorName: authorNames[2],
      ),
    ],
    [],
  ],
  [
    [
      Audio(
        url: "https://toislam.podster.fm/132/download/audio.mp3",
        audioName: "Лекция № 1",
        audioSize: 11,
        audioDescription: "",
        chapterName: chapterNames[18],
        authorName: authorNames[0],
      ),
      Audio(
        url: "https://toislam.podster.fm/133/download/audio.mp3",
        audioName: "Лекция № 2",
        audioSize: 12,
        audioDescription: "",
        chapterName: chapterNames[18],
        authorName: authorNames[0],
      ),
      Audio(
        url: "https://toislam.podster.fm/134/download/audio.mp3",
        audioName: "Лекция № 3",
        audioSize: 19,
        audioDescription: "",
        chapterName: chapterNames[18],
        authorName: authorNames[0],
      ),
    ],
    [
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_056.mp3",
        audioName: "Лекция № 1",
        audioSize: 15,
        audioDescription: "",
        chapterName: chapterNames[18],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_057.mp3",
        audioName: "Лекция № 2",
        audioSize: 21,
        audioDescription: "",
        chapterName: chapterNames[18],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_058.mp3",
        audioName: "Лекция № 3",
        audioSize: 13,
        audioDescription: "",
        chapterName: chapterNames[18],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_059_konsultacia_1.mp3",
        audioName: "Лекция № 4",
        audioSize: 15,
        audioDescription: "",
        chapterName: chapterNames[18],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_060_konsultacia_2.mp3",
        audioName: "Лекция № 5",
        audioSize: 17,
        audioDescription: "",
        chapterName: chapterNames[18],
        authorName: authorNames[1],
      ),
    ],
    [
      Audio(
        url:
            "http://static.toislam.ws/files/audio/01_aqida/017_kitabu_tauhid/4_kratko_tauhid_fauzan/glava_18_str_153.mp3",
        audioName: "Лекция № 1",
        audioSize: 8,
        audioDescription: "",
        chapterName: chapterNames[18],
        authorName: authorNames[2],
      ),
    ],
    [],
  ],
  [
    [
      Audio(
        url: "https://toislam.podster.fm/135/download/audio.mp3",
        audioName: "Лекция № 1",
        audioSize: 16,
        audioDescription: "",
        chapterName: chapterNames[19],
        authorName: authorNames[0],
      ),
      Audio(
        url: "https://toislam.podster.fm/136/download/audio.mp3",
        audioName: "Лекция № 2",
        audioSize: 19,
        audioDescription: "",
        chapterName: chapterNames[19],
        authorName: authorNames[0],
      ),
      Audio(
        url: "https://toislam.podster.fm/137/download/audio.mp3",
        audioName: "Лекция № 3",
        audioSize: 21,
        audioDescription: "",
        chapterName: chapterNames[19],
        authorName: authorNames[0],
      ),
      Audio(
        url: "https://toislam.podster.fm/138/download/audio.mp3",
        audioName: "Лекция № 4",
        audioSize: 10,
        audioDescription: "",
        chapterName: chapterNames[19],
        authorName: authorNames[0],
      ),
    ],
    [
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_061.mp3",
        audioName: "Лекция № 1",
        audioSize: 18,
        audioDescription: "",
        chapterName: chapterNames[19],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_062.mp3",
        audioName: "Лекция № 2",
        audioSize: 21,
        audioDescription: "",
        chapterName: chapterNames[19],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_063.mp3",
        audioName: "Лекция № 3",
        audioSize: 17,
        audioDescription: "",
        chapterName: chapterNames[19],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_064.mp3",
        audioName: "Лекция № 4",
        audioSize: 19,
        audioDescription: "",
        chapterName: chapterNames[19],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_065.mp3",
        audioName: "Лекция № 5",
        audioSize: 20,
        audioDescription: "",
        chapterName: chapterNames[19],
        authorName: authorNames[1],
      ),
    ],
    [
      Audio(
        url:
            "http://static.toislam.ws/files/audio/01_aqida/017_kitabu_tauhid/4_kratko_tauhid_fauzan/glava_19_str_158.mp3",
        audioName: "Лекция № 1",
        audioSize: 13,
        audioDescription: "",
        chapterName: chapterNames[19],
        authorName: authorNames[2],
      ),
    ],
    [],
  ],
  [
    [
      Audio(
        url: "https://toislam.podster.fm/139/download/audio.mp3",
        audioName: "Лекция № 1",
        audioSize: 19,
        audioDescription: "",
        chapterName: chapterNames[20],
        authorName: authorNames[0],
      ),
      Audio(
        url: "https://toislam.podster.fm/140/download/audio.mp3",
        audioName: "Лекция № 2",
        audioSize: 22,
        audioDescription: "",
        chapterName: chapterNames[20],
        authorName: authorNames[0],
      ),
      Audio(
        url: "https://toislam.podster.fm/141/download/audio.mp3",
        audioName: "Лекция № 3",
        audioSize: 18,
        audioDescription: "",
        chapterName: chapterNames[20],
        authorName: authorNames[0],
      ),
    ],
    [
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_066.mp3",
        audioName: "Лекция № 1",
        audioSize: 15,
        audioDescription: "",
        chapterName: chapterNames[20],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_067.mp3",
        audioName: "Лекция № 2",
        audioSize: 15,
        audioDescription: "",
        chapterName: chapterNames[20],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_068.mp3",
        audioName: "Лекция № 3",
        audioSize: 17,
        audioDescription: "",
        chapterName: chapterNames[20],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_069.mp3",
        audioName: "Лекция № 4",
        audioSize: 15,
        audioDescription: "",
        chapterName: chapterNames[20],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_070.mp3",
        audioName: "Лекция № 5",
        audioSize: 23,
        audioDescription: "",
        chapterName: chapterNames[20],
        authorName: authorNames[1],
      ),
    ],
    [
      Audio(
        url:
            "http://static.toislam.ws/files/audio/01_aqida/017_kitabu_tauhid/4_kratko_tauhid_fauzan/glava_20_str_168.mp3",
        audioName: "Лекция № 1",
        audioSize: 12,
        audioDescription: "",
        chapterName: chapterNames[20],
        authorName: authorNames[2],
      ),
    ],
    [],
  ],
  [
    [
      Audio(
        url: "https://toislam.podster.fm/142/download/audio.mp3",
        audioName: "Лекция № 1",
        audioSize: 27,
        audioDescription: "",
        chapterName: chapterNames[21],
        authorName: authorNames[0],
      ),
    ],
    [
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_071.mp3",
        audioName: "Лекция № 1",
        audioSize: 23,
        audioDescription: "",
        chapterName: chapterNames[21],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_072.mp3",
        audioName: "Лекция № 2",
        audioSize: 24,
        audioDescription: "",
        chapterName: chapterNames[21],
        authorName: authorNames[1],
      ),
    ],
    [
      Audio(
        url:
            "http://static.toislam.ws/files/audio/01_aqida/017_kitabu_tauhid/4_kratko_tauhid_fauzan/glava_21_str_178.mp3",
        audioName: "Лекция № 1",
        audioSize: 6,
        audioDescription: "",
        chapterName: chapterNames[21],
        authorName: authorNames[2],
      ),
    ],
    [],
  ],
  [
    [
      Audio(
        url: "https://toislam.podster.fm/143/download/audio.mp3",
        audioName: "Лекция № 1",
        audioSize: 19,
        audioDescription: "",
        chapterName: chapterNames[22],
        authorName: authorNames[0],
      ),
    ],
    [
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_073.mp3",
        audioName: "Лекция № 1",
        audioSize: 22,
        audioDescription: "",
        chapterName: chapterNames[22],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_074.mp3",
        audioName: "Лекция № 2",
        audioSize: 24,
        audioDescription: "",
        chapterName: chapterNames[22],
        authorName: authorNames[1],
      ),
    ],
    [
      Audio(
        url:
            "http://static.toislam.ws/files/audio/01_aqida/017_kitabu_tauhid/4_kratko_tauhid_fauzan/glava_22_str_183.mp3",
        audioName: "Лекция № 1",
        audioSize: 7,
        audioDescription: "",
        chapterName: chapterNames[22],
        authorName: authorNames[2],
      ),
    ],
    [],
  ],
  [
    [
      Audio(
        url: "https://toislam.podster.fm/144/download/audio.mp3",
        audioName: "Лекция № 1",
        audioSize: 20,
        audioDescription: "",
        chapterName: chapterNames[23],
        authorName: authorNames[0],
      ),
      Audio(
        url: "https://toislam.podster.fm/145/download/audio.mp3",
        audioName: "Лекция № 2",
        audioSize: 22,
        audioDescription: "",
        chapterName: chapterNames[23],
        authorName: authorNames[0],
      ),
      Audio(
        url: "https://toislam.podster.fm/146/download/audio.mp3",
        audioName: "Лекция № 3",
        audioSize: 28,
        audioDescription: "",
        chapterName: chapterNames[23],
        authorName: authorNames[0],
      ),
    ],
    [
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_075.mp3",
        audioName: "Лекция № 1",
        audioSize: 22,
        audioDescription: "",
        chapterName: chapterNames[23],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_076.mp3",
        audioName: "Лекция № 2",
        audioSize: 16,
        audioDescription: "",
        chapterName: chapterNames[23],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_077.mp3",
        audioName: "Лекция № 3",
        audioSize: 19,
        audioDescription: "",
        chapterName: chapterNames[23],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_078.mp3",
        audioName: "Лекция № 4",
        audioSize: 24,
        audioDescription: "",
        chapterName: chapterNames[23],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_079.mp3",
        audioName: "Лекция № 5",
        audioSize: 13,
        audioDescription: "",
        chapterName: chapterNames[23],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_080_konsultacia_1.mp3",
        audioName: "Лекция № 6",
        audioSize: 21,
        audioDescription: "",
        chapterName: chapterNames[23],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_081_konsultacia_2.mp3",
        audioName: "Лекция № 7",
        audioSize: 15,
        audioDescription: "",
        chapterName: chapterNames[23],
        authorName: authorNames[1],
      ),
    ],
    [
      Audio(
        url:
            "http://static.toislam.ws/files/audio/01_aqida/017_kitabu_tauhid/4_kratko_tauhid_fauzan/glava_23_str_188.mp3",
        audioName: "Лекция № 1",
        audioSize: 20,
        audioDescription: "",
        chapterName: chapterNames[23],
        authorName: authorNames[2],
      ),
    ],
    [],
  ],
  [
    [
      Audio(
        url: "https://toislam.podster.fm/147/download/audio.mp3",
        audioName: "Лекция № 1",
        audioSize: 21,
        audioDescription: "",
        chapterName: chapterNames[24],
        authorName: authorNames[0],
      ),
      Audio(
        url: "https://toislam.podster.fm/148/download/audio.mp3",
        audioName: "Лекция № 2",
        audioSize: 14,
        audioDescription: "",
        chapterName: chapterNames[24],
        authorName: authorNames[0],
      ),
      Audio(
        url: "https://toislam.podster.fm/149/download/audio.mp3",
        audioName: "Лекция № 3",
        audioSize: 21,
        audioDescription: "",
        chapterName: chapterNames[24],
        authorName: authorNames[0],
      ),
    ],
    [
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_082.mp3",
        audioName: "Лекция № 1",
        audioSize: 23,
        audioDescription: "",
        chapterName: chapterNames[24],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_083.mp3",
        audioName: "Лекция № 2",
        audioSize: 27,
        audioDescription: "",
        chapterName: chapterNames[24],
        authorName: authorNames[1],
      ),
    ],
    [
      Audio(
        url:
            "http://static.toislam.ws/files/audio/01_aqida/017_kitabu_tauhid/4_kratko_tauhid_fauzan/glava_24_str_199.mp3",
        audioName: "Лекция № 1",
        audioSize: 9,
        audioDescription: "",
        chapterName: chapterNames[24],
        authorName: authorNames[2],
      ),
    ],
    [],
  ],
  [
    [
      Audio(
        url: "https://toislam.podster.fm/150/download/audio.mp3",
        audioName: "Лекция № 1",
        audioSize: 22,
        audioDescription: "",
        chapterName: chapterNames[25],
        authorName: authorNames[0],
      ),
    ],
    [
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_084.mp3",
        audioName: "Лекция № 1",
        audioSize: 23,
        audioDescription: "",
        chapterName: chapterNames[25],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_085.mp3",
        audioName: "Лекция № 2",
        audioSize: 21,
        audioDescription: "",
        chapterName: chapterNames[25],
        authorName: authorNames[1],
      ),
    ],
    [
      Audio(
        url:
            "http://static.toislam.ws/files/audio/01_aqida/017_kitabu_tauhid/4_kratko_tauhid_fauzan/glava_25_str_204.mp3",
        audioName: "Лекция № 1",
        audioSize: 12,
        audioDescription: "",
        chapterName: chapterNames[25],
        authorName: authorNames[2],
      ),
    ],
    [],
  ],
  [
    [
      Audio(
        url: "https://toislam.podster.fm/151/download/audio.mp3",
        audioName: "Лекция № 1",
        audioSize: 29,
        audioDescription: "",
        chapterName: chapterNames[26],
        authorName: authorNames[0],
      ),
    ],
    [
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_086.mp3",
        audioName: "Лекция № 1",
        audioSize: 22,
        audioDescription: "",
        chapterName: chapterNames[26],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_087.mp3",
        audioName: "Лекция № 2",
        audioSize: 22,
        audioDescription: "",
        chapterName: chapterNames[26],
        authorName: authorNames[1],
      ),
    ],
    [
      Audio(
        url:
            "http://static.toislam.ws/files/audio/01_aqida/017_kitabu_tauhid/4_kratko_tauhid_fauzan/glava_26_str_213.mp3",
        audioName: "Лекция № 1",
        audioSize: 13,
        audioDescription: "",
        chapterName: chapterNames[26],
        authorName: authorNames[2],
      ),
    ],
    [],
  ],
  [
    [
      Audio(
        url: "https://toislam.podster.fm/152/download/audio.mp3",
        audioName: "Лекция № 1",
        audioSize: 16,
        audioDescription: "",
        chapterName: chapterNames[27],
        authorName: authorNames[0],
      ),
    ],
    [
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_088.mp3",
        audioName: "Лекция № 1",
        audioSize: 19,
        audioDescription: "",
        chapterName: chapterNames[27],
        authorName: authorNames[1],
      ),
    ],
    [
      Audio(
        url:
            "http://static.toislam.ws/files/audio/01_aqida/017_kitabu_tauhid/4_kratko_tauhid_fauzan/glava_27_str_221.mp3",
        audioName: "Лекция № 1",
        audioSize: 10,
        audioDescription: "",
        chapterName: chapterNames[27],
        authorName: authorNames[2],
      ),
    ],
    [],
  ],
  [
    [
      Audio(
        url: "https://toislam.podster.fm/153/download/audio.mp3",
        audioName: "Лекция № 1",
        audioSize: 17,
        audioDescription: "",
        chapterName: chapterNames[28],
        authorName: authorNames[0],
      ),
      Audio(
        url: "https://toislam.podster.fm/154/download/audio.mp3",
        audioName: "Лекция № 2",
        audioSize: 29,
        audioDescription: "",
        chapterName: chapterNames[28],
        authorName: authorNames[0],
      ),
    ],
    [
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_089.mp3",
        audioName: "Лекция № 1",
        audioSize: 24,
        audioDescription: "",
        chapterName: chapterNames[28],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_090.mp3",
        audioName: "Лекция № 2",
        audioSize: 17,
        audioDescription: "",
        chapterName: chapterNames[28],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_091.mp3",
        audioName: "Лекция № 3",
        audioSize: 25,
        audioDescription: "",
        chapterName: chapterNames[28],
        authorName: authorNames[1],
      ),
    ],
    [
      Audio(
        url:
            "http://static.toislam.ws/files/audio/01_aqida/017_kitabu_tauhid/4_kratko_tauhid_fauzan/glava_28_str_225.mp3",
        audioName: "Лекция № 1",
        audioSize: 24,
        audioDescription: "",
        chapterName: chapterNames[28],
        authorName: authorNames[2],
      ),
    ],
    [],
  ],
  [
    [
      Audio(
        url: "https://toislam.podster.fm/155/download/audio.mp3",
        audioName: "Лекция № 1",
        audioSize: 20,
        audioDescription: "",
        chapterName: chapterNames[29],
        authorName: authorNames[0],
      ),
    ],
    [
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_092.mp3",
        audioName: "Лекция № 1",
        audioSize: 16,
        audioDescription: "",
        chapterName: chapterNames[29],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_093.mp3",
        audioName: "Лекция № 2",
        audioSize: 24,
        audioDescription: "",
        chapterName: chapterNames[29],
        authorName: authorNames[1],
      ),
    ],
    [
      Audio(
        url:
            "http://static.toislam.ws/files/audio/01_aqida/017_kitabu_tauhid/4_kratko_tauhid_fauzan/glava_29_str_236.mp3",
        audioName: "Лекция № 1",
        audioSize: 9,
        audioDescription: "",
        chapterName: chapterNames[29],
        authorName: authorNames[2],
      ),
    ],
    [],
  ],
  [
    [
      Audio(
        url: "https://toislam.podster.fm/156/download/audio.mp3",
        audioName: "Лекция № 1",
        audioSize: 32,
        audioDescription: "",
        chapterName: chapterNames[30],
        authorName: authorNames[0],
      ),
    ],
    [
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_094.mp3",
        audioName: "Лекция № 1",
        audioSize: 24,
        audioDescription: "",
        chapterName: chapterNames[30],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_095.mp3",
        audioName: "Лекция № 2",
        audioSize: 22,
        audioDescription: "",
        chapterName: chapterNames[30],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_096_konsultacia_1.mp3",
        audioName: "Лекция № 3",
        audioSize: 27,
        audioDescription: "",
        chapterName: chapterNames[30],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_097_konsultacia_2.mp3",
        audioName: "Лекция № 4",
        audioSize: 27,
        audioDescription: "",
        chapterName: chapterNames[30],
        authorName: authorNames[1],
      ),
    ],
    [
      Audio(
        url:
            "http://static.toislam.ws/files/audio/01_aqida/017_kitabu_tauhid/4_kratko_tauhid_fauzan/glava_30_str_241.mp3",
        audioName: "Лекция № 1",
        audioSize: 15,
        audioDescription: "",
        chapterName: chapterNames[30],
        authorName: authorNames[2],
      ),
    ],
    [],
  ],
  [
    [
      Audio(
        url: "https://toislam.podster.fm/157/download/audio.mp3",
        audioName: "Лекция № 1",
        audioSize: 25,
        audioDescription: "",
        chapterName: chapterNames[31],
        authorName: authorNames[0],
      ),
    ],
    [
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_098.mp3",
        audioName: "Лекция № 1",
        audioSize: 22,
        audioDescription: "",
        chapterName: chapterNames[31],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_099.mp3",
        audioName: "Лекция № 2",
        audioSize: 19,
        audioDescription: "",
        chapterName: chapterNames[31],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_100.mp3",
        audioName: "Лекция № 3",
        audioSize: 14,
        audioDescription: "",
        chapterName: chapterNames[31],
        authorName: authorNames[1],
      ),
    ],
    [
      Audio(
        url:
            "http://static.toislam.ws/files/audio/01_aqida/017_kitabu_tauhid/4_kratko_tauhid_fauzan/glava_31_str_249.mp3",
        audioName: "Лекция № 1",
        audioSize: 12,
        audioDescription: "",
        chapterName: chapterNames[31],
        authorName: authorNames[2],
      ),
    ],
    [],
  ],
  [
    [
      Audio(
        url: "https://toislam.podster.fm/158/download/audio.mp3",
        audioName: "Лекция № 1",
        audioSize: 20,
        audioDescription: "",
        chapterName: chapterNames[32],
        authorName: authorNames[0],
      ),
    ],
    [
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_101.mp3",
        audioName: "Лекция № 1",
        audioSize: 24,
        audioDescription: "",
        chapterName: chapterNames[32],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_102.mp3",
        audioName: "Лекция № 2",
        audioSize: 20,
        audioDescription: "",
        chapterName: chapterNames[32],
        authorName: authorNames[1],
      ),
    ],
    [
      Audio(
        url:
            "http://static.toislam.ws/files/audio/01_aqida/017_kitabu_tauhid/4_kratko_tauhid_fauzan/glava_32_str_257.mp3",
        audioName: "Лекция № 1",
        audioSize: 17,
        audioDescription: "",
        chapterName: chapterNames[32],
        authorName: authorNames[2],
      ),
    ],
    [],
  ],
  [
    [
      Audio(
        url: "https://toislam.podster.fm/159/download/audio.mp3",
        audioName: "Лекция № 1",
        audioSize: 22,
        audioDescription: "",
        chapterName: chapterNames[33],
        authorName: authorNames[0],
      ),
    ],
    [
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_103.mp3",
        audioName: "Лекция № 1",
        audioSize: 18,
        audioDescription: "",
        chapterName: chapterNames[33],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_104.mp3",
        audioName: "Лекция № 2",
        audioSize: 13,
        audioDescription: "",
        chapterName: chapterNames[33],
        authorName: authorNames[1],
      ),
    ],
    [
      Audio(
        url:
            "http://static.toislam.ws/files/audio/01_aqida/017_kitabu_tauhid/4_kratko_tauhid_fauzan/glava_33_str_268.mp3",
        audioName: "Лекция № 1",
        audioSize: 6,
        audioDescription: "",
        chapterName: chapterNames[33],
        authorName: authorNames[2],
      ),
    ],
    [],
  ],
  [
    [
      Audio(
        url: "https://toislam.podster.fm/160/download/audio.mp3",
        audioName: "Лекция № 1",
        audioSize: 19,
        audioDescription: "",
        chapterName: chapterNames[34],
        authorName: authorNames[0],
      ),
    ],
    [
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_105.mp3",
        audioName: "Лекция № 1",
        audioSize: 19,
        audioDescription: "",
        chapterName: chapterNames[34],
        authorName: authorNames[1],
      ),
    ],
    [
      Audio(
        url:
            "http://static.toislam.ws/files/audio/01_aqida/017_kitabu_tauhid/4_kratko_tauhid_fauzan/glava_34_str_273.mp3",
        audioName: "Лекция № 1",
        audioSize: 8,
        audioDescription: "",
        chapterName: chapterNames[34],
        authorName: authorNames[2],
      ),
    ],
    [],
  ],
  [
    [
      Audio(
        url: "https://toislam.podster.fm/161/download/audio.mp3",
        audioName: "Лекция № 1",
        audioSize: 18,
        audioDescription: "",
        chapterName: chapterNames[35],
        authorName: authorNames[0],
      ),
      Audio(
        url: "https://toislam.podster.fm/162/download/audio.mp3",
        audioName: "Лекция № 2",
        audioSize: 19,
        audioDescription: "",
        chapterName: chapterNames[35],
        authorName: authorNames[0],
      ),
    ],
    [
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_106.mp3",
        audioName: "Лекция № 1",
        audioSize: 19,
        audioDescription: "",
        chapterName: chapterNames[35],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_107.mp3",
        audioName: "Лекция № 2",
        audioSize: 12,
        audioDescription: "",
        chapterName: chapterNames[35],
        authorName: authorNames[1],
      ),
    ],
    [
      Audio(
        url:
            "http://static.toislam.ws/files/audio/01_aqida/017_kitabu_tauhid/4_kratko_tauhid_fauzan/glava_35_str_277.mp3",
        audioName: "Лекция № 1",
        audioSize: 12,
        audioDescription: "",
        chapterName: chapterNames[35],
        authorName: authorNames[2],
      ),
    ],
    [],
  ],
  [
    [
      Audio(
        url: "https://toislam.podster.fm/163/download/audio.mp3",
        audioName: "Лекция № 1",
        audioSize: 13,
        audioDescription: "",
        chapterName: chapterNames[36],
        authorName: authorNames[0],
      ),
    ],
    [
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_108.mp3",
        audioName: "Лекция № 1",
        audioSize: 26,
        audioDescription: "",
        chapterName: chapterNames[36],
        authorName: authorNames[1],
      ),
    ],
    [
      Audio(
        url:
            "http://static.toislam.ws/files/audio/01_aqida/017_kitabu_tauhid/4_kratko_tauhid_fauzan/glava_36_str_285.mp3",
        audioName: "Лекция № 1",
        audioSize: 8,
        audioDescription: "",
        chapterName: chapterNames[36],
        authorName: authorNames[2],
      ),
    ],
    [],
  ],
  [
    [
      Audio(
        url: "https://toislam.podster.fm/164/download/audio.mp3",
        audioName: "Лекция № 1",
        audioSize: 27,
        audioDescription: "",
        chapterName: chapterNames[37],
        authorName: authorNames[0],
      ),
    ],
    [
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_109.mp3",
        audioName: "Лекция № 1",
        audioSize: 21,
        audioDescription: "",
        chapterName: chapterNames[37],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_110.mp3",
        audioName: "Лекция № 2",
        audioSize: 21,
        audioDescription: "",
        chapterName: chapterNames[37],
        authorName: authorNames[1],
      ),
    ],
    [
      Audio(
        url:
            "http://static.toislam.ws/files/audio/01_aqida/017_kitabu_tauhid/4_kratko_tauhid_fauzan/glava_37_str_290.mp3",
        audioName: "Лекция № 1",
        audioSize: 7,
        audioDescription: "",
        chapterName: chapterNames[37],
        authorName: authorNames[2],
      ),
    ],
    [],
  ],
  [
    [
      Audio(
        url: "https://toislam.podster.fm/165/download/audio.mp3",
        audioName: "Лекция № 1",
        audioSize: 24,
        audioDescription: "",
        chapterName: chapterNames[38],
        authorName: authorNames[0],
      ),
      Audio(
        url: "https://toislam.podster.fm/166/download/audio.mp3",
        audioName: "Лекция № 2",
        audioSize: 15,
        audioDescription: "",
        chapterName: chapterNames[38],
        authorName: authorNames[0],
      ),
      Audio(
        url: "https://toislam.podster.fm/167/download/audio.mp3",
        audioName: "Лекция № 3",
        audioSize: 19,
        audioDescription: "",
        chapterName: chapterNames[38],
        authorName: authorNames[0],
      ),
    ],
    [
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_111.mp3",
        audioName: "Лекция № 1",
        audioSize: 25,
        audioDescription: "",
        chapterName: chapterNames[38],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_112.mp3",
        audioName: "Лекция № 2",
        audioSize: 15,
        audioDescription: "",
        chapterName: chapterNames[38],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_113.mp3",
        audioName: "Лекция № 3",
        audioSize: 21,
        audioDescription: "",
        chapterName: chapterNames[38],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_114.mp3",
        audioName: "Лекция № 4",
        audioSize: 21,
        audioDescription: "",
        chapterName: chapterNames[38],
        authorName: authorNames[1],
      ),
    ],
    [
      Audio(
        url:
            "http://static.toislam.ws/files/audio/01_aqida/017_kitabu_tauhid/4_kratko_tauhid_fauzan/glava_38_str_295.mp3",
        audioName: "Лекция № 1",
        audioSize: 8,
        audioDescription: "",
        chapterName: chapterNames[38],
        authorName: authorNames[2],
      ),
    ],
    [],
  ],
  [
    [
      Audio(
        url: "https://toislam.podster.fm/168/download/audio.mp3",
        audioName: "Лекция № 1",
        audioSize: 21,
        audioDescription: "",
        chapterName: chapterNames[39],
        authorName: authorNames[0],
      ),
      Audio(
        url: "https://toislam.podster.fm/169/download/audio.mp3",
        audioName: "Лекция № 2",
        audioSize: 20,
        audioDescription: "",
        chapterName: chapterNames[39],
        authorName: authorNames[0],
      ),
      Audio(
        url: "https://toislam.podster.fm/170/download/audio.mp3",
        audioName: "Лекция № 3",
        audioSize: 25,
        audioDescription: "",
        chapterName: chapterNames[39],
        authorName: authorNames[0],
      ),
    ],
    [
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_115.mp3",
        audioName: "Лекция № 1",
        audioSize: 20,
        audioDescription: "",
        chapterName: chapterNames[39],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_116.mp3",
        audioName: "Лекция № 2",
        audioSize: 15,
        audioDescription: "",
        chapterName: chapterNames[39],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_117_konsultacia_1.mp3",
        audioName: "Лекция № 3",
        audioSize: 20,
        audioDescription: "",
        chapterName: chapterNames[39],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_118_konsultacia_2.mp3",
        audioName: "Лекция № 4",
        audioSize: 18,
        audioDescription: "",
        chapterName: chapterNames[39],
        authorName: authorNames[1],
      ),
    ],
    [
      Audio(
        url:
            "http://static.toislam.ws/files/audio/01_aqida/017_kitabu_tauhid/4_kratko_tauhid_fauzan/glava_39_str_301.mp3",
        audioName: "Лекция № 1",
        audioSize: 19,
        audioDescription: "",
        chapterName: chapterNames[39],
        authorName: authorNames[2],
      ),
    ],
    [],
  ],
  [
    [
      Audio(
        url: "https://toislam.podster.fm/171/download/audio.mp3",
        audioName: "Лекция № 1",
        audioSize: 20,
        audioDescription: "",
        chapterName: chapterNames[40],
        authorName: authorNames[0],
      ),
      Audio(
        url: "https://toislam.podster.fm/172/download/audio.mp3",
        audioName: "Лекция № 2",
        audioSize: 25,
        audioDescription: "",
        chapterName: chapterNames[40],
        authorName: authorNames[0],
      ),
    ],
    [
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_119.mp3",
        audioName: "Лекция № 1",
        audioSize: 22,
        audioDescription: "",
        chapterName: chapterNames[40],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_120.mp3",
        audioName: "Лекция № 2",
        audioSize: 27,
        audioDescription: "",
        chapterName: chapterNames[40],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_121.mp3",
        audioName: "Лекция № 3",
        audioSize: 18,
        audioDescription: "",
        chapterName: chapterNames[40],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_122.mp3",
        audioName: "Лекция № 4",
        audioSize: 14,
        audioDescription: "",
        chapterName: chapterNames[40],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_123_konsultacia.mp3",
        audioName: "Лекция № 5",
        audioSize: 27,
        audioDescription: "",
        chapterName: chapterNames[40],
        authorName: authorNames[1],
      ),
    ],
    [
      Audio(
        url:
            "http://static.toislam.ws/files/audio/01_aqida/017_kitabu_tauhid/4_kratko_tauhid_fauzan/glava_40_str_314.mp3",
        audioName: "Лекция № 1",
        audioSize: 11,
        audioDescription: "",
        chapterName: chapterNames[40],
        authorName: authorNames[2],
      ),
    ],
    [],
  ],
  [
    [
      Audio(
        url: "https://toislam.podster.fm/173/download/audio.mp3",
        audioName: "Лекция № 1",
        audioSize: 17,
        audioDescription: "",
        chapterName: chapterNames[41],
        authorName: authorNames[0],
      ),
    ],
    [
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_124.mp3",
        audioName: "Лекция № 1",
        audioSize: 26,
        audioDescription: "",
        chapterName: chapterNames[41],
        authorName: authorNames[1],
      ),
    ],
    [
      Audio(
        url:
            "http://static.toislam.ws/files/audio/01_aqida/017_kitabu_tauhid/4_kratko_tauhid_fauzan/glava_41_str_320.mp3",
        audioName: "Лекция № 1",
        audioSize: 6,
        audioDescription: "",
        chapterName: chapterNames[41],
        authorName: authorNames[2],
      ),
    ],
    [],
  ],
  [
    [
      Audio(
        url: "https://toislam.podster.fm/174/download/audio.mp3",
        audioName: "Лекция № 1",
        audioSize: 22,
        audioDescription: "",
        chapterName: chapterNames[42],
        authorName: authorNames[0],
      ),
    ],
    [
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_125.mp3",
        audioName: "Лекция № 1",
        audioSize: 17,
        audioDescription: "",
        chapterName: chapterNames[42],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_126.mp3",
        audioName: "Лекция № 2",
        audioSize: 14,
        audioDescription: "",
        chapterName: chapterNames[42],
        authorName: authorNames[1],
      ),
    ],
    [
      Audio(
        url:
            "http://static.toislam.ws/files/audio/01_aqida/017_kitabu_tauhid/4_kratko_tauhid_fauzan/glava_42_str_324.mp3",
        audioName: "Лекция № 1",
        audioSize: 12,
        audioDescription: "",
        chapterName: chapterNames[42],
        authorName: authorNames[2],
      ),
    ],
    [],
  ],
  [
    [
      Audio(
        url: "https://toislam.podster.fm/175/download/audio.mp3",
        audioName: "Лекция № 1",
        audioSize: 11,
        audioDescription: "",
        chapterName: chapterNames[43],
        authorName: authorNames[0],
      ),
    ],
    [
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_127.mp3",
        audioName: "Лекция № 1",
        audioSize: 13,
        audioDescription: "",
        chapterName: chapterNames[43],
        authorName: authorNames[1],
      ),
    ],
    [
      Audio(
        url:
            "http://static.toislam.ws/files/audio/01_aqida/017_kitabu_tauhid/4_kratko_tauhid_fauzan/glava_43_str_331.mp3",
        audioName: "Лекция № 1",
        audioSize: 3,
        audioDescription: "",
        chapterName: chapterNames[43],
        authorName: authorNames[2],
      ),
    ],
    [],
  ],
  [
    [
      Audio(
        url: "https://toislam.podster.fm/176/download/audio.mp3",
        audioName: "Лекция № 1",
        audioSize: 20,
        audioDescription: "",
        chapterName: chapterNames[44],
        authorName: authorNames[0],
      ),
    ],
    [
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_128.mp3",
        audioName: "Лекция № 1",
        audioSize: 14,
        audioDescription: "",
        chapterName: chapterNames[44],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_129.mp3",
        audioName: "Лекция № 2",
        audioSize: 18,
        audioDescription: "",
        chapterName: chapterNames[44],
        authorName: authorNames[1],
      ),
    ],
    [
      Audio(
        url:
            "http://static.toislam.ws/files/audio/01_aqida/017_kitabu_tauhid/4_kratko_tauhid_fauzan/glava_44_str_333.mp3",
        audioName: "Лекция № 1",
        audioSize: 9,
        audioDescription: "",
        chapterName: chapterNames[44],
        authorName: authorNames[2],
      ),
    ],
    [],
  ],
  [
    [
      Audio(
        url: "https://toislam.podster.fm/177/download/audio.mp3",
        audioName: "Лекция № 1",
        audioSize: 11,
        audioDescription: "",
        chapterName: chapterNames[45],
        authorName: authorNames[0],
      ),
    ],
    [
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_130.mp3",
        audioName: "Лекция № 1",
        audioSize: 12,
        audioDescription: "",
        chapterName: chapterNames[45],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_131.mp3",
        audioName: "Лекция № 2",
        audioSize: 20,
        audioDescription: "",
        chapterName: chapterNames[45],
        authorName: authorNames[1],
      ),
    ],
    [
      Audio(
        url:
            "http://static.toislam.ws/files/audio/01_aqida/017_kitabu_tauhid/4_kratko_tauhid_fauzan/glava_45_str_339.mp3",
        audioName: "Лекция № 1",
        audioSize: 7,
        audioDescription: "",
        chapterName: chapterNames[45],
        authorName: authorNames[2],
      ),
    ],
    [],
  ],
  [
    [
      Audio(
        url: "https://toislam.podster.fm/178/download/audio.mp3",
        audioName: "Лекция № 1",
        audioSize: 11,
        audioDescription: "",
        chapterName: chapterNames[46],
        authorName: authorNames[0],
      ),
    ],
    [
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_132.mp3",
        audioName: "Лекция № 1",
        audioSize: 20,
        audioDescription: "",
        chapterName: chapterNames[46],
        authorName: authorNames[1],
      ),
    ],
    [
      Audio(
        url:
            "http://static.toislam.ws/files/audio/01_aqida/017_kitabu_tauhid/4_kratko_tauhid_fauzan/glava_46_str_343.mp3",
        audioName: "Лекция № 1",
        audioSize: 3,
        audioDescription: "",
        chapterName: chapterNames[46],
        authorName: authorNames[2],
      ),
    ],
    [],
  ],
  [
    [
      Audio(
        url: "https://toislam.podster.fm/179/download/audio.mp3",
        audioName: "Лекция № 1",
        audioSize: 9,
        audioDescription: "",
        chapterName: chapterNames[47],
        authorName: authorNames[0],
      ),
    ],
    [
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_133.mp3",
        audioName: "Лекция № 1",
        audioSize: 18,
        audioDescription: "",
        chapterName: chapterNames[47],
        authorName: authorNames[1],
      ),
    ],
    [
      Audio(
        url:
            "http://static.toislam.ws/files/audio/01_aqida/017_kitabu_tauhid/4_kratko_tauhid_fauzan/glava_47_str_345.mp3",
        audioName: "Лекция № 1",
        audioSize: 3,
        audioDescription: "",
        chapterName: chapterNames[47],
        authorName: authorNames[2],
      ),
    ],
    [],
  ],
  [
    [
      Audio(
        url: "https://toislam.podster.fm/180/download/audio.mp3",
        audioName: "Лекция № 1",
        audioSize: 20,
        audioDescription: "",
        chapterName: chapterNames[48],
        authorName: authorNames[0],
      ),
    ],
    [
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_134.mp3",
        audioName: "Лекция № 1",
        audioSize: 19,
        audioDescription: "",
        chapterName: chapterNames[48],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_135.mp3",
        audioName: "Лекция № 2",
        audioSize: 21,
        audioDescription: "",
        chapterName: chapterNames[48],
        authorName: authorNames[1],
      ),
    ],
    [
      Audio(
        url:
            "http://static.toislam.ws/files/audio/01_aqida/017_kitabu_tauhid/4_kratko_tauhid_fauzan/glava_48_str_348.mp3",
        audioName: "Лекция № 1",
        audioSize: 8,
        audioDescription: "",
        chapterName: chapterNames[48],
        authorName: authorNames[2],
      ),
    ],
    [],
  ],
  [
    [
      Audio(
        url: "https://toislam.podster.fm/181/download/audio.mp3",
        audioName: "Лекция № 1",
        audioSize: 14,
        audioDescription: "",
        chapterName: chapterNames[49],
        authorName: authorNames[0],
      ),
    ],
    [
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_136.mp3",
        audioName: "Лекция № 1",
        audioSize: 23,
        audioDescription: "",
        chapterName: chapterNames[49],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_137.mp3",
        audioName: "Лекция № 2",
        audioSize: 18,
        audioDescription: "",
        chapterName: chapterNames[49],
        authorName: authorNames[1],
      ),
    ],
    [
      Audio(
        url:
            "http://static.toislam.ws/files/audio/01_aqida/017_kitabu_tauhid/4_kratko_tauhid_fauzan/glava_49_str_353.mp3",
        audioName: "Лекция № 1",
        audioSize: 10,
        audioDescription: "",
        chapterName: chapterNames[49],
        authorName: authorNames[2],
      ),
    ],
    [],
  ],
  [
    [
      Audio(
        url: "https://toislam.podster.fm/182/download/audio.mp3",
        audioName: "Лекция № 1",
        audioSize: 21,
        audioDescription: "",
        chapterName: chapterNames[50],
        authorName: authorNames[0],
      ),
    ],
    [
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_138.mp3",
        audioName: "Лекция № 1",
        audioSize: 24,
        audioDescription: "",
        chapterName: chapterNames[50],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_139.mp3",
        audioName: "Лекция № 2",
        audioSize: 19,
        audioDescription: "",
        chapterName: chapterNames[50],
        authorName: authorNames[1],
      ),
    ],
    [
      Audio(
        url:
            "http://static.toislam.ws/files/audio/01_aqida/017_kitabu_tauhid/4_kratko_tauhid_fauzan/glava_50_str_360.mp3",
        audioName: "Лекция № 1",
        audioSize: 5,
        audioDescription: "",
        chapterName: chapterNames[50],
        authorName: authorNames[2],
      ),
    ],
    [],
  ],
  [
    [
      Audio(
        url: "https://toislam.podster.fm/183/download/audio.mp3",
        audioName: "Лекция № 1",
        audioSize: 15,
        audioDescription: "",
        chapterName: chapterNames[51],
        authorName: authorNames[0],
      ),
    ],
    [
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_140.mp3",
        audioName: "Лекция № 1",
        audioSize: 24,
        audioDescription: "",
        chapterName: chapterNames[51],
        authorName: authorNames[1],
      ),
    ],
    [
      Audio(
        url:
            "http://static.toislam.ws/files/audio/01_aqida/017_kitabu_tauhid/4_kratko_tauhid_fauzan/glava_51_str_363.mp3",
        audioName: "Лекция № 1",
        audioSize: 4,
        audioDescription: "",
        chapterName: chapterNames[51],
        authorName: authorNames[2],
      ),
    ],
    [],
  ],
  [
    [
      Audio(
        url: "https://toislam.podster.fm/184/download/audio.mp3",
        audioName: "Лекция № 1",
        audioSize: 14,
        audioDescription: "",
        chapterName: chapterNames[52],
        authorName: authorNames[0],
      ),
    ],
    [
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_141.mp3",
        audioName: "Лекция № 1",
        audioSize: 13,
        audioDescription: "",
        chapterName: chapterNames[52],
        authorName: authorNames[1],
      ),
    ],
    [
      Audio(
        url:
            "http://static.toislam.ws/files/audio/01_aqida/017_kitabu_tauhid/4_kratko_tauhid_fauzan/glava_52_str_366.mp3",
        audioName: "Лекция № 1",
        audioSize: 3,
        audioDescription: "",
        chapterName: chapterNames[52],
        authorName: authorNames[2],
      ),
    ],
    [],
  ],
  [
    [
      Audio(
        url: "https://toislam.podster.fm/185/download/audio.mp3",
        audioName: "Лекция № 1",
        audioSize: 10,
        audioDescription: "",
        chapterName: chapterNames[53],
        authorName: authorNames[0],
      ),
    ],
    [
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_142.mp3",
        audioName: "Лекция № 1",
        audioSize: 18,
        audioDescription: "",
        chapterName: chapterNames[53],
        authorName: authorNames[1],
      ),
    ],
    [
      Audio(
        url:
            "http://static.toislam.ws/files/audio/01_aqida/017_kitabu_tauhid/4_kratko_tauhid_fauzan/glava_53_str_368.mp3",
        audioName: "Лекция № 1",
        audioSize: 3,
        audioDescription: "",
        chapterName: chapterNames[53],
        authorName: authorNames[2],
      ),
    ],
    [],
  ],
  [
    [
      Audio(
        url: "https://toislam.podster.fm/186/download/audio.mp3",
        audioName: "Лекция № 1",
        audioSize: 10,
        audioDescription: "",
        chapterName: chapterNames[54],
        authorName: authorNames[0],
      ),
    ],
    [
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_143.mp3",
        audioName: "Лекция № 1",
        audioSize: 13,
        audioDescription: "",
        chapterName: chapterNames[54],
        authorName: authorNames[1],
      ),
    ],
    [
      Audio(
        url:
            "http://static.toislam.ws/files/audio/01_aqida/017_kitabu_tauhid/4_kratko_tauhid_fauzan/glava_54_str_370.mp3",
        audioName: "Лекция № 1",
        audioSize: 5,
        audioDescription: "",
        chapterName: chapterNames[54],
        authorName: authorNames[2],
      ),
    ],
    [],
  ],
  [
    [
      Audio(
        url: "https://toislam.podster.fm/187/download/audio.mp3",
        audioName: "Лекция № 1",
        audioSize: 17,
        audioDescription: "",
        chapterName: chapterNames[55],
        authorName: authorNames[0],
      ),
    ],
    [
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_144.mp3",
        audioName: "Лекция № 1",
        audioSize: 27,
        audioDescription: "",
        chapterName: chapterNames[55],
        authorName: authorNames[1],
      ),
    ],
    [
      Audio(
        url:
            "http://static.toislam.ws/files/audio/01_aqida/017_kitabu_tauhid/4_kratko_tauhid_fauzan/glava_55_str_372.mp3",
        audioName: "Лекция № 1",
        audioSize: 3,
        audioDescription: "",
        chapterName: chapterNames[55],
        authorName: authorNames[2],
      ),
    ],
    [],
  ],
  [
    [
      Audio(
        url: "https://toislam.podster.fm/188/download/audio.mp3",
        audioName: "Лекция № 1",
        audioSize: 6,
        audioDescription: "",
        chapterName: chapterNames[56],
        authorName: authorNames[0],
      ),
    ],
    [
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_145.mp3",
        audioName: "Лекция № 1",
        audioSize: 16,
        audioDescription: "",
        chapterName: chapterNames[56],
        authorName: authorNames[1],
      ),
    ],
    [
      Audio(
        url:
            "http://static.toislam.ws/files/audio/01_aqida/017_kitabu_tauhid/4_kratko_tauhid_fauzan/glava_56_str_374.mp3",
        audioName: "Лекция № 1",
        audioSize: 2,
        audioDescription: "",
        chapterName: chapterNames[56],
        authorName: authorNames[2],
      ),
    ],
    [],
  ],
  [
    [
      Audio(
        url: "https://toislam.podster.fm/189/download/audio.mp3",
        audioName: "Лекция № 1",
        audioSize: 15,
        audioDescription: "",
        chapterName: chapterNames[57],
        authorName: authorNames[0],
      ),
    ],
    [
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_146.mp3",
        audioName: "Лекция № 1",
        audioSize: 13,
        audioDescription: "",
        chapterName: chapterNames[57],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_147.mp3",
        audioName: "Лекция № 2",
        audioSize: 19,
        audioDescription: "",
        chapterName: chapterNames[57],
        authorName: authorNames[1],
      ),
    ],
    [
      Audio(
        url:
            "http://static.toislam.ws/files/audio/01_aqida/017_kitabu_tauhid/4_kratko_tauhid_fauzan/glava_57_str_376.mp3",
        audioName: "Лекция № 1",
        audioSize: 9,
        audioDescription: "",
        chapterName: chapterNames[57],
        authorName: authorNames[2],
      ),
    ],
    [],
  ],
  [
    [
      Audio(
        url: "https://toislam.podster.fm/190/download/audio.mp3",
        audioName: "Лекция № 1",
        audioSize: 5,
        audioDescription: "",
        chapterName: chapterNames[58],
        authorName: authorNames[0],
      ),
    ],
    [
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_148.mp3",
        audioName: "Лекция № 1",
        audioSize: 9,
        audioDescription: "",
        chapterName: chapterNames[58],
        authorName: authorNames[1],
      ),
    ],
    [
      Audio(
        url:
            "http://static.toislam.ws/files/audio/01_aqida/017_kitabu_tauhid/4_kratko_tauhid_fauzan/glava_58_str_382.mp3",
        audioName: "Лекция № 1",
        audioSize: 3,
        audioDescription: "",
        chapterName: chapterNames[58],
        authorName: authorNames[2],
      ),
    ],
    [],
  ],
  [
    [
      Audio(
        url: "https://toislam.podster.fm/191/download/audio.mp3",
        audioName: "Лекция № 1",
        audioSize: 18,
        audioDescription: "",
        chapterName: chapterNames[59],
        authorName: authorNames[0],
      ),
    ],
    [
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_149.mp3",
        audioName: "Лекция № 1",
        audioSize: 14,
        audioDescription: "",
        chapterName: chapterNames[59],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_150.mp3",
        audioName: "Лекция № 2",
        audioSize: 18,
        audioDescription: "",
        chapterName: chapterNames[59],
        authorName: authorNames[1],
      ),
    ],
    [
      Audio(
        url:
            "http://static.toislam.ws/files/audio/01_aqida/017_kitabu_tauhid/4_kratko_tauhid_fauzan/glava_59_str_384.mp3",
        audioName: "Лекция № 1",
        audioSize: 9,
        audioDescription: "",
        chapterName: chapterNames[59],
        authorName: authorNames[2],
      ),
    ],
    [],
  ],
  [
    [
      Audio(
        url: "https://toislam.podster.fm/192/download/audio.mp3",
        audioName: "Лекция № 1",
        audioSize: 26,
        audioDescription: "",
        chapterName: chapterNames[60],
        authorName: authorNames[0],
      ),
    ],
    [
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_151.mp3",
        audioName: "Лекция № 1",
        audioSize: 19,
        audioDescription: "",
        chapterName: chapterNames[60],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_152.mp3",
        audioName: "Лекция № 2",
        audioSize: 21,
        audioDescription: "",
        chapterName: chapterNames[60],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_153.mp3",
        audioName: "Лекция № 3",
        audioSize: 24,
        audioDescription: "",
        chapterName: chapterNames[60],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_154.mp3",
        audioName: "Лекция № 4",
        audioSize: 15,
        audioDescription: "",
        chapterName: chapterNames[60],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_155.mp3",
        audioName: "Лекция № 5",
        audioSize: 16,
        audioDescription: "",
        chapterName: chapterNames[60],
        authorName: authorNames[1],
      ),
    ],
    [
      Audio(
        url:
            "http://static.toislam.ws/files/audio/01_aqida/017_kitabu_tauhid/4_kratko_tauhid_fauzan/glava_60_str_391.mp3",
        audioName: "Лекция № 1",
        audioSize: 7,
        audioDescription: "",
        chapterName: chapterNames[60],
        authorName: authorNames[2],
      ),
    ],
    [],
  ],
  [
    [
      Audio(
        url: "https://toislam.podster.fm/193/download/audio.mp3",
        audioName: "Лекция № 1",
        audioSize: 33,
        audioDescription: "",
        chapterName: chapterNames[61],
        authorName: authorNames[0],
      ),
    ],
    [
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_156.mp3",
        audioName: "Лекция № 1",
        audioSize: 25,
        audioDescription: "",
        chapterName: chapterNames[61],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_157.mp3",
        audioName: "Лекция № 2",
        audioSize: 24,
        audioDescription: "",
        chapterName: chapterNames[61],
        authorName: authorNames[1],
      ),
    ],
    [
      Audio(
        url:
            "http://static.toislam.ws/files/audio/01_aqida/017_kitabu_tauhid/4_kratko_tauhid_fauzan/glava_61_str_397.mp3",
        audioName: "Лекция № 1",
        audioSize: 7,
        audioDescription: "",
        chapterName: chapterNames[61],
        authorName: authorNames[2],
      ),
    ],
    [],
  ],
  [
    [
      Audio(
        url: "https://toislam.podster.fm/194/download/audio.mp3",
        audioName: "Лекция № 1",
        audioSize: 23,
        audioDescription: "",
        chapterName: chapterNames[62],
        authorName: authorNames[0],
      ),
    ],
    [
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_158.mp3",
        audioName: "Лекция № 1",
        audioSize: 19,
        audioDescription: "",
        chapterName: chapterNames[62],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_159.mp3",
        audioName: "Лекция № 2",
        audioSize: 17,
        audioDescription: "",
        chapterName: chapterNames[62],
        authorName: authorNames[1],
      ),
    ],
    [
      Audio(
        url:
            "http://static.toislam.ws/files/audio/01_aqida/017_kitabu_tauhid/4_kratko_tauhid_fauzan/glava_62_str_404.mp3",
        audioName: "Лекция № 1",
        audioSize: 9,
        audioDescription: "",
        chapterName: chapterNames[62],
        authorName: authorNames[2],
      ),
    ],
    [],
  ],
  [
    [
      Audio(
        url: "https://toislam.podster.fm/195/download/audio.mp3",
        audioName: "Лекция № 1",
        audioSize: 29,
        audioDescription: "",
        chapterName: chapterNames[63],
        authorName: authorNames[0],
      ),
    ],
    [
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_160.mp3",
        audioName: "Лекция № 1",
        audioSize: 23,
        audioDescription: "",
        chapterName: chapterNames[63],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_161.mp3",
        audioName: "Лекция № 2",
        audioSize: 22,
        audioDescription: "",
        chapterName: chapterNames[63],
        authorName: authorNames[1],
      ),
    ],
    [
      Audio(
        url:
            "http://static.toislam.ws/files/audio/01_aqida/017_kitabu_tauhid/4_kratko_tauhid_fauzan/glava_63_str_412.mp3",
        audioName: "Лекция № 1",
        audioSize: 9,
        audioDescription: "",
        chapterName: chapterNames[63],
        authorName: authorNames[2],
      ),
    ],
    [],
  ],
  [
    [
      Audio(
        url: "https://toislam.podster.fm/196/download/audio.mp3",
        audioName: "Лекция № 1",
        audioSize: 15,
        audioDescription: "",
        chapterName: chapterNames[64],
        authorName: authorNames[0],
      ),
    ],
    [
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_162.mp3",
        audioName: "Лекция № 1",
        audioSize: 22,
        audioDescription: "",
        chapterName: chapterNames[64],
        authorName: authorNames[1],
      ),
    ],
    [
      Audio(
        url:
            "http://static.toislam.ws/files/audio/01_aqida/017_kitabu_tauhid/4_kratko_tauhid_fauzan/glava_64_str_419.mp3",
        audioName: "Лекция № 1",
        audioSize: 3,
        audioDescription: "",
        chapterName: chapterNames[64],
        authorName: authorNames[2],
      ),
    ],
    [],
  ],
  [
    [
      Audio(
        url: "https://toislam.podster.fm/197/download/audio.mp3",
        audioName: "Лекция № 1",
        audioSize: 7,
        audioDescription: "",
        chapterName: chapterNames[65],
        authorName: authorNames[0],
      ),
    ],
    [
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_163.mp3",
        audioName: "Лекция № 1",
        audioSize: 18,
        audioDescription: "",
        chapterName: chapterNames[65],
        authorName: authorNames[1],
      ),
    ],
    [
      Audio(
        url:
            "http://static.toislam.ws/files/audio/01_aqida/017_kitabu_tauhid/4_kratko_tauhid_fauzan/glava_65_str_421.mp3",
        audioName: "Лекция № 1",
        audioSize: 3,
        audioDescription: "",
        chapterName: chapterNames[65],
        authorName: authorNames[2],
      ),
    ],
    [],
  ],
  [
    [
      Audio(
        url: "https://toislam.podster.fm/198/download/audio.mp3",
        audioName: "Лекция № 1",
        audioSize: 11,
        audioDescription: "",
        chapterName: chapterNames[66],
        authorName: authorNames[0],
      ),
    ],
    [
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_164.mp3",
        audioName: "Лекция № 1",
        audioSize: 27,
        audioDescription: "",
        chapterName: chapterNames[66],
        authorName: authorNames[1],
      ),
    ],
    [
      Audio(
        url:
            "http://static.toislam.ws/files/audio/01_aqida/017_kitabu_tauhid/4_kratko_tauhid_fauzan/glava_66_str_424.mp3",
        audioName: "Лекция № 1",
        audioSize: 5,
        audioDescription: "",
        chapterName: chapterNames[66],
        authorName: authorNames[2],
      ),
    ],
    [],
  ],
  [
    [
      Audio(
        url: "https://toislam.podster.fm/199/download/audio.mp3",
        audioName: "Лекция № 1",
        audioSize: 19,
        audioDescription: "",
        chapterName: chapterNames[67],
        authorName: authorNames[0],
      ),
    ],
    [
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_165.mp3",
        audioName: "Лекция № 1",
        audioSize: 23,
        audioDescription: "",
        chapterName: chapterNames[67],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_166.mp3",
        audioName: "Лекция № 2",
        audioSize: 25,
        audioDescription: "",
        chapterName: chapterNames[67],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_167.mp3",
        audioName: "Лекция № 3",
        audioSize: 15,
        audioDescription: "",
        chapterName: chapterNames[67],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_168_konsultacia_1.mp3",
        audioName: "Лекция № 4",
        audioSize: 23,
        audioDescription: "",
        chapterName: chapterNames[67],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_169_konsultacia_2.mp3",
        audioName: "Лекция № 5",
        audioSize: 19,
        audioDescription: "",
        chapterName: chapterNames[67],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_170_konsultacia_3.mp3",
        audioName: "Лекция № 6",
        audioSize: 18,
        audioDescription: "",
        chapterName: chapterNames[67],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_171_konsultacia_4.mp3",
        audioName: "Лекция № 7",
        audioSize: 21,
        audioDescription: "",
        chapterName: chapterNames[67],
        authorName: authorNames[1],
      ),
      Audio(
        url:
            "http://files.alhadis.ru/audio/abu_yahya/aqida/kitabut_tauheed/kitabut_tauheed_172_konsultacia_5.mp3",
        audioName: "Лекция № 8",
        audioSize: 19,
        audioDescription: "",
        chapterName: chapterNames[67],
        authorName: authorNames[1],
      ),
    ],
    [
      Audio(
        url:
            "https://archive.org/download/kitab_at_tauhid_rinat_fauzan_glava_67_str_428/kitab_at_tauhid_rinat_fauzan_glava_67_str_428.mp3",
        audioName: "Лекция № 1",
        audioSize: 10,
        audioDescription: "",
        chapterName: chapterNames[67],
        authorName: authorNames[2],
      ),
    ],
    [],
  ],
];
