
package ws.jaxws;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

/**
 * This class was generated by Apache CXF 3.2.2
 * Mon Aug 05 18:56:04 ART 2019
 * Generated source version: 3.2.2
 */

@XmlRootElement(name = "sucursalesResponse", namespace = "http://ws.das.edu.ubp.ar/")
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "sucursalesResponse", namespace = "http://ws.das.edu.ubp.ar/")

public class SucursalesResponse {

    @XmlElement(name = "return")
    private java.lang.String _return;

    public java.lang.String getReturn() {
        return this._return;
    }

    public void setReturn(java.lang.String new_return)  {
        this._return = new_return;
    }

}

