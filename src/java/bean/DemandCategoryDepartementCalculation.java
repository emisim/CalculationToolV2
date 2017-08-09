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
import javax.persistence.ManyToOne;
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
public class DemandCategoryDepartementCalculation implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private @Column(columnDefinition = "DECIMAL(10,2)") BigDecimal summe;
    private @Column(columnDefinition = "DECIMAL(10,2)") BigDecimal summeGlobal;
    @ManyToOne
    private DemandCategory demandCategory;
    @ManyToOne
    private Departement departement;

    @OneToMany(mappedBy = "demandCategoryDepartementCalculation")
    private List<DemandCategoryCalculation> demandCategoryCalculations;

    public DemandCategoryDepartementCalculation() {
    }

    public Departement getDepartement() {
        return departement;
    }

    public void setDepartement(Departement departement) {
        this.departement = departement;
    }

    @XmlTransient
    @JsonIgnore
    public List<DemandCategoryCalculation> getDemandCategoryCalculations() {
        return demandCategoryCalculations;
    }

    public void setDemandCategoryCalculations(List<DemandCategoryCalculation> demandCategoryCalculations) {
        this.demandCategoryCalculations = demandCategoryCalculations;
    }

    public BigDecimal getSumme() {
        return summe;
    }

    public void setSumme(BigDecimal summe) {
        this.summe = summe;
    }

    public BigDecimal getSummeGlobal() {
        return summeGlobal;
    }

    public void setSummeGlobal(BigDecimal summeGlobal) {
        this.summeGlobal = summeGlobal;
    }
    
    public DemandCategory getDemandCategory() {
        return demandCategory;
    }

    public void setDemandCategory(DemandCategory demandCategory) {
        this.demandCategory = demandCategory;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
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
        if (!(object instanceof DemandCategoryDepartementCalculation)) {
            return false;
        }
        DemandCategoryDepartementCalculation other = (DemandCategoryDepartementCalculation) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return id + " - " + departement.getName();
    }

}
