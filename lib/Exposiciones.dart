import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

const _referencesUrl =
    'https://redescubramossonora.mx/museodelosyaquis/cosmovision/'
    '#cosmovision-referencias';

class CosmovisionPage extends StatelessWidget {
  const CosmovisionPage({super.key});

  static const _muralCaption =
      'Fragmento del mural “Cosmogonía Yaqui”. Autor Julio Hernández Correa. '
      'Museo Étnico de los Yaquis. Sala Cosmovisión. Fotógrafo: Juan Casanova.';
  static const _muralFragmentCaption =
      '/ Fragmento del mural “Cosmogonía Yaqui” / Autor Julio Hernández '
      'Correa. Museo Étnico de los Yaquis. Sala Cosmovisión. Fotógrafo: '
      'Juan Casanova.';

  static const _figures = <_ExhibitionFigure>[
    _ExhibitionFigure(
      title: 'Itom téeka “nuestro cielo” / choki ania “mundo de las estrellas”',
      asset: 'assets/exposiciones/cosmovision/nuestro_cielo.jpg',
      caption: _muralFragmentCaption,
    ),
    _ExhibitionFigure(
      title: 'Itom Achai "nuestro padre"',
      asset: 'assets/exposiciones/cosmovision/nuestro_padre.jpg',
      caption: _muralFragmentCaption,
    ),
    _ExhibitionFigure(
      title: 'Itom Aye "nuestra madre"',
      asset: 'assets/exposiciones/cosmovision/nuestra_madre.jpg',
      caption: _muralFragmentCaption,
    ),
  ];

  static const _myths = <_ExhibitionFigure>[
    _ExhibitionFigure(
      title: 'Los Surem, ancestros yaquis',
      asset: 'assets/exposiciones/cosmovision/ancestros_yaquis.jpg',
      caption: 'Los Surem, ancestros yaquis. Fragmento del mural '
          '“Cosmogonía Yaqui”. Autor Julio Hernández Correa. Museo Étnico de '
          'los Yaquis. Sala Cosmovisión. Fotógrafo: Juan Casanova.',
    ),
    _ExhibitionFigure(
      title: 'El árbol parlante',
      asset: 'assets/exposiciones/cosmovision/camino_arbol_parlante.jpg',
      caption: 'Camino al árbol parlante. Fragmento del mural “Cosmogonía '
          'Yaqui”. Autor Julio Hernández Correa. Museo Étnico de los Yaquis. '
          'Sala Cosmovisión. Fotógrafo: Juan Casanova.',
    ),
    _ExhibitionFigure(
      title: 'La gran serpiente',
      asset: 'assets/exposiciones/cosmovision/gran_serpiente_mural.jpg',
      caption: 'La gran serpiente. Fragmento del mural “Cosmogonía Yaqui”. '
          'Autor Julio Hernández Correa. Museo Étnico de los Yaquis. Sala '
          'Cosmovisión. Fotógrafo: Juan Casanova.',
    ),
    _ExhibitionFigure(
      title: 'El chapulín brujo',
      asset: 'assets/exposiciones/cosmovision/chapulin_brujo.jpg',
      caption: 'El chapulín brujo. Fragmento del mural “Cosmogonía Yaqui”. '
          'Autor Julio Hernández Correa. Museo Étnico de los Yaquis. Sala '
          'Cosmovisión. Fotógrafo: Juan Casanova.',
    ),
    _ExhibitionFigure(
      title: 'Boobok',
      asset: 'assets/exposiciones/cosmovision/Boobok.jpg',
      caption: 'Boobok. Fragmento del mural “Cosmogonía Yaqui”. Autor Julio '
          'Hernández Correa. Museo Étnico de los Yaquis. Sala Cosmovisión. '
          'Fotógrafo: Olavo Rojas Vega.',
    ),
  ];

  static const _references = <_BibliographicReference>[
    _BibliographicReference(
      text: 'Comisión Presidencial de Justicia para el Pueblo Yaqui. (2020). '
          'Plan de Justicia para el Pueblo Yaqui. Ciudad de México: Secretaría '
          'de Gobernación. p. 48.',
      url: 'https://www.inpi.gob.mx/gobmx-2021/'
          'Plan-de-Justicia-del-Pueblo-Yaqui.pdf',
    ),
    _BibliographicReference(
      text: 'Padilla Ramos, Raquel. (2020). Agua es territorio: un panorama '
          'general de las luchas yaquis por la defensa de sus recursos '
          'naturales En Noroeste de México, (2). p. 33-34.',
      url:
          'http://mediateca.inah.gob.mx/repositorio/islandora/object/issue:3036',
    ),
    _BibliographicReference(
      text: 'Restor Rodríguez, María M. (2017). La identidad yaqui y el agua '
          'En Conflictos por el agua y alternativas en los territorios '
          'indígenas de México. Jiutepec, Morelos: Instituto Mexicano de '
          'Tecnología del Agua. p. 84.',
      url: 'http://repositorio.imta.mx/handle/20.500.12013/1839',
    ),
    _BibliographicReference(
      text: 'Flores José; Mungarro, Zuleth; García, Alma. (2021). Elementos '
          'de la cultura yaqui como atractivo etnoturístico en Sonora, México '
          'En ORBIS: Revista Científica Electrónica de Ciencias Humanas. '
          'p. 27.',
      url: 'http://www.revistaorbis.org/pdf/53/art2.pdf',
    ),
    _BibliographicReference(
      text: 'Olavarría, María Eugenia. (2013). Los yaquis y el mito del árbol '
          'que habla En Los pueblos indígenas del noroeste: atlas etnográfico. '
          'México: Instituto Nacional de Antropología e Historia. Instituto '
          'Sonorense de Cultura del Gobierno del Estado de Sonora. Instituto '
          'Nacional de Lenguas Indígenas. p. 284-5.',
      url: 'https://www.mediateca.inah.gob.mx/islandora_74/'
          'islandora/object/libro:449',
    ),
    _BibliographicReference(
      text: 'Rojo Valencia, Tomás. (2017). La identidad yaqui y el agua En '
          'Conflictos por el agua y alternativas en los territorios indígenas '
          'de México. Jiutepec, Morelos: Instituto Mexicano de Tecnología del '
          'Agua. p. 100.',
      url: 'http://repositorio.imta.mx/handle/20.500.12013/1839',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final headingColor = theme.colorScheme.primary;

    return Scaffold(
      appBar: AppBar(title: const Text('Cosmovisión')),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(20, 24, 20, 40),
        children: [
          Text(
            'Exposición',
            style: theme.textTheme.labelLarge?.copyWith(
              color: headingColor,
              letterSpacing: 1.2,
            ),
          ),
          const SizedBox(height: 4),
          Text('Cosmovisión', style: theme.textTheme.headlineMedium),
          const SizedBox(height: 16),
          const _ExhibitionImage(
            figure: _ExhibitionFigure(
              title: '“Cosmogonía Yaqui”',
              asset: 'assets/exposiciones/cosmovision/Cosmogonia_Yaqui.jpg',
              caption: '/ Autor Julio Hernández Correa. Museo Étnico de los '
                  'Yaquis. Sala Cosmovisión. Fotógrafo: Juan Casanova.',
            ),
          ),
          _NarrativeParagraph(
            children: const [
              TextSpan(
                text: 'En la historia del noroeste mexicano, la cultura yoeme '
                    '«yaqui» es una de las más reconocidas y al mismo tiempo '
                    'incomprendida. El eje principal de ello radica en la '
                    'continua lucha por su autodeterminación y la defensa de '
                    'su Toosa o «territorio». Precisamente esto es el punto '
                    'de partida de la presente exposición; es donde nacen '
                    'todos los motivos y acciones que el pueblo yaqui lleva '
                    'a cabo hasta la actualidad',
              ),
            ],
          ),
          _NarrativeParagraph(
            children: [
              const TextSpan(
                text: 'La Tribu Yaqui fundamenta su sentido del mundo a '
                    'través de un concepto de territorio compuesto por: itom '
                    'toosa «nuestro nido»; Itom ania «nuestro universo», e '
                    'itom téeka «nuestro cielo». Estos conceptos no solo '
                    'consideran un plano físico o terrenal, sino una rica '
                    'multiplicidad de dimensiones espirituales y simbólicas '
                    'muy poderosas como la yo’o ania «mundo antiguo»; juya '
                    'ania «mundo del monte»; yo’o jo´aram «lugar de los '
                    'encantos»',
              ),
              _citation(1),
              const TextSpan(
                text: '; choki ania «mundo de las estrellas»; tenku ania '
                    '«mundo de los sueños»; el sewa ania «mundo ﬂor»',
              ),
              _citation(2),
              const TextSpan(
                  text: ', y el bawe/ ba’am/ baa’am que concentra '
                      'la presencia ancestral del agua (río y mar) como espacio '
                      'de poder'),
              _citation(3),
              const TextSpan(
                text: '. Estos conceptos para alguien ajeno a la cultura yaqui '
                    'suelen ser difíciles de comprender y en consecuencia '
                    'poder respetar, por lo que la coexistencia entre '
                    'percepciones culturales se dificulta.',
              ),
            ],
          ),
          _NarrativeParagraph(
            children: [
              const TextSpan(
                text: 'Los planos místicos mencionados pertenecen a un '
                    'concepto esencial: ania o mundo; entre ellos existe un '
                    'flujo perpetuo de interacciones entre todos los elementos '
                    'naturales y sobrenaturales; ejemplo de ello deriva en el '
                    'nombramiento de toponimias pertenecientes a todos los '
                    'elementos tangibles como cerros, ríos y arroyos, y a los '
                    'cuales se les componen cantos, sones y leyendas',
              ),
              _citation(4),
              const TextSpan(text: '.'),
            ],
          ),
          const _SectionHeading('El mural'),
          for (final figure in _figures.take(1))
            _ExhibitionImage(figure: figure),
          const _ExhibitionImage(
            figure: _ExhibitionFigure(
              title: 'El Yo´o jo´aram “mundo de los encantos”',
              asset:
                  'assets/exposiciones/cosmovision/mundo_de_los_encantos.jpg',
              caption: _muralCaption,
            ),
          ),
          _NarrativeParagraph(
            children: const [
              TextSpan(
                text: 'El Yo´o jo´aram “mundo de los encantos” es el sitio '
                    'donde los jóvenes, sin contarle a nadie, acuden para vivir '
                    'una experiencia mística durante tres noches, después de '
                    'la cual, se va a soñar para obtener un don especial a '
                    'cambio de dejar su alma atrapada, esta alma se aparecerá '
                    'a las generaciones futuras para continuar ese ciclo. Los '
                    'dones de los dioses, permiten destacar como el mejor en '
                    'la actividad a la que se decida dedicar la vida: músico, '
                    'corredor, guerrero, danzante, curandero, etcétera. El '
                    'Yo´o jo´aram puede manifestarse como un vórtice cargado '
                    'de energía en la sombra de un árbol, en una cueva, en una '
                    'colina, ente otros.',
              ),
            ],
          ),
          for (final figure in _figures.skip(1))
            _ExhibitionImage(figure: figure),
          _NarrativeParagraph(
            children: const [
              TextSpan(
                text: 'Para dar representación de lo anterior, en la primera '
                    'sala del Museo se recrean los planos místicos y mitos '
                    'yaquis a través del mural envolvente titulado «Cosmogonía '
                    'Yaqui». El Mural fue realizado en 2008 por el artista '
                    'plástico Julio Hernández Correa que adaptó el espacio '
                    'construyendo una bóveda de cañón sobre la cual historió '
                    'su obra.',
              ),
            ],
          ),
          _NarrativeParagraph(
            children: const [
              TextSpan(
                text: 'En el mural se observan distintos elementos que '
                    'explican el origen de la tribu. Uno de ellos es el cielo, '
                    'en el cual se asevera que el pueblo proviene de las '
                    'estrellas, por esa razón se regresa a ellas al morir, y '
                    'cada una representa un antepasado que comparte ese '
                    'espacio con el Sol y la Luna. De igual forma en el mural '
                    'se distingue la presencia de los Surem; Boobok el sapo y '
                    'tres mitos yaquis: el camino al árbol parlante; la gran '
                    'serpiente, y el chapulín brujo.',
              ),
            ],
          ),
          const _SectionHeading('Los Surem'),
          _ExhibitionImage(figure: _myths[0]),
          _NarrativeParagraph(
            children: const [
              TextSpan(
                text: 'En la mitología yaqui los Surem son sus antepasados '
                    'directos, antiguos y sabios seres dotados de la capacidad '
                    'de comunicarse con árboles y animales, con una '
                    'complexión física muy diminuta alrededor de 50 cm. de '
                    'estatura, barbados y longevos pues podían vivir hasta '
                    '500 años. De ellos se dice que brotaron de los pantanos '
                    'del rio Yaqui y que posteriormente se convertirían en '
                    'animales de la montaña, ya que no aceptaron la nueva '
                    'religión. Ahora viven en armonía con la naturaleza, se '
                    'renuevan cada luna llena y desconocen el bautizo y el '
                    'matrimonio.',
              ),
            ],
          ),
          const _SectionHeading('El árbol parlante'),
          _ExhibitionImage(figure: _myths[1]),
          _NarrativeParagraph(
            children: const [
              TextSpan(
                text: 'Este mito constituye no sólo el relato que sanciona el '
                    'origen de los yaquis, sino también un universo plenamente '
                    'vivo que evoca prácticas, vivencias y discursos. En él '
                    'se afirma que los Surem, intentaban saber lo que un '
                    'árbol sabio quería comunicarles, pero no entendían su '
                    'lenguaje, por ello acudieron con Yomomuli, la última '
                    'mujer sobreviviente que podía interpretar las palabras '
                    'del árbol, el cual tenía dos presagios.',
              ),
            ],
          ),
          _NarrativeParagraph(
            children: [
              const TextSpan(
                text: 'El primero era que vendría un dios bueno, traído por '
                    'hombres con cruces, eso a través del tiempo se ajusta '
                    'simbólicamente a la llegada de los misioneros jesuitas '
                    'que trajeron la religión católica como eje salvador, y '
                    'que, como primer paso para ello, requería del bautizo '
                    'como medio de conversión y salvación. La parte de los '
                    'Surem que sin temor aceptaron ser bautizados por los '
                    'hombres blancos con cruces, con el tiempo crecieron '
                    'altos y se convirtieron en los Yaquis; la otra parte, '
                    'negándose al bautizo, huyeron por el río yendo a parar '
                    'al monte y al mar donde terminaron convirtiéndose en '
                    'animales del agua o la tierra.',
              ),
            ],
          ),
          _NarrativeParagraph(
            children: [
              const TextSpan(
                text: 'Junto con el origen de los yaquis, este relato sanciona '
                    'la aparición de la cultura, ya que antes no existía la '
                    'agricultura y los animales no sabían dónde les '
                    'correspondía vivir',
              ),
              _citation(5),
              const TextSpan(
                text: '. Así como se hace referencia indirecta a que el alma '
                    'es considerada inmortal, por tanto, la muerte se '
                    'presenta como algo natural ante sus miembros y solo como '
                    'una etapa de transición, esto último es importante debido '
                    'a que fue la base que tomaron los evangelizadores para '
                    'la conversión cristiana de la tribu.',
              ),
            ],
          ),
          const _SectionHeading('La gran serpiente'),
          _ExhibitionImage(figure: _myths[2]),
          _NarrativeParagraph(
            children: const [
              TextSpan(
                text: 'La segunda predicción mencionada por el árbol parlante '
                    'se trataría de un peligro venido del norte, identificado '
                    'como una gran serpiente, esta llegaría al suelo sagrado '
                    'poniendo en peligro a los pequeños Surem tragándoselos '
                    'de un bocado. Los Surem empezaron a desaparecer y por '
                    'cuanto que trataron de defenderse con arcos y flechas, '
                    'no lograban ni siquiera rasguñar los gruesos caparazones '
                    'de la serpiente, era tan grande que los Surem tardaban '
                    'once días en recorrerlo de la cola a la cabeza.',
              ),
            ],
          ),
          const _SectionHeading('El chapulín brujo'),
          _ExhibitionImage(figure: _myths[3]),
          _NarrativeParagraph(
            children: const [
              TextSpan(
                text: 'Frente al peligro de la gran serpiente, los Surem '
                    'enviaron una golondrina a buscar al sabio hechicero, '
                    'quien se comprometió a ayudarles bajo la condición de '
                    'cubrirlo con hojas verdes para camuflarlo, entonces, una '
                    'vez cubierto, se convirtió en un gigantesco chapulín '
                    'dotado de enormes y filosas patas. El brujo enfrenta así '
                    'la serpiente y, consigue con una de sus patas y de un '
                    'salto, arrancar la cabeza de la gran serpiente, '
                    'liberándolos. La cabeza al rodar se transformó en lo que '
                    'conocemos como el cerro Tenjawe o Boca Abierta, cerca del '
                    'pueblo de las Guásimas, municipio de Empalme.',
              ),
            ],
          ),
          const _SectionHeading('Boobok'),
          _ExhibitionImage(figure: _myths[4]),
          _NarrativeParagraph(
            children: const [
              TextSpan(
                text: 'Fue un animal mítico protagonista de una de las '
                    'leyendas que hablan sobre la creación del río Yaqui. Se '
                    'cuenta que hace muchísimos años, el río Yaqui no existía, '
                    'y los Surem a muy duras penas sobrevivían en esta región '
                    'semidesértica sembrando chile, frijol, calabaza, cazando, '
                    'y recolectando sayas, un poco de maíz y quelites. Ante '
                    'esa difícil situación los jefes tribales convocaron a '
                    'una reunión de toda su gente y otros grupos del valle.',
              ),
            ],
          ),
          _NarrativeParagraph(
            children: const [
              TextSpan(
                text: 'Todos acordaron pedir ayuda al animal sabio Yuku ya´ut, '
                    '«jefe de la lluvia», para que formara el río que tanta '
                    'falta les hacía. Para solicitar el agua, primero '
                    'enviaron a otros animales sabios como el cuervo, el '
                    'gavilán y el búho, pero nunca regresaron; como la '
                    'necesidad de agua era cada vez más apremiante, pidieron '
                    'el favor a los animales sabios más veloces como Sáawiru '
                    'y Ráakon, en eso estaban, cuando se presentó Boobok, un '
                    'sapito voluntario para ir a hablar con el jefe de la '
                    'lluvia, solo pidió a los presentes que le hicieran '
                    'tamales de elote para llevar en su camino, dicho y hecho. '
                    'Al día siguiente Boobok fue arrojando pedazos de tamal '
                    'por el cauce por donde querían que pasara el río, cuando '
                    'terminó, de un salto llegó a la casa de Yuku ya’ut y '
                    'habló con él. Al otro día cayó sobre toda la región una '
                    'lluvia tan fuerte, que el caudal proveniente de la sierra '
                    'formó el río Yaqui.',
              ),
            ],
          ),
          _NarrativeParagraph(
            children: [
              const TextSpan(
                text: 'El mito de Boobok afianza la identificación y arraigo '
                    'de la tribu yaqui con su territorio, pues se conjunta '
                    'con el hecho de que este pueblo fue establecido hace más '
                    'de 2,500 años, precisamente guiados por el agua. En ese '
                    'tenor, otra leyenda dice que un gran maestro llamado '
                    'Yaji Towi encaminó al pueblo yoeme al río y dijo: «Este '
                    'es el lugar donde vamos a llegar, este río estruendoso '
                    'lo ha señalado el gran creador que podemos asentarnos, y '
                    'nos lo ha señalado para establecernos por los tiempos de '
                    'los tiempos, incluso dicen que el ruido que hacía el agua '
                    'cuando bajaba de la sierra es lo que identifica al '
                    'pueblo: Hiaqui»',
              ),
              _citation(6),
              const TextSpan(text: '.'),
            ],
          ),
          _NarrativeParagraph(
            children: const [
              TextSpan(
                text: 'Para complementar la información que nos ofrece el '
                    'mural y la figura de Boobok, en esta sala se proyecta el '
                    'video documental «Cosmovisión Yaqui» producido por parte '
                    'del mismo museo en 2008 en el cual Don Teodoro Ochoa '
                    'Álvarez nos habla sobre las creencias en dioses antiguos; '
                    'Don Esteban Jiménez y Don Luis Coronado relatan (por '
                    'separado) sobre el Yo´o-joara o mundo de los encantos, '
                    'lugar en el cual pueden adquirirse dones como danzante, '
                    'jinete, músico, entre otros, Don Inés Álvarez R. narra '
                    'lo relacionado al mito de la danza de Venado, Don Ruperto '
                    'Buitimea Y. quien ofrece su experiencia acerca de ser '
                    'danzante de Venado, y Don Juan Julio Lugo Valenzuela '
                    'quien hace una invitación a los jóvenes para aprender, '
                    'analizar y valorar la tradición. El siguiente párrafo es '
                    'un fragmento de la narración de Don Luis Coronado acerca '
                    'de la obtención de los dones en el mundo de los encantos:',
              ),
            ],
          ),
          const _NarrativeParagraph.text(
            text: '«Para ser un buen danzante de venado, tendrá que entregar '
                'su alma al mundo de los encantos. Para pedir un don tendrá '
                'que ir a la sierra y sentarse bajo un árbol […] el aire '
                'fresco hará que se duerma, y de esa forma entrar al mundo de '
                'los encantos por medio del sueño […] y por este medio le '
                'será entregado el don solicitado».',
            isQuote: true,
          ),
          const _SectionHeading('Referencias'),
          for (var index = 0; index < _references.length; index++)
            _ReferenceItem(
              number: index + 1,
              reference: _references[index],
            ),
        ],
      ),
    );
  }

