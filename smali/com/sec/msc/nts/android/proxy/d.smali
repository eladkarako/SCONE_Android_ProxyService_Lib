.class public Lcom/sec/msc/nts/android/proxy/d;
.super Ljava/lang/Object;


# direct methods
.method public static a(I)I
    .locals 4

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x3

    const-string v3, "?"

    packed-switch p0, :pswitch_data_0

    :goto_0
    if-ltz p0, :cond_1

    if-gt p0, v2, :cond_1

    :cond_0
    :goto_1
    return v0

    :pswitch_0
    const-string v3, "UNKNOWN"

    goto :goto_0

    :pswitch_1
    const-string v3, "GPRS"

    goto :goto_0

    :pswitch_2
    const-string v3, "EDGE"

    goto :goto_0

    :pswitch_3
    const-string v3, "UMTS"

    goto :goto_0

    :pswitch_4
    const-string v3, "CDMA"

    goto :goto_0

    :pswitch_5
    const-string v3, "EVDO_0"

    goto :goto_0

    :pswitch_6
    const-string v3, "EVDO_A"

    goto :goto_0

    :pswitch_7
    const-string v3, "1xRTT"

    goto :goto_0

    :pswitch_8
    const-string v3, "HSDPA"

    goto :goto_0

    :pswitch_9
    const-string v3, "HSUPA"

    goto :goto_0

    :pswitch_a
    const-string v3, "HSPA"

    goto :goto_0

    :pswitch_b
    const-string v3, "IDEN"

    goto :goto_0

    :pswitch_c
    const-string v3, "EVDO_B"

    goto :goto_0

    :pswitch_d
    const-string v3, "LTE"

    goto :goto_0

    :pswitch_e
    const-string v3, "EHRPD"

    goto :goto_0

    :pswitch_f
    const-string v3, "HSPAP"

    goto :goto_0

    :cond_1
    const/4 v3, 0x7

    if-eq p0, v3, :cond_0

    const/16 v3, 0xb

    if-eq p0, v3, :cond_0

    const/16 v0, 0xe

    if-ne p0, v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    const/16 v0, 0xd

    if-ne p0, v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method
