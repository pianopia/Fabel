Pod::Spec.new do |s|
  s.name         = "Fabel_iOS"
  s.version      = "1.0.0"
  s.summary      = "Interactive animation for Fly item to others."
  s.description  = <<-DESC
                    - Interactive animation for Fly item to others.
                    DESC

  s.homepage     = "https://github.com/pianopia/Fabel_iOS"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "pianopia" => "grandpianoaoa@gmail.com" }
  s.platform     = :ios, "9.0"
  s.swift_version= "3.2"
  s.source       = { :git => "https://github.com/pianopia/Fabel_iOS.git", :tag => s.version }
  s.source_files  = "Fabel/**/*.swift"
  s.frameworks = '../Fabel/Fabel'
  s.requires_arc = true
end
