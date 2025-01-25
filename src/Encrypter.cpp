#include "../include/Encrypter.h"

std::optional<std::string>
Encrypter::hash_message(const std::string &password) {
  if (sodium_init() < 0) {
    return std::nullopt;
  }
  unsigned char hashed_password[crypto_pwhash_STRBYTES];
  if (crypto_pwhash_str((char *)hashed_password, password.c_str(),
                        password.length(), crypto_pwhash_OPSLIMIT_INTERACTIVE,
                        crypto_pwhash_MEMLIMIT_INTERACTIVE) < 0) {
    return std::nullopt;
  }
  return std::string{(char *)hashed_password};
}

bool Encrypter::verify_hashed_message(const std::string &hash,
                                      const std::string &password) {
  return crypto_pwhash_str_verify(hash.c_str(), password.c_str(),
                                  password.length()) == 0;
}
