package com.codingdojo.mvc.services;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;
import com.codingdojo.mvc.models.Song;
import com.codingdojo.mvc.repositories.SongRepository;


import java.util.List;
import java.util.Optional;

@Service
public class SongService {
 // adding the song repository as a dependency
 private final SongRepository songRepository;
 
 public SongService(SongRepository songRepository) {
     this.songRepository = songRepository;
 }
 // returns all the songs
 public List<Song> allSongs() {
     return songRepository.findAll();
 }
 // creates a song
 public Song createSong(Song b) {
     return songRepository.save(b);
 }
 // retrieves a song
 public Song findSong(Long id) {
     Optional<Song> optionalSong = songRepository.findById(id);
     if(optionalSong.isPresent()) {
         return optionalSong.get();
     } else {
         return null;
     }
 }
 
 public List<Song> findSongByArtist(String artistName) {
     List<Song> songArtistList = songRepository.findByArtistContaining(artistName);
     
         return songArtistList;
     
 }
 
 public Page<Song> findAllSongsByRatingAndSorted(int page, int size) {
     Pageable pageable = PageRequest.of(page, size);
     return songRepository.findAllByOrderByRatingDesc(pageable);
 }
 
 public Song updateSong(Song song) {
	 
		return songRepository.save(song);
	}
 
 
	
 // to delete a song, we simply pass in the song ID and if our repository finds it, the song will be deleted
 public void deleteSong(Long id) {
		Optional<Song> optionalSong = songRepository.findById(id);
		if(optionalSong.isPresent()) {
			songRepository.deleteById(id);
		}
	}
}