  static WidgetSpan _citation(int number) {
    return WidgetSpan(
      alignment: PlaceholderAlignment.baseline,
      baseline: TextBaseline.alphabetic,
      child: _CitationLink(number: number),
    );
  }
}

class DanzaMusicaPage extends StatelessWidget {
  const DanzaMusicaPage({super.key});

  static const _referencesUrl =
      'https://redescubramossonora.mx/museodelosyaquis/danza-y-musica/'
      '#dan-mus-referencias';

  static const _references = <_DanzaReference>[
    _DanzaReference(
      'Varela Ruiz, Leticia T. (2013). Música yaqui o yoeme En Los pueblos '
          'indígenas del noroeste: atlas etnográfico. México: Instituto Nacional '
          'de Antropología e Historia. Instituto Sonorense de Cultura del Gobierno '
          'del Estado de Sonora. Instituto Nacional de Lenguas Indígenas. p. 284-5.',
      'https://www.mediateca.inah.gob.mx/islandora_74/islandora/object/libro:449',
    ),
    _DanzaReference(
      'Olmos Aguilera, Miguel. (2002). La herencia jesuita en el arte de los '
          'indígenas del noroeste de México En Frontera norte, 14(27), p. 220.',
      'http://www.scielo.org.mx/pdf/fn/v14n27/v14n27a7.pdf',
    ),
    _DanzaReference(
      'Comisión Presidencial de Justicia para el Pueblo Yaqui. (2020). Plan '
          'de Justicia para el Pueblo Yaqui. Ciudad de México: Secretaría de '
          'Gobernación. p. 27.',
      'https://www.inpi.gob.mx/gobmx-2021/Plan-de-Justicia-del-Pueblo-Yaqui.pdf',
    ),
    _DanzaReference(
      'Sánchez Pichardo, Pablo. (2012).  Las danzas de Pascola y Venado: su '
          'cultura material y comportamiento ritual En Anales de Antropología: '
          'Revista del Instituto de Investigaciones Antropológicas, UNAM. p. 142.',
      'http://www.revistas.unam.mx/index.php/antropologia/article/view/30699/pdf',
    ),
    _DanzaReference(
      'Mesri Hashemi-Dilmaghani, Parastoo Anita; Carlón Flores, María Anabela. '
          '(2019). La organización político-social de la tribu yoeme (yaqui). '
          '1ª ed. Ciudad de México: Tribunal Electoral del Poder Judicial de la '
          'Federación. p. 41.',
      'https://www.te.gob.mx/publicaciones/sites/default/files/archivos_libros/'
          'La_organizacion_politico_social_tribu_yoeme.pdf',
    ),
    _DanzaReference(
      'Comisión Presidencial de Justicia para el Pueblo Yaqui. (2020). Plan '
          'de Justicia para el Pueblo Yaqui. Ciudad de México: Secretaría de '
          'Gobernación. p. 28.',
      'https://www.inpi.gob.mx/gobmx-2021/Plan-de-Justicia-del-Pueblo-Yaqui.pdf',
    ),
    _DanzaReference(
      'Lerma Rodríguez, Enriqueta. (2016). La construcción social del tiempo '
          'circular y el espacio concéntrico y reticular en la ritualidad yaqui '
          'En Nueva antropología, 29(84), p. 20.',
      'http://www.scielo.org.mx/pdf/na/v29n84/0185-0636-na-29-84-00011.pdf',
    ),
    _DanzaReference(
      'Abbondanza, Ermanno. (2009). Los “otros” entre “nosotros”: el proceso '
          'de a-normalización de los yaquis en el México porfiriano (1890- 1909). '
          'p. 314.',
      'https://revistasojs.ucaldas.edu.co/index.php/virajes/article/download/'
          '836/759/',
    ),
    _DanzaReference(
      'Olavarría, María Eugenia. (1995). Creatividad y sincretismo en un ritual '
          'yaqui En Alteridades, Vol. 5 (9). p. 75.',
      'https://www.redalyc.org/pdf/747/74711352007.pdf',
    ),
    _DanzaReference('Abbondanza, Ermanno. op. cit., p. 315.'),
    _DanzaReference('Lerma Rodríguez, Enriqueta. op. cit., p. 21.'),
    _DanzaReference('Olavarría, María Eugenia. op. cit., p. 75.'),
    _DanzaReference(
      'Partida Tayzan, Armando. (2017). La religiosidad popular de Semana '
          'Santa Yaqui, Mayo y Cora En La Semana Santa: Antropología y Religión '
          'en Latinoamérica III. Representaciones y ritos representados. '
          'Desenclavos, pasiones y vía crucis vivientes. Valladolid: III Congreso '
          'Latinoamericano de Religiosidad Popular: La Semana Santa. '
          'Representaciones y ritos representados. Desenclavos, pasiones y vía '
          'crucis vivientes.  p. 29-48.',
      'https://dialnet.unirioja.es/servlet/libro?codigo=717085',
    ),
    _DanzaReference('Olavarría, María Eugenia. op. cit., p. 75.'),
    _DanzaReference('Varela Ruiz, Leticia T. op. cit., p. 286.'),
    _DanzaReference('Lerma Rodríguez, Enriqueta. op. cit., p. 58.'),
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    Widget paragraph(String text, {bool quote = false}) =>
        _DanzaNarrativeParagraph(text: text, isQuote: quote);
    Widget image(String title, String filename, String caption) =>
        _ExhibitionImage(
          figure: _ExhibitionFigure(
            title: title,
            asset: 'assets/exposiciones/danza_musica/$filename',
            caption: caption,
          ),
        );

    return Scaffold(
      appBar: AppBar(title: const Text('Danza y música')),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(20, 24, 20, 40),
        children: [
          Text(
            'Exposición',
            style: theme.textTheme.labelLarge?.copyWith(
              color: theme.colorScheme.primary,
              letterSpacing: 1.2,
            ),
          ),
          const SizedBox(height: 4),
          Text('Danza y música', style: theme.textTheme.headlineMedium),
          const SizedBox(height: 16),
          paragraph(
            'No se puede entender la religiosidad e identificación con la '
            'Toosa sin las danzas y música que las acompañan; en un contexto '
            'ritual, ambas se interpretan con una proyección mágico-religiosa, '
            'en donde se retoma lo ancestral y aviva la relación existente '
            'entre el hombre y la naturaleza. La buena ejecución de estos '
            'rituales transmite un mensaje o revive hechos que nunca deben '
            'ser borrados de la mente del danzante y los espectadores, de tal '
            'forma que se deben expulsar o eliminar los recuerdos que '
            'perturban la conciencia para estimular la vigilancia, disciplina '
            'y defensa de los valores fundamentales yaquis.',
          ),
          image(
            'Kobanao',
            'Kobanao.jpg',
            'Kobanao en procesión cuaresmal. Museo Étnico de los Yaquis. Sala '
                'de fiestas tradicionales. Fotógrafo: Juan Casanova',
          ),
          const _SectionHeading('Música'),
          paragraph(
            'La música representa el pasado, escenifica el presente y predice '
            'el futuro de la tribu, es interpretada con todo el rigor '
            'coreográfico ceremonial y organizacional en cada momento esencial '
            'de la vida del individuo: nacimiento, matrimonio, luchas, muerte, '
            'y en cada fiesta que unifica a la tribu o la conecta cósmicamente '
            'con los ancestros y divinidad. Tiene función evocadora de gestos, '
            'drama y alegrías. Los músicos y danzantes la interpretan como si '
            'fuera una obligación social por medio de narraciones, ritmos y '
            'evocaciones simbólicas de la fauna, flora y cosmogonía tradicional.',
          ),
          image(
            'Instrumentos de música y danza',
            'instrumentos_musica_danza.jpg',
            'Instrumentos de música y danza. Museo Étnico de los Yaquis. Sala '
                'de danza y música. Fotógrafo Juan Casanova.',
          ),
          paragraph(
            'El concepto «música» no existe o tiene un término equivalente '
            'en lengua yaqui, sin embargo, en ella hay palabras específicas '
            'como buika o «canto»; buicame para la acción de «cantar»; '
            'arabuica al referirse al «cantor»; ieic para «bailar», y iiria '
            'o yiria que significa «bailar para otro». El término música '
            'como tal, solo se pronuncia y aplica (en español) cuando se '
            'asocia esta actividad a la alegría de las fiestas y danzas del '
            'tiempo pascual, más no con la contrición y penitencia de las '
            'ceremonias del tiempo cuaresmal. En este tiempo se prohíbe la '
            '«música», dando sentido únicamente al «canto litúrgico», el toque '
            'de flauta y el ritmo de marcha procesional[[1]].',
          ),
          paragraph(
            'Para realizar gran parte de las músicas que acompañan a las '
            'danzas es necesario referirse a la huella dejada por los '
            'instrumentos musicales que aportaron los jesuitas. Algunos '
            'desaparecieron, otros se integraron y evolucionaron como '
            'instrumentos de banda en la población mestiza, mientras que '
            'algunos más, sobre todo los cordófonos ­violín, guitarra y arpa­, '
            'forman parte del acervo musical contemporáneo. Paralelamente, '
            'los jesuitas no solo heredaron instrumentos musicales, sino '
            'también géneros de canto interpretados en ceremonias religiosas '
            'como los himnos, responsos, misas y cantos antifonales, estos '
            'últimos son entonados por las cantoras de forma gregoriana con '
            'partes en latín, yaqui y español[[2]].',
          ),
          image(
            'Arpa',
            'arpa.jpg',
            'Arpa. Museo Étnico de los Yaquis. Sala Danza y música. Fotógrafo: '
                'Juan Casanova.',
          ),
          const _SectionHeading('Mito del origen de la música'),
          paragraph(
            'Dios fue al monte y trajo una vara gruesa y la hincó en la tierra '
            'y le dijo al hombre: «Esta es el arpa»; luego fue y trajo unos '
            'palitos, los cruzó y le dijo: «Muévanlos en sentido contrario a '
            'la raspada de los jirukiam, como cruz, y tendrán violines», por '
            'último fue y trajo una raíz de álamo y se la dio al hombre y le '
            'dijo: «Ráspele, que es la guitarra».',
          ),
          paragraph(
            'El hombre se fijó, pero no tenía mucha fe. Quiso tocar la vara '
            'que era el arpa, los palitos que eran el violín, la raíz del '
            'álamo, que era la guitarra, pero no salió sonido.',
          ),
          paragraph(
            'Dios se molestó un poco, pero como les tenía mucha paciencia '
            'sólo les reclamó «¿Cómo van a tocar si no tienen la creencia?». '
            'Luego fue al monte y se trajo consigo animales, estaban las '
            'maliam, los wikos y la iguana. El hombre estaba absorto de ver '
            'cómo los animalitos tocaban lo que él no podía, y se puso muy '
            'triste. Entonces la lechuza le dijo: «Necesitas reconciliarte '
            'con Dios; fúmate un cigarro macuche». El hombre fumó un cigarro '
            'de macuche y luego se percató de que la brasa del cigarro era '
            'una luz que lo comunicaba con las almas. Así entendió y creyó; '
            'tuvo fe.',
          ),
          paragraph(
            'Fue el hombre con los animales del monte y éstos ya no quisieron '
            'soltar los instrumentos, pues la música y el oficio de músicos '
            'les gustaron. Los hombres fueron con el jitébi o «curandero» para '
            'pedir un consejo, pero él no pudo hacer nada. Desde entonces la '
            'creencia es que para poder convertirse en músico es necesario '
            'ser poseído por el espíritu del animal que aprendió de Dios a '
            'tocarlo.',
          ),
          const _SectionHeading('Las ramadas'),
          image(
            'Ramada',
            'ramada.jpg',
            'Ramada. Museo Étnico de los Yaquis. Área de servicios. Fotógrafo: '
                'Juan Casanova',
          ),
          paragraph(
            'Estos espacios ancestrales y sagrados son erigidos con una base '
            'de horcones de mezquite y cubiertos por carrizo. Se construyen '
            'en el tebat «patio comunal o familiar» para funciones de carácter '
            'sociopolítico y festivo-religioso. Este espacio se convierte en '
            'sagrado durante el tiempo que dure el evento para el que fue '
            'levantado, que por lo general es entre uno y tres días. En su '
            'interior se instalan las imágenes de Cristo y la Virgen, '
            'acompañados por la danza de Venado y las bromas de los '
            'Pascolas[[3]]. El danzante de Venado normalmente es solo uno, '
            'mientras que los Pascolas son entre tres y seis[[4]]. Estas '
            'estructuras también son conocidas como guardias, y son otro de '
            'los elementos prehispánicos que fueron adaptados a la estructura '
            'religiosa durante la evangelización[[5]].',
          ),
          const _SectionHeading('Danza del venado'),
          const _SectionHeading('Mito de origen'),
          paragraph(
            '«Hace no sé cuántos años, se cuenta que en una ocasión en que se '
            'encontraban[sic] de cacería dos hombres yaquis, por el rumbo del '
            'Kópas «Bosque exuberante», que se encuentra entre el Río Yaqui y '
            'el Pueblo de Wíribis, éstos avistaron un enorme venado muy bonito '
            'el cual, al sentirlos, emprendió la huida a veloz carrera, '
            'perdiéndoseles de vista entre el monte.\n\n'
            'Los cazadores se hicieron el propósito de atraparlo, por lo cual '
            'anduvieron siguiéndole la huella durante todo el día, hasta que '
            'llegó la noche. Así pues, acamparon y prendieron una fogata, '
            'preparándose enseguida a tomar sus alimentos, a la vez que '
            'calentaban sus cuerpos para disponerse a dormir. Al otro día, '
            'muy temprano, prosiguieron la búsqueda entre el inmenso bosque '
            'de mezquites, resultando en vano sus esfuerzos por encontrarlo.\n\n'
            'Volvieron al día siguiente, reanudando con más ganas la '
            'persecución, y cuando ya el cansancio y la tristeza los invadía, '
            'no lejos de ahí escucharon unos ruidos detrás de unos matorrales, '
            'lo que les llamó la atención, se acercaron con cautela para ver '
            'de qué se trataban tales ruidos, y grande fue su alegría al '
            'observar al gran venado que ellos perseguían, pero enseguida se '
            'dieron cuenta que éste se encontraba en el centro de otros tantos '
            'venados, ejecutando una serie de movimientos, como si estuvieran '
            'bailando; pensaron que no debían matarlo y se marcharon enseguida '
            'hacia su pueblo.\n\n'
            'Al llegar a su lugar de origen, contaron lo que habían visto. Al '
            'hacer la explicación empezaron luego a imitar los movimientos '
            'realizados por el venado. Para hacerlo más narrativo uno de ellos '
            'puso sobre su cabeza, la cabeza disecada de un venado y empezó a '
            'danzar. Esta cabeza estaba completa, es decir con todo y cuero '
            'desde la cabeza lomo, (así se usó en el principio). Luego les '
            'fue adaptada la música y los cantos, con instrumentos hechos por '
            'ellos mismos» (relatado por Santos García Wikit).',
            quote: true,
          ),
          const _SectionHeading('Actualidad'),
          paragraph(
            'Se le considera la danza más importante y emblemática de la '
            'tribu, gran parte de ello se debe a que su simbolismo y '
            'representación han pasado sin modificación alguna desde épocas '
            'prehispánicas. En lengua yaqui se dice Maaso Yiijua. Los '
            'movimientos del danzante describen la vida y muerte de este '
            'animal sagrado, pasando por todos los momentos de su ciclo vital; '
            'durante la danza vemos las actitudes de sorpresa, alerta, atisbo, '
            'exploración y todo cuanto el venado hace ante la naturaleza que '
            'lo rodea.',
          ),
          paragraph(
            'Los cánticos que acompañan la danza también están vinculados a '
            'la naturaleza y su esencia sagrada; en ellos se menciona a '
            'malichi o «venadito de flores», un ser mítico relacionado a la '
            'ramada y razón por lo cual los danzantes de Venado y Pascola '
            'llevan flores en su atuendo[[6]]. Los cantos según el mito, '
            'fueron herencia de los antiguos Surem, los primeros pobladores, '
            'por respeto a ello los maso bwikame o «cantadores de venado» '
            'cantan únicamente en idioma yaqui y nunca en español, '
            'acompañados por sus instrumentos el tambor de agua y los '
            'jirukiam «raspadores».',
          ),
          paragraph(
            'Para dar dimensión a la importancia de la danza y su ejecutante, '
            'se dice del hombre-venado, no «que danza como venado», ni que '
            '«imita al venado», sino que se convierte en el venado[[7]]. '
            'Actualmente, se están realizando las gestiones e investigaciones '
            'necesarias por parte de instituciones públicas nacionales e '
            'internacionales para incluir a la danza de Venado como patrimonio '
            'cultural en las listas de la UNESCO; sin embargo, no se ha llegado '
            'a un acuerdo con la tribu, ya que no se tiene certeza de que tal '
            'nombramiento pueda ofrecer beneficios sociales a las comunidades, '
            'sino todo lo contrario, al pretender utilizar a la danza como '
            'aprovechamiento económico-turístico sin la consideración y respeto '
            'que ella merece.',
          ),
          const _SectionHeading('Indumentaria'),
          paragraph(
            'Máaso o «Cabeza de Venado»: Al colocarse ésta, hay una fusión '
            'hombre-animal. La cabeza del venado debe contener ocho astas '
            'haciendo alusión al número de pueblos yaquis.',
          ),
          paragraph(
            'Adornos de Listón Rojo sobre Cabeza de Venado: representan las '
            'flores del campo.',
          ),
          paragraph('Kúsim o «Rosario»: representa la religión y la '
              'espiritualidad yaqui.'),
          paragraph(
            'Jíniam o Rebozo: representa la piel del animal la cual se usaba '
            'ancestralmente, pero con el tiempo y por escasez del animal, se '
            'opta por sustituirla con un rebozo.',
          ),
          paragraph(
            'Riju’utiam o «Cinturón de Pezuñas»: representa el crujir de las '
            'ramas al paso del venado en su hábitat.',
          ),
          paragraph(
            'Téneboim o «Tenábaris»: son parte del atuendo en las danzas de '
            'Pascola y Venado. Los Pascolas los enredan hasta la rodilla y el '
            'Venado, sólo en los tobillos. Representan la destreza y agilidad '
            'de las patas del animal, al pretender escapar del ataque de la '
            'serpiente cascabel. Están elaborados por capullos secos de '
            'mariposa cuatro espejos, y en el interior contiene algunas piedras '
            'pequeñas para producir el sonido. Puede tener en sus extremos dos '
            'borlas de algodón roja y/o azul, representando el balance del '
            'bien y el mal durante el ceremonial de danza.',
          ),
          paragraph(
              'Ayam o «Sonajas»: representan el estado de alerta del animal.'),
          const _SectionHeading('Instrumentos musicales para esta danza'),
          paragraph(
            'Ba’a jiponia o «Tambor de agua»: representa los latidos del '
            'animal. Este instrumento constituye la base rítmica de la danza '
            'del Venado. La simbología del agua como deidad fertilizadora de '
            'la madre tierra y la jícara como el recipiente por excelencia '
            'para el agua, único compañero de viaje del espíritu en su camino '
            'hacia el padre después de esta vida.',
          ),
          paragraph(
            'Jírukiam o «Raspadores de Palo de Brasil»:  interpretar estos '
            'instrumentos se escenifica el respiro del venado.',
          ),
          image(
            'Danza del venado',
            'danza_del_venado.jpg',
            'Danzante de venado. Museo Étnico de los Yaquis. Sala Danza y '
                'música. Fotógrafo: Juan Casanova.',
          ),
          image(
            'Cabeza de venado',
            'cabeza_venado.jpg',
            'Cabeza de venado. Tambor de agua. Museo Étnico de los Yaquis. '
                'Sala Danza y música. Fotógrafo: Felipe López',
          ),
          image(
            'Sonaja de venado',
            'sonaja_venado.jpg',
            'Sonajas de venado. Museo Étnico de los Yaquis. Sala Danza y '
                'música. Fotógrafo: Juan Casanova',
          ),
          image(
            'Cinturón de venado',
            'cinturon_venado.jpg',
            'Cinturón de venado. Museo Étnico de los Yaquis. Sala Danza y '
                'música. Fotógrafo: Juan Casanova.',
          ),
          image(
            'Tenábaris de venado',
            'tenabaris_venado.jpg',
            'Tenábaris de venado. Museo Étnico de los Yaquis. Sala Danza y '
                'música. Fotógrafo: Juan Casanova.',
          ),
          image(
            'Tambor de agua',
            'tambor_de_agua.jpg',
            'Tambor de agua. Museo Étnico de los Yaquis. Sala Danza y música. '
                'Fotógrafo: Juan Casanova',
          ),
          const _SectionHeading('Danza de Pascola'),
          paragraph(
            'De origen prehispánico, esta danza desde sus inicios contribuía '
            'en marcar los ciclos temporales y espaciales de sequía y lluvias, '
            'así como garantizar al grupo continuidad y persistencia '
            'física[[8]]. El significado del vocablo proviene de la palabra '
            'compuesta pajko´ola o «viejo de la fiesta o el que siempre está '
            'danzando en las fiestas». Para ser un Pascola, la persona '
            'descubrirá su vocación en sueños con chivos, serpientes y pequeños '
            'animales del desierto[[9]].',
          ),
          paragraph(
            'Sus principales componentes son la música, el texto y la '
            'representación, estos tres se condensan para dar vida a un '
            'momento de entretenimiento y reflexión, con dualidad sagrada y '
            'profana a la vez, y en cual a todos (ejecutores del baile y '
            'público) se les invita a participar, así no hay una escena de '
            'danzantes dejados a sí mismos y una platea de inermes '
            'espectadores, separados entre sí, sino un único conjunto, en '
            'donde la aprobación y/o desaprobación de las personas que hayan '
            'acudido mantiene constantemente viva la atención y la '
            'participación[[10]]. Un momento de importancia para este ritual '
            'dancístico sucede en el Sábado de Gloria, al final de la Cuaresma, '
            'cuando se expían los pecados y se renace.',
          ),
          paragraph(
            'Esta danza es compartida con la etnia mayo, sin embargo, existen '
            'notables diferencias en indumentaria y en intención de la danza. '
            'Para la tribu Yaqui el simbolismo e intención es paradójico, pues '
            'trata de alejar el mal de los ocho pueblos haciendo alusión al '
            'mismo, es decir, al momento de que los Pascolas van gritando '
            'durante la procesión con la imagen de santos, ellos tratan con '
            'sus gritos de llamar al maligno porque sienten que los ha '
            'abandonado a causa de las plegarias católicas.',
          ),
          paragraph(
            'Durante la realización de la danza, los Pascolas representan los '
            'movimientos de los animales del mundo del Juya ánia, entre los '
            'que destacan; el macho cabrío, la lagartija, el camaleón, y el '
            'sapo. Para que una fiesta religiosa sea considerada como tal, '
            'es necesario contar con la participación de los Pascolas, pues '
            'ellos son los anfitriones de la celebración.',
          ),
          image(
            'Danzante de Pascola',
            'danzante_pascola.jpg',
            'Danzante de Pascola. Museo Étnico de los Yaquis. Sala Danza y '
                'música. Fotógrafo: Juan Casanova',
          ),
          const _SectionHeading('Indumentaria'),
          paragraph(
            'Pájko’ola Majka o «Máscara Pascola»: la máscara ya puesta para '
            'la danza, simboliza al macho cabrío, conocido como yoem chupia '
            '(hombre hechizado o embrujado).',
          ),
          paragraph(
            'Teneboim o» Tenábaris»: son hechos con capullos de mariposa '
            'cuatro espejos. A diferencia del simbolismo en el danzante de '
            'Venado, los tenábaris o «víboras de cascabel», en el Pascola son '
            'elementos de apoyo para la representación del mal, equilibrándose '
            'con el Venado quien representa al bien.',
          ),
          paragraph(
            'Jo’oporosim o «Collar»: el porte de los cinco misterios de la '
            'religión y su presencia con Dios. Representa el sincretismo de '
            'las dos culturas, y en las puntas del collar hechas con concha '
            'nácar se simula una cruz.',
          ),
          paragraph(
            'Pi’isam o «Cobija»: representa la piel del macho cabrío la cual '
            'se usaba ancestralmente, pero con el tiempo se adoptó este '
            'accesorio.',
          ),
          paragraph('Jisumaim o «Fajas de hilo»: representa las víboras del '
              'hábitat del animal.'),
          paragraph(
            'Koyóolim o «Coyolis»: elaborado con ocho cascabeles de bronce '
            'que representan a los pueblos Yaquis; dos de ellos de mayor '
            'tamaño simbolizando las cabeceras principales que son Vícam y '
            'Pótam.',
          ),
          paragraph(
              'Senáasom o «Senazo»: sirve para ahuyentar los malos espíritus.'),
          image(
            'Máscara de pascola',
            'mascara_pascola.jpg',
            'Máscara de pascola. Museo Étnico de los Yaquis. Sala Danza y '
                'música. Fotógrafo: Juan Casanova',
          ),
          image(
            'Flauta de Pascola',
            'flauta_pascola.jpg',
            'Flauta de Pascola. Museo Étnico de los Yaquis. Sala Danza y '
                'música. Fotógrafo: Juan Casanova',
          ),
          image(
            'Coyolis',
            'coyolis.jpg',
            'Coyolis. Museo Étnico de los Yaquis. Sala Danza y música. '
                'Fotógrafo: Juan Casanova.',
          ),
          image(
            'Senazo',
            'senazo.jpg',
            'Senazo. Museo Étnico de los Yaquis. Sala Danza y música. '
                'Fotógrafo: Juan Casanova.',
          ),
          const _SectionHeading('Danza del Matachín'),
          image(
            'Danzante de Matachín',
            'danzante_de_matachin.jpg',
            'Danzante de Matachín. Museo Étnico de los Yaquis. Sala Danza y '
                'música. Fotógrafo: Olavo Rojas.',
          ),
          paragraph(
            'La danza del Matachín fue incorporada por los misioneros Jesuitas '
            'durante la etapa de evangelización, de ello da perfectamente '
            'cuenta su mote: «soldados de la Virgen». Al representar a la '
            'tropa o el ejército, siempre acompañan a San José patriarca y la '
            'Virgen de la Purísima. Se presentan en las fiestas patronales; '
            'durante la Semana Santa; en los rituales de elevación de estatus, '
            'católicos, y de la ritualidad funeraria. Lo anterior se debe a '
            'que la danza es interpretada como una oración[[11]].',
          ),
          paragraph(
            'Para ser Matachín, la persona descubrirá su don a través de '
            'sueños tranquilizadores de tipo cristiano o por el mecanismo de '
            '«la manda»[[12]]. Simbólicamente, se encuentra vinculada a la '
            'cultura, organización social y el deseo de supervivencia yaqui, '
            'de ahí que, en la coreografía, su expresión y movimientos '
            'corporales simbolicen fenómenos naturales al rezar con los pasos '
            'de sus pies. Su vestimenta y adornos significan la flor de la '
            'vida y alegría[[13]].',
          ),
          const _SectionHeading('Indumentaria'),
          paragraph(
            'El vestuario del matachín es ropa blanca, cuello, mascada, collar, '
            'huarache, paño con listón, palma y sonaja; además llevan una '
            'falda o enagua. La ropa blanca funciona como uniforme, el cuello '
            'es una blusa que está hecha con manta blanca y va adornada con '
            'flores bordadas de diferentes colores.',
          ),
          const _SectionHeading('Accesorios'),
          paragraph(
            'Corona de Matachín / Matachín Kóna: se hace de carrizo en forma '
            'de cono, en la cual llevan ocho ruedas de cartón adornado con '
            'flores de colores y en la parte superior llevan racimos de '
            'tiritas de papel brilloso de diversos colores que llegan a la '
            'altura de los ojos del danzante, cuando se usa representa la '
            'corona de la Virgen.',
          ),
          paragraph(
            'Jopórosim o «Collar»: es hecho de bolitas o soguillas de '
            'diferentes colores el cual va alrededor del cuello, simboliza '
            'la integración de los ocho pueblos.',
          ),
          paragraph(
            'Mascadas: son tres, dos se ponen de forma de cruz sobre el pecho '
            'entre el cuello y el collar, significan la bendición de Dios, '
            'la otra va amarrada alrededor de la cintura y significa la unión '
            'del bien con el mal, estas mascadas pueden ser de diferentes '
            'colores.',
          ),
          paragraph(
            'Huaraches: son de vaqueta y se amoldan a la figura de la parte '
            'plana del pie, llevan tres agujeros para las correas.',
          ),
          paragraph(
            'Palma: instrumento en forma de cruz que hace referencia a los '
            'cinco misterios del rosario católico y que se utiliza para '
            'bendecir mediante la señal de la cruz el lugar donde se ejecuta '
            'la danza.',
          ),
          paragraph(
            'Ayam o «Sonaja»: simboliza la alegría del encuentro del danzante '
            'con la Virgen.',
          ),
          image(
            'Sonaja de Matachín',
            'sonaja_de_matachin.jpg',
            'Sonaja de Matachín. Museo Étnico de los Yaquis. Sala Danza y '
                'música. Fotógrafo: Olavo Rojas.',
          ),
          image(
            'Palma de Matachín',
            'palma_De_Matachin.jpg',
            'Palma de Matachín. Museo Étnico de los Yaquis. Sala Danza y '
                'música. Fotógrafo: Olavo Rojas.',
          ),
          const _SectionHeading('Danza de coyote'),
          paragraph(
            'Se trata de una danza ancestral de origen prehispánico y carácter '
            'guerrero-territorial que se relaciona a la defensa de la Toosa. '
            'Los guerreros la ejecutaban para darse valor y coraje antes de '
            'enfrentar una guerra o batalla. Actualmente se realiza en honor '
            'a: los guerreros muertos en combate; cuando muere una persona '
            'que en vida haya tenido un cargo como autoridad tradicional, '
            'gobernador, pueblo mayor, pueblo basario; y en las fiestas de '
            'cabo de año dedicadas a los anteriores. La única fecha invariable '
            'para realizar esta danza es el día seis de enero cuando se da el '
            'cambio de autoridades en cada pueblo.',
          ),
          paragraph(
            'Normalmente la interpretan cuatro personas: tres danzantes con '
            'el atavío tradicional y un «tambulero» conocido como go´i '
            'bwikkleo y/o go´i maesto, quien se llama así porque al mismo '
            'tiempo  que toca el tambor también entona en lengua yaqui cantos '
            'alusivos a la vida belicosa del coyote.',
          ),
          paragraph(
            'El atuendo del danzante coyote forma parte de la rica artesanía '
            'ritual que caracteriza la vida ceremonial yaqui. Consiste en una '
            'piel disecada de coyote adornada con plumas de gavilán o de '
            'quelele, que se amarra a la cabeza mediante una cinta de color '
            'vivo, las cuales indican el grado militar del danzante (capitán, '
            'tampaleo, alpes). Cada pluma representa las batallas enfrentadas '
            'y la piel de coyote simboliza la valentía, la astucia, la agilidad '
            'y resistencia del guerrero.',
          ),
          paragraph(
            'Se complementa con un carcaj de piel de gato montés conocido '
            'como ju´iwa tooria; un arco de madera de kungo y flechas de '
            'carrizo con las puntas de flecha de una madera más dura. El '
            'carcaj lo porta en el hombro y el arco lo usa a modo de caballo '
            'mientras con un carrizo ancho, y rajado en varias tiras delgadas '
            'como un fuste, mueve a modo de sonaja sobre el arco, al tiempo '
            'que imita con su danza los movimientos del coyote. La voz rítmica '
            'del «tambulero» marca los tiempos, y el dinamismo de la '
            'tradicional danza de los coyotes.',
          ),
          const _SectionHeading('Indumentaria'),
          image(
            'Danzante de Coyote',
            'danzante_de_coyote.jpg',
            'Danzante de Coyote. Museo Étnico de los Yaquis. Sala Danza y '
                'música. Fotógrafo: Olavo Rojas',
          ),
          paragraph(
            'Gói Chomo o «Penacho de coyote» con plumas de quelele (ave '
            'sonorense): representa al animal y las características que se '
            'adoptan de él, como lo son la astucia, la agilidad, la resistencia '
            'y la bravura.',
          ),
          paragraph(
            'Kuta Wiko’i Intok Baka Ju´iwam o «Arcos y Flechas»: representan '
            'los instrumentos de guerra y protección.',
          ),
          paragraph('Kúbaji o»Tambor»: significa el llamado a la guerra o '
              'celebración de triunfo.'),
          paragraph('Bwíkam o «Cantos»: son dedicados a las plantas y animales '
              'como el coyote, tecolote y zopilote.'),
          image(
            'Alijaba',
            'alijaba.jpg',
            'Alijaba. Museo Étnico de los Yaquis. Sala Danza y música. '
                'Fotógrafo: Olavo Rojas.',
          ),
          image(
            'Arco',
            'arco.jpg',
            'Arco. Museo Étnico de los Yaquis. Sala Danza y música. Fotógrafo: '
                'Juan Casanova',
          ),
          image(
            'Flechas',
            'flechas.jpg',
            'Flechas. Museo Étnico de los Yaquis. Sala Danza y música. '
                'Fotógrafo: Juan Casanova',
          ),
          const _SectionHeading('Chapayecas o fariseos'),
          paragraph(
            'Esta no es una danza como tal, sin embargo, parte del ritual que '
            'realizan durante la Cuaresma está centrado en una marcha rítmica, '
            'acompasada por el toque pausado del tambor; ellos asumen el papel '
            'de judíos y soldados romanos que van en búsqueda de Jesucristo. '
            'Es un grupo numeroso y está integrado por personas de la comunidad '
            'que se encuentran pagando una manda. Ellos hacen voto de silencio, '
            'por lo que para evitar emitir sonido alguno siempre traen el '
            'crucifijo de un rosario en la boca durante toda la temporada de '
            'Cuaresma, para comunicarse y marcar el ritmo durante su marcha '
            'utilizan el golpeteo de la espada contra el cuchillo que portan.',
          ),
          paragraph(
            'Se les considera un ejército débil porque sus armas son de madera, '
            'como de juguete, y no pueden usar la mano derecha, como castigo '
            'tienen que hacer todo con la mano izquierda, hasta tocar el '
            'violín y el arpa. Por eso en la mañana del Sábado de Gloria los '
            'chapayecas con gran júbilo arrojan a la hoguera de Judas sus '
            'accesorios porque nuevamente vuelven a ser humanos[[14]].',
          ),
          paragraph(
            'Todo su atuendo y accesorios asumen un carácter maligno; máscaras, '
            'cuchillos y espadas tienen una parte roja para hacer alusión a '
            'la sangre vertida por Jesucristo y la maldad de sus verdugos[[15]]. '
            'Ser chapayeka implica asumir un cargo que marca a la persona '
            'hasta su muerte y que incluso la trasciende; por ello, si deja '
            'registro de su atuendo o de los diversos elementos simbólicos '
            'que lo acompañaron durante su cargo (incluyendo restos del '
            'material de fabricación), estaría condenado a penar como '
            'chapayeca por toda la eternidad[[16]].',
          ),
          image(
            'Procesión de Chapayecas',
            'procesion_de_chapayecas.jpg',
            'Procesión de Chapayecas. Autor: Ted de Grazia',
          ),
          image(
            'Flauta de Chapayecas',
            'flauta_de_chapayecas.jpg',
            'Flauta de Chapayecas. Autor: Olavo Rojas',
          ),
          image(
            'Cuchillo o manita de chapayeca',
            'cuchillo_chapayeca.jpg',
            'Cuchillo o manita de chapayeca. Museo Étnico de los Yaquis. Sala '
                'de fiestas tradicionales. Fotógrafo: Juan Casanova',
          ),
          image(
            'Espada de chapayeca',
            'espada_chapayeca.jpg',
            'Espada de chapayeca. Museo Étnico de los Yaquis. Sala de fiestas '
                'tradicionales. Fotógrafo: Juan Casanova',
          ),
          const _SectionHeading('Referencias'),
          for (var i = 0; i < _references.length; i++)
            _DanzaReferenceItem(number: i + 1, reference: _references[i]),
          const _SectionHeading('Créditos'),
          paragraph('Diseño y dirección general del proyecto. Mirko Marzadro '
              '(ITESCA)'),
          paragraph('Dirección ejecutiva del proyecto, diseño y desarrollo '
              'de software. Olavo Rojas Vega (Redescubramos Sonora A.C.)'),
          paragraph('Catalogación. Felipe López Valentín (Redescubramos Sonora '
              'A.C.)'),
          const _SectionHeading('Investigación, curaduría y redacción'),
          paragraph('Teodoro Buitimea Flores'),
          paragraph('José María Ruiz Félix'),
          paragraph('Mirko Marzadro'),
          paragraph('Felipe López Valentín'),
          const _SectionHeading('Imágenes'),
          paragraph('Museo Étnico de los Yaquis'),
          paragraph('Archivo General del Estado de Sonora'),
          paragraph('Mapoteca Manuel Orozco y Berra'),
          const _SectionHeading('Fotografía'),
          paragraph('Juan Casanova'),
          paragraph('Olavo Rojas Vega'),
          const _SectionHeading('Diseño web'),
          paragraph('Olavo Rojas Vega'),
          const _SectionHeading('Agradecimientos'),
          paragraph('Directora General del Instituto Sonorense de Cultura.  '
              'Guadalupe Beatriz Aldaco Encinas'),
          paragraph('Coordinador de Patrimonio Cultural del Estado de Sonora. '
              'Francisco Ramírez Arroyo'),
          paragraph('Responsable del Museo Étnico de los Yaquis. Reyna Lourdes '
              'Anguamea Buitimea'),
          paragraph('Directora General del Instituto Tecnológico Superior de '
              'Cajeme. Martha Patricia Patiño Fierro'),
        ],
      ),
    );
  }
}

