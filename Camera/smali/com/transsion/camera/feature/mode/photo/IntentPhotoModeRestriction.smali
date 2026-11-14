.class public Lcom/transsion/camera/feature/mode/photo/IntentPhotoModeRestriction;
.super Ljava/lang/Object;
.source "IntentPhotoModeRestriction.java"


# static fields
.field private static final KEY_INTENT_PHOTO_MODE:Ljava/lang/String;

.field private static sFlashRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

.field private static sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 22
    const-class v0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoModeEntry;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoModeRestriction;->KEY_INTENT_PHOTO_MODE:Ljava/lang/String;

    .line 28
    new-instance v0, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoModeRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 29
    new-instance v0, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoModeRestriction;->sFlashRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "key_shot2shot"

    const-string v2, "off"

    const-string v3, "0"

    const-string v4, "on"

    const/16 v5, 0x1c

    if-le v0, v5, :cond_0

    .line 33
    sget-object v0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoModeRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    sget-object v5, Lcom/transsion/camera/feature/mode/photo/IntentPhotoModeRestriction;->KEY_INTENT_PHOTO_MODE:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    .line 34
    sget-object v0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoModeRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v5, "key_shot2shot,key_location"

    invoke-virtual {v0, v5}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 35
    sget-object v0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoModeRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v5, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    sget-object v6, Lcom/transsion/camera/feature/mode/photo/IntentPhotoModeRestriction;->KEY_INTENT_PHOTO_MODE:Ljava/lang/String;

    invoke-direct {v5, v6, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual {v5, v1, v3, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v6, "key_location"

    .line 38
    invoke-virtual {v5, v6, v2, v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 39
    invoke-virtual {v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v5

    .line 35
    invoke-virtual {v0, v5}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 41
    :cond_0
    sget-object v0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoModeRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    sget-object v5, Lcom/transsion/camera/feature/mode/photo/IntentPhotoModeRestriction;->KEY_INTENT_PHOTO_MODE:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    .line 42
    sget-object v0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoModeRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 43
    sget-object v0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoModeRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v5, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    sget-object v6, Lcom/transsion/camera/feature/mode/photo/IntentPhotoModeRestriction;->KEY_INTENT_PHOTO_MODE:Ljava/lang/String;

    invoke-direct {v5, v6, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {v5, v1, v3, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 46
    invoke-virtual {v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 50
    sget-object v0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoModeRestriction;->sFlashRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    sget-object v1, Lcom/transsion/camera/feature/mode/photo/IntentPhotoModeRestriction;->KEY_INTENT_PHOTO_MODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    .line 51
    sget-object v0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoModeRestriction;->sFlashRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v1, "key_flash"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 52
    sget-object v0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoModeRestriction;->sFlashRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v3, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    sget-object v5, Lcom/transsion/camera/feature/mode/photo/IntentPhotoModeRestriction;->KEY_INTENT_PHOTO_MODE:Ljava/lang/String;

    invoke-direct {v3, v5, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "off,auto,on,torch"

    .line 54
    invoke-virtual {v3, v1, v4, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 56
    invoke-virtual {v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v3

    .line 52
    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 57
    sget-object v0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoModeRestriction;->sFlashRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v3, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    sget-object v4, Lcom/transsion/camera/feature/mode/photo/IntentPhotoModeRestriction;->KEY_INTENT_PHOTO_MODE:Ljava/lang/String;

    invoke-direct {v3, v4, v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "torch,auto,on,off"

    .line 59
    invoke-virtual {v3, v1, v2, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 61
    invoke-virtual {v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v2

    .line 57
    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 62
    sget-object v0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoModeRestriction;->sFlashRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v2, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    sget-object v3, Lcom/transsion/camera/feature/mode/photo/IntentPhotoModeRestriction;->KEY_INTENT_PHOTO_MODE:Ljava/lang/String;

    const-string v5, "auto"

    invoke-direct {v2, v3, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {v2, v1, v5, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 66
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v2

    .line 62
    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 67
    sget-object v0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoModeRestriction;->sFlashRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v2, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    sget-object v3, Lcom/transsion/camera/feature/mode/photo/IntentPhotoModeRestriction;->KEY_INTENT_PHOTO_MODE:Ljava/lang/String;

    const-string v5, "torch"

    invoke-direct {v2, v3, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v2, v1, v5, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 71
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 67
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    return-void
.end method

.method public static getFlsahRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;
    .locals 1

    .line 83
    sget-object v0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoModeRestriction;->sFlashRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    return-object v0
.end method

.method public static getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;
    .locals 1

    .line 79
    sget-object v0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoModeRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    return-object v0
.end method
