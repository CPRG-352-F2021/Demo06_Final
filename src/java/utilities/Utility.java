
package utilities;

import database.UserDB;
import java.util.List;
import models.User;

public class Utility {
    
    private UserDB userDB;
    private final String path;
    
    public Utility(String path) {
        this.path = path;
    }
    
    public int getMaxPageNumber(int pageSize) throws Exception {
        userDB = new UserDB(path);
        List<User> allUsers = userDB.getAllUsers();
        int maxPageNum = (allUsers.size() / pageSize);
        System.out.println(maxPageNum);
        return maxPageNum;
    }
}
