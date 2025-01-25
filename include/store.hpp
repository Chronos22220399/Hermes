#pragma once
#include "RegisterView.h"

inline void run() {
  crow::SimpleApp app;
  RegisterView regist;

  CROW_ROUTE(app, "/register")
      .methods("POST"_method)(
          std::bind(&RegisterView::regist, &regist, std::placeholders::_1));

  app.port(17800).run();
}
