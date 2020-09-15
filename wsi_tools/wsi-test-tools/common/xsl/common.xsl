<?xml version="1.0" encoding="UTF-8"?>
<!--
  Common formatting for Testing Tools XML documents.
 
	Copyright (c) 2002-2004 by The Web Services-Interoperability Organization (WS-I) and 
	Certain of its Members. All Rights Reserved.
	
	Notice
	The material contained herein is not a license, either expressly or impliedly, to any 
	intellectual property owned or controlled by any of the authors or developers of this 
	material or WS-I. The material contained herein is provided on an "AS IS" basis and to 
	the maximum extent permitted by applicable law, this material is provided AS IS AND WITH 
	ALL FAULTS, and the authors and developers of this material and WS-I hereby disclaim all 
	other warranties and conditions, either express, implied or statutory, including, but not 
	limited to, any (if any) implied warranties, duties or conditions of  merchantability, 
	of fitness for a particular purpose, of accuracy or completeness of responses, of results, 
	of workmanlike effort, of lack of viruses, and of lack of negligence. ALSO, THERE IS NO 
	WARRANTY OR CONDITION OF TITLE, QUIET ENJOYMENT, QUIET POSSESSION, CORRESPONDENCE TO 
	DESCRIPTION OR NON-INFRINGEMENT WITH REGARD TO THIS MATERIAL.
	
	IN NO EVENT WILL ANY AUTHOR OR DEVELOPER OF THIS MATERIAL OR WS-I BE LIABLE TO ANY OTHER 
	PARTY FOR THE COST OF PROCURING SUBSTITUTE GOODS OR SERVICES, LOST PROFITS, LOSS OF USE, 
	LOSS OF DATA, OR ANY INCIDENTAL, CONSEQUENTIAL, DIRECT, INDIRECT, OR SPECIAL DAMAGES 
	WHETHER UNDER CONTRACT, TORT, WARRANTY, OR OTHERWISE, ARISING IN ANY WAY OUT OF THIS OR 
	ANY OTHER AGREEMENT RELATING TO THIS MATERIAL, WHETHER OR NOT SUCH PARTY HAD ADVANCE 
	NOTICE OF THE POSSIBILITY OF SUCH DAMAGES.
	
	WS-I License Information
	Use of this WS-I Material is governed by the WS-I Test License and other licenses.  Information on these 
	licenses are contained in the README.txt and ReleaseNotes.txt files.  By downloading this file, you agree 
	to the terms of these licenses.
		
	How To Provide Feedback
	The Web Services-Interoperability Organization (WS-I) would like to receive input, 
	suggestions and other feedback ("Feedback") on this work from a wide variety of 
	industry participants to improve its quality over time. 
	
	By sending email, or otherwise communicating with WS-I, you (on behalf of yourself if 
	you are an individual, and your company if you are providing Feedback on behalf of the 
	company) will be deemed to have granted to WS-I, the members of WS-I, and other parties 
	that have access to your Feedback, a non-exclusive, non-transferable, worldwide, perpetual, 
	irrevocable, royalty-free license to use, disclose, copy, license, modify, sublicense or 
	otherwise distribute and exploit in any manner whatsoever the Feedback you provide regarding 
	the work. You acknowledge that you have no expectation of confidentiality with respect to 
	any Feedback you provide. You represent and warrant that you have rights to provide this 
	Feedback, and if you are providing Feedback on behalf of a company, you represent and warrant 
	that you have the rights to provide Feedback on behalf of your company. You also acknowledge 
	that WS-I is not required to review, discuss, use, consider or in any way incorporate your 
	Feedback into future versions of its work. If WS-I does incorporate some or all of your 
	Feedback in a future version of the work, it may, but is not obligated to include your name 
	(or, if you are identified as acting on behalf of your company, the name of your company) on 
	a list of contributors to the work. If the foregoing is not acceptable to you and any company 
	on whose behalf you are acting, please do not provide any Feedback.
	
	WS-I members should direct feedback on this document to wsi_testing@lists.ws-i.org; 
    non-members should direct feedback to wsi-tools@ws-i.org. 
	
 
  Copyright (c) 2002 - 2004 IBM Corporation.  All rights reserved.
 
  @author Peter Brittenham, peterbr@us.ibm.com
  @version 0.91 
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="1.0">

<xsl:variable name="titleRowColor" select="'#e1e1e1'"/>
<xsl:variable name="passedColor" select="'green'"/>
<xsl:variable name="failedColor" select="'red'"/>
<xsl:variable name="warningColor" select="'orange'"/>
<xsl:variable name="notApplicableColor" select="'blue'"/>
<xsl:variable name="missingInputColor" select="'brown'"/>
<xsl:variable name="prereqFailedColor" select="'magenta'"/>

