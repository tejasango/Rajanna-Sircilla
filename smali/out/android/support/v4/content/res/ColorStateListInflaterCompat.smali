.class public final Landroid/support/v4/content/res/ColorStateListInflaterCompat;
.super Ljava/lang/Object;
.source "ColorStateListInflaterCompat.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final DEFAULT_COLOR:I = -0x10000


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public static createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .registers 7
    .param p0, "r"    # Landroid/content/res/Resources;
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
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 68
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

    .line 73
    .restart local v2    # "type":I
    :cond_10
    if-ne v2, v3, :cond_17

    .line 77
    invoke-static {p0, p1, v0, p2}, Landroid/support/v4/content/res/ColorStateListInflaterCompat;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1

    return-object v1

    .line 74
    :cond_17
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "No start tag found"

    invoke-direct {v1, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .registers 8
    .param p0, "r"    # Landroid/content/res/Resources;
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
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "name":Ljava/lang/String;
    const-string v1, "selector"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 98
    invoke-static {p0, p1, p2, p3}, Landroid/support/v4/content/res/ColorStateListInflaterCompat;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1

    return-object v1

    .line 94
    :cond_11
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": invalid color state list tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .registers 25
    .param p0, "r"    # Landroid/content/res/Resources;
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

    .line 107
    move-object/from16 v0, p2

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 110
    .local v1, "innerDepth":I
    const/high16 v3, -0x10000

    .line 112
    .local v3, "defaultColor":I
    const/16 v4, 0x14

    new-array v4, v4, [[I

    .line 113
    .local v4, "stateSpecList":[[I
    array-length v5, v4

    new-array v5, v5, [I

    .line 114
    .local v5, "colorList":[I
    move v7, v3

    const/4 v3, 0x0

    .line 116
    .local v3, "listSize":I
    .local v7, "defaultColor":I
    :goto_13
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    move v9, v8

    .local v9, "type":I
    if-eq v8, v2, :cond_f2

    .line 117
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    move v10, v8

    .local v10, "depth":I
    if-ge v8, v1, :cond_2f

    const/4 v8, 0x3

    if-eq v9, v8, :cond_25

    goto :goto_2f

    .line 164
    .end local v10    # "depth":I
    :cond_25
    move-object/from16 v11, p0

    move-object/from16 v12, p3

    move/from16 v16, v1

    move/from16 v18, v7

    goto/16 :goto_fa

    .line 118
    .restart local v10    # "depth":I
    :cond_2f
    :goto_2f
    const/4 v8, 0x2

    if-ne v9, v8, :cond_e3

    if-gt v10, v1, :cond_e3

    .line 119
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v11, "item"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4b

    .line 120
    nop

    .line 114
    move-object/from16 v11, p0

    move-object/from16 v12, p3

    move/from16 v16, v1

    move/from16 v18, v7

    goto/16 :goto_eb

    .line 123
    :cond_4b
    sget-object v8, Landroid/support/compat/R$styleable;->ColorStateListItem:[I

    move-object/from16 v11, p0

    move-object/from16 v12, p3

    invoke-static {v11, v12, v0, v8}, Landroid/support/v4/content/res/ColorStateListInflaterCompat;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 124
    .local v8, "a":Landroid/content/res/TypedArray;
    sget v13, Landroid/support/compat/R$styleable;->ColorStateListItem_android_color:I

    const v14, -0xff01

    invoke-virtual {v8, v13, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v13

    .line 127
    .local v13, "baseColor":I
    const/high16 v14, 0x3f800000    # 1.0f

    .line 128
    .local v14, "alphaMod":F
    sget v15, Landroid/support/compat/R$styleable;->ColorStateListItem_android_alpha:I

    invoke-virtual {v8, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v15

    if-eqz v15, :cond_6f

    .line 129
    sget v15, Landroid/support/compat/R$styleable;->ColorStateListItem_android_alpha:I

    invoke-virtual {v8, v15, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v14

    goto :goto_7d

    .line 130
    :cond_6f
    sget v15, Landroid/support/compat/R$styleable;->ColorStateListItem_alpha:I

    invoke-virtual {v8, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v15

    if-eqz v15, :cond_7d

    .line 131
    sget v15, Landroid/support/compat/R$styleable;->ColorStateListItem_alpha:I

    invoke-virtual {v8, v15, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v14

    .line 134
    :cond_7d
    :goto_7d
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 137
    const/4 v15, 0x0

    .line 138
    .local v15, "j":I
    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v2

    .line 139
    .local v2, "numAttrs":I
    new-array v6, v2, [I

    .line 140
    .local v6, "stateSpec":[I
    move/from16 v16, v1

    move v1, v15

    const/4 v15, 0x0

    .local v1, "j":I
    .local v15, "i":I
    .local v16, "innerDepth":I
    :goto_8b
    if-ge v15, v2, :cond_bc

    .line 141
    move/from16 v17, v2

    .end local v2    # "numAttrs":I
    .local v17, "numAttrs":I
    invoke-interface {v0, v15}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v2

    .line 142
    .local v2, "stateResId":I
    move/from16 v18, v7

    .end local v7    # "defaultColor":I
    .local v18, "defaultColor":I
    const v7, 0x10101a5

    if-eq v2, v7, :cond_b5

    const v7, 0x101031f

    if-eq v2, v7, :cond_b5

    sget v7, Landroid/support/compat/R$attr;->alpha:I

    if-eq v2, v7, :cond_b5

    .line 145
    add-int/lit8 v7, v1, 0x1

    move/from16 v19, v7

    const/4 v7, 0x0

    .local v19, "j":I
    invoke-interface {v0, v15, v7}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v20

    if-eqz v20, :cond_b0

    move v7, v2

    goto :goto_b1

    :cond_b0
    neg-int v7, v2

    :goto_b1
    aput v7, v6, v1

    .line 140
    move/from16 v1, v19

    .end local v2    # "stateResId":I
    .end local v19    # "j":I
    :cond_b5
    add-int/lit8 v15, v15, 0x1

    move/from16 v2, v17

    move/from16 v7, v18

    goto :goto_8b

    .line 149
    .end local v15    # "i":I
    .end local v17    # "numAttrs":I
    .end local v18    # "defaultColor":I
    .local v2, "numAttrs":I
    .restart local v7    # "defaultColor":I
    :cond_bc
    move/from16 v17, v2

    move/from16 v18, v7

    .end local v2    # "numAttrs":I
    .end local v7    # "defaultColor":I
    .restart local v17    # "numAttrs":I
    .restart local v18    # "defaultColor":I
    invoke-static {v6, v1}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v2

    .line 154
    .end local v6    # "stateSpec":[I
    .local v2, "stateSpec":[I
    invoke-static {v13, v14}, Landroid/support/v4/content/res/ColorStateListInflaterCompat;->modulateColorAlpha(IF)I

    move-result v6

    .line 155
    .local v6, "color":I
    if-eqz v3, :cond_d1

    array-length v7, v2

    if-nez v7, :cond_ce

    goto :goto_d1

    .line 159
    :cond_ce
    move/from16 v7, v18

    goto :goto_d2

    .line 156
    :cond_d1
    :goto_d1
    move v7, v6

    .line 159
    .end local v18    # "defaultColor":I
    .restart local v7    # "defaultColor":I
    :goto_d2
    invoke-static {v5, v3, v6}, Landroid/support/v4/content/res/GrowingArrayUtils;->append([III)[I

    move-result-object v5

    .line 160
    invoke-static {v4, v3, v2}, Landroid/support/v4/content/res/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    move-object v4, v15

    check-cast v4, [[I

    .line 161
    add-int/lit8 v3, v3, 0x1

    .line 162
    .end local v1    # "j":I
    .end local v2    # "stateSpec":[I
    .end local v6    # "color":I
    .end local v8    # "a":Landroid/content/res/TypedArray;
    .end local v10    # "depth":I
    .end local v13    # "baseColor":I
    .end local v14    # "alphaMod":F
    .end local v17    # "numAttrs":I
    nop

    .line 114
    move/from16 v1, v16

    goto :goto_ef

    .end local v9    # "type":I
    .end local v16    # "innerDepth":I
    .local v1, "innerDepth":I
    :cond_e3
    move-object/from16 v11, p0

    move-object/from16 v12, p3

    move/from16 v16, v1

    move/from16 v18, v7

    .end local v1    # "innerDepth":I
    .end local v7    # "defaultColor":I
    .restart local v16    # "innerDepth":I
    .restart local v18    # "defaultColor":I
    :goto_eb
    move/from16 v1, v16

    move/from16 v7, v18

    .end local v16    # "innerDepth":I
    .end local v18    # "defaultColor":I
    .restart local v1    # "innerDepth":I
    .restart local v7    # "defaultColor":I
    :goto_ef
    const/4 v2, 0x1

    goto/16 :goto_13

    .line 164
    .restart local v9    # "type":I
    :cond_f2
    move-object/from16 v11, p0

    move-object/from16 v12, p3

    move/from16 v16, v1

    move/from16 v18, v7

    .end local v1    # "innerDepth":I
    .end local v7    # "defaultColor":I
    .restart local v16    # "innerDepth":I
    .restart local v18    # "defaultColor":I
    :goto_fa
    new-array v1, v3, [I

    .line 165
    .local v1, "colors":[I
    new-array v2, v3, [[I

    .line 166
    .local v2, "stateSpecs":[[I
    const/4 v6, 0x0

    invoke-static {v5, v6, v1, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 167
    invoke-static {v4, v6, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    new-instance v6, Landroid/content/res/ColorStateList;

    invoke-direct {v6, v2, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v6
.end method

.method private static modulateColorAlpha(IF)I
    .registers 5
    .param p0, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p1, "alphaMod"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .line 181
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 182
    .local v0, "alpha":I
    const v1, 0xffffff

    and-int/2addr v1, p0

    shl-int/lit8 v2, v0, 0x18

    or-int/2addr v1, v2

    return v1
.end method

.method private static obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .registers 5
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "set"    # Landroid/util/AttributeSet;
    .param p3, "attrs"    # [I

    .line 174
    if-nez p1, :cond_7

    invoke-virtual {p0, p2, p3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_c

    .line 175
    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    :goto_c
    return-object v0
.end method
