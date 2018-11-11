cmake_minimum_required(VERSION 3.0.1)

hss_add_microservice(
    dbproxyhttp2
    SRC
        main.cpp
    PUBLIC
        nghttp2_asio
        nghttp2
        boost_system
        ssl
        crypto
        z
)

