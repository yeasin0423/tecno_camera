.class Lcom/transsion/camera/app/common/storage/AppStorageManager$1$1;
.super Ljava/lang/Object;
.source "AppStorageManager.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IApp$IGotoSDCardDirectoryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/common/storage/AppStorageManager$1;->onActivityResult(ILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/camera/app/common/storage/AppStorageManager$1;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/storage/AppStorageManager$1;)V
    .locals 0

    .line 328
    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$1$1;->this$1:Lcom/transsion/camera/app/common/storage/AppStorageManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public gotoSDCardDirectory()V
    .locals 1

    .line 331
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$1$1;->this$1:Lcom/transsion/camera/app/common/storage/AppStorageManager$1;

    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$1;->this$0:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->access$502(Lcom/transsion/camera/app/common/storage/AppStorageManager;Z)Z

    return-void
.end method
