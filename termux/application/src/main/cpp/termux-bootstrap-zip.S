     .global blob
     .global blob_size
     .section .rodata
 blob:
#if defined __aarch64__
     .incbin "/storage/emulated/0/download/AndroidIDE-dev/AndroidIDE-dev/termux/application/build/bootstrap-packages/bootstrap-aarch64.zip"
 #elif defined __arm__
     .incbin "/storage/emulated/0/download/AndroidIDE-dev/AndroidIDE-dev/termux/application/build/bootstrap-packages/bootstrap-arm.zip"
 #elif defined __x86_64__
     .incbin "/storage/emulated/0/download/AndroidIDE-dev/AndroidIDE-dev/termux/application/build/bootstrap-packages/bootstrap-x86_64.zip"
 #else
 # error Unsupported arch
 #endif
 1:
 blob_size:
     .int 1b - blob
 