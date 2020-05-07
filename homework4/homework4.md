# Linux第四次实验报告

## shell脚本编程基础

### 实验环境  

>putty

>Ubuntu 18.04.4 Server  
 >>ImageMagick  
 >>p7zip-full    

```sudo apt-get install imagemagick``` 安装ImageMagick工具处理图片   
```sudo apt-get install p7zip-full``` 安装p7zip-full解压缩文本文件

### 任务一  
用bash编写一个图片批处理脚本，实现以下的功能：  
 - [x] 支持命令行参数方式使用不同功能  
 - [x] 支持对指定目录下所有支持格式的图片文件进行批处理
 - [x] 支持以下常见图片批处理功能的单独使用或组合使用  
 - - [x] 支持对jpeg格式图片进行图片质量压缩  
 - - [x] 支持对jpeg/png/svg格式图片在保持原始宽高比的前提下压缩分辨率  
 - - [x] 支持对图片批量添加自定义文本水印  
 - - [x] 支持批量重命名（统一添加文件名前缀或后缀，不影响原始文件扩展名）  
 - - [x] 支持将png/svg图片统一转换为jpg格式图片  

### 任务二  
用bash编写一个文本批处理脚本，对worldcupplayerinfo.tsv进行批量处理完成相应的数据统计任务：  
  
 - [x] 统计不同年龄区间范围（20岁以下、[20-30]、30岁以上）的球员数量、百分比  
 - [x] 统计不同场上位置的球员数量、百分比  
 - [x] 名字最长的球员是谁？名字最短的球员是谁？  
 - [x] 年龄最大的球员是谁？年龄最小的球员是谁？    

#### 任务结果  

* 统计不同年龄区间范围（20岁以下、[20-30]、30岁以上）的球员数量、百分比  
 * 20岁以下：  
     * 球员数量：9个
     * 百分比：1.22%  
 * 20-30岁：
     * 球员数量：600个
     * 百分比：81.52%
 * 30岁以上：  
     * 球员数量：127个
     * 百分比：17.26%  
* 统计不同场上位置的球员数量、百分比     
 *  Goalie：
     * 球员数量：96个  
     * 百分比：13.04%      
 *  Defender：
     * 球员数量：236个  
     * 百分比：32.07%  
 *  Midfielder：
     * 球员数量：268个  
     * 百分比：36.41%      
 *  Forward：
     * 球员数量：135个  
     * 百分比：18.34%      
 *  Défenseur：
     * 球员数量：1个  
     * 百分比：0.14%          
* 名字最长的球员：Lazaros Christodoulopoulos  
  名字最短的球员：Jô  
* 年龄最大的球员：Faryd Mondragon (42岁)  
  年龄最小的球员：Fabrice Olinga (18岁)

### 任务三  
用bash编写一个文本批处理脚本，对web_log.tsv进行批量处理完成相应的数据统计任务：  
- [x] 统计访问来源主机TOP 100和分别对应出现的总次数  
- [x] 统计访问来源主机TOP 100 IP和分别对应出现的总次数  
- [x] 统计最频繁被访问的URL TOP 100  
- [x] 统计不同响应状态码的出现次数和对应百分比  
- [x] 分别统计不同4XX状态码对应的TOP 10 URL和对应出现的总次数  
- [x] 给定URL输出TOP 100访问来源主机  

