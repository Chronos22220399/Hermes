#include "../include/RegisterView.h"
#include "../include/Encrypter.h"
#include <fmt/format.h>

// Register
crow::response RegisterView::regist(const crow::request &req) {
  crow::json::rvalue data = crow::json::load(req.body);
  crow::json::wvalue res_data;
  std::string username = data["username"].s();
  std::string password = data["password"].s();

  this->username = username;
  this->password = password;

  if (!data) {
    // data is empty
    res_data["status"] = 204;
    res_data["message"] = "No Content";
    // data is empty
  } else if (!username_is_valid()) {
    // username is valid
    res_data["status"] = 400;
    res_data["message"] = "Invalid Username";
    // username is valid
  } else if (!password_is_valid()) {
    // password is valid
    res_data["status"] = 400;
    res_data["message"] = "Invalid Password";
    // password is valid
  } else {
    fmt::println("[注册成功]: 账号: <{}> -- 密码: <{}>\n", username, password);
    // store the info
    auto hashed_password = Encrypter::hash_message(password);
    auto hashed_username = Encrypter::hash_message(username);
    if (!hashed_username or !hashed_password) {
      res_data["status"] = 400;
      res_data["message"] = "An Error Occurred When Hashing";
      return crow::response(res_data);
    }
    if (Encrypter::verify_hashed_message(hashed_password.value().c_str(),
                                         password.c_str()) &&
        Encrypter::verify_hashed_message(hashed_username.value().c_str(),
                                         username.c_str())) {
      fmt::println("[加密成功]: 账号: <{}> -- 密码: <{}>\n",
                   hashed_username.value(), hashed_password.value());
    }
    res_data["cookie"] = "12121";
    res_data["status"] = 200;
    res_data["message"] = "Register Successful!";
  }
  // store the info
  return crow::response(res_data);
}

// check username whether is valid
inline bool RegisterView::username_is_valid() {
  // if (find(encrypt(username))) {
  //     return false;
  // }
  return true;
}

// check password whether is valid
inline bool RegisterView::password_is_valid() {
  if (password.length() < 8) {
    return false;
  }
  return true;
}

// store the basic userinfo
inline void RegisterView::store_userinfo() {}
