# composer help
+ 将composer常用操作改成bat命令，双击即用
+ 创建和安装项目的元数据使用 https://packagist.phpcomposer.com
+ 请确保php.lnk的路径正确

## composer#create.bat
+ 创建新的项目
+ 将-composer-help放到项目的根目录（或者是新目录
+ 双击composer#create.bat
+ 在命令行输入项目名，然后文件就会下载到你的根目录（也就是上一级目录上

## composer#install.bat
+ 从项目的根目录读取（上一级目录上）读取json文件安装依赖库


## migrate#mark.bat
+ 创建新的数据库迁移

## migrate#mark.bat
+ 创建新的数据库迁移

## migrate#refresh.bat
+ 重新部署数据库迁移，并创建种子数据


## 可能会遇到的问题

### 找不到PHP：
+ php.exe使用的是php.lnk的绝对路径，如果不同记得修改
+ 右键php.lnk ->快捷方式tab -> 目标
+ 修改为你的php.exe的绝对路径

### 如果执行期间出现如下错误：
PHP Fatal error:  Uncaught TypeError: Argument 1 passed to App\Exceptions\Handler::report() 
+ 有可能是因为依赖库的版本错误
+ 建议重新执行一次 composer#install.bat 重新依赖库