Pod::Spec.new do |s|
  s.name         = "Fabel"
  s.version      = "1.0.0"
  s.summary      = "Interactive animation for Fly item to others."
  s.description  = <<-DESC
                    - Interactive animation for Fly item to others.
                    DESC

  s.homepage     = "https://github.com/pianopia/Fabel_iOS"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "pianopia" => "grandpianoaoa@gmail.com" }
  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/pianopia/Fabel_iOS.git", :tag => s.version }
  s.source_files  = "Fabel/**/*.swift"
  s.requires_arc = true
end
