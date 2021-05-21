package com.example.demo.repos;

import com.example.demo.domain.User;
import org.springframework.data.repository.CrudRepository;

public interface UserRepository extends CrudRepository<User, Long> {
    User findByUsername(String username);
    User findByActivationCode(String code);
}