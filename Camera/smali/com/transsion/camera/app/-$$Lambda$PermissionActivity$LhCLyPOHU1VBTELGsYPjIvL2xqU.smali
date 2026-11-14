.class public final synthetic Lcom/transsion/camera/app/-$$Lambda$PermissionActivity$LhCLyPOHU1VBTELGsYPjIvL2xqU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/PermissionActivity;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/PermissionActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/-$$Lambda$PermissionActivity$LhCLyPOHU1VBTELGsYPjIvL2xqU;->f$0:Lcom/transsion/camera/app/PermissionActivity;

    iput-object p2, p0, Lcom/transsion/camera/app/-$$Lambda$PermissionActivity$LhCLyPOHU1VBTELGsYPjIvL2xqU;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/camera/app/-$$Lambda$PermissionActivity$LhCLyPOHU1VBTELGsYPjIvL2xqU;->f$0:Lcom/transsion/camera/app/PermissionActivity;

    iget-object p0, p0, Lcom/transsion/camera/app/-$$Lambda$PermissionActivity$LhCLyPOHU1VBTELGsYPjIvL2xqU;->f$1:Ljava/lang/String;

    invoke-virtual {v0, p0, p1, p2}, Lcom/transsion/camera/app/PermissionActivity;->lambda$showGotoGallerySetting$1$PermissionActivity(Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method
