.class Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI$6;
.super Ljava/lang/Object;
.source "ArcFilterSettingUI.java"

# interfaces
.implements Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUIListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI$6;->this$0:Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setListenerCallback(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    .line 231
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI$6;->this$0:Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->access$1602(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;Lcom/transsion/camera/app/common/setting/ISetting;)Lcom/transsion/camera/app/common/setting/ISetting;

    return-void
.end method

.method public topItemInit(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    .line 221
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI$6;->this$0:Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->access$1400(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public topItemUninit()V
    .locals 0

    .line 226
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI$6;->this$0:Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->access$1500(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;)V

    return-void
.end method