#### 任务结果  
* 统计访问来源主机TOP 100和分别对应出现的总次数  
*  次数 | 来源主机 
   :--:|:--:
   6530 |edams.ksc.nasa.gov  
   4846 |piweba4y.prodigy.com
   4791 |163.206.89.4
   4607 |piweba5y.prodigy.com
   4416 |piweba3y.prodigy.com
   3889| www-d1.proxy.aol.com
   3534 |www-b2.proxy.aol.com
   3463 |www-b3.proxy.aol.com
   3423| www-c5.proxy.aol.com
   3411 |www-b5.proxy.aol.com
   3407 |www-c2.proxy.aol.com
   3404 |www-d2.proxy.aol.com
   3337 |www-a2.proxy.aol.com
   3298 |news.ti.com
   3296 |www-d3.proxy.aol.com
   3293 |www-b4.proxy.aol.com
   3272 |www-c3.proxy.aol.com
   3234 |www-d4.proxy.aol.com
   3177 |www-c1.proxy.aol.com
   3134| www-c4.proxy.aol.com
   3123 |intgate.raleigh.ibm.com
   3088 |www-c6.proxy.aol.com
   3041 |www-a1.proxy.aol.com
   3011 |mpngate1.ny.us.ibm.net
   2983 |e659229.boeing.com
   2957| piweba1y.prodigy.com
   2906| webgate1.mot.com
   2761| www-relay.pa-x.dec.com
   2318| beta.xerox.com
   2311| poppy.hensa.ac.uk
   2237| vagrant.vf.mmc.com
   1910| palona1.cns.hp.com
   1793 |www-proxy.crl.research.digital.com
   1762 |koriel.sun.com
   1681 |derec
   1637 |trusty.lmsc.lockheed.com
   1623 |gw2.att.com
   1563 |cliffy.lfwc.lockheed.com
   1503| inet2.tek.com
   1485 |disarray.demon.co.uk
   1467 |gw1.att.com
   1435 |128.217.62.1
   1395 |interlock.turner.com
   1360 |163.205.1.19
   1354 |sgigate.sgi.com
   1336 |bocagate.bocaraton.ibm.com
   1324 |piweba2y.prodigy.com
   1311 |gw3.att.com
   1310 |keyhole.es.dupont.com
   1297 |n1144637.ksc.nasa.gov
   1292 |163.205.3.104
   1256 |163.205.156.16
   1252 |163.205.19.20
   1216 |erigate.ericsson.se
   1211 |gn2.getnet.com
   1089| gwa.ericsson.com
   1079| tiber.gsfc.nasa.gov
   1054 |128.217.62.2
   1017 |bstfirewall.bst.bls.com
   1015 |163.206.137.21
   1013 |spider.tbe.com
   1010 |gatekeeper.us.oracle.com
   995| www-c8.proxy.aol.com
   984 |whopkins.sso.az.honeywell.com
   966 |news.dfrc.nasa.gov
   949 |128.159.122.110
   940 |proxy0.research.att.com
   925 |proxy.austin.ibm.com
   902 |www-c9.proxy.aol.com
   901| bbuig150.unisys.com
   899 |corpgate.nt.com
   890 |sahp315.sandia.gov
   869 |amdext.amd.com
   848 |128.159.132.56
   830 |n1121796.ksc.nasa.gov
   825 |igate.uswest.com
   819 |gatekeeper.cca.rockwell.com
   815 |wwwproxy.sanders.com
   814 |gw4.att.com
   812 |goose.sms.fi
   808 |128.159.144.83
   805 |jericho3.microsoft.com
   798 |128.159.111.141
   786 |jericho2.microsoft.com
   782 |sdn_b6_f02_ip.dny.rockwell.com
   778 |lamar.d48.lilly.com
   776 |163.205.11.31
   772 |heimdallp2.compaq.com
   771 |stortek1.stortek.com
   762 |163.205.16.75
   759 |mac998.kip.apple.com
   742 |tia1.eskimo.com
   733 |www-e1f.gnn.com
   718 |www-b1.proxy.aol.com
   715 |reddragon.ksc.nasa.gov
   711 |128.159.122.137
   701 |rmcg.cts.com
   701 |bambi.te.rl.ac.uk
   697 |electron.mcc.com
   691 |163.205.23.76

