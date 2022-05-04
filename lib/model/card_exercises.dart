class GroupExModel {
  final int dayNumber;
  final String title;
  final List<String> description;
  final String countOfExercises;
  final String imagePath;
  final List<Exercise> exercises;

  GroupExModel({
    required this.dayNumber,
    required this.title,
    required this.description,
    required this.countOfExercises,
    required this.imagePath,
    required this.exercises,
  });
}

class Exercise {
  final String title;
  final String description;
  final String countOfResult;
  final List<String> images;
  final String bodyPart;

  Exercise({
    required this.bodyPart,
    required this.images,
    required this.title,
    required this.description,
    required this.countOfResult,
  });
}

List<String> exercisesValueRU = [
  'Отжимания от пола',
  'Сведения на грудь',
  'Жим штанги лежа',
  'Подъемы штанги на бицепс',
  'Подъём на бицепс в скамье Смитта',
  'Приседания со штангой',
  'Разгибания ног в тренажере',
  'Выпады',
  'Обратные отжимания на скамье',
  'Подъемы гантелей в стороны',
  'Подъемы гантелей перед собой',
  'Жим гантелей сидя',
  'Обратные разгибания на трицепс',
  'Жим на трицепс из-за головы',
  'Подъемы гантелей через стороны',
  'Подъем гантелей к подбородку',
  'Подтягивания',
  'Тяга верхнего блока',
  'Тяга гантели к поясу',
  'Тяга нижнего блока',
  'Велосипед на пресс',
  'Скручивания на скамье',
  'Планка',
  'Гиперэкстензия',
];
List<String> exercisesValueUKR = [
  'Віджимання від підлоги',
  "Інформація про груди",
  "Бенгінг Бенгерс",
  "Підйомники бару для біцепса",
  "Піднятися до біцепса на лавці Сміта",
  'Присідання зі штангою',
  "Розширення ніг у симуляторі",
  'Атаки',
  "Зворотні поштовхи на лавці",
  "Підвищення гантелей до боків",
  'Підвищення гантелей попереду',
  'Гантелі сидіння',
  "Зворотне розширення на трицепсах",
  "Бено для трицепса з -за голови",
  "Підвищення гантелей через сторони",
  "Підняття гантелей до підборіддя",
  'Тягнути ДБЖ',
  'Поштовх верхнього блоку',
  "Перенести гантелі до пояса",
  "Злочин нижнього блоку",
  "Велосипед до преси",
  "Скручування на лавці",
  'Бар',
  "Hyperextenesia",
];
List<String> exercisesValueENG = [
  'Pushups',
  'Information on the chest',
  'Benging Bengers',
  'Lifts of the bar for biceps',
  "Rise to Biceps in the Smith's bench",
  'Squats',
  'Extension of the legs in the simulator',
  'Attacks',
  'Reverse push -ups on the bench',
  'Raises of dumbbells to the sides',
  'Raises of dumbbells in front',
  'Dumbbells of Sitting',
  'Reverse extension on triceps',
  'Beno for triceps from behind the head',
  'Raises of dumbbells through the sides',
  'Lifting dumbbells to the chin',
  'Pull -ups',
  'Thrust of the upper block',
  'Carry of dumbbells to the belt',
  'Crime of the Lower Block',
  'Bike to the press',
  'Twisting on the bench',
  'Bar',
  'Hyperextenesia',
];

