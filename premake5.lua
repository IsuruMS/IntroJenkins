workspace "IntroJenkins"
    configurations {"Debug", "Release"}

project "IntroJenkins"
    location "IntroJenkins"
    kind "ConsoleApp"
    language "C++"
    targetdir "bin/%{cfg.buildcfg}"

    files {"IntroJenkins/src/**.h", "IntroJenkins/src/**.cpp"}

    filter "configurations:Debug"
        defines {"DEBUG"}
        symbols "On"

    filter "configurations:Release"
        defines {"NDEBUG"}
        symbols "On"