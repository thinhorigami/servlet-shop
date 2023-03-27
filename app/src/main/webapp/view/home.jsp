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
    <title>Home</title>
    <script
      src="https://kit.fontawesome.com/7b4e3c2fa8.js"
      crossorigin="anonymous"
    ></script>
    <script src="https://cdn.tailwindcss.com"></script>
    <script>
      tailwind.config = {
        theme: {
          extend: {},
        },
      };
    </script>
  </head>
  <body class="bg-slate-700">
    <header>
      <nav class="flex bg-slate-900 h-10 p-2">
        <ul class="flex ml-12">
          <li class="text-gray-300 hover:text-blue-300 mr-12">
            <a href="#">Home</a>
          </li>
          <li class="text-gray-300 hover:text-blue-300 mr-12">
            <a href="#">Home</a>
          </li>
          <li class="text-gray-300 hover:text-blue-300 mr-12">
            <a href="#">Home</a>
          </li>
          <li class="group relative text-gray-300 mr-12">
            <a class="hover:text-blue-300" href="#">user</a>
            <div
              class="group-hover:block shadow-2xl absolute hidden w-32 bg-slate-900 rounded-md"
            >
              <ul class="">
                <li class="p-2 hover:text-blue-300">
                  <a href="login">Login</a>
                </li>
                <li class="p-2 hover:text-blue-300">
                  <a href="#">Sign in</a>
                </li>
                <li class="p-2 hover:text-blue-300">
                  <a href="app">Logout</a>
                </li>
              </ul>
            </div>
          </li>
        </ul>
      </nav>
    </header>
    <main>
      <div
        class="p-3 justify-center inline-block max-h-full max-w-lg hover:shadow-lg bg-slate-200 rounded-md mt-5 ml-5"
      >
        <h2 class="font-bold">tible</h2>
        <iframe
          width="300"
          height="150"
          src="https://www.youtube.com/embed/6UlU_FsicK8"
          title="YouTube video player"
          frameborder="0"
          allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
          allowfullscreen
        ></iframe>
        <div class="pt-5 pb-2">
          <i class="fa-regular fa-heart fa-xl"></i>
        </div>
      </div>
      <div
        class="p-3 justify-center inline-block max-h-full max-w-lg hover:shadow-lg bg-slate-200 rounded-md mt-5 ml-5"
      >
        <h2 class="font-bold">tible</h2>
        <iframe
          width="300"
          height="150"
          src="https://www.youtube.com/embed/XTZVbmz7LpY" 
          title="YouTube video player"
          frameborder="0"
          allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
          allowfullscreen
        ></iframe>
        <div class="pt-5 pb-2">
          <i class="fa-regular fa-heart fa-xl"></i>
        </div>
      </div>
      <div
        class="p-3 justify-center inline-block max-h-full max-w-lg hover:shadow-lg bg-slate-200 rounded-md mt-5 ml-5"
      >
        <h2 class="font-bold">tible</h2>
        <iframe
          width="300"
          height="150"
          src="https://www.youtube.com/embed/u72H_zZzkcw"
          title="YouTube video player"
          frameborder="0"
          allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
          allowfullscreen
        ></iframe>
        <div class="pt-5 pb-2">
          <i class="fa-regular fa-heart fa-xl"></i>
        </div>
      </div>
      <div
        class="p-3 justify-center inline-block max-h-full max-w-lg hover:shadow-lg bg-slate-200 rounded-md mt-5 ml-5"
      >
        <h2 class="font-bold">tible</h2>
        <iframe
          width="300"
          height="150"
          src="https://www.youtube.com/embed/8PVufdYi2zs"
          title="YouTube video player"
          frameborder="0"
          allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
          allowfullscreen
        ></iframe>
        <div class="pt-5 pb-2">
          <i class="fa-regular fa-heart fa-xl"></i>
        </div>
      </div>
      <div
        class="p-3 justify-center inline-block max-h-full max-w-lg hover:shadow-lg bg-slate-200 rounded-md mt-5 ml-5"
      >
        <h2 class="font-bold">tible</h2>
        <iframe
          width="300"
          height="150"
          src="https://www.youtube.com/embed/IyBhFma4H1A" 
          title="YouTube video player"
          frameborder="0"
          allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
          allowfullscreen
        ></iframe>
        <div class="pt-5 pb-2">
          <i class="fa-regular fa-heart fa-xl"></i>
        </div>
      </div>
      <div
        class="p-3 justify-center inline-block max-h-full max-w-lg hover:shadow-lg bg-slate-200 rounded-md mt-5 ml-5"
      >
        <h2 class="font-bold">tible</h2>
        <iframe
          width="300"
          height="150"
          src="https://www.youtube.com/embed/YP3ArrzmDt0"
          title="YouTube video player"
          frameborder="0"
          allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
          allowfullscreen
        ></iframe>
        <div class="pt-5 pb-2">
          <i class="fa-regular fa-heart fa-xl"></i>
        </div>
      </div>
      <div
        class="p-3 justify-center inline-block max-h-full max-w-lg hover:shadow-lg bg-slate-200 rounded-md mt-5 ml-5"
      >
        <h2 class="font-bold">tible</h2>
        <iframe
          width="300"
          height="150"
          src="https://www.youtube.com/embed/D-h8L5hgW-w"
          title="YouTube video player"
          frameborder="0"
          allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
          allowfullscreen
        ></iframe>
        <div class="pt-5 pb-2">
          <i class="fa-regular fa-heart fa-xl"></i>
        </div>
      </div>
      <div
        class="p-3 justify-center inline-block max-h-full max-w-lg hover:shadow-lg bg-slate-200 rounded-md mt-5 ml-5"
      >
        <h2 class="font-bold">tible</h2>
        <iframe
          width="300"
          height="150"
          src="https://www.youtube.com/embed/ouncVBiye_M"
          title="YouTube video player"
          frameborder="0"
          allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
          allowfullscreen
        ></iframe>
        <div class="pt-5 pb-2">
          <i class="fa-regular fa-heart fa-xl"></i>
        </div>
      </div>
    </main>
  </body>
</html>
