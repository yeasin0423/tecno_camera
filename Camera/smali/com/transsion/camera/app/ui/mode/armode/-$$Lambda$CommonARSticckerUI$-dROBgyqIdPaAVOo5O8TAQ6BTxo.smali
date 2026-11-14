.class public final synthetic Lcom/transsion/camera/app/ui/mode/armode/-$$Lambda$CommonARSticckerUI$-dROBgyqIdPaAVOo5O8TAQ6BTxo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/armode/-$$Lambda$CommonARSticckerUI$-dROBgyqIdPaAVOo5O8TAQ6BTxo;->f$0:Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/mode/armode/-$$Lambda$CommonARSticckerUI$-dROBgyqIdPaAVOo5O8TAQ6BTxo;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/armode/-$$Lambda$CommonARSticckerUI$-dROBgyqIdPaAVOo5O8TAQ6BTxo;->f$0:Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/armode/-$$Lambda$CommonARSticckerUI$-dROBgyqIdPaAVOo5O8TAQ6BTxo;->f$1:Ljava/lang/String;

    check-cast p1, Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;

    invoke-virtual {v0, p0, p1}, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->lambda$showCopyDialog$0$CommonARSticckerUI(Ljava/lang/String;Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;)V

    return-void
.end method