* 统计访问来源主机TOP 100 IP和分别对应出现的总次数  
* 次数 | IP
   :--:|:--:
   4791 |163.206.89.4
   1435| 128.217.62.1
   1360| 163.205.1.19
   1292 |163.205.3.104
   1256| 163.205.156.16
   1252 |163.205.19.20
   1054 |128.217.62.2
   1015 |163.206.137.21
   949| 128.159.122.110
   848 |128.159.132.56
   808 |128.159.144.83
   798 |128.159.111.141
   776 |163.205.11.31
   762 |163.205.16.75
   711 |128.159.122.137
   691 |163.205.23.76
   672 |206.27.25.1
   647 |198.83.19.44
   641 |199.1.50.225
   624 |163.205.23.93
   610 |139.169.174.102
   600 |163.205.121.3
   598 |140.229.116.37
   591 |141.102.82.127
   586 |163.206.140.4
   573 |163.206.104.34
   567 |204.62.245.32
   565 |128.159.122.38
   563 |128.217.62.224
   563 |128.159.122.107
   553 |128.159.122.180
   549 |128.159.123.58
   544 |163.205.154.11
   532 |192.112.22.119
   518 |163.205.16.100
   503 |199.201.186.103
   503 |128.159.146.40
   494 |128.159.122.160
   486 |192.77.40.4
   482 |193.143.192.106
   480 |152.163.192.5
   478 |163.205.23.71
   475 |139.169.30.50
   469 |128.159.122.144
   466 |163.234.140.22
   463 |163.205.150.22
   457 |128.217.61.184
   451 |163.205.23.72
   448 |198.83.19.40
   446 |128.159.122.14
   443 |199.201.186.104
   443 |198.83.19.47
   443 |128.217.61.15
   441 |128.159.121.34
   438 |128.159.121.41
   435 |160.205.119.27
   432 |163.205.154.17
   432 |152.163.192.38
   432 |128.159.122.15
   423 |128.159.135.73
   423 |128.159.135.38
   421 |152.163.192.35
   415 |128.159.76.128
   413 |152.163.192.71
   412 |128.159.63.159
   409 |163.205.12.100
   404 |133.53.64.33
   402 |152.163.192.70
   397 |128.159.121.64
   396 |129.239.68.160
   391 |152.163.192.36
   389| 163.205.16.90
   389| 128.32.196.94
   385| 163.205.1.18
   384| 163.206.136.1
   383| 147.147.191.43
   374| 163.205.16.104
   374| 152.163.192.69
   373 |193.178.53.180
   371 |128.217.63.27
   367 |130.110.74.81
   366 |204.69.0.27
   365 |163.206.130.46
   359 |152.163.192.67
   357 |163.205.54.76
   356 |152.163.192.7
   354 |198.83.19.43
   350 |128.159.137.43
   348 |147.74.110.61
   345 |163.205.23.44
   343| 128.159.168.162
   339 |199-186.ico.att.net
   336 |158.27.59.88
   336 |152.163.192.3
   335 |163.205.166.15
   335 |128.159.145.21
   332 |163.205.2.180
   329 |128.217.61.98
   328 |152.163.192.66
   324 |163.205.3.38

