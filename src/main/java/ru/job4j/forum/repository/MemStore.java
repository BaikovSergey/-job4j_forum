package ru.job4j.forum.repository;

import org.springframework.stereotype.Repository;
import ru.job4j.forum.model.Post;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.List;

@Repository
public class MemStore implements Store {

    private final List<Post> posts = new ArrayList<>();

    public MemStore() {
        create(Post.of("Продаю машину ладу 01."));
    }

    @Override
    public Post create(Post post) {
        post.setCreated(getCurrentDate());
        this.posts.add(post);
        post.setId(this.posts.indexOf(post));
        return post;
    }

    @Override
    public void update(Post post) {
        int index = post.getId();
        this.posts.remove(index);
        this.posts.add(index, post);
    }

    @Override
    public void delete(int id) {
        this.posts.remove(id);
    }

    @Override
    public Post findById(int id) {
        return this.posts.get(id);
    }

    @Override
    public Collection<Post> findAll() {
        return this.posts;
    }

    private String getCurrentDate() {
        DateFormat pattern = new SimpleDateFormat("dd.MM.yyyy");
        Calendar calendar = Calendar.getInstance();
        return pattern.format(calendar.getTime());
    }

}
