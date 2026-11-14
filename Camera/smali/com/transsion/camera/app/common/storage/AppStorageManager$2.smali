.class Lcom/transsion/camera/app/common/storage/AppStorageManager$2;
.super Landroid/content/BroadcastReceiver;
.source "AppStorageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/storage/AppStorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/storage/AppStorageManager;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/storage/AppStorageManager;)V
    .locals 0

    .line 404
    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$2;->this$0:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 407
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.os.storage.extra.STORAGE_VOLUME"

    .line 408
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/storage/StorageVolume;

    .line 409
    invoke-static {}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MEDIA Receiver onReceive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$2;->this$0:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->access$1100(Lcom/transsion/camera/app/common/storage/AppStorageManager;)Landroid/os/storage/StorageManager;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->access$1200(Landroid/os/storage/StorageManager;Landroid/os/storage/StorageVolume;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 415
    invoke-static {}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "return because action on OTG storage."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, -0x1

    .line 419
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x5a4113c8

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v1, v2, :cond_4

    const v2, -0x4418042d

    if-eq v1, v2, :cond_3

    const v2, -0x254e496f

    if-eq v1, v2, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    move v0, v3

    goto :goto_0

    :cond_3
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    move v0, v4

    goto :goto_0

    :cond_4
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    move v0, v5

    :cond_5
    :goto_0
    if-eqz v0, :cond_a

    if-eq v0, v5, :cond_7

    if-eq v0, v4, :cond_6

    goto/16 :goto_1

    .line 445
    :cond_6
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$2;->this$0:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->access$1400(Lcom/transsion/camera/app/common/storage/AppStorageManager;)Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperatorListener;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 446
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$2;->this$0:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->access$1400(Lcom/transsion/camera/app/common/storage/AppStorageManager;)Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperatorListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperatorListener;->onMediaScannerFinished()V

    goto/16 :goto_1

    .line 433
    :cond_7
    invoke-static {p2}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->access$1500(Landroid/os/storage/StorageVolume;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 434
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$2;->this$0:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-static {p1, v5}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->access$1602(Lcom/transsion/camera/app/common/storage/AppStorageManager;Z)Z

    .line 435
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$2;->this$0:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->access$1700(Lcom/transsion/camera/app/common/storage/AppStorageManager;)Lcom/transsion/camera/app/common/storage/InternalStorageOperator;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->updateStorageVolume(Landroid/os/storage/StorageVolume;)V

    .line 436
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$2;->this$0:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->access$1700(Lcom/transsion/camera/app/common/storage/AppStorageManager;)Lcom/transsion/camera/app/common/storage/InternalStorageOperator;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$2;->this$0:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->access$1600(Lcom/transsion/camera/app/common/storage/AppStorageManager;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->setStorageAvailable(Z)V

    goto :goto_1

    .line 438
    :cond_8
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$2;->this$0:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->access$1400(Lcom/transsion/camera/app/common/storage/AppStorageManager;)Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperatorListener;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 439
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$2;->this$0:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->access$1400(Lcom/transsion/camera/app/common/storage/AppStorageManager;)Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperatorListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperatorListener;->onSDCardMounted()V

    .line 441
    :cond_9
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$2;->this$0:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-static {p0, p2}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->access$1800(Lcom/transsion/camera/app/common/storage/AppStorageManager;Landroid/os/storage/StorageVolume;)V

    goto :goto_1

    :cond_a
    if-eqz p2, :cond_b

    .line 421
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$2;->this$0:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->access$700(Lcom/transsion/camera/app/common/storage/AppStorageManager;)Landroid/os/storage/StorageVolume;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/storage/StorageVolume;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 422
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$2;->this$0:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->access$1300(Lcom/transsion/camera/app/common/storage/AppStorageManager;)V

    .line 423
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$2;->this$0:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->access$1400(Lcom/transsion/camera/app/common/storage/AppStorageManager;)Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperatorListener;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 424
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$2;->this$0:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->access$1400(Lcom/transsion/camera/app/common/storage/AppStorageManager;)Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperatorListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperatorListener;->onSDCardUnMounted()V

    goto :goto_1

    .line 426
    :cond_b
    invoke-static {p2}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->access$1500(Landroid/os/storage/StorageVolume;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 427
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$2;->this$0:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-static {p1, v3}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->access$1602(Lcom/transsion/camera/app/common/storage/AppStorageManager;Z)Z

    .line 428
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$2;->this$0:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->access$1700(Lcom/transsion/camera/app/common/storage/AppStorageManager;)Lcom/transsion/camera/app/common/storage/InternalStorageOperator;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->updateStorageVolume(Landroid/os/storage/StorageVolume;)V

    .line 429
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$2;->this$0:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->access$1700(Lcom/transsion/camera/app/common/storage/AppStorageManager;)Lcom/transsion/camera/app/common/storage/InternalStorageOperator;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$2;->this$0:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->access$1600(Lcom/transsion/camera/app/common/storage/AppStorageManager;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->setStorageAvailable(Z)V

    :cond_c
    :goto_1
    return-void
.end method
