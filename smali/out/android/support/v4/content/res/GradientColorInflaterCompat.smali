.class final Landroid/support/v4/content/res/GradientColorInflaterCompat;
.super Ljava/lang/Object;
.source "GradientColorInflaterCompat.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/content/res/GradientColorInflaterCompat$ColorStops;
    }
.end annotation


# static fields
.field private static final TILE_MODE_CLAMP:I = 0x0

.field private static final TILE_MODE_MIRROR:I = 0x2

.field private static final TILE_MODE_REPEAT:I = 0x1


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method private static checkColors(Landroid/support/v4/content/res/GradientColorInflaterCompat$ColorStops;IIZI)Landroid/support/v4/content/res/GradientColorInflaterCompat$ColorStops;
    .registers 6
    .param p0, "colorItems"    # Landroid/support/v4/content/res/GradientColorInflaterCompat$ColorStops;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "startColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p2, "endColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p3, "hasCenterColor"    # Z
    .param p4, "centerColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 192
    if-eqz p0, :cond_3

    .line 193
    return-object p0

    .line 194
    :cond_3
    if-eqz p3, :cond_b

    .line 195
    new-instance v0, Landroid/support/v4/content/res/GradientColorInflaterCompat$ColorStops;

    invoke-direct {v0, p1, p4, p2}, Landroid/support/v4/content/res/GradientColorInflaterCompat$ColorStops;-><init>(III)V

    return-object v0

    .line 197
    :cond_b
    new-instance v0, Landroid/support/v4/content/res/GradientColorInflaterCompat$ColorStops;

    invoke-direct {v0, p1, p2}, Landroid/support/v4/content/res/GradientColorInflaterCompat$ColorStops;-><init>(II)V

    return-object v0
.end method

