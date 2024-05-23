/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import Models.Company;
import Models.Role;
import Models.User;
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
        String query = " Select company_name,team_number,established_on,website,describe,[location],companyID\n"
                + "from Company\n"
                + "where companyID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, companyid);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                String cname = rs.getString(1);
                int tnumber = rs.getInt(2);
                Date eon = rs.getDate(3);
                String website = rs.getString(4);
                String describe = rs.getString(5);
                String location = rs.getString(6);
                int cid = rs.getInt(7);
                return new Company(cid, cname, tnumber, eon, website, describe, location);
            }
        } catch (SQLException e) {
        }
        return null;
    }
}
