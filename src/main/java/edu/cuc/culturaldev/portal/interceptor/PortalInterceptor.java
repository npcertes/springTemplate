package edu.cuc.culturaldev.portal.interceptor;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import edu.cuc.culturaldev.common.util.StringUtil;

public class PortalInterceptor implements HandlerInterceptor {

		
	@Override
	public void afterCompletion(HttpServletRequest arg0,
			HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1,
			Object arg2, ModelAndView arg3) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public boolean preHandle(HttpServletRequest arg0, HttpServletResponse arg1,
			Object arg2) throws Exception {
		Object obj=arg0.getSession().getAttribute("supplier");
		if(obj==null){
			String username=null;
			String password=null;
			Cookie[] cookies=arg0.getCookies();
			if(cookies!=null){
				for (Cookie cookie : cookies) {
					String cookieName=cookie.getName();
					String cookieValue=cookie.getValue();
					if("supplier_name".equals(cookieName)){
						username=cookieValue;
					}
					if("supplier_password".equals(cookieName)){
						password=cookieValue;
					}
				}
				if(!StringUtil.isEmpty(username)&&!StringUtil.isEmpty(password)){
					
				}
			}
		}
		return true;
	}

}
