file(GLOB dlls ${CMAKE_BINARY_DIR}/../src/*.dll)
message(STATUS "Files to copy: ${dlls}. From: ${CMAKE_BINARY_DIR}")
foreach(dll ${dlls})
  message(
    STATUS "Copying dll runtime file ${dll} to runtime dir ${CMAKE_BINARY_DIR}")
  file(COPY ${dll} DESTINATION ${CMAKE_BINARY_DIR})
endforeach(dll)
