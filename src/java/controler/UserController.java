package controler;

import bean.User;
import controler.util.AccessDepartement;
import controler.util.HashageUtil;
import controler.util.JsfUtil;
import controler.util.JsfUtil.PersistAction;
import controler.util.Message;
import controler.util.MessageManager;
import controler.util.SessionUtil;
import java.io.IOException;
import service.UserFacade;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.ResourceBundle;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.PostConstruct;
import javax.ejb.EJB;
import javax.ejb.EJBException;
import javax.inject.Named;
import javax.enterprise.context.SessionScoped;
import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.convert.Converter;
import javax.faces.convert.FacesConverter;

@Named("userController")
@SessionScoped
public class UserController implements Serializable {

    @EJB
    private service.UserFacade ejbFacade;
    private List<User> items = null;
    private User selected;
    private List<User> userProfils ;
    private User connectedUser;
    private Message message;
    private String oldPassword;
    private String newPassword;
    private String newRepetePassword;
    private String pwdForUpdate;

   

    public UserController() {
    }

    public boolean checkUser() {
        if (SessionUtil.getConnectedUser().getAdmin() == 1) {
            return true;
        } else {
            return false;
        }
    }

    public String seConnnecter() {
        int res = ejbFacade.seConnnecter(selected);
        AccessDepartement.populateMaps();
        System.out.println("resss " + res);
        if (res > 0) {
            if (SessionUtil.getConnectedUser().isMdpChanged()) {
                System.out.println("meenu");
                return "/menu/menu?faces-redirect=true";
            } else {
                return "/user/ChangePassword?faces-redirect=true";
            }
        }
        validteConnexionForm(res);
        return null;
    }

    private void validteConnexionForm(int res) {
        message = MessageManager.createErrorMessage(res, "");
        if (res == -1) {
            message.setText("Socie ist zur Zeit blokiert, bitte kontaktieren Sie Ihren Admin");
        } else if (res == -2) {
            message.setText("Ihre Account ist zur Zeit blokiert, bitte melden Sie sich bei Ihren Admin an");
        } else if (res == -3) {
            message.setText("Oups,falsches Passwort. Wiederholen Sie es noch einmal!");
        } else if (res == -4) {
            message.setText("Falsches login, Versuchen Sie es noch einmal!");
        } else if (res == -5) {
            message.setText("Bitte geben Sie hier Ihre login an!");
        }
        MessageManager.showMessage(message);
    }

    public void isNotConnected() throws IOException {
        if (SessionUtil.getConnectedUser() == null) {
            SessionUtil.redirect("../index.xhtml");
        }
    }

    public String changePassword() {
        User user = ejbFacade.find(selected.getLogin());
        System.out.println("alter hash : " + HashageUtil.sha256(user.getPassword()));
        System.out.println("neuer hash : " + HashageUtil.sha256(newPassword));
        System.out.println("altes PW : " + user.getPassword());
        System.out.println("neuen PW: " + newPassword);
        if (newPassword.equals(newRepetePassword) && !newPassword.equals("") && newPassword != null && !HashageUtil.sha256(newPassword).equals(user.getPassword())) {

            user.setPassword(HashageUtil.sha256(newPassword));
            user.setMdpChanged(true);
            ejbFacade.edit(user);
            return seDeConnnecter();
        } else {
            JsfUtil.addErrorMessage("Probleme während die Passwortänderung");
            return "";
        }

    }

    public int getTimout() {
        return SessionUtil.getSession().getMaxInactiveInterval();
    }

    /*public int getTimout() {
        return SessionUtil.getSession().getMaxInactiveInterval();
    }*/
    public String seDeConnnecter() {
        //
        ejbFacade.seDeConnnecter();
        return "/index?faces-redirect=true";

    }

    public User getConnectedUser() {
        if (connectedUser == null) {
            connectedUser = SessionUtil.getConnectedUser();
        }
        return connectedUser;
    }

    public void setConnectedUser(User connectedUser) {
        this.connectedUser = connectedUser;
    }

    public String getOldPassword() {
        return oldPassword;
    }

    public void setOldPassword(String oldPassword) {
        this.oldPassword = oldPassword;
    }

    public String getNewPassword() {
        return newPassword;
    }

    public void setNewPassword(String newPassword) {
        this.newPassword = newPassword;
    }

    public String getNewRepetePassword() {
        return newRepetePassword;
    }

    public List<User> getUserProfils() {
        userProfils = new ArrayList();
        userProfils.add(SessionUtil.getConnectedUser());
        return userProfils;
    }

    public void setUserProfils(List<User> userProfils) {
        this.userProfils = userProfils;
    }

    public void setNewRepetePassword(String newRepetePassword) {
        this.newRepetePassword = newRepetePassword;
    }

    public User getSelected() {
        if (selected == null) {
            selected = new User();
        }
        return selected;
    }

    public void setSelected(User selected) {
        this.selected = selected;
    }

    public String getPwdForUpdate() {
        return pwdForUpdate;
    }

    public void setPwdForUpdate(String pwdForUpdate) {
        this.pwdForUpdate = pwdForUpdate;
    }

    protected void setEmbeddableKeys() {
    }

    protected void initializeEmbeddableKey() {
    }

    private UserFacade getFacade() {
        return ejbFacade;
    }

    public User prepareCreate() {
        selected = new User();
        initializeEmbeddableKey();
        return selected;
    }

    public void create() {
        persist(PersistAction.CREATE, ResourceBundle.getBundle("/Bundle").getString("UserCreated"));
        if (!JsfUtil.isValidationFailed()) {
            items = null;    // Invalidate list of items to trigger re-query.
        }
    }

    public void update() {
        persist(PersistAction.UPDATE, ResourceBundle.getBundle("/Bundle").getString("UserUpdated"));
    }

    public void destroy() {
        persist(PersistAction.DELETE, ResourceBundle.getBundle("/Bundle").getString("UserDeleted"));
        if (!JsfUtil.isValidationFailed()) {
            selected = null; // Remove selection
            items = null;    // Invalidate list of items to trigger re-query.
        }
    }

    public List<User> getItems() {
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
                    selected.setPassword(HashageUtil.sha256(pwdForUpdate));
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

    public User getUser(java.lang.String id) {
        return getFacade().find(id);
    }

    public List<User> getItemsAvailableSelectMany() {
        return getFacade().findAll();
    }

    public List<User> getItemsAvailableSelectOne() {
        return getFacade().findAll();
    }

    @FacesConverter(forClass = User.class)
    public static class UserControllerConverter implements Converter {

        @Override
        public Object getAsObject(FacesContext facesContext, UIComponent component, String value) {
            if (value == null || value.length() == 0) {
                return null;
            }
            UserController controller = (UserController) facesContext.getApplication().getELResolver().
                    getValue(facesContext.getELContext(), null, "userController");
            return controller.getUser(getKey(value));
        }

        java.lang.String getKey(String value) {
            java.lang.String key;
            key = value;
            return key;
        }

        String getStringKey(java.lang.String value) {
            StringBuilder sb = new StringBuilder();
            sb.append(value);
            return sb.toString();
        }

        @Override
        public String getAsString(FacesContext facesContext, UIComponent component, Object object) {
            if (object == null) {
                return null;
            }
            if (object instanceof User) {
                User o = (User) object;
                return getStringKey(o.getLogin());
            } else {
                Logger.getLogger(this.getClass().getName()).log(Level.SEVERE, "object {0} is of type {1}; expected type: {2}", new Object[]{object, object.getClass().getName(), User.class.getName()});
                return null;
            }
        }

    }

}
