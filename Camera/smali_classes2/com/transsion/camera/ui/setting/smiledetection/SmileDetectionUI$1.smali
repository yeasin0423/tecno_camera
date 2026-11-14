.class Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI$1;
.super Ljava/lang/Object;
.source "SmileDetectionUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;->lambda$new$0(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI$1;->this$0:Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 140
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI$1;->this$0:Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;->access$000(Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;)Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->triggerShutterClick(I)V

    return-void
.end method
