package controller.util;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@WebFilter(urlPatterns = { "/center.jsp" }, initParams = { @WebInitParam(name = "fileName", value = "log.txt") })
public class LogFilter implements Filter {
	File file;
	BufferedWriter writer = null;

	@Override
	public void init(FilterConfig fConfig) throws ServletException {
		String fileName = fConfig.getInitParameter("fileName");
		String path = fConfig.getServletContext().getRealPath("/");
		file = new File(path + "/" + fileName);
		try {
			writer = new BufferedWriter(new FileWriter(file, true));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	ExecutorService service = Executors.newSingleThreadExecutor();

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		service.execute(new Runnable() {
			@Override
			public void run() {
				HttpServletRequest httpRequest = (HttpServletRequest) request;
				HttpSession session = httpRequest.getSession();
				if (session != null) {
					String id = (String) session.getAttribute("userId");
					if (id != null) {
						String url = httpRequest.getRequestURL().toString();
						String ip = httpRequest.getRemoteAddr();
						long accessTime = httpRequest.getSession().getLastAccessedTime();
						DateFormat df = new SimpleDateFormat("yyyy-MM-dd, HH:mm:ss");
						String format = df.format((new Date(accessTime)));
						String sentence = "";
						sentence += "URL : " + url + "\r\n" + "IP : " + ip + "\r\n";
						try {
							writer.write(sentence);
							writer.write("Time :" + format + "\r\n");
							writer.write("ID:" + id);
							writer.newLine();
							writer.newLine();
							writer.flush();
						} catch (IOException e) {
							e.printStackTrace();
						}
					}
				}
			}
		});
		chain.doFilter(request, response);
	}

	public void destroy() {
		try {
			writer.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		service.shutdown();
	}
}
