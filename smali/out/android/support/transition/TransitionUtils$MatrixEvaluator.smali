.class Landroid/support/transition/TransitionUtils$MatrixEvaluator;
.super Ljava/lang/Object;
.source "TransitionUtils.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/TransitionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MatrixEvaluator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "Landroid/graphics/Matrix;",
        ">;"
    }
.end annotation


# instance fields
.field final mTempEndValues:[F

.field final mTempMatrix:Landroid/graphics/Matrix;

.field final mTempStartValues:[F


# direct methods
.method constructor <init>()V
    .registers 3

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    const/16 v0, 0x9

    new-array v1, v0, [F

    iput-object v1, p0, Landroid/support/transition/TransitionUtils$MatrixEvaluator;->mTempStartValues:[F

    .line 159
    new-array v0, v0, [F

    iput-object v0, p0, Landroid/support/transition/TransitionUtils$MatrixEvaluator;->mTempEndValues:[F

    .line 161
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/transition/TransitionUtils$MatrixEvaluator;->mTempMatrix:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public evaluate(FLandroid/graphics/Matrix;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .registers 9
    .param p1, "fraction"    # F
    .param p2, "startValue"    # Landroid/graphics/Matrix;
    .param p3, "endValue"    # Landroid/graphics/Matrix;

    .line 165
    iget-object v0, p0, Landroid/support/transition/TransitionUtils$MatrixEvaluator;->mTempStartValues:[F

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 166
    iget-object v0, p0, Landroid/support/transition/TransitionUtils$MatrixEvaluator;->mTempEndValues:[F

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 167
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    const/16 v1, 0x9

    if-ge v0, v1, :cond_26

    .line 168
    iget-object v1, p0, Landroid/support/transition/TransitionUtils$MatrixEvaluator;->mTempEndValues:[F

    aget v1, v1, v0

    iget-object v2, p0, Landroid/support/transition/TransitionUtils$MatrixEvaluator;->mTempStartValues:[F

    aget v2, v2, v0

    sub-float/2addr v1, v2

    .line 169
    .local v1, "diff":F
    iget-object v2, p0, Landroid/support/transition/TransitionUtils$MatrixEvaluator;->mTempEndValues:[F

    iget-object v3, p0, Landroid/support/transition/TransitionUtils$MatrixEvaluator;->mTempStartValues:[F

    aget v3, v3, v0

    mul-float v4, p1, v1

    add-float/2addr v3, v4

    aput v3, v2, v0

    .line 167
    .end local v1    # "diff":F
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 171
    .end local v0    # "i":I
    :cond_26
    iget-object v0, p0, Landroid/support/transition/TransitionUtils$MatrixEvaluator;->mTempMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Landroid/support/transition/TransitionUtils$MatrixEvaluator;->mTempEndValues:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 172
    iget-object v0, p0, Landroid/support/transition/TransitionUtils$MatrixEvaluator;->mTempMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 155
    check-cast p2, Landroid/graphics/Matrix;

    check-cast p3, Landroid/graphics/Matrix;

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/transition/TransitionUtils$MatrixEvaluator;->evaluate(FLandroid/graphics/Matrix;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object p1

    return-object p1
.end method
