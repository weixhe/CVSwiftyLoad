Pod::Spec.new do |s|
  s.name         = "SwiftyLoad"    #存储库名称
  s.version      = "1.0.0"      #版本号，与tag值一致
  s.summary      = "SwiftyLoad"  #简介
  s.swift_version= "4.2"
  s.description  = "本类将OC中的load()方法，拷贝到了swift中，使得在swift的扩展类中同样可以在app启动的时候主动调用且仅会调用一次的方法：swiftLoad()"  #描述
  s.homepage     = "https://github.com/weixhe/SwiftyLoad"      #项目主页，不是git地址
  s.license      = { :type => "MIT", :file => "LICENSE" }   #开源协议
  s.author       = { "weixhe" => "workerwei@163.com" }  #作者
  s.platform     = :ios, "8.0"                  #支持的平台和版本号
  s.source       = { :git => "https://github.com/weixhe/SwiftyLoad.git", :tag => "1.0.0" }         #存储库的git地址，以及tag值
  s.source_files =  "SwiftyLoad/Classes/*.{h, m}" #需要托管的源代码路径
  s.requires_arc = true #是否支持ARC

  # s.dependency "KeychainAccess"    #所依赖的第三方库，没有就不用写

end
