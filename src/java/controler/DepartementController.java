package controler;

import bean.Departement;
import bean.DepartementCriteria;
import bean.DepartementCriteriaItem;
import controler.util.JsfUtil;
import controler.util.JsfUtil.PersistAction;
import controler.util.SessionUtil;
import service.DepartementFacade;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.ResourceBundle;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.ejb.EJB;
import javax.ejb.EJBException;
import javax.inject.Named;
import javax.enterprise.context.SessionScoped;
import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.convert.Converter;
import javax.faces.convert.FacesConverter;

@Named("departementController")
@SessionScoped
public class DepartementController implements Serializable {

    @EJB
    private service.DepartementFacade ejbFacade;
    @EJB
    private service.DepartementCriteriaFacade departementCriteriaFacade;
    @EJB
    private service.DepartementCriteriaItemFacade departementCriteriaItemFacade;
    private List<Departement> items = null;
    private List<DepartementCriteria> departementCriterias;
    private List<DepartementCriteriaItem> departementCriteriaItems;
    private Departement selected;
    private DepartementCriteria departementCriteria;
    private DepartementCriteriaItem departementCriteriaItem;
    private boolean renderCriteriaItem = false;
    private boolean renderCriteria = false;

    public DepartementController() {
    }

    public boolean checkUser() {
        if (SessionUtil.getConnectedUser().getAdmin() == 1) {
            return true;
        } else {
            return false;
        }
    }

    public List<Departement> findAll() {
        return ejbFacade.findAll();
    }

    public void deleteDepartementWithCriteria(Departement departement) {
        ejbFacade.deleteDepartementWithCriteria(departement);
    }

    public void deleteCriteriaItem(DepartementCriteriaItem criteriaItem) {
        departementCriteriaItemFacade.remove(criteriaItem);
        JsfUtil.delete(departementCriteriaItems, criteriaItem);
    }

    public void deleteCriteriaWithCriteriaItem(DepartementCriteria criteria) {
        departementCriteriaFacade.deleteCriteriaWithCriteriaItem(criteria);
    }

    public boolean renderCriteriaItem() {
        return renderCriteriaItem;
    }

    public boolean renderCriteria() {
        return renderCriteria;
    }

    public void prepareEditCriteria(DepartementCriteria criteria) {
        departementCriteria = criteria;
    }

    public void prepareEdit(Departement dep) {
        selected = dep;
    }

    public void prepareEditCriteriaItem(DepartementCriteriaItem criteriaItem) {
        departementCriteriaItem = criteriaItem;
    }

    public void prepareViewCriteriaItem(DepartementCriteriaItem criteriaItem) {
        departementCriteriaItem = criteriaItem;
    }

    public List<Departement> findDepartementByUser() {
        items = ejbFacade.findDepartementByUser();
        return items;
    }

    public void updateDepartementCriteria() {
        departementCriteriaFacade.edit(departementCriteria);
    }

    public void updateDepartementCriteriaItem() {
        departementCriteriaItemFacade.edit(departementCriteriaItem);
       JsfUtil.edit(departementCriteriaItems, departementCriteriaItem);
    }

    public void prepareDepartementCriteria(DepartementCriteria criteria) {
        departementCriteria = criteria;
    }

    public void findCriteriaByDepartement(Departement departement) {
        departementCriterias = departementCriteriaFacade.findByDepartement(departement);
        selected = departement;
        renderCriteriaItem = false;
        renderCriteria = true;
    }

    public void createDepartementCriteria() {
        departementCriteria.setDepartement(selected);
        departementCriteriaFacade.create(departementCriteria);
        departementCriteria = new DepartementCriteria();
    }

    public void createDepartementCriterieItem() {
        departementCriteriaItem.setDepartementCriteria(departementCriteria);
        departementCriteriaItemFacade.create(departementCriteriaItem);
        findCriteriaItemByCriteria(departementCriteria);
        departementCriteriaItem = new DepartementCriteriaItem();
    }

    public void findCriteriaItemByCriteria(DepartementCriteria criteria) {
        departementCriteriaItems = departementCriteriaItemFacade.findByDepartementCriteria(criteria);
        departementCriteria = criteria;
        renderCriteriaItem = true;
    }

    public DepartementCriteriaItem getDepartementCriteriaItem() {
        if (departementCriteriaItem == null) {
            departementCriteriaItem = new DepartementCriteriaItem();
        }
        return departementCriteriaItem;
    }

    public void setDepartementCriteriaItem(DepartementCriteriaItem departementCriteriaItem) {
        this.departementCriteriaItem = departementCriteriaItem;
    }

    public DepartementCriteria getDepartementCriteria() {
        if (departementCriteria == null) {
            departementCriteria = new DepartementCriteria();
        }
        return departementCriteria;
    }

