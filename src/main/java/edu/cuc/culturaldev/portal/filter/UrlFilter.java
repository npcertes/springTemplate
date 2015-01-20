package edu.cuc.culturaldev.portal.filter;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;

/**
 * Servlet Filter implementation class UrlFilter
 */
@WebFilter("/UrlFilter")
public class UrlFilter implements Filter {

    /**
     * Default constructor. 
     */
    public UrlFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see javax.servlet.Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see javax.servlet.Filter#doFilter(javax.servlet.ServletRequest, javax.servlet.ServletResponse, javax.servlet.FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		
		HttpServletRequest req=(HttpServletRequest)request;
		String uri=req.getRequestURI();
		String disallow=req.getContextPath()+"/upload/";
		if(uri.contains(disallow)){
			response.setCharacterEncoding("utf-8");
			response.setContentType("text/html");
			PrintWriter out=response.getWriter();
			out.write("此类文件禁止远程执行");
		}else{
			chain.doFilter(request, response);
		}
		
	}

	/**
	 * @see javax.servlet.Filter#init(javax.servlet.FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