* 统计最频繁被访问的URL TOP 100
* 次数 | URL
  :--:|:--:
  97410 |/images/NASA-logosmall.gif
  75337 |/images/KSC-logosmall.gif
  67448 |/images/MOSAIC-logosmall.gif
  67068 |/images/USA-logosmall.gif
  66444 |/images/WORLD-logosmall.gif
  62778 |/images/ksclogo-medium.gif
  43687 |/ksc.html
  37826 |/history/apollo/images/apollo-logo1.gif
  35138 |/images/launch-logo.gif
  30346| /
  27810| /images/ksclogosmall.gif
  24606| /shuttle/missions/sts-69/mission-sts-69.html
  24461| /shuttle/countdown/
  24383| /shuttle/missions/sts-69/count69.gif
  23405 |/shuttle/missions/sts-69/sts-69-patch-small.gif
  22453| /shuttle/missions/missions.html
  19877 |/images/launchmedium.gif
  17247 |/htbin/cdt_main.pl
  12160 |/shuttle/countdown/images/countclock.gif
  12137 |/icons/menu.xbm
  12057 |/icons/blank.xbm
  10345 |/software/winvn/winvn.html
  10308| /icons/image.xbm
  10134| /history/history.html
  10126| /history/apollo/images/footprint-logo.gif
   9439| /history/apollo/images/apollo-small.gif
   9230| /history/apollo/images/footprint-small.gif
   9037| /software/winvn/winvn.gif
   8985| /history/apollo/apollo.html
   8662 |/software/winvn/wvsmall.gif
   8610 |/software/winvn/bluemarb.gif
   8583 |/htbin/cdt_clock.pl
   7865 |/shuttle/countdown/liftoff.html
   7389 |/shuttle/resources/orbiters/orbiters-logo.gif
   7261 |/images/shuttle-patch-logo.gif
   7177| /history/apollo/apollo-13/apollo-13.html
   7040 |/images/
   7029 |/shuttle/countdown/video/livevideo2.gif
   6615 |/images/kscmap-tiny.gif
   6517 |/shuttle/technology/sts-newsref/stsref-toc.html
   6309 |/history/apollo/apollo-13/apollo-13-patch-small.gif
   5613 |/shuttle/missions/sts-71/sts-71-patch-small.gif
   5264 |/shuttle/missions/sts-69/images/images.html
   5248 |/icons/text.xbm
   5093 |/images/construct.gif
   4869 |/images/shuttle-patch-small.gif
   4846| /shuttle/missions/sts-69/movies/movies.html
   4791 |/shuttle/missions/sts-70/sts-70-patch-small.gif
   4785 |/icons/unknown.xbm
   4559 |/shuttle/missions/sts-69/liftoff.html
   4464 |/facilities/lc39a.html
   4434 |/shuttle/resources/orbiters/endeavour.html
   4365 |/history/apollo/images/apollo-logo.gif
   4066 |/shuttle/missions/sts-70/mission-sts-70.html
   4024 |/images/lc39a-logo.gif
   3817| /shuttle/resources/orbiters/endeavour-logo.gif
   3706| /shuttle/technology/sts-newsref/sts_asm.html
   3518 |/shuttle/countdown/countdown.html
   3507 |/shuttle/missions/sts-71/movies/movies.html
   3377 |/shuttle/countdown/video/livevideo.jpeg
   3140 |/history/apollo/apollo-11/apollo-11.html
   3130 |/shuttle/missions/sts-71/mission-sts-71.html
   3087 |/shuttle/missions/sts-70/images/images.html
   2945 |/shuttle/missions/sts-71/images/images.html
   2939 |/shuttle/missions/sts-73/mission-sts-73.html
   2865 |/images/faq.gif
   2864 |/shuttle/technology/images/srb_mod_compare_1-small.gif
   2818 |/shuttle/technology/images/srb_mod_compare_3-small.gif
   2715 |/shuttle/technology/images/srb_mod_compare_6-small.gif
   2701 |/history/apollo/apollo-11/apollo-11-patch-small.gif
   2586 |/elv/elvpage.htm
   2544 |/shuttle/missions/sts-73/sts-73-patch-small.gif
   2385 |/shuttle/countdown/video/sts-69-prelaunch-pad.gif
   2343 |/shuttle/missions/51-l/mission-51-l.html
   2293 |/images/launch-small.gif
   2256| /facilities/tour.html
   2201| /shuttle/missions/51-l/51-l-patch-small.gif
   2172 |/images/kscmap-small.gif
   2171 |/shuttle/resources/orbiters/challenger.html
   2159 |/shuttle/missions/sts-71/movies/sts-71-launch.mpg
   2146 |/shuttle/technology/sts-newsref/sts-lcc.html
   2133 |/htbin/wais.pl
   2120 |/facts/about_ksc.html
   2107 |/history/mercury/mercury.html
   2040 |/images/mercury-logo.gif
   1991 |/elv/elvhead3.gif
   1979 |/images/launchpalms-small.gif
   1936 |/images/whatsnew.gif
   1929 |/history/apollo/apollo-spacecraft.txt
   1915 |/facilities/vab.html
   1912 |/shuttle/resources/orbiters/columbia.html
   1908 |/shuttle/countdown/lps/fr.html
   1904 |/shuttle/resources/orbiters/challenger-logo.gif
   1892 |/images/ksclogo.gif
   1891 |/whats-new.html
   1874 |/elv/endball.gif
   1869 |/history/apollo/apollo-13/apollo-13-info.html
   1868 |/shuttle/missions/sts-74/mission-sts-74.html
   1845 |/elv/PEGASUS/minpeg1.gif
   1835 |/elv/SCOUT/scout.gif

