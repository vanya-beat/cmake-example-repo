#include <gtest/gtest.h>
#include <string>
TEST(GoogleTestCi, Foo) {
  ASSERT_TRUE(true);
}
TEST(ExampleTest, DmitriiLeonidovich){
    std::string dml = "DmitriiLeonidovich";
    const char * dml_c = "DmitriiLeonidovich";
    ASSERT_STREQ(dml.c_str(), dml_c);
}
