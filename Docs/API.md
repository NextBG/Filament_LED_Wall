# PilaWall API

2021.03.09 -> v1.0



Mobile Phone as Client; ESP32 as Server

**Client** --request--> **Server** | --> {Method}/{path}?{queries} | Parameter Discription

**Client** <--response-- **Server** | <-- {Code}/{message} | Parameter Discription

\* {Discussion & Todo}



### Initialization

--> GET/init?**v**=1 | v={**version_number**: *Int*}

<-- 200/"**w128h64**" | w{**width**: *Int*}h{**width**: *Int*}

<-- 200/"**e101**" | e{**error_code**: *Int*}



### Control Signals

--> GET/ctrl?**mode**=1 | mode={**mode_number**: *Int*}

*Mode?；0全关；1全开；10实时显示ESP摄像头内容；11播放缓存；20～31内置预设；其他？

<-- 200/"**e101**" | e{**error_code**: *Int*}



### Data Transfers

--> GET/cache?**data**=10010110... | data={**data**: *bits[w\*h]*}

<-- 200/"**e101**" | e{**error_code**: *Int*}



### Error Code

**0** - No error

##### Type 0 : Warnings

**1** - Warning: Width\*height too large, slow speed

**2** - Warning: Weak signal from device

**3** - Warning: Low battery level

##### Type 1 : Error on client request

**100** - Unhandled error

**101** - API version outdated

**102** - Unexpected parameters | 没有约定的奇怪参数

**103** - Unsupported values | 数据类型错误，值范围错误

**104** - Wrong lenth | 比如Data长度不等于宽乘高

##### Type 2 : Error on firmware

**200** - Unhandled error

**201** - Too large w\*h, out of cache space

**202** - Too large w\*h, larger than LED count

##### Type 3 : Error on hardware

**300** - Unhandled error

**301** - Power supply error

**302** - Circuit structure error

##### Type others

**999** - Fatal error