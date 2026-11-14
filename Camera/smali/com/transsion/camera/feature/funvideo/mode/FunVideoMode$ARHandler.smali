.class Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$ARHandler;
.super Landroid/os/Handler;
.source "FunVideoMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ARHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;Landroid/os/Looper;)V
    .locals 0

    .line 1190
    iput-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$ARHandler;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    .line 1191
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private synthetic lambda$handleMessage$0()V
    .locals 0

    .line 1246
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$ARHandler;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$7000(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1196
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1197
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    const/4 p1, 0x2

    if-eq v0, p1, :cond_3

    const/4 p1, 0x4

    if-eq v0, p1, :cond_2

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    goto/16 :goto_1

    .line 1242
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$ARHandler;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$6600(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "loadGridViewRes start"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1243
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$ARHandler;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$6700(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1244
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$ARHandler;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {p1, v1}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$6702(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;Z)Z

    .line 1245
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$ARHandler;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$1400(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->loadGridViewRes()V

    .line 1246
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$ARHandler;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$6800(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    new-instance v0, Lcom/transsion/camera/feature/funvideo/mode/-$$Lambda$FunVideoMode$ARHandler$GOTpcmbDdkiS0wGeOez-zSYNFG4;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/funvideo/mode/-$$Lambda$FunVideoMode$ARHandler$GOTpcmbDdkiS0wGeOez-zSYNFG4;-><init>(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$ARHandler;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1248
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$ARHandler;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$6900(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "loadGridViewRes end"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1239
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$ARHandler;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {p0, v1}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$6502(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;Z)Z

    goto/16 :goto_1

    .line 1234
    :cond_3
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$ARHandler;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$6400(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)V

    goto/16 :goto_1

    .line 1199
    :cond_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/faceunity/entity/Effect;

    .line 1200
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$ARHandler;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$5500(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start load, effect:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1201
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$ARHandler;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$5600(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/faceunity/entity/Effect;->getBundleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/faceunity/entity/Effect;

    .line 1202
    iget-object v2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$ARHandler;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {v2, p1}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$5002(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;Lcom/faceunity/entity/Effect;)Lcom/faceunity/entity/Effect;

    .line 1203
    invoke-virtual {p1}, Lcom/faceunity/entity/Effect;->getBundleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Cancel"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1204
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$ARHandler;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    iget-object v0, v0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mARManager:Lcom/vskit/arsdk/portal/ARIManager;

    invoke-interface {v0, v1}, Lcom/vskit/arsdk/portal/ARIManager;->setMaxFaces(I)V

    .line 1205
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$ARHandler;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    iget-object v0, v0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mARManager:Lcom/vskit/arsdk/portal/ARIManager;

    invoke-interface {v0, p1}, Lcom/vskit/arsdk/portal/ARIManager;->onEffectSelected(Lcom/faceunity/entity/Effect;)V

    .line 1206
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$ARHandler;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$5600(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 1207
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$ARHandler;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$5700(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)V

    return-void

    .line 1211
    :cond_5
    iget-object v2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$ARHandler;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {v2}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$5800(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1212
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$ARHandler;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$5900(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "mIsInited is false, end load"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_6
    if-nez v0, :cond_7

    .line 1217
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$ARHandler;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$5600(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 1218
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$ARHandler;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$5600(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/faceunity/entity/Effect;->getBundleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1219
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$ARHandler;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    iget-object v0, v0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mARManager:Lcom/vskit/arsdk/portal/ARIManager;

    invoke-interface {v0, p1}, Lcom/vskit/arsdk/portal/ARIManager;->onEffectSelected(Lcom/faceunity/entity/Effect;)V

    .line 1220
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$ARHandler;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$6000(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "effect effectType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/faceunity/entity/Effect;->effectType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1221
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$ARHandler;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$6100(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "effectItem create = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/faceunity/entity/Effect;->getBundleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 1222
    :cond_7
    invoke-virtual {v0}, Lcom/faceunity/entity/Effect;->getBundleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/faceunity/entity/Effect;->getBundleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 1223
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$ARHandler;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$5002(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;Lcom/faceunity/entity/Effect;)Lcom/faceunity/entity/Effect;

    .line 1224
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$ARHandler;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    iget-object p1, p1, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mARManager:Lcom/vskit/arsdk/portal/ARIManager;

    invoke-interface {p1, v0}, Lcom/vskit/arsdk/portal/ARIManager;->onEffectSelected(Lcom/faceunity/entity/Effect;)V

    .line 1225
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$ARHandler;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$6200(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "end loadcahce"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1228
    :cond_8
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$ARHandler;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$2300(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object p1

    const/16 v0, 0x65

    invoke-interface {p1, v1, v0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->loadGLResource(ZI)V

    .line 1229
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$ARHandler;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$6300(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "end load"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public synthetic lambda$handleMessage$0$FunVideoMode$ARHandler()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$ARHandler;->lambda$handleMessage$0()V

    return-void
.end method
