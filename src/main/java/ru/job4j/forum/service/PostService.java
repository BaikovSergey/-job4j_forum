package ru.job4j.forum.service;

import org.springframework.stereotype.Service;
import ru.job4j.forum.model.Post;
import ru.job4j.forum.repository.MemStore;
import java.util.Collection;

@Service
public class PostService {

    private MemStore memStore;

    public PostService(MemStore memStore) {
        this.memStore = memStore;
    }

    public Post create (Post post) {
        return this.memStore.create(post);
    }

    public void update (Post post) {
        this.memStore.update(post);
    }

    public void delete (int id) {
        this.memStore.delete(id);
    }

    public Post findById (int id) {
        return this.memStore.findById(id);
    }

    public Collection<Post> findAll() {
        return this.memStore.findAll();
    }
}
