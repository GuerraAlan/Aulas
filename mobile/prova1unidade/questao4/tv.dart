class Tv {
  int _tamanho, _canal, _volume;

  Tv();
  Tv.fromTv(this._tamanho, this._canal, this._volume);

  int getTamanho() => _tamanho;

  int getCanal() => _canal;
  void setCanal(int canal) => this._canal = canal;

  int getVolume() => _volume;
  void setVolume(int volume) => this._volume = volume;

}