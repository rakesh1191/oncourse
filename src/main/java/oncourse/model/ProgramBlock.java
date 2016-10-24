package oncourse.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OrderBy;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

@Entity
@Table(name = "program_blocks")
public class ProgramBlock implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue
    private Long id;

    private String name;

    private String description;

    @ManyToMany
    @JoinTable(name = "program_block_courses",
        joinColumns = @JoinColumn(name = "program_block_id"),
        inverseJoinColumns = @JoinColumn(name = "course_id"),
        uniqueConstraints = { @UniqueConstraint(
            columnNames = { "program_block_id", "course_id" }) })
    @OrderBy("code asc")
    private List<Course> courses;

    @Column(name = "required_units", nullable = false)
    private int requiredUnits;

    public ProgramBlock()
    {
        courses = new ArrayList<Course>();
        requiredUnits = 0;
    }

    public Long getId()
    {
        return id;
    }

    public void setId( Long id )
    {
        this.id = id;
    }

    public String getName()
    {
        return name;
    }

    public void setName( String name )
    {
        this.name = name;
    }

    public String getDescription()
    {
        return description;
    }

    public void setDescription( String description )
    {
        this.description = description;
    }

    public List<Course> getCourses()
    {
        return courses;
    }

    public void setCourses( List<Course> courses )
    {
        this.courses = courses;
    }

    public int getRequiredUnits()
    {
        return requiredUnits;
    }

    public void setRequiredUnits( int requiredUnits )
    {
        this.requiredUnits = requiredUnits;
    }

}
