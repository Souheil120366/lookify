package com.codingdojo.mvc.repositories;

//import java.awt.print.Pageable;
import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.codingdojo.mvc.models.Song;

@Repository
public interface SongRepository extends CrudRepository <Song, Long> {
	
 // this method retrieves all the songs from the database
 List<Song> findAll();
 
 // this method finds songs with artists containing the search string
 List<Song> findByArtistContaining(String search);
 
 // this method counts how many titles contain a certain string
 Long countByTitleContaining(String search);
 
 // this method deletes a song that starts with a specific title
 Long deleteByTitleStartingWith(String search);
 
//Retrieve a list of songs by rating and sorted
 Page<Song> findAllByOrderByRatingDesc(Pageable pageable);
 
}