class _DanzaReference {
  const _DanzaReference(this.text, [this.url]);

  final String text;
  final String? url;
}

class _DanzaReferenceItem extends StatelessWidget {
  const _DanzaReferenceItem({required this.number, required this.reference});

  final int number;
  final _DanzaReference reference;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final linkStyle = theme.textTheme.bodyMedium?.copyWith(
      color: theme.colorScheme.primary,
      decoration: TextDecoration.underline,
      height: 1.45,
    );
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('$number. ${reference.text}', style: theme.textTheme.bodyMedium),
          if (reference.url != null) ...[
            const SizedBox(height: 4),
            InkWell(
              onTap: () => _openUrl(context, reference.url!),
              child: Text(
                'Recuperado de ${reference.url}',
                style: linkStyle,
              ),
            ),
          ],
        ],
      ),
    );
  }
}

class _DanzaNarrativeParagraph extends StatelessWidget {
  const _DanzaNarrativeParagraph({required this.text, this.isQuote = false});

  final String text;
  final bool isQuote;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final style = theme.textTheme.bodyLarge?.copyWith(
      height: 1.55,
      fontStyle: isQuote ? FontStyle.italic : FontStyle.normal,
    );
    final spans = <InlineSpan>[];
    final citationPattern = RegExp(r'\[\[(\d+)\]\]');
    var offset = 0;
    for (final match in citationPattern.allMatches(text)) {
      if (match.start > offset) {
        spans.add(TextSpan(text: text.substring(offset, match.start)));
      }
      spans.add(
        WidgetSpan(
          alignment: PlaceholderAlignment.baseline,
          baseline: TextBaseline.alphabetic,
          child: _DanzaCitationLink(number: int.parse(match[1]!)),
        ),
      );
      offset = match.end;
    }
    if (offset < text.length) {
      spans.add(TextSpan(text: text.substring(offset)));
    }

    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: Text.rich(TextSpan(children: spans), style: style),
    );
  }
}

