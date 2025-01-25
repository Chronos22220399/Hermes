#include "../datas/include/admin.h"
#include <fmt/format.h>
#include <sqlpp11/sqlite3/connection.h>

int main() {
  sqlpp::sqlite3::connection_config config;
  config.path_to_database = "./datas/sqlite";
  config.debug = false;

  try {
    sqlpp::sqlite3::connection db{config};
    Admin::Admin admin;
    db.execute(R"()");
  } catch (const std::exception &e) {
    fmt::println(e.what());
  }
  return 0;
}