* 统计不同响应状态码的出现次数和对应百分比    
*  |状态码|出现次数|百分比|
   |:--:|:--:|:--:|  
   |200 |1398987| 89.11387%|
   |302 | 26497 | 1.68783%|
   |304 |134146 | 8.54495%|
   |403 |171    | 0.01089%|
   |404 |10055  | 0.64049%|
   |500 |3      | 0.00019%|
   |501 |27     | 0.00172%|
  
* 分别统计不同4XX状态码对应的TOP 10 URL和对应出现的总次数  
* 403：  
* |URL|次数|
   |:--:|:--:|
   |/software/winvn/winvn.html/wvsmall.gif  |32次|
   |/software/winvn/winvn.html/winvn.gif    |32次|
   |/software/winvn/winvn.html/bluemarb.gif |32次|
   |/ksc.html/images/ksclogo-medium.gif     |12次|
   |/ksc.html/images/WORLD-logosmall.gif    |10次|
   |/ksc.html/images/USA-logosmall.gif      |10次|
   |/ksc.html/images/NASA-logosmall.gif     |10次|
   |/ksc.html/images/MOSAIC-logosmall.gif   |10次|
   |/ksc.html/facts/about_ksc.html          |5次 |
   |/ksc.html/shuttle/missions/missions.html|4次 |
  
* 404：
* |URL|次数|
   |:--:|:--:|
   |/pub/winvn/readme.txt|1337次|
   |/pub/winvn/release.txt|1185次|
   |/shuttle/missions/STS-69/mission-STS-69.html|683次|
   |/images/nasa-logo.gif|319次|
   |/shuttle/missions/sts-68/ksc-upclose.gif|253次|
   |/elv/DELTA/uncons.htm|209次|
   |/history/apollo/sa-1/sa-1-patch-small.gif|200次|
   |/://spacelink.msfc.nasa.gov|166次|
   |/images/crawlerway-logo.gif|160次|
   |/history/apollo/a-001/a-001-patch-small.gif|154次|

