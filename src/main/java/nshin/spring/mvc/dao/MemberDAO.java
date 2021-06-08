package nshin.spring.mvc.dao;

import nshin.spring.mvc.vo.Member;
import nshin.spring.mvc.vo.Zipcode;

import java.util.List;

public interface MemberDAO {

//    String newMember(Member m);
//    String findZipcode(String dong);
//    String checkUserid(String uid);
//    boolean checkLogin(Member m, HttpSession sess);

    int insertMember(Member m);
    List<Zipcode> selectZipcode(String dong);
    int selectOneUserid(String uid);
    int selectLogin(Member m);
}
