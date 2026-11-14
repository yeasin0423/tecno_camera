.class Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI$1;
.super Ljava/lang/Object;
.source "CommonARSticckerUI.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/mode/armode/FileUtils$FileOperateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI$1;->this$0:Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 1

    .line 328
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI$1;->this$0:Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->access$702(Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;Z)Z

    .line 329
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI$1;->this$0:Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 p1, 0x28

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public onSuccess(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 311
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 312
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI$1;->this$0:Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;

    iget-object v2, v2, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v2, v1}, Lcom/transsion/camera/app/common/IAppUI;->updateThumbnailUri(Landroid/net/Uri;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x28

    const/4 v1, 0x0

    .line 315
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 316
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI$1;->this$0:Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;

    iget-object v2, v2, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI$1;->this$0:Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;

    iget-object v3, v3, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    invoke-static {v3, p1}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-interface {v2, p1}, Lcom/transsion/camera/app/common/IAppUI;->updateThumbnail(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI$1;->this$0:Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;

    invoke-static {p1, v1}, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->access$702(Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;Z)Z

    .line 322
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI$1;->this$0:Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 319
    :try_start_1
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    return-void

    .line 321
    :goto_3
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI$1;->this$0:Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;

    invoke-static {v2, v1}, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->access$702(Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;Z)Z

    .line 322
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI$1;->this$0:Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 323
    throw p1
.end method