* 给定URL输出TOP 100访问来源主机
* 给定的URL：/images/
*  |次数|来源主机|
   |:--:|:--:|
   |130| www-a2.proxy.aol.com /images/|
   |120 |www-d3.proxy.aol.com /images/|
   |116 |www-c2.proxy.aol.com /images/|
    |115 |www-d1.proxy.aol.com /images/|
    |114 |www-d4.proxy.aol.com /images/|
    |114 |www-d2.proxy.aol.com /images/|
    |114 |www-c4.proxy.aol.com /images/|
    |108 |www-c6.proxy.aol.com /images/|
    |107 |www-c3.proxy.aol.com /images/|
    |107 |www-b5.proxy.aol.com /images/|
    |106 |www-b2.proxy.aol.com /images/|
     |97 |www-b4.proxy.aol.com /images/|
     |94 |www-c1.proxy.aol.com /images/|
     |94 |www-b3.proxy.aol.com /images/|
     |94 |www-a1.proxy.aol.com /images/|
     |88 |www-c5.proxy.aol.com /images/|
     |40 |srv1.freenet.calgary.ab.ca /images/|
     |24 |piweba4y.prodigy.com /images/|
     |23 |intgate.raleigh.ibm.com /images/|
     |22 |152.163.192.35 /images/|
     |21 |152.163.192.36 /images/|
     |20 |ppp0d-15.rns.tamu.edu /images/|
     |20 |152.163.192.4 /images/|
     |19 |piweba5y.prodigy.com /images/|
     |19 |152.163.192.70 /images/|
     |18 |152.163.192.71 /images/|
     |18 |152.163.192.69 /images/|
     |18 |152.163.192.38 /images/|
     |17 |dialup35.infobahnos.com /images/|
     |17 |152.163.192.7 /images/|
     |17 |152.163.192.37 /images/|
     |16 |152.163.192.3 /images/|
     |14 |stortek1.stortek.com /images/|
     |14 |bstfirewall.bst.bls.com /images/|
     |14 |152.163.192.67 /images/|
     |13 |www-b1.proxy.aol.com /images/|
     |13 |piweba1y.prodigy.com /images/|
     |13 |152.163.192.66 /images/|
     |11 |webgate1.mot.com /images/|
     |11 |poppy.hensa.ac.uk /images/|
     |11 |piweba3y.prodigy.com /images/|
     |11 |pegasus.rutgers.edu /images/|
     |11 |mpngate1.ny.us.ibm.net /images/|
     |11 |204.165.134.2 /images/|
     |11 |152.163.192.5 /images/|
     |11 |152.163.192.2 /images/|
     |10 |www-c8.proxy.aol.com /images/|
     |10 |vagrant.vf.mmc.com /images/|
     |10 |e659229.boeing.com /images/|
     |10 |152.163.192.68 /images/|
      |9 |sled.alaska.edu /images/
      |9 |proxy.umu.se /images/
      |9 |orionc0.orion.org /images/
      |9 |hoovr3c198.dhs.state.ia.us /images/
      |9 |gwa.ericsson.com /images/
      |8 |www-e1f.gnn.com /images/
      |8 |rosewood.frco.com /images/
      |8 |queen.torfree.net /images/
      |8 |palona1.cns.hp.com /images/
      |8 |l311s14.se12labs.bcit.bc.ca /images/
      |8 |jpmarsh.igs.net /images/
      |8 |ip-pdx7-36.teleport.com /images/
      |8 |gemini.tntech.edu /images/
      |8 |gatekeeper.uccu.com /images/
      |8 |129.120.1.158 /images/
      |7 |www-relay.pa-x.dec.com /images/
      |7 |www-e5.proxy.aol.com /images/
      |7 |www-c9.proxy.aol.com /images/
      |7 |waldtsvr.ksc.nasa.gov /images/
      |7 |ntigate.nt.com /images/
      |7 |nic.dataphone.se /images/
      |7 |news.ti.com /images/
      |7 |neuron.bms.com /images/
      |7 |labpc24.woodbury.edu /images/
      |7 |igate.uswest.com /images/
      |7 |gw2.att.com /images/
      |7 |goldenrule.jcpenney.com /images/
      |7 |fn1.freenet.edmonton.ab.ca /images/
      |7 |dasher.csd.sc.edu /images/
      |7 |bronte.cc.buffalo.edu /images/
      |7 |beirute.if.ufrgs.br /images/
      |7 |194.67.64.15 /images/
      |7 |152.163.192.6 /images/
      |7 |129.253.53.13 /images/
      |7 |128.200.148.26 /images/
      |7 |128.158.29.87 /images/
      |6 |winc0.win.org /images/
      |6 |twin08.magiclink.com /images/
      |6 |tia1.eskimo.com /images/
      |6 |sophocles.algonet.se /images/
      |6 |sharma.jax.org /images/
      |6 |sea-ts1-p10.wolfe.net /images/
      |6 |relay02.jpmorgan.com /images/
      |6 |ottgate2.bnr.ca /images/
      |6 |mmg7317.dukepower.com /images/
      |6 |kwors.demon.co.uk /images/
      |6 |james.freenet.hamilton.on.ca /images/
      |6 |freenet.grfn.org /images/
      |6 |erc.jscc.cc.tn.us /images/|
      |6 |ccn.cs.dal.ca /images/|

### 参考  

[Imagemagick官方文档](https://imagemagick.org/index.php)  
[Linux wget命令详解](https://www.cnblogs.com/ftl1012/p/9265699.html)  
[统计文件中某字符串出现次数并排序](https://www.cnblogs.com/wangbaihan/p/9262296.html)  
[Linux awk 命令](https://www.runoob.com/linux/linux-comm-awk.html)  
[linux-2019-Jasmine2020](https://github.com/CUCCS/linux-2019-Jasmine2020/blob/linux4/Lab4_Shell%E7%BC%96%E7%A8%8B/lab4%20shell%E7%BC%96%E7%A8%8B.md)  
