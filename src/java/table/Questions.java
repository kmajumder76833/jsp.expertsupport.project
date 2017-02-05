package table;

import java.util.Date;
import javax.persistence.*;//importing JPA

@Entity //persistence class

public class Questions {
    @Id //primary key
    @GeneratedValue //auto-increment
    private int qId;
    private String qsn;
    private String uidfk;
    private String topic;
    private Date postDate;

    public int getqId() {
        return qId;
    }

    public void setqId(int qId) {
        this.qId = qId;
    }

    public String getQsn() {
        return qsn;
    }

    public void setQsn(String qsn) {
        this.qsn = qsn;
    }

    public String getUidfk() {
        return uidfk;
    }

    public void setUidfk(String uidfk) {
        this.uidfk = uidfk;
    }

    public String getTopic() {
        return topic;
    }

    public void setTopic(String topic) {
        this.topic = topic;
    }


    public Date getPostDate() {
        return postDate;
    }

    public void setPostDate(Date postDate) {
        this.postDate = postDate;
    }

}
