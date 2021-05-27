package com.example.demo.persistence;

import com.blueteam.bluequiz.entities.QuizResult;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface QuizResultRepository extends MongoRepository<QuizResult, String> {
}
