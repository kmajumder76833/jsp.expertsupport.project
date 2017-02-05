package table;

import java.util.Date;
import javax.persistence.*;//importing JPA

@Entity //persistence class

public class Answers{
    @Id //primary key
    @GeneratedValue //auto-increment
    private int aId;
    private String ans;
    private String exIdfk;
    private int qIdfk;
    private int likes;
    private Date postDate;

    public int getLikes() {
        return likes;
    }

    public void setLikes(int likes) {
        this.likes = likes;
    }

    public int getqIdfk() {
        return qIdfk;
    }

    public void setqIdfk(int qIdfk) {
        this.qIdfk = qIdfk;
    }

    
    public int getaId() {
        return aId;
    }

    public void setaId(int aId) {
        this.aId = aId;
    }

    public String getAns() {
        return ans;
    }

    public void setAns(String ans) {
        this.ans = ans;
    }

    public String getExIdfk() {
        return exIdfk;
    }

    public void setExIdfk(String exIdfk) {
        this.exIdfk = exIdfk;
    }

    
    public Date getPostDate() {
        return postDate;
    }

    public void setPostDate(Date postDate) {
        this.postDate = postDate;
    }
    
}