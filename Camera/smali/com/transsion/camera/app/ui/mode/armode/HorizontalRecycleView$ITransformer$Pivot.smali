.class public Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ITransformer$Pivot;
.super Ljava/lang/Object;
.source "HorizontalRecycleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ITransformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Pivot"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ITransformer$Pivot$Y;,
        Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ITransformer$Pivot$X;
    }
.end annotation


# instance fields
.field private mAxis:I

.field private mPivotPoint:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 552
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 553
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ITransformer$Pivot;->mAxis:I

    .line 554
    iput p2, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ITransformer$Pivot;->mPivotPoint:I

    return-void
.end method


# virtual methods
.method public setOn(Landroid/view/View;)V
    .locals 4

    .line 558
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ITransformer$Pivot;->mAxis:I

    const/4 v1, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    if-nez v0, :cond_0

    .line 559
    iget p0, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ITransformer$Pivot;->mPivotPoint:I

    packed-switch p0, :pswitch_data_0

    int-to-float p0, p0

    .line 570
    invoke-virtual {p1, p0}, Landroid/view/View;->setPivotX(F)V

    goto :goto_0

    .line 561
    :pswitch_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotX(F)V

    goto :goto_0

    .line 564
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v2

    invoke-virtual {p1, p0}, Landroid/view/View;->setPivotX(F)V

    goto :goto_0

    .line 567
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setPivotX(F)V

    :goto_0
    return-void

    :cond_0
    const/4 v3, 0x1

    if-ne v3, v0, :cond_1

    .line 577
    iget p0, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$ITransformer$Pivot;->mPivotPoint:I

    packed-switch p0, :pswitch_data_1

    int-to-float p0, p0

    .line 588
    invoke-virtual {p1, p0}, Landroid/view/View;->setPivotY(F)V

    goto :goto_1

    .line 579
    :pswitch_3
    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotY(F)V

    goto :goto_1

    .line 582
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v2

    invoke-virtual {p1, p0}, Landroid/view/View;->setPivotY(F)V

    goto :goto_1

    .line 585
    :pswitch_5
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setPivotY(F)V

    :cond_1
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch -0x3ea
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x3ea
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
