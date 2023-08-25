# `vcpkg-GmSSL` GmSSL for [vcpkg](https://github.com/microsoft/vcpkg)

# Usage

````bash
git clone git@gitlab.jv.com:C-Chain/vcpkg-GmSSL.git
vcpkg install gmssl --overlay-ports=vcpkg-GmSSL
````

在安装完成后，添加如下配置到cmake的配置中：

````cmake
find_package(GmSSL REQUIRED)
target_link_libraries(main GmSSL::SSL GmSSL::Crypto)
````

# 参考

 - [Registries: Bring your own libraries to vcpkg](https://devblogs.microsoft.com/cppblog/registries-bring-your-own-libraries-to-vcpkg/)
