.class Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;
.super Ljava/lang/Object;
.source "BidiFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/text/BidiFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DirectionalityEstimator"
.end annotation


# static fields
.field private static final DIR_TYPE_CACHE:[B

.field private static final DIR_TYPE_CACHE_SIZE:I = 0x700


# instance fields
.field private charIndex:I

.field private final isHtml:Z

.field private lastChar:C

.field private final length:I

.field private final text:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 584
    const/16 v0, 0x700

    new-array v1, v0, [B

    sput-object v1, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->DIR_TYPE_CACHE:[B

    .line 585
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_14

    .line 586
    sget-object v2, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->DIR_TYPE_CACHE:[B

    invoke-static {v1}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v3

    aput-byte v3, v2, v1

    .line 585
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 588
    .end local v1    # "i":I
    :cond_14
    return-void
.end method

.method constructor <init>(Ljava/lang/CharSequence;Z)V
    .registers 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "isHtml"    # Z

    .line 628
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 629
    iput-object p1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    .line 630
    iput-boolean p2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->isHtml:Z

    .line 631
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->length:I

    .line 632
    return-void
.end method

.method private static getCachedDirectionality(C)B
    .registers 2
    .param p0, "c"    # C

    .line 803
    const/16 v0, 0x700

    if-ge p0, v0, :cond_9

    sget-object v0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->DIR_TYPE_CACHE:[B

    aget-byte v0, v0, p0

    goto :goto_d

    :cond_9
    invoke-static {p0}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v0

    :goto_d
    return v0
.end method

.method private skipEntityBackward()B
    .registers 5

    .line 944
    iget v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 945
    .local v0, "initialCharIndex":I
    :cond_2
    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    const/16 v2, 0x3b

    if-lez v1, :cond_24

    .line 946
    iget-object v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    iput-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 947
    iget-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x26

    if-ne v1, v3, :cond_1f

    .line 948
    const/16 v1, 0xc

    return v1

    .line 950
    :cond_1f
    iget-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    if-ne v1, v2, :cond_2

    .line 951
    nop

    .line 954
    :cond_24
    iput v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 955
    iput-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 956
    const/16 v1, 0xd

    return v1
.end method

.method private skipEntityForward()B
    .registers 4

    .line 929
    :goto_0
    iget v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v0, v1, :cond_19

    iget-object v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    iput-char v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v1, 0x3b

    if-eq v0, v1, :cond_19

    goto :goto_0

    .line 930
    :cond_19
    const/16 v0, 0xc

    return v0
.end method

.method private skipTagBackward()B
    .registers 5

    .line 901
    iget v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 902
    .local v0, "initialCharIndex":I
    :cond_2
    :goto_2
    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    const/16 v2, 0x3e

    if-lez v1, :cond_48

    .line 903
    iget-object v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    iput-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 904
    iget-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x3c

    if-ne v1, v3, :cond_1f

    .line 906
    const/16 v1, 0xc

    return v1

    .line 908
    :cond_1f
    iget-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    if-ne v1, v2, :cond_24

    .line 909
    goto :goto_48

    .line 911
    :cond_24
    iget-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v2, 0x22

    if-eq v1, v2, :cond_30

    iget-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v2, 0x27

    if-ne v1, v2, :cond_2

    .line 913
    :cond_30
    iget-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 914
    .local v1, "quote":C
    :goto_32
    iget v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v2, :cond_47

    iget-object v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    iput-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    if-eq v2, v1, :cond_47

    goto :goto_32

    .line 915
    .end local v1    # "quote":C
    :cond_47
    goto :goto_2

    .line 918
    :cond_48
    :goto_48
    iput v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 919
    iput-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 920
    const/16 v1, 0xd

    return v1
.end method

.method private skipTagForward()B
    .registers 6

    .line 872
    iget v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 873
    .local v0, "initialCharIndex":I
    :cond_2
    :goto_2
    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v1, v2, :cond_45

    .line 874
    iget-object v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    iput-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 875
    iget-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v2, 0x3e

    if-ne v1, v2, :cond_1f

    .line 877
    const/16 v1, 0xc

    return v1

    .line 879
    :cond_1f
    iget-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v2, 0x22

    if-eq v1, v2, :cond_2b

    iget-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v2, 0x27

    if-ne v1, v2, :cond_2

    .line 881
    :cond_2b
    iget-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 882
    .local v1, "quote":C
    :goto_2d
    iget v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v2, v3, :cond_44

    iget-object v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    iput-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    if-eq v2, v1, :cond_44

    goto :goto_2d

    .line 883
    .end local v1    # "quote":C
    :cond_44
    goto :goto_2

    .line 886
    :cond_45
    iput v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 887
    const/16 v1, 0x3c

    iput-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 888
    const/16 v1, 0xd

    return v1
.end method


# virtual methods
.method dirTypeBackward()B
    .registers 4

    .line 846
    iget-object v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    iput-char v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 847
    iget-char v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 848
    iget-object v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 849
    .local v0, "codePoint":I
    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 850
    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v1

    return v1

    .line 852
    .end local v0    # "codePoint":I
    :cond_2a
    iget v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 853
    iget-char v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->getCachedDirectionality(C)B

    move-result v0

    .line 854
    .local v0, "dirType":B
    iget-boolean v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->isHtml:Z

    if-eqz v1, :cond_4f

    .line 856
    iget-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v2, 0x3e

    if-ne v1, v2, :cond_45

    .line 857
    invoke-direct {p0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->skipTagBackward()B

    move-result v0

    goto :goto_4f

    .line 858
    :cond_45
    iget-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v2, 0x3b

    if-ne v1, v2, :cond_4f

    .line 859
    invoke-direct {p0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->skipEntityBackward()B

    move-result v0

    .line 862
    :cond_4f
    :goto_4f
    return v0
.end method

.method dirTypeForward()B
    .registers 4

    .line 816
    iget-object v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    iput-char v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 817
    iget-char v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 818
    iget-object v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 819
    .local v0, "codePoint":I
    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 820
    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v1

    return v1

    .line 822
    .end local v0    # "codePoint":I
    :cond_28
    iget v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 823
    iget-char v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->getCachedDirectionality(C)B

    move-result v0

    .line 824
    .local v0, "dirType":B
    iget-boolean v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->isHtml:Z

    if-eqz v1, :cond_4d

    .line 826
    iget-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v2, 0x3c

    if-ne v1, v2, :cond_43

    .line 827
    invoke-direct {p0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->skipTagForward()B

    move-result v0

    goto :goto_4d

    .line 828
    :cond_43
    iget-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v2, 0x26

    if-ne v1, v2, :cond_4d

    .line 829
    invoke-direct {p0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->skipEntityForward()B

    move-result v0

    .line 832
    :cond_4d
    :goto_4d
    return v0
.end method

.method getEntryDir()I
    .registers 9

    .line 646
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 647
    const/4 v1, 0x0

    .line 648
    .local v1, "embeddingLevel":I
    const/4 v2, 0x0

    .line 649
    .local v2, "embeddingLevelDir":I
    move v3, v2

    move v2, v1

    const/4 v1, 0x0

    .line 650
    .local v1, "firstNonEmptyEmbeddingLevel":I
    .local v2, "embeddingLevel":I
    .local v3, "embeddingLevelDir":I
    :goto_8
    iget v4, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget v5, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->length:I

    const/4 v6, -0x1

    const/4 v7, 0x1

    if-ge v4, v5, :cond_39

    if-nez v1, :cond_39

    .line 651
    invoke-virtual {p0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->dirTypeForward()B

    move-result v4

    const/16 v5, 0x9

    if-eq v4, v5, :cond_38

    packed-switch v4, :pswitch_data_5c

    packed-switch v4, :pswitch_data_66

    .line 685
    move v1, v2

    .line 686
    goto :goto_8

    .line 663
    :pswitch_22
    add-int/lit8 v2, v2, -0x1

    .line 667
    const/4 v3, 0x0

    .line 668
    goto :goto_8

    .line 659
    :pswitch_26
    add-int/lit8 v2, v2, 0x1

    .line 660
    const/4 v3, 0x1

    .line 661
    goto :goto_8

    .line 654
    :pswitch_2a
    add-int/lit8 v2, v2, 0x1

    .line 655
    const/4 v3, -0x1

    .line 656
    goto :goto_8

    .line 679
    :pswitch_2e
    if-nez v2, :cond_31

    .line 680
    return v7

    .line 682
    :cond_31
    move v1, v2

    .line 683
    goto :goto_8

    .line 672
    :pswitch_33
    if-nez v2, :cond_36

    .line 673
    return v6

    .line 675
    :cond_36
    move v1, v2

    .line 676
    goto :goto_8

    .line 670
    :cond_38
    goto :goto_8

    .line 692
    :cond_39
    if-nez v1, :cond_3c

    .line 695
    return v0

    .line 699
    :cond_3c
    if-eqz v3, :cond_3f

    .line 701
    return v3

    .line 706
    :cond_3f
    :goto_3f
    iget v4, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v4, :cond_5b

    .line 707
    invoke-virtual {p0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->dirTypeBackward()B

    move-result v4

    packed-switch v4, :pswitch_data_74

    goto :goto_5a

    .line 723
    :pswitch_4b
    add-int/lit8 v2, v2, 0x1

    goto :goto_5a

    .line 717
    :pswitch_4e
    if-ne v1, v2, :cond_51

    .line 718
    return v7

    .line 720
    :cond_51
    add-int/lit8 v2, v2, -0x1

    .line 721
    goto :goto_5a

    .line 710
    :pswitch_54
    if-ne v1, v2, :cond_57

    .line 711
    return v6

    .line 713
    :cond_57
    add-int/lit8 v2, v2, -0x1

    .line 714
    nop

    .line 724
    :goto_5a
    goto :goto_3f

    .line 728
    :cond_5b
    return v0

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_33
        :pswitch_2e
        :pswitch_2e
    .end packed-switch

    :pswitch_data_66
    .packed-switch 0xe
        :pswitch_2a
        :pswitch_2a
        :pswitch_26
        :pswitch_26
        :pswitch_22
    .end packed-switch

    :pswitch_data_74
    .packed-switch 0xe
        :pswitch_54
        :pswitch_54
        :pswitch_4e
        :pswitch_4e
        :pswitch_4b
    .end packed-switch
.end method

.method getExitDir()I
    .registers 7

    .line 744
    iget v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->length:I

    iput v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 745
    const/4 v0, 0x0

    .line 746
    .local v0, "embeddingLevel":I
    const/4 v1, 0x0

    move v2, v0

    const/4 v0, 0x0

    .line 747
    .local v0, "lastNonEmptyEmbeddingLevel":I
    .local v2, "embeddingLevel":I
    :cond_8
    :goto_8
    iget v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v3, :cond_3e

    .line 748
    invoke-virtual {p0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->dirTypeBackward()B

    move-result v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_3d

    const/4 v4, 0x1

    const/4 v5, -0x1

    packed-switch v3, :pswitch_data_40

    packed-switch v3, :pswitch_data_4a

    .line 786
    if-nez v0, :cond_8

    .line 787
    move v0, v2

    goto :goto_8

    .line 781
    :pswitch_20
    add-int/lit8 v2, v2, 0x1

    .line 782
    goto :goto_8

    .line 775
    :pswitch_23
    if-ne v0, v2, :cond_26

    .line 776
    return v4

    .line 778
    :cond_26
    add-int/lit8 v2, v2, -0x1

    .line 779
    goto :goto_8

    .line 759
    :pswitch_29
    if-ne v0, v2, :cond_2c

    .line 760
    return v5

    .line 762
    :cond_2c
    add-int/lit8 v2, v2, -0x1

    .line 763
    goto :goto_8

    .line 766
    :pswitch_2f
    if-nez v2, :cond_32

    .line 767
    return v4

    .line 769
    :cond_32
    if-nez v0, :cond_8

    .line 770
    move v0, v2

    goto :goto_8

    .line 750
    :pswitch_36
    if-nez v2, :cond_39

    .line 751
    return v5

    .line 753
    :cond_39
    if-nez v0, :cond_8

    .line 754
    move v0, v2

    goto :goto_8

    .line 784
    :cond_3d
    goto :goto_8

    .line 792
    :cond_3e
    return v1

    nop

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_36
        :pswitch_2f
        :pswitch_2f
    .end packed-switch

    :pswitch_data_4a
    .packed-switch 0xe
        :pswitch_29
        :pswitch_29
        :pswitch_23
        :pswitch_23
        :pswitch_20
    .end packed-switch
.end method