List<List<GroupExModel>> dayExercisesUKR = [
  [
    GroupExModel(
      dayNumber: 1,
      title: 'Груди',
      description: [
        'Віджимання від підлоги',
        "Інформація про груди",
        "Бенгінг Бенгерс",
      ],
      countOfExercises: '3 вправи',
      imagePath: 'assets/images/ex_1_2.svg',
      exercises: [
        Exercise(
            bodyPart: 'Груди',
            images: [
              'assets/images/ex_1_1.svg',
              'assets/images/ex_1_2.svg',
            ],
            title: 'Віджимання від підлоги',
            description:
                "Вправи на розігрівання та підготовку грудних м’язів до тренувань.Змінюють різні типи та ширину рук рук, а також використовуйте підставку під ніг для ускладнення.",
            countOfResult: '2-3 подхода по 12-15 повторений'),
        Exercise(
            bodyPart: 'Груди',
            images: [
              'assets/images/ex_2.svg',
            ],
            title: 'Інформація про груди',
            description:
                'Вправа виконується із середньою робочою вагою, контролем над технологією та повним відчуттям залучення грудних м’язів у роботі.Постарайтеся якомога більше напружуватись і принесіть груди всередину, поклавши руки вперед - але не виправляючи лікті.',
            countOfResult: '2-3 підходи 12-15 повторень'),
        Exercise(
            bodyPart: 'Груди',
            images: [
              'assets/images/ex_3_1.svg',
              'assets/images/ex_3_2.svg',
            ],
            title: 'Лавка преса лежить',
            description:
                "Основні вправи для м’язів грудей.Його можна виконати як з брусок, так і в симуляторі лавки.Виступаючи на горизонтальній лавці, не піднімайте ноги.За бажанням кожного тижня ви можете змінювати нахил лавки.",
            countOfResult: '3-4 підходи 7-10 повторень'),
      ],
    ),
    GroupExModel(
      dayNumber: 1,
      title: 'Біцепс',
      description: [
        "Підйомники бару для біцепса",
        "Концентрований підйом до біцепса",
      ],
      countOfExercises: '2 вправи',
      imagePath: 'assets/images/ex_4_1.svg',
      exercises: [
        Exercise(
            bodyPart: 'Біцепс',
            images: [
              'assets/images/ex_4_1.svg',
              'assets/images/ex_4_2.svg',
            ],
            title: 'Біцепси піднімаються',
            description:
                "Основні вправи для розвитку м'язів біцепса.Під час виконання використовуйте середню вагу, яка дозволяє виконати до 15 повторень.Не гойдайтеся, піднімаючи планку і тримайте лікті в одній точці.",
            countOfResult: '2-3 підходи 12-15 повторень'),
        Exercise(
            bodyPart: 'Біцепс',
            images: [
              'assets/images/ex_5_1.svg',
              'assets/images/ex_5_2.svg',
            ],
            title: 'Піднімайтеся до біцепса на лавці Скотта',
            description:
                'Під час виконання розладів на лавці Скотта через додаткову фіксацію ліктя навантаження на довгу головку біцепса збільшується, використання вигнутого ЕЗ-Станга також допоможе підвищити рівень залучення м’язових волокон.',
            countOfResult: '2-3 підходи 8-10 повторень')
      ],
    ),
    GroupExModel(
      dayNumber: 1,
      title: 'Ноги',
      description: [
        'Присідання зі штангою',
        "Розширення ніг у симуляторі",
        'Випади',
      ],
      countOfExercises: '3 вправи',
      imagePath: 'assets/images/ex_6_2.svg',
      exercises: [
        Exercise(
            bodyPart: 'Ноги',
            images: [
              'assets/images/ex_6_1.svg',
              'assets/images/ex_6_2.svg',
            ],
            title: 'Присідання зі штангою',
            description:
                'Основні вправи для м’язів ніг.Його можна виконати як з брусок, так і в симуляторі лавки.Виступаючи, тримайте пресу у свідомому напрузі, опускаючись до тієї точки, в якій стегна паралельні підлозі.',
            countOfResult: '3-4 підходи 7-10 повторень'),
        Exercise(
            bodyPart: 'ноги',
            images: [
              'assets/images/ex_7_1.svg',
            ],
            title: 'Розширення ніг у симуляторі',
            description:
                'Вправа на приціл передньої поверхні стегна.Під час виконання також переконайтеся, що преса залишається у свідомому напруженні.Не допомагайте собі підняти вагу через згинання справи.Це може бути замінено іншою вправою.',
            countOfResult: '2-3 підходи 12-15 повторень'),
        Exercise(
            bodyPart: 'ноги',
            images: [
              'assets/images/ex_8_1.svg',
              'assets/images/ex_8_2.svg',
            ],
            title: 'Випади',
            description:
                "Вправи на вивчення середнього клейкового м’яза.Допустимо виконувати як масу тіла, так і гантелі.За бажанням можна замінити будь -яку іншу вправу для сідниць.",
            countOfResult: '2-3 підходи 12-15 повторень'),
      ],
    ),
  ],
  [
    GroupExModel(
        dayNumber: 2,
        title: 'Плечі',
        description: [
          'Push -ups на лавці',
          "Підвищення гантелей",
          "Підвищення гантелей",
          'Гантелі сидіння',
        ],
        countOfExercises: '4 вправи',
        imagePath: 'assets/images/ex_d2_2_2.svg',
        exercises: [
          Exercise(
              bodyPart: 'Плечі',
              images: [
                'assets/images/ex_d2_1_1.svg',
                'assets/images/ex_d2_1_2.svg',
              ],
              title: "Зворотні поштовхи на лавці",
              description:
                  "Вправи для розігрівання верхньої частини тіла та приготування суглобів до роботи.Він може бути виконаний як з землі, так і на двох лавках - натискання на бруски також прийнятні.Вгорі спробуйте штовхати вагу тіла якомога вище.",
              countOfResult: '2-3 підходи 12-15 повторень.'),
          Exercise(
              bodyPart: 'Плечі',
              images: [
                'assets/images/ex_d2_2_1.svg',
                'assets/images/ex_d2_2_2.svg',
              ],
              title: 'Підняття гантелей на сторони',
              description:
                  'Вправа для середньої частини дельтоїдних м’язів.Під час виконання використовуйте середню вагу гантелей і контролюйте нерухоме положення тіла.Спина повинна бути прямою, руки не повинні згинатися на ліктях.Підніміть вагу до горизонтального.',
              countOfResult: '2-3 підходи 12-15 повторень'),
          Exercise(
              bodyPart: 'Плечі',
              images: [
                'assets/images/ex_d2_3_1.svg',
                'assets/images/ex_d2_3_2.svg',
              ],
              title: 'Підняття гантелей попереду',
              description:
                  "Вправа для передньої частини дельтоїдних м'язів.Також використовуйте середню вагу гантелей і дотримуйтесь техніки.Почніть підняти руку лише тоді, коли протилежна рука знаходиться в нижній частині руху.",
              countOfResult: '2-3 підходи 12-15 повторень'),
          Exercise(
              bodyPart: 'Плечі',
              images: [
                'assets/images/ex_d2_4_1.svg',
                'assets/images/ex_d2_4_2.svg',
              ],
              title: 'Сидить лавка преса',
              description:
                  'Основні вправи для м’язів плечей.Його можна виконати або з гантелями (і сидячи на лавці, і стоячи), або з штангою - стоячими лавками.Під час виконання тримайте пресу у свідомому напруженні, піднімаючи вагу вгору, не виштовхуйте її за рахунок сили тіла - лише плечі працюють.',
              countOfResult: '3-4 підходи 7-10 повторень'),
        ]),
    GroupExModel(
      dayNumber: 2,
      title: 'трицепс',
      description: [
        "Зворотне розширення на трицепсах",
        "Бено для трицепса з -за голови",
      ],
      countOfExercises: '2 вправи',
      imagePath: 'assets/images/ex_d2_3_1.svg',
      exercises: [
        Exercise(
            bodyPart: 'трицепс',
            images: [
              'assets/images/ex_d2_5_1.svg',
              'assets/images/ex_d2_5_2.svg',
            ],
            title: 'Зворотне розширення на трицепсах',
            description:
                'Вправа для середньої голови трицепсів, надаючи гучності м’язів.Його можна виконати як з гантелей на лавці, так і в симуляторі з вевілкою (корпус суворо перпендикулярно до підлоги).Зробіть повільні рухи, в кінцевій точці напруження трицепса ще сильніше.',
            countOfResult: '2-3 підходи 12-15 повторень'),
        Exercise(
            bodyPart: 'трицепс',
            images: [
              'assets/images/ex_d2_6_1.svg',
              'assets/images/ex_d2_6_2.svg',
            ],
            title: 'Трицепси з -за голови',
            description:
                'Основні вправи для розвитку трицепсів.Його можна виконати як сидячи на лавці, так і лежачи на лавці (з Ез-Станга).Лікті повинні бути паралельними один одному і не повинні відходити вбік, коли вага рухається.Його можна замінити іншу вправу трицепса.',
            countOfResult: '3-4 підходи 7-10 повторень'),
      ],
    ),
    GroupExModel(
      dayNumber: 2,
      title: 'Трапеція',
      description: [
        'Підйоми гантелей через сторони',
        "Підняття гантелей до підборіддя",
      ],
      countOfExercises: '2 вправи',
      imagePath: 'assets/images/ex_d2_7_2.svg',
      exercises: [
        Exercise(
            bodyPart: 'трицепс',
            images: [
              'assets/images/ex_d2_7_1.svg',
              'assets/images/ex_d2_7_2.svg',
            ],
            title: 'Підйомники гантелей через сторони',
            description:
                'Вправи на вивчення трапецієподібного та середнього дельтоїдного м’яза.Під час підйому гантелей лікті трохи зігнуті, рух уздовж півтора.Переконайтесь, що нижня частина спини не згинається.',
            countOfResult: '3-4 подхода по 7-10 повторений'),
        Exercise(
            bodyPart: 'Трицепс',
            images: [
              'assets/images/ex_d2_8_1.svg',
              'assets/images/ex_d2_8_2.svg',
              'assets/images/ex_d2_8_3.svg',
            ],
            title: 'Підняття гантелей до підборіддя',
            description:
                'Вправа для трапеції та дельтоїдних м’язів.Надає плечам характерну округлу форму.Піднявшись, переконайтеся, що не піднімати гантелі занадто високо - суворо до паралельної лінії.Виконайте вправу повільно, залучаючи якомога більше м’язових волокон у роботу.',
            countOfResult: '2-3 підходи 12-15 повторень'),
      ],
    ),
  ],
  [
    GroupExModel(
        dayNumber: 3,
        title: 'Спина',
        description: [
          'Підтягування',
          'Поштовх верхнього блоку',
          "Перенести гантелі до пояса",
          "Злочин нижнього блоку",
        ],
        countOfExercises: '4 вправи',
        imagePath: 'assets/images/ex_d3_3_2.svg',
        exercises: [
          Exercise(
              bodyPart: 'Спина',
              images: [
                'assets/images/ex_d3_1_1.svg',
                'assets/images/ex_d3_1_2.svg',
              ],
              title: 'Підтягування',
              description:
                  "Вправи для розігрівання найширших м’язів спини.Під час виконання тримайте пресу у свідомому напрузі, а в верхній точці відчувайте роботу м'язів спини, штовхаючи вагу тіла вгорі.Не гойдайтеся.",
              countOfResult: '2-3 підходи 12-15 повторень'),
          Exercise(
              bodyPart: 'Спина',
              images: [
                'assets/images/ex_d3_2_1.svg',
              ],
              title: 'Поштовх верхнього блоку',
              description:
                  'Завдяки використанню додаткової ваги це дозволяє виконати подібний рух - але з більшою віддачею.Використання різних ручок і зчеплення дозволяє змінювати вправу та використовувати різні м’язи спини.',
              countOfResult: '3-4 підходи 7-10 повторень'),
          Exercise(
              bodyPart: 'Спина',
              images: [
                'assets/images/ex_d3_3_1.svg',
                'assets/images/ex_d3_3_2.svg',
              ],
              title: 'Тяга гантелі до пояса',
              description:
                  'Вправи, щоб надати м’ягам товщину спини.Мета полягає в тому, щоб залучити найширші м’язи роботи, а не просто підвищити більшу вагу гантелей через м’язи рук.Переконайтесь, що хребет прямий і не згинається (особливо вгору).',
              countOfResult: '3-4 підходи 7-10 повторень'),
          Exercise(
              bodyPart: 'Спина',
              images: [
                'assets/images/ex_d3_4_1.svg',
              ],
              title: 'Поштовх нижнього блоку',
              description:
                  'Якщо є можливість виконати повну розпущену штрих з штангою в тренажерному залі - виконати свердло.В іншому випадку вправа може бути замінена на тягу нижнього блоку до пояса.',
              countOfResult: '3-4 подхода по 7-10 повторений'),
        ]),
    GroupExModel(
        dayNumber: 3,
        title: 'Прес',
        description: [
          "Велосипед для пресу",
          "Скручування на лавці",
          'Планка',
          "Гіперекстензія",
        ],
        countOfExercises: '2 вправи',
        imagePath: 'assets/images/ex_d3_5_2.svg',
        exercises: [
          Exercise(
              bodyPart: 'Прес',
              images: [
                'assets/images/ex_d3_5_1.svg',
                'assets/images/ex_d3_5_2.svg',
              ],
              title: 'Велосипед для пресу',
              description:
                  "Вправи для вивчення зовнішнього косу м’яза живота.Це означає, що згинання ноги в коліні і приносить до нього протилежний лікоть.Він виконується з напруженим пресом і з повним відчуттям залучення м'язів живота в роботі.",
              countOfResult: '3-4 підходи 10-15 повторень'),
          Exercise(
              bodyPart: 'Прес',
              images: [
                'assets/images/ex_d3_6_1.svg',
                'assets/images/ex_d3_6_2.svg',
              ],
              title: 'Скручування на лавці',
              description:
                  "Вправи на розвиток м'язів живота прямої кишки.Піднімаючись вгору, не затримуйте дихання і переконайтесь, що навантаження не переходить на нижню частину спини та нижньої частини спини.У верхній точці процідіть пресу ще сильніше.",
              countOfResult: '3-4 підходи 10-15 повторень'),
          Exercise(
              bodyPart: 'Прес',
              images: [
                'assets/images/ex_d3_7_1.svg',
                'assets/images/ex_d3_7_2.svg',
              ],
              title: 'Планка',
              description:
                  'Найважливіша статична вправа для преси, яка розвиває внутрішні та поперечні м’язи живота.Штанга виконується в статичному режимі - необхідно не повторювати рух, а затримуватися нерухомо.Чергуйте різні типи (на ліктях, на простягнуті руки, сторона).',
              countOfResult: '3-4 підходи 60-90 сек'),
          Exercise(
              bodyPart: 'Прес',
              images: [
                'assets/images/ex_d3_8_1.svg',
                'assets/images/ex_d3_8_2.svg',
              ],
              title: 'Гіперекстензія',
              description:
                  'Вправи на зміцнення нижньої частини спини та попереку.Це може бути виконано як динамічним, так і статичним.Піднявшись, переконайтеся, що ви не піднімете занадто високо, згинаючи хребет назад.',
              countOfResult: '2-3 підходи 10-15 повторень'),
        ]),
  ],
];
List<List<GroupExModel>> dayExercisesRU = [
  [
    GroupExModel(
      dayNumber: 1,
      title: 'Грудь',
      description: [
        'Отжимания от пола',
        'Сведения на грудь',
        'Жим штанги лежа',
      ],
      countOfExercises: '3 упражнения',
      imagePath: 'assets/images/ex_1_2.svg',
      exercises: [
        Exercise(
            bodyPart: 'Грудь',
            images: [
              'assets/images/ex_1_1.svg',
              'assets/images/ex_1_2.svg',
            ],
            title: 'Отжимания от пола',
            description:
                'Упражнение для разминки и подготовки грудных мышц к тренировке. Варьируйте различные типы и ширину постановки рук, а также используйте подставку под ноги для усложнения.',
            countOfResult: '2-3 подхода по 12-15 повторений'),
        Exercise(
            bodyPart: 'Грудь',
            images: [
              'assets/images/ex_2.svg',
            ],
            title: 'Сведения на грудь',
            description:
                'Упражнение выполняется со средним рабочим весом, контролем за техникой и полным ощущением вовлечения грудных мышц в работу. Старайтесь как можно сильнее напрячь и свести грудь внутрь, выставляя руки вперед — но не фиксируя при этом локти.',
            countOfResult: '2-3 подхода по 12-15 повторений'),
        Exercise(
            bodyPart: 'Грудь',
            images: [
              'assets/images/ex_3_1.svg',
              'assets/images/ex_3_2.svg',
            ],
            title: 'Жим штанги лежа',
            description:
                'Базовое упражнение для мышц груди. Может выполняться как со штангой, так и в тренажере для жима. При выполнении на горизонтальной скамье не поднимайте ноги вверх. Опционально каждую неделю можно варьировать наклон скамьи.',
            countOfResult: '3-4 подхода по 7-10 повторений'),
      ],
    ),
    GroupExModel(
      dayNumber: 1,
      title: 'Бицепс',
      description: [
        'Подъемы штанги на бицепс',
        'Концентрированный подъем на бицепс',
      ],
      countOfExercises: '2 упражнения',
      imagePath: 'assets/images/ex_4_1.svg',
      exercises: [
        Exercise(
            bodyPart: 'Бицепс',
            images: [
              'assets/images/ex_4_1.svg',
              'assets/images/ex_4_2.svg',
            ],
            title: 'Подъемы штанги на бицепс',
            description:
                'Ключевое упражнение для развития мышц бицепса. При выполнении используйте средний вес, позволяющий выполнить до 15 повторов. Не раскачивайтесь при подъеме штанги и держите локти в одной и той же точке.',
            countOfResult: '2-3 подхода по 12-15 повторений'),
        Exercise(
            bodyPart: 'Бицепс',
            images: [
              'assets/images/ex_5_1.svg',
              'assets/images/ex_5_2.svg',
            ],
            title: 'Подъём на бицепс в скамье Смитта',
            description:
                'При выполнении подъёмов в скамье Скотта, за счёт дополнительной фиксации локтя, повышается нагрузка на длинную головку бицепса  — плюс, использование изогнутой EZ-штанги также поможет увеличить уровень вовлечения мышечных волокон.',
            countOfResult: '2-3 подхода по 8-10 повторений')
      ],
    ),
    GroupExModel(
      dayNumber: 1,
      title: 'Ноги',
      description: [
        'Приседания со штангой',
        'Разгибания ног в тренажере',
        'Выпады',
      ],
      countOfExercises: '3 упражнения',
      imagePath: 'assets/images/ex_6_2.svg',
      exercises: [
        Exercise(
            bodyPart: 'Ноги',
            images: [
              'assets/images/ex_6_1.svg',
              'assets/images/ex_6_2.svg',
            ],
            title: 'Приседания со штангой',
            description:
                'Базовое упражнение для мышц ног. Может выполняться как со штангой, так и в тренажере для жима ногами. При выполнении держите пресс в осознанном напряжении, опускаясь до точки, в которой бедра параллельны полу.',
            countOfResult: '3-4 подхода по 7-10 повторений'),
        Exercise(
            bodyPart: 'Ноги',
            images: [
              'assets/images/ex_7_1.svg',
            ],
            title: 'Разгибания ног в тренажере',
            description:
                'Упражнение для прицельной прокачки передней поверхности бедра. При выполнении также следите за тем, чтобы пресс оставался в осознанном напряжении. Не помогайте себе поднимать вес за счет выгибания корпуса. Может быть заменено на другое упражнение на ноги.',
            countOfResult: '2-3 подхода по 12-15 повторений'),
        Exercise(
            bodyPart: 'Ноги',
            images: [
              'assets/images/ex_8_1.svg',
              'assets/images/ex_8_2.svg',
            ],
            title: 'Выпады',
            description:
                'Упражнение для проработки средней ягодичной мышцы. Допустимо выполнение как с весом тела, так и с гантелями. Опционально могут быть заменены на любое другое упражнение для ягодиц.',
            countOfResult: '2-3 подхода по 12-15 повторений'),
      ],
    ),
  ],
  [
    GroupExModel(
        dayNumber: 2,
        title: 'Плечи',
        description: [
          'Отжимания на скамье',
          'Подъемы гантелей',
          'Подъемы гантелей',
          'Жим гантелей сидя',
        ],
        countOfExercises: '4 упражнения',
        imagePath: 'assets/images/ex_d2_2_2.svg',
        exercises: [
          Exercise(
              bodyPart: 'Плечи',
              images: [
                'assets/images/ex_d2_1_1.svg',
                'assets/images/ex_d2_1_2.svg',
              ],
              title: 'Обратные отжимания на скамье',
              description:
                  'Упражнение для разминки верхней части тела и подготовки суставов к работе. Может выполняться как от земли, так и на двух скамьях — отжимания на брусьях также допустимы. В верхней точке старайтесь вытолкнуть вес тела как можно выше.',
              countOfResult: '2-3 подхода по 12-15 повторений.'),
          Exercise(
              bodyPart: 'Плечи',
              images: [
                'assets/images/ex_d2_2_1.svg',
                'assets/images/ex_d2_2_2.svg',
              ],
              title: 'Подъемы гантелей в стороны',
              description:
                  'Упражнение для средней части дельтовидных мышц. При выполнении используйте средний вес гантелей и контролируйте неподвижное положение корпуса. Спина должна быть прямой, руки не должны сгибаться в локтях. Поднимайте вес до горизонтали.',
              countOfResult: '2-3 подхода по 12-15 повторений'),
          Exercise(
              bodyPart: 'Плечи',
              images: [
                'assets/images/ex_d2_3_1.svg',
                'assets/images/ex_d2_3_2.svg',
              ],
              title: 'Подъемы гантелей перед собой',
              description:
                  'Упражнение для передней части дельтовидных мышц. Также используйте средний вес гантелей и следите за техникой. Начинайте поднимать руку только тогда, когда противоположная рука находится в нижней точке движения.',
              countOfResult: '2-3 подхода по 12-15 повторений'),
          Exercise(
              bodyPart: 'Плечи',
              images: [
                'assets/images/ex_d2_4_1.svg',
                'assets/images/ex_d2_4_2.svg',
              ],
              title: 'Жим гантелей сидя',
              description:
                  'Базовое упражнение для мышц плеч. Может выполняться либо с гантелями (как сидя на скамье, так и стоя), либо со штангой — жим штанги стоя. При выполнении держите пресс в осознанном напряжении, при подъеме веса вверх не выталкивайте его за счет силы корпуса — работают только плечи.',
              countOfResult: '3-4 подхода по 7-10 повторений'),
        ]),
    GroupExModel(
      dayNumber: 2,
      title: 'Трицепс',
      description: [
        'Обратные разгибания на трицепс',
        'Жим на трицепс из-за головы',
      ],
      countOfExercises: '2 упражнения',
      imagePath: 'assets/images/ex_d2_3_1.svg',
      exercises: [
        Exercise(
            bodyPart: 'Трицепс',
            images: [
              'assets/images/ex_d2_5_1.svg',
              'assets/images/ex_d2_5_2.svg',
            ],
            title: 'Обратные разгибания на трицепс',
            description:
                'Упражнение для средней головки трицепса, придающее мышце объем. Может выполняться как с гантелей на скамье, так и в тренажере с веровкой (корпус при этом строго перпендикулярен полу). Совершайте медленные движения, в финальной точке движения напрягая трицепс еще сильнее.',
            countOfResult: '2-3 подхода по 12-15 повторений'),
        Exercise(
            bodyPart: 'Трицепс',
            images: [
              'assets/images/ex_d2_6_1.svg',
              'assets/images/ex_d2_6_2.svg',
            ],
            title: 'Жим на трицепс из-за головы',
            description:
                'Ключевое упражнение для развития трицепса. Может выполняться как сидя на скамье, так и лежа на скамье (с EZ-штангой). Локти должны быть параллельны друг другу и не должны уходить в сторону при движении веса. Может быть заменено на другое упражнение на трицепс.',
            countOfResult: '3-4 подхода по 7-10 повторений'),
      ],
    ),
    GroupExModel(
      dayNumber: 2,
      title: 'Трапеции',
      description: [
        'Подъемы гантелей через стороны',
        'Подъем гантелей к подбородку',
      ],
      countOfExercises: '2 упражнения',
      imagePath: 'assets/images/ex_d2_7_2.svg',
      exercises: [
        Exercise(
            bodyPart: 'Трицепс',
            images: [
              'assets/images/ex_d2_7_1.svg',
              'assets/images/ex_d2_7_2.svg',
            ],
            title: 'Подъемы гантелей через стороны',
            description:
                'Упражнение для проработки трапециевидной и средней дельтовидной мышцы. При подъеме гантелей локти слегка согнуты, движение по полуокружности. Следите за тем, чтобы поясница не выгибалась.',
            countOfResult: '3-4 подхода по 7-10 повторений'),
        Exercise(
            bodyPart: 'Трицепс',
            images: [
              'assets/images/ex_d2_8_1.svg',
              'assets/images/ex_d2_8_2.svg',
              'assets/images/ex_d2_8_3.svg',
            ],
            title: 'Подъем гантелей к подбородку',
            description:
                'Упражнение для трапеций и для дельтовидных мышц. Придает плечам характерную округлую форму. При подъеме вверх следите за тем, чтобы не поднимать гантели слишком высоко — строго до линии параллели. Выполняйте упражнение медленно, вовлекая в работу как можно больше мышечных волокон.',
            countOfResult: '2-3 подхода по 12-15 повторений'),
      ],
    ),
  ],
  [
    GroupExModel(
        dayNumber: 3,
        title: 'Спина',
        description: [
          'Подтягивания',
          'Тяга верхнего блока',
          'Тяга гантели к поясу',
          'Тяга нижнего блока',
        ],
        countOfExercises: '4 упражнения',
        imagePath: 'assets/images/ex_d3_3_2.svg',
        exercises: [
          Exercise(
              bodyPart: 'Спина',
              images: [
                'assets/images/ex_d3_1_1.svg',
                'assets/images/ex_d3_1_2.svg',
              ],
              title: 'Подтягивания',
              description:
                  'Упражнение для разминки широчайших мышц спины. При выполнении держите пресс в осознанном напряжении, а в верхней точке ощущайте работу мышц спины, выталкивая вес тела выше. Не раскачивайтесь.',
              countOfResult: '2-3 подхода по 12-15 повторений'),
          Exercise(
              bodyPart: 'Спина',
              images: [
                'assets/images/ex_d3_2_1.svg',
              ],
              title: 'Тяга верхнего блока',
              description:
                  'За счет использования дополнительного веса позволяет выполнять аналогичное подтягиванием движение — но с большей отдачей. Использование различных рукояток и хватов позволяет модифицировать упражнение и задействовать различные мышцы спины.',
              countOfResult: '3-4 подхода по 7-10 повторений'),
          Exercise(
              bodyPart: 'Спина',
              images: [
                'assets/images/ex_d3_3_1.svg',
                'assets/images/ex_d3_3_2.svg',
              ],
              title: 'Тяга гантели к поясу',
              description:
                  'Упражнение для придания мышцам спины толщины. Цель — вовлечь в работу широчайшие мышцы, а не просто поднять как можно больший вес гантели за счет мышц рук. Следите за тем, чтобы позвоночник был прямым и не выгибался (особенно вверх).',
              countOfResult: '3-4 подхода по 7-10 повторений'),
          Exercise(
              bodyPart: 'Спина',
              images: [
                'assets/images/ex_d3_4_1.svg',
              ],
              title: 'Тяга нижнего блока',
              description:
                  'При наличии в тренажерном зале возможности выполнять полноценную становую тягу со штангой — выполняйте становую. В противном случае упражнение может быть заменено на тягу нижнего блока к поясу.',
              countOfResult: '3-4 подхода по 7-10 повторений'),
        ]),
    GroupExModel(
        dayNumber: 3,
        title: 'Пресс',
        description: [
          'Велосипед на пресс',
          'Скручивания на скамье',
          'Планка',
          'Гиперэкстензия',
        ],
        countOfExercises: '2 упражнения',
        imagePath: 'assets/images/ex_d3_5_2.svg',
        exercises: [
          Exercise(
              bodyPart: 'Пресс',
              images: [
                'assets/images/ex_d3_5_1.svg',
                'assets/images/ex_d3_5_2.svg',
              ],
              title: 'Велосипед на пресс',
              description:
                  'Упражнение для проработки наружной косой мышцы живота. Подразумевает сгибание ноги в колене и подведения к нему противоположного локтя. Выполняется при напряженном прессе и с полным ощущением вовлечения абдоминальных мышц в работу.',
              countOfResult: '3-4 подхода по 10-15 повторений'),
          Exercise(
              bodyPart: 'Пресс',
              images: [
                'assets/images/ex_d3_6_1.svg',
                'assets/images/ex_d3_6_2.svg',
              ],
              title: 'Скручивания на скамье',
              description:
                  'Упражнения для развития прямых мышц живота. При подъеме вверх не задерживайте дыхание и следите за тем, чтобы нагрузка не переходила на поясницу и низ спины. В верхней точке напрягите пресс еще сильнее.',
              countOfResult: '3-4 подхода по 10-15 повторений'),
          Exercise(
              bodyPart: 'Пресс',
              images: [
                'assets/images/ex_d3_7_1.svg',
                'assets/images/ex_d3_7_2.svg',
              ],
              title: 'Планка',
              description:
                  'Важнейшее статическое упражнение на пресс, развивающее внутренние и поперечные абдоминальные мышцы. Планка выполняется в статическом режиме — необходимо не повторять движение, а задержаться неподвижно. Чередуйте различные типы (на локтях, на вытянутых руках, боковые).',
              countOfResult: '3-4 подхода по 60-90 сек'),
          Exercise(
              bodyPart: 'Пресс',
              images: [
                'assets/images/ex_d3_8_1.svg',
                'assets/images/ex_d3_8_2.svg',
              ],
              title: 'Гиперэкстензия',
              description:
                  'Упражнение для укрепления нижней части спины и поясницы. Может выполняться как в динамическом, так и в статическом варианте. При подъеме вверх следите за тем, чтобы не подниматься слишком высоко, выгибая позвоночник назад.',
              countOfResult: '2-3 подхода по 10-15 повторений'),
        ]),
  ],
];

