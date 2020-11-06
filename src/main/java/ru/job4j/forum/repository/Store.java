package ru.job4j.forum.repository;

import ru.job4j.forum.model.Post;

import java.util.Collection;

public interface Store {
    Post create (Post post);
    void update (Post post);
    void delete (int id);
    Post findById (int id);
    Collection<Post> findAll();
}
