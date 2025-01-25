#pragma once
#include <sqlpp11/sqlite3/connection.h>

struct Admin {
  std::string username;
  std::string password;
  std::optional<std::string> token{std::nullopt};
};

class DataBase {
public:
  virtual bool query_admin(const Admin &admin) = 0;
};

class DataBase_Sqlite : DataBase {
  bool query_admin(const Admin &admin);
};
