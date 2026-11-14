.class public abstract Lcom/transsion/camera/app/ui/AbstractThumbnailUI;
.super Ljava/lang/Object;
.source "AbstractThumbnailUI.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/IThumbnailUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/AbstractThumbnailUI$OnClickListenerImpl;
    }
.end annotation


# instance fields
.field private mCachedBitmap:Landroid/graphics/Bitmap;

.field private mOnThumbnailClickListener:Landroid/view/View$OnClickListener;

.field private mPreviousThumbnailView:Landroid/widget/ImageView;

.field protected final mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private mThumbnailBg:Landroid/view/View;

.field private mThumbnailRoot:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

.field private mThumbnailView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mOnThumbnailClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;)Landroid/widget/ImageView;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mPreviousThumbnailView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;)Landroid/widget/ImageView;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;)Landroid/view/View;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailBg:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method protected abstract getDefaultDrawableId()I
.end method

.method public inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0c00e0

    const/4 v1, 0x1

    .line 43
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09019d

    .line 44
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mPreviousThumbnailView:Landroid/widget/ImageView;

    const p2, 0x7f090074

    .line 45
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailView:Landroid/widget/ImageView;

    const p2, 0x7f09026d

    .line 46
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailBg:Landroid/view/View;

    const p2, 0x7f0901f7

    .line 47
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailRoot:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    return-object p1
.end method

.method public onOrientationChanged(I)V
    .locals 1

    .line 73
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailRoot:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 74
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;->setOrientation(IZ)V

    :cond_0
    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailView:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    .line 137
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setOnThumbnailClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mOnThumbnailClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setupViews()V
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailView:Landroid/widget/ImageView;

    new-instance v1, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$OnClickListenerImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$OnClickListenerImpl;-><init>(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;Lcom/transsion/camera/app/ui/AbstractThumbnailUI$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mCachedBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mPreviousThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 56
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->getDefaultDrawableId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 57
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailBg:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 59
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 60
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailBg:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 61
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CapturePerformance] updateThumbnailView CachedBitmap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mCachedBitmap:Landroid/graphics/Bitmap;

    .line 62
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mCachedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 61
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public unInit()V
    .locals 0

    return-void
.end method

.method public updateThumbnail(Landroid/graphics/Bitmap;Z)V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 96
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mCachedBitmap:Landroid/graphics/Bitmap;

    return-void

    .line 101
    :cond_0
    new-instance v1, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$1;-><init>(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;Landroid/graphics/Bitmap;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
