# AndFixDemo

AndroidStudio，AndFix的Demo（官方的Demo是Eclipse的）

APK我已经生成好了，另加基本使用教程（官方的文档写的不是很清晰）

反正我什么都准备好了，想体验一下的可以看一下！！


## 直接体验

我已经准备好了一切，是不是超贴心！

### 安装 1.apk
```
cd apkpatch-1.0.3
adb install 1.apk
```
Run 起来，查看 log，Tag为 MainActivity，可以看到日志：


```
MainActivity: a
MainActivity: 0
MainActivity: 10
```

### push 补丁到SD卡

把apatch push到SD卡 sdcard 是我的路径 根据自己的路径来
```
adb push patch/out.apatch /sdcard/
```
### 重新安装1.apk 并run

```
adb install -r 1.apk
```

Run 起来，Tag 为`APP`有如下日志输出：

```
App: inited.
App: apatch loaded.
App: apatch:/storage/emulated/0/out.apatch added.
```

MainActivity 日志 :

```
MainActivity: b （不再是a而是b了！）
MainActivity: 0
MainActivity: 10
```

同时，TAG为`euler` 也有`fix success`的信息输出

表示成功啦！~


## 生成Patch

官方没有给具体的实例，这里我提供一个debugkeystore的实例：

注意我的是MAC，2.apk是新的apk

```
./apkpatch.sh -f 2.apk -t 1.apk -k debug.keystore -p android -a androiddebugkey -e android -o patch
```

执行完会在patch目录下生成补丁文件


