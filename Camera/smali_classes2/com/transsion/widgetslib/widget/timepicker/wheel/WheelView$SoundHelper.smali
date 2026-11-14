.class Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$SoundHelper;
.super Ljava/lang/Object;
.source "WheelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SoundHelper"
.end annotation


# instance fields
.field private mPlayVolume:F

.field private mSoundId:I

.field private mSoundPool:Landroid/media/SoundPool;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1976
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1977
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 1978
    new-instance v0, Landroid/media/SoundPool$Builder;

    invoke-direct {v0}, Landroid/media/SoundPool$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$SoundHelper;->mSoundPool:Landroid/media/SoundPool;

    goto :goto_0

    .line 1980
    :cond_0
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1, v1}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$SoundHelper;->mSoundPool:Landroid/media/SoundPool;

    :goto_0
    return-void
.end method

.method static obtain()Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$SoundHelper;
    .locals 1

    .line 1990
    new-instance v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$SoundHelper;

    invoke-direct {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$SoundHelper;-><init>()V

    return-object v0
.end method


# virtual methods
.method playSoundEffect()V
    .locals 7

    .line 2027
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$SoundHelper;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$SoundHelper;->mSoundId:I

    if-eqz v1, :cond_0

    .line 2028
    iget v3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$SoundHelper;->mPlayVolume:F

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move v2, v3

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    :cond_0
    return-void
.end method

.method release()V
    .locals 1

    .line 2036
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$SoundHelper;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 2037
    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    const/4 v0, 0x0

    .line 2038
    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$SoundHelper;->mSoundPool:Landroid/media/SoundPool;

    :cond_0
    return-void
.end method

.method setPlayVolume(F)V
    .locals 0

    .line 2011
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$SoundHelper;->mPlayVolume:F

    return-void
.end method
