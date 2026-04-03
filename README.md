# MIT 6.5840 Labs

## 1. Go 环境配置

### 推荐版本
推荐使用 Go 1.22 或更高版本。

### 安装方式
可以通过 [Go 官方网站](https://golang.org/dl/) 下载并安装 Go。

### GOPATH/GOMOD
- GOPATH: 必须设置，默认路径是 `~/go`。
- GOMOD: 使用 Go Modules，确保在项目根目录下有 `go.mod` 文件。

### 常用命令
```bash
# 安装依赖
go mod tidy

# 编译代码
go build

# 运行代码
go run .
```

### VS Code 配置
在 VS Code 中安装 Go 扩展插件，并根据提示进行配置。

## 2. Nix flake 的使用

### nix 安装
可以通过以下命令安装 Nix:
```bash
sh <(curl -L https://nixos.org/nix/install)
```

### 启用 flakes
在 `~/.config/nix/nix.conf` 中添加以下内容:
```
experimental-features = nix-command flakes
```

### direnv 可选
可以安装 [direnv](https://direnv.net/) 来自动加载环境。

### 常用命令
```bash
# 进入项目环境
nix develop
```

### 进入开发环境
使用 `nix develop` 命令进入开发环境。

### 常见问题
- 如果出现问题，可以查阅 Nix 文档或相关社区。

## 3. Dev Container 配置

### 需要的工具
- Docker
- VS Code

### 如何在 VS Code 中打开
确保安装了 Remote - Containers 扩展，并打开仓库文件夹。

### 容器内使用 Go
在 dev container 环境中可以直接使用 Go 命令。

### 调试与测试
可以使用 VS Code 的调试工具进行调试。

### 性能提示
使用 Go 的内置工具分析性能。

## 4. 如何上手学习 MIT 6.5840 的 Go Labs

### 课程与实验简介
该课程涵盖分布式系统的重要概念，参见[网站](https://pdos.csail.mit.edu/6.824/index.html)

### 仓库结构假设
仓库包括多个 Lab，每个 Lab 有独立的目录/分支。

### 每个 Lab 的建议学习路径
1. 阅读 Lab 提纲
2. 完成相关练习
3. 运行示例代码

### 如何运行测试
使用 Go 测试工具:
```bash
go test
```

### 如何提交
通过 Pull Request 的形式提交代码。

### 常见坑
- race 条件:
使用 `-race` 标志进行检查。
- deadlock:
确保已处理所有并发情况。
- 不确定性测试:
使用随机数据测试代码。
- 日志与调试技巧: 
使用 Go 的 `log` 包进行日志记录。
