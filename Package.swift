// swift-tools-version:4.2
import PackageDescription

let package = Package(
  name: "URITemplate",
  dependencies: [
    .package(url: "https://github.com/kylef/Spectre", from: "0.9.0"),
    .package(url: "https://github.com/kylef/PathKit", from: "0.9.0"),
  ],
  targets: [
  	.target(
  		name: "URITemplate.swift",
  		dependencies: ["Spectre", "PathKit"],
  		path: "Sources"
  	),
  	.testTarget(
  		name: "URITemplateTests",
  		dependencies: ["URITemplate.swift"]
  	)
  ]
)
