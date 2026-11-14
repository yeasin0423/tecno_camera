.class public Lcom/transsion/camera/feature/setting/autofocusswitch/AutoFocusSwitchRestriction;
.super Ljava/lang/Object;
.source "AutoFocusSwitchRestriction.java"


# static fields
.field private static final KEY_AUTO_FOCUS_SWITCH:Ljava/lang/String; = "com.transsion.camera.feature.setting.autofocusswitch.AutoFocusSwitchRestriction"

.field private static sRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 16
    new-instance v0, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/setting/autofocusswitch/AutoFocusSwitchRestriction;->sRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 19
    sget-object v1, Lcom/transsion/camera/feature/setting/autofocusswitch/AutoFocusSwitchRestriction;->KEY_AUTO_FOCUS_SWITCH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    .line 20
    sget-object v0, Lcom/transsion/camera/feature/setting/autofocusswitch/AutoFocusSwitchRestriction;->sRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v1, "key_eye_detection,key_human_detection"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 21
    sget-object v0, Lcom/transsion/camera/feature/setting/autofocusswitch/AutoFocusSwitchRestriction;->sRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v2, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    sget-object v3, Lcom/transsion/camera/feature/setting/autofocusswitch/AutoFocusSwitchRestriction;->KEY_AUTO_FOCUS_SWITCH:Ljava/lang/String;

    const-string v4, "off"

    invoke-direct {v2, v3, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "key_eye_detection"

    .line 23
    invoke-virtual {v2, v3, v4, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v5, "key_human_detection"

    .line 24
    invoke-virtual {v2, v5, v4, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 25
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v2

    .line 21
    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 29
    sget-object v0, Lcom/transsion/camera/feature/setting/autofocusswitch/AutoFocusSwitchRestriction;->sRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    sget-object v2, Lcom/transsion/camera/feature/setting/autofocusswitch/AutoFocusSwitchRestriction;->KEY_AUTO_FOCUS_SWITCH:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    .line 30
    sget-object v0, Lcom/transsion/camera/feature/setting/autofocusswitch/AutoFocusSwitchRestriction;->sRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 31
    sget-object v0, Lcom/transsion/camera/feature/setting/autofocusswitch/AutoFocusSwitchRestriction;->sRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v1, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    sget-object v2, Lcom/transsion/camera/feature/setting/autofocusswitch/AutoFocusSwitchRestriction;->KEY_AUTO_FOCUS_SWITCH:Ljava/lang/String;

    const-string v4, "on"

    invoke-direct {v1, v2, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {v1, v3, v4, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 34
    invoke-virtual {v1, v5, v4, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 35
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    return-void
.end method

.method public static getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;
    .locals 1

    .line 44
    sget-object v0, Lcom/transsion/camera/feature/setting/autofocusswitch/AutoFocusSwitchRestriction;->sRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    return-object v0
.end method
