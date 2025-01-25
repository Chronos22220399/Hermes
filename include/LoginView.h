#pragma once
#include "crow.h"
#include <fmt/format.h>
#include <optional>

class LoginView final {
  std::string username{};
  std::string password{};
  std::optional<std::string> token{std::nullopt};

public:
  crow::response login(const crow::request &req);
};
