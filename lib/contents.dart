import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import './config.dart';
import './views/image_view.dart';

enum Author { ernesto, yeni, otro }

class Content {
  String _title;
  String _assetPath;
  String _text;
  Author _author;
  IconData _icon;

  Content({title, assetPath, text, author, icon})
      : _title = title ?? "No title",
        _assetPath = assetPath ?? "images/default.png",
        _text = text ?? "Lorem ipsum dolor sit amet",
        _icon = icon ?? IconData(0xe87c, fontFamily: 'icomoon'),
        _author = author ?? Author.otro;

  Author get author => _author;

  String get text => _text;

  String get assetPath => _assetPath;

  String get title => _title;

  IconData get icon => _icon;

  @override
  String toString() {
    return 'Content{_title: $_title, _author: $_author}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Content &&
          runtimeType == other.runtimeType &&
          _title == other._title &&
          _text == other._text &&
          _author == other._author;

  @override
  int get hashCode => _title.hashCode ^ _text.hashCode ^ _author.hashCode;
}


List<Content> contentList = <Content>[
  new Content(
    title: "B",
    author: Author.otro,
    text: """
    Te guardo en un rincón, donde el polvo no toca
    Y me acuesto a tu lado, aunque nunca me vez.
    Sera que la distancia, me agota los sentidos.
    Y me guardo el silencio, para poderte oír.
    
    ¿Qué hago con este humo que llena mi cabeza?
    ¿Cómo puedo salvarte si me empiezo a perder?
    ¿Cómo hago para dormirme, cuando no estoy despierto?
    ¿Cómo hago para engañarme si no te puedo ver?
    Si ahora llevo las manos, con tantas cicatrices.
    Y si he rodado tanto y no pido perdón.
    Si no voy a cambiar, si no escucho consejos, si no voy a callarme,
    aunque pierda la fe.
    
    Si sigo enamorado, de las causas perdidas.
    Si soy feliz con casi, todo lo que desee.
    Si tengo la cabeza, más dura que los huesos.
    Y si no pido agua aunque muera de sed.
    Siempre digo que soy, el que más te ha querido.
    Siempre digo que cambio, pero nunca fue así.
    Y tú que eres la dueña, de todas las canciones.
    De las que te amo tanto, de las que no también.
    Y tú que eres la dueña, de todas las canciones.
    ¿Cómo es posible entonces, que me puedas querer?
   """,
  assetPath: "images/photos/ANTES004.jpg",
  )  ,
  //TODO ANTESSSS...............................
  new Content(), // 1
  new Content(title: "Soñe una isla", author: Author.ernesto,
      text: """
    Soñé una isla
    "La más hermosa del mundo"...
    Soñé tambien una mujer,
    capaz de congelar el tiempo 
    De quitarle los colores al mundo... 
    Despertar fue más difícil que sentir.....
   """, icon: Icons.message, assetPath: 'images/photos/ANTES000.jpg'
  ),
  new Content(title: "Allí te espero...", author: Author.yeni,
      text: """
    En los atardeceres que dibujo para ti...
    En la melodía de Silvio.
    ...los versos de Neruda....
    Te espero en el umbral de mis sueños...
    En mi Luna mágica. 
    En páginas por escribir...
    Te espero sin equipaje....sin palabras.
    Sin preguntas.....
    Solos......tú y yo.
   """, icon: Icons.wifi,
  ),
  new Content(title: "Stalker", author: Author.ernesto,
      text: """
      El aullido de los lobos me recuerda mi instinto de cazador.
      Mis extremidades se funden con las sombras,
      la brisa nocturna trae consigo aroma de Mujer....
   """, icon: Icons.message, assetPath: 'images/photos/ANTES001.jpg'
  ),
  new Content(title: "Starry night", author: Author.ernesto,
      text: """
      Miro al cielo en esta noche estrellada...
      pienso en ti,
      en todas esas veces que me pides la Luna.
      Si tan sólo una noche te sentaras conmigo a verla.
      Miro nuevamente al cielo...
      Que pequeña se ve "Nuestra Isla" desde aquí arriba... 
   """, icon: Icons.message, assetPath: 'images/photos/ANTES004.jpg'
  ),
  new Content(title: "Cuartetp de versos", author: Author.otro,
      text: """
      Por: Ernesto Alfonso
      
      No importa que tan oscuro este el mundo 
      si tienes par de amigas que combierten en luz las palabras 
      y con esa luz congelan en el tiempo, 
      para siempre y de golpe 
      la felicidad que se esconde tras la sombra 
      de aquellos que no pueden verla
      
      Por Laura Suárez Díaz
      
      Entonces habrá luz por doquier
      Habrá luz incluso cuando dejemos de existir
      Pues mi amistad viene en un frasco si fecha de caducidad
      
      Por: Haniel Cáceres Navarro
      
      Y también habrá silencios
      Sombras, asfalto, mar,
      Luces, delirio, secretos, sueños,
      Recuerdos, anhelos, caracoles,
      Versos, canciones, papalotes,
      Todo será cómplice 
      Del sonido de un rayo de sol.
      
      Por: YeniMiranda
      
      .....y yo dichoza aparezco en sus vidas para llenarme de toda esa magia que respiran...
      Soy solo espectadora admirada de encontrar tanta Alma en simple materia.....
      El umbral de todo lo invisible a los ojos.....
      Gracias a ustedes por contagiarme de delirio....
   """, icon: Icons.message, assetPath: 'images/photos/ANTES002.jpg'
  ),
  new Content(title: "Un solo mar...", author: Author.yeni,
      text: """
      Mirando el mar de mis sueños.....escuchando Drexler y Sabina....
      en una tarde preciosa con una noche que pinta para ser perfecta....
      Frente al mismo mar de mis amigos.
      Saludos y linda noche 
   """, icon: Icons.message, assetPath: 'images/photos/ANTES003.jpg'
  ),
  // TODO DE YENI
  new Content(), // 8
  new Content(title: "7 de Mayo", author: Author.yeni,icon: const IconData(0xe9006, fontFamily: 'icomoon') ,text: """
      .....El umbral de la mañana presagia un día eterno,
      Esculpido con la magia del más grande romance,
      Mariposas aletean cada roce de sus manos
      Como una profecía en la cumbre de los siglos....
      Ya existía...
      Aun si haber nacido...
      Lejanas generaciones venían tejiéndolo,
      Recogiendo en cada poesía la más hermosa palabra
      Que nos unieron en el tiempo. 
      Y allí estaba....
      Vibrante y abrazador
      Como la llama encendida que moldea el hierro,
      Quema, sana y se expande hacia cada rincón inédito del alma....
      Es el recuento de todos mis sueños, 
      Un hombre; tan inmenso; que el cielo se me hace pequeño.
      Improviso cualquier halo que me lleve hacia sus besos..
      .para dormirme en ellos; blanca y trémula; 
      Como la tierna paloma que recorre el universo con su mensaje de Amor 
      Hasta llegar extasiada a la cálida desnudez de su mirada....
      Todo lo previo cumplió su propósito, 
      Labró el camino hacia sus manos.
      Guardo entonces mi pasado en archivos..
      Traigo cientos de páginas en blanco..
      Escribo fecha, hora, su nombre....y destella el verbo...
      Lo tangible se hace etéreo...
      Los instantes narran versos...
      Su cuerpo renace en metáforas....
      Comienza una historia..
      "Única en el Mundo"  
      """),
  new Content(title: "Volvernos a encontrar", author: Author.yeni, text: """
      De mi....
      No esperes más que mi mundo transparente…
      Mi exceso de sentimientos...
      Mi locura irracional....
      Mi creatividad desatinada...
      Mi apoyo en todos los momentos....
      Mi dulzura empalagosa...
      Mi sonrisa inquebrantable....
      
      De ti...
      No espero más que: 
      Ver tus ojos encendidos.
      Sentirte Feliz, Realizado, Orgulloso, Seguro....
      
      De nosotros....
      Espero perder la noción del tiempo.
      Inventar un dialecto mágico solo nuestro....
      Fundir ambos propósitos en un sueño común....
      Mirarnos como un espejo el Alma sin maquillajes...
      Transitar el universo tomados de la mano...
      Y así abrir todas las puertas que encontremos en el camino...
      
      Espero que esta Vida nos sea tan extraordinaria....
      Que queramos en la otra Vida...
      Volvernos a encontrar
    """),
  new Content(title: "Para ti mi amor 1", author: Author.yeni, text: """
      Su forma interrumpe la luz…contornos armoniosos delinean una foto…suya...hacia el horizonte...Mía...desde un ángulo en que observo lo esencial detrás de este instante nuestro. Su silueta no es apenas una figura discontinua…es tiempo suyo en mis manos…manos juntas componiendo lo que llaman: Amor por las pequeñas cosas…como su nombre en mis labios...o mis ojos en sus ojos....por sencillo, extraordinario todo lo que representa su perfecta compañía...su manera de encender mis sueños; como nadie; entre magia y sonrisas. Comprendo entonces el sentido de las palabras tiernas…De ser para alguien mucho más que una persona...un ser importante...
    """, assetPath: 'images/photos/FUM-4.jpg'),
  new Content(title: "Para ti mi amor 2", author: Author.yeni, text: """
      Gotas de agua sobre la piel que Amo...
      Otro Poema con luces...Quizás mi verbo no habría ido tan lejos...o tal vez si...pero ahí estaba:
      En mis pupilas dilatadas por sus reflejos...componiendo un suspiro de "Arte"
      Y qué es esta sino...todo lo extraordinario que de repente nos cautiva...se pronuncia e impulsa la creatividad subjetiva...desde un volcán de emociones incontenidas?....
      Entonces, robé con mi lente la ilusión de las palabras...y puse rostro al verso de una sonrisa...
    """, assetPath: 'images/photos/FUM-5.jpg'),
  new Content(title: "Para ti mi amor 3", author: Author.yeni, text: """
      Decir Te Amo me resulta insuficiente, resumo lo que eres a sólo mis sentimientos…Pero Eres mucho más de cuánto puedo abarcar…Eres luz, gracia, armonía...despliegue de emociones como acordes componiendo la melodía perfecta de lo que; en mi criterio; debiera ser cada persona que ame la Vida...
    """, assetPath: 'images/photos/FUM001.jpg'),
  new Content(title: "Para ti mi amor 4", author: Author.yeni, text: """
      A veces me vuelvo redundante, monotemática...hago pausa oxigenante sobre algún motivo que de repente me inspira....Más allá de luces y sombras, de formas y matices, narro un mundo que solo yo conozco...fibras subjetivas que hilvanan fotografías, cuando; con ojos del Alma; me observo dentro...
      Allí nace el arte, el verbo, eslabones de un mañana en sueños que valen la pena conquistar...Palabras que solo yo entiendo porque solo a mí me pertenecen...Voz entrecortada... manos temblorosas...Geografía del rostro que gritan mis silencios...
    """, assetPath: 'images/photos/FUM002.jpg'),
  new Content(title: "Para ti mi amor 5", author: Author.yeni, text: """
      Mis sabanas estrujadas siguen narrando noches…y días…y tardes ensartando hilos de nuestras vidas…Tejiendo el recuerdo de un retrato en mi mente cuando soñaba besos con sabor a él...y le estrenaba sonrisas...le rozaba la espalda...sabiendo que llegaría desde algún sitio...recogería los trozos regados del pasado; y como un artista; restauraría mi Amor. Desde entonces no existen horas grises...El tiempo vuela prendida a sus brazos contando momentos escapados de algún libro...entre verso y melodía...entre su mundo y el mío la corta distancia de cientos de caricias...aprendiéndonos despacio...ocupando los rincones que aún estaban vacíos...Es a mi medida exacta...inventamos un lenguaje complejo y propio…estrofas compuestas de emociones, del sentir en las pequeñas cosas; por simples grandiosas. Tomados de la mano el mañana es infalible...tablero de ganadores...festival de ilusiones...desde el presente más hermoso imaginable…desde los besos más profundos que había dado…desde esos ojos que con rozarme me atrapan, me revuelcan, me sumergen y regresan impregnada en la delicia de su olor sobre mi piel....
    """, assetPath: 'images/photos/FUM003.jpg'),
  new Content(title: "Para ti mi amor 6", author: Author.yeni, text: """
      ¡No es tiempo de muchas palabras...es tiempo de acción...De experimentar sensaciones antes vividas solo con el pensamiento...y qué maravilla quedar enmudecida de satisfacción!!!...sintiéndote cerca en los momentos más importantes. 
      Comprendo entonces que el Amor trasciende al verbo...colma mis sueños y aleja cualquier vestigio de la palabra "Imposible". Por eso renazco todas las mañanas; tomada de tu mano; con la esperanza más verde que los mares y las montañas...Feliz de compartir contigo mucho que más besos y caricias....
    """, assetPath: 'images/photos/FUM004.jpg'),
  new Content(title: "Sacrificios", author: Author.yeni, text: """
      Tiraría mis tacones para no sobrepasarte...
      Borraría mi experiencia para no adivinarte...
      Cambiaría mis credos para no contrariarte...
      Y no es falta de seguridad Amor...
      No es falta de criterio....
      Es que contigo surgen nuevos argumentos...
      Me encantas desde el pelo a los pies...
      Desde tu sonrisa hasta tu beso...
      Desde tu Alma hasta tu cuerpo...
      Amo tus defectos sin conocerlos...
      Tu personalidad, tus palabras, tu ingenio...
      Amo tus manos jugando con mis curvas...
      Tu saliva extasiando mi lujuria...
      Amo tus ojos como espejos....
      hablándome en versos....
    """, assetPath: 'images/photos/CERRADO001.jpg'),
  new Content(title: "Eres", author: Author.yeni, text: """
      Mi doble sentido y mí sentido común....
      Mi locura y mi sensatez...
      La simbiosis de mis extremos en tu centro...
      La letra y la melodía...
      Mi canción de Amor...
      Mi espacio y mis vacíos....
      Mi silencio y mi voz...
      Mi recorrido del Alma al cuerpo...
      Eres
      Mis deseos conjugados....
      Mis acentos, mis paréntesis...
      Mi ternura en puntos suspensivos...
      Mi Pasión sin punto final....
    """),
  //TODO DE ERNESTO
  new Content(), //19
  //TODO DE OTROS
  new Content(title: "Deseo", author: Author.otro, text: """
      Que la vida no vaya más allá de tus brazos. 
      Que yo pueda caber con mi verso en tus brazos,
      que tus brazos me ciñan entera y temblorosa
      sin que afuera se queden ni mi sol ni mi sombra. 
      Que me sean tus brazos horizonte y camino,
      camino breve, y único horizonte de carne;
      que la vida no vaya más allá... 
      ¡Que la muerte se parezca 
      a esta muerte caliente de tus brazos!...
      --Dulce Maria Loynaz
    """,
      assetPath: 'images/photos/CERRADO001.jpg',
      icon: IconData(0xe900, fontFamily: 'icomoon')
  ),
];


BehaviorSubject<Content> contentsSubject = new BehaviorSubject(
    seedValue: contentList[0]
);


int passInvalid(int pos, int add){
  pos = pos + add;
  if(pos == 19 || pos == 8 || pos == 1){
    return pos + (1 * add);
  } else {
    return pos;
  }
}

void onSelectContent(Content content){
    contentsSubject.add(content);
}

void onNextContent(int i){
  if(i < contentList.length){
    int n = passInvalid(i, 1);
    contentsSubject.add(contentList[n]);
  } else {
    contentsSubject.addError(Exception("Indice incorrecto"));
  }
}


void onPrevContent(int i){
  if(i > 0){
    int n = passInvalid(i, -1);
    contentsSubject.add(contentList[n]);
  } else {
    contentsSubject.addError(Exception("Indice incorrecto"));
  }
}


class ContentWidget extends StatelessWidget {
  Content content;

