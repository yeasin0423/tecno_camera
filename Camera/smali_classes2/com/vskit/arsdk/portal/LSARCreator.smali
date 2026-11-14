.class public Lcom/vskit/arsdk/portal/LSARCreator;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static getARInstance()Lcom/vskit/arsdk/portal/ARIManager;
    .locals 1

    .line 1
    new-instance v0, Lcom/vskit/arsdk/d;

    invoke-direct {v0}, Lcom/vskit/arsdk/d;-><init>()V

    return-object v0
.end method
