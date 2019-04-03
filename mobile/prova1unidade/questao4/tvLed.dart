import 'controleRemoto.dart';
import 'tv.dart';

class TvLed extends Tv implements ControleRemoto{
  bool smartTv;

  TvLed(int tamanho, int canal, int volume, this.smartTv) : super.fromTv(tamanho, canal, volume);

  @override
  void aumentarVolume() {
    setVolume(getVolume()+1);
    print('Operação Aumentar Volume na Tv Led: ${getVolume()}');
  }

  @override
  void diminuirVolume() {
    setVolume(getVolume()-1);
    print('Operação Diminuir Volume na Tv Led: ${getVolume()}');
  }

  @override
  void mudarCanal(int canal) {
    setCanal(canal);
    print('Operação Mudar de canal na Tv Led: ${getCanal()}');
  }

}