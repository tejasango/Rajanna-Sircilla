.class public Landroid/support/design/animation/MotionTiming;
.super Ljava/lang/Object;
.source "MotionTiming.java"


# instance fields
.field private delay:J

.field private duration:J

.field private interpolator:Landroid/animation/TimeInterpolator;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private repeatCount:I

.field private repeatMode:I


# direct methods
.method public constructor <init>(JJ)V
    .registers 7
    .param p1, "delay"    # J
    .param p3, "duration"    # J

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/support/design/animation/MotionTiming;->delay:J

    .line 31
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Landroid/support/design/animation/MotionTiming;->duration:J

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/animation/MotionTiming;->interpolator:Landroid/animation/TimeInterpolator;

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/design/animation/MotionTiming;->repeatCount:I

    .line 37
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/design/animation/MotionTiming;->repeatMode:I

    .line 40
    iput-wide p1, p0, Landroid/support/design/animation/MotionTiming;->delay:J

    .line 41
    iput-wide p3, p0, Landroid/support/design/animation/MotionTiming;->duration:J

    .line 42
    return-void
.end method

.method public constructor <init>(JJLandroid/animation/TimeInterpolator;)V
    .registers 8
    .param p1, "delay"    # J
    .param p3, "duration"    # J
    .param p5, "interpolator"    # Landroid/animation/TimeInterpolator;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/support/design/animation/MotionTiming;->delay:J

    .line 31
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Landroid/support/design/animation/MotionTiming;->duration:J

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/animation/MotionTiming;->interpolator:Landroid/animation/TimeInterpolator;

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/design/animation/MotionTiming;->repeatCount:I

    .line 37
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/design/animation/MotionTiming;->repeatMode:I

    .line 45
    iput-wide p1, p0, Landroid/support/design/animation/MotionTiming;->delay:J

    .line 46
    iput-wide p3, p0, Landroid/support/design/animation/MotionTiming;->duration:J

    .line 47
    iput-object p5, p0, Landroid/support/design/animation/MotionTiming;->interpolator:Landroid/animation/TimeInterpolator;

    .line 48
    return-void
.end method

.method static createFromAnimator(Landroid/animation/ValueAnimator;)Landroid/support/design/animation/MotionTiming;
    .registers 8
    .param p0, "animator"    # Landroid/animation/ValueAnimator;

    .line 81
    new-instance v6, Landroid/support/design/animation/MotionTiming;

    .line 83
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getStartDelay()J

    move-result-wide v1

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v3

    invoke-static {p0}, Landroid/support/design/animation/MotionTiming;->getInterpolatorCompat(Landroid/animation/ValueAnimator;)Landroid/animation/TimeInterpolator;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/support/design/animation/MotionTiming;-><init>(JJLandroid/animation/TimeInterpolator;)V

    .line 84
    .local v0, "timing":Landroid/support/design/animation/MotionTiming;
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    move-result v1

    iput v1, v0, Landroid/support/design/animation/MotionTiming;->repeatCount:I

    .line 85
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatMode()I

    move-result v1

    iput v1, v0, Landroid/support/design/animation/MotionTiming;->repeatMode:I

    .line 86
    return-object v0
.end method

.method private static getInterpolatorCompat(Landroid/animation/ValueAnimator;)Landroid/animation/TimeInterpolator;
    .registers 3
    .param p0, "animator"    # Landroid/animation/ValueAnimator;

    .line 100
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    .line 101
    .local v0, "interpolator":Landroid/animation/TimeInterpolator;
    instance-of v1, v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    if-nez v1, :cond_1a

    if-nez v0, :cond_b

    goto :goto_1a

    .line 103
    :cond_b
    instance-of v1, v0, Landroid/view/animation/AccelerateInterpolator;

    if-eqz v1, :cond_12

    .line 104
    sget-object v1, Landroid/support/design/animation/AnimationUtils;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    return-object v1

    .line 105
    :cond_12
    instance-of v1, v0, Landroid/view/animation/DecelerateInterpolator;

    if-eqz v1, :cond_19

    .line 106
    sget-object v1, Landroid/support/design/animation/AnimationUtils;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    return-object v1

    .line 108
    :cond_19
    return-object v0

    .line 102
    :cond_1a
    :goto_1a
    sget-object v1, Landroid/support/design/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    return-object v1
.end method


