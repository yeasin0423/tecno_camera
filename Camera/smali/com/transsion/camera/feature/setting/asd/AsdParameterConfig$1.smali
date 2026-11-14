.class Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig$1;
.super Ljava/lang/Object;
.source "AsdParameterConfig.java"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$CameraAsdCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig$1;->this$0:Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAsdDataCallback([I)V
    .locals 4

    .line 96
    array-length v0, p1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 100
    aget v1, p1, v0

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig$1;->this$0:Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    invoke-static {v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->access$000(Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    aget v1, p1, v3

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig$1;->this$0:Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    invoke-static {v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->access$100(Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;)I

    move-result v2

    if-ne v1, v2, :cond_1

    return-void

    .line 104
    :cond_1
    aget v1, p1, v0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    aget v1, p1, v3

    if-eq v1, v2, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig$1;->this$0:Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->access$200(Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;)Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    .line 107
    :cond_3
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig$1;->this$0:Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    aget v0, p1, v0

    aget p1, p1, v3

    invoke-static {v1, v0, p1}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->access$300(Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;II)V

    .line 108
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig$1;->this$0:Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->sendSettingChangeRequest()V

    return-void
.end method