class _DanzaCitationLink extends StatelessWidget {
  const _DanzaCitationLink({required this.number});

  final int number;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _openUrl(context, DanzaMusicaPage._referencesUrl),
      child: Text(
        '[$number]',
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: Theme.of(context).colorScheme.primary,
              decoration: TextDecoration.underline,
            ),
      ),
    );
  }
}

class ReligiosidadPage extends StatelessWidget {
  const ReligiosidadPage({super.key});

  static const _referencesUrl =
      'https://redescubramossonora.mx/museodelosyaquis/religiosidad/'
      '#religiosidad-referencias';

  static const _references = <String>[
    'Bejarano Almada, Ma. de Lourdes. (2016). Las Bulas Alejandrinas: '
        'detonantes de la evangelización en el Nuevo Mundo En Revista de El '
        'Colegio de San Luis, 6(12). p. 238.',
    'Rincón Castellano (s.f.). Bulas de donación del papa Alejandro VI a los '
        'Reyes Católicos.',
    'Olavarría, María Eugenia. (1995). Creatividad y sincretismo en un ritual '
        'yaqui En Alteridades, Vol. 5 (9). p.72 -74.',
    'ibid., p. 26',
    'Mesri Hashemi-Dilmaghani, Parastoo Anita; Carlón Flores, María Anabela. '
        '(2019). La organización político-social de la tribu yoeme (yaqui). '
        '1ª ed. Ciudad de México: Tribunal Electoral del Poder Judicial de la '
        'Federación. p. 41.',
    'Abbondanza, Ermanno. (2009). Los “otros” entre “nosotros”: el proceso de '
        'a-normalización de los yaquis en el México porfiriano (1890- 1909). '
        'p. 314.',
    'Valdez Muñoz, Talía. (2018). Construcciones y reconstrucciones en la '
        'sexualidad de los mayos y yaquis (1535-1767) [Tesis doctoral]. '
        'Universitat Autònoma de Barcelona. p. 151.',
    'Olavarría, María Eugenia. op. cit., p. 72',
    'Castro Silva, Tonatiuh. (2011). Etnias de Sonora. Sonora: Instituto '
        'Sonorense de Cultura.',
    'Mesri Hashemi-Dilmaghani, Parastoo Anita; Carlón Flores, María Anabela. '
        'op. cit., p. 8',
    'Valdez Muñoz, Talía. op. cit., p. 149',
    'Olavarría, María Eugenia. op. cit., p. 74',
    'Valdez Muñoz, Talía. (2018). Construcciones y reconstrucciones en la '
        'sexualidad de los mayos y yaquis (1535-1767) [Tesis doctoral]. '
        'Universitat Autònoma de Barcelona. p. 152.',
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Religiosidad')),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(20, 24, 20, 40),
        children: [
          Text(
            'Exposición',
            style: theme.textTheme.labelLarge?.copyWith(
              color: theme.colorScheme.primary,
              letterSpacing: 1.2,
            ),
          ),
          const SizedBox(height: 4),
          Text('Religiosidad', style: theme.textTheme.headlineMedium),
          const SizedBox(height: 16),
          _NarrativeParagraph(
            children: [
              const TextSpan(
                text: 'De acuerdo a documentación histórica procedente de '
                    'inicios de la etapa colonial, la monarquía española '
                    'únicamente concebía la unidad social por medio de la '
                    'religión católica, por lo que los Reyes Fernando II de '
                    'Aragón e Isabel I de Castilla no podían iniciar la '
                    'colonización sin autorización del Papa Alejandro VI, '
                    'quien, en 1493, les otorgó mediante las «Bulas '
                    'Alejandrinas» el derecho de conquistar América con la '
                    'condición convertir a todos los pobladores al catolicismo',
              ),
              _citation(1),
              const TextSpan(text: '.'),
            ],
          ),
          const _ExhibitionImage(
            figure: _ExhibitionFigure(
              title: 'Corografía',
              asset: 'assets/exposiciones/religiosidad/corografia_jesusita.jpg',
              caption: '',
            ),
          ),
          _NarrativeParagraph(
            children: [
              const TextSpan(
                text: '«Y además os mandamos en virtud de santa obediencia '
                    'que, haciendo todas las debidas diligencias del caso, '
                    'destinaréis a dichas tierras e islas varones probos y '
                    'temerosos de Dios, peritos y expertos para instruir en '
                    'la fe católica e imbuir en las buenas costumbres a sus '
                    'pobladores y habitantes, lo cual nos auguramos y no '
                    'dudamos que haréis a causa de vuestra máxima devoción y '
                    'de vuestra regia magnanimidad»',
              ),
              _citation(2),
              const TextSpan(text: '.'),
            ],
          ),
          _NarrativeParagraph(
            children: [
              const TextSpan(
                text: 'Como se explica en la exposición Cosmovisión, la '
                    'religiosidad de la tribu en la etapa prehispánica estuvo '
                    '(y sigue estando) fuertemente ligada al respeto y '
                    'veneración de los mundos natural y espiritual, así como '
                    'aspecto fundamental para el sistema socio-político; por '
                    'tal motivo, los evangelizadores jesuitas, para cumplir '
                    'con el mandato de la corona española, buscaron minimizar '
                    'las confrontaciones entre lo “pagano” y cristiano. La '
                    'conversión del pueblo yaqui al catolicismo significó que '
                    'al antiguo sistema religioso se le asociara con otro '
                    'sistema de creencias y prácticas. El ejemplo es la '
                    'correspondencia entre la Virgen María con Itom Aye '
                    '«Nuestra Madre» que se le relacionó con la luna, y a '
                    'Jesucristo con Itom achai «Nuestro Padre»',
              ),
              _citation(3),
              const TextSpan(text: '.'),
            ],
          ),
          const _ExhibitionImage(
            figure: _ExhibitionFigure(
              title: 'De camino al árbol sagrado',
              asset:
                  'assets/exposiciones/religiosidad/camino_arbol_sagrado.jpg',
              caption: 'Las deidades anteriores a la colonización española '
                  'pertenecían a la naturaleza, en la imagen se aprecia la '
                  'gran marcha de los antiguos Surem -ancestros yaquis- hacía '
                  'el gran árbol parlante. Autor: Julio Hernández Correa. '
                  'Museo Étnico de los Yaquis. Sala Cosmovisión. Fotógrafo: '
                  'Juan Casanova.',
            ),
          ),
          const _ExhibitionImage(
            figure: _ExhibitionFigure(
              title: 'Bandera yaqui',
              asset: 'assets/exposiciones/religiosidad/bandera_yaqui.jpg',
              caption: 'En la bandera yaqui se observan los símbolos de la '
                  'luna -Itom Aye- y el sol -Itom achai-. Museo Étnico de los '
                  'Yaquis. Sala Territorio. Fotógrafo: Juan Casanova.',
            ),
          ),
          const _ExhibitionImage(
            figure: _ExhibitionFigure(
              title: 'Danzante Matachín y soldado Coyote',
              asset: 'assets/exposiciones/religiosidad/danzante_matachin.png',
              caption: 'Danzante Matachín (izquierda) y soldado Coyote '
                  '(derecha). Museo Étnico de los Yaquis. Sala Danza y '
                  'música. Fotógrafo: Juan Casanova',
            ),
          ),
          const _ExhibitionImage(
            figure: _ExhibitionFigure(
              title: 'Los ocho pueblos yaquis y su respectivo santoral',
              asset: 'assets/exposiciones/religiosidad/ocho_pueblos_yaquis.jpg',
              caption: 'Museo Étnico de los Yaquis.',
            ),
          ),
          _NarrativeParagraph(
            children: [
              const TextSpan(
                text: 'Paralelo a las versiones aceptadas o canónicas de la '
                    'religiosidad yaqui posteriores a la evangelización '
                    'tenemos que, existe un mito cosmogónico donde se incluye '
                    'un elemento católico sustancial: Jesucristo. En este mito '
                    'es convertido en un héroe cultural yaqui, un hitebi o '
                    '«curandero» que llegó a la Toosa en el tiempo en que sus '
                    'habitantes ya eran cristianos, y junto con María son '
                    'responsables del origen de las danzas, de Pascola, Venado '
                    'y Coyote, él de su tropa de soldados, y ella de los '
                    'matachines',
              ),
              _citation(4),
              const TextSpan(text: '.'),
            ],
          ),
          _NarrativeParagraph(
            children: [
              const TextSpan(
                text: 'Siguiendo nuevamente la línea de evangelización '
                    'jesuita, posterior al paralelismo entre Jesús y las '
                    'deidades naturales, siguió la asignación de los santos '
                    'patronos. En 1623, en cada comunidad cabecera (o pueblo) '
                    'se le asignaron dos santos, uno para la capilla y otro '
                    'para la guardia en la ramada',
              ),
              _citation(5),
              const TextSpan(
                text: '. Todas esas acciones en su conjunto constituían la '
                    'mejor oportunidad para reafirmar la cohesión y la '
                    'identidad del pueblo. Así, la música y las danzas que ya '
                    'eran practicadas en honor a las deidades naturales, '
                    'ahora eran también una representación del catolicismo, '
                    'por lo que se mantenía la armonía respecto a la '
                    'continuidad de los relatos orales transmitidos desde '
                    'antiguas generaciones a través de los mitos y cuentos',
              ),
              _citation(6),
              const TextSpan(text: '.'),
            ],
          ),
          const _ExhibitionImage(
            figure: _ExhibitionFigure(
              title: 'Iglesia del pueblo de Vícam',
              asset:
                  'assets/exposiciones/religiosidad/iglesia_Pueblo_Vicam.jpg',
              caption: 'Representación de la iglesia del pueblo de Vícam. '
                  'Museo Étnico de los Yaquis. Sala de Fiestas tradicionales. '
                  'Fotógrafo: Juan Casanova.',
            ),
          ),
          _NarrativeParagraph(
            children: [
              const TextSpan(
                text: 'El relato siguiente es sólo uno de muchos ejemplos '
                    'que narran acontecimientos relacionados al reemplazo de '
                    'creencias religiosas por parte de yaquis renuentes a la '
                    'evangelización:\n\nEn una temporada de extrema sequía, '
                    'los indios bautizados acudieron a la ermita dedicada a '
                    'la Virgen, que había sido construida sobre un cerro '
                    'junto al pueblo de Tórim. Los niños llevaron a cabo una '
                    'procesión de sangre, y entre oraciones y ruegos comenzó '
                    'a llover sobre las siembras del pueblo. Lo destacable '
                    'de este suceso es que la lluvia cayó sólo sobre el '
                    'pueblo de Tórim, en donde se estaba celebrando a la '
                    'Virgen, y los indios de otros pueblos donde no había '
                    'llovido, asociaron el hecho con la celebración, entonces '
                    'comenzaron a imitar a los otros, esperando beneficiarse '
                    'también',
              ),
              _citation(7),
              const TextSpan(
                text: '. La nueva devoción a los santos o vírgenes sirvieron '
                    'para desplazar lo que los jesuitas consideraban como '
                    'supersticiones.',
              ),
            ],
          ),
          _NarrativeParagraph(
            children: [
              const TextSpan(
                text: 'Cada festividad a partir de ese momento, conjugaba las '
                    'creencias y prácticas nativas con las católicas. La '
                    'religión yaqui, hasta la actualidad se presenta como un '
                    'sistema complejo que evoca tanto a lo nativo como lo '
                    'católico, pero no el catolicismo de la población mestiza '
                    'contemporánea o del siglo XIX, sino el de la doctrina '
                    'implantada por los jesuitas en los siglos XVII y XVIII',
              ),
              _citation(8),
              const TextSpan(text: '.'),
            ],
          ),
          _NarrativeParagraph(
            children: [
              const TextSpan(
                text: 'Para una mejor comprensión de la complejidad del '
                    'cristianismo yaqui, volvamos hacia las manifestaciones '
                    'religiosas prehispánicas: las danzas. Antiguamente, la '
                    'veneración a las deidades naturales se manifestaba '
                    'mediante la expresión dancística, ejemplo de ello eran '
                    'aquellas que utilizaban las cabezas de algún animal '
                    'muerto, disecado y/o la piel de estos. En estas danzas '
                    'se ejecutaban movimientos, gesticulaciones y sonidos '
                    'característicos de los animales que representaban: '
                    'venados, coyotes, entre otros. La importancia de resaltar '
                    'a esta expresión en particular, es porque la tribu posee '
                    'hasta la actualidad un alto sentido de religiosidad '
                    'impregnado en ellas y las festividades colectivas de las '
                    'que son parte',
              ),
              _citation(9),
              const TextSpan(text: '.'),
            ],
          ),
          _NarrativeParagraph(
            children: [
              const TextSpan(
                text: 'Hoy en día se observa una fuerte inspiración de la '
                    'antigua cosmovisión y ritualidad, que influye no solo en '
                    'los líderes de la iglesia, mismos que se diferencian '
                    'mucho del catolicismo tradicional como en los llamados '
                    'oficios, incluyendo a los maestros rezanderos y las '
                    'kopariam o «rezanderas», sino también con los infaltables '
                    'bufones rituales, los pajko’olam (danzantes de Pascola y '
                    'sus músicos) y su casi eterno acompañante, el danzante '
                    'de Venado; seres venidos del juya ania o «mundo natural»',
              ),
              _citation(10),
              const TextSpan(text: '.'),
            ],
          ),
          _NarrativeParagraph(
            children: [
              const TextSpan(
                text: 'Todas las danzas que se practican actualmente están '
                    'imbuidas por lo nativo y lo católico, la del Venado de '
                    'raíces prehispánicas; el Matachín de origen '
                    'novohispano/católico; y la danza cuyas características '
                    'contienen un mayor sincretismo: el Pascola. Esta danza '
                    'conceptualmente procede de la palabra del español '
                    '«pascua», y de la cahíta Oola, que significa anciano, en '
                    'su conjunto sería el «anciano de la fiesta», la '
                    'característica principal de esta danza es la figura del '
                    'anciano como destacable, ya que antes de ser '
                    'evangelizados, las danzas de los yaquis eran presididas '
                    'por el principal de mayor edad',
              ),
              _citation(11),
              const TextSpan(text: '.'),
            ],
          ),
          _NarrativeParagraph(
            children: [
              const TextSpan(
                text: 'La religiosidad de la tribu sigue en lo general al '
                    'calendario litúrgico católico, donde se distinguen '
                    'claramente dos periodos, la Cuaresma en la cual la figura '
                    'central es Jesucristo y el tiempo regular en el cual '
                    'predomina el culto a la Virgen',
              ),
              _citation(12),
              const TextSpan(text: '.'),
            ],
          ),
          _ResponsiveExhibitionPair(
            figures: const [
              _ExhibitionFigure(
                title: 'Vírgen de la Dolorosa',
                asset:
                    'assets/exposiciones/religiosidad/virgen_de_la_dolorosa.jpg',
                caption: 'Museo Étnico de los Yaquis. Sala de Gobierno. '
                    'Fotógrafo: Juan Casanova.',
              ),
              _ExhibitionFigure(
                title: 'Sagrado Corazón de Jesús',
                asset: 'assets/exposiciones/religiosidad/'
                    'sagrado_corazon_de_jesus.jpg',
                caption: 'Museo Étnico de los Yaquis. Sala de Gobierno. '
                    'Fotógrafo: Juan Casanova',
              ),
            ],
          ),
          const _SectionHeading('Sincretismo de vida y muerte'),
          const _ExhibitionImage(
            figure: _ExhibitionFigure(
              title: 'Vestimenta de luto en la mujer yaqui',
              asset:
                  'assets/exposiciones/religiosidad/vestimenta_luto_yaqui.png',
              caption: 'Museo Étnico de los Yaquis.',
            ),
          ),
          _NarrativeParagraph(
            children: [
              const TextSpan(
                text: 'Otro aspecto que fue aprovechado para permitir el '
                    'proceso de evangelización fueron las prácticas '
                    'mortuorias, antiguamente no se enterraba a los muertos, '
                    'pero se les debía ofrecer alimentos para su transición a '
                    'la nueva vida. Dichos actos permitieron a los '
                    'evangelizadores introducir conceptos como el de alma y '
                    'vida eterna, pero necesitaron de cambios respecto a las '
                    'costumbres anteriores; daban certeza por la creencia de '
                    'otra vida y la inmortalidad del alma. Sin embargo, aún '
                    'se debía instruir acerca del lugar al que iban las almas '
                    'y lo que hacían. Para empezar, los jesuitas en sus '
                    'doctrinas y pláticas persuadieron a los yaquis de que '
                    'las almas no necesitaban alimento corporal, e '
                    'introdujeron además el uso cristiano de enterrar a los '
                    'difuntos en un solo espacio destinado para ello',
              ),
              _citation(13),
              const TextSpan(
                text: '. También enseñaron a rezar por los difuntos mediante '
                    'oraciones en voz alta, normalmente de noche, y convocados '
                    'mediante un toque de campana. Una práctica común era '
                    'llevar a la persona viuda a una casa totalmente cerrada, '
                    'donde era recluida durante ocho días, dentro de los '
                    'cuales eran sometidos a tabús alimentarios, como evitar '
                    'comer carne o pescado, y solamente se le permitía beber '
                    'atole y comer esquite.',
              ),
            ],
          ),
          const _NarrativeParagraph.text(
            text: 'Otra práctica relacionada a la muerte y que permanece hasta '
                'la actualidad es la referente a quien muere en Cuaresma, si '
                'esto sucede, la persona no puede tener las celebraciones '
                'funerarias habituales con música, danzas y alimentos, hasta '
                'que termina la etapa. Sólo entonces puede el alma encontrar '
                'su camino para retornar a la casa del padre viejo. Con la '
                'evangelización el ritual de enterrar al difunto con sus '
                'pertenencias se modificó por el uso de calzarlos con '
                'sandalias nuevas y colocarle al lado una jícara con agua '
                '«para el camino».',
          ),
          const _NarrativeParagraph.text(
            text: 'Una vez que el alma llega al cielo yaqui, puede ser feliz a '
                'lado del padre viejo y todos sus ancestros; para lo cual es '
                'conveniente una fiesta por parte de los vivos para acompañar '
                'al difunto en su alegría. Existe la idea de que el dolor por '
                'la separación de un ser querido jamás debe manifestarse con '
                'llanto, pues esto haría que el espíritu pierda el rumbo con '
                'el riesgo de convertirse en un eterno vagabundo, solitario y '
                'sin rumbo fijo (podría considerarse como el infierno yaqui). '
                'Puntualizando que el gozo o sacrificio de la persona '
                'fallecida en la otra vida, no solo depende de sus méritos '
                'personales cuando estuvo vivo, sino que también afecta la '
                'actitud y exactitud con la que los familiares celebren el '
                'ritual funerario.',
          ),
          const _NarrativeParagraph.text(
            text: 'Finalmente, cabe indicar el equilibrio existente del '
                'universo yaqui, es por ello que, así como tienen un panteón '
                'frente a la iglesia (usualmente al oriente), también existe '
                'otro a la puesta del sol (generalmente a la orilla del '
                'pueblo), el primero como premio y el segundo como castigo. Es '
                'así, que, quien durante el trayecto de su vida respeta sus '
                'mandas, compromisos y tradiciones, es sepultado frente a la '
                'iglesia, pero aquel individuo que no respetó todo lo anterior '
                'habrá de enterrarse en el panteón contiguo a la puesta del '
                'sol.',
          ),
          const _ExhibitionImage(
            figure: _ExhibitionFigure(
              title: 'Funeral Yaqui',
              asset: 'assets/exposiciones/religiosidad/funeral_yaqui.jpg',
              caption: 'Fuente: Archivo General del Estado de Sonora',
            ),
          ),
          const _ExhibitionImage(
            figure: _ExhibitionFigure(
              title: 'Itom téeka "nuestro cielo" / choki ania "mundo de las '
                  'estrellas"',
              asset: 'assets/exposiciones/religiosidad/nuestro_cielo.jpg',
              caption: 'Lugar a donde las almas regresan al morir después de '
                  'la vida en la tierra. Fragmento de mural envolvente '
                  '"Cosmogonía Yaqui". Autor Julio Hernández Correa. Museo '
                  'Étnico de los Yaquis. Sala Cosmovisión. Fotógrafo: Juan '
                  'Casanova',
            ),
          ),
          const _SectionHeading('Referencias'),
          for (var index = 0; index < _references.length; index++)
            Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: Text(
                '${index + 1}. ${_references[index]}',
                style: theme.textTheme.bodyMedium?.copyWith(height: 1.45),
              ),
            ),
        ],
      ),
    );
  }

  static WidgetSpan _citation(int number) {
    return WidgetSpan(
      alignment: PlaceholderAlignment.baseline,
      baseline: TextBaseline.alphabetic,
      child: _ReligiosityCitationLink(number: number),
    );
  }
}

