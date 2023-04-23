/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package note;

import java.util.Date;

/**
 *
 * @author Walking Bag
 */
public class noteDTO {
    private int id;
    private String title;
    private String noteInfo;
    private String context;
    private Date timestamp;

    public noteDTO() {
    }

    public noteDTO(int id, String title, String noteInfo, String context, Date timestamp) {
        this.id = id;
        this.title = title;
        this.noteInfo = noteInfo;
        this.context = context;
        this.timestamp = timestamp;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getNoteInfo() {
        return noteInfo;
    }

    public void setNoteInfo(String noteInfo) {
        this.noteInfo = noteInfo;
    }

    public String getContext() {
        return context;
    }

    public void setContext(String context) {
        this.context = context;
    }

    public Date getTimestamp() {
        return timestamp;
    }

    public void setTimestamp(Date timestamp) {
        this.timestamp = timestamp;
    }
    
}
