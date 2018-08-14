# VSCode + CMake编译C/C++教程


## 路线图
- [x] 所需MSYS包安装
- [x] VSCode插件和环境配置
- [x] GCC平台编译
- [ ] MSVC CL平台编译

## 目的
1. 在Windows平台中继续使用VS Code编写调试C/C++程序
2. 在Windows平台中兼顾gcc的项目编译，减少跨平台错误
3. 避免使用Visual Studio的相应键位，使用VS Code的高效编辑


## 准备
1. MSYS2(推荐) / MinGW
2. VSCode
3. VSCode 插件 (C/C++, Cmake, Cmake-tools)

## 路径与环境变量设置
1. `MSYS_DIR=C:\msys64`
2. `MINGW64_DIR=C:\msys64\mingw64`
3. 加入`Path`: `%MSYS_DIR%\usr\bin`, `%MINGW64_DIR%\bin`

## MSYS安装配置
1. 安装MSYS2
2. 修改MSYS的Server配置，分别在对应文件开头加入如下语句
    ```bash
    # in mirrorlist.msys
    Server = http://mirrors.ustc.edu.cn/msys2/msys/$arch 
    # in mirrorlist.mingw64
    Server = http://mirrors.ustc.edu.cn/msys2/mingw/x86_64
    # in mirrorlist.mingw32
    Server = http://mirrors.ustc.edu.cn/msys2/mingw/i686
    ```

3. 从MSYS库安装`msys/make`
4. 安装MinGW库安装`gcc`、`gdb`、`cmake`、`make`和`opencv`、`boost`(可选)等相关组件库


## VSCode配置
1. 建立项目文件夹
2. `Ctrl+Shift+P` -> `C/Cpp: Edit Configuration...`, 输入如下配置: (若是`gcc`位置不同，需要自行修改`compilerPath`和`includePath`)
   ```json
   {
        "configurations": [
            {
                "name": "clang",
                "includePath": [
                    "${workspaceFolder}/**",
                    "C:/msys64/mingw64/include"
                ],
                "defines": [
                    "_DEBUG",
                    "UNICODE",
                    "_UNICODE"
                ],
                "compilerPath": "c:/msys64/mingw64/bin/gcc.exe", 
                "cStandard": "c11",
                "cppStandard": "c++17",
                "intelliSenseMode": "clang-x64"
            }
        ],
        "version": 4
    }
   ```
3. 编写C/C++文件
4. 配置当前Workspace中的C/C++ IntelliSense设置：
   ```json
   {
        "cmake.configureOnOpen": true,
        "cmake.generator": "MSYS Makefiles",
        "C_Cpp.default.configurationProvider": "vector-of-bool.cmake-tools"
    }
   ```
5. 在项目根目录下建立`CMakeLists.txt`,配置项目的主要编译内容(参见文件夹中的三个例子)
6. 在对应的自定义包目录下建立`CMakeLists.txt`,将对应的子目录声明加入对应的模块
7. 在根目录`CMakeLists.txt`使用`Ctrl+Shift+P` -> `CMake: Configure`来配置项目环境变量
8. `Ctrl+Shift+P` -> `CMake: Build`
9.  到对应的`build`目录下找到对应的可执行文件
10. 配置调试`launch.json`,参考模板如下:
    ```json
    {
        "version": "0.2.0",
        "configurations": [
            {
                "name": "(gdb) Launch",
                "type": "cppdbg",
                "request": "launch",
                "program": "${workspaceFolder}/build/cmtst.exe",
                "args": [],
                "stopAtEntry": false,
                "cwd": "${workspaceFolder}",
                "environment": [],
                "externalConsole": true,
                "MIMode": "gdb",
                "miDebuggerPath": "C:/msys64/mingw64/bin/gdb.exe",
                "setupCommands": [
                    {
                        "description": "Enable pretty-printing for gdb",
                        "text": "-enable-pretty-printing",
                        "ignoreFailures": true
                    }
                ]
            }
        ]
    }
    ```
## 代码参考
请移步个人[Github](https://github.com/russellfei/cmake_vscode.git)
