
import 'dart:io';

void main(){
  var mulai =true;

  Book().tampilAwal();

  stdout.write('Pilih Menu (1/2/3) : ');
  stdout.write('Masukkan Judul Buku : ');
  var inputTitle = stdin.readLineSync()!;
  stdout.write('Masukkan Penulis Buku : ');
  var inputAuthor = stdin.readLineSync()!;
  stdout.write('Masukkan Tahun terbit Buku : ');
  var inputYear = int.tryParse(stdin.readLineSync()!);

  var book = Book(title: inputTitle, author: inputAuthor, year: inputYear );

  
  
  var perpus = Library();
  perpus.addBook(book);
  perpus.displayBooks();
 
}

class Book {
  String? title;
  String? author;
  int? year;
  bool isBorrowed = false;

  Book({this.author, this.title, this.year});

  borrowBook(){
    if (isBorrowed == true) {
      print('Buku sudah dipinjam!');
    } else {
      isBorrowed = true;
      print('Buku dipinjam');
    }
  }

    tampilAwal(){
    print('===========================');
    print('      ONLINE LIBRARY      ');
    print('===========================');
  }
    
    menu(){
      print('1. Tambahkan Buku ke Perpustakaan ');
      print('2. Tampilkan Seluruh Buku yang ada di Perpustakaan ');
    }

}

class Library {
  List<Book> books = [];

  addBook(Book inputBook){
    books.add(inputBook); 
  }

  displayBooks(){
    for (var element in books) {
      print('${element.title} |  ${element.author} | ${element.year} | ${element.isBorrowed == true ? 'Buku sudah dipinjam' : 'Tersedia'}');
    }
  }

  borrowBook(String judul){
    for (var element in books) {
      if (judul == element.title) {
        element.borrowBook();
      }
    }
  }

}