.class public Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ScaleTransformer;
.super Ljava/lang/Object;
.source "HorizontalRecycleView.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ITransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScaleTransformer"
.end annotation


# instance fields
.field private mMaxScale:F

.field private mMinScale:F

.field private mPivotX:Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ITransformer$Pivot;

.field private mPivotY:Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ITransformer$Pivot;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 660
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3f4ccccd    # 0.8f

    .line 661
    iput v0, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ScaleTransformer;->mMinScale:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 662
    iput v0, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ScaleTransformer;->mMaxScale:F

    .line 663
    sget-object v0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ITransformer$Pivot$X;->CENTER:Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ITransformer$Pivot$X;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ITransformer$Pivot$X;->create()Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ITransformer$Pivot;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ScaleTransformer;->mPivotX:Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ITransformer$Pivot;

    .line 664
    sget-object v0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ITransformer$Pivot$Y;->CENTER:Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ITransformer$Pivot$Y;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ITransformer$Pivot$Y;->create()Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ITransformer$Pivot;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ScaleTransformer;->mPivotY:Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ITransformer$Pivot;

    return-void
.end method


# virtual methods
.method protected calculateScale(F)F
    .locals 3

    .line 677
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, p1, v0

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 679
    iget p0, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ScaleTransformer;->mMinScale:F

    return p0

    .line 681
    :cond_0
    iget v1, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ScaleTransformer;->mMinScale:F

    iget p0, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ScaleTransformer;->mMaxScale:F

    sub-float/2addr p0, v1

    sub-float/2addr v0, p1

    mul-float/2addr p0, v0

    add-float/2addr v1, p0

    return v1
.end method

.method public transformItem(Landroid/view/View;F)V
    .locals 1

    .line 669
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ScaleTransformer;->mPivotX:Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ITransformer$Pivot;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ITransformer$Pivot;->setOn(Landroid/view/View;)V

    .line 670
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ScaleTransformer;->mPivotY:Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ITransformer$Pivot;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ITransformer$Pivot;->setOn(Landroid/view/View;)V

    .line 671
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ScaleTransformer;->calculateScale(F)F

    move-result p0

    .line 672
    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleX(F)V

    .line 673
    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method
