#include <crow.h>
#include <string>

class RegisterView final {
  std::string username;
  std::string password;

public:
  crow::response regist(const crow::request &req);

private:
  bool username_is_valid();

  bool password_is_valid();

  void store_userinfo();
};
