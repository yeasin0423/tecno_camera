.class Lcom/transsion/camera/app/PermissionActivity$4;
.super Ljava/lang/Object;
.source "PermissionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/PermissionActivity;->showDirectoryPermissionsRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/PermissionActivity;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/PermissionActivity;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/transsion/camera/app/PermissionActivity$4;->this$0:Lcom/transsion/camera/app/PermissionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 310
    :try_start_0
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.settings.STORAGE_VOLUME_ACCESS_SETTINGS"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/transsion/camera/app/PermissionActivity$4;->this$0:Lcom/transsion/camera/app/PermissionActivity;

    invoke-virtual {v0, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 312
    iget-object p2, p0, Lcom/transsion/camera/app/PermissionActivity$4;->this$0:Lcom/transsion/camera/app/PermissionActivity;

    iget-object p2, p2, Lcom/transsion/camera/app/PermissionActivity;->mGotoSDCardDirectoryCallback:Lcom/transsion/camera/app/common/IApp$IGotoSDCardDirectoryCallback;

    if-eqz p2, :cond_0

    .line 313
    iget-object p0, p0, Lcom/transsion/camera/app/PermissionActivity$4;->this$0:Lcom/transsion/camera/app/PermissionActivity;

    iget-object p0, p0, Lcom/transsion/camera/app/PermissionActivity;->mGotoSDCardDirectoryCallback:Lcom/transsion/camera/app/common/IApp$IGotoSDCardDirectoryCallback;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IApp$IGotoSDCardDirectoryCallback;->gotoSDCardDirectory()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 316
    :catch_0
    invoke-static {}, Lcom/transsion/camera/app/PermissionActivity;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p2, "not find DIRECTORY_ACTION"

    invoke-static {p0, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 318
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
