.class public final synthetic Lcom/transsion/camera/app/ui/mode/armode/-$$Lambda$ARStickerUI$EyfVxYAXI-WyxDos_6RDrPQopVM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/armode/-$$Lambda$ARStickerUI$EyfVxYAXI-WyxDos_6RDrPQopVM;->f$0:Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;

    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/mode/armode/-$$Lambda$ARStickerUI$EyfVxYAXI-WyxDos_6RDrPQopVM;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/-$$Lambda$ARStickerUI$EyfVxYAXI-WyxDos_6RDrPQopVM;->f$0:Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/mode/armode/-$$Lambda$ARStickerUI$EyfVxYAXI-WyxDos_6RDrPQopVM;->f$1:Z

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->lambda$setRecyclerViewEnable$4$ARStickerUI(Z)V

    return-void
.end method
