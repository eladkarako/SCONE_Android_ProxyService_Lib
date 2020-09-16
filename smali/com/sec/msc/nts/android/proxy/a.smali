.class Lcom/sec/msc/nts/android/proxy/a;
.super Landroid/telephony/PhoneStateListener;


# instance fields
.field final synthetic a:Lcom/sec/msc/nts/android/proxy/NTSCProxyService;


# direct methods
.method constructor <init>(Lcom/sec/msc/nts/android/proxy/NTSCProxyService;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/msc/nts/android/proxy/a;->a:Lcom/sec/msc/nts/android/proxy/NTSCProxyService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(II)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    sget-boolean v0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "SCONEProxyService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDataConnectionStateChanged() state="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/sec/msc/nts/android/proxy/a;->a:Lcom/sec/msc/nts/android/proxy/NTSCProxyService;

    invoke-static {v0}, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->a(Lcom/sec/msc/nts/android/proxy/NTSCProxyService;)Landroid/net/ConnectivityManager;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "SCONEProxyService"

    const-string v1, "onDataConnectionStateChanged() mConnectivityManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/sec/msc/nts/android/proxy/a;->a:Lcom/sec/msc/nts/android/proxy/NTSCProxyService;

    invoke-static {v0}, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->a(Lcom/sec/msc/nts/android/proxy/NTSCProxyService;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/msc/nts/android/proxy/a;->a:Lcom/sec/msc/nts/android/proxy/NTSCProxyService;

    invoke-static {v0}, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->a(Lcom/sec/msc/nts/android/proxy/NTSCProxyService;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    sget-boolean v1, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->c:Z

    if-eqz v1, :cond_3

    const-string v1, "SCONEProxyService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NetState="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(ConnectivityManager), "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(TelephonyManager)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eq v0, v4, :cond_4

    const/16 v1, 0x9

    if-ne v0, v1, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/sec/msc/nts/android/proxy/a;->a:Lcom/sec/msc/nts/android/proxy/NTSCProxyService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->a:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_5
    :try_start_1
    invoke-static {p2}, Lcom/sec/msc/nts/android/proxy/d;->a(I)I

    move-result v0

    if-ne v0, v4, :cond_6

    iget-object v0, p0, Lcom/sec/msc/nts/android/proxy/a;->a:Lcom/sec/msc/nts/android/proxy/NTSCProxyService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->a(I)V

    goto :goto_0

    :cond_6
    invoke-static {p2}, Lcom/sec/msc/nts/android/proxy/d;->a(I)I

    move-result v0

    if-ne v0, v5, :cond_7

    iget-object v0, p0, Lcom/sec/msc/nts/android/proxy/a;->a:Lcom/sec/msc/nts/android/proxy/NTSCProxyService;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->a(I)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/sec/msc/nts/android/proxy/a;->a:Lcom/sec/msc/nts/android/proxy/NTSCProxyService;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->a(I)V

    goto :goto_0

    :cond_8
    sget-boolean v0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->c:Z

    if-eqz v0, :cond_9

    const-string v0, "SCONEProxyService"

    const-string v1, "ConnectivityManager ActiveNetworkInfo is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    sget-boolean v0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "SCONEProxyService"

    const-string v1, "** getActiveNetworkInfo() is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3

    sget-boolean v0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "SCONEProxyService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onServiceStateChanged() state="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
