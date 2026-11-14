.class Lcom/transsion/camera/app/common/storage/AppStorageManager$1;
.super Lcom/transsion/camera/app/common/IApp$ActivityResultCallback;
.source "AppStorageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/common/storage/AppStorageManager;->requestExternalStoragePermission()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/storage/AppStorageManager;

.field final synthetic val$resolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/storage/AppStorageManager;Landroid/content/Intent;ILandroid/content/ContentResolver;)V
    .locals 0

    .line 319
    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$1;->this$0:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    iput-object p4, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$1;->val$resolver:Landroid/content/ContentResolver;

    invoke-direct {p0, p2, p3}, Lcom/transsion/camera/app/common/IApp$ActivityResultCallback;-><init>(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public onActivityResult(ILandroid/content/Intent;)V
    .locals 4

    .line 322
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestExternalStoragePermission onActivityResult: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 323
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$1;->this$0:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->access$202(Lcom/transsion/camera/app/common/storage/AppStorageManager;Z)Z

    const/16 v1, 0x1c

    const/4 v2, -0x1

    if-eq p1, v2, :cond_1

    .line 325
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$1;->this$0:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->access$300(Lcom/transsion/camera/app/common/storage/AppStorageManager;)V

    if-gt v0, v1, :cond_0

    .line 327
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$1;->this$0:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->access$400(Lcom/transsion/camera/app/common/storage/AppStorageManager;)J

    move-result-wide v0

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x320

    cmp-long p1, p1, v0

    if-gez p1, :cond_0

    .line 328
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$1;->this$0:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->access$600(Lcom/transsion/camera/app/common/storage/AppStorageManager;)Lcom/transsion/camera/app/common/IApp$IIntentProxy;

    move-result-object p1

    new-instance p2, Lcom/transsion/camera/app/common/storage/AppStorageManager$1$1;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/common/storage/AppStorageManager$1$1;-><init>(Lcom/transsion/camera/app/common/storage/AppStorageManager$1;)V

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/IApp$IIntentProxy;->showDenyAndNeverShowSDCardDialog(Lcom/transsion/camera/app/common/IApp$IGotoSDCardDirectoryCallback;)V

    :cond_0
    return-void

    :cond_1
    if-eqz p2, :cond_4

    .line 338
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 341
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-le v0, v1, :cond_3

    .line 343
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$1;->this$0:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->access$700(Lcom/transsion/camera/app/common/storage/AppStorageManager;)Landroid/os/storage/StorageVolume;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->access$800(Landroid/os/storage/StorageVolume;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 344
    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 345
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$1;->this$0:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->access$300(Lcom/transsion/camera/app/common/storage/AppStorageManager;)V

    .line 346
    invoke-static {}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "requestExternalStoragePermission fail  "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 350
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result p2

    and-int/lit8 p2, p2, 0x3

    .line 353
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$1;->val$resolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V

    .line 354
    iget-object p2, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$1;->this$0:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-static {p2}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->access$900(Lcom/transsion/camera/app/common/storage/AppStorageManager;)Lcom/transsion/camera/app/common/storage/StorageSetting;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/storage/StorageSetting;->syncValueToDataStore()V

    .line 355
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$1;->this$0:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->access$1000(Lcom/transsion/camera/app/common/storage/AppStorageManager;Landroid/net/Uri;)V

    :cond_4
    :goto_0
    return-void
.end method
