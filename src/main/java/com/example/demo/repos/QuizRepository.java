package com.example.demo.repos;

import com.example.demo.domain.Quiz;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface QuizRepository extends CrudRepository<Quiz, Long> {

    List<Quiz> findByTag(String tag);

}