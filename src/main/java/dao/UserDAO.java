package dao;


import model.User;

import java.util.HashMap;
import java.util.Map;

public class UserDAO<map> {
    private static Map<String, User> map = new HashMap<String, User>() {{
        put("jagaa", new User("jagaa", "jagaa", "Building 143, High Rise"));
        put("julia", new User("julia", "julia", "Hilderbrand Hall, HH"));
        put("admin", new User("admin", "admin", "Admin address"));
    }};
//    private static int idCount = 3;
    private UserDAO() { }

//    public int createId() {
//        return idCount++;
//    }

    public static User createUser(String username, String password, String address) {
        User user =  new User(username, password, address);
//        map.put(createId(), user);
        map.put(username, user);
        return user;
    }

//    public User getUserById(int id) {
//        return map.get(id);
//    }

    public static User getUserByUsername(String username) {
        return map.get(username);
    }
}
