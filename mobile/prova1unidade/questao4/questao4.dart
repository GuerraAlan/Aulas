import 'tvAntiga.dart';
import 'tvLed.dart';

void main(){
  TvAntiga antiga = new TvAntiga(27, 10, 10, 'CRT');

  antiga.aumentarVolume();
  antiga.diminuirVolume();
  antiga.mudarCanal(20);

  TvLed nova = new TvLed(32, 44, 15, true);

  nova.aumentarVolume();
  nova.diminuirVolume();
  nova.mudarCanal(20);

}