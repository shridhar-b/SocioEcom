package com.metech.socialmedia.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.metech.socialmedia.domain.Product;

@Repository
public interface ProductRepository extends JpaRepository<Product, Integer>
{
	@Query("from Product where (fromAge <= :fromAge and toAge >= :toAge) or interest like :interest or marital = :marital")
	public List<Product> findProduct(@Param("fromAge")int fromAge,@Param("toAge") int toAge, @Param("interest") String interest,@Param("marital") String marital);
	
}
