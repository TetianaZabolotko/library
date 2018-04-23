package ua.kiyv.training.library.controller;

import ua.kiyv.training.library.dao.connection.DaoConnection;
import ua.kiyv.training.library.dao.connection.Jdbc.JdbcTransactionHelper;
import ua.kiyv.training.library.model.Author;
import ua.kiyv.training.library.model.Book;
import ua.kiyv.training.library.model.Role;
import ua.kiyv.training.library.model.User;
import ua.kiyv.training.library.service.AuthorService;
import ua.kiyv.training.library.service.BookService;
import ua.kiyv.training.library.service.Impl.UserServiceImpl;
import ua.kiyv.training.library.service.ServiceFactory;
import ua.kiyv.training.library.service.UserService;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;
import java.util.Optional;

/**
 * Created by Tanya on 17.04.2018.
 */
public class App {
    public static void main(String[] args) {
//        User user=new User("Tania","Zabolotko","wariushas@gmail","097394476","qwert", Role.USER);
//        UserService userService =  ServiceFactory.getInstance().createUserService();
////        userService.create(user);
////        System.out.println( userService.findById(2));
////       System.out.println( userService.findAll());
////        System.out.println(userService.getUserByEmailPassword("admin@gmail.com","java1love"));
//
       BookService bookService = ServiceFactory.getInstance().createBookService();
////        AuthorService authorService = ServiceFactory.getInstance().createAuthorService();
////        Book book =new Book("tuiyi","hhhh","jhkj",4,true,3,1978,1,"hffj,hfhf");
////book.setId(1);
////book.setTitle("RED STARS");
////      bookService.create(book);
////bookService.update(book);
////        System.out.println(bookService.findAll());
////        System.out.println(bookService.findById(1));
        bookService.delete(100);
//        System.out.println(bookService.findAllGenres());
//        DaoConnection connection = JdbcTransactionHelper.getInstance().getConnection();
//        try {
//            Statement statement = connection.createStatement();
//            statement.executeUpdate("DELETE FROM book_author WHERE book_id = 100");
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
    }
}
