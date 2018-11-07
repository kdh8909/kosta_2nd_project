package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.util.ModelAndView;

public interface Controller {
	ModelAndView execute(HttpServletRequest req, HttpServletResponse rep) throws ServletException, IOException;

}
