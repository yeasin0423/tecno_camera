.class Lcom/transsion/camera/app/CameraActivity$IntentProxy;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IApp$IIntentProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IntentProxy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/CameraActivity;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/CameraActivity;)V
    .locals 0

    .line 988
    iput-object p1, p0, Lcom/transsion/camera/app/CameraActivity$IntentProxy;->this$0:Lcom/transsion/camera/app/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/CameraActivity;Lcom/transsion/camera/app/CameraActivity$1;)V
    .locals 0

    .line 988
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/CameraActivity$IntentProxy;-><init>(Lcom/transsion/camera/app/CameraActivity;)V

    return-void
.end method


# virtual methods
.method public showDenyAndNeverShowSDCardDialog(Lcom/transsion/camera/app/common/IApp$IGotoSDCardDirectoryCallback;)V
    .locals 0

    .line 997
    iget-object p0, p0, Lcom/transsion/camera/app/CameraActivity$IntentProxy;->this$0:Lcom/transsion/camera/app/CameraActivity;

    iput-object p1, p0, Lcom/transsion/camera/app/PermissionActivity;->mGotoSDCardDirectoryCallback:Lcom/transsion/camera/app/common/IApp$IGotoSDCardDirectoryCallback;

    .line 998
    invoke-virtual {p0}, Lcom/transsion/camera/app/PermissionActivity;->showDirectoryPermissionsRequest()V

    return-void
.end method

.method public startActivityForResult(Lcom/transsion/camera/app/common/IApp$ActivityResultCallback;)V
    .locals 1

    .line 991
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity$IntentProxy;->this$0:Lcom/transsion/camera/app/CameraActivity;

    invoke-static {v0, p1}, Lcom/transsion/camera/app/CameraActivity;->access$2202(Lcom/transsion/camera/app/CameraActivity;Lcom/transsion/camera/app/common/IApp$ActivityResultCallback;)Lcom/transsion/camera/app/common/IApp$ActivityResultCallback;

    .line 992
    iget-object p0, p0, Lcom/transsion/camera/app/CameraActivity$IntentProxy;->this$0:Lcom/transsion/camera/app/CameraActivity;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/IApp$ActivityResultCallback;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/IApp$ActivityResultCallback;->getRequestCode()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
