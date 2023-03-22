
package io.ntt.lib;

import java.sql.ResultSet;
import io.ntt.lib.annoration.DataConfig;
import com.microsoft.sqlserver.jdbc.SQLServerDriver;
/**
 * DataConnection
 */
@DataConfig(driver = SQLServerDriver.class)
public class DataConnection {
  public DataConnection() {
    
  }
}