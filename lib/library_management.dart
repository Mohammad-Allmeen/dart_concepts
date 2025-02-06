
// UML diagram it is a way to represent complex software design or know about the flow the data by the diagram before building the software
// to know which class is connected what and where the method is used
import 'dart:io';

void main(){
  Book b1= Book('1984', 'George Orwell', '123456789', true );
  Book b2= Book('GOT', 'Harpern Lee', '1234567890', true);

  Library l1 =Library();
  l1.addBook(b1); // here we are using the b1 and b2 object of Book class to add the books
  l1.addBook(b2);

  l1.listBook();

  print('\n');

  Member m1 = Member(name: 'Mohammad Allmeen', memID: 'M001');

  l1.loanBook(b1, m1); // b1 object book is allotted to the m1 member
  l1.listBook();
  l1.listloanbook();

  l1.editbooks(b1, '1966');



}

// BOOK CLASS

class Book{
  String title; // static variable
  String author;
  String isbn;
  bool isAvailable;

  Book(this.title, this.author, this.isbn,this.isAvailable); //Constructor

}

// LIBRARY CLASS

class Library {
  List<Book> books = []; // <Book> is the object of the Book class
  List<Loan> loans = [];

  //

  void addBook(Book book) {
    books.add(book); // add is in build method to add value in the list
  }

// function to list all the books available

  void listBook() {
    print('---list all the books in the library---');

    for (var book in books) { // var book is variable created which will run in the books list above
      print('Title: ${book.title}, Author: ${book.author}, ISBN: ${book
              .isbn}, Available: ${book.isAvailable}');
    }
  }

  // function to give the book for lone if available

  void loanBook(Book book, Member member) {
    if (book.isAvailable) {
      book.isAvailable = false;
      loans.add(Loan(book, member, DateTime
          .now())); //add is a inbuild method to add any value in the list
    } else {
      print('${book.title} is not available');
    }
  }

  void listloanbook() {
    print('Books given on the loan are-');
    for (var loan in loans) {
      print(
          'Title: ${loan.book.title}, Author: ${loan.book.author}, ISBN: ${loan
              .book.isbn}, Available: ${loan.book.isAvailable}');
    }
  }

  // Method to edit a book's title using user input
  void editbooks(Book book, String newTitle) {
    book.title= newTitle;
    print ('the new title for the book is ${newTitle}');
  }
}
// MEMBER CLASS



class Member{
  String name;
  String memID;

  Member({required this.name, required this.memID});
}

class Loan{
  Book book;
  Member member;
  DateTime loanDate;

  Loan (this.book, this.member, this.loanDate, ); //[this.returntime]);

  void returnbooks(){
    // returntime = DateTime.now();

    book.isAvailable = true;
  }
}
