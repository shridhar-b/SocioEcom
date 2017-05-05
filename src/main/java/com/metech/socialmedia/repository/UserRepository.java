package com.metech.socialmedia.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.metech.socialmedia.domain.User;

@Repository
public interface UserRepository extends JpaRepository<User, Integer>
{
	@Query("from User where username =:username")
	public User findByUsername(@Param("username") String username);
	
	@Query("from User where username =:username and password =:password")
	public User findByUsernameAndPassword(@Param("username") String username,@Param("password") String password);
}
