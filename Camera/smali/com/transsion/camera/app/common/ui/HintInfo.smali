.class public Lcom/transsion/camera/app/common/ui/HintInfo;
.super Ljava/lang/Object;
.source "HintInfo.java"


# instance fields
.field private mBackgroundEnabled:Z

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mHighlight:Z

.field private mIsAsdDynamic:Z

.field private mMessage:Ljava/lang/String;

.field private mOtherDrawable:Landroid/graphics/drawable/Drawable;

.field private mOtherMessage:Ljava/lang/String;

.field private mProgressType:I

.field private mSuperNightGuideEnabled:Z

.field private final mType:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mBackgroundEnabled:Z

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mHighlight:Z

    .line 42
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mIsAsdDynamic:Z

    .line 44
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mSuperNightGuideEnabled:Z

    .line 65
    iput p1, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mType:I

    return-void
.end method


# virtual methods
.method public enableBackground(Z)V
    .locals 0

    .line 93
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mBackgroundEnabled:Z

    return-void
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mMessage:Ljava/lang/String;

    return-object p0
.end method

.method public getOtherDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mOtherDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getOtherMessage()Ljava/lang/String;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mOtherMessage:Ljava/lang/String;

    return-object p0
.end method

.method public getProgressType()I
    .locals 0

    .line 105
    iget p0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mProgressType:I

    return p0
.end method

.method public getType()I
    .locals 0

    .line 69
    iget p0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mType:I

    return p0
.end method

.method public isAsdDynamic()Z
    .locals 0

    .line 113
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mIsAsdDynamic:Z

    return p0
.end method

.method public isBackgroundEnabled()Z
    .locals 0

    .line 89
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mBackgroundEnabled:Z

    return p0
.end method

.method public isHighlight()Z
    .locals 0

    .line 101
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mHighlight:Z

    return p0
.end method

.method public isTwinkleEnabled()Z
    .locals 0

    .line 121
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mSuperNightGuideEnabled:Z

    return p0
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setHighlight(Z)V
    .locals 0

    .line 97
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mHighlight:Z

    return-void
.end method

.method public setIsAsdDynamic(Z)V
    .locals 0

    .line 117
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mIsAsdDynamic:Z

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mMessage:Ljava/lang/String;

    return-void
.end method

.method public setOtherDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mOtherDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setOtherMessage(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mOtherMessage:Ljava/lang/String;

    return-void
.end method

.method public setProgressType(I)V
    .locals 0

    .line 109
    iput p1, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mProgressType:I

    return-void
.end method

.method public setTwinkleEnabled(Z)V
    .locals 0

    .line 125
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mSuperNightGuideEnabled:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIsAsdDynamic: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mIsAsdDynamic:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mOtherMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mOtherMessage:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
