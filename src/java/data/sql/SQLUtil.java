package data.sql;

import java.sql.*;

public class SQLUtil {

    public static String getHtmlTable(ResultSet results)
            throws SQLException {
        //displays the sql info for the table in the index.jsp
        StringBuilder htmlTable = new StringBuilder();
        ResultSetMetaData metaData = results.getMetaData();
        int columnCount = metaData.getColumnCount();
        //appends opening table tage to the sql form
        htmlTable.append("<table>");

        //  header row
        htmlTable.append("<tr>");
        for (int i = 1; i <= columnCount; i++) {
            htmlTable.append("<th>");
            htmlTable.append(metaData.getColumnName(i));
            htmlTable.append("</th>");
        }
        htmlTable.append("</tr>");

        // all other rows
        while (results.next()) {
            htmlTable.append("<tr>");
            for (int i = 1; i <= columnCount; i++) {
                htmlTable.append("<td>");
                htmlTable.append(results.getString(i));
                htmlTable.append("</td>");
            }
            htmlTable.append("</tr>");
        }
        //append the closing table tag at the end of the sql table
        htmlTable.append("</table>");
        return htmlTable.toString();
    }
}