# virtual methods
.method public apply(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 51
    invoke-virtual {p0}, Landroid/support/design/animation/MotionTiming;->getDelay()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 52
    invoke-virtual {p0}, Landroid/support/design/animation/MotionTiming;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 53
    invoke-virtual {p0}, Landroid/support/design/animation/MotionTiming;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 54
    instance-of v0, p1, Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2d

    .line 55
    move-object v0, p1

    check-cast v0, Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/support/design/animation/MotionTiming;->getRepeatCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 56
    move-object v0, p1

    check-cast v0, Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/support/design/animation/MotionTiming;->getRepeatMode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 58
    :cond_2d
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 114
    if-ne p0, p1, :cond_4

    .line 115
    const/4 v0, 0x1

    return v0

    .line 117
    :cond_4
    const/4 v0, 0x0

    if-eqz p1, :cond_5a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_12

    goto :goto_5a

    .line 121
    :cond_12
    move-object v1, p1

    check-cast v1, Landroid/support/design/animation/MotionTiming;

    .line 123
    .local v1, "that":Landroid/support/design/animation/MotionTiming;
    invoke-virtual {p0}, Landroid/support/design/animation/MotionTiming;->getDelay()J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/support/design/animation/MotionTiming;->getDelay()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-eqz v6, :cond_22

    .line 124
    return v0

    .line 126
    :cond_22
    invoke-virtual {p0}, Landroid/support/design/animation/MotionTiming;->getDuration()J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/support/design/animation/MotionTiming;->getDuration()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2f

    .line 127
    return v0

    .line 129
    :cond_2f
    invoke-virtual {p0}, Landroid/support/design/animation/MotionTiming;->getRepeatCount()I

    move-result v2

    invoke-virtual {v1}, Landroid/support/design/animation/MotionTiming;->getRepeatCount()I

    move-result v3

    if-eq v2, v3, :cond_3a

    .line 130
    return v0

    .line 132
    :cond_3a
    invoke-virtual {p0}, Landroid/support/design/animation/MotionTiming;->getRepeatMode()I

    move-result v2

    invoke-virtual {v1}, Landroid/support/design/animation/MotionTiming;->getRepeatMode()I

    move-result v3

    if-eq v2, v3, :cond_45

    .line 133
    return v0

    .line 135
    :cond_45
    invoke-virtual {p0}, Landroid/support/design/animation/MotionTiming;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1}, Landroid/support/design/animation/MotionTiming;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 118
    .end local v1    # "that":Landroid/support/design/animation/MotionTiming;
    :cond_5a
    :goto_5a
    return v0
.end method

.method public getDelay()J
    .registers 3

    .line 61
    iget-wide v0, p0, Landroid/support/design/animation/MotionTiming;->delay:J

    return-wide v0
.end method

.method public getDuration()J
    .registers 3

    .line 65
    iget-wide v0, p0, Landroid/support/design/animation/MotionTiming;->duration:J

    return-wide v0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .registers 2

    .line 69
    iget-object v0, p0, Landroid/support/design/animation/MotionTiming;->interpolator:Landroid/animation/TimeInterpolator;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/design/animation/MotionTiming;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_9

    :cond_7
    sget-object v0, Landroid/support/design/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    :goto_9
    return-object v0
.end method

.method public getRepeatCount()I
    .registers 2

    .line 73
    iget v0, p0, Landroid/support/design/animation/MotionTiming;->repeatCount:I

    return v0
.end method

.method public getRepeatMode()I
    .registers 2

    .line 77
    iget v0, p0, Landroid/support/design/animation/MotionTiming;->repeatMode:I

    return v0
.end method

.method public hashCode()I
    .registers 8

    .line 140
    invoke-virtual {p0}, Landroid/support/design/animation/MotionTiming;->getDelay()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/support/design/animation/MotionTiming;->getDelay()J

    move-result-wide v2

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    .line 141
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Landroid/support/design/animation/MotionTiming;->getDuration()J

    move-result-wide v2

    invoke-virtual {p0}, Landroid/support/design/animation/MotionTiming;->getDuration()J

    move-result-wide v5

    ushr-long v4, v5, v4

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    .line 142
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    invoke-virtual {p0}, Landroid/support/design/animation/MotionTiming;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 143
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Landroid/support/design/animation/MotionTiming;->getRepeatCount()I

    move-result v2

    add-int/2addr v1, v2

    .line 144
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    invoke-virtual {p0}, Landroid/support/design/animation/MotionTiming;->getRepeatMode()I

    move-result v2

    add-int/2addr v0, v2

    .line 145
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .local v0, "out":Ljava/lang/StringBuilder;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 154
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    const-string v1, " delay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {p0}, Landroid/support/design/animation/MotionTiming;->getDelay()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 157
    const-string v1, " duration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {p0}, Landroid/support/design/animation/MotionTiming;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 159
    const-string v1, " interpolator: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {p0}, Landroid/support/design/animation/MotionTiming;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 161
    const-string v1, " repeatCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {p0}, Landroid/support/design/animation/MotionTiming;->getRepeatCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    const-string v1, " repeatMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {p0}, Landroid/support/design/animation/MotionTiming;->getRepeatMode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 165
    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
