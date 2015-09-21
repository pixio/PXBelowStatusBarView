Pod::Spec.new do |s|
  s.name             = "PXBelowStatusBarView"
  s.version          = "0.1.0"
  s.summary          = "A view that stays below the status bar."

  s.description      = <<-DESC
                       PXBelowStatusBarView is a view that lays its subview out immediately below the status bar, if the status bar would have otherwise covered it.
                       DESC

  s.homepage         = "https://github.com/pixio/PXBelowStatusBarView"
  s.license          = 'MIT'
  s.author           = { "Spencer Phippen" => "spencer.phippen@gmail.com" }
  s.source           = { :git => "https://github.com/pixio/PXBelowStatusBarView.git", :tag => s.version.to_s }

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*.{h,m}'
  s.public_header_files = 'Pod/Classes/**/*.h'
  s.resource_bundles = {
    'PXBelowStatusBarView' => ['Pod/Assets/*.png']
  }

end
