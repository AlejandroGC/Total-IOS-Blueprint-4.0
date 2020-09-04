import UIKit

var str = "Hello, playground"

/*
var programmingLanguages = ["objective-c","swift","java","html","css"]

func whichPlantformFor(language: String) -> String {
    switch language {
    case "objective-c","swift":
        return "iOS"
    case "html", "css":
        return "web"
    case "java":
        return "android"
    default:
        return "I dont know"
    }
}

whichPlantformFor(language: "swift")
*/

enum ProgrammingLanguage {
    case objective_c
    case swift
    case java
    case html
    case css
}

enum DevelopmentPlatform {
    case iOS
    case web
    case android
}


func whichPlatformFor(language: ProgrammingLanguage) -> DevelopmentPlatform {
    // pattern matching
    switch language {
    case ProgrammingLanguage.objective_c, ProgrammingLanguage.swift:
        return .iOS
    case ProgrammingLanguage.html,ProgrammingLanguage.css:
        return .web
    case .java:
        return .android
    }
}

let css = ProgrammingLanguage.css
whichPlatformFor(language: css)

