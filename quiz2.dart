void main(){
  var manusia1 = Manusia(nama: 'Fedrick Orlando', berat: 60, pendidikan: 'S1', tinggi: 180, umur: 19);
    manusia1.cetak();

}

class Manusia {
  String? nama;
  num? umur;
  num? tinggi;
  num? berat;
  String? pendidikan;

//   Manusia(String inputNama, num inputUmur, num inputTinggi, num inputBerat, String? inputPendidikan){
//     this.nama = inputNama;
//     this.umur = inputUmur;
//     this.tinggi = inputTinggi;
//     this.berat = inputBerat;
//     this.pendidikan = inputPendidikan;
//   }

//   Manusia(this.nama, this.umur, this.tinggi, this.berat, this.pendidikan );

//     Manusia({String? inputNama, num? inputUmur, num? inputTinggi, num? inputBerat, String? inputPendidikan}){
//     this.nama = inputNama;
//     this.umur = inputUmur;
//     this.tinggi = inputTinggi;
//     this.berat = inputBerat;
//     this.pendidikan = inputPendidikan;
//   }

    Manusia({this.nama, this.umur, this.tinggi, this.berat, this.pendidikan} );

    cetak(){
    print('Nama Manusia ini adalah $nama');
    print('Umur Manusia ini adalah $umur');
    print('Tinggi Manusia ini adalah $tinggi');
    print('Berat Manusia ini adalah $berat');
    print('Pendidikan Manusia ini adalah $pendidikan');
    
  }
  
}