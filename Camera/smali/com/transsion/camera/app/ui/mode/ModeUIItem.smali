.class public Lcom/transsion/camera/app/ui/mode/ModeUIItem;
.super Ljava/lang/Object;
.source "ModeUIItem.java"


# instance fields
.field public final mIsSellingPoint:Z

.field public final mName:Ljava/lang/String;

.field public final mTitle:Ljava/lang/String;

.field public final mUnSelectedIconId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIZ)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->mName:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->mTitle:Ljava/lang/String;

    .line 14
    iput p4, p0, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->mUnSelectedIconId:I

    .line 15
    iput-boolean p5, p0, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->mIsSellingPoint:Z

    return-void
.end method
