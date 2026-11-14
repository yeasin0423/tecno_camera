.class final Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine$EngineHandler;
.super Landroid/os/Handler;
.source "PanoramaEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EngineHandler"
.end annotation


# static fields
.field private static final MSG_CONFIG:I = 0x2

.field private static final MSG_INIT:I = 0x1

.field private static final MSG_PROCESS:I = 0x4

.field private static final MSG_RESET:I = 0x5

.field private static final MSG_SET_CALLBACK:I = 0x3

.field private static final MSG_UNINIT:I = 0x6


# instance fields
.field private mPanoramaRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/camera/featurelibs/panorama/IPanorama;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/os/Looper;Lcom/transsion/camera/featurelibs/panorama/IPanorama;)V
    .locals 0

    .line 96
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 97
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine$EngineHandler;->mPanoramaRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Looper;Lcom/transsion/camera/featurelibs/panorama/IPanorama;Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine$1;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine$EngineHandler;-><init>(Landroid/os/Looper;Lcom/transsion/camera/featurelibs/panorama/IPanorama;)V

    return-void
.end method

.method private handleConfig(Lcom/transsion/camera/featurelibs/panorama/ConfigParam;)V
    .locals 2

    .line 159
    invoke-static {}, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "handleConfig"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 160
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine$EngineHandler;->mPanoramaRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/featurelibs/panorama/IPanorama;

    if-nez p0, :cond_0

    .line 162
    invoke-static {}, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "handleConfig panorama is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 165
    :cond_0
    invoke-interface {p0, p1}, Lcom/transsion/camera/featurelibs/panorama/IPanorama;->config(Lcom/transsion/camera/featurelibs/panorama/ConfigParam;)Z

    return-void
.end method

.method private handleInit()V
    .locals 2

    .line 149
    invoke-static {}, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "handleInit"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 150
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine$EngineHandler;->mPanoramaRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/featurelibs/panorama/IPanorama;

    if-nez p0, :cond_0

    .line 152
    invoke-static {}, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "handleInit panorama is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 155
    :cond_0
    invoke-interface {p0}, Lcom/transsion/camera/featurelibs/panorama/IPanorama;->init()Z

    return-void
.end method

.method private handleProcess(I[B)V
    .locals 3

    .line 179
    invoke-static {}, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleProcess command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 180
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine$EngineHandler;->mPanoramaRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/featurelibs/panorama/IPanorama;

    if-nez p0, :cond_0

    .line 182
    invoke-static {}, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "handleProcess panorama is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 185
    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/featurelibs/panorama/IPanorama;->process(I[B)V

    return-void
.end method

.method private handleReset()V
    .locals 2

    .line 189
    invoke-static {}, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "handleReset"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 190
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine$EngineHandler;->mPanoramaRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/featurelibs/panorama/IPanorama;

    if-nez p0, :cond_0

    .line 192
    invoke-static {}, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "handleReset panorama is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 195
    :cond_0
    invoke-interface {p0}, Lcom/transsion/camera/featurelibs/panorama/IPanorama;->reset()Z

    return-void
.end method

.method private handleSetCallback(Lcom/transsion/camera/featurelibs/panorama/IPanorama$PanoramaCallback;)V
    .locals 2

    .line 169
    invoke-static {}, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "handleSetCallback"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 170
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine$EngineHandler;->mPanoramaRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/featurelibs/panorama/IPanorama;

    if-nez p0, :cond_0

    .line 172
    invoke-static {}, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "handleSetCallback panorama is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 175
    :cond_0
    invoke-interface {p0, p1}, Lcom/transsion/camera/featurelibs/panorama/IPanorama;->setCallback(Lcom/transsion/camera/featurelibs/panorama/IPanorama$PanoramaCallback;)V

    return-void
.end method

.method private handleUnInit()V
    .locals 2

    .line 199
    invoke-static {}, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "handleUnInit"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 200
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine$EngineHandler;->mPanoramaRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/featurelibs/panorama/IPanorama;

    if-nez p0, :cond_0

    .line 202
    invoke-static {}, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "handleUnInit panorama is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 205
    :cond_0
    invoke-interface {p0}, Lcom/transsion/camera/featurelibs/panorama/IPanorama;->unInit()Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 102
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 104
    invoke-static {}, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 106
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 142
    invoke-static {}, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :pswitch_0
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine$EngineHandler;->handleUnInit()V

    goto :goto_0

    .line 136
    :pswitch_1
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine$EngineHandler;->handleReset()V

    goto :goto_0

    .line 128
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 129
    instance-of v1, v0, [B

    if-nez v1, :cond_0

    .line 130
    invoke-static {}, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "invalid byte[]"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 133
    :cond_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    check-cast v0, [B

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine$EngineHandler;->handleProcess(I[B)V

    goto :goto_0

    .line 119
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_1

    .line 120
    instance-of v0, p1, Lcom/transsion/camera/featurelibs/panorama/IPanorama$PanoramaCallback;

    if-nez v0, :cond_1

    .line 122
    invoke-static {}, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "invalid PanoramaCallback"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 125
    :cond_1
    check-cast p1, Lcom/transsion/camera/featurelibs/panorama/IPanorama$PanoramaCallback;

    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine$EngineHandler;->handleSetCallback(Lcom/transsion/camera/featurelibs/panorama/IPanorama$PanoramaCallback;)V

    goto :goto_0

    .line 111
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 112
    instance-of v0, p1, Lcom/transsion/camera/featurelibs/panorama/ConfigParam;

    if-nez v0, :cond_2

    .line 113
    invoke-static {}, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "invalid ConfigParameters"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 116
    :cond_2
    check-cast p1, Lcom/transsion/camera/featurelibs/panorama/ConfigParam;

    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine$EngineHandler;->handleConfig(Lcom/transsion/camera/featurelibs/panorama/ConfigParam;)V

    goto :goto_0

    .line 108
    :pswitch_5
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine$EngineHandler;->handleInit()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
