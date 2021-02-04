Pod::Spec.new do |s|
  # 框架的名称
  s.name         = "MageBRPickerView"
  # 框架的版本号
  s.version      = "2.7.6"
  # 框架的简单介绍
  s.summary      = "A custom picker view for iOS."
  # 框架的详细描述(详细介绍，要比简介长)
  s.description  = <<-DESC
                    A custom picker view for iOS, Include "日期选择器，时间选择器，地址选择器，自定义字符串选择器，支持自定义样式，适配深色模式", Support the Objective - C language.
                DESC
  # 框架的主页
  s.homepage     = "https://github.com/zinwalin/BRPickerView"
  # 证书类型
  s.license      = { :type => "MIT", :file => "LICENSE" }

  # 作者
  s.author             = { "Zinwa Lin" => "zinwa.lin@gmail.com" }
  # 社交网址
  s.social_media_url = 'https://www.google.com'
  
  # 框架支持的平台和版本
  s.platform     = :ios, "8.0"

  # GitHub下载地址和版本
  s.source       = { :git => "https://github.com/zinwalin/BRPickerView.git", :tag => s.version.to_s }


  s.public_header_files = 'MageBRPickerView/BRPickerView.h'
    
  # 本地框架源文件的位置（包含所有文件）
  #s.source_files  = "MageBRPickerView/**/*.{h,m}"
  # 一级目录（pod库中根目录所含文件）
  s.source_files  = "MageBRPickerView/BRPickerView.h"
  
  # 二级目录（根目录是s，使用s.subspec设置子目录，这里设置子目录为ss）
  s.subspec 'Base' do |ss|
    ss.source_files = 'MageBRPickerView/Base/*.{h,m}'
    # 框架包含的资源包
    ss.resources  = 'MageBRPickerView/Base/BRPickerView.bundle'
  end
  
  s.subspec 'DatePickerView' do |ss|
    ss.dependency 'MageBRPickerView/Base'
    ss.source_files = 'MageBRPickerView/DatePickerView/*.{h,m}'
  end
  
  s.subspec 'AddressPickerView' do |ss|
    ss.dependency 'MageBRPickerView/Base'
    ss.source_files = 'MageBRPickerView/AddressPickerView/*.{h,m}'
  end
  
  s.subspec 'StringPickerView' do |ss|
    ss.dependency 'MageBRPickerView/Base'
    ss.source_files = 'MageBRPickerView/StringPickerView/*.{h,m}'
  end
  
  # 框架要求ARC环境下使用
  s.requires_arc = true

 
end
