<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:tns="valencia.insight.demo/negotiation"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:ns0="http://xmlns.oracle.com/pcbpel/adapter/db/top/retrieveProposalsForEvent"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                exclude-result-prefixes="xsd xsi oracle-xsl-mapper xsl ns0 tns oraxsl xp20 xref mhdr oraext dvm socket"
                xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:ns1="http://xmlns.oracle.com/pcbpel/adapter/db/ProcessArtistProposals/NegotiateAndEngage/retrieveProposalsForEvent"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:ns2="http://oracle.com/sca/soapservice/ProcessArtistProposals/NegotiateAndEngage/ProposalsService">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/retrieveProposalsForEvent.wsdl"/>
        <oracle-xsl-mapper:rootElement name="ProposedActsCollection"
                                       namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/retrieveProposalsForEvent"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/ProposalsService.wsdl"/>
        <oracle-xsl-mapper:rootElement name="actProposalList" namespace="valencia.insight.demo/negotiation"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [SUN MAR 13 09:54:43 CET 2016].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:template match="/">
    <tns:actProposalList>
      <xsl:for-each select="/ns0:ProposedActsCollection/ns0:ProposedActs">
        <xsl:if test=".">
          <tns:actProposal>
            <tns:proposedActIdentifier>
              <xsl:value-of select="ns0:id"/>
            </tns:proposedActIdentifier>
            <tns:artist>
              <xsl:value-of select="ns0:name"/>
            </tns:artist>
            <tns:event>
              <xsl:value-of select="ns0:event"/>
            </tns:event>
            <tns:numberOfVotes>
              <xsl:value-of select="ns0:numberOfVotes"/>
            </tns:numberOfVotes>
            <tns:motivation>
              <xsl:value-of select="ns0:description"/>
            </tns:motivation>
            <tns:status>
              <xsl:value-of select="ns0:status"/>
            </tns:status>
          </tns:actProposal>
        </xsl:if>
      </xsl:for-each>
    </tns:actProposalList>
  </xsl:template>
</xsl:stylesheet>