List<List<GroupExModel>> dayExercisesENG = [
  [
    GroupExModel(
      dayNumber: 1,
      title: 'Breast',
      description: [
        'Pushups',
        'Information on the chest',
        'Benging Bengers',
      ],
      countOfExercises: '3 exercise',
      imagePath: 'assets/images/ex_1_2.svg',
      exercises: [
        Exercise(
            bodyPart: 'Breast',
            images: [
              'assets/images/ex_1_1.svg',
              'assets/images/ex_1_2.svg',
            ],
            title: 'Pushups',
            description:
                'Exercise for warming up and preparing the pectoral muscles for training.Vary the various types and width of the hands of the hands, and also use the stand under the legs for complication. ',
            countOfResult: '2-3 approaches of 12-15 repetitions'),
        Exercise(
            bodyPart: 'Breast',
            images: [
              'assets/images/ex_2.svg',
            ],
            title: 'Information on the chest',
            description:
                'The exercise is performed with medium working weight, control over technology and a complete sense of involving the pectoral muscles in the work.Try to strain as much as possible and bring your chest inward, putting your arms forward - but without fixing your elbows.',
            countOfResult: '2-3 approaches of 12-15 repetitions'),
        Exercise(
            bodyPart: 'Breast',
            images: [
              'assets/images/ex_3_1.svg',
              'assets/images/ex_3_2.svg',
            ],
            title: 'The bench press is lying',
            description:
                'Basic exercise for the muscles of the chest.It can be performed both with a bar and in a bench simulator.When performing on a horizontal bench, do not raise your legs up.Optionally, every week you can vary the slope of the bench.',
            countOfResult: '3-4 approaches of 7-10 repetitions'),
      ],
    ),
    GroupExModel(
      dayNumber: 1,
      title: 'Biceps',
      description: [
        'Raises of the bar for biceps',
        'Concentrated biceps rise',
      ],
      countOfExercises: '2 exercise',
      imagePath: 'assets/images/ex_4_1.svg',
      exercises: [
        Exercise(
            bodyPart: 'Biceps',
            images: [
              'assets/images/ex_4_1.svg',
              'assets/images/ex_4_2.svg',
            ],
            title: 'Biceps rises',
            description:
                'Key exercise for the development of biceps muscles.When performing, use the average weight that allows you to perform up to 15 repetitions.Do not swing when lifting the bar and keep your elbows at the same point.',
            countOfResult: '2-3 approaches of 12-15 repetitions'),
        Exercise(
            bodyPart: 'Biceps',
            images: [
              'assets/images/ex_5_1.svg',
              'assets/images/ex_5_2.svg',
            ],
            title: "Rise to Biceps in Scott's bench",
            description:
                "When performing ascents in Scott's bench, due to the additional fixation of the elbow, the load on the long biceps head increases-plus, the use of a curved EZ-stang will also help increase the level of involvement of muscle fibers.",
            countOfResult: '2-3 approaches of 8-10 repetitions')
      ],
    ),
    GroupExModel(
      dayNumber: 1,
      title: 'Legs',
      description: [
        'Squats',
        'Extension of the legs in the simulator',
        'Attacks',
      ],
      countOfExercises: '3 exercise',
      imagePath: 'assets/images/ex_6_2.svg',
      exercises: [
        Exercise(
            bodyPart: 'Legs',
            images: [
              'assets/images/ex_6_1.svg',
              'assets/images/ex_6_2.svg',
            ],
            title: 'Squats',
            description:
                'Basic exercise for the muscles of the legs.It can be performed both with a bar and in a bench simulator.When performing, keep the press in a conscious tension, dropping to the point at which the hips are parallel to the floor.',
            countOfResult: '3-4 approaches of 7-10 repetitions'),
        Exercise(
            bodyPart: 'Legs',
            images: [
              'assets/images/ex_7_1.svg',
            ],
            title: 'Extension of the legs in the simulator',
            description:
                'Exercise for the aiming of the front surface of the thigh.When performing, also make sure that the press remains in a conscious tension.Do not help yourself lift weight due to the bending of the case.It can be replaced by another exercise.',
            countOfResult: '2-3 approaches of 12-15 repetitions'),
        Exercise(
            bodyPart: 'Legs',
            images: [
              'assets/images/ex_8_1.svg',
              'assets/images/ex_8_2.svg',
            ],
            title: 'Lugs',
            description:
                'Exercise for studying the medium gluteal muscle.It is permissible to perform both body weight and dumbbells.Optionally can be replaced by any other exercise for the buttocks.',
            countOfResult: '2-3 approaches of 12-15 repetitions'),
      ],
    ),
  ],
  [
    GroupExModel(
        dayNumber: 2,
        title: 'Shoulders',
        description: [
          'Push -ups on the bench',
          'Raises of dumbbells',
          'Raises of dumbbells',
          'Dumbbells of Sitting',
        ],
        countOfExercises: '4 exercises',
        imagePath: 'assets/images/ex_d2_2_2.svg',
        exercises: [
          Exercise(
              bodyPart: 'Shoulders',
              images: [
                'assets/images/ex_d2_1_1.svg',
                'assets/images/ex_d2_1_2.svg',
              ],
              title: 'Reverse push -ups on the bench',
              description:
                  'Exercise for warming up the upper body and joint preparation for work.It can be performed both from the ground and on two benches - push -ups on the bars are also acceptable.At the top, try to push the body weight as high as possible.',
              countOfResult: '2-3 approaches of 12-15 repetitions.'),
          Exercise(
              bodyPart: 'Shoulders',
              images: [
                'assets/images/ex_d2_2_1.svg',
                'assets/images/ex_d2_2_2.svg',
              ],
              title: 'Lifting dumbbells to the sides',
              description:
                  'Exercise for the middle part of the deltoid muscles.When performing, use the average weight of dumbbells and control the motionless position of the body.The back should be straight, the hands should not bend at the elbows.Raise the weight to the horizontal.',
              countOfResult: '2-3 approaches of 12-15 repetitions'),
          Exercise(
              bodyPart: 'Shoulders',
              images: [
                'assets/images/ex_d2_3_1.svg',
                'assets/images/ex_d2_3_2.svg',
              ],
              title: 'Lifting dumbbells in front',
              description:
                  'Exercise for the front of the deltoid muscles.Also use the average weight of dumbbells and follow the technique.Start raising your hand only when the opposite hand is at the bottom point of movement.',
              countOfResult: '2-3 approaches of 12-15 repetitions'),
          Exercise(
              bodyPart: 'Shoulders',
              images: [
                'assets/images/ex_d2_4_1.svg',
                'assets/images/ex_d2_4_2.svg',
              ],
              title: 'The bench press is sitting',
              description:
                  'Basic exercise for the muscles of the shoulders.It can be performed either with dumbbells (both sitting on a bench and standing), or with a bar - standing bench press.When performing, keep the press in a conscious tension, when lifting weight up, do not push it out at the expense of the body strength - only the shoulders work.',
              countOfResult: '3-4 approaches of 7-10 repetitions'),
        ]),
    GroupExModel(
      dayNumber: 2,
      title: 'Triceps',
      description: [
        'Reverse extension on triceps',
        'Beno for triceps from behind the head',
      ],
      countOfExercises: '2 exercises',
      imagePath: 'assets/images/ex_d2_3_1.svg',
      exercises: [
        Exercise(
            bodyPart: 'Трицепс',
            images: [
              'assets/images/ex_d2_5_1.svg',
              'assets/images/ex_d2_5_2.svg',
            ],
            title: 'Reverse extension on triceps',
            description:
                'Exercise for the middle head of triceps, giving the muscle volume.It can be performed both from dumbbells on a bench and in a simulator with a vevilka (the case is strictly perpendicular to the floor).Make slow movements, at the final point of motion straining triceps even stronger.',
            countOfResult: '2-3 approaches of 12-15 repetitions'),
        Exercise(
            bodyPart: 'Triceps',
            images: [
              'assets/images/ex_d2_6_1.svg',
              'assets/images/ex_d2_6_2.svg',
            ],
            title: 'Triceps from behind the head',
            description:
                'Key exercise for the development of triceps.It can be performed both sitting on a bench and lying on a bench (with EZ-STANGA).The elbows should be parallel to each other and should not go aside when the weight moves.It can be replaced by another triceps exercise.',
            countOfResult: '3-4 approaches of 7-10 repetitions'),
      ],
    ),
    GroupExModel(
      dayNumber: 2,
      title: 'Trapezia',
      description: [
        'Lifts of dumbbells through the sides',
        'Lifting dumbbells to the chin',
      ],
      countOfExercises: '2 exercises',
      imagePath: 'assets/images/ex_d2_7_2.svg',
      exercises: [
        Exercise(
            bodyPart: 'Triceps',
            images: [
              'assets/images/ex_d2_7_1.svg',
              'assets/images/ex_d2_7_2.svg',
            ],
            title: 'Lifts of dumbbells through the sides',
            description:
                'Exercise for studying the trapezoidal and medium deltoid muscle.When lifting dumbbells, the elbows are slightly bent, the movement along the semicircle.Make sure that the lower back does not bend.',
            countOfResult: '3-4 approaches of 7-10 repetitions'),
        Exercise(
            bodyPart: 'Triceps',
            images: [
              'assets/images/ex_d2_8_1.svg',
              'assets/images/ex_d2_8_2.svg',
              'assets/images/ex_d2_8_3.svg',
            ],
            title: 'Lifting dumbbells to the chin',
            description:
                'Exercise for trapezoids and for deltoid muscles.Gives the shoulders a characteristic rounded shape.When lifting up, make sure not to raise dumbbells too high - strictly to the parallel line.Perform the exercise slowly, involving as many muscle fibers as possible into the work.',
            countOfResult: '2-3 approaches of 12-15 repetitions'),
      ],
    ),
  ],
  [
    GroupExModel(
        dayNumber: 3,
        title: 'Back',
        description: [
          'Pull -ups',
          'Thrust of the upper block',
          'Carry of dumbbells to the belt',
          'Crime of the Lower Block',
        ],
        countOfExercises: '4 exercises',
        imagePath: 'assets/images/ex_d3_3_2.svg',
        exercises: [
          Exercise(
              bodyPart: 'Back',
              images: [
                'assets/images/ex_d3_1_1.svg',
                'assets/images/ex_d3_1_2.svg',
              ],
              title: 'Pulling up',
              description:
                  "Exercise for warming up the broadest muscles of the back.When performing, keep the press in a conscious tension, and at the top point feel the work of the back muscles, pushing the body's weight above.Do not swing.",
              countOfResult: '2-3 approaches of 12-15 repetitions'),
          Exercise(
              bodyPart: 'Back',
              images: [
                'assets/images/ex_d3_2_1.svg',
              ],
              title: 'The thrust of the upper block',
              description:
                  'Due to the use of additional weight, it allows you to perform a similar pull -up movement - but with greater return.Using various handles and grip allows you to modify the exercise and use various back muscles.',
              countOfResult: '3-4 approaches of 7-10 repetitions'),
          Exercise(
              bodyPart: 'Back',
              images: [
                'assets/images/ex_d3_3_1.svg',
                'assets/images/ex_d3_3_2.svg',
              ],
              title: "Gantel's thrust to the belt",
              description:
                  'Exercise to give the muscles the back thickness.The goal is to involve the widest muscles in the work, and not just raise the larger weight of the dumbbells due to the muscles of the hands.Make sure that the spine is straight and does not bend (especially up).',
              countOfResult: '3-4 approaches of 7-10 repetitions'),
          Exercise(
              bodyPart: 'Back',
              images: [
                'assets/images/ex_d3_4_1.svg',
              ],
              title: 'The thrust of the lower block',
              description:
                  'If there is an opportunity to perform a full -fledged dash with a bar in the gym - perform a drill.Otherwise, the exercise can be replaced by the thrust of the lower block to the belt.',
              countOfResult: '3-4 approaches of 7-10 repetitions'),
        ]),
    GroupExModel(
        dayNumber: 3,
        title: 'Press',
        description: [
          'Bike to the press',
          'Twisting on the bench',
          'Bar',
          'Hyperextenesia',
        ],
        countOfExercises: '2 exercises',
        imagePath: 'assets/images/ex_d3_5_2.svg',
        exercises: [
          Exercise(
              bodyPart: 'Press',
              images: [
                'assets/images/ex_d3_5_1.svg',
                'assets/images/ex_d3_5_2.svg',
              ],
              title: 'Bicycle to the press',
              description:
                  'Exercise for studying the external oblique muscle of the abdomen.It implies bending the legs in the knee and bringing the opposite elbow to it.It is performed with a tense press and with a complete sense of involvement of the abdominal muscles in the work.',
              countOfResult: '3-4 approaches of 10-15 repetitions'),
          Exercise(
              bodyPart: 'Press',
              images: [
                'assets/images/ex_d3_6_1.svg',
                'assets/images/ex_d3_6_2.svg',
              ],
              title: 'Twisting on the bench',
              description:
                  'Exercises for the development of rectus abdominal muscles.When rising up, do not hold your breath and make sure that the load does not switch to the lower back and bottom of the back.At the top point, strain the press even stronger.',
              countOfResult: '3-4 approaches of 10-15 repetitions'),
          Exercise(
              bodyPart: 'Press',
              images: [
                'assets/images/ex_d3_7_1.svg',
                'assets/images/ex_d3_7_2.svg',
              ],
              title: 'Planck',
              description:
                  'The most important static exercise for a press that develops internal and transverse abdominal muscles.The bar is performed in static mode - it is necessary not to repeat the movement, but to linger motionless.Alternate various types (on the elbows, on outstretched arms, side).',
              countOfResult: '3-4 approaches of 60-90 seconds'),
          Exercise(
              bodyPart: 'Press',
              images: [
                'assets/images/ex_d3_8_1.svg',
                'assets/images/ex_d3_8_2.svg',
              ],
              title: 'Hyperectstension',
              description:
                  'Exercise to strengthen the lower back and lower back.It can be performed both in dynamic and static.When lifting up, make sure that you do not rise too high, bending the spine back.',
              countOfResult: '2-3 approaches of 10-15 repetitions'),
        ]),
  ],
];
