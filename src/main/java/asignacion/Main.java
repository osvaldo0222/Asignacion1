package asignacion;

import spark.ModelAndView;
import spark.Session;
import spark.template.freemarker.FreeMarkerEngine;

import java.util.HashMap;
import java.util.Map;

import static spark.Spark.*;

public class Main {

    public static void main(String[] args) {

        port(4567);
        staticFiles.location("/spark/template/freemarker");

        before("/", (request, response) -> {
            Usuario user = request.session(true).attribute("user");
            if (user == null) {
                response.redirect("/login");
                halt();
            }
        });

        get("/login", (request, response) -> {
            return renderFreemarker(null, "formUser.ftl");
        });

        post("/autenticar", (request, response) -> {
            Usuario user = new Usuario(request.queryParams("usuario"), request.queryParams("password"));
            if ((user.getUsuario().equals("osvaldo") && user.getPassword().equals("123")) || (user.getUsuario().equals("edgar") && user.getPassword().equals("123"))) {
                Session session = request.session(true);
                session.attribute("user", user);
                response.redirect("/");
            } else {
                response.redirect("/login");
            }
            return "";
        });

        get("/", (request, response) -> {
            Session session = request.session();
            Usuario user = session.attribute("user");
            Map<String, Object> values = new HashMap<>();
            values.put("user", user);
            return renderFreemarker(values, "inicio.ftl");
        });
    }

    public static String renderFreemarker(Map<String, Object> model, String templatePath) {
        return new FreeMarkerEngine().render(new ModelAndView(model, templatePath));
    }
}
