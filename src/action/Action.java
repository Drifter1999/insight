package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public interface Action {
    public ActionForward execute(HttpServletRequest request, HttpServletResponse response);
}
