#pragma once
#include <iostream>
#include <optional>
#include <sodium.h>
#include <string>

class Encrypter {
public:
  // 哈希加密信息
  static std::optional<std::string> hash_message(const std::string &password);

  // 校验哈希加密后的信息
  static bool verify_hashed_message(const std::string &hash,
                                    const std::string &password);
};
