package ru.job4j.forum.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import ru.job4j.forum.model.Post;
import ru.job4j.forum.service.PostService;

@Controller
public class PostControl {

    private PostService service;

    public PostControl(PostService service) {
        this.service = service;
    }

    @GetMapping("/create")
    public String create() {
        return "posts/create";
    }

    @GetMapping("/update")
    public String update(@RequestParam(name = "id") String id,
                         @RequestParam(name = "name") String name,
                         @RequestParam(name = "desc") String desc,
                         @RequestParam(name = "created") String created) {
        return "posts/update";
    }

    @PostMapping("/save")
    public String save(@ModelAttribute Post post) {
        this.service.create(post);
        return "redirect:/";
    }

    @PostMapping("/update")
    public String update(@ModelAttribute Post post) {
        this.service.update(post);
        return "redirect:/";
    }

    @PostMapping("/delete")
    public String delete(@RequestParam int id) {
        this.service.delete(id);
        return "redirect:/";
    }
}
