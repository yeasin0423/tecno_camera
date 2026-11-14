.class Lcom/transsion/camera/app/ui/manager/ApertureUIManager$SingleHandContentObserver;
.super Landroid/database/ContentObserver;
.source "ApertureUIManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/manager/ApertureUIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SingleHandContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/manager/ApertureUIManager;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/ui/manager/ApertureUIManager;Landroid/os/Handler;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ApertureUIManager$SingleHandContentObserver;->this$0:Lcom/transsion/camera/app/ui/manager/ApertureUIManager;

    .line 38
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ApertureUIManager$SingleHandContentObserver;->this$0:Lcom/transsion/camera/app/ui/manager/ApertureUIManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/ApertureUIManager;->access$000(Lcom/transsion/camera/app/ui/manager/ApertureUIManager;)V

    return-void
.end method
