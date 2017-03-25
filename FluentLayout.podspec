
Pod::Spec.new do |s|

  s.name         = "FluentLayout"
  s.version      = "0.1.0"
  s.summary      = "Simple, readable way to write UI code in Swift"
  s.description  = <<-DESC
FluentLayout's primary goal is to provide a simple, readable way to write UI code in Swift.
                   DESC

  s.homepage     = "https://github.com/wickwirew/FluentLayout"
  s.license      = "MIT"
  s.author             = { "Wesley Wickwire" => "wickwirew@gmail.com" }
  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/wickwirew/FluentLayout.git", :tag => "0.1.0" }
  s.source_files  = "FluentLayout", "FluentLayout/**/*.{swift}"

end
