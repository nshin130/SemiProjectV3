package nshin.spring.mvc.service;

import nshin.spring.mvc.vo.Gallery;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

public interface GalleryService {

    boolean newGal(Gallery g, MultipartFile[] img); //그림올리는거?
    List<Gallery> readGal(String cp); //그림목록 출력
    Gallery readOneGal(String gno); // 한개의 그림 출력

    void modifyGal(Gallery g, MultipartFile[] img);
}
