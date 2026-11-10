void main(){
  var baju1 = Pakaian(warna: 'biru' , jenis: 'celana');
  baju1.cetak();



}

class Pakaian {
  String? jenis;
  String? warna;

  //1. positional indirect argument
  // Pakaian(String inputJenis, String inputWarna){
  //   this.jenis = inputJenis;
  //   this.warna = inputWarna;
  // }

  //2. positional direct argument
  // Pakaian(this.jenis , this.warna);

  //3. indirect named argument
  // Pakaian({String? inputJenis , String? inputWarna}){
  //   this.jenis = inputJenis;
  //   this.warna = inputWarna;
  // }

  //4. direct named argument
  Pakaian({this.jenis , this.warna});
  cetak(){
    print('Jenis pakaian ini adalah $jenis dan berwarna $warna');
    
  }
}