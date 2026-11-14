.class Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;
.super Ljava/lang/Object;
.source "ModePickerUIManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ModeEditorAssist"
.end annotation


# instance fields
.field private mAllModeResources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentCameraID:Ljava/lang/String;

.field private mIsSecureCamera:Z

.field private mModePolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

.field private mModesNumberInTab:Ljava/lang/String;

.field final synthetic this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Ljava/lang/String;)V
    .locals 0

    .line 684
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "0"

    .line 678
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->mCurrentCameraID:Ljava/lang/String;

    .line 685
    iput-object p2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->mModesNumberInTab:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public flashModeList()V
    .locals 6

    .line 739
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->mModePolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    const-string v1, "0"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getDataStoreModeNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 740
    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->mModePolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    const-string v3, "1"

    invoke-interface {v2, v3}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getDataStoreModeNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 741
    iget-object v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->mModePolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    invoke-interface {v4, v0, v2}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->saveARCorePosition([Ljava/lang/String;[Ljava/lang/String;)V

    .line 742
    iget-object v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    iget-object v5, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->mAllModeResources:Ljava/util/List;

    invoke-static {v4, v0, v5}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$1600(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;[Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$1402(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Ljava/util/List;)Ljava/util/List;

    .line 743
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->mAllModeResources:Ljava/util/List;

    invoke-static {v0, v2, v4}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$1600(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;[Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$1502(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Ljava/util/List;)Ljava/util/List;

    .line 744
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->mModePolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    invoke-interface {v2, v1}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getDefaultMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$1702(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Ljava/lang/String;)Ljava/lang/String;

    .line 745
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->mModePolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    invoke-interface {p0, v3}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getDefaultMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$1802(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public flashModeListCurrentCamera()V
    .locals 1

    .line 768
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->mCurrentCameraID:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->updateCurrentCamera(Ljava/lang/String;)V

    return-void
.end method

.method public setModeList(Ljava/util/List;Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;",
            "Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;",
            "Z)V"
        }
    .end annotation

    .line 689
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->mAllModeResources:Ljava/util/List;

    if-eqz p3, :cond_1

    .line 691
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 692
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 693
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/FeatureResource;

    .line 694
    iget-object v0, v0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    const-string v1, "com.transsion.camera.feature.arcore.ARCoreModeEntry"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 695
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 700
    :cond_1
    iput-object p2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->mModePolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    .line 701
    iput-boolean p3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->mIsSecureCamera:Z

    .line 703
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->flashModeList()V

    .line 706
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->mCurrentCameraID:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->updateCurrentCamera(Ljava/lang/String;)V

    return-void
.end method

.method public updateCurrentCamera(Ljava/lang/String;)V
    .locals 6

    .line 710
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$1000(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->setIsResumeAfterEdit(Z)V

    .line 711
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->mCurrentCameraID:Ljava/lang/String;

    .line 713
    new-instance p1, Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$900(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    .line 716
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->mCurrentCameraID:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v0

    .line 717
    invoke-static {}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$1200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[updateCurrentCamera] mCurrentCameraID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->mCurrentCameraID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " facingBack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    .line 719
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "backarcoreposition"

    invoke-virtual {p1, v4, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 720
    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->mModesNumberInTab:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v4

    const-string v5, "backmainmodescount"

    invoke-virtual {p1, v5, v3, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    .line 722
    :cond_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "frontarcoreposition"

    invoke-virtual {p1, v4, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 723
    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->mModesNumberInTab:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v4

    const-string v5, "frontmainmodescount"

    invoke-virtual {p1, v5, v3, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 726
    :goto_0
    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->mIsSecureCamera:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    add-int/lit8 v3, p1, 0x1

    if-ge v2, v3, :cond_1

    if-lez v2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    if-eqz v0, :cond_2

    .line 730
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$1400(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Ljava/util/List;

    move-result-object v0

    sub-int/2addr p1, v1

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->mCurrentCameraID:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, v1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->updateCurrentModes(Ljava/util/List;ILjava/lang/String;)V

    goto :goto_2

    .line 732
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$1500(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Ljava/util/List;

    move-result-object v0

    sub-int/2addr p1, v1

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->mCurrentCameraID:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, v1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->updateCurrentModes(Ljava/util/List;ILjava/lang/String;)V

    .line 735
    :goto_2
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$1000(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->setIsResumeAfterEdit(Z)V

    return-void
.end method

.method public updateCurrentModes(Ljava/util/List;ILjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 750
    iput-object p3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->mCurrentCameraID:Ljava/lang/String;

    .line 751
    invoke-static {p3}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v0

    .line 752
    invoke-static {}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$1200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[updateCurrentModes] camera:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " facingBack:"

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 754
    iget-object p3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p3, v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$1402(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Ljava/util/List;)Ljava/util/List;

    .line 755
    iget-object p3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {p3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$500(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/ui/IModePanelUI;

    move-result-object p3

    invoke-interface {p3, p1}, Lcom/transsion/camera/app/ui/IModePanelUI;->setModeList(Ljava/util/List;)V

    .line 756
    iget-object p3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {p3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$1100(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/ui/IModeScrollUI;

    move-result-object p3

    invoke-interface {p3, p1}, Lcom/transsion/camera/app/ui/IModeScrollUI;->setModeList(Ljava/util/List;)V

    .line 757
    iget-object p3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {p3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$1000(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    move-result-object p3

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$1700(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$1900(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, p1, v0, v1, p2}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateModes(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 759
    :cond_0
    iget-object p3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p3, v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$1502(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Ljava/util/List;)Ljava/util/List;

    .line 760
    iget-object p3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {p3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$500(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/ui/IModePanelUI;

    move-result-object p3

    invoke-interface {p3, p1}, Lcom/transsion/camera/app/ui/IModePanelUI;->setModeList(Ljava/util/List;)V

    .line 761
    iget-object p3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {p3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$1100(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/ui/IModeScrollUI;

    move-result-object p3

    invoke-interface {p3, p1}, Lcom/transsion/camera/app/ui/IModeScrollUI;->setModeList(Ljava/util/List;)V

    .line 762
    iget-object p3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {p3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$1000(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    move-result-object p3

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$1800(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$1900(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, p1, v0, v1, p2}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateModes(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V

    .line 764
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->access$2000(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->updateCurrentMode(Ljava/lang/String;Z)V

    return-void
.end method
