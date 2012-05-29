package com.coolonWeb;

import java.util.Date;
import java.text.SimpleDateFormat;

public class Config {
    	
	public final static String SITE_NAME = "pOH";
	public final static String TITLE_SITE = "pOH Site";
	public final static String META_DESCRIPTION = "Welcome on my site";
	public final static String META_KEYWORDS = "ph, software, java, jsp";
	    
	public final static String SITE_URL = "/SimpleJspWebsite/";
	public final static String TPL_URL = "/SimpleJspWebsite/tpl/base/";
	public final static String STATIC_URL = "/SimpleJspWebsite/static/";
	    
	public final static String ANALYTICS_ID = "UA-31501397-1"; // Google Analytics ID
	public final static String CONTACT_EMAIL = "ph7software@gmail.com";
	    
    public static String getYear() {
    	Date date = new Date();
    	SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy");
    	return dateFormat.format(date);	
    }
    	
}
  