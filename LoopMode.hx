package starling.extensions.animate;

import flash.errors.ArgumentError;
import starling.errors.AbstractClassError;

class LoopMode {
    /** @private */
    @:allow(starling.extensions.animate)
    private function new() {
        throw new AbstractClassError();
    }

    public static inline var LOOP:String = "loop";
    public static inline var PLAY_ONCE:String = "playonce";
    public static inline var SINGLE_FRAME:String = "singleframe";

    public static function isValid(value:String):Bool {
        return value == LOOP || value == PLAY_ONCE || value == SINGLE_FRAME;
    }

    public static function parse(value:String):String {
        var res:String = "";
        switch (value) {
            case "LP", LOOP: res = LOOP;
            case "PO", PLAY_ONCE: res = PLAY_ONCE;
            case "SF", SINGLE_FRAME: res = SINGLE_FRAME;
            default:throw new ArgumentError("Invalid loop mode: " + value);
        }
        return res;
    }
}