<xsl:template name="copyright">
 <!-- <hr style="color : black;"/>-->
  <p class="copyright" id="copyright">Copyright (c) 2002-2004 by <a href="http://www.ws-i.org/">The Web Services-Interoperability Organization</a> (<abbr title="Web Services Interoperability Organization">WS-I</abbr>) and Certain of its Members. All Rights Reserved.</p>
  <!--<p>Review the <a href="#Notice">Notice</a> and <a href="#License">License</a> for 
information on the usage of this document.  Also, <a href="#Feedback">Feedback</a> can 
be provided to the WS-I Organization.</p>-->
</xsl:template>

<xsl:template name="notice"> 
  <!--<hr style="color : black;"/>-->
  <a name="Notice"><h2>Notice</h2></a>
  <p>The material contained herein is not a license, either expressly or impliedly, to any 
intellectual property owned or controlled by any of the authors or developers of this 
material or WS-I. The material contained herein is provided on an "AS IS" basis and to 
the maximum extent permitted by applicable law, this material is provided AS IS AND WITH 
ALL FAULTS, and the authors and developers of this material and WS-I hereby disclaim all 
other warranties and conditions, either express, implied or statutory, including, but not 
limited to, any (if any) implied warranties, duties or conditions of  merchantability, 
of fitness for a particular purpose, of accuracy or completeness of responses, of results, 
of workmanlike effort, of lack of viruses, and of lack of negligence. ALSO, THERE IS NO 
WARRANTY OR CONDITION OF TITLE, QUIET ENJOYMENT, QUIET POSSESSION, CORRESPONDENCE TO 
DESCRIPTION OR NON-INFRINGEMENT WITH REGARD TO THIS MATERIAL.
 </p>
 <p>
IN NO EVENT WILL ANY AUTHOR OR DEVELOPER OF THIS MATERIAL OR WS-I BE LIABLE TO ANY OTHER 
PARTY FOR THE COST OF PROCURING SUBSTITUTE GOODS OR SERVICES, LOST PROFITS, LOSS OF USE, 
LOSS OF DATA, OR ANY INCIDENTAL, CONSEQUENTIAL, DIRECT, INDIRECT, OR SPECIAL DAMAGES 
WHETHER UNDER CONTRACT, TORT, WARRANTY, OR OTHERWISE, ARISING IN ANY WAY OUT OF THIS OR 
ANY OTHER AGREEMENT RELATING TO THIS MATERIAL, WHETHER OR NOT SUCH PARTY HAD ADVANCE 
NOTICE OF THE POSSIBILITY OF SUCH DAMAGES.</p>
  <a name="License"><h4>WS-I License Information</h4></a><p/>
  <p>Use of this WS-I Material is governed by the WS-I Test License at 
<a href="http://www.ws-i.org/docs/license/test_license_draftobj.htm">http://www.ws-i.org/docs/license/test_license_draftobj.htm</a>.
By downloading these files, you agree to the terms of this license.</p>
  <a name="Feedback"><h4>How to Provide Feedback</h4></a><p/>
  <p>The Web Services-Interoperability Organization (WS-I) would like to receive input, 
suggestions and other feedback ("Feedback") on this work from a wide variety of 
industry participants to improve its quality over time.</p>
<p>
By sending email, or otherwise communicating with WS-I, you (on behalf of yourself if 
you are an individual, and your company if you are providing Feedback on behalf of the 
company) will be deemed to have granted to WS-I, the members of WS-I, and other parties 
that have access to your Feedback, a non-exclusive, non-transferable, worldwide, perpetual, 
irrevocable, royalty-free license to use, disclose, copy, license, modify, sublicense or 
otherwise distribute and exploit in any manner whatsoever the Feedback you provide regarding 
the work. You acknowledge that you have no expectation of confidentiality with respect to 
any Feedback you provide. You represent and warrant that you have rights to provide this 
Feedback, and if you are providing Feedback on behalf of a company, you represent and warrant 
that you have the rights to provide Feedback on behalf of your company. You also acknowledge 
that WS-I is not required to review, discuss, use, consider or in any way incorporate your 
Feedback into future versions of its work. If WS-I does incorporate some or all of your 
Feedback in a future version of the work, it may, but is not obligated to include your name 
(or, if you are identified as acting on behalf of your company, the name of your company) on 
a list of contributors to the work. If the foregoing is not acceptable to you and any company 
on whose behalf you are acting, please do not provide any Feedback.</p>
<p>
WS-I members should direct feedback on this document to 
<a href="mailto:wsi_testing@lists.ws-i.org">wsi_testing@lists.ws-i.org</a>; 
non-members should direct feedback to 
<a href="mailto:wsi-tools@ws-i.org">wsi-tools@ws-i.org</a>. 
</p>
</xsl:template>
</xsl:stylesheet>
