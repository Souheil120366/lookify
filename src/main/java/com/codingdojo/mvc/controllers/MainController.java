package com.codingdojo.mvc.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.codingdojo.mvc.models.Song;
import com.codingdojo.mvc.services.SongService;

import jakarta.validation.Valid;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.PageRequest;

@Controller
public class MainController {
	@Autowired
	SongService songService;
	
	@RequestMapping("/")
	public String index () {
		
		return "index.jsp";
	}
	
	@RequestMapping("/songs/{songId}")
	public String oneSong (Model model,@PathVariable("songId") Long songId) {
		Song song = songService.findSong(songId);
		model.addAttribute("song",song);
		return "show.jsp";
	}
	
	@RequestMapping("/delete/song/{songId}")
	public String deleteSong (Model model,@PathVariable("songId") Long songId) {
		
		songService.deleteSong(songId);
		return "redirect:/dashboard";
	}
	
	@RequestMapping("/dashboard")
	public String dashboard (Model model) {
		List<Song> songs = songService.allSongs();
		model.addAttribute("songs",songs);
		return "showAll.jsp";
	}
	
	@RequestMapping("/topten")
	public String topTenSongs (Model model) {
		int pageNumber = 0; // Page number (0-based), you can change this to the desired page number
        int pageSize = 10; // Page size (number of items per page), change this to the desired page size

        //Pageable pageable = PageRequest.of(pageNumber, pageSize);
		
		Page<Song> topTenSongs = songService.findAllSongsByRatingAndSorted(pageNumber,pageSize);
		model.addAttribute("topTenSongs", topTenSongs);
			
		
		 return "showTopTen.jsp";
	}
	
	@RequestMapping("/search")
	public String searchByArtist (Model model, @RequestParam("searchSong") String searchSong) {
		
			//model.addAttribute("artistName", searchSong);
			
		
		 return "redirect:/search/"+searchSong;
	}
	
	@RequestMapping("/search/{artistName}")
	public String searchSong (Model model, @PathVariable("artistName") String artistName) {
		List<Song> songsByArtist = songService.findSongByArtist(artistName);
		if ( songsByArtist != null ) {
			model.addAttribute("songsByArtist",songsByArtist);
			model.addAttribute("artistName", artistName);
			return "showAllByArtist.jsp";
		}
		else return "showAll.jsp";
	}
	
	@GetMapping("/songs/new")
	public String newSong(@ModelAttribute("song") Song song) {
		return "new.jsp";
	}
	
	// Note: We'll be altering this a bit after we introduce data binding.
	@PostMapping("/new/song")
	public String create(@Valid @ModelAttribute("song") Song song, BindingResult result) {
        if (result.hasErrors()) {
            return "new.jsp";
        } else {
            songService.createSong(song);
            return "redirect:/dashboard";
        }
    }
	
	@RequestMapping("/songs/{id}/edit")
    public String edit(@PathVariable("id") Long id, Model model) {
        Song song = songService.findSong(id);
        if ( song != null) {
           model.addAttribute("song", song);
           return "edit.jsp";
        }
        else return "redirect:/dashboard";
    }
    
    @RequestMapping(value="/songs/edit/{id}", method=RequestMethod.PUT)
    public String update(@Valid @ModelAttribute("song") Song song, BindingResult result) {
        if (result.hasErrors()) {
            return "edit.jsp";
        } else {
            songService.updateSong(song);
            return "redirect:/dashboard";
        }
    }



}
