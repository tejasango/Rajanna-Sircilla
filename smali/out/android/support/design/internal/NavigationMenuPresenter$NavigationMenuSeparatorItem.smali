.class Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;
.super Ljava/lang/Object;
.source "NavigationMenuPresenter.java"

# interfaces
.implements Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/internal/NavigationMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NavigationMenuSeparatorItem"
.end annotation


# instance fields
.field private final paddingBottom:I

.field private final paddingTop:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .param p1, "paddingTop"    # I
    .param p2, "paddingBottom"    # I

    .line 669
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 670
    iput p1, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;->paddingTop:I

    .line 671
    iput p2, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;->paddingBottom:I

    .line 672
    return-void
.end method


# virtual methods
.method public getPaddingBottom()I
    .registers 2

    .line 679
    iget v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;->paddingBottom:I

    return v0
.end method

.method public getPaddingTop()I
    .registers 2

    .line 675
    iget v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;->paddingTop:I

    return v0
.end method
