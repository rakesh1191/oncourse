package oncourse.model.dao;

import oncourse.model.User;

public interface UserDao {

    User getUser( Long id );

    User getUserByCin( String cin );

    User getUserByUsername( String username );

    User saveUser( User user );

}