  ContentWidget(this.content);

  @override
  Widget build(BuildContext context) {

    int index = contentList.indexOf(content);

    return Padding(
      padding: EdgeInsets.fromLTRB(24.0, 42.0, 24.0, 12.0),
      child: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Center(
                  child: GestureDetector(
                    onTap: (){
                      debugPrint("TAPPED ON PICTURE WITH TAG: "+ content.assetPath);
                      Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context) => new ImageView(content.assetPath)));
                    },
                    child: new Hero(
                      tag: content.assetPath,
                      child: Container(
                        width: MediaQuery.of(context).size.shortestSide * .4,
                        height: MediaQuery.of(context).size.shortestSide * .4,
                        margin: EdgeInsets.only(bottom: 8.0),
                        child: DecoratedBox(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                image: DecorationImage(
                                    image: AssetImage(content.assetPath),
                                    fit: BoxFit.fill)
                            )
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Text(content.title, style: contentTitleStyle.copyWith(fontSize: 14.0), ),
                ),
                Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                    content.text,
                    style: contentTextStyle.copyWith(background: Paint()..color = Colors.black54),
                    textAlign: TextAlign.justify,
                  ),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: (index < contentList.length && index >= 0) ? IconButton(
                icon: Icon(Icons.arrow_forward,
                  size: MediaQuery.of(context).size.shortestSide * 0.1,
                  color: Colors.amberAccent,),
                onPressed: (){
                  debugPrint(" >>>>  Pressed on Next $index");
                  onNextContent(index);
                }
            ) :
            IconButton(
                icon: Icon(Icons.arrow_forward,
                  size: MediaQuery.of(context).size.shortestSide * 0.1,
                  color: Colors.black26,),
                onPressed: null
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: index > 0 ? IconButton(
                icon: Icon(Icons.arrow_back,
                  size: MediaQuery.of(context).size.shortestSide * 0.1,
                  color: Colors.amberAccent,),
                onPressed: (){
                  debugPrint(" >>>>  Pressed on Prev $index");
                  onPrevContent(index);
                }
            ) :
            IconButton(
                icon: Icon(Icons.arrow_back,
                  size: MediaQuery.of(context).size.shortestSide * 0.1,
                  color: Colors.black26,),
                onPressed: null
            ),
          ),
        ],
      ),
    );
  }
}
