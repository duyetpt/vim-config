;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here

(require 'company)
(setq company-idle-delay 0.2
      company-minimum-prefix-length 3)

(setq irony-additional-clang-options
      (append '("-I" "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/include/c++/v1") irony-additional-clang-options))
(setq irony-additional-clang-options
      (append '("-isystem" "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include") irony-additional-clang-options))
(setq irony-additional-clang-options
      (append '("-std=c++17") irony-additional-clang-options))