    public void setDepartementCriteria(DepartementCriteria departementCriteria) {
        this.departementCriteria = departementCriteria;
    }

    public List<DepartementCriteriaItem> getDepartementCriteriaItems() {
        if (departementCriteriaItems == null) {
            departementCriteriaItems = new ArrayList<>();
        }
        return departementCriteriaItems;
    }

    public void setDepartementCriteriaItems(List<DepartementCriteriaItem> departementCriteriaItems) {
        this.departementCriteriaItems = departementCriteriaItems;
    }

    public List<DepartementCriteria> getDepartementCriterias() {
        if (departementCriterias == null) {
            departementCriterias = new ArrayList<>();
        }
        return departementCriterias;
    }

    public void setDepartementCriterias(List<DepartementCriteria> departementCriterias) {
        this.departementCriterias = departementCriterias;
    }

    public Departement getSelected() {
        if (selected == null) {
            selected = new Departement();
        }
        return selected;
    }

    public void setSelected(Departement selected) {
        this.selected = selected;
    }

    protected void setEmbeddableKeys() {
    }

    protected void initializeEmbeddableKey() {
    }

    private DepartementFacade getFacade() {
        return ejbFacade;
    }

    public Departement prepareCreate() {
        selected = new Departement();
        initializeEmbeddableKey();
        return selected;
    }

    public void create() {
        persist(PersistAction.CREATE, ResourceBundle.getBundle("/Bundle").getString("DepartementCreated"));
        if (!JsfUtil.isValidationFailed()) {
            items = null;    // Invalidate list of items to trigger re-query.
        }
    }

    public void update() {
        persist(PersistAction.UPDATE, ResourceBundle.getBundle("/Bundle").getString("DepartementUpdated"));
    }

    public void destroy() {
        persist(PersistAction.DELETE, ResourceBundle.getBundle("/Bundle").getString("DepartementDeleted"));
        if (!JsfUtil.isValidationFailed()) {
            selected = null; // Remove selection
            items = null;    // Invalidate list of items to trigger re-query.
        }
    }

    public List<Departement> getItems() {
        if (items == null) {
            items = getFacade().findAll();
        }
        return items;
    }

    private void persist(PersistAction persistAction, String successMessage) {
        if (selected != null) {
            setEmbeddableKeys();
            try {
                if (persistAction != PersistAction.DELETE) {
                    getFacade().edit(selected);
                } else {
                    getFacade().remove(selected);
                }
                JsfUtil.addSuccessMessage(successMessage);
            } catch (EJBException ex) {
                String msg = "";
                Throwable cause = ex.getCause();
                if (cause != null) {
                    msg = cause.getLocalizedMessage();
                }
                if (msg.length() > 0) {
                    JsfUtil.addErrorMessage(msg);
                } else {
                    JsfUtil.addErrorMessage(ex, ResourceBundle.getBundle("/Bundle").getString("PersistenceErrorOccured"));
                }
            } catch (Exception ex) {
                Logger.getLogger(this.getClass().getName()).log(Level.SEVERE, null, ex);
                JsfUtil.addErrorMessage(ex, ResourceBundle.getBundle("/Bundle").getString("PersistenceErrorOccured"));
            }
        }
    }

    public Departement getDepartement(java.lang.Long id) {
        return getFacade().find(id);
    }

    public List<Departement> getItemsAvailableSelectMany() {
        return getFacade().findAll();
    }

    public List<Departement> getItemsAvailableSelectOne() {
        return getFacade().findAll();
    }

    @FacesConverter(forClass = Departement.class)
    public static class DepartementControllerConverter implements Converter {

        @Override
        public Object getAsObject(FacesContext facesContext, UIComponent component, String value) {
            if (value == null || value.length() == 0) {
                return null;
            }
            DepartementController controller = (DepartementController) facesContext.getApplication().getELResolver().
                    getValue(facesContext.getELContext(), null, "departementController");
            return controller.getDepartement(getKey(value));
        }

        java.lang.Long getKey(String value) {
            java.lang.Long key;
            key = Long.valueOf(value);
            return key;
        }

        String getStringKey(java.lang.Long value) {
            StringBuilder sb = new StringBuilder();
            sb.append(value);
            return sb.toString();
        }

        @Override
        public String getAsString(FacesContext facesContext, UIComponent component, Object object) {
            if (object == null) {
                return null;
            }
            if (object instanceof Departement) {
                Departement o = (Departement) object;
                return getStringKey(o.getId());
            } else {
                Logger.getLogger(this.getClass().getName()).log(Level.SEVERE, "object {0} is of type {1}; expected type: {2}", new Object[]{object, object.getClass().getName(), Departement.class.getName()});
                return null;
            }
        }

    }

}
