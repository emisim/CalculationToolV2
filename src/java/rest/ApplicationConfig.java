/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package rest;

import java.util.Set;
import javax.ws.rs.core.Application;

/**
 *
 * @author t3500
 */
@javax.ws.rs.ApplicationPath("webresources")
public class ApplicationConfig extends Application {

    @Override
    public Set<Class<?>> getClasses() {
        Set<Class<?>> resources = new java.util.HashSet<>();
        addRestResourceClasses(resources);
        return resources;
    }

    /**
     * Do not modify addRestResourceClasses() method.
     * It is automatically populated with
     * all resources defined in the project.
     * If required, comment out calling this method in getClasses().
     */
    private void addRestResourceClasses(Set<Class<?>> resources) {
        resources.add(rest.ArtDerWeiterverarbeitungFacadeREST.class);
        resources.add(rest.AuflageFacadeREST.class);
        resources.add(rest.AuflageSeitenCoverMatrixFacadeREST.class);
        resources.add(rest.AusgabeFacadeREST.class);
        resources.add(rest.AusgabePricingFacadeREST.class);
        resources.add(rest.BackupFacadeREST.class);
        resources.add(rest.BaukastenFacadeREST.class);
        resources.add(rest.BaukastenPricingFacadeREST.class);
        resources.add(rest.BindungFacadeREST.class);
        resources.add(rest.CategoryFacadeREST.class);
        resources.add(rest.ClientFacadeREST.class);
        resources.add(rest.ConfigurationFacadeREST.class);
        resources.add(rest.ConfigurationItemFacadeREST.class);
        resources.add(rest.CorrectionSchluesselFacadeREST.class);
        resources.add(rest.CoverFacadeREST.class);
        resources.add(rest.DemandCategoryCalculationFacadeREST.class);
        resources.add(rest.DemandCategoryCalculationItemFacadeREST.class);
        resources.add(rest.DemandCategoryDepartementCalculationFacadeREST.class);
        resources.add(rest.DemandCategoryFacadeREST.class);
        resources.add(rest.DemandCategoryValidationFacadeREST.class);
        resources.add(rest.DepartementCriteriaFacadeREST.class);
        resources.add(rest.DepartementCriteriaItemFacadeREST.class);
        resources.add(rest.DepartementFacadeREST.class);
        resources.add(rest.DeviceFacadeREST.class);
        resources.add(rest.FarbigkeitFacadeREST.class);
        resources.add(rest.FormatAuswaehlenFacadeREST.class);
        resources.add(rest.HistoriqueConnexionUserFacadeREST.class);
        resources.add(rest.KatalogartFacadeREST.class);
        resources.add(rest.KonzeptbearbeitungFaktorFacadeREST.class);
        resources.add(rest.LayoutFacadeREST.class);
        resources.add(rest.LayoutPricingFacadeREST.class);
        resources.add(rest.MitgliederkorrekturFaktorFacadeREST.class);
        resources.add(rest.NachsatzFacadeREST.class);
        resources.add(rest.NachspannFacadeREST.class);
        resources.add(rest.PapierMaterialAuswaehlenFacadeREST.class);
        resources.add(rest.ParticipantFaktorFacadeREST.class);
        resources.add(rest.ProductFacadeREST.class);
        resources.add(rest.ProzessFacadeREST.class);
        resources.add(rest.QuestionFacadeREST.class);
        resources.add(rest.RegisterFacadeREST.class);
        resources.add(rest.SchluesselFacadeREST.class);
        resources.add(rest.SchluesselTypeFacadeREST.class);
        resources.add(rest.SeitenFacadeREST.class);
        resources.add(rest.SortimentFacadeREST.class);
        resources.add(rest.SotimentItemFacadeREST.class);
        resources.add(rest.TeilnehmerZahlPricingFacadeREST.class);
        resources.add(rest.UmschlagFarbigkeitElementFacadeREST.class);
        resources.add(rest.UmschlagFarbigkeitFacadeREST.class);
        resources.add(rest.UmschlagPapierAuswaehlenFacadeREST.class);
        resources.add(rest.UserFacadeREST.class);
        resources.add(rest.VeredlungFacadeREST.class);
        resources.add(rest.VorspannFacadeREST.class);
        resources.add(rest.WechselfassungVariantFaktorFacadeREST.class);
    }
    
}
