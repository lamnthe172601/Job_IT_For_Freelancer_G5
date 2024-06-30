/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package MutiModels;

import java.util.List;

/**
 *
 * @author kudol
 */
public class Project {

    private PostBasic postBasic;
    private List<ReportDetails> listReport;

    public Project() {
    }

    public Project(PostBasic postBasic, List<ReportDetails> listReport) {
        this.postBasic = postBasic;
        this.listReport = listReport;
    }

    public PostBasic getPostBasic() {
        return postBasic;
    }

    public void setPostBasic(PostBasic postBasic) {
        this.postBasic = postBasic;
    }

    public List<ReportDetails> getListReport() {
        return listReport;
    }

    public void setListReport(List<ReportDetails> listReport) {
        this.listReport = listReport;
    }

   
}
