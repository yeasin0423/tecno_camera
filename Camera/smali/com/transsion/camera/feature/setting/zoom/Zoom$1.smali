.class Lcom/transsion/camera/feature/setting/zoom/Zoom$1;
.super Ljava/lang/Object;
.source "Zoom.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/zoom/Zoom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/zoom/Zoom;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/zoom/Zoom;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom$1;->this$0:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 75
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/setting/zoom/Zoom$1;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom$1;->this$0:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->access$000(Lcom/transsion/camera/feature/setting/zoom/Zoom;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "key_wide_camera_item_seleccted"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "value_wide_camera_item_second_zoom_seleccted"

    .line 80
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom$1;->this$0:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->access$100(Lcom/transsion/camera/feature/setting/zoom/Zoom;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "wide camera switch to normal camera by click second zoom!"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom$1;->this$0:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->access$202(Lcom/transsion/camera/feature/setting/zoom/Zoom;Z)Z

    .line 85
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom$1;->this$0:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-static {p0, p1, p2}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->access$300(Lcom/transsion/camera/feature/setting/zoom/Zoom;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
