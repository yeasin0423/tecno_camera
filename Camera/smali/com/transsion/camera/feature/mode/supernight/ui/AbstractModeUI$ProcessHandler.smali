.class Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$ProcessHandler;
.super Landroid/os/Handler;
.source "AbstractModeUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProcessHandler"
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mModeUIReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;",
            ">;"
        }
    .end annotation
.end field

.field private mStep:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 159
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SuperNightProcessHandler"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$ProcessHandler;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;)V
    .locals 0

    .line 168
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    .line 165
    iput p1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$ProcessHandler;->mStep:I

    .line 169
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$ProcessHandler;->mModeUIReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private createProcessingStepBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 3

    .line 207
    sget-object p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$ProcessHandler;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createProcessingStepBitmap step: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez p2, :cond_0

    return-object p1

    .line 211
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    .line 212
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 213
    invoke-static {p1}, Lcom/transsion/camera/utils/ImageUtils;->bitmapToArgb(Landroid/graphics/Bitmap;)[I

    move-result-object p1

    .line 214
    invoke-static {p1, p0, v0}, Lcom/transsion/camera/utils/ImageUtils;->argbToNV21([III)[B

    move-result-object p1

    const/4 v2, 0x2

    .line 228
    invoke-static {p1, p0, v0, v2, p2}, Lcom/transsion/camera/supernight/ImageProcess;->LightDegreesPro([BIIII)I

    const/4 v2, 0x0

    .line 230
    :try_start_0
    invoke-static {p1, p0, v0, v2}, Lcom/transsion/camera/utils/ImageUtils;->nv21ToJpeg([BIILandroid/graphics/Rect;)[B

    move-result-object p0

    const/4 p1, 0x0

    .line 231
    array-length v0, p0

    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 233
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 235
    :goto_0
    sget-object p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$ProcessHandler;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " done."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 174
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$ProcessHandler;->mModeUIReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

    if-nez v0, :cond_0

    .line 176
    sget-object p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$ProcessHandler;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "ProcessHandler SuperNightModeUI is null, return."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 179
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x3e9

    if-eq v1, v2, :cond_2

    const/16 p1, 0x3ea

    if-eq v1, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 197
    iput p1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$ProcessHandler;->mStep:I

    .line 198
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 199
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->access$100(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;)V

    goto :goto_0

    .line 181
    :cond_2
    iget v1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$ProcessHandler;->mStep:I

    const/16 v3, 0xa

    if-lt v1, v3, :cond_3

    goto :goto_0

    .line 184
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 185
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap;

    .line 186
    iget v1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$ProcessHandler;->mStep:I

    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$ProcessHandler;->createProcessingStepBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 187
    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->access$000(Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;Landroid/graphics/Bitmap;)V

    const-wide/16 v0, 0x1f4

    .line 188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    sub-long/2addr v0, v5

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-gez v5, :cond_4

    move-wide v0, v3

    .line 192
    :cond_4
    iget v3, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$ProcessHandler;->mStep:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI$ProcessHandler;->mStep:I

    .line 193
    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 194
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void
.end method
