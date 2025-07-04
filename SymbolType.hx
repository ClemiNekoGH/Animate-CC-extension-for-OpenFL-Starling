package starling.extensions.animate;

import openfl.errors.ArgumentError;
import starling.errors.AbstractClassError;

class SymbolType {
    /** @private */
    @:allow(starling.extensions.animate)
    private function new() {
        throw new AbstractClassError();
    }

    public static inline var GRAPHIC:String = "graphic";
    public static inline var MOVIE_CLIP:String = "movieclip";
    public static inline var BUTTON:String = "button";

    public static function isValid(value:String):Bool {
        return value == GRAPHIC || value == MOVIE_CLIP || value == BUTTON;
    }

    public static function parse(value:String):String {
        var res:String = "";
        switch (value) {
            case "G": res = GRAPHIC;
            case GRAPHIC: res = GRAPHIC;
            case "MC": res = MOVIE_CLIP;
            case MOVIE_CLIP: res = MOVIE_CLIP;
            case "B": res = BUTTON;
            case BUTTON: res = BUTTON;
            default: throw new ArgumentError("Invalid symbol type: " + value);
        }
        return res;
    }
}
