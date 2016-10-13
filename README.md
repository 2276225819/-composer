# composer help
+ 将composer常用操作改成bat命令，双击即用
+ 请确保***php.lnk***的路径正确


## key#gen.bat
+ 生成新的APP_KEY（laravel >= 5.1）
+ 详细https://laravel.com/docs/5.1/installation#environment-configuration
+ 创建项目如果没用在 ***.env*** 文件上生成新的APP_KEY 可以手动生成一次 
+ 生成后APP_KEY 会自动写入到 ***.env*** 文件里面


## composer#create.bat
+ 创建新的项目
+ 将下载的 ***.composer-help*** 放到项目的根目录（或者是新目录
+ 双击***composer#create.bat***
+ 在命令行输入项目名，然后文件就会下载到你的根目录（也就是上一级目录上

## composer#install.bat
+ 从项目的根目录读取（上一级目录上）读取***composer.json***文件安装依赖库
+ 安装的元数据将会使用 https://packagist.phpcomposer.com 并且写入到***composer.json***


## migrate#mark.bat
+ 创建新的数据库迁移

## migrate#mark.bat
+ 创建新的数据库迁移

## migrate#refresh.bat
+ 重新部署数据库迁移，并创建种子数据

APP_KEY=Vy4QW7cVRPTsqTluV32jjQzZAavCR0Sd

## 可能会遇到的问题

### 找不到PHP：
+ ***php.exe***使用的是***php.lnk***的绝对路径，如果不同记得修改
+ 修改方法：右键php.lnk -> 属性 ->快捷方式tab -> 目标
+ 将目标路径修改为你的***php.exe***的绝对路径


###  如果执行期间出现如下错误：
No supported encrypter found. The cipher and / or key length are invalid.
+ 创建项目的时候没用成功执行 composer.json.scripts.post-create-project-cmd 
+ 需要手动执行一次 ***key#gen.bat*** 生成APP_KEY

### 如果执行期间出现如下错误：
PHP Fatal error:  Uncaught TypeError: Argument 1 passed to App\Exceptions\Handler::report() 
+ 有可能是因为依赖库的版本错误
+ 建议重新执行一次 ***composer#install.bat*** 更新依赖库
+ 检测当前php版本是否>=7.0 如果是请更换其他版本