class _ReligiosityCitationLink extends StatelessWidget {
  const _ReligiosityCitationLink({required this.number});

  final int number;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _openUrl(context, ReligiosidadPage._referencesUrl),
      child: Text(
        '[$number]',
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: Theme.of(context).colorScheme.primary,
              decoration: TextDecoration.underline,
            ),
      ),
    );
  }
}

class _ResponsiveExhibitionPair extends StatelessWidget {
  const _ResponsiveExhibitionPair({required this.figures});

  final List<_ExhibitionFigure> figures;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return Column(
            children: [
              for (final figure in figures) _ExhibitionImage(figure: figure),
            ],
          );
        }

        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (final figure in figures)
              Expanded(child: _ExhibitionImage(figure: figure)),
          ],
        );
      },
    );
  }
}

class _SectionHeading extends StatelessWidget {
  const _SectionHeading(this.title);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 28, bottom: 8),
      child: Text(
        title,
        style: Theme.of(context).textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.w700,
            ),
      ),
    );
  }
}

class _NarrativeParagraph extends StatelessWidget {
  const _NarrativeParagraph({
    required this.children,
  })  : text = null,
        isQuote = false;

  const _NarrativeParagraph.text({
    required String text,
    this.isQuote = false,
  })  : text = text,
        children = null;

  final List<InlineSpan>? children;
  final String? text;
  final bool isQuote;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final style = theme.textTheme.bodyLarge?.copyWith(
      height: 1.55,
      fontStyle: isQuote ? FontStyle.italic : FontStyle.normal,
    );

    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: text == null
          ? Text.rich(
              TextSpan(children: children),
              style: style,
            )
          : Text(text!, style: style),
    );
  }
}

class _ExhibitionFigure {
  const _ExhibitionFigure({
    required this.title,
    required this.asset,
    required this.caption,
    this.maxWidth,
  });

  final String title;
  final String asset;
  final String? caption;
  final double? maxWidth;
}

class _ExhibitionImage extends StatelessWidget {
  const _ExhibitionImage({required this.figure});

  final _ExhibitionFigure figure;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.only(top: 12, bottom: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              figure.asset,
              width: figure.maxWidth ?? double.infinity,
              fit: BoxFit.contain,
              semanticLabel: figure.title,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            figure.title,
            style: theme.textTheme.titleMedium?.copyWith(
              fontFamily: 'serif',
              fontWeight: FontWeight.w600,
            ),
          ),
          if (figure.caption != null) ...[
            const SizedBox(height: 4),
            Text(
              figure.caption!,
              style: theme.textTheme.bodySmall?.copyWith(height: 1.4),
            ),
          ],
        ],
      ),
    );
  }
}

class _BibliographicReference {
  const _BibliographicReference({required this.text, required this.url});

  final String text;
  final String url;
}

class _ReferenceItem extends StatelessWidget {
  const _ReferenceItem({required this.number, required this.reference});

  final int number;
  final _BibliographicReference reference;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final linkStyle = theme.textTheme.bodyMedium?.copyWith(
      color: theme.colorScheme.primary,
      decoration: TextDecoration.underline,
      height: 1.45,
    );

    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('$number. ${reference.text}', style: theme.textTheme.bodyMedium),
          const SizedBox(height: 4),
          InkWell(
            onTap: () => _openUrl(context, reference.url),
            child: Text(
              'Recuperado de ${reference.url}',
              style: linkStyle,
            ),
          ),
        ],
      ),
    );
  }
}

class _CitationLink extends StatelessWidget {
  const _CitationLink({required this.number});

  final int number;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _openUrl(context, _referencesUrl),
      child: Text(
        '[$number]',
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: Theme.of(context).colorScheme.primary,
              decoration: TextDecoration.underline,
            ),
      ),
    );
  }
}

Future<void> _openUrl(BuildContext context, String url) async {
  final opened = await launchUrl(Uri.parse(url));
  if (!opened && context.mounted) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('No se pudo abrir el enlace.')),
    );
  }
}

class GobiernoPage extends StatelessWidget {
  const GobiernoPage({super.key});

  static const _referencesUrl =
      'https://redescubramossonora.mx/museodelosyaquis/'
      'gobierno-politico-religioso/#gobierno-referencias';

  static const _references = <_CelebracionesReference>[
    _CelebracionesReference(
      text: 'Comisión Presidencial de Justicia para el Pueblo Yaqui. (2020). '
          'Plan de Justicia para el Pueblo Yaqui. Ciudad de México: Secretaría '
          'de Gobernación. p. 20.',
      url:
          'https://www.inpi.gob.mx/gobmx-2021/Plan-de-Justicia-del-Pueblo-Yaqui.pdf',
    ),
    _CelebracionesReference(
      text: 'Restor Rodríguez, María M. (2017). La identidad yaqui y el agua '
          'En Conflictos por el agua y alternativas en los territorios '
          'indígenas de México. Jiutepec, Morelos: Instituto Mexicano de '
          'Tecnología del Agua. p. 88.',
      url: 'http://repositorio.imta.mx/handle/20.500.12013/1839',
    ),
    _CelebracionesReference(text: 'Ibid., p. 136'),
    _CelebracionesReference(
      text: 'Padilla Ramos, Raquel. (2020). La gran fe de las “mil prácticas '
          'grotescas”: una mirada general a la organización religiosa y '
          'política de los yaquis En Noroeste de México, (2). p. 118.',
      url:
          'http://mediateca.inah.gob.mx/repositorio/islandora/object/issue:3036',
    ),
    _CelebracionesReference(
      text: 'Olavarría, María Eugenia. (1995). Creatividad y sincretismo en '
          'un ritual yaqui En Alteridades, Vol. 5 (9). p. 72.',
      url: 'https://www.redalyc.org/articulo.oa?Id=74711352007',
    ),
    _CelebracionesReference(text: 'Padilla Ramos, Raquel. op. cit., p. 120'),
    _CelebracionesReference(
        text: 'Restor Rodríguez, María M. op. cit., p. 137'),
    _CelebracionesReference(text: 'Ibid., p. 138'),
  ];

  static Widget _paragraph(String text, {int? citation}) {
    return _NarrativeParagraph(
      children: [
        TextSpan(text: text),
        if (citation != null)
          WidgetSpan(
            alignment: PlaceholderAlignment.baseline,
            baseline: TextBaseline.alphabetic,
            child: _GobiernoCitation(number: citation),
          ),
        if (citation != null) const TextSpan(text: '.'),
      ],
    );
  }

