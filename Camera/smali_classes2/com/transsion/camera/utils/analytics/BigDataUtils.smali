.class public Lcom/transsion/camera/utils/analytics/BigDataUtils;
.super Ljava/lang/Object;
.source "BigDataUtils.java"


# direct methods
.method public static getAntivideoValue(Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, -0x1

    .line 149
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0xddf

    const/4 v4, 0x1

    if-eq v2, v3, :cond_2

    const v3, 0x1ad6f

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "off"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move v1, v0

    goto :goto_0

    :cond_2
    const-string v2, "on"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move v1, v4

    :cond_3
    :goto_0
    if-eqz v1, :cond_5

    if-eq v1, v4, :cond_4

    goto :goto_1

    :cond_4
    move v0, v4

    :cond_5
    :goto_1
    return v0
.end method

.method public static getAsdEnhanceValue(Ljava/lang/String;)I
    .locals 1

    const-string v0, "on"

    .line 78
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "off"

    .line 80
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static getAsdId(Ljava/lang/String;)I
    .locals 19

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, -0x1

    .line 280
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v4, 0xf

    const/16 v5, 0xe

    const/16 v6, 0xd

    const/16 v7, 0xc

    const/16 v8, 0xb

    const/16 v9, 0xa

    const/16 v10, 0x9

    const/16 v11, 0x8

    const/4 v12, 0x7

    const/4 v13, 0x6

    const/4 v14, 0x5

    const/4 v15, 0x4

    const/16 v16, 0x3

    const/16 v17, 0x2

    const/16 v18, 0x1

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v3, "2002"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v4

    goto/16 :goto_0

    :sswitch_1
    const-string v3, "2001"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v5

    goto/16 :goto_0

    :sswitch_2
    const-string v3, "1009"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v6

    goto/16 :goto_0

    :sswitch_3
    const-string v3, "1008"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v7

    goto/16 :goto_0

    :sswitch_4
    const-string v3, "1007"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v8

    goto/16 :goto_0

    :sswitch_5
    const-string v3, "1006"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v9

    goto/16 :goto_0

    :sswitch_6
    const-string v3, "1004"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v10

    goto/16 :goto_0

    :sswitch_7
    const-string v3, "1003"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v11

    goto :goto_0

    :sswitch_8
    const-string v3, "1002"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v12

    goto :goto_0

    :sswitch_9
    const-string v3, "1001"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v13

    goto :goto_0

    :sswitch_a
    const-string v3, "off"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v1

    goto :goto_0

    :sswitch_b
    const-string v3, "100"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v14

    goto :goto_0

    :sswitch_c
    const-string v3, "4"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v15

    goto :goto_0

    :sswitch_d
    const-string v3, "2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move/from16 v2, v16

    goto :goto_0

    :sswitch_e
    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move/from16 v2, v17

    goto :goto_0

    :sswitch_f
    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move/from16 v2, v18

    :cond_1
    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    move v1, v4

    goto :goto_1

    :pswitch_1
    move v1, v5

    goto :goto_1

    :pswitch_2
    move v1, v6

    goto :goto_1

    :pswitch_3
    move v1, v7

    goto :goto_1

    :pswitch_4
    move v1, v8

    goto :goto_1

    :pswitch_5
    move v1, v9

    goto :goto_1

    :pswitch_6
    move v1, v10

    goto :goto_1

    :pswitch_7
    move v1, v11

    goto :goto_1

    :pswitch_8
    move v1, v12

    goto :goto_1

    :pswitch_9
    move v1, v13

    goto :goto_1

    :pswitch_a
    move v1, v14

    goto :goto_1

    :pswitch_b
    move v1, v15

    goto :goto_1

    :pswitch_c
    move/from16 v1, v16

    goto :goto_1

    :pswitch_d
    move/from16 v1, v17

    goto :goto_1

    :pswitch_e
    move/from16 v1, v18

    :goto_1
    :pswitch_f
    return v1

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_f
        0x31 -> :sswitch_e
        0x32 -> :sswitch_d
        0x34 -> :sswitch_c
        0xbdf1 -> :sswitch_b
        0x1ad6f -> :sswitch_a
        0x170060 -> :sswitch_9
        0x170061 -> :sswitch_8
        0x170062 -> :sswitch_7
        0x170063 -> :sswitch_6
        0x170065 -> :sswitch_5
        0x170066 -> :sswitch_4
        0x170067 -> :sswitch_3
        0x170068 -> :sswitch_2
        0x1774bf -> :sswitch_1
        0x1774c0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getFilterId(Ljava/lang/String;)I
    .locals 15

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, -0x1

    .line 338
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x30

    const/16 v4, 0xb

    const/16 v5, 0xa

    const/16 v6, 0x9

    const/16 v7, 0x8

    const/4 v8, 0x7

    const/4 v9, 0x6

    const/4 v10, 0x5

    const/4 v11, 0x4

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x1

    if-eq v2, v3, :cond_9

    const/16 v3, 0x33

    if-eq v2, v3, :cond_8

    const/16 v3, 0x647

    if-eq v2, v3, :cond_7

    const/16 v3, 0x662

    if-eq v2, v3, :cond_6

    const/16 v3, 0x67c

    if-eq v2, v3, :cond_5

    const/16 v3, 0x35

    if-eq v2, v3, :cond_4

    const/16 v3, 0x36

    if-eq v2, v3, :cond_3

    const/16 v3, 0x63f

    if-eq v2, v3, :cond_2

    const/16 v3, 0x640

    if-eq v2, v3, :cond_1

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const-string v2, "15"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    move v1, v14

    goto/16 :goto_0

    :pswitch_1
    const-string v2, "14"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    move v1, v12

    goto/16 :goto_0

    :pswitch_2
    const-string v2, "13"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    move v1, v11

    goto/16 :goto_0

    :cond_1
    const-string v2, "22"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    move v1, v8

    goto :goto_0

    :cond_2
    const-string v2, "21"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    move v1, v7

    goto :goto_0

    :cond_3
    const-string v2, "6"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    move v1, v10

    goto :goto_0

    :cond_4
    const-string v2, "5"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    move v1, v9

    goto :goto_0

    :cond_5
    const-string v2, "40"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    move v1, v4

    goto :goto_0

    :cond_6
    const-string v2, "35"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    move v1, v13

    goto :goto_0

    :cond_7
    const-string v2, "29"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    move v1, v6

    goto :goto_0

    :cond_8
    const-string v2, "3"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    move v1, v5

    goto :goto_0

    :cond_9
    const-string v2, "0"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    move v1, v0

    :cond_a
    :goto_0
    packed-switch v1, :pswitch_data_1

    goto :goto_1

    :pswitch_3
    move v0, v4

    goto :goto_1

    :pswitch_4
    move v0, v5

    goto :goto_1

    :pswitch_5
    move v0, v6

    goto :goto_1

    :pswitch_6
    move v0, v7

    goto :goto_1

    :pswitch_7
    move v0, v8

    goto :goto_1

    :pswitch_8
    move v0, v9

    goto :goto_1

    :pswitch_9
    move v0, v10

    goto :goto_1

    :pswitch_a
    move v0, v11

    goto :goto_1

    :pswitch_b
    move v0, v12

    goto :goto_1

    :pswitch_c
    move v0, v13

    goto :goto_1

    :pswitch_d
    move v0, v14

    :goto_1
    :pswitch_e
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x622
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public static getFlashValue(Ljava/lang/String;)I
    .locals 1

    const-string v0, "auto"

    .line 89
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "off"

    .line 91
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "on"

    .line 93
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x2

    goto :goto_0

    :cond_2
    const-string v0, "torch"

    .line 95
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x3

    goto :goto_0

    :cond_3
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static getHdrId(Ljava/lang/String;)I
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, -0x1

    .line 384
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0xddf

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v2, v3, :cond_3

    const v3, 0x1ad6f

    if-eq v2, v3, :cond_2

    const v3, 0x2dddaf

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "auto"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    move v1, v0

    goto :goto_0

    :cond_2
    const-string v2, "off"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    move v1, v5

    goto :goto_0

    :cond_3
    const-string v2, "on"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    move v1, v4

    :cond_4
    :goto_0
    if-eqz v1, :cond_7

    if-eq v1, v5, :cond_6

    if-eq v1, v4, :cond_5

    goto :goto_1

    :cond_5
    move v0, v4

    goto :goto_1

    :cond_6
    move v0, v5

    :cond_7
    :goto_1
    return v0
.end method

.method public static getModeId(Ljava/lang/String;)I
    .locals 23

    move-object/from16 v0, p0

    const/16 v1, 0x64

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, -0x1

    .line 208
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v4, 0x12

    const/16 v5, 0x11

    const/16 v6, 0x10

    const/16 v7, 0xf

    const/16 v8, 0xe

    const/16 v9, 0xd

    const/16 v10, 0xc

    const/16 v11, 0xb

    const/16 v12, 0xa

    const/16 v13, 0x9

    const/16 v14, 0x8

    const/4 v15, 0x7

    const/16 v16, 0x6

    const/16 v17, 0x5

    const/16 v18, 0x4

    const/16 v19, 0x3

    const/16 v20, 0x2

    const/16 v21, 0x1

    const/16 v22, 0x0

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v3, "SdofPhotoMode"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move/from16 v2, v17

    goto/16 :goto_0

    :sswitch_1
    const-string v3, "MultiFaceBeautyMode"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move/from16 v2, v18

    goto/16 :goto_0

    :sswitch_2
    const-string v3, "ARMode"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move/from16 v2, v16

    goto/16 :goto_0

    :sswitch_3
    const-string v3, "ARCoreMode"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v5

    goto/16 :goto_0

    :sswitch_4
    const-string v3, "ProfessionalMode"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v9

    goto/16 :goto_0

    :sswitch_5
    const-string v3, "AvatarMode"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v6

    goto/16 :goto_0

    :sswitch_6
    const-string v3, "PhotoMode"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move/from16 v2, v22

    goto/16 :goto_0

    :sswitch_7
    const-string v3, "Document"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v8

    goto/16 :goto_0

    :sswitch_8
    const-string v3, "MacroMode"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v10

    goto/16 :goto_0

    :sswitch_9
    const-string v3, "SlimBodyMode"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move/from16 v2, v19

    goto/16 :goto_0

    :sswitch_a
    const-string v3, "ASDMode"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move/from16 v2, v21

    goto/16 :goto_0

    :sswitch_b
    const-string v3, "SuperNightMode"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v7

    goto/16 :goto_0

    :sswitch_c
    const-string v3, "TimeLapseVideoMode"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v2, 0x13

    goto :goto_0

    :sswitch_d
    const-string v3, "FunVideoMode"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v11

    goto :goto_0

    :sswitch_e
    const-string v3, "STBlurMode"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v13

    goto :goto_0

    :sswitch_f
    const-string v3, "MovieMode"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v2, 0x14

    goto :goto_0

    :sswitch_10
    const-string v3, "SlowMotionMode"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v4

    goto :goto_0

    :sswitch_11
    const-string v3, "FaceBeautyMode"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move/from16 v2, v20

    goto :goto_0

    :sswitch_12
    const-string v3, "WideSelfieMode"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v14

    goto :goto_0

    :sswitch_13
    const-string v3, "BackSTBlurMode"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v12

    goto :goto_0

    :sswitch_14
    const-string v3, "BurstPMKMode"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v15

    :cond_1
    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    move v1, v4

    goto :goto_1

    :pswitch_1
    move v1, v5

    goto :goto_1

    :pswitch_2
    move v1, v6

    goto :goto_1

    :pswitch_3
    move v1, v7

    goto :goto_1

    :pswitch_4
    move v1, v8

    goto :goto_1

    :pswitch_5
    move v1, v9

    goto :goto_1

    :pswitch_6
    move v1, v10

    goto :goto_1

    :pswitch_7
    move v1, v11

    goto :goto_1

    :pswitch_8
    move v1, v12

    goto :goto_1

    :pswitch_9
    move v1, v13

    goto :goto_1

    :pswitch_a
    move v1, v14

    goto :goto_1

    :pswitch_b
    move v1, v15

    goto :goto_1

    :pswitch_c
    move/from16 v1, v16

    goto :goto_1

    :pswitch_d
    move/from16 v1, v17

    goto :goto_1

    :pswitch_e
    move/from16 v1, v18

    goto :goto_1

    :pswitch_f
    move/from16 v1, v19

    goto :goto_1

    :pswitch_10
    move/from16 v1, v20

    goto :goto_1

    :pswitch_11
    move/from16 v1, v21

    goto :goto_1

    :pswitch_12
    move/from16 v1, v22

    :goto_1
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7295dc4f -> :sswitch_14
        -0x6e5e138e -> :sswitch_13
        -0x57d8e182 -> :sswitch_12
        -0x558df164 -> :sswitch_11
        -0x4da49886 -> :sswitch_10
        -0x41c80b2d -> :sswitch_f
        -0x3e7b2fd5 -> :sswitch_e
        -0x1a764de1 -> :sswitch_d
        -0x15fb95a2 -> :sswitch_c
        -0x15b80340 -> :sswitch_b
        -0x5cceb -> :sswitch_a
        0xbaa5ae2 -> :sswitch_9
        0x32b9a36f -> :sswitch_8
        0x3737353b -> :sswitch_7
        0x44e3a2d5 -> :sswitch_6
        0x5ec6f6bc -> :sswitch_5
        0x62b8248a -> :sswitch_4
        0x6c902133 -> :sswitch_3
        0x73933574 -> :sswitch_2
        0x761e93f5 -> :sswitch_1
        0x7f2febcd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getSmileValue(Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, -0x1

    .line 133
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0xddf

    const/4 v4, 0x1

    if-eq v2, v3, :cond_2

    const v3, 0x1ad6f

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "off"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move v1, v0

    goto :goto_0

    :cond_2
    const-string v2, "on"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move v1, v4

    :cond_3
    :goto_0
    if-eqz v1, :cond_5

    if-eq v1, v4, :cond_4

    goto :goto_1

    :cond_4
    move v0, v4

    :cond_5
    :goto_1
    return v0
.end method

.method public static getSuperNightStable(Ljava/lang/String;)I
    .locals 2

    const-string v0, "off"

    .line 66
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "on"

    .line 68
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public static getTimerId(Ljava/lang/String;)I
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, -0x1

    .line 403
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x33

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v2, v3, :cond_4

    const/16 v3, 0x35

    if-eq v2, v3, :cond_3

    const/16 v3, 0x61f

    if-eq v2, v3, :cond_2

    const v3, 0x1ad6f

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "off"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    move v1, v0

    goto :goto_0

    :cond_2
    const-string v2, "10"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    move v1, v4

    goto :goto_0

    :cond_3
    const-string v2, "5"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    move v1, v5

    goto :goto_0

    :cond_4
    const-string v2, "3"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    move v1, v6

    :cond_5
    :goto_0
    if-eqz v1, :cond_9

    if-eq v1, v6, :cond_8

    if-eq v1, v5, :cond_7

    if-eq v1, v4, :cond_6

    goto :goto_1

    :cond_6
    move v0, v4

    goto :goto_1

    :cond_7
    move v0, v5

    goto :goto_1

    :cond_8
    move v0, v6

    :cond_9
    :goto_1
    return v0
.end method

.method public static getVideoBeautyValue(Ljava/lang/String;)I
    .locals 1

    const-string v0, "off"

    .line 162
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "video_facebeauty_off"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static getVideoPortraitValue(Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, -0x1

    .line 175
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0xddf

    const/4 v4, 0x1

    if-eq v2, v3, :cond_2

    const v3, 0x1ad6f

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "off"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move v1, v0

    goto :goto_0

    :cond_2
    const-string v2, "on"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move v1, v4

    :cond_3
    :goto_0
    if-eqz v1, :cond_5

    if-eq v1, v4, :cond_4

    goto :goto_1

    :cond_4
    move v0, v4

    :cond_5
    :goto_1
    return v0
.end method

.method public static getVideoQuality(Ljava/lang/String;)I
    .locals 8

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 108
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x35

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v1, v2, :cond_5

    const/16 v2, 0x36

    if-eq v1, v2, :cond_4

    const/16 v2, 0x38

    if-eq v1, v2, :cond_3

    const/16 v2, 0x620

    if-eq v1, v2, :cond_2

    const v2, 0x19f763

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "6_60"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    move p0, v6

    goto :goto_1

    :cond_2
    const-string v1, "11"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    move p0, v5

    goto :goto_1

    :cond_3
    const-string v1, "8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    move p0, v4

    goto :goto_1

    :cond_4
    const-string v1, "6"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    move p0, v7

    goto :goto_1

    :cond_5
    const-string v1, "5"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    move p0, v3

    goto :goto_1

    :cond_6
    :goto_0
    move p0, v0

    :goto_1
    if-eqz p0, :cond_b

    if-eq p0, v7, :cond_a

    if-eq p0, v6, :cond_9

    if-eq p0, v5, :cond_8

    if-eq p0, v4, :cond_7

    goto :goto_2

    :cond_7
    move v0, v4

    goto :goto_2

    :cond_8
    move v0, v5

    goto :goto_2

    :cond_9
    move v0, v6

    goto :goto_2

    :cond_a
    move v0, v7

    goto :goto_2

    :cond_b
    move v0, v3

    :goto_2
    return v0
.end method

.method public static getVideoVideoHdrValue(Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, -0x1

    .line 191
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0xddf

    const/4 v4, 0x1

    if-eq v2, v3, :cond_2

    const v3, 0x1ad6f

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "off"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move v1, v0

    goto :goto_0

    :cond_2
    const-string v2, "on"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move v1, v4

    :cond_3
    :goto_0
    if-eqz v1, :cond_5

    if-eq v1, v4, :cond_4

    goto :goto_1

    :cond_4
    move v0, v4

    :cond_5
    :goto_1
    return v0
.end method
