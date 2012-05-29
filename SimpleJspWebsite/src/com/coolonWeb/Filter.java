package com.coolonWeb;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class Filter implements javax.servlet.Filter {

	@Override
	public void destroy() {
		// TODO Auto-generated method stub

	}

	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1,
			FilterChain arg2) throws IOException, ServletException {
		
		arg0.setAttribute("siteName", Config.SITE_NAME);
		arg0.setAttribute("pageTitle", Config.TITLE_SITE);
		arg0.setAttribute("metaDescription", Config.META_DESCRIPTION);
		arg0.setAttribute("metaKeywords", Config.META_KEYWORDS);
		arg0.setAttribute("year", Config.getYear());
		arg0.setAttribute("url", Config.SITE_URL);
		arg0.setAttribute("tplUrl", Config.TPL_URL);
		arg0.setAttribute("staticUrl", Config.STATIC_URL);
		arg0.setAttribute("analyticsId", Config.ANALYTICS_ID);
		arg0.setAttribute("emailAddress", Config.CONTACT_EMAIL);
		
		arg2.doFilter(arg0, arg1);
		
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub

	}

}
