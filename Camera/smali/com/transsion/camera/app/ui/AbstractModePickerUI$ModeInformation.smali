.class Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;
.super Ljava/lang/Object;
.source "AbstractModePickerUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/AbstractModePickerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ModeInformation"
.end annotation


# static fields
.field private static MAX_MODES_NUMBER_IN_TAB:I


# instance fields
.field private mCurrentIsTabLayoutMode:Z

.field private mCurrentModeIndexInTabLayout:I

.field private mCurrentModeItem:Lcom/transsion/camera/app/common/FeatureResource;

.field private mDefaultModeFeatureName:Ljava/lang/String;

.field private mDefaultSelectedMode:Ljava/lang/String;

.field private mModeItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;"
        }
    .end annotation
.end field

.field private mTabLayoutModeItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 677
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 678
    sput p1, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->MAX_MODES_NUMBER_IN_TAB:I

    return-void
.end method

.method static synthetic access$1000(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;Ljava/lang/String;)V
    .locals 0

    .line 666
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->updateCurrentMode(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;Ljava/lang/String;)Z
    .locals 0

    .line 666
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->isTabLayoutMode(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;)Ljava/lang/String;
    .locals 0

    .line 666
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->currentModeFeatureName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;)Lcom/transsion/camera/app/common/FeatureResource;
    .locals 0

    .line 666
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->mCurrentModeItem:Lcom/transsion/camera/app/common/FeatureResource;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;)V
    .locals 0

    .line 666
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->updateCurrentMode()V

    return-void
.end method

.method static synthetic access$1800(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;I)V
    .locals 0

    .line 666
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->updateCurrentMode(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;)Z
    .locals 0

    .line 666
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->validModeList()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2300(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;)Ljava/util/List;
    .locals 0

    .line 666
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->getTabLayoutMode()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2400(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;Lcom/transsion/camera/app/common/FeatureResource;)Z
    .locals 0

    .line 666
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->defaultSelectedMode(Lcom/transsion/camera/app/common/FeatureResource;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2500(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;I)Lcom/transsion/camera/app/common/FeatureResource;
    .locals 0

    .line 666
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->getTabLayoutMode(I)Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;)Z
    .locals 0

    .line 666
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->currentIsTabLayoutMode()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;)Ljava/lang/String;
    .locals 0

    .line 666
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->currentModeShowName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;)I
    .locals 0

    .line 666
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->currentModeIndexInTabLayout()I

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 666
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->updateModeListAndDefaultMode(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 666
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->updateModeListAndDefaultMode(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private currentIsTabLayoutMode()Z
    .locals 0

    .line 748
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->mCurrentIsTabLayoutMode:Z

    return p0
.end method

.method private currentModeFeatureName()Ljava/lang/String;
    .locals 0

    .line 771
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->mCurrentModeItem:Lcom/transsion/camera/app/common/FeatureResource;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 774
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    return-object p0
.end method

.method private currentModeIndexInTabLayout()I
    .locals 0

    .line 752
    iget p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->mCurrentModeIndexInTabLayout:I

    return p0
.end method

.method private currentModeShowName()Ljava/lang/String;
    .locals 0

    .line 767
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->mCurrentModeItem:Lcom/transsion/camera/app/common/FeatureResource;

    iget-object p0, p0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureTitle:Ljava/lang/String;

    return-object p0
.end method

.method private defaultSelectedMode(Lcom/transsion/camera/app/common/FeatureResource;)Z
    .locals 0

    .line 708
    iget-object p1, p1, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->mDefaultSelectedMode:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private getTabLayoutMode(I)Lcom/transsion/camera/app/common/FeatureResource;
    .locals 0

    .line 712
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->mTabLayoutModeItems:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/FeatureResource;

    return-object p0
.end method

.method private getTabLayoutMode()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;"
        }
    .end annotation

    .line 704
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->mTabLayoutModeItems:Ljava/util/List;

    return-object p0
.end method

.method private isTabLayoutMode(Ljava/lang/String;)Z
    .locals 1

    .line 756
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->mTabLayoutModeItems:Ljava/util/List;

    if-eqz p0, :cond_1

    .line 757
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/FeatureResource;

    .line 758
    iget-object v0, v0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private updateCurrentMode()V
    .locals 1

    .line 716
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->mDefaultModeFeatureName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->updateCurrentMode(Ljava/lang/String;)V

    return-void
.end method

.method private updateCurrentMode(I)V
    .locals 3

    .line 720
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->mTabLayoutModeItems:Ljava/util/List;

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 724
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->mTabLayoutModeItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/FeatureResource;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->mCurrentModeItem:Lcom/transsion/camera/app/common/FeatureResource;

    const/4 v1, 0x1

    .line 725
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->mCurrentIsTabLayoutMode:Z

    .line 726
    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->mCurrentModeIndexInTabLayout:I

    .line 727
    iget-object p1, v0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->mDefaultSelectedMode:Ljava/lang/String;

    return-void

    .line 721
    :cond_1
    :goto_0
    invoke-static {}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->access$2800()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCurrentMode index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mTabLayoutModeItems:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->mTabLayoutModeItems:Ljava/util/List;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private updateCurrentMode(Ljava/lang/String;)V
    .locals 4

    .line 731
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->mModeItems:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 732
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    .line 734
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->mModeItems:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/common/FeatureResource;

    iget-object v3, v3, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 735
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->mModeItems:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/common/FeatureResource;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->mCurrentModeItem:Lcom/transsion/camera/app/common/FeatureResource;

    .line 736
    sget p1, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->MAX_MODES_NUMBER_IN_TAB:I

    if-ge v2, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->mCurrentIsTabLayoutMode:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, -0x1

    .line 737
    :goto_1
    iput v2, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->mCurrentModeIndexInTabLayout:I

    .line 738
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->mCurrentIsTabLayoutMode:Z

    if-eqz p1, :cond_2

    .line 739
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->mCurrentModeItem:Lcom/transsion/camera/app/common/FeatureResource;

    iget-object p1, p1, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->mDefaultSelectedMode:Ljava/lang/String;

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private updateModeListAndDefaultMode(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p3, :cond_0

    const-string p3, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    .line 683
    iput-object p3, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->mDefaultModeFeatureName:Ljava/lang/String;

    goto :goto_0

    .line 685
    :cond_0
    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->mDefaultModeFeatureName:Ljava/lang/String;

    .line 688
    :goto_0
    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->mDefaultSelectedMode:Ljava/lang/String;

    .line 689
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->mModeItems:Ljava/util/List;

    const/4 p2, 0x0

    .line 690
    sget p3, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->MAX_MODES_NUMBER_IN_TAB:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-interface {p1, p2, p3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->mTabLayoutModeItems:Ljava/util/List;

    .line 691
    invoke-static {}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->access$2800()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mModeItems:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->mModeItems:Ljava/util/List;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private updateModeListAndDefaultMode(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 695
    sput p4, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->MAX_MODES_NUMBER_IN_TAB:I

    .line 696
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->updateModeListAndDefaultMode(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private validModeList()Z
    .locals 0

    .line 700
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$ModeInformation;->mModeItems:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
