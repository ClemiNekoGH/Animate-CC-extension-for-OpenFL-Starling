package starling.extensions.animate;

typedef AnimationAtlasData = {
    ?animation:SymbolData,
    ?symbolDictionary:{
        symbols:Array<SymbolData>
    },

    ?metadata:{
        ?frameRate:Null<Int>
    },

    ?ATLAS:{
        SPRITES: Array<SpriteData>
    },

    ?meta:{
        app: String,
        version: String,
        image: String,
        format: String,
        size: { w:Int, h:Int },
        scale: String,
    }
}

typedef SpriteData = {
    name: String,
    x:Int,
    y:Int,
    w:Int,
    h:Int,
    rotated:Bool
}

typedef SymbolData = {
    ?name: String,
    symbolName: String,
    ?timeline: SymbolTimelineData
}

typedef SymbolTimelineData = {
    ?sortedForRender:Bool,
    layers: Array<LayerData>
}

typedef LayerData = {
    layerName: String,
    frames: Array<LayerFrameData>,
    FrameMap: Map<Int, LayerFrameData>
}

typedef LayerFrameData = {
    index: Int,
    ?name: String,
    duration: Int,
    elements:Array<ElementData>
}

typedef ElementData = {
    ?atlasSpriteInstance:Dynamic,
    ?symbolInstance: SymbolInstanceData

}

typedef SymbolInstanceData = {
    symbolName: String,
    instanceName: String,
    bitmap: Dynamic, //todo: fix this
    symbolType: String,
    transformationPoint: PointData,
    matrix3D: Matrix3DData,
    ?decomposedMatrix: Decomposed3DData,
    ?color: ColorData,

    ?loop:String,
    firstFrame:Int,
}

typedef ColorData = {
    mode: String,

    ?alphaMultiplier: Float,
    ?tintColor: String,
    ?tintMultiplier: Float,
    ?brightness:Float,
    ?redMultiplier:Float,
    ?greenMultiplier:Float,
    ?blueMultiplier:Float,
    ?redOffset:Float,
    ?greenOffset:Float,
    ?blueOffset:Float,
    ?alphaOffset:Float
}


typedef PointData = {x:Int, y:Int}

typedef Matrix3DData = {
    m00: Float, m01: Float, m02: Float, m03: Float,
    m10: Float, m11: Float, m12: Float, m13: Float,
    m20: Float, m21: Float, m22: Float, m23: Float,
    m30: Float, m31: Float, m32: Float, m33: Float
}

typedef Decomposed3DData = {
    position: VectorData,
    rotation: VectorData,
    scaling: VectorData
}

typedef VectorData = {x:Float, y:Float, z:Float}
