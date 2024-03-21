package filter;


import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import java.io.IOException;

public class AccessCounterFilter implements Filter {

    private int accessCount = 0;

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest sr, ServletResponse sr1, FilterChain fc) throws IOException, ServletException {
        accessCount++;
        
         fc.doFilter(sr, sr1);
    }

    @Override
    public void destroy() {

    }
    
    
    public int getAccessCount() {
        return accessCount;
    }

}
