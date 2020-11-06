package ru.job4j.forum.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import ru.job4j.forum.service.PostService;

@Controller
public class IndexControl {

    private final PostService service;

    public IndexControl(PostService posts) {
        this.service = posts;
    }

    @GetMapping({"/", "/index"})
    public String index(Model model) {
        model.addAttribute("posts", service.findAll());
        //model.addAttribute("user",
         //       SecurityContextHolder.getContext().getAuthentication().getPrincipal());
        return "index";
    }
}
