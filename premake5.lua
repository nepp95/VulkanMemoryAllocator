project "VulkanMemoryAllocator"
	kind "StaticLib"
	language "C++"
	cppdialect "C++14"

	targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
	objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")

	includedirs
	{
		"%{IncludeDir.vulkansdk}"
	}

	files
	{
		"include/vk_mem_alloc.h",
		"src/VmaUsage.cpp",
		"src/VmaUsage.h"
	}

	filter "system:windows"
		architecture "x64"
		systemversion "latest"
		staticruntime "On"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"