class TavlaFactory {
  late Tavla tavla;

  Tavla getInstance() {
    if (tavla == null) {
      tavla = Tavla();
    }
    return tavla;
  }
}

class Tavla {
  Tavla();
}
