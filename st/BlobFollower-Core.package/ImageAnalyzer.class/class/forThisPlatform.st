private
forThisPlatform
	^ SmalltalkImage current platformName caseOf: {
		['unix'] -> [ImageAnalyzerUnix].
		['Win32'] -> [ImageAnalyzerWin32]
	} otherwise: [self error: 'Platform not supported' translated]