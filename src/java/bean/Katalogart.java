/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import java.io.Serializable;
import java.math.BigDecimal;
import javax.persistence.Column;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;
import org.codehaus.jackson.annotate.JsonIgnore;

/**
 *
 * @author
 */
@Entity
@XmlRootElement
public class Katalogart implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private String name;
    private @Column(columnDefinition = "DECIMAL(10,2)") BigDecimal valuee;
    @OneToMany(mappedBy = "katalogart")
    private List<DemandCategory> demandCategorys;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public BigDecimal getValuee() {
        return valuee;
    }

    public void setValuee(BigDecimal valuee) {
        this.valuee = valuee;
    }

    @XmlTransient
    @JsonIgnore
    public List<DemandCategory> getDemandCategorys() {
        return demandCategorys;
    }

    public void setDemandCategorys(List<DemandCategory> demandCategorys) {
        this.demandCategorys = demandCategorys;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Katalogart)) {
            return false;
        }
        Katalogart other = (Katalogart) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return name + "";
    }

}
