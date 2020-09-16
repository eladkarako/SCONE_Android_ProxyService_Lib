.class public Lcom/msc/seclib/proxy/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/msc/seclib/proxy/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 4

    const/4 v0, 0x0

    sget-boolean v1, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "SCONEProxyService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "presDisconnNotify called. arg0: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", return: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method public a()V
    .locals 2

    sget-boolean v0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "SCONEProxyService"

    const-string v1, "presConnNotify called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
