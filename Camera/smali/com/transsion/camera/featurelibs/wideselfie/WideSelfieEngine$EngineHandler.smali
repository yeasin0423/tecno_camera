.class final Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine$EngineHandler;
.super Landroid/os/Handler;
.source "WideSelfieEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine;
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
.field private mWideSelfieRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/os/Looper;Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;)V
    .locals 0

    .line 110
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 111
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine$EngineHandler;->mWideSelfieRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Looper;Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine$1;)V
    .locals 0

    .line 98
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine$EngineHandler;-><init>(Landroid/os/Looper;Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;)V

    return-void
.end method

.method private handleConfig(Lcom/transsion/camera/featurelibs/wideselfie/ConfigParam;)V
    .locals 2

    .line 174
    invoke-static {}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "handleConfig"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 175
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine$EngineHandler;->mWideSelfieRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;

    if-nez p0, :cond_0

    .line 177
    invoke-static {}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "handleConfig wideSelfie is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 180
    :cond_0
    invoke-interface {p0, p1}, Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;->config(Lcom/transsion/camera/featurelibs/wideselfie/ConfigParam;)Z

    return-void
.end method

.method private handleInit()V
    .locals 2

    .line 164
    invoke-static {}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "handleInit"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 165
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine$EngineHandler;->mWideSelfieRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;

    if-nez p0, :cond_0

    .line 167
    invoke-static {}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "handleInit wideSelfie is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 170
    :cond_0
    invoke-interface {p0}, Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;->init()Z

    return-void
.end method

.method private handleProcess(I[B[Landroid/graphics/Rect;)V
    .locals 3

    .line 194
    invoke-static {}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleProcess command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 195
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine$EngineHandler;->mWideSelfieRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;

    if-nez p0, :cond_0

    .line 197
    invoke-static {}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "handleProcess wideSelfie is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 200
    :cond_0
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;->process(I[B[Landroid/graphics/Rect;)V

    return-void
.end method

.method private handleReset()V
    .locals 2

    .line 204
    invoke-static {}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "handleReset"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 205
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine$EngineHandler;->mWideSelfieRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;

    if-nez p0, :cond_0

    .line 207
    invoke-static {}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "handleReset wideSelfie is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 210
    :cond_0
    invoke-interface {p0}, Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;->reset()Z

    return-void
.end method

.method private handleSetCallback(Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie$WideSelfieCallback;)V
    .locals 2

    .line 184
    invoke-static {}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "handleSetCallback"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 185
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine$EngineHandler;->mWideSelfieRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;

    if-nez p0, :cond_0

    .line 187
    invoke-static {}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "handleSetCallback wideSelfie is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 190
    :cond_0
    invoke-interface {p0, p1}, Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;->setCallback(Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie$WideSelfieCallback;)V

    return-void
.end method

.method private handleUnInit()V
    .locals 2

    .line 214
    invoke-static {}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "handleUnInit"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 215
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine$EngineHandler;->mWideSelfieRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;

    if-nez p0, :cond_0

    .line 217
    invoke-static {}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "handleUnInit wideSelfie is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 220
    :cond_0
    invoke-interface {p0}, Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;->unInit()Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 116
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 118
    invoke-static {}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

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

    .line 120
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 157
    invoke-static {}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

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

    .line 154
    :pswitch_0
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine$EngineHandler;->handleUnInit()V

    goto :goto_0

    .line 151
    :pswitch_1
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine$EngineHandler;->handleReset()V

    goto :goto_0

    .line 142
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 143
    instance-of v1, v0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine$DataHolder;

    if-nez v1, :cond_0

    .line 144
    invoke-static {}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "invalid data"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 147
    :cond_0
    check-cast v0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine$DataHolder;

    .line 148
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine$DataHolder;->access$300(Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine$DataHolder;)[B

    move-result-object v1

    invoke-static {v0}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine$DataHolder;->access$400(Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine$DataHolder;)[Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, p1, v1, v0}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine$EngineHandler;->handleProcess(I[B[Landroid/graphics/Rect;)V

    goto :goto_0

    .line 133
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_1

    .line 134
    instance-of v0, p1, Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie$WideSelfieCallback;

    if-nez v0, :cond_1

    .line 136
    invoke-static {}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "invalid WideSelfieCallback"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 139
    :cond_1
    check-cast p1, Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie$WideSelfieCallback;

    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine$EngineHandler;->handleSetCallback(Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie$WideSelfieCallback;)V

    goto :goto_0

    .line 125
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 126
    instance-of v0, p1, Lcom/transsion/camera/featurelibs/wideselfie/ConfigParam;

    if-nez v0, :cond_2

    .line 127
    invoke-static {}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "invalid ConfigParameters"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 130
    :cond_2
    check-cast p1, Lcom/transsion/camera/featurelibs/wideselfie/ConfigParam;

    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine$EngineHandler;->handleConfig(Lcom/transsion/camera/featurelibs/wideselfie/ConfigParam;)V

    goto :goto_0

    .line 122
    :pswitch_5
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine$EngineHandler;->handleInit()V

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
