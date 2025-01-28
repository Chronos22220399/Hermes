#include "../include/Eutils.hpp"
#include "../include/LoginView.h"
#include "./include/store.hpp"
#include <fmt/format.h>
#include <spdlog/sinks/basic_file_sink.h>
#include <memory>
#include <spdlog/spdlog.h>

#define SPFLOG_ACTIVE_LEVEL SPDLOG_LOGGER_TRACE

auto get_logger() {
  std::string logger_name{"./logs/Hermes"};
  try {
    std::shared_ptr<spdlog::logger> regLogger = spdlog::daily_logger_mt(logger_name.c_str(),
                                             (logger_name + ".log").c_str());
    regLogger->set_pattern(
        "[%n][%Y-%m-%d %H:%M:%S.%e] [%l] [%s %!:%#] [%t] %v");
    regLogger->set_level(spdlog::level::debug);
    spdlog::flush_every(std::chrono::seconds(5));
    return regLogger;
  } catch (const spdlog::spdlog_ex &e) {
    CATCH_LOG("日志初始化错误: {}", e.what());
    exit(-1);
  }
}

inline void run(std::shared_ptr<spdlog::logger> logger) {
  Encrypter::init();
  crow::SimpleApp app;
  RegisterView regist(logger);
  LoginView login(logger);

  CROW_ROUTE(app, "/register")
      .methods("POST"_method)(
          std::bind(&RegisterView::regist, &regist, std::placeholders::_1));

  CROW_ROUTE(app, "/login")
      .methods("POST"_method)(
          std::bind(&LoginView::login, &login, std::placeholders::_1));

  CROW_ROUTE(app, "/search")
      .methods("POST"_method)(
          [](const crow::request &request) { return crow::response(); });

  app.port(17800).run();
}

int main() {
  auto logger = get_logger();
  run(logger);
  return 0;
}
