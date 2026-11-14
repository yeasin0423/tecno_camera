.class public final synthetic Lcom/transsion/camera/app/-$$Lambda$SecureCameraActivity$YhfoI6yYKfO8n1oY7KcZiQViCbU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/SecureCameraActivity;

.field public final synthetic f$1:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/SecureCameraActivity;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/-$$Lambda$SecureCameraActivity$YhfoI6yYKfO8n1oY7KcZiQViCbU;->f$0:Lcom/transsion/camera/app/SecureCameraActivity;

    iput-object p2, p0, Lcom/transsion/camera/app/-$$Lambda$SecureCameraActivity$YhfoI6yYKfO8n1oY7KcZiQViCbU;->f$1:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/camera/app/-$$Lambda$SecureCameraActivity$YhfoI6yYKfO8n1oY7KcZiQViCbU;->f$0:Lcom/transsion/camera/app/SecureCameraActivity;

    iget-object p0, p0, Lcom/transsion/camera/app/-$$Lambda$SecureCameraActivity$YhfoI6yYKfO8n1oY7KcZiQViCbU;->f$1:Landroid/net/Uri;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/SecureCameraActivity;->lambda$notifyNewMedia$1$SecureCameraActivity(Landroid/net/Uri;)V

    return-void
.end method
