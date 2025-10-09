package com.dominioorm.dominioorm.entities;

import jakarta.persistence.*;

import java.time.Instant;
import java.util.Objects;

@Entity
@Table(name = "tb_slot")
public class Slot {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(columnDefinition = "TIMESTAMP WITHOUT TIME ZONE")
    private Instant start_time;

    @Column(columnDefinition = "TIMESTAMP WITHOUT TIME ZONE")
    private Instant end_time;

    @ManyToOne
    @JoinColumn(name = "activity_id")
    private Activity activity;

    public Slot() {}

    public Slot(Integer id, Instant start_time, Instant end_time) {
        this.id = id;
        this.start_time = start_time;
        this.end_time = end_time;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Instant getStartTime() {
        return start_time;
    }

    public void setStartTime(Instant start_time) {
        this.start_time = start_time;
    }

    public Instant getEndTime() {
        return end_time;
    }

    public void setEndTime(Instant end_time) {
        this.end_time = end_time;
    }

    public Activity getActivity() {
        return activity;
    }

    public void setActivity(Activity activity) {
        this.activity = activity;
    }

    @Override
    public boolean equals(Object o) {
        if (o == null || getClass() != o.getClass()) return false;
        Slot slot = (Slot) o;
        return Objects.equals(id, slot.id);
    }

    @Override
    public int hashCode() {
        return Objects.hashCode(id);
    }
}
