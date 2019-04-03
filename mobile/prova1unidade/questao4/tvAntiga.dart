import 'controleRemoto.dart';
import 'tv.dart';

class TvAntiga extends Tv implements ControleRemoto{
  String modelo;

  TvAntiga(int tamanho, int canal, int volume, this.modelo) : super.fromTv(tamanho, canal, volume);

  @override
  void aumentarVolume() {
    setVolume(getVolume()+1);
    print('Operação Aumentar Volume na Tv Antiga: ${getVolume()}');
  }

  @override
  void diminuirVolume() {
    setVolume(getVolume()-1);
    print('Operação Diminuir Volume na Tv Antiga: ${getVolume()}');
  }

  @override
  void mudarCanal(int canal) {
    setCanal(canal);
    print('Operação Mudar de canal na Tv Antiga: ${getCanal()}');
  }

}