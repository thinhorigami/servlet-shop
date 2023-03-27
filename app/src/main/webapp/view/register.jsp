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
    <div class="ntt-login-component container flex mx-auto space-x-4 justify-center py-16">
      <div class="w-full p-[10%] bg-blue-300 space-y-4 hover:shadow-2xl rounded-md">
        <h1 class="font-bold">Login</h1>
        <form action="/app/login" method="post" class="space-y-2">
          <div>
            <div>
              <label for="login_email">email</label>
            </div>
            <input type="email" name="login_email" id="login_email" class="
              focus:ring
              focus:ring-green-300
              placeholder:italic
              placeholder:text-slate-700
              w-full
              pl-1
              pr-1
              rounded-xl
              shadow-md
              active:shadow-rose-500
              focus:outline-none
              font-sans
              text-sm
              font-normal"/>
          </div>
          <div>
            <div>
              <label for="login_password">password</label>
            </div>
            <input type="password" name="login_password" id="login_password" class="
              w-full
              pl-1
              pr-1
              rounded-xl
              shadow-lg
              focus:shadow-cyan-300
              focus:outline-none
              font-sans"/>
          </div>
          <div>
            <input type="submit" value="login" class="w-full bg-green-300 hover:shadow-lg rounded-xl"/>
          </div>
        </form>
      </div>
      <div class="w-full bg-green-300 p-[10%] space-y-4 hover:shadow-2xl rounded-md">
        <h1 class="font-bold">Register</h1>
        <form action="/app/register" method="post" class="space-y-2">
          <div>
            <div>
              <label for="name">name</label>
            </div>
            <input type="text" name="name" id="name" pattern="[a-zA-Z]+" class="
              w-full
              pl-1
              pr-1
              rounded-md
              max-w-2xl
              shadow-lg
              focus:outline-none
              font-sans text-sm
              font-normal"/>
          </div>
          <div>
            <div>
              <label for="email">email</label>
            </div>
            <input type="email" name="email" id="email" class="
              w-full
              pl-1
              pr-1
              rounded-md
              max-w-2xl
              shadow-lg
              focus:outline-none
              font-sans text-sm
              font-normal"/>
            <div>
              <c:if test="${ not empty email_arealy_exists}">
                <label for="email"> ERROR! ${email_arealy_exists} </label>
              </c:if>
            </div>
          </div>
          <div>
            <div>
              <label class="font-sans text-sm font-normal" for="password">password</label>
            </div>
            <input type="password" name="password" id="password" pattern=".+" class="
              text-sm
              w-full
              pl-1
              pr-1
              rounded-md
              shadow-lg
              focus:outline-none"/>
          </div>
          <div>
            <div>
              <label for="confirn_password">confirn password</label>
            </div>
            <input type="password" name="confirn_password" id="confirn_password" pattern=".+" class="
              text-sm
              w-full
              pl-1
              pr-1
              rounded-md
              shadow-lg
              focus:outline-none"/>
              <div>
                <c:if test="${not empty password_not_match}">
                  <label for="confirn_password"> ERROR! ${password_not_match} </label>
                </c:if>
              </div>
          </div>
          <div>
            <input type="submit" value="login" placeholder="sign in" class="w-full hover:shadow-lg bg-blue-300 rounded-md" />
          </div>
        </form>
      </div>
    </div>
  </body>
</html>