  static Widget _image(
    String title,
    String filename,
    String caption, {
    double? maxWidth,
  }) {
    return _ExhibitionImage(
      figure: _ExhibitionFigure(
        title: title,
        asset: 'assets/exposiciones/gobierno/$filename',
        caption: caption,
        maxWidth: maxWidth,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Gobierno')),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(20, 24, 20, 40),
        children: [
          Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1000),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Exposición',
                    style: theme.textTheme.labelLarge?.copyWith(
                      color: theme.colorScheme.primary,
                      letterSpacing: 1.2,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text('Gobierno', style: theme.textTheme.headlineMedium),
                  const SizedBox(height: 16),
                  _paragraph(
                    'Al yaqui se le educa para servir al pueblo y, en caso de '
                    'obtener algún cargo de autoridad, debe «mandar '
                    'obedeciendo los preceptos del pueblo». Este legado '
                    'ancestral, forma parte de los conocimientos milenarios, '
                    'adquiridos y transmitidos vía oral, preservándose en la '
                    'memoria colectiva. Por eso, en todas las comunidades '
                    'yaquis se reconoce a los ancianos como autoridad moral, '
                    'y a sus palabras como sabias: se les escucha, respeta y '
                    'obedece',
                    citation: 1,
                  ),
                  _image(
                    'Yaquis',
                    'Organizacion-politica-y-religiosa.png',
                    'Yaquis. Fuente: Museo Étnico de los Yaquis',
                  ),
                  _paragraph(
                    'Uno de los juramentos más emblemáticos y conocidos '
                    'dentro y fuera de la tribu, es el juramento de capitán a '
                    'la milicia y pueblo yaqui. En él se concentra gran parte '
                    'del deber ser en relación con las creencias culturales '
                    'de grupo.',
                  ),
                  _image(
                    'Juramento de capitán yaqui',
                    'Juramento-de-capitan.jpg',
                    'Juramento de capitán yaqui. Museo Étnico de los Yaquis. '
                        'Sala de gobierno. Fotógrafo: Juan Casanova.',
                    maxWidth: 420,
                  ),
                  _paragraph(
                    'Durante la evangelización, en el aspecto político se '
                    'incorporó la creación de cargos civiles y militares, '
                    'cuyas funciones eran parecidas a las existentes dentro '
                    'de los pueblos españoles. Los primeros se constituían '
                    'por un gobernador, alcalde, alguacil, fiscal y topil, '
                    'responsables de vigilar la organización para el trabajo '
                    'y el orden dentro de las misiones; mientras, los '
                    'militares quedaban integrados por un capitán de guerra, '
                    'alférez, sargentos, cabos y soldados. Su función era '
                    'vigilar las misiones de posibles invasiones de seris o '
                    'apaches',
                    citation: 2,
                  ),
                  _paragraph(
                    'Después de la expulsión de los jesuitas de todo '
                    'territorio español en 1767, la tribu asumió una total '
                    'autonomía respecto a su vida religiosa y su organización '
                    'política, pero se mantuvo gran parte de la estructura '
                    'formada por los jesuitas, esta forma de gobierno fue tal '
                    'vez el legado más importante de los religiosos.',
                  ),
                  _paragraph(
                    'Por lo tanto, es posible identificar una estructura '
                    'interna de gobierno con dos principios básicos: el '
                    'primero a partir de una combinación de la autonomía bajo '
                    'el poder de Dios; la santora, constituido por las '
                    'imágenes que se encuentran en el interior de las '
                    'iglesias; de los ya’uram, «gobernadores yaquis '
                    'consagrados» y el del puepplom o «pueblo». El segundo '
                    'principio se fundamenta en la resolución de problemáticas '
                    'mediante el acuerdo y consenso',
                    citation: 3,
                  ),
                  _image(
                    'Corografía Jesuita',
                    'corografia_jesuita.jpg',
                    'Corografía Jesuita. En ella se plasma el avance y '
                        'situación evangelizadora en todo el septentrión '
                        'americano. Fuente: Mapoteca Manuel Orozco y Berra',
                  ),
                  const _SectionHeading('Teocracia'),
                  _paragraph(
                    'La autoridad religiosa se encarga de diversos asuntos, '
                    'no sólo los relacionados con el culto. La integran: el '
                    'Temastimol o «temastian» y el maestro kapia. Actualmente '
                    'la máxima autoridad en la toma de decisiones recae en la '
                    'iglesia, por medio de la figura del maejto principal.',
                  ),
                  _paragraph(
                    'Los temastianes, originalmente fueron acompañantes de '
                    'los jesuitas, sirvieron en un principio como padrinos de '
                    'aquellos que habrían de bautizarse y fungieron como '
                    'catequistas de la población. Tras la expulsión de los '
                    'jesuitas, la más alta figura de autoridad religiosa fue '
                    'puesta en ellos. Actualmente su rango equivale al de un '
                    'obispo y preside las ceremonias más importantes de la '
                    'tribu',
                    citation: 4,
                  ),
                  _paragraph(
                    'Cabe señalar que el nombre temastián no es una derivación '
                    'de sacristán sino un préstamo del náhuatl. Por lo que '
                    'existe una alta posibilidad de que este sincretismo en '
                    'particular no provenga de la doctrina jesuita-yaqui, '
                    'sino náhuatl-yaqui',
                    citation: 5,
                  ),
                  _image(
                    'Temastián',
                    'temastian.jpg',
                    'Temastián (camisa roja) en ceremonia para el cambio de '
                        'gobernador yaqui. Museo Étnico de los Yaquis. Sala de '
                        'Gobierno. Fotógrafo: Juan Casanova',
                  ),
                  _image(
                    'Tenánchi',
                    'tenanchi.jpg',
                    'Tenánchi. Es una mujer joven que lleva la bandera en las '
                        'procesiones de la Vírgen. Museo Étnico de los Yaquis. '
                        'Sala de fiestas tradicionales. Fotógrafo: Juan Casanova',
                  ),
                  _paragraph(
                    'Durante los siglos XX y XXI los temastianes han tenido '
                    'como auxiliares a los maistros, quienes se hacen cargo '
                    'de algunas ceremonias menores y presiden los cantos '
                    'durante las celebraciones religiosas; la autoridad que '
                    'ejercen es semejante en funciones a la de los sacerdotes '
                    'católicos. Otro cargo eclesiástico es la figura del '
                    'Piscal mol, quien es el catequista de la comunidad; se '
                    'encarga de enseñar la doctrina y valores yaquis a niños '
                    'y jóvenes',
                    citation: 6,
                  ),
                  _NarrativeParagraph.text(
                    text: 'Por su parte, la participación de la mujer dentro '
                        'del organigrama religioso se encuentra en la '
                        'incorporación de la cantora, quien obedece al '
                        'cumplimiento de una manda. Actualmente ellas son una '
                        'parte medular de la jerarquía religiosa y política, '
                        'debido a que son ellas quienes deciden en última '
                        'instancia si un rito se realiza, en qué lugar, de '
                        'qué manera y en qué medida. Las cantoras no formaban '
                        'parte de la estructura propuesta por los jesuitas.',
                  ),
                  const _SectionHeading('Gobierno tradicional'),
                  _NarrativeParagraph.text(
                    text: 'Es la máxima autoridad civil y está formado por '
                        'cinco Kobanaom «gobernadores» y un Pueblo Mayor quien '
                        'preside a los basariom, un grupo de ancianos y ex '
                        'gobernadores que forman parte del consejo hasta su '
                        'muerte; ellos representan la voz del pueblo y se '
                        'aseguran de preservar las tradiciones. El consejo se '
                        'reúne junto con los gobernadores una vez por semana '
                        'en la komunila, considerada como «la segunda Santa '
                        'Iglesia».',
                  ),
                  _NarrativeParagraph.text(
                    text: 'Los tres poderes están personificados por el '
                        'gobernador como ejecutivo; el pueblo mayor como '
                        'legislativo y el capitán el judicial. Se cree que la '
                        'forma de estructurarse proviene de Cajeme, '
                        'posiblemente al conformar las guardias después de '
                        'los enfrentamientos contra Pesqueira; también '
                        'instituyó las guardias y la palabra tropa para '
                        'referirse al contingente yaqui.',
                  ),
                  _image(
                    'Vara de mando',
                    'Vara-de-mando.jpg',
                    'Vara de mando. Museo Étnico de los Yaquis. Sala de '
                        'gobierno. Fotógrafo: Juan Casanova.',
                  ),
                  _image(
                    'Ritual político-religioso',
                    'GOBERNADOR_01.jpg',
                    'Ritual político-religioso. Toma de protesta de '
                        'gobernador (persona hincada con la vara de mando). Museo '
                        'Étnico de los Yaquis. Sala de organización política y '
                        'religiosa. Fotógrafo: Olavo Rojas Vega',
                  ),
                  _image(
                    'Juramento de gobernador',
                    'Juramento-de-gobernador.jpg',
                    'Juramento de capitán yaqui. Museo Étnico de los Yaquis. '
                        'Sala de gobierno. Fotógrafo: Juan Casanova.',
                  ),
                  _paragraph(
                    'La komunila es el recinto oficial del mando tradicional, '
                    'donde tienen lugar las reuniones dominicales presididas '
                    'por el gobierno civil, la tropa militar, la religiosa y '
                    'el pueblo. En ese lugar se llevan a cabo sesiones '
                    'abiertas en donde todos, hombres y mujeres, deliberan '
                    'para resolver los problemas que les afectan; una vez '
                    'llegados los acuerdos, les corresponde a los '
                    'gobernadores tradicionales servir como interlocutores '
                    'con las altas autoridades estatales y federales',
                    citation: 7,
                  ),
                  _NarrativeParagraph.text(
                    text: 'El cambio de gobernadores se realiza el día seis '
                        'de enero en cada uno de los ocho pueblos. Para esta '
                        'ceremonia, el llamado tampaleo señala el comienzo y '
                        'la conclusión e invita con el sonido de su tambor a '
                        'la comunidad para una reunión ordinaria. Es el cargo '
                        'de mayor jerarquía dentro de la autoridad militar, '
                        'luego le sigue el de alpes, encargado de la bandera '
                        'de color azul perteneciente a las autoridades '
                        'durante la misa de los domingos y en las fiestas '
                        'donde participen estas.',
                  ),
                  _NarrativeParagraph.text(
                    text: 'A mediados del siglo XX, específicamente durante '
                        'la administración federal de Lázaro Cárdenas '
                        '(1934-1940), se da el reconocimiento por parte de '
                        'las autoridades del Estado mexicano al sistema de '
                        'gobierno tradicional, no sin antes tratar de tener '
                        'alguna injerencia en la toma de decisiones. '
                        'Posterior al cardenismo, la tribu yaqui instauró la '
                        'figura de ji´ojtereo o «secretario», mismo que '
                        'ostenta el cargo de forma vitalicia y no de un año '
                        'como todos los demás. Él se encarga de escribir los '
                        'documentos oficiales del pueblo, servir de '
                        'intérprete en reuniones de gestoría o cuando se '
                        'llevan a cabo los discursos oficiales, pero no tiene '
                        'capacidad de decisión y su función sólo se ejerce en '
                        'reuniones ante extraños al grupo, mas no ante los '
                        'yaquis.',
                  ),
                  _paragraph(
                    'Otra figura de gobierno que se intentó instaurar por la '
                    'Secretaría de la Reforma Agraria es el conocido como '
                    'Comisariado de bienes comunales, pero fue rechazada y '
                    'sus funciones se incorporaron al de las autoridades '
                    'tradicionales',
                    citation: 8,
                  ),
                  _image(
                    'Ubicación de autoridades en la komunila',
                    'Ubicacion-del-pueblo-en-recintos-sagrados.jpg',
                    'Ubicación de autoridades en la komunila. Fuente: Museo '
                        'Étnico de los Yaquis',
                  ),
                  _image(
                    'Líderes yaquis con Lázaro Cárdenas',
                    'Lazaro.jpg',
                    'Líderes yaquis con Lázaro Cárdenas. Fuente: Archivo '
                        'General del Estado de Sonora',
                  ),
                  _image(
                    'Estandarte militar',
                    'Estandarte-militar.jpg',
                    'Estandarte militar. Museo Étnico de los Yaquis. Sala de '
                        'organización política y religiosa. Fotógrafo: Juan '
                        'Casanova',
                    maxWidth: 420,
                  ),
                  const _SectionHeading('La kojtumbre ya´ura'),
                  _NarrativeParagraph.text(
                    text: 'Esta autoridad ritual proviene desde la época '
                        'prehispánica, y se desarrolló durante la Colonia, así '
                        'como en el México independiente. Su estructura es '
                        'semejante a la militar, por lo cual algunos grados '
                        'de mando tienen nombre castrense indicando su '
                        'jerarquía dentro del grupo; está compuesta por: '
                        'pilatos, capitanes, tenientes, sargentos, cabos, '
                        'tambuleros, ﬂauteros y soldados.',
                  ),
                  _NarrativeParagraph.text(
                    text: 'La kojtumbre ya´ura funciona exclusivamente '
                        'durante las festividades de Cuaresma; en ella asume '
                        'la totalidad del poder y responsabilidad del '
                        'gobierno tradicional. Entre sus funciones está '
                        'mantener el orden dentro del pueblo y vigilar que '
                        'las ceremonias civiles, políticas o religiosas se '
                        'lleven a cabo con estricto apego a las costumbres de '
                        'la comunidad.',
                  ),
                  const _SectionHeading('Jiak Bantea / Bandera Yaqui'),
                  _image(
                    'Bandera Yaqui',
                    'Bandera-Yaqui.jpg',
                    'Bandera Yaqui. Museo Étnico de los Yaquis. Sala '
                        'Territorio. Fotógrafo: Juan Casanova.',
                  ),
                  _NarrativeParagraph.text(
                    text: 'Simbolismo de colores e íconos:',
                  ),
                  _NarrativeParagraph.text(
                    text: 'Azul: orgullo, vigor y valentía de la raza.',
                  ),
                  _NarrativeParagraph.text(
                    text: 'Teweli: wa jiak emo ouliwame.',
                  ),
                  _NarrativeParagraph.text(
                    text: 'Blanco: la pureza y nobleza de la raza.',
                  ),
                  _NarrativeParagraph.text(
                    text: 'Tosali: wa tu´u jiapsiwame into emo yo´oriwame.',
                  ),
                  _NarrativeParagraph.text(
                    text: 'Rojo: es la sangre derramada por los padres y '
                        'abuelos en defensa de la soberanía.',
                  ),
                  _NarrativeParagraph.text(
                    text: 'Sikili: wa itom yoyowa ojbo wo óti. Itom bwia '
                        'jin´neu betchi´ibo.',
                  ),
                  _NarrativeParagraph.text(
                    text: 'Sol: padre Dios, creador del mundo y de todas las '
                        'cosas.',
                  ),
                  _NarrativeParagraph.text(
                    text: 'Ta´a: itom achaí. Waka itom aniapo si´imeta '
                        'ya´alame.',
                  ),
                  _NarrativeParagraph.text(
                    text: 'Luna: Diosa madre que ilumina el camino en el '
                        'universo.',
                  ),
                  _NarrativeParagraph.text(
                    text: 'Me´echa: itom a´e waka itom bo´o tachiriame.',
                  ),
                  _NarrativeParagraph.text(
                    text: 'Cruz: la nueva religión espiritual.',
                  ),
                  _NarrativeParagraph.text(
                    text: 'Kus: itom bemelasí suale´u.',
                  ),
                  _NarrativeParagraph.text(
                    text: 'Estrellas: son los espíritus de los ancestros que '
                        'vigilan nuestro territorio.',
                  ),
                  _NarrativeParagraph.text(
                    text: 'Chokim: itom yoyo´owam koko subin sukaum itom '
                        'bwia sua.',
                  ),
                  const _SectionHeading('Referencias'),
                  for (var index = 0; index < _references.length; index++)
                    _CelebracionesReferenceItem(
                      number: index + 1,
                      reference: _references[index],
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _GobiernoCitation extends StatelessWidget {
  const _GobiernoCitation({required this.number});

  final int number;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _openUrl(context, GobiernoPage._referencesUrl),
      child: Text(
        '[$number]',
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: Theme.of(context).colorScheme.primary,
              decoration: TextDecoration.underline,
            ),
      ),
    );
  }
}

class CelebracionesReligiosasPage extends StatelessWidget {
  const CelebracionesReligiosasPage({super.key});

  static const _referencesUrl =
      'https://redescubramossonora.mx/museodelosyaquis/'
      'celebraciones-religiosas#celebraciones-referencias';
  static const _references = <_CelebracionesReference>[
    _CelebracionesReference(
      text: 'Olavarría, Ma. Eugenia. (2000). Contexto calendárico yaqui En '
          'Alteridades, Vol. 10, (20). p.53.',
      url: 'https://www.redalyc.org/articulo.oa?id=74702004',
    ),
    _CelebracionesReference(text: 'ibid. p. 55'),
    _CelebracionesReference(
      text: 'Lerma Rodríguez, Enriqueta. (2016). La construcción social del '
          'tiempo circular y el espacio concéntrico y reticular en la '
          'ritualidad yaqui En Nueva antropología, 29(84), p. 18.',
      url:
          'http://www.scielo.org.mx/pdf/na/v29n84/0185-0636-na-29-84-00011.pdf',
    ),
    _CelebracionesReference(text: 'Olavarría, Ma. Eugenia. op. cit., p. 42'),
    _CelebracionesReference(text: 'Ibid., p. 40'),
    _CelebracionesReference(
      text: 'Restor Rodríguez, María M. (2017). La identidad yaqui y el agua '
          'En Conflictos por el agua y alternativas en los territorios '
          'indígenas de México. Jiutepec, Morelos: Instituto Mexicano de '
          'Tecnología del Agua. p. 144.',
      url: 'http://repositorio.imta.mx/handle/20.500.12013/1839',
    ),
    _CelebracionesReference(text: 'Olavarría, Ma. Eugenia. op. cit., p. 46'),
    _CelebracionesReference(
      text: 'Merino González, Erica C. (2013). La Cuaresma y la Semana Santa '
          'yaqui En Los pueblos indígenas del noroeste: atlas etnográfico. '
          'México: Instituto Nacional de Antropología e Historia. Instituto '
          'Sonorense de Cultura del Gobierno del Estado de Sonora. Instituto '
          'Nacional de Lenguas Indígenas. p. 177-179.',
      url: 'https://www.mediateca.inah.gob.mx/islandora_74/islandora/object/'
          'libro:449',
    ),
    _CelebracionesReference(text: 'ibid., p. 176'),
  ];

  static Widget _paragraph(String text, {int? citation}) {
    return _NarrativeParagraph(
      children: [
        TextSpan(text: text),
        if (citation != null)
          WidgetSpan(
            alignment: PlaceholderAlignment.baseline,
            baseline: TextBaseline.alphabetic,
            child: _CelebracionesCitation(number: citation),
          ),
        if (citation != null) const TextSpan(text: '.'),
      ],
    );
  }

  static Widget _image(String name, String title, String caption) {
    return _ExhibitionImage(
      figure: _ExhibitionFigure(
        title: title,
        asset: 'assets/exposiciones/celebraciones_religiosas/$name',
        caption: caption,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Celebraciones religiosas')),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(20, 24, 20, 40),
        children: [
          Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1000),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Exposición',
                    style: theme.textTheme.labelLarge?.copyWith(
                      color: theme.colorScheme.primary,
                      letterSpacing: 1.2,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Celebraciones religiosas',
                    style: theme.textTheme.headlineMedium,
                  ),
                  const SizedBox(height: 16),
                  _paragraph(
                    'En la exposición «Cosmovisión» se narra la veneración, '
                    'el culto a las deidades naturales, la Toosa y los espacios '
                    'espirituales. En «Religiosidad» se explica como esa gran '
                    'devoción, respeto por las creencias y valores antiguos '
                    'fueron mezclados con las creencias católicas durante la '
                    'evangelización. Tal unión resultó en la vivencia de una '
                    'nueva religiosidad para la tribu; se trata de un '
                    'sincretismo donde lo visible es en su mayoría cristiano '
                    'mientras que lo invisible es yaqui (por así decirlo); '
                    'ambas dimensiones se presentan simultáneamente y '
                    'coinciden intermitentemente en cada una de las '
                    'celebraciones religiosas',
                    citation: 1,
                  ),
                  _paragraph(
                    'La Waejma «Cuaresma» es la celebración de mayor '
                    'importancia para la tribu, en ella se representan tanto '
                    'su aceptación del catolicismo aprendido en los siglos '
                    'XVII y XVIII, como simultáneamente su resistencia al '
                    'mismo. En ambas secciones del calendario anual coexisten '
                    'estos dos polos: durante el tiempo ordinario se privilegia '
                    'preferentemente el polo de significación católico y en la '
                    'Cuaresma reluce más el polo yaqui. En el Sábado de Gloria, '
                    'sin más, los dos polos se invierten',
                    citation: 2,
                  ),
                  _image(
                    'Calendario_de_fiestas.jpg',
                    'Calendario anual de fiestas',
                    'Calendario anual de fiestas. Museo Étnico de los Yaquis. '
                        'Sala de fiestas tradicionales. Fotógrafo: Juan '
                        'Casanova',
                  ),
                  _image(
                    'Ciclo-ritual-anual.jpg',
                    'Ciclo ritual anual',
                    'Ciclo ritual anual. Información obtenida del texto '
                        '“contexto calendárico yaqui” de Ma. Eugenia Olavarría',
                  ),
                  _paragraph(
                    'Cada uno de los ocho pueblos congregados por los '
                    'misioneros jesuitas a partir de 1617 ven fortalecida su '
                    'importancia con base en la edificación de los templos en '
                    'adobe; y desde alrededor de 1623 existe la veneración a '
                    'los Santos Patronos, dos por cada pueblo. El ciclo ritual '
                    'anual es bastante complejo, tratamos de explicarlo. El '
                    'año se divide en tiempo ordinario y la waejma «Cuaresma» '
                    '(que se trata detalladamente más abajo).',
                  ),
                  _paragraph(
                    'En el tiempo ordinario hay dos grandes tipos de '
                    'acontecimientos rituales: las fiestas patronales y las '
                    'fiestas familiares que son considerados ritos de paso. '
                    'En el pueblo de Bélem, por ejemplo, los Santos Patronos '
                    'son: San Miguel Arcángel (29 de septiembre) y San Pedro '
                    'y San Pablo (29 de junio).',
                  ),
                  _image(
                    'Maqueta-de-danzas.jpg',
                    'Maqueta de danzas yaquis',
                    'Maqueta de danzas yaquis. Museo Étnico de los Yaquis. '
                        'Sala Danza y música. Fotógrafo: Juan Casanova.',
                  ),
                  const _SectionHeading('Ceremonias patronales'),
                  _paragraph(
                    'En las fiestas patronales se bautiza a los niños de la '
                    'comunidad, y se hacen compromisos para ser los próximos '
                    'fiesteros (organizadores de los festejos). Cada '
                    'festividad tiene sus elementos: danzas, instrumentos y '
                    'atuendos, entre otros. Sus formas se dividen en '
                    'actividades principales, como fiesteros mayores (rojos '
                    'y azules), en el caso de las fiestas de la Santa Cruz, '
                    'San Juan, Santísima Trinidad, Corpus Christi; donde los '
                    'personajes principales son Kapetai yo´owe, segundo '
                    'Kapetai, alawasin y alpes quienes hacen posible que la '
                    'festividad cumpla con las conductas y ritos referentes a '
                    'la danza de Venado y del Pascola.',
                  ),
                  _image(
                    'Estandarte-fiesteros-azules.jpg',
                    'Estandarte de fiesteros azules',
                    'Estandarte de fiesteros azules. Museo Étnico de los '
                        'Yaquis. Sala de fiestas tradicionales. Fotógrafo: '
                        'Olavo Rojas Vega',
                  ),
                  const _SectionHeading('Fiesteros'),
                  _paragraph(
                    'Cada una de las fiestas patronales presenta una secuencia '
                    'similar, cuyos rasgos generales son los siguientes un '
                    'total de ocho parejas de fiesteros, cuatro del bando azul '
                    'conocido como Taebo betana o «los de la salida del sol» '
                    'y cuatro del bando rojo conocidos como Banee betana o '
                    '«metida del sol», todas elegidas con un año de '
                    'anticipación. Ya en las celebraciones patronales se '
                    'pueden identificar tres grupos: los «principales» o '
                    '«mayores», los salientes (principales del año anterior) '
                    'y los entrantes. Todos ellos a su vez se auxilian de '
                    'personas para ayudarles con la preparación de las fiestas',
                    citation: 3,
                  ),
                  _paragraph(
                    'Una semana antes de la fecha señalada para la fiesta, '
                    'los fiesteros vigentes amarran a quienes serán sus '
                    'sucesores, a quienes se persigna y coloca un paño sobre '
                    'la cabeza, de color azul o rojo según les corresponda. '
                    'Esta fiesta se le conoce como sotoi pajko cuya '
                    'traducción es «fiesta de los cajetes». Durante un año '
                    'los recién electos sólo se dedicarán a observar y hasta '
                    'el último día recibirán formalmente su cargo y compromiso',
                    citation: 4,
                  ),
                  const _SectionHeading(
                    'Estandartes de fiesteros azules y rojos',
                  ),
                  _paragraph(
                    'Los estandartes azules y rojos se utilizan para '
                    'identificar a los dos grupos de fiesteros, para ambos '
                    'casos, los alpes “alférez” se encargan de dirigir a cada '
                    'grupo de acuerdo al color de estandarte que lleven; en '
                    'las ceremonias religiosas dan las pautas de la '
                    'ritualidad con los movimientos del estandarte.',
                  ),
                  _paragraph(
                    'Además de lo anterior, los estandartes azules y rojos se '
                    'utilizan para bendecir los alimentos de la fiesta, la '
                    'ceremonia de persignación de los fiesteros y para '
                    'bendecir algún difunto con el cargo de fiestero. Estas '
                    'se ondean tres veces en el nombre de la Trinidad desde '
                    'el centro hacia las cuatro direcciones, y con ello se '
                    'sacraliza un territorio, un patio o una casa. Gracias a '
                    'las banderas se evitan los males y se circunscribe un '
                    'bwiata te’ochia «un lugar consagrado»',
                    citation: 5,
                  ),
                  _image(
                    'Estandartes-rojos.jpg',
                    'Estandartes rojos',
                    'Estandarte de fiesteros rojos y chapayekas. El estandarte '
                        'Chapayeka se distingue por su color rojo con una cruz '
                        'amarilla en el centro. Se utiliza para bendecir las '
                        'ceremonias de las fiestas de cuaresma, santiguar a '
                        'las personas en la velación del cuerpo de Cristo, en '
                        'la fiesta de la pasión y para bendecir a las personas '
                        'fallecidas si pertenecieron a la orden de los '
                        'fariseos o los caballeros. Museo Étnico de los '
                        'Yaquis. Sala de fiestas tradicionales. Fotógrafo: '
                        'Olavo Rojas Vega',
                  ),
                  const _SectionHeading('Fiestas familiares'),
                  _paragraph(
                    'Entre las fiestas rituales de paso y familiares se '
                    'encuentran: la bendición a los nuevos gobernadores, los '
                    'bautizos, bodas y defunciones. En estos eventos aún se '
                    'practica la lengua culta conocida como el Yo´o Lutu´uria '
                    'que significa «la verdad de nuestros mayores», esto '
                    'significa conservar vivas la tradición de expresión '
                    'oral.',
                  ),
                  _paragraph(
                    'Actualmente, en eventos como la boda tradicional ha '
                    'permeado una aculturación frente a los festejos populares '
                    'del resto del país, en donde se practica una dualidad '
                    'entre lo tradicional y prácticas de una boda mestiza, es '
                    'decir, existe practicas previas de danzas yaquis, '
                    'vestimentas tradicionales una planificación del evento '
                    'considerando  un buen conjunto musical, vestidos blancos '
                    'de novia a la usanza europea, la siempre llamativa tanda '
                    'húngara (poner dinero en la ropa de los contrayentes por '
                    'los invitados mientras bailan una pieza musical), el '
                    'pastel nupcial e incluso el retrato de los cónyuges como '
                    'evidencia de su felicidad',
                    citation: 6,
                  ),
                  _paragraph(
                    'El ritual matrimonial inicia de manera lúdica con los '
                    'Pascolas quienes juegan los roles del varón y la mujer; '
                    'unos pretenden hacer ver a la mujer sus próximas '
                    'responsabilidades en los quehaceres de la vida, mientras '
                    'que los que juegan el rol de varón danzarán en casa de '
                    'los padrinos de bautizo y serán vestidos con ropa nueva. '
                    'Lo mismo pasa con la novia, misma que será entregada a '
                    'toda la nueva familia con tamales que simbolizan la '
                    'madurez. La novia es recibida en la cruz principal '
                    'conocida como Kus testiko y de ahí será llevada por la '
                    'familia a conocer el interior de la casa; con ella entran '
                    'los pascolas haciendo sátira de lo que le espera, en un '
                    'momento, se detiene la comitiva y el pascola mayor le '
                    'ofrece a través del yo´o  lutu´uria un consejo resaltando '
                    'los valores universales del deber ser.',
                  ),
                  _image(
                    'BODA_YAQUI.png',
                    'Boda yaqui',
                    'Boda yaqui. Fuente: Archivo General del Estado de Sonora',
                  ),
                  const _SectionHeading('Comida Festiva'),
                  _paragraph(
                    'La comida en las fiestas además de satisfacer una '
                    'necesidad fisiológica, es un acontecimiento de gran '
                    'profundidad ceremonial, pues está presente en todos los '
                    'actos representativos de las costumbres y vida cotidiana; '
                    'con esta práctica se genera una conjugación de valores '
                    'esenciales que están inmersos en los sentimientos '
                    'familiares y que se comparten entre sí porque es la forma '
                    'que enseñaron los ancestros a través de la tradición '
                    'oral, donde la naturaleza mostró que el cielo, la tierra, '
                    'el aire, el agua y las estaciones son elementos '
                    'propiciadores de vida. Estas dimensiones se captan y '
                    'reproducen en las fiestas realizadas durante todo el año.',
                  ),
                  _paragraph(
                    'El platillo que no puede faltar en el menú de celebración '
                    'es el wakabaki «carne de res cocida en agua», y '
                    'actualmente se acompaña con verduras, y se sirve en '
                    'platos de barro conocidos como babu puato que significa '
                    'literalmente «plato de barro». Originalmente este '
                    'platillo solía ser carne de venado pretendiendo que al '
                    'consumir su carne se adquieren los atributos por los '
                    'cuales se valora a este animal, pero se sustituyó por res '
                    'debido a la escasez del animal silvestre. Otros platillos '
                    'son: carne con chile, frijol con hueso, todos siempre '
                    'acompañados por tortillas de harina.',
                  ),
                  _paragraph(
                    'Para que el wakabaki pueda ser considerado como '
                    'ceremonial, es necesario que sea servido en platos de '
                    'barro y cuchara de carrizo. Al finalizar las ceremonias '
                    'rituales y de convivencia, en algunos pueblos se '
                    'acostumbraba quebrar los platos de barro, así se '
                    'aseguraba que nadie pudiera tocar la felicidad del pueblo '
                    'contenida en ellos. Actualmente se colocan los platos en '
                    'los techos de sus viviendas para ser purificados por el '
                    'sol y ser utilizados en la siguiente fiesta.',
                  ),
                  _image(
                    'TORTILLAS.png',
                    'Elaboración de tortillas',
                    'Elaboración de tortillas. Fuente: Archivo General del '
                        'Estado de Sonora',
                  ),
                  const _SectionHeading('Fiestas tradicionales'),
                  _paragraph(
                    'Las fiestas tradicionales son celebradas en todos los '
                    'pueblos yaquis y son: Santa Cruz, Santísima Trinidad, '
                    'Corpus Christi, San Juan Bautista, y la Virgen del '
                    'Camino. Esa última es tal vez la de mayor relevancia '
                    'porque es la iniciación de los matachines, en la cual se '
                    'concentra a un gran número de pueblos yaquis nacionales y '
                    'extranjeros, siendo la única ocasión del año en que se '
                    'juntan los matachines de todos los pueblos. Otra '
                    'celebración de importancia (al igual que a nivel '
                    'nacional) son los festejos a la Virgen de Guadalupe.',
                  ),
                  _image(
                    'Virgen.jpg',
                    'Virgen de la Dolorosa',
                    'Virgen de la Dolorosa. Museo Étnico de los Yaquis. Sala '
                        'de organización política y religiosa. Fotógrafo: '
                        'Juan Casanova.',
                  ),
                  const _SectionHeading('Waejma / Cuaresma'),
                  _paragraph(
                    'El tiempo de Waejma trae profundos cambios en la '
                    'conducta social diaria como: la vestimenta, los sonidos '
                    'de los instrumentos musicales, y prácticas para evitar o '
                    'minimizar trasladarse en vehículos con motor de cualquier '
                    'tipo, por lo cual se privilegia el desplazarse descalzos, '
                    'con huaraches, a caballo o en bicicleta, debido a que '
                    'estas acciones purifican el alma.',
                  ),
                  _paragraph(
                    'Para los Yaquis la Waejma inicia a partir del día de la '
                    'candelaria (2 de febrero). A partir de esta fecha se '
                    'paralizan todas las actividades de orden religioso como '
                    'los novenarios; cabo de año; bodas; bautizos; etcétera. '
                    'En esta etapa sobresalen distintos grupos de la compleja '
                    'organización ceremonial yaqui, cada uno de ellos con '
                    'funciones específicas: la kojtumbre ya´ura abarca a los '
                    'kabayeom o «caballeros», quienes se encargan del orden '
                    'público, a la par que los chapayekas, o fariseos, quienes '
                    'son el grupo predominante y con jerarquía similar a un '
                    'ejército convencional, por lo que en su organigrama hay '
                    'capitanes, tenientes, sargentos y pilatos.',
                  ),
                  _paragraph(
                    'Durante la Waejma, los iniciados en la kojtumbre no '
                    'pueden (o al menos no deben ser descubiertos) tener '
                    'relaciones sexuales, beber alcohol, comer carne, dulce, '
                    'lácteos o alimentos de fácil descomposición y a lo largo '
                    'del tekipanoa o trabajo ritual, están sujetos a ser '
                    'zurdos, no pueden hablar y tampoco deben alejarse de la '
                    'guardia, ya que la transgresión de estas normas es '
                    'castigada hincándolos sobre garbanzo, sal y azotes en la '
                    'espalda',
                    citation: 7,
                  ),
                  _image(
                    'chapayecas.jpg',
                    'Procesión de Chapayecas',
                    'Por respeto a los usos y costumbres de la tribu Yaqui, no '
                        'se integra material fotográfico o audiovisual '
                        'explícito relacionado a esta celebración tan '
                        'importante y emblemática. Título de la imagen: '
                        'Procesión de Chapayecas. Autor: Ted de Grazia',
                  ),
                  const _SectionHeading('La orden de los Chapayekas'),
                  _paragraph(
                    'Reciben este nombre a causa de la máscara que portan cuyo '
                    'nombre es chapala yekak o «nariz larga y puntiaguda». Los '
                    'chapayekas tradicionales o de mayor rango son los únicos '
                    'que portan máscaras con dibujos de flores, mientras los '
                    'demás las usan de diferentes personajes, como apaches, '
                    'negritos, payasos, «cholos» o centuriones romanos, todas '
                    'elaboradas con piel de chivo. Ellos representan a los '
                    'judíos que dieron muerte a Jesús y van a aparecer '
                    'caracterizados de esta manera con máscara de orejas '
                    'grandes y nariz de madera. Este cargo puede asumirse '
                    'desde niño a partir de los siete o diez años, impuesto '
                    'por padres o parientes allegados en caso de padecer una '
                    'enfermedad grave.',
                  ),
                  _paragraph(
                    'En el caso de los adultos, para ser Chapayekas se debe '
                    'estar casado por la iglesia, pues, se requiere de la '
                    'fuerza del matrimonio para poder personificar a la '
                    'maldad, ellos llevan ornamentada su espada y cuchillo con '
                    'imágenes de triángulos, y las sewa o flores, símbolo de '
                    'inocencia, se encuentran en la máscara; por su parte, '
                    'aquellos que sean jóvenes y/o solteros, ostentan el cargo '
                    'de cabos, su cuchillos y espadas tienen imágenes de '
                    'flores, además de que deben llevar la misma máscara de '
                    'animal por tres años consecutivos, para representar con '
                    'ello el misterio de la santísima trinidad: padre, hijo y '
                    'espíritu santo.',
                  ),
                  _paragraph(
                    'Durante la cuaresma, esta organización religiosa '
                    'sustituye a los cobanaos o «gobernadores tradicionales», '
                    'encargados del mando civil, con lo cual se da entrada y '
                    'legitimidad al kojtumbre como máxima instancia de '
                    'autoridad',
                    citation: 8,
                  ),
                  _image(
                    'Chapayeca.jpg',
                    'Chapayeka',
                    'Chapayeka. Museo Étnico de los Yaquis. Sala de fiestas '
                        'tradicionales. Fotógrafo: Olavo Rojas Vega',
                  ),
                  const _SectionHeading('Miércoles de ceniza'),
                  _paragraph(
                    'El miércoles de ceniza el maestro rezandero pone una '
                    'cruz de ceniza en la frente de quienes acuden a la '
                    'iglesia. El miércoles de tiniepla «tinieblas», empieza '
                    'cuando en la iglesia se han encendido doce velas que '
                    'representan «la luz del cielo». Aproximadamente a las dos '
                    'de la madrugada, cuando se apaga la última vela, de '
                    'inmediato se escucha un estruendoso golpeteo, las luces '
                    'de la iglesia se apagan por completo, mientras que la '
                    'tiniepla se ha concretado con la extinción de la luz y ha '
                    'dado entrada a la «oscuridad».',
                  ),
                  _paragraph(
                    'En la oscuridad, los participantes acuden a la búsqueda '
                    'de sus progenitores para hincarse delante de ellos, estos '
                    'últimos los esperan con un fuete o látigo para golpearlos '
                    'en la espalda mientras ellos agradecen los golpes '
                    'recibidos. Estos golpes simbolizan el perdón de los '
                    'pecados cometidos a lo largo del año.',
                  ),
                  _paragraph(
                    'Inmediatamente después del miércoles de ceniza, en el '
                    'primer viernes de Cuaresma comienzan los kontis, que '
                    'consisten en una procesión a través de un camino '
                    'alrededor del templo católico, en el sentido opuesto a '
                    'las manecillas del reloj. Siguen el camino del vía '
                    'crucis, donde se ubican catorce cruces de madera, con un '
                    'calvario formado por tres cruces. A partir de este primer '
                    'konti, cada viernes tendrá lugar otro hasta llegar el '
                    'Domingo de Ramos.',
                  ),
                  _image(
                    'diorama_semana_santa.jpg',
                    'Diorama de Semana Santa',
                    'Diorama de Semana Santa. Museo Étnico de los Yaquis. Sala '
                        'de fiestas tradicionales. Fotógrafo: Juan Casanova',
                  ),
                  const _SectionHeading('Viernes de Lázaro'),
                  _paragraph(
                    'Es el quinto viernes de Cuaresma donde los yaquis '
                    'alimentan a sus perros delante de la cruz, conocido como '
                    'Kus testiko wekame, principalmente les ofrecen atole y '
                    'comida como el wakabaki; cuando los están alimentando, '
                    'le amarran un listón colorido al cuello del perro de '
                    'donde sobresale el color rojo, también, truenan tres '
                    'cohetes en señal de haber cumplido con esta obligación. '
                    'Esta es una tradición surgida de principios de siglo XX; '
                    'a finales del mismo siglo, las familias yaquis hacen su '
                    'promesa de velar a San Lázaro después de haber superado '
                    'una enfermedad.',
                  ),
                  _image(
                    'comida.jpg',
                    'Wakabaki',
                    'Wakabaki. Fotográfo: Olavo Rojas Vega',
                  ),
                  const _SectionHeading('Domingo de Ramos'),
                  _paragraph(
                    'Después del viernes de dolores (sexto viernes de '
                    'cuaresma), la kojtumbre ya´ura se queda en el templo, '
                    'para de ahí salir a temprana hora el sábado a visitar a '
                    'las familias con la imagen de San Ramos (entrada triunfal '
                    'de Jesús a Jerusalén montado en un burro). Las familias '
                    'los recibirán de nuevo en el Kus testiko wekapo, muchos '
                    'de ellos le colgarán listones a la imagen.',
                  ),
                  _paragraph(
                    'Por la tarde-noche, la imagen será llevada a casa de una '
                    'familia yaqui, donde ya habrá una ramada tradicional '
                    'esperándolos con un pontal en el interior de ella. Más '
                    'tarde, la velación inicia con rezos, danzas del Pascola y '
                    'Venado. Cabe señalar que esta fiesta de San Ramos las '
                    'realiza cuatro parejas de fiesteros, conocidos como '
                    'naiki persona achai, naiki persona maala, o bien Pajkome '
                    '«los que están haciendo la fiesta».',
                  ),
                  _paragraph(
                    'Por la mañana, después de velar, la imagen de San Ramos '
                    'es llevada al templo donde después de repartir las palmas '
                    'se realiza un koba konti o «viacrucis» enfrente del atrio '
                    'representando así la llegada de Jesús a Jerusalén '
                    'montado en su burro.',
                  ),
                  _image(
                    'Ramada.jpg',
                    'Ramada',
                    'Ramada. Museo Étnico de los Yaquis. Área de servicios. '
                        'Fotógrafo: Juan Casanova',
                  ),
                  const _SectionHeading('Semana Santa'),
                  _paragraph(
                    'El Jueves Santo es la conmemoración de la última cena y '
                    'aprehensión de Jesús en el huerto de los Olivos. Este '
                    'suceso está personificado por un hombre de edad adulta '
                    'que encarna a Jesús, llamado Yoem o´ola o «el viejito». '
                    'Por la tarde, el viejito sale de la iglesia para reunirse '
                    'con doce niños, quienes harán de apóstoles, al terminar '
                    'esta representación se inicia la dramatización de la '
                    'aprehensión seguido por dos kontis, el primero, lo '
                    'realiza el viejito con una vara larga de mezquite fresco '
                    'en la mano azotando con ella a los fariseos o chapayekas '
                    'por todo el viacrucis, casi al termino, en la estación '
                    'catorce, los chapayekas encuentran y agreden físicamente '
                    'al viejito por lo que sus defensoras también con varas '
                    'largas de mezquite golpean a los chapayekas cuando '
                    'quieren acercarse; este personaje desaparece entonces '
                    'del escenario para dar lugar a Jesús el Nazareno, una '
                    'imagen como de un metro de altura, atada con dos sogas '
                    'al cuello y sostenida por dos chapayekas. Durante la '
                    'noche el Nazareno es vigilado por la Kojtumbre ya´ura, '
                    'los caballeros con rosario en mano tomando la soga rezan '
                    'al inicio de la velación. Los chapayekas lo harán de dos '
                    'en dos una vez que terminen los caballeros, tomando la '
                    'soga en sus manos y dialogando a través de señas con sus '
                    'armas de madera. Por último, terminan la noche vigilando '
                    'al Nazareno para que no escape.',
                  ),
                  _paragraph(
                    'El Viernes Santo es la jornada de mayor intensidad '
                    'ritual, por lo cual es también la más estricta en todos '
                    'los sentidos. En el interior de la iglesia se ha '
                    'preparado la ramada con unos botes llenos de tierra para '
                    'contener troncos macizos de álamo que cubren una gran '
                    'cruz con Jesús crucificado. Encabezados por pilatos, los '
                    'chapayekas y cabos irrumpen violentamente en el templo y '
                    'se preparan para el momento en que le darán muerte a '
                    'Jesús. Pilatos atraviesa el álamo con su lanza y la clava '
                    'en las costillas de Jesús: se ha consumado la muerte del '
                    'Nazareno. Los chapayekas corren intempestivamente fuera '
                    'de la iglesia y celebran la muerte de su enemigo. La '
                    'imagen de Jesús es bajada por cuatro hombres vestidos de '
                    'blanco conocidos como «varones», quienes serán los '
                    'encargados de levantar la urna con la imagen de Jesús en '
                    'su interior y hacer el viacrucis hasta el momento de la '
                    'resurrección en la media noche del sábado.',
                  ),
                  _paragraph(
                    'Todas las imágenes religiosas se cubren con una tela '
                    'negra y los presentes se acercan a depositar veladoras '
                    'encendidas alrededor de Jesús, ahora tendido, sin la cruz '
                    'y sobre una sábana blanca. Después lo colocan en el '
                    'ataúd o urna, cubierta de tul blanco con tres ramilletes '
                    'de flores amarillas y de colores; las flores simbolizan '
                    'la sangre de Jesús y las lágrimas de la Virgen María. '
                    'Cabe aclarar que a partir de este momento y durante el '
                    'viacrucis con la cruz sin la imagen de Jesús, toda '
                    'persona irá en la procesión sin portar cosas ostentosas '
                    'como reloj, anillos, lentes, etcétera. A las mujeres se '
                    'les pide soltarse el cabello.',
                  ),
                  _paragraph(
                    'El cuerpo de Cristo es velado toda la noche hasta la '
                    'madrugada del sábado, día en que se celebra «el encuentro '
                    'de la Virgen». Este ritual da comienzo con un konti, en '
                    'el sentido de las manecillas del reloj. Al salir de la '
                    'iglesia cargan a la Dolorosa con el luto puesto y '
                    'acompañada por un grupo de chapayekas, mientras a Jesús '
                    'lo escoltan otros fariseos en sentido contrario, cuando '
                    'ambos bandos se encuentran en la parte trasera del '
                    'templo, comienzan una pelea ritual en la que cada cual '
                    'trata de llevarse a un chapayeka opuesto a sus filas; las '
                    'caídas, jalones y empujones terminan cuando capturan un '
                    'número suficiente de contrarios; concluida la disputa, '
                    'la Dolorosa sale al encuentro de Jesús, que, al '
                    'percatarse de la resurrección de su hijo, se quita el '
                    'luto y ambos retoman su camino rumbo a la iglesia, cada '
                    'uno con los chapayekas capturados y los propios. Entonces '
                    'las cruces se levantan nuevamente, debido a la '
                    'resurrección de Jesús.',
                  ),
                  _image(
                    'Sontaom.jpg',
                    'Sontaom',
                    'Sontaom (soldados) durante un konti. Museo Étnico de los '
                        'Yaquis. Sala de fiestas tradicionales. Fotógrafo: '
                        'Juan Casanova',
                  ),
                  _image(
                    'Diorama-de-procesion.jpg',
                    'Diorama de konti / procesión',
                    'Diorama de konti / procesión. Museo Étnico de los Yaquis. '
                        'Sala de fiestas tradicionales. Fotógrafo: Juan '
                        'Casanova',
                  ),
                  _image(
                    'Mascara-de-chapayeca.jpg',
                    'Máscara de chapayeka',
                    'Máscara de chapayeka Museo Étnico de los Yaquis. Sala de '
                        'fiestas tradicionales. Fotógrafo: Juan Casanova',
                  ),
                  _image(
                    'Mascara-de-chapayeca2.jpg',
                    'Máscara de chapayeka',
                    'Máscara de chapayeka. Museo Étnico de los Yaquis. Sala '
                        'de fiestas tradicionales. Fotógrafo: Juan Casanova',
                  ),
                  _paragraph(
                    'El Sábado de Gloria es la ceremonia más importante para '
                    'la tribu, a temprana hora, los padrinos de los chapayekas '
                    'irán por ellos al templo, para llevarlos a desayunar a '
                    'casa de la madrina y después entregarlos de nuevo a su '
                    'cuartel. Posteriormente inicia el tradicional «recorrido '
                    'del malhumor», un konti dedicado a los niños, quienes van '
                    'acompañados por familiares o padrinos. El recorrido se '
                    'efectúa en el sentido de las manecillas del reloj y el '
                    'personaje principal es el Judas, un muñeco vestido a la '
                    'moda yori o mestiza, aunque con máscara de chapayeka y '
                    'sombrero. Los chapayekas hacen mofa del maestro litúrgico '
                    'y el ritual se vuelve lúdico e irreverente, al término '
                    'del konti colocan al delator a un costado de la ramada de '
                    'los caballeros, donde cada fariseo, en estricto orden '
                    'jerárquico, pone un cohete en el muñeco que habrá de '
                    'encenderse más tarde. En varios pueblos se acostumbra '
                    'hacer el ritual del sewa kauti o «deshojamiento de la '
                    'rama», mismo que harán las mujeres vírgenes; mientras se '
                    'hace este ritual, los maistros y cantoras entonan salmos '
                    'propios del momento.',
                  ),
                  _paragraph(
                    'Finalmente, los chapayekas se preparan a dar la batalla '
                    'final y así irrumpir en el «cielo», representado por una '
                    'sábana blanca que divide la nave principal del templo. '
                    'Detrás de la sábana se encuentran los angelitos y sus '
                    'madrinas, preparados con sewam «flores», utilizadas para '
                    'retener a los fariseos; el momento culminante llega '
                    'cuando el pilatos y los chapayekas hacen tres «glorias», '
                    'es decir, tres intentos de entrar al «cielo»; cada vez '
                    'que se abre, los angelitos lanzan flores a fin de '
                    'contenerlos; acto seguido, tras concluir las glorias, '
                    'pilatos y chapayekas corren hacia fuera, se deshacen de '
                    'máscaras y armas colocándolas alrededor del Judas, luego '
                    'sus padrinos atan un paño en el brazo de su ahijado y '
                    'corren descalzos hacia la iglesia para alcanzar el '
                    '«cielo», que les fue negado cuando eran fariseos.',
                  ),
                  _paragraph(
                    'A partir de la primera corrida del Sábado de Gloria, el '
                    'gobierno tradicional vuelve a alcanzar el fuero que '
                    'estuvo en recesión y en poder de la kojtumbre ya´ura. En '
                    'ese momento hace su aparición dentro de la iglesia el '
                    'Venado, Pascolas y por primera vez en la festividad los '
                    'matachines o soldados de la Virgen, para iniciar la '
                    'conmemoración de la «gloria» y el inicio de sus ciclos '
                    'rituales. Después de este suceso, uno de los capitanes '
                    'enciende la mecha que quemará al Judas, junto con los '
                    'sombreros, espadas y casi todas las máscaras utilizadas '
                    'ese año, excepto dos de las llamadas rape naka u «orejas '
                    'grandes», mismas que serán utilizadas para ponérsele al '
                    'Judas o durante una misa de cuerpo presente de algún '
                    'chapayeka que haya fallecido. Estas máscaras que no '
                    'fueron quemadas serán puestas viendo hacia atrás en la '
                    'parte superior del sombrero de los llamados juras '
                    'yo´owes o «chapayekas mayores».',
                  ),
                  _paragraph(
                    'El Domingo de Resurrección se forma a muy temprana hora '
                    'un camino muy frondoso con hojas de álamo y se coloca a '
                    'Jesús en la ramada hecha a un lado de las tres cruces que '
                    'se encuentran frente a la iglesia. Cuatro tenánchis, '
                    'jóvenes vestidas de blanco encargadas de cuidar las '
                    'imágenes de la virgen, la cargan y corren por el camino '
                    'de álamo; una vez que éstas han realizado el recorrido, '
                    'se juntan las imágenes religiosas con el danzante de '
                    'Venado, Pascolas, Matachines y el pueblo congregado para '
                    'concluir el ritual. Por último, cada grupo da las gracias '
                    'en su respectiva ramada por la culminación de sus '
                    'obligaciones y, al toque del tampaleo, oficiantes y '
                    'comunidad se disgregan rumbo al reposo de sus hogares',
                    citation: 9,
                  ),
                  _image('quema.jpg', 'Quema', ''),
                  const _SectionHeading('Referencias'),
                  for (var index = 0; index < _references.length; index++)
                    _CelebracionesReferenceItem(
                      number: index + 1,
                      reference: _references[index],
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _CelebracionesReference {
  const _CelebracionesReference({required this.text, this.url});

  final String text;
  final String? url;
}

class _CelebracionesReferenceItem extends StatelessWidget {
  const _CelebracionesReferenceItem({
    required this.number,
    required this.reference,
  });

  final int number;
  final _CelebracionesReference reference;

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme.bodyMedium?.copyWith(
          color: reference.url == null
              ? null
              : Theme.of(context).colorScheme.primary,
          decoration: reference.url == null ? null : TextDecoration.underline,
          height: 1.45,
        );

    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: InkWell(
        onTap: reference.url == null
            ? null
            : () => _openUrl(context, reference.url!),
        child: Text.rich(
          TextSpan(
            children: [
              TextSpan(text: '$number ${reference.text}'),
              if (reference.url != null)
                TextSpan(text: ' Recuperado de ${reference.url}'),
            ],
          ),
          style: style,
        ),
      ),
    );
  }
}

class _CelebracionesCitation extends StatelessWidget {
  const _CelebracionesCitation({required this.number});

  final int number;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
          _openUrl(context, CelebracionesReligiosasPage._referencesUrl),
      child: Text(
        '[$number]',
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: Theme.of(context).colorScheme.primary,
              decoration: TextDecoration.underline,
            ),
      ),
    );
  }
}

class MedicinaTradicionalPage extends StatelessWidget {
  const MedicinaTradicionalPage({super.key});

  static Widget _paragraph(String text) => _NarrativeParagraph.text(text: text);

  static Widget _image(
    String filename,
    String title,
    String? caption,
  ) {
    return _ExhibitionImage(
      figure: _ExhibitionFigure(
        title: title,
        asset: 'assets/exposiciones/medicina_tradicional/$filename',
        caption: caption,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Medicina tradicional')),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(20, 24, 20, 40),
        children: [
          Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1000),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Exposición',
                    style: theme.textTheme.labelLarge?.copyWith(
                      color: theme.colorScheme.primary,
                      letterSpacing: 1.2,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Medicina tradicional',
                    style: theme.textTheme.headlineMedium,
                  ),
                  const SizedBox(height: 16),
                  _paragraph(
                    'Para los Yaquis la enfermedad es un desequilibrio entre '
                    'el individuo y su relación con la divinidad, los espíritus, '
                    'la naturaleza y con la comunidad que lo rodea; el primer '
                    'impulso de la familia o allegado a un enfermo es buscar '
                    'esta estabilidad del organismo, aplicando ritos y '
                    'medicamentos naturales que pueden detener los causales '
                    'de la enfermedad o en su caso sanar.',
                  ),
                  _image(
                    'cosmogonia_yaqui.jpg',
                    '“Cosmogonía Yaqui”',
                    '/ Autor Julio Hernández Correa. En la cosmovisión yaqui '
                        'el equilibrio abarca desde lo espiritual hasta lo '
                        'físico. Museo Étnico de los Yaquis. Sala Cosmovisión. '
                        'Fotógrafo: Juan Casanova.',
                  ),
                  Center(
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 240),
                      child: _image(
                        'Tipico-altar-yaqui.jpg',
                        'Típico altar yaqui',
                        'Típico altar en casa de un curandero yaqui. Museo '
                            'Étnico de los Yaquis. Sala Medicina tradicional. '
                            'Fotógrafo: Juan Casanova',
                      ),
                    ),
                  ),
                  _paragraph(
                    'Un ejemplo fundamental para curar este desequilibrio es '
                    'el uso de promesas o «mandas» que se imponen a la persona '
                    'enferma. Una de estas mandas es persignar al enfermo como '
                    'caballero dentro de los cargos que se desarrollan en la '
                    'celebración de la Cuaresma, esto lo hacen con el objetivo '
                    'de ofrecerle a Dios una penitencia para que lo salve. La '
                    'manda durará toda la vida si es muy grave la enfermedad.',
                  ),
                  _paragraph(
                    'La permanencia actual de la medicina tradicional es una '
                    'práctica protegida por la iglesia yaqui y por las '
                    'autoridades tradicionales. La interacción entre la '
                    'naturaleza, religión y organización social permite la '
                    'reproducción del sistema médico y su práctica es un '
                    'elemento primordial de unión a través del tiempo.',
                  ),
                  _paragraph(
                    'Todos los conocimientos de medicina tradicional han sido '
                    'trasmitidos mediate la práctica por generaciones y en '
                    'otros casos por mandato divino, mediante sucesos '
                    'sobrenaturales, similares a la adquisición de dones como '
                    'la danza o música.',
                  ),
                  _image(
                    'curandera.jpg',
                    'Curandera',
                    'Curandera. Museo Étnico de los Yaquis. Sala Medicina '
                        'tradicional. Fotógrafo: Juan Casanova',
                  ),
                  _paragraph(
                    'La medicina tradicional utilizada por la tribu se divide '
                    'en dos grandes grupos: la casera y la especializada. La '
                    'medicina casera es el conocimiento práctico que se tiene '
                    'de la herbolaria con una serie de clasificaciones de las '
                    'plantas según sus cualidades, diferenciándolas de la '
                    'siguiente manera: frías-calientes, amargas-dulces, '
                    'rojas-blancas, buenas-malas, etc.',
                  ),
                  _paragraph(
                    'La medicina tradicional de especialistas la realizan '
                    'terapeutas yaquis con conocimientos mágico-religiosos de '
                    'las enfermedades. Se clasifica en tres campos: el natural, '
                    'el psico-religioso y el sobrenatural. Los especialistas '
                    'en este tipo de medicina son: curanderos, hierberos, '
                    'espiritistas, parteras, sobadores de escurrimientos, de '
                    'mollera y de tripa ida, hueseros y espirituales. Los '
                    'jitébim «curanderos», tocan primero el lado derecho del '
                    'cuerpo que van a sanar; la razón, es porque ese lado '
                    'corresponde al bien en el cuerpo humano, mientras que el '
                    'lado izquierdo, es del mal. Existen jitebim que utilizan '
                    'plantas, animales y minerales como recursos terapéuticos; '
                    'otros solamente emplean vegetales mezclados con cantos, '
                    'alabanzas y rezos.',
                  ),
                  const _SectionHeading(
                    'Algunas plantas de uso herbolario utilizadas por la tribu Yaqui',
                  ),
                  _image(
                    'Choya.jpg',
                    'Choya',
                    'Choya. Museo Étnico de los Yaquis. Sala Medicina '
                        'tradicional. Fotógrafo: Juan Casanova',
                  ),
                  const _SectionHeading('Choya'),
                  _paragraph(
                    'Es una cactácea que prolifera en la zona serrana y valle '
                    'del territorio yaqui. Crece a una altura de dos o tres '
                    'metros, tiene un color verde grisáceo, se da en tiempo '
                    'de lluvias, su flor es de color rojo.',
                  ),
                  _paragraph(
                    '1. La raíz sirve para curar el Dolor de riñón: se pone a '
                    'cocer en 5 Lts. de agua y se toma como uso común. Se '
                    'sigue el tratamiento el tiempo necesario mientras '
                    'persista el malestar.',
                  ),
                  _paragraph(
                    '2. Disentería: la choya se tatema en brazas, se le '
                    'quitan los alguates y se comen con sal, puede comer la '
                    'cantidad necesaria.',
                  ),
                  const _SectionHeading('Ocotillo'),
                  _image('Ocotillo.jpg', 'Ocotillo', null),
                  _paragraph(
                    'Es una planta de zonas serranas sobre terreno pedregoso, '
                    'crece a una altura de tres o cuatro metros, su cáscara es '
                    'rugosa y pulposa de un color verde amarillento, se da en '
                    'marzo y abril.',
                  ),
                  _paragraph(
                    'Sarna: se utiliza la cáscara, se machaca muy bien y se '
                    'le agrega sal. Con la mezcla se frota la zona afectada '
                    'y deja sobre la herida utilizando un vendaje.',
                  ),
                  const _SectionHeading('Mezquite'),
                  _image(
                    'Mezquite.jpg',
                    'Mezquite',
                    'Prosopis velutina (Wooton) o mezquite. Fuente: Renatura '
                        'Sonora. Fotógrafo: Narciso Navarro.',
                  ),
                  _paragraph(
                    'Crece en las partes bajas de la sierra y en el valle; '
                    'tiene una altura de cuatro a cinco metros, es de color '
                    'verde obscuro y de corteza rugosa. Florea en el mes de '
                    'abril en un color amarillo. El fruto se da en vaina '
                    'mediate racimos.',
                  ),
                  _paragraph(
                    '1. Dolor de muelas. – se corta un trozo de cáscara y se '
                    'utiliza su pulpa y se coloca directamente en la muela '
                    'picada como tapón.',
                  ),
                  _paragraph(
                    '2. Nauseas.- se mastica su hoja y se traga el jugo.',
                  ),
                  _image(
                    'Vinorama.jpg',
                    'Vinorama',
                    'Vinorama. Museo Étnico de los Yaquis. Sala Medicina '
                        'tradicional. Fotógrafo: Juan Casanova',
                  ),
                  _image(
                    'Sangregado.jpg',
                    'Sangregado',
                    'Sangregado. Museo Étnico de los Yaquis. Sala Medicina '
                        'tradicional. Fotógrafo: Juan Casanova',
                  ),
                  _image(
                    'Barchata.jpg',
                    'Barchata',
                    'Barchata. Museo Étnico de los Yaquis. Sala Medicina '
                        'tradicional. Fotógrafo: Juan Casanova',
                  ),
                  _image(
                    'Semilla-de-guasima.jpg',
                    'Semilla de guásima',
                    'Semilla de guásima. Museo Étnico de los Yaquis. Sala '
                        'Medicina tradicional. Fotógrafo: Juan Casanova',
                  ),
                  _image(
                    'Rama-cenizo.jpg',
                    'Rama cenizo',
                    'Rama cenizo. Museo Étnico de los Yaquis. Sala Medicina '
                        'tradicional. Fotógrafo: Juan Casanova',
                  ),
                  _image(
                    'Fruto-de-sibiri.jpg',
                    'Fruto de sibiri',
                    'Fruto de sibiri. Museo Étnico de los Yaquis. Sala '
                        'Medicina tradicional. Fotógrafo: Juan Casanova',
                  ),
                  _image(
                    'Nono.jpg',
                    'Nóno',
                    'Nóno. Museo Étnico de los Yaquis. Sala Medicina '
                        'tradicional. Fotógrafo: Juan Casanova',
                  ),
                  _image(
                    'Rocio.jpg',
                    'Rocío',
                    'Rocío. Museo Étnico de los Yaquis. Sala Medicina '
                        'tradicional. Fotógrafo: Juan Casanova',
                  ),
                  _image(
                    'Torote-prieto.jpg',
                    'Torote prieto',
                    'Torote prieto. Museo Étnico de los Yaquis. Sala Medicina '
                        'tradicional. Fotógrafo: Juan Casanova',
                  ),
                  _image(
                    'Batamote.jpg',
                    'Batamote',
                    'Batamote. Museo Étnico de los Yaquis. Sala Medicina '
                        'tradicional. Fotógrafo: Juan Casanova',
                  ),
                  _image(
                    'Wereke.jpg',
                    'Wereke',
                    'Wereke. Museo Étnico de los Yaquis. Sala Medicina '
                        'tradicional. Fotógrafo: Juan Casanova',
                  ),
                  _image(
                    'Chicura.jpg',
                    'Chicura',
                    'Chicura. Museo Étnico de los Yaquis. Sala Medicina '
                        'tradicional. Fotógrafo: Juan Casanova',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
