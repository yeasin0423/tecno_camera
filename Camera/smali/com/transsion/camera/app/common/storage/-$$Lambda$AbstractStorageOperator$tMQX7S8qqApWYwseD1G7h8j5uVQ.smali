.class public final synthetic Lcom/transsion/camera/app/common/storage/-$$Lambda$AbstractStorageOperator$tMQX7S8qqApWYwseD1G7h8j5uVQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/-$$Lambda$AbstractStorageOperator$tMQX7S8qqApWYwseD1G7h8j5uVQ;->f$0:Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/-$$Lambda$AbstractStorageOperator$tMQX7S8qqApWYwseD1G7h8j5uVQ;->f$0:Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->lambda$clearTempFiles$0$AbstractStorageOperator()V

    return-void
.end method
