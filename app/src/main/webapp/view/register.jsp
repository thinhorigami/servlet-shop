<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Document</title>
        <script src="https://cdn.tailwindcss.com"></script>
        <script>
            tailwind.config = {
                theme: {
                    extend: {},
                },
            };
        </script>
    </head>
    <body class="bg-slate-800">
        <div
            class="flex items-center justify-center h-screen bg-slate-700"
            >
            <div class="flex items-center justify-center
                 w-96 h-96 bg-slate-300 rounded-md
                 hover:shadow-lg  hover:shadow-blue-500"
                 >
                <form action="/app/register" method="post" class="space-y-2">
                    <div>
                        <h1 class="font-bold justify-center text-center">Login</h1>
                    </div>  
                    <div>
                        <label for="email">email</label>
                    </div>
                    <div>
                        <input type="email" name="email" id="email" class="outline-none" />
                    </div>
                    <div>
                        <label for="name"> name </label>
                    </div>
                    <div>
                        <input type="text" name="name" id="name" class="outline-none"/>
                    </div>
                    <div>
                        <label for="password"> password </label>
                    </div>
                    <div>
                        <input type="password" name="password" id="password" class="outline-none"/>
                    </div>
                    <div>
                        <label for="confirn-password"> confirn password </label>
                    </div>
                    <div>
                        <input type="password" name="confirn_password" id="confirn-password" class="outline-none"/>
                    </div>
                    <div>
                        <button type="submit" class="bg-slate-500 pl-2 pr-2 pt-1 pb-1">Register</button>
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>
