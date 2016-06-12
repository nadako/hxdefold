package defold;

/**
    Functions for creating image objects.
**/
@:native("_G.image")
extern class Image {
    /**
        Load image (PNG or JPEG) from buffer.
    **/
    static function load(buffer:String, ?premult:Bool):Null<ImageLoadResult>;
}

/**
    Return type of the `Image.load` method.
**/
typedef ImageLoadResult = {
    var width:Int;
    var height:Int;
    var type:ImageType;
    var buffer:String;
}

/**
    Image type, used in `ImageLoadResult.type`.
**/
@:native("_G.image")
@:enum extern abstract ImageType({}) {
    var TYPE_LUMINANCE;
    var TYPE_RGB;
    var TYPE_RGBA;
}
