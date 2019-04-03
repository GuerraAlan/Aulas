import 'dart:math';
List<String> _unidades = ['um', 'dois', 'tres', 'quatro', 'cinco', 'seis', 'sete', 'oito', 'nove'];
List<String> _dezenas = ['dez', 'vinte', 'trinta', 'quarenta', 'cinquenta', 'sessenta', 'setenta', 'oitenta', 'noventa'];
List<String> _centenas = ['cento', 'duzentos', 'trezentos', 'quatrocentos', 'quinhentos', 'seiscentos', 'setecentos', 'oitocentos', 'novecentos'];

void main(){
  int numero = new Random().nextInt(999)+1;
  print(numero);
  print(numero%2  == 0 ? 'Par':'Impar');
  //Caso único para manter o cento e xxx
  if(numero == 100){
    print('cem');
    return;
  }

  Map<int, String> mapa = new Map();

  for(int i = 0; i < 9; i++){
    mapa[i+1] = _unidades[i];
    mapa[(i+1)*10] = _dezenas[i];
    mapa[(i+1)*100] = _centenas[i];
  }

  int centena = numero - (numero%100);
  int dezena = (numero - centena) - (numero%10);
  int unidade = numero - dezena - centena;

  print('$centena, $dezena, $unidade');

  List<String> sb = [];
  if (centena > 0) sb.add(mapa[centena]);
  if (dezena > 0) sb.add(mapa[dezena]);
  if (unidade > 0) sb.add(mapa[unidade]);
  print(sb.join(' e '));
}