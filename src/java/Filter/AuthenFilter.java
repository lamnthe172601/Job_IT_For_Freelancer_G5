package Filter;

import Models.User;
import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.Arrays;
import java.util.List;

public class AuthenFilter implements Filter {

    private static final boolean debug = true;
    private FilterConfig filterConfig = null;

    private List<String> publicResources = Arrays.asList(
            ".css", ".js", ".jpg", ".png", ".gif", ".ico", ".svg", ".pdf"
    );

    private List<String> publicURLs = Arrays.asList(
            "/login", "/logout", "/Register", "/lostpassword",
            "/blogList", "/blogGrid", "/home", "/BlogDetails", "/companydetail", "/PostDetails",
            "/SearchBlogController", "/postbylocation", "/postbycategory", "/companydetailcommon",
            "/SelectAccountType", "/About", "/SearchInHome", "/ApplyJobFormSearch", "/CompanyDetailCommon","/AllListPost"
    );

    private List<String> adminURLs = Arrays.asList(
            "/dashboardAdmin", "/profileAdmin", "/manageFreelancerAdmin", "/manageRecruiterAdmin",
            "/changeStatusUserAdmin", "/projectAdmin", "/moderationProjectAdmin",
            "/blogAdmin", "/skillAdmin"
    );

    private List<String> freelancerURLs = Arrays.asList(
            "/InputFreelancerProfile", "/UpdateProfile", "/MyProfile", "/listapply",
            "/ApplyJob", "/ApplyJobInListPost", "/ApplyJobFormListPost", "/ApplyJobFromPostDetail",
            "/AddFavourites", "/DeleteFavourites", "/RecruiterFavourites", "/ListFreelancer",
            "/ViewFreelancerProfile", "/AddFreelancerFavorites", "/DeleteFreelancerFavorites",
            "/allListPost"
    );

    private List<String> recruiterURLs = Arrays.asList(
            "/InputRecruiterProfile", "/recruitersetting", "/myListJobProject", "/DeleteRecruiterFavourites"
    );

    public AuthenFilter() {
    }

    private void doBeforeProcessing(ServletRequest request, ServletResponse response)
            throws IOException, ServletException {
        if (debug) {
            log("AuthenFilter:DoBeforeProcessing");
        }
    }

    private void doAfterProcessing(ServletRequest request, ServletResponse response)
            throws IOException, ServletException {
        if (debug) {
            log("AuthenFilter:DoAfterProcessing");
        }
    }

    public void doFilter(ServletRequest request, ServletResponse response,
            FilterChain chain)
            throws IOException, ServletException {

        HttpServletRequest httpRequest = (HttpServletRequest) request;
        HttpServletResponse httpResponse = (HttpServletResponse) response;
        HttpSession session = httpRequest.getSession(false);
        String requestURI = httpRequest.getRequestURI();

        // Check if the requested resource is public
        // Check if the requested resource is a file (contains a dot)
        boolean isFile = requestURI.contains(".");
        boolean isPublicResource = publicResources.stream().anyMatch(requestURI::endsWith);
        boolean isPublicURL = publicURLs.stream().anyMatch(requestURI::contains);

        // Nếu là tài nguyên công khai, không kiểm tra xác thực
        if (isFile || isPublicResource || isPublicURL) {
            chain.doFilter(request, response);
            return;
        }

        // Authentication check
        if (session == null || session.getAttribute("account") == null) {
            httpResponse.sendRedirect(httpRequest.getContextPath() + "/login");
            return;
        }

        // Role-based access control
        User user = (User) session.getAttribute("account");
        int role = user.getRoleID().getRoleID();

        boolean hasAccess = true;

        if (role == 3) { // Freelancer
            hasAccess = !adminURLs.stream().anyMatch(requestURI::contains)
                    && !recruiterURLs.stream().anyMatch(requestURI::contains);
        } else if (role == 4) { // Recruiter
            hasAccess = !freelancerURLs.stream().anyMatch(requestURI::contains)
                    && !adminURLs.stream().anyMatch(requestURI::contains);
        } else if (role == 1 || role == 2) { // Admin
            hasAccess = !freelancerURLs.stream().anyMatch(requestURI::contains)
                    && !recruiterURLs.stream().anyMatch(requestURI::contains);
        }

        if (hasAccess) {
            chain.doFilter(request, response);
        } else {
            httpResponse.sendRedirect(httpRequest.getContextPath() + "/login");
        }

        doAfterProcessing(request, response);
    }

    public FilterConfig getFilterConfig() {
        return (this.filterConfig);
    }

    public void setFilterConfig(FilterConfig filterConfig) {
        this.filterConfig = filterConfig;
    }

    public void destroy() {
    }

    public void init(FilterConfig filterConfig) {
        this.filterConfig = filterConfig;
        if (filterConfig != null) {
            if (debug) {
                log("AuthenFilter:Initializing filter");
            }
        }
    }

    @Override
    public String toString() {
        if (filterConfig == null) {
            return ("AuthenFilter()");
        }
        StringBuffer sb = new StringBuffer("AuthenFilter(");
        sb.append(filterConfig);
        sb.append(")");
        return (sb.toString());
    }

    private void sendProcessingError(Throwable t, ServletResponse response) {
        String stackTrace = getStackTrace(t);

        if (stackTrace != null && !stackTrace.equals("")) {
            try {
                response.setContentType("text/html");
                PrintStream ps = new PrintStream(response.getOutputStream());
                PrintWriter pw = new PrintWriter(ps);
                pw.print("<html>\n<head>\n<title>Error</title>\n</head>\n<body>\n");
                pw.print("<h1>The resource did not process correctly</h1>\n<pre>\n");
                pw.print(stackTrace);
                pw.print("</pre></body>\n</html>");
                pw.close();
                ps.close();
                response.getOutputStream().close();
            } catch (Exception ex) {
            }
        } else {
            try {
                PrintStream ps = new PrintStream(response.getOutputStream());
                t.printStackTrace(ps);
                ps.close();
                response.getOutputStream().close();
            } catch (Exception ex) {
            }
        }
    }

    public static String getStackTrace(Throwable t) {
        String stackTrace = null;
        try {
            StringWriter sw = new StringWriter();
            PrintWriter pw = new PrintWriter(sw);
            t.printStackTrace(pw);
            pw.close();
            sw.close();
            stackTrace = sw.getBuffer().toString();
        } catch (Exception ex) {
        }
        return stackTrace;
    }

    public void log(String msg) {
        filterConfig.getServletContext().log(msg);
    }
}
