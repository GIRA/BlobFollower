primitives
apiTrackMainRectangle: aBitmap width: w height: h
	<cdecl: ImageRectangle 'trackMainRectangle' (ushort* long long) module: 'ImageAnalyzer'>
	^ self externalCallFailed