# cmake-example-repo

| **CI Service** | Build Status |
|:---------------|-------------:|
| GitHub Actions | [![Build Status (GitHub Actions)](https://github.com/vanyabeat/cmake-example-repo/actions/workflows/ci-cmake_tests.yml/badge.svg)](https://github.com/vanyabeat/cmake-example-repo/actions/workflows/ci-cmake_tests.yml) |

Примеры гуглтестов [Google Test](https://code.google.com/p/googletest)

## Сборка

После того как склонировали, собирите:
bash
```
cmake -S . -B mybuild
cd mybuild
cmake --build .
```

Запустить тесты:
```
ctest
```