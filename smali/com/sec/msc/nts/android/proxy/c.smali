.class Lcom/sec/msc/nts/android/proxy/c;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/sec/msc/nts/android/proxy/NTSCProxyService;


# direct methods
.method constructor <init>(Lcom/sec/msc/nts/android/proxy/NTSCProxyService;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/msc/nts/android/proxy/c;->a:Lcom/sec/msc/nts/android/proxy/NTSCProxyService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    if-nez p2, :cond_0

    :try_start_0
    sget-boolean v0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "SCONEProxyService"

    const-string v1, "onReceive(), intent is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "SCONEProxyService"

    const-string v1, "onReceive(), intent.getAction() is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.msc.nts.action.test.tt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "nts"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "401"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "logLevel"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    sget-boolean v2, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->a:Z

    if-eqz v2, :cond_2

    const-string v2, "SCONEProxyService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onReceive(), id: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v0, :cond_4

    const/16 v0, 0x191

    if-ne v1, v0, :cond_4

    sget-boolean v0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->a:Z

    if-eqz v0, :cond_3

    const-string v0, "mBroadcastReceiver"

    const-string v1, "age is older than 20"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sget-boolean v0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->b:Z

    if-eqz v0, :cond_4

    const-string v0, "age is older than 20"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_4
    :goto_0
    return-void

    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.msc.nts.action.test.netTypeChange"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "netType"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_6

    sget-boolean v1, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->a:Z

    if-eqz v1, :cond_4

    const-string v1, "mBroadcastReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[Error] request netType is ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_6
    :try_start_1
    iget-object v1, p0, Lcom/sec/msc/nts/android/proxy/c;->a:Lcom/sec/msc/nts/android/proxy/NTSCProxyService;

    invoke-virtual {v1, v0}, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->a(I)V

    sget-boolean v1, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->a:Z

    if-eqz v1, :cond_4

    const-string v1, "mBroadcastReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "networkChanged called. request netType is ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/sec/msc/nts/android/proxy/c;->a:Lcom/sec/msc/nts/android/proxy/NTSCProxyService;

    invoke-static {v0}, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->a(Lcom/sec/msc/nts/android/proxy/NTSCProxyService;)Landroid/net/ConnectivityManager;

    move-result-object v0

    if-nez v0, :cond_8

    iget-object v1, p0, Lcom/sec/msc/nts/android/proxy/c;->a:Lcom/sec/msc/nts/android/proxy/NTSCProxyService;

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-static {v1, v0}, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->a(Lcom/sec/msc/nts/android/proxy/NTSCProxyService;Landroid/net/ConnectivityManager;)V

    :cond_8
    iget-object v0, p0, Lcom/sec/msc/nts/android/proxy/c;->a:Lcom/sec/msc/nts/android/proxy/NTSCProxyService;

    invoke-static {v0}, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->b(Lcom/sec/msc/nts/android/proxy/NTSCProxyService;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-nez v0, :cond_9

    iget-object v1, p0, Lcom/sec/msc/nts/android/proxy/c;->a:Lcom/sec/msc/nts/android/proxy/NTSCProxyService;

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-static {v1, v0}, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->a(Lcom/sec/msc/nts/android/proxy/NTSCProxyService;Landroid/telephony/TelephonyManager;)V

    iget-object v0, p0, Lcom/sec/msc/nts/android/proxy/c;->a:Lcom/sec/msc/nts/android/proxy/NTSCProxyService;

    invoke-static {v0}, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->b(Lcom/sec/msc/nts/android/proxy/NTSCProxyService;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/msc/nts/android/proxy/c;->a:Lcom/sec/msc/nts/android/proxy/NTSCProxyService;

    invoke-static {v1}, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->c(Lcom/sec/msc/nts/android/proxy/NTSCProxyService;)Landroid/telephony/PhoneStateListener;

    move-result-object v1

    const/16 v2, 0xc1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_9
    sget-boolean v0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->c:Z

    if-eqz v0, :cond_a

    const-string v0, "SCONEProxyService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Intent="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-object v0, p0, Lcom/sec/msc/nts/android/proxy/c;->a:Lcom/sec/msc/nts/android/proxy/NTSCProxyService;

    invoke-static {v0}, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->a(Lcom/sec/msc/nts/android/proxy/NTSCProxyService;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_12

    sget-boolean v0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->a:Z

    if-eqz v0, :cond_b

    const-string v0, "SCONEProxyService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TypeName: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/msc/nts/android/proxy/c;->a:Lcom/sec/msc/nts/android/proxy/NTSCProxyService;

    invoke-static {v2}, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->a(Lcom/sec/msc/nts/android/proxy/NTSCProxyService;)Landroid/net/ConnectivityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SCONEProxyService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/msc/nts/android/proxy/c;->a:Lcom/sec/msc/nts/android/proxy/NTSCProxyService;

    invoke-static {v2}, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->a(Lcom/sec/msc/nts/android/proxy/NTSCProxyService;)Landroid/net/ConnectivityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SCONEProxyService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SubtypeName: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/msc/nts/android/proxy/c;->a:Lcom/sec/msc/nts/android/proxy/NTSCProxyService;

    invoke-static {v2}, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->a(Lcom/sec/msc/nts/android/proxy/NTSCProxyService;)Landroid/net/ConnectivityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SCONEProxyService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Subtype: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/msc/nts/android/proxy/c;->a:Lcom/sec/msc/nts/android/proxy/NTSCProxyService;

    invoke-static {v2}, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->a(Lcom/sec/msc/nts/android/proxy/NTSCProxyService;)Landroid/net/ConnectivityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SCONEProxyService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TelephonyManager Subtype: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/msc/nts/android/proxy/c;->a:Lcom/sec/msc/nts/android/proxy/NTSCProxyService;

    invoke-static {v2}, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->b(Lcom/sec/msc/nts/android/proxy/NTSCProxyService;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    sget-boolean v0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->b:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "=> * "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/msc/nts/android/proxy/c;->a:Lcom/sec/msc/nts/android/proxy/NTSCProxyService;

    invoke-static {v1}, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->a(Lcom/sec/msc/nts/android/proxy/NTSCProxyService;)Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/msc/nts/android/proxy/c;->a:Lcom/sec/msc/nts/android/proxy/NTSCProxyService;

    invoke-static {v1}, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->a(Lcom/sec/msc/nts/android/proxy/NTSCProxyService;)Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/msc/nts/android/proxy/c;->a:Lcom/sec/msc/nts/android/proxy/NTSCProxyService;

    invoke-static {v1}, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->a(Lcom/sec/msc/nts/android/proxy/NTSCProxyService;)Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/msc/nts/android/proxy/c;->a:Lcom/sec/msc/nts/android/proxy/NTSCProxyService;

    invoke-static {v1}, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->a(Lcom/sec/msc/nts/android/proxy/NTSCProxyService;)Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_c
    iget-object v0, p0, Lcom/sec/msc/nts/android/proxy/c;->a:Lcom/sec/msc/nts/android/proxy/NTSCProxyService;

    invoke-static {v0}, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->a(Lcom/sec/msc/nts/android/proxy/NTSCProxyService;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    iget-object v1, p0, Lcom/sec/msc/nts/android/proxy/c;->a:Lcom/sec/msc/nts/android/proxy/NTSCProxyService;

    invoke-static {v1}, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->b(Lcom/sec/msc/nts/android/proxy/NTSCProxyService;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    sget-boolean v2, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->c:Z

    if-eqz v2, :cond_d

    const-string v2, "SCONEProxyService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "NetState="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "(ConnectivityManager), "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "(TelephonyManager)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    if-eq v0, v5, :cond_e

    const/16 v2, 0x9

    if-ne v0, v2, :cond_f

    :cond_e
    iget-object v0, p0, Lcom/sec/msc/nts/android/proxy/c;->a:Lcom/sec/msc/nts/android/proxy/NTSCProxyService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->a(I)V

    goto/16 :goto_0

    :cond_f
    invoke-static {v1}, Lcom/sec/msc/nts/android/proxy/d;->a(I)I

    move-result v0

    if-ne v0, v5, :cond_10

    iget-object v0, p0, Lcom/sec/msc/nts/android/proxy/c;->a:Lcom/sec/msc/nts/android/proxy/NTSCProxyService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->a(I)V

    goto/16 :goto_0

    :cond_10
    invoke-static {v1}, Lcom/sec/msc/nts/android/proxy/d;->a(I)I

    move-result v0

    if-ne v0, v6, :cond_11

    iget-object v0, p0, Lcom/sec/msc/nts/android/proxy/c;->a:Lcom/sec/msc/nts/android/proxy/NTSCProxyService;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->a(I)V

    goto/16 :goto_0

    :cond_11
    iget-object v0, p0, Lcom/sec/msc/nts/android/proxy/c;->a:Lcom/sec/msc/nts/android/proxy/NTSCProxyService;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->a(I)V

    goto/16 :goto_0

    :cond_12
    sget-boolean v0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->c:Z

    if-eqz v0, :cond_13

    const-string v0, "SCONEProxyService"

    const-string v1, "ConnectivityManager ActiveNetworkInfo is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    sget-boolean v0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->a:Z

    if-eqz v0, :cond_4

    const-string v0, "SCONEProxyService"

    const-string v1, "** getActiveNetworkInfo() is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
