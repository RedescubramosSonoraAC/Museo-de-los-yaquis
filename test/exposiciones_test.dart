import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:museo/Exposiciones.dart';
import 'package:museo/MyDrawer.dart';
import 'package:museo/ThemeChanger.dart';
import 'package:provider/provider.dart';

void main() {
  testWidgets('muestra el contenido completo de Cosmovisión', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(home: CosmovisionPage()),
    );
    await tester.pumpAndSettle();

    expect(
      find.image(
        const AssetImage(
          'assets/exposiciones/cosmovision/Cosmogonia_Yaqui.jpg',
        ),
      ),
      findsOneWidget,
    );
    expect(find.text('“Cosmogonía Yaqui”'), findsOneWidget);
    expect(
      find.textContaining('/ Autor Julio Hernández Correa. Museo Étnico'),
      findsOneWidget,
    );
    expect(
      find.textContaining(
        'la continua lucha por su autodeterminación y la defensa de su Toosa',
      ),
      findsOneWidget,
    );
    expect(tester.takeException(), isNull);

    await tester.scrollUntilVisible(
      find.text('El mural'),
      400,
      scrollable: find.byType(Scrollable).first,
    );
    await tester.pumpAndSettle();

    expect(find.text('El mural'), findsOneWidget);
    expect(
      find.image(
        const AssetImage('assets/exposiciones/cosmovision/nuestro_cielo.jpg'),
      ),
      findsOneWidget,
    );
    expect(
      find.textContaining('choki ania “mundo de las estrellas”'),
      findsOneWidget,
    );
    expect(
      find.textContaining('/ Fragmento del mural “Cosmogonía Yaqui”'),
      findsOneWidget,
    );
    expect(tester.takeException(), isNull);

    await tester.scrollUntilVisible(
      find.text('El Yo´o jo´aram “mundo de los encantos”'),
      400,
      scrollable: find.byType(Scrollable).first,
    );
    await tester.pumpAndSettle();
    expect(
      find.image(
        const AssetImage(
          'assets/exposiciones/cosmovision/mundo_de_los_encantos.jpg',
        ),
      ),
      findsOneWidget,
    );

    await tester.scrollUntilVisible(
      find.text('Itom Achai "nuestro padre"'),
      400,
      scrollable: find.byType(Scrollable).first,
    );
    await tester.pumpAndSettle();
    expect(
      find.image(
        const AssetImage('assets/exposiciones/cosmovision/nuestro_padre.jpg'),
      ),
      findsOneWidget,
    );

    await tester.scrollUntilVisible(
      find.text('Itom Aye "nuestra madre"'),
      400,
      scrollable: find.byType(Scrollable).first,
    );
    await tester.pumpAndSettle();
    expect(
      find.image(
        const AssetImage('assets/exposiciones/cosmovision/nuestra_madre.jpg'),
      ),
      findsOneWidget,
    );

    await tester.scrollUntilVisible(
      find.text('Los Surem'),
      400,
      scrollable: find.byType(Scrollable).first,
    );
    await tester.pumpAndSettle();

    expect(find.text('Los Surem'), findsOneWidget);
    expect(
      find.textContaining('podían vivir hasta 500 años'),
      findsOneWidget,
    );
    expect(tester.takeException(), isNull);

    await tester.scrollUntilVisible(
      find.text('Referencias'),
      400,
      scrollable: find.byType(Scrollable).first,
    );
    await tester.pumpAndSettle();

    expect(find.text('Referencias'), findsOneWidget);
    expect(find.textContaining('Las seis referencias'), findsNothing);
    expect(
      find.textContaining('Plan de Justicia para el Pueblo Yaqui'),
      findsOneWidget,
    );
    await tester.scrollUntilVisible(
      find.textContaining('Rojo Valencia, Tomás. (2017).'),
      400,
      scrollable: find.byType(Scrollable).first,
    );
    await tester.pumpAndSettle();
    expect(
      find.textContaining('Rojo Valencia, Tomás. (2017).'),
      findsOneWidget,
    );
    expect(tester.takeException(), isNull);
  });

  testWidgets('muestra Religiosidad con imágenes y referencias completas',
      (tester) async {
    tester.view.physicalSize = const Size(1200, 1800);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    await tester.pumpWidget(
      const MaterialApp(home: ReligiosidadPage()),
    );
    await tester.pumpAndSettle();

    expect(find.text('Religiosidad'), findsNWidgets(2));
    expect(
      find.textContaining('la monarquía española únicamente concebía'),
      findsOneWidget,
    );

    const imagePaths = [
      'corografia_jesusita.jpg',
      'camino_arbol_sagrado.jpg',
      'bandera_yaqui.jpg',
      'danzante_matachin.png',
      'ocho_pueblos_yaquis.jpg',
      'iglesia_Pueblo_Vicam.jpg',
      'virgen_de_la_dolorosa.jpg',
      'sagrado_corazon_de_jesus.jpg',
      'vestimenta_luto_yaqui.png',
      'funeral_yaqui.jpg',
      'nuestro_cielo.jpg',
    ];

    for (final imageName in imagePaths) {
      final image = find.image(
        AssetImage('assets/exposiciones/religiosidad/$imageName'),
      );
      await tester.scrollUntilVisible(
        image,
        500,
        scrollable: find.byType(Scrollable).first,
      );
      await tester.pumpAndSettle();
      expect(image, findsOneWidget, reason: imageName);
      if (imageName == 'virgen_de_la_dolorosa.jpg') {
        expect(
          find.ancestor(
            of: find.text('Vírgen de la Dolorosa'),
            matching: find.byType(Row),
          ),
          findsOneWidget,
        );
      }
    }

    await tester.scrollUntilVisible(
      find.text('Referencias'),
      500,
      scrollable: find.byType(Scrollable).first,
    );
    await tester.pumpAndSettle();
    const referenceChecks = [
      'Bejarano Almada, Ma. de Lourdes. (2016).',
      'Rincón Castellano (s.f.).',
      'Creatividad y sincretismo en un ritual yaqui',
      'ibid., p. 26',
      'Federación. p. 41.',
      'Abbondanza, Ermanno. (2009).',
      'Universitat Autònoma de Barcelona. p. 151.',
      'Olavarría, María Eugenia. op. cit., p. 72',
      'Castro Silva, Tonatiuh. (2011).',
      'op. cit., p. 8',
      'op. cit., p. 149',
      'op. cit., p. 74',
      'Universitat Autònoma de Barcelona. p. 152.',
    ];
    for (final reference in referenceChecks) {
      final referenceFinder = find.textContaining(reference);
      await tester.scrollUntilVisible(
        referenceFinder,
        400,
        scrollable: find.byType(Scrollable).first,
      );
      await tester.pumpAndSettle();
      expect(referenceFinder, findsOneWidget, reason: reference);
    }
    expect(tester.takeException(), isNull);
  });

  testWidgets('acomoda las imágenes de santos en pantallas móviles',
      (tester) async {
    tester.view.physicalSize = const Size(400, 900);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    await tester.pumpWidget(
      const MaterialApp(home: ReligiosidadPage()),
    );
    await tester.pumpAndSettle();

    await tester.scrollUntilVisible(
      find.text('Vírgen de la Dolorosa'),
      350,
      scrollable: find.byType(Scrollable).first,
    );
    await tester.pumpAndSettle();
    expect(
      find.ancestor(
        of: find.text('Vírgen de la Dolorosa'),
        matching: find.byType(Column),
      ),
      findsWidgets,
    );
    expect(
      find.image(
        const AssetImage(
          'assets/exposiciones/religiosidad/virgen_de_la_dolorosa.jpg',
        ),
      ),
      findsOneWidget,
    );
    expect(
      find.image(
        const AssetImage('assets/exposiciones/religiosidad/'
            'sagrado_corazon_de_jesus.jpg'),
      ),
      findsOneWidget,
    );
    expect(tester.takeException(), isNull);
  });

  testWidgets('muestra el artículo completo de Danza y música', (tester) async {
    tester.view.physicalSize = const Size(400, 900);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    await tester.pumpWidget(
      const MaterialApp(home: DanzaMusicaPage()),
    );
    await tester.pumpAndSettle();

    expect(find.text('Danza y música'), findsNWidgets(2));
    expect(
      find.textContaining('No se puede entender la religiosidad'),
      findsOneWidget,
    );
    const kobanao = AssetImage(
      'assets/exposiciones/danza_musica/Kobanao.jpg',
    );
    await tester.scrollUntilVisible(
      find.image(kobanao),
      250,
      scrollable: find.byType(Scrollable).first,
    );
    await tester.pumpAndSettle();
    expect(find.image(kobanao), findsOneWidget);
    expect(
      find.textContaining('Sala de fiestas tradicionales. Fotógrafo: Juan'),
      findsOneWidget,
    );
    await tester.scrollUntilVisible(
      find.textContaining('El concepto «música» no existe'),
      400,
      scrollable: find.byType(Scrollable).first,
    );
    await tester.pumpAndSettle();
    expect(
        find.textContaining('El concepto «música» no existe'), findsOneWidget);
    await tester.scrollUntilVisible(
      find.textContaining('Para realizar gran parte de las músicas'),
      400,
      scrollable: find.byType(Scrollable).first,
    );
    await tester.pumpAndSettle();
    expect(find.textContaining('cantos antifonales'), findsOneWidget);
    await tester.scrollUntilVisible(
      find.text('Mito del origen de la música'),
      400,
      scrollable: find.byType(Scrollable).first,
    );
    await tester.pumpAndSettle();

    await tester.scrollUntilVisible(
      find.text('Actualidad'),
      500,
      scrollable: find.byType(Scrollable).first,
    );
    await tester.pumpAndSettle();
    expect(find.textContaining('Maaso Yiijua'), findsOneWidget);
    expect(find.text('[6]'), findsOneWidget);

    await tester.scrollUntilVisible(
      find.text('Danza de Pascola'),
      500,
      scrollable: find.byType(Scrollable).first,
    );
    await tester.pumpAndSettle();
    expect(find.textContaining('continuidad y persistencia física'),
        findsOneWidget);
    final pascolaImage = find.image(
      const AssetImage(
        'assets/exposiciones/danza_musica/danzante_pascola.jpg',
      ),
    );
    await tester.scrollUntilVisible(
      pascolaImage,
      400,
      scrollable: find.byType(Scrollable).first,
    );
    await tester.pumpAndSettle();
    expect(pascolaImage, findsOneWidget);
    expect(find.textContaining('Teneboim o» Tenábaris»'), findsOneWidget);

    await tester.scrollUntilVisible(
      find.text('Danza del Matachín'),
      500,
      scrollable: find.byType(Scrollable).first,
    );
    await tester.pumpAndSettle();
    expect(find.textContaining('soldados de la Virgen'), findsOneWidget);
    await tester.scrollUntilVisible(
      find.textContaining('Matachín Kóna'),
      400,
      scrollable: find.byType(Scrollable).first,
    );
    await tester.pumpAndSettle();
    expect(find.textContaining('Matachín Kóna'), findsOneWidget);
    final matachinImage = find.image(
      const AssetImage(
        'assets/exposiciones/danza_musica/sonaja_de_matachin.jpg',
      ),
    );
    await tester.scrollUntilVisible(
      matachinImage,
      400,
      scrollable: find.byType(Scrollable).first,
    );
    await tester.pumpAndSettle();
    expect(matachinImage, findsOneWidget);

    await tester.scrollUntilVisible(
      find.text('Danza de coyote'),
      500,
      scrollable: find.byType(Scrollable).first,
    );
    await tester.pumpAndSettle();
    expect(find.textContaining('danza ancestral de origen prehispánico'),
        findsOneWidget);
    final coyoteImage = find.image(
      const AssetImage(
        'assets/exposiciones/danza_musica/danzante_de_coyote.jpg',
      ),
    );
    await tester.scrollUntilVisible(
      coyoteImage,
      400,
      scrollable: find.byType(Scrollable).first,
    );
    await tester.pumpAndSettle();
    expect(coyoteImage, findsOneWidget);

    await tester.scrollUntilVisible(
      find.text('Chapayecas o fariseos'),
      500,
      scrollable: find.byType(Scrollable).first,
    );
    await tester.pumpAndSettle();
    await tester.scrollUntilVisible(
      find.textContaining('vuelven a ser humanos'),
      350,
      scrollable: find.byType(Scrollable).first,
    );
    await tester.pumpAndSettle();
    expect(find.textContaining('vuelven a ser humanos'), findsOneWidget);
    await tester.scrollUntilVisible(
      find.text('[16]'),
      300,
      scrollable: find.byType(Scrollable).first,
    );
    await tester.pumpAndSettle();
    expect(find.text('[16]'), findsOneWidget);
    final chapayecaImage = find.image(
      const AssetImage(
        'assets/exposiciones/danza_musica/espada_chapayeca.jpg',
      ),
    );
    await tester.scrollUntilVisible(
      chapayecaImage,
      400,
      scrollable: find.byType(Scrollable).first,
    );
    await tester.pumpAndSettle();
    expect(chapayecaImage, findsOneWidget);

    await tester.scrollUntilVisible(
      find.text('Referencias'),
      500,
      scrollable: find.byType(Scrollable).first,
    );
    await tester.pumpAndSettle();
    for (final reference in [
      '1. Varela Ruiz, Leticia T. (2013).',
      '2. Olmos Aguilera, Miguel. (2002).',
      '3. Comisión Presidencial de Justicia para el Pueblo Yaqui. (2020).',
      '4. Sánchez Pichardo, Pablo. (2012).',
      '5. Mesri Hashemi-Dilmaghani, Parastoo Anita;',
      '6. Comisión Presidencial de Justicia para el Pueblo Yaqui. (2020).',
      '7. Lerma Rodríguez, Enriqueta. (2016).',
      '8. Abbondanza, Ermanno. (2009).',
      '9. Olavarría, María Eugenia. (1995).',
      '10. Abbondanza, Ermanno. op. cit., p. 315.',
      '11. Lerma Rodríguez, Enriqueta. op. cit., p. 21.',
      '12. Olavarría, María Eugenia. op. cit., p. 75.',
      '13. Partida Tayzan, Armando. (2017).',
      '14. Olavarría, María Eugenia. op. cit., p. 75.',
      '15. Varela Ruiz, Leticia T. op. cit., p. 286.',
      '16. Lerma Rodríguez, Enriqueta. op. cit., p. 58.',
    ]) {
      final referenceFinder = find.textContaining(reference);
      await tester.scrollUntilVisible(
        referenceFinder,
        350,
        scrollable: find.byType(Scrollable).first,
      );
      await tester.pumpAndSettle();
      expect(referenceFinder, findsOneWidget, reason: reference);
    }

    await tester.scrollUntilVisible(
      find.text('Créditos'),
      500,
      scrollable: find.byType(Scrollable).first,
    );
    await tester.pumpAndSettle();
    await tester.scrollUntilVisible(
      find.textContaining('Mirko Marzadro (ITESCA)'),
      300,
      scrollable: find.byType(Scrollable).first,
    );
    await tester.pumpAndSettle();
    expect(find.textContaining('Mirko Marzadro (ITESCA)'), findsOneWidget);
    await tester.scrollUntilVisible(
      find.text('Agradecimientos'),
      300,
      scrollable: find.byType(Scrollable).first,
    );
    await tester.pumpAndSettle();
    await tester.scrollUntilVisible(
      find.textContaining('Guadalupe Beatriz Aldaco Encinas'),
      300,
      scrollable: find.byType(Scrollable).first,
    );
    await tester.pumpAndSettle();
    expect(
      find.textContaining('Guadalupe Beatriz Aldaco Encinas'),
      findsOneWidget,
    );
    await tester.scrollUntilVisible(
      find.textContaining('Martha Patricia Patiño Fierro'),
      300,
      scrollable: find.byType(Scrollable).first,
    );
    await tester.pumpAndSettle();
    expect(
      find.textContaining('Martha Patricia Patiño Fierro'),
      findsOneWidget,
    );
    expect(tester.takeException(), isNull);
  });

  testWidgets('muestra Celebraciones religiosas con sus imágenes y referencias',
      (tester) async {
    tester.view.physicalSize = const Size(400, 900);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    await tester.pumpWidget(
      const MaterialApp(home: CelebracionesReligiosasPage()),
    );
    await tester.pumpAndSettle();

    expect(find.text('Celebraciones religiosas'), findsNWidgets(2));
    expect(
      find.textContaining('la Toosa y los espacios espirituales'),
      findsOneWidget,
    );
    expect(
      find.textContaining('los dos polos se invierten'),
      findsOneWidget,
    );

    const imageNames = [
      'Calendario_de_fiestas.jpg',
      'Ciclo-ritual-anual.jpg',
      'Maqueta-de-danzas.jpg',
      'Estandarte-fiesteros-azules.jpg',
      'Estandartes-rojos.jpg',
      'BODA_YAQUI.png',
      'TORTILLAS.png',
      'Virgen.jpg',
      'chapayecas.jpg',
      'Chapayeca.jpg',
      'diorama_semana_santa.jpg',
      'comida.jpg',
      'Ramada.jpg',
      'Sontaom.jpg',
      'Diorama-de-procesion.jpg',
      'Mascara-de-chapayeca.jpg',
      'Mascara-de-chapayeca2.jpg',
      'quema.jpg',
    ];

    for (final imageName in imageNames) {
      final image = find.image(
        AssetImage(
          'assets/exposiciones/celebraciones_religiosas/$imageName',
        ),
      );
      await tester.scrollUntilVisible(
        image,
        450,
        scrollable: find.byType(Scrollable).first,
      );
      await tester.pumpAndSettle();
      expect(image, findsOneWidget, reason: imageName);
    }

    for (final heading in [
      'Ceremonias patronales',
      'Fiesteros',
      'Fiestas familiares',
      'Comida Festiva',
      'Fiestas tradicionales',
      'Waejma / Cuaresma',
      'La orden de los Chapayekas',
      'Miércoles de ceniza',
      'Viernes de Lázaro',
      'Domingo de Ramos',
      'Semana Santa',
      'Referencias',
    ]) {
      final headingFinder = find.text(heading);
      await tester.scrollUntilVisible(
        headingFinder,
        450,
        scrollable: find.byType(Scrollable).first,
      );
      await tester.pumpAndSettle();
      expect(headingFinder, findsOneWidget, reason: heading);
    }

    for (final reference in [
      'Olavarría, Ma. Eugenia. (2000).',
      'ibid. p. 55',
      'Lerma Rodríguez, Enriqueta. (2016).',
      'Restor Rodríguez, María M. (2017).',
      'Merino González, Erica C. (2013).',
      'ibid., p. 176',
    ]) {
      final referenceFinder = find.textContaining(reference);
      await tester.scrollUntilVisible(
        referenceFinder,
        450,
        scrollable: find.byType(Scrollable).first,
      );
      await tester.pumpAndSettle();
      expect(referenceFinder, findsOneWidget, reason: reference);
    }

    expect(tester.takeException(), isNull);
  });

  testWidgets('muestra Gobierno con sus imágenes y referencias',
      (tester) async {
    tester.view.physicalSize = const Size(400, 900);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    await tester.pumpWidget(const MaterialApp(home: GobiernoPage()));
    await tester.pumpAndSettle();

    expect(find.text('Gobierno'), findsNWidgets(2));
    expect(
      find.textContaining('mandar obedeciendo los preceptos del pueblo'),
      findsOneWidget,
    );

    const imageNames = [
      'Organizacion-politica-y-religiosa.png',
      'Juramento-de-capitan.jpg',
      'corografia_jesuita.jpg',
      'temastian.jpg',
      'tenanchi.jpg',
      'Vara-de-mando.jpg',
      'GOBERNADOR_01.jpg',
      'Juramento-de-gobernador.jpg',
      'Ubicacion-del-pueblo-en-recintos-sagrados.jpg',
      'Lazaro.jpg',
      'Estandarte-militar.jpg',
      'Bandera-Yaqui.jpg',
    ];

    for (final imageName in imageNames) {
      final image = find.image(
        AssetImage('assets/exposiciones/gobierno/$imageName'),
      );
      await tester.scrollUntilVisible(
        image,
        450,
        scrollable: find.byType(Scrollable).first,
      );
      await tester.pumpAndSettle();
      expect(image, findsOneWidget, reason: imageName);
    }

    for (final heading in [
      'Teocracia',
      'Gobierno tradicional',
      'La kojtumbre ya´ura',
      'Jiak Bantea / Bandera Yaqui',
      'Referencias',
    ]) {
      final headingFinder = find.text(heading);
      await tester.scrollUntilVisible(
        headingFinder,
        450,
        scrollable: find.byType(Scrollable).first,
      );
      await tester.pumpAndSettle();
      expect(headingFinder, findsOneWidget, reason: heading);
    }

    for (final reference in [
      'Comisión Presidencial de Justicia para el Pueblo Yaqui.',
      'Restor Rodríguez, María M. (2017).',
      'Ibid., p. 136',
      'Padilla Ramos, Raquel. (2020).',
      'Olavarría, María Eugenia. (1995).',
      'Ibid., p. 138',
    ]) {
      final referenceFinder = find.textContaining(reference);
      await tester.scrollUntilVisible(
        referenceFinder,
        450,
        scrollable: find.byType(Scrollable).first,
      );
      await tester.pumpAndSettle();
      expect(referenceFinder, findsOneWidget, reason: reference);
    }

    expect(
      find.textContaining('Azul: orgullo, vigor y valentía de la raza.'),
      findsOneWidget,
    );
    expect(
      find.textContaining('Líderes yaquis con Lázaro Cárdenas. Fuente:'),
      findsOneWidget,
    );
    expect(tester.takeException(), isNull);
  });

  testWidgets('abre Gobierno desde el menú', (tester) async {
    tester.view.physicalSize = const Size(400, 1000);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    await tester.pumpWidget(
      ChangeNotifierProvider(
        create: (_) => ThemeChanger(ThemeData()),
        child: MaterialApp(
          routes: {
            '/exposiciones/gobierno': (context) => const GobiernoPage(),
          },
          home: Scaffold(
            appBar: AppBar(),
            drawer: MyDrawer(),
          ),
        ),
      ),
    );

    await tester.tap(find.byTooltip('Open navigation menu'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Exposiciones'));
    await tester.pumpAndSettle();
    final governmentTile = find.text('Gobierno');
    await tester.scrollUntilVisible(
      governmentTile,
      300,
      scrollable: find.byType(Scrollable).first,
    );
    await tester.tap(governmentTile);
    await tester.pumpAndSettle();

    expect(find.text('Gobierno'), findsNWidgets(2));
    expect(tester.takeException(), isNull);
  });

  testWidgets('limita el ancho de las imágenes verticales de Gobierno',
      (tester) async {
    tester.view.physicalSize = const Size(1400, 1000);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    await tester.pumpWidget(const MaterialApp(home: GobiernoPage()));
    await tester.pumpAndSettle();

    for (final imageName in [
      'Juramento-de-capitan.jpg',
      'Estandarte-militar.jpg',
    ]) {
      final image = find.image(
        AssetImage('assets/exposiciones/gobierno/$imageName'),
      );
      await tester.scrollUntilVisible(
        image,
        450,
        scrollable: find.byType(Scrollable).first,
      );
      await tester.pumpAndSettle();
      expect(tester.getRect(image).width, lessThanOrEqualTo(420));
    }

    expect(tester.takeException(), isNull);
  });

  testWidgets('limita el contenido en pantallas amplias', (tester) async {
    tester.view.physicalSize = const Size(1400, 1000);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    await tester.pumpWidget(
      const MaterialApp(home: CelebracionesReligiosasPage()),
    );
    await tester.pumpAndSettle();

    final calendar = find.image(
      const AssetImage(
        'assets/exposiciones/celebraciones_religiosas/'
        'Calendario_de_fiestas.jpg',
      ),
    );
    expect(tester.getRect(calendar).width, lessThanOrEqualTo(1000));
    expect(tester.takeException(), isNull);
  });

  testWidgets('abre Celebraciones religiosas desde el menú', (tester) async {
    tester.view.physicalSize = const Size(400, 1000);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    await tester.pumpWidget(
      ChangeNotifierProvider(
        create: (_) => ThemeChanger(ThemeData()),
        child: MaterialApp(
          routes: {
            '/exposiciones/celebraciones-religiosas': (context) =>
                const CelebracionesReligiosasPage(),
          },
          home: Scaffold(
            appBar: AppBar(),
            drawer: MyDrawer(),
          ),
        ),
      ),
    );

    await tester.tap(find.byTooltip('Open navigation menu'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Exposiciones'));
    await tester.pumpAndSettle();
    final celebrationsTile = find.text('Celebraciones religiosas');
    await tester.scrollUntilVisible(
      celebrationsTile,
      300,
      scrollable: find.byType(Scrollable).first,
    );
    await tester.tap(celebrationsTile);
    await tester.pumpAndSettle();

    expect(find.text('Celebraciones religiosas'), findsNWidgets(2));
    expect(tester.takeException(), isNull);
  });
}
