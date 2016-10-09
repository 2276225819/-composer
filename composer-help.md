# 双击即用


## 创建数据库迁移
> migrate@mark.bat

## 部署数据库
> migrate@refresh.bat


## 错误

### 如果执行期间出现位置错误：

> PHP Fatal error:  Uncaught TypeError: Argument 1 passed to App\Exceptions\Handler::report() 

> 有可能是因为laraval的版本错误 , 建议重新执行一次 install.bat 重新加载vendor