.method static createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/graphics/Shader;
    .registers 7
    .param p0, "resources"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 74
    .local v0, "attrs":Landroid/util/AttributeSet;
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x2

    if-eq v1, v3, :cond_10

    const/4 v1, 0x1

    if-eq v2, v1, :cond_10

    .end local v2    # "type":I
    goto :goto_4

    .line 79
    .restart local v2    # "type":I
    :cond_10
    if-ne v2, v3, :cond_17

    .line 83
    invoke-static {p0, p1, v0, p2}, Landroid/support/v4/content/res/GradientColorInflaterCompat;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/Shader;

    move-result-object v1

    return-object v1

    .line 80
    :cond_17
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "No start tag found"

    invoke-direct {v1, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/Shader;
    .registers 32
    .param p0, "resources"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 90
    move-object/from16 v0, p1

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, "name":Ljava/lang/String;
    const-string v2, "gradient"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e9

    .line 96
    sget-object v2, Landroid/support/compat/R$styleable;->GradientColor:[I

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-static {v3, v5, v4, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 98
    .local v2, "a":Landroid/content/res/TypedArray;
    const-string v6, "startX"

    sget v7, Landroid/support/compat/R$styleable;->GradientColor_android_startX:I

    const/4 v8, 0x0

    invoke-static {v2, v0, v6, v7, v8}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v6

    .line 100
    .local v6, "startX":F
    const-string v7, "startY"

    sget v9, Landroid/support/compat/R$styleable;->GradientColor_android_startY:I

    invoke-static {v2, v0, v7, v9, v8}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v7

    .line 102
    .local v7, "startY":F
    const-string v9, "endX"

    sget v10, Landroid/support/compat/R$styleable;->GradientColor_android_endX:I

    invoke-static {v2, v0, v9, v10, v8}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v17

    .line 104
    .local v17, "endX":F
    const-string v9, "endY"

    sget v10, Landroid/support/compat/R$styleable;->GradientColor_android_endY:I

    invoke-static {v2, v0, v9, v10, v8}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v18

    .line 106
    .local v18, "endY":F
    const-string v9, "centerX"

    sget v10, Landroid/support/compat/R$styleable;->GradientColor_android_centerX:I

    invoke-static {v2, v0, v9, v10, v8}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v15

    .line 108
    .local v15, "centerX":F
    const-string v9, "centerY"

    sget v10, Landroid/support/compat/R$styleable;->GradientColor_android_centerY:I

    invoke-static {v2, v0, v9, v10, v8}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v14

    .line 110
    .local v14, "centerY":F
    const-string v9, "type"

    sget v10, Landroid/support/compat/R$styleable;->GradientColor_android_type:I

    const/4 v11, 0x0

    invoke-static {v2, v0, v9, v10, v11}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v26

    .line 112
    .local v26, "type":I
    const-string v9, "startColor"

    sget v10, Landroid/support/compat/R$styleable;->GradientColor_android_startColor:I

    invoke-static {v2, v0, v9, v10, v11}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedColor(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v13

    .line 114
    .local v13, "startColor":I
    const-string v9, "centerColor"

    invoke-static {v0, v9}, Landroid/support/v4/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v12

    .line 115
    .local v12, "hasCenterColor":Z
    const-string v9, "centerColor"

    sget v10, Landroid/support/compat/R$styleable;->GradientColor_android_centerColor:I

    invoke-static {v2, v0, v9, v10, v11}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedColor(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v10

    .line 117
    .local v10, "centerColor":I
    const-string v9, "endColor"

    sget v8, Landroid/support/compat/R$styleable;->GradientColor_android_endColor:I

    invoke-static {v2, v0, v9, v8, v11}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedColor(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v8

    .line 119
    .local v8, "endColor":I
    const-string v9, "tileMode"

    sget v3, Landroid/support/compat/R$styleable;->GradientColor_android_tileMode:I

    invoke-static {v2, v0, v9, v3, v11}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v3

    .line 121
    .local v3, "tileMode":I
    const-string v9, "gradientRadius"

    sget v11, Landroid/support/compat/R$styleable;->GradientColor_android_gradientRadius:I

    const/4 v4, 0x0

    invoke-static {v2, v0, v9, v11, v4}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v27

    .line 123
    .local v27, "gradientRadius":F
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 125
    invoke-static/range {p0 .. p3}, Landroid/support/v4/content/res/GradientColorInflaterCompat;->inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/support/v4/content/res/GradientColorInflaterCompat$ColorStops;

    move-result-object v4

    .line 126
    .local v4, "colorStops":Landroid/support/v4/content/res/GradientColorInflaterCompat$ColorStops;
    invoke-static {v4, v13, v8, v12, v10}, Landroid/support/v4/content/res/GradientColorInflaterCompat;->checkColors(Landroid/support/v4/content/res/GradientColorInflaterCompat$ColorStops;IIZI)Landroid/support/v4/content/res/GradientColorInflaterCompat$ColorStops;

    move-result-object v4

    .line 128
    packed-switch v26, :pswitch_data_10a

    .line 141
    new-instance v0, Landroid/graphics/LinearGradient;

    iget-object v11, v4, Landroid/support/v4/content/res/GradientColorInflaterCompat$ColorStops;->mColors:[I

    iget-object v9, v4, Landroid/support/v4/content/res/GradientColorInflaterCompat$ColorStops;->mOffsets:[F

    .line 142
    invoke-static {v3}, Landroid/support/v4/content/res/GradientColorInflaterCompat;->parseTileMode(I)Landroid/graphics/Shader$TileMode;

    move-result-object v16

    move-object/from16 v19, v9

    move-object v9, v0

    move/from16 v20, v10

    .end local v10    # "centerColor":I
    .local v20, "centerColor":I
    move v10, v6

    move-object/from16 v21, v11

    move v11, v7

    move/from16 v22, v12

    .end local v12    # "hasCenterColor":Z
    .local v22, "hasCenterColor":Z
    move/from16 v12, v17

    move/from16 v23, v13

    .end local v13    # "startColor":I
    .local v23, "startColor":I
    move/from16 v13, v18

    move/from16 v24, v14

    .end local v14    # "centerY":F
    .local v24, "centerY":F
    move-object/from16 v14, v21

    move/from16 v21, v15

    .end local v15    # "centerX":F
    .local v21, "centerX":F
    move-object/from16 v15, v19

    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    return-object v0

    .line 137
    .end local v20    # "centerColor":I
    .end local v21    # "centerX":F
    .end local v22    # "hasCenterColor":Z
    .end local v23    # "startColor":I
    .end local v24    # "centerY":F
    .restart local v10    # "centerColor":I
    .restart local v12    # "hasCenterColor":Z
    .restart local v13    # "startColor":I
    .restart local v14    # "centerY":F
    .restart local v15    # "centerX":F
    :pswitch_b8
    new-instance v9, Landroid/graphics/SweepGradient;

    iget-object v11, v4, Landroid/support/v4/content/res/GradientColorInflaterCompat$ColorStops;->mColors:[I

    iget-object v0, v4, Landroid/support/v4/content/res/GradientColorInflaterCompat$ColorStops;->mOffsets:[F

    invoke-direct {v9, v15, v14, v11, v0}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    return-object v9

    .line 130
    :pswitch_c2
    const/4 v0, 0x0

    cmpg-float v0, v27, v0

    if-lez v0, :cond_e1

    .line 134
    new-instance v0, Landroid/graphics/RadialGradient;

    iget-object v9, v4, Landroid/support/v4/content/res/GradientColorInflaterCompat$ColorStops;->mColors:[I

    iget-object v11, v4, Landroid/support/v4/content/res/GradientColorInflaterCompat$ColorStops;->mOffsets:[F

    .line 135
    invoke-static {v3}, Landroid/support/v4/content/res/GradientColorInflaterCompat;->parseTileMode(I)Landroid/graphics/Shader$TileMode;

    move-result-object v25

    move-object/from16 v19, v0

    move/from16 v20, v15

    move/from16 v21, v14

    move/from16 v22, v27

    move-object/from16 v23, v9

    move-object/from16 v24, v11

    invoke-direct/range {v19 .. v25}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    return-object v0

    .line 131
    :cond_e1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v9, "<gradient> tag requires \'gradientRadius\' attribute with radial type"

    invoke-direct {v0, v9}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    .end local v2    # "a":Landroid/content/res/TypedArray;
    .end local v3    # "tileMode":I
    .end local v4    # "colorStops":Landroid/support/v4/content/res/GradientColorInflaterCompat$ColorStops;
    .end local v6    # "startX":F
    .end local v7    # "startY":F
    .end local v8    # "endColor":I
    .end local v10    # "centerColor":I
    .end local v12    # "hasCenterColor":Z
    .end local v13    # "startColor":I
    .end local v14    # "centerY":F
    .end local v15    # "centerX":F
    .end local v17    # "endX":F
    .end local v18    # "endY":F
    .end local v26    # "type":I
    .end local v27    # "gradientRadius":F
    :cond_e9
    move-object/from16 v5, p3

    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": invalid gradient color tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_10a
    .packed-switch 0x1
        :pswitch_c2
        :pswitch_b8
    .end packed-switch
.end method

.method private static inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/support/v4/content/res/GradientColorInflaterCompat$ColorStops;
    .registers 16
    .param p0, "resources"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 154
    .local v0, "innerDepth":I
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 155
    .local v2, "offsets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 157
    .local v4, "colors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_12
    :goto_12
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v5, v3

    .local v5, "type":I
    if-eq v3, v1, :cond_8c

    .line 158
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    move v6, v3

    .local v6, "depth":I
    if-ge v3, v0, :cond_23

    const/4 v3, 0x3

    if-eq v5, v3, :cond_8c

    .line 160
    :cond_23
    const/4 v3, 0x2

    if-eq v5, v3, :cond_27

    .line 161
    goto :goto_12

    .line 163
    :cond_27
    if-gt v6, v0, :cond_12

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v7, "item"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_36

    .line 164
    goto :goto_12

    .line 167
    :cond_36
    sget-object v3, Landroid/support/compat/R$styleable;->GradientColorItem:[I

    invoke-static {p0, p3, p2, v3}, Landroid/support/v4/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 169
    .local v3, "a":Landroid/content/res/TypedArray;
    sget v7, Landroid/support/compat/R$styleable;->GradientColorItem_android_color:I

    invoke-virtual {v3, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    .line 170
    .local v7, "hasColor":Z
    sget v8, Landroid/support/compat/R$styleable;->GradientColorItem_android_offset:I

    invoke-virtual {v3, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    .line 171
    .local v8, "hasOffset":Z
    if-eqz v7, :cond_6c

    if-eqz v8, :cond_6c

    .line 178
    sget v9, Landroid/support/compat/R$styleable;->GradientColorItem_android_color:I

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    .line 179
    .local v9, "color":I
    sget v10, Landroid/support/compat/R$styleable;->GradientColorItem_android_offset:I

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    .line 180
    .local v10, "offset":F
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 182
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    .end local v3    # "a":Landroid/content/res/TypedArray;
    .end local v6    # "depth":I
    .end local v7    # "hasColor":Z
    .end local v8    # "hasOffset":Z
    .end local v9    # "color":I
    .end local v10    # "offset":F
    goto :goto_12

    .line 172
    .restart local v3    # "a":Landroid/content/res/TypedArray;
    .restart local v6    # "depth":I
    .restart local v7    # "hasColor":Z
    .restart local v8    # "hasOffset":Z
    :cond_6c
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ": <item> tag requires a \'color\' attribute and a \'offset\' "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "attribute!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 185
    .end local v3    # "a":Landroid/content/res/TypedArray;
    .end local v6    # "depth":I
    .end local v7    # "hasColor":Z
    .end local v8    # "hasOffset":Z
    :cond_8c
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_98

    new-instance v1, Landroid/support/v4/content/res/GradientColorInflaterCompat$ColorStops;

    invoke-direct {v1, v4, v2}, Landroid/support/v4/content/res/GradientColorInflaterCompat$ColorStops;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v1

    .line 186
    :cond_98
    const/4 v1, 0x0

    return-object v1
.end method

.method private static parseTileMode(I)Landroid/graphics/Shader$TileMode;
    .registers 2
    .param p0, "tileMode"    # I

    .line 202
    packed-switch p0, :pswitch_data_c

    .line 209
    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    return-object v0

    .line 206
    :pswitch_6
    sget-object v0, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    return-object v0

    .line 204
    :pswitch_9
    sget-object v0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    return-object v0

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method
