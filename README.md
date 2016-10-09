# composer help
+ 将composer常用操作改成bat命令，双击即用
+ 创建的元数据将会使用 https://packagist.phpcomposer.com
+ 请确保***php.lnk***的路径正确

## composer#create.bat
+ 创建新的项目
+ 将下载的 ***.composer-help*** 放到项目的根目录（或者是新目录
+ 双击***composer#create.bat***
+ 在命令行输入项目名，然后文件就会下载到你的根目录（也就是上一级目录上

## composer#install.bat
+ 从项目的根目录读取（上一级目录上）读取***composer.json***文件安装依赖库


## migrate#mark.bat
+ 创建新的数据库迁移

## migrate#mark.bat
+ 创建新的数据库迁移

## migrate#refresh.bat
+ 重新部署数据库迁移，并创建种子数据


## 可能会遇到的问题

### 找不到PHP：
+ ***php.exe***使用的是***php.lnk***的绝对路径，如果不同记得修改
+ 修改方法：右键php.lnk -> 属性 ->快捷方式tab -> 目标
+ 将目标路径修改为你的***php.exe***的绝对路径

### 如果执行期间出现如下错误：
PHP Fatal error:  Uncaught TypeError: Argument 1 passed to App\Exceptions\Handler::report() 
+ 有可能是因为依赖库的版本错误
+ 建议重新执行一次 ***composer#install.bat*** 重新依赖库