/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import java.io.Serializable;
import java.math.BigDecimal;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author t3500
 */
@Entity
@XmlRootElement
public class UmschlagFarbigkeitElement implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    @ManyToOne
    private UmschlagFarbigkeit umschlagFarbigkeit;
    @ManyToOne
    private Cover cover;
    private @Column(columnDefinition = "DECIMAL(10,2)")
    BigDecimal price;
    private String expression;

    public String getExpression() {
        return expression;
    }

    public void setExpression(String expression) {
        this.expression = expression;
    }

    public UmschlagFarbigkeit getUmschlagFarbigkeit() {
        return umschlagFarbigkeit;
    }

    public void setUmschlagFarbigkeit(UmschlagFarbigkeit umschlagFarbigkeit) {
        this.umschlagFarbigkeit = umschlagFarbigkeit;
    }

    public Cover getCover() {
        return cover;
    }

    public void setCover(Cover cover) {
        this.cover = cover;
    }

    public BigDecimal getPrice() {
        if (price == null) {
            price = new BigDecimal(0);
        }
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
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
        if (!(object instanceof UmschlagFarbigkeitElement)) {
            return false;
        }
        UmschlagFarbigkeitElement other = (UmschlagFarbigkeitElement) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "bean.UmschlagFarbigkeitElement[ id=" + id + " ]";
    }

}
