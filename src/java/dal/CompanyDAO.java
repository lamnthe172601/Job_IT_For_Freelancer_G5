/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import Models.Company;
import Models.Role;
import Models.User;
import com.sun.jdi.connect.spi.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

/**
 *
 * @author admin
 */
public class CompanyDAO extends DBContext {

    public Company getCompanyByCompanyID(int companyid) {
        String query = "SELECT [companyID]\n"
                + "      ,[company_name]\n"
                + "      ,[team_number]\n"
                + "      ,[established_on]\n"
                + "      ,[logo]\n"
                + "      ,[website]\n"
                + "      ,[describe]\n"
                + "      ,[location]\n"
                + "  FROM [dbo].[Company]\n"
                + "	WHERE [companyID] = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, companyid);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                String cname = rs.getString("company_name");
                int tnumber = rs.getInt("team_number");
                Date eon = rs.getDate("established_on");
                String website = rs.getString("website");
                String describe = rs.getString("describe");
                String location = rs.getString("location");
                int cid = rs.getInt("companyID");
                String logo = rs.getString("logo");
                return new Company(cid, cname, tnumber, eon, logo, website, describe, location);
            }
        } catch (SQLException e) {
        }
        return null;
    }

}
