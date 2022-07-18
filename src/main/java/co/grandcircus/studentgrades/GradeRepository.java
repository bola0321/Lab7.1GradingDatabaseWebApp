package co.grandcircus.studentgrades;

import org.springframework.data.mongodb.repository.MongoRepository;

public interface GradeRepository extends MongoRepository<Grade,String>{

}
