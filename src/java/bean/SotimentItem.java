/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import java.io.Serializable;
import java.math.BigDecimal;
import javax.persistence.Column;
import java.util.Objects;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author
 */
@Entity
@XmlRootElement
public class SotimentItem implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    private Sortiment sortiment;
    private @Column(columnDefinition = "DECIMAL(10,2)") BigDecimal wert = new BigDecimal(0);

    public SotimentItem() {
    }

    public SotimentItem(Long id, Sortiment sortiment, DemandCategory demandCategory) {
        this.id = id;
        this.sortiment = sortiment;
        this.demandCategory = demandCategory;
    }

    @ManyToOne
    private DemandCategory demandCategory;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public BigDecimal getWert() {
        return wert;
    }

    public void setWert(BigDecimal wert) {
        this.wert = wert;
    }

    public DemandCategory getDemandCategory() {
        return demandCategory;
    }

    public void setDemandCategory(DemandCategory demandCategory) {
        this.demandCategory = demandCategory;
    }

    public Sortiment getSortiment() {
        return sortiment;
    }

    public void setSortiment(Sortiment sortiment) {
        this.sortiment = sortiment;
    }

    public BigDecimal getValue() {
        return wert;
    }

    public void setValue(BigDecimal wert) {
        this.wert = wert;
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
        if (!(object instanceof SotimentItem)) {
            return false;
        }
        SotimentItem other = (SotimentItem) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "SotimentItem{" + "id=" + id + ", sortiment=" + sortiment + ", wert=" + wert + ", demandCategory=" + demandCategory + '}';
    }

}
