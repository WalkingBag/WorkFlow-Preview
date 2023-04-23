/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package note;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import utils.DBUtils;

/**
 *
 * @author Walking Bag
 */
public class noteDAO {

    public List<noteDTO> list() {
        ArrayList<noteDTO> list;
        list = new ArrayList<noteDTO>();

        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        

        String sql = "select id, title, noteInfo, content, timestamp "
                + "from note";

        try {
            con = DBUtils.getConnection();

            if (con != null) {

                stm = con.prepareStatement(sql);
                rs = stm.executeQuery();
                while (rs.next()){
                    int id = rs.getInt("id");
                    String title = rs.getString("title");
                    String noteInfo = rs.getString("noteInfo");
                    String content = rs.getString("content");
                    Date timestamp = rs.getDate("timestamp");
                    
                    noteDTO note = new noteDTO(id, title, noteInfo, content, timestamp);
                    list.add(note);
                }
                return list;
            }
        } catch (SQLException ex) {
            System.out.println("Query note error!" + ex.getMessage());
        }
        return null;
    }

}
