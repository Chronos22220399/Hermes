#include "../include/LoginView.h"
#include "../include/Encrypter.h"

crow::response LoginView::login(const crow::request &req) {
  crow::json::wvalue res_data;
  crow::json::rvalue data = crow::json::load(req.body);
  auto hashed_username = Encrypter::hash_message(data["username"].s());
  auto hashed_password = Encrypter::hash_message(data["password"].s());
  if (!hashed_username) {
    res_data["message"] = "Invalid username";
    res_data["status"] = 400;
    return crow::response(res_data);
  }
  if (!hashed_password) {
    res_data["message"] = "Invalid password";
    res_data["status"] = 400;
  }
  std::string username = hashed_username.value();
  std::string password = hashed_password.value();

  return crow::response();
}
