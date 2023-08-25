set(GMSSL_VERSION 1.1)
set(GMSSL_REF 3ec1e8a9be4c9ae90dcc0e6d68cf8306d8e93185)
set(GMSSL_AUTHORIZATION_TOKEN N7jDURLAfuqzcBeZUz23)
vcpkg_download_distfile(ARCHIVE
    URLS "https://gitlab.cy-data.com/C-Chain/GmSSL/repository/archive.tar.gz?ref=${GMSSL_REF}&private_token=${GMSSL_AUTHORIZATION_TOKEN}"
    FILENAME "gmssl-${GMSSL_REF}.tar.gz"
    SHA512 dcf5f4faee74f75432117b00aec21358c51cd848deedf464d18414516b5bfb14b84fb9925ff6eeeac0b36ce6b4645b196469ce297b76b64023c702c44d288895
)

vcpkg_find_acquire_program(PERL)
get_filename_component(PERL_EXE_PATH ${PERL} DIRECTORY)
vcpkg_add_to_path("${PERL_EXE_PATH}")

if(VCPKG_TARGET_IS_UWP)
    include("${CMAKE_CURRENT_LIST_DIR}/uwp/portfile.cmake")
elseif(VCPKG_TARGET_IS_WINDOWS AND NOT VCPKG_TARGET_IS_MINGW)
    include("${CMAKE_CURRENT_LIST_DIR}/windows/portfile.cmake")
else()
    include("${CMAKE_CURRENT_LIST_DIR}/unix/portfile.cmake")
endif()


file(INSTALL "${CMAKE_CURRENT_LIST_DIR}/usage" DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}")
