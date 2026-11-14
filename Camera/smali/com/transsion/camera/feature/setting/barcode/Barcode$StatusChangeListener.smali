.class Lcom/transsion/camera/feature/setting/barcode/Barcode$StatusChangeListener;
.super Ljava/lang/Object;
.source "Barcode.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/barcode/Barcode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusChangeListener"
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
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/setting/barcode/Barcode;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/setting/barcode/Barcode;Lcom/transsion/camera/feature/setting/barcode/Barcode$1;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/barcode/Barcode$StatusChangeListener;-><init>(Lcom/transsion/camera/feature/setting/barcode/Barcode;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 102
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/setting/barcode/Barcode$StatusChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$100(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onStatusChanged] key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 107
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const v0, -0x2edaf77e

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "key_picture_size"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    .line 109
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$200(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 110
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$200(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_3
    :goto_2
    return-void
.end method
