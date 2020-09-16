.class public Lcom/sec/msc/nts/android/proxy/NTSCProxyService;
.super Landroid/app/Service;


# static fields
.field public static a:Z

.field public static b:Z

.field public static c:Z

.field private static e:I

.field private static f:I

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;


# instance fields
.field d:Lcom/sec/msc/nts/android/proxy/f;

.field private g:I

.field private j:I

.field private k:Landroid/content/BroadcastReceiver;

.field private l:I

.field private final m:I

.field private n:Lcom/msc/seclib/proxy/ProxyLibJNI;

.field private o:Lcom/msc/seclib/proxy/a;

.field private p:Landroid/net/ConnectivityManager;

.field private q:Landroid/telephony/TelephonyManager;

.field private r:Landroid/telephony/PhoneStateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->a:Z

    sput-boolean v0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->b:Z

    sput-boolean v0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->c:Z

    sput v0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->e:I

    sput v0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->f:I

    const-string v0, "/sdcard/Proxy_debug/"

    sput-object v0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->h:Ljava/lang/String;

    const-string v0, "/sdcard/SCONE_P_Debug"

    sput-object v0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput v1, p0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->g:I

    iput v0, p0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->j:I

    iput v0, p0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->l:I

    iput v1, p0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->m:I

    iput-object v2, p0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->p:Landroid/net/ConnectivityManager;

    iput-object v2, p0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->q:Landroid/telephony/TelephonyManager;

    new-instance v0, Lcom/sec/msc/nts/android/proxy/a;

    invoke-direct {v0, p0}, Lcom/sec/msc/nts/android/proxy/a;-><init>(Lcom/sec/msc/nts/android/proxy/NTSCProxyService;)V

    iput-object v0, p0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->r:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/sec/msc/nts/android/proxy/b;

    invoke-direct {v0, p0}, Lcom/sec/msc/nts/android/proxy/b;-><init>(Lcom/sec/msc/nts/android/proxy/NTSCProxyService;)V

    iput-object v0, p0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->d:Lcom/sec/msc/nts/android/proxy/f;

    return-void
.end method

.method static synthetic a(Lcom/sec/msc/nts/android/proxy/NTSCProxyService;)Landroid/net/ConnectivityManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->p:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic a(Lcom/sec/msc/nts/android/proxy/NTSCProxyService;Landroid/net/ConnectivityManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->p:Landroid/net/ConnectivityManager;

    return-void
.end method

.method static synthetic a(Lcom/sec/msc/nts/android/proxy/NTSCProxyService;Landroid/telephony/TelephonyManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->q:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method static synthetic b(Lcom/sec/msc/nts/android/proxy/NTSCProxyService;)Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->q:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic c(Lcom/sec/msc/nts/android/proxy/NTSCProxyService;)Landroid/telephony/PhoneStateListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->r:Landroid/telephony/PhoneStateListener;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/msc/seclib/proxy/ProxyLibJNI;->getInstance()Lcom/msc/seclib/proxy/ProxyLibJNI;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->n:Lcom/msc/seclib/proxy/ProxyLibJNI;

    sget v0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->e:I

    if-gtz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->e()V

    const/4 v0, 0x1

    sput v0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->e:I

    sput v2, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->f:I

    :cond_0
    :goto_0
    sget-boolean v0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->a:Z

    sget-boolean v1, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->b:Z

    invoke-virtual {p0, v0, v1}, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->a(ZZ)I

    return v2

    :cond_1
    sget-boolean v0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "SCONEProxyService"

    const-string v1, " Error: service alreay running"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(ZZ)I
    .locals 8

    const/4 v7, 0x0

    const-string v0, "SNL"

    const-string v1, "Proxy service version is 2.7.9.2"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->b()I

    move-result v1

    if-eqz p1, :cond_0

    const-string v0, "SCONEProxyService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "currentProxyStatus: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v1, :cond_1

    const/4 v0, 0x3

    if-le v1, v0, :cond_5

    :cond_1
    if-eqz p1, :cond_2

    const-string v0, "SCONEProxyService"

    const-string v2, "callStartProxy() called"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v0, Lcom/msc/seclib/proxy/ProxyConfig;

    invoke-direct {v0}, Lcom/msc/seclib/proxy/ProxyConfig;-><init>()V

    iget v2, p0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->j:I

    if-lez v2, :cond_8

    iget v2, p0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->j:I

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Lcom/msc/seclib/proxy/ProxyConfig;->setBindport_app(C)V

    :goto_0
    iget v2, p0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->l:I

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Lcom/msc/seclib/proxy/ProxyConfig;->setNetwork_type(C)V

    iget v2, p0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->g:I

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Lcom/msc/seclib/proxy/ProxyConfig;->setLoglevel(C)V

    iget v2, p0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->g:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_9

    sget-object v2, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/msc/seclib/proxy/ProxyConfig;->setLogpath(Ljava/lang/String;)V

    :goto_1
    new-instance v2, Lcom/msc/seclib/proxy/b;

    invoke-direct {v2}, Lcom/msc/seclib/proxy/b;-><init>()V

    iput-object v2, p0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->o:Lcom/msc/seclib/proxy/a;

    iget-object v2, p0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->n:Lcom/msc/seclib/proxy/ProxyLibJNI;

    iget-object v3, p0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->o:Lcom/msc/seclib/proxy/a;

    invoke-virtual {v2, v0, v3}, Lcom/msc/seclib/proxy/ProxyLibJNI;->startProxy(Lcom/msc/seclib/proxy/ProxyConfig;Lcom/msc/seclib/proxy/a;)I

    move-result v0

    if-gez v0, :cond_a

    if-eqz p1, :cond_3

    const-string v2, "SCONEProxyService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Proxy start Fail (ret="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz p2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Proxy start Fail (ret="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") & current status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_4
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->b(I)V

    :goto_2
    return v0

    :cond_5
    if-eqz p1, :cond_6

    const-string v0, "SCONEProxyService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "callStartProxy() skiped. port("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->n:Lcom/msc/seclib/proxy/ProxyLibJNI;

    invoke-virtual {v3}, Lcom/msc/seclib/proxy/ProxyLibJNI;->getProxyConfig()Lcom/msc/seclib/proxy/ProxyConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/msc/seclib/proxy/ProxyConfig;->getBindport_app()C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    if-eqz p2, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "callStartProxy() skiped.port("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->n:Lcom/msc/seclib/proxy/ProxyLibJNI;

    invoke-virtual {v2}, Lcom/msc/seclib/proxy/ProxyLibJNI;->getProxyConfig()Lcom/msc/seclib/proxy/ProxyConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/msc/seclib/proxy/ProxyConfig;->getBindport_app()C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") (Status="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_7
    iget-object v0, p0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->n:Lcom/msc/seclib/proxy/ProxyLibJNI;

    invoke-virtual {v0}, Lcom/msc/seclib/proxy/ProxyLibJNI;->getProxyConfig()Lcom/msc/seclib/proxy/ProxyConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/msc/seclib/proxy/ProxyConfig;->getBindport_app()C

    move-result v0

    goto :goto_2

    :cond_8
    const/16 v2, 0x235a

    invoke-virtual {v0, v2}, Lcom/msc/seclib/proxy/ProxyConfig;->setBindport_app(C)V

    goto/16 :goto_0

    :cond_9
    const-string v2, "/sdcard/"

    invoke-virtual {v0, v2}, Lcom/msc/seclib/proxy/ProxyConfig;->setLogpath(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    if-eqz p1, :cond_b

    const-string v3, "SCONEProxyService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Proxy start Success (ret="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "), time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getMinutes()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "m, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getSeconds()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "s, getTime: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    if-eqz p2, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Proxy start Success("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->n:Lcom/msc/seclib/proxy/ProxyLibJNI;

    invoke-virtual {v3}, Lcom/msc/seclib/proxy/ProxyLibJNI;->getProxyConfig()Lcom/msc/seclib/proxy/ProxyConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/msc/seclib/proxy/ProxyConfig;->getBindport_app()C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") (ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") & current status: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_c
    iget-object v0, p0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->n:Lcom/msc/seclib/proxy/ProxyLibJNI;

    invoke-virtual {v0}, Lcom/msc/seclib/proxy/ProxyLibJNI;->getProxyConfig()Lcom/msc/seclib/proxy/ProxyConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/msc/seclib/proxy/ProxyConfig;->getBindport_app()C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->b(I)V

    goto/16 :goto_2
.end method

.method public a(I)V
    .locals 3

    const-string v0, "SNL"

    const-string v1, "Proxy service version is 2.7.9.2"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "SCONEProxyService"

    const-string v1, "callNetworkChange called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "SCONEProxyService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "current net type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-boolean v0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->a:Z

    if-eqz v0, :cond_2

    const-string v0, "SCONEProxyService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "request net type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget v0, p0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->l:I

    if-nez v0, :cond_6

    if-nez p1, :cond_4

    sget-boolean v0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->a:Z

    if-eqz v0, :cond_3

    const-string v0, "SCONEProxyService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "network Change refused: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void

    :cond_4
    sget-boolean v0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->a:Z

    if-eqz v0, :cond_5

    const-string v0, "SCONEProxyService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "try network Change: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v0, p0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->n:Lcom/msc/seclib/proxy/ProxyLibJNI;

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Lcom/msc/seclib/proxy/ProxyLibJNI;->networkChanged(C)V

    iput p1, p0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->l:I

    goto :goto_0

    :cond_6
    sget-boolean v0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->a:Z

    if-eqz v0, :cond_7

    const-string v0, "SCONEProxyService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "try network Change: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v0, p0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->n:Lcom/msc/seclib/proxy/ProxyLibJNI;

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Lcom/msc/seclib/proxy/ProxyLibJNI;->networkChanged(C)V

    iput p1, p0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->l:I

    goto :goto_0
.end method

.method public b()I
    .locals 4

    iget-object v0, p0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->n:Lcom/msc/seclib/proxy/ProxyLibJNI;

    invoke-virtual {v0}, Lcom/msc/seclib/proxy/ProxyLibJNI;->getProxyStatus()I

    move-result v0

    sget-boolean v1, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "SCONEProxyService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getStatus() called. result: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method public b(I)V
    .locals 0

    return-void
.end method

.method public c()I
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/msc/seclib/proxy/ProxyLibJNI;->getInstance()Lcom/msc/seclib/proxy/ProxyLibJNI;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->n:Lcom/msc/seclib/proxy/ProxyLibJNI;

    iget-object v0, p0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->n:Lcom/msc/seclib/proxy/ProxyLibJNI;

    invoke-virtual {v0}, Lcom/msc/seclib/proxy/ProxyLibJNI;->getProxyConfig()Lcom/msc/seclib/proxy/ProxyConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/msc/seclib/proxy/ProxyConfig;->getBindport_app()C
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 2

    sget-boolean v0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "SCONEProxyService"

    const-string v1, "stopProxy() call start."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->n:Lcom/msc/seclib/proxy/ProxyLibJNI;

    invoke-virtual {v0}, Lcom/msc/seclib/proxy/ProxyLibJNI;->stopProxy()V

    sget-boolean v0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "SCONEProxyService"

    const-string v1, "stopProxy() call end."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public e()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->p:Landroid/net/ConnectivityManager;

    iget-object v0, p0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->q:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->q:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->q:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->r:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0xc1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->h:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "rm -R "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    const-string v0, "SCONEProxyService"

    const-string v1, "Proxy_debug is exist. remove finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->i:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->g:I

    const-string v0, "SCONEProxyService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "callStartProxy() called. log level set ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->p:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_c

    sget-boolean v0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->a:Z

    if-eqz v0, :cond_3

    const-string v0, "SCONEProxyService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TypeName: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->p:Landroid/net/ConnectivityManager;

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

    iget-object v2, p0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->p:Landroid/net/ConnectivityManager;

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

    iget-object v2, p0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->p:Landroid/net/ConnectivityManager;

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

    iget-object v2, p0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->p:Landroid/net/ConnectivityManager;

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

    iget-object v2, p0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->q:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->p:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    iget-object v1, p0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->q:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    if-eq v0, v4, :cond_4

    const/16 v2, 0x9

    if-ne v0, v2, :cond_6

    :cond_4
    sget-boolean v0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->a:Z

    if-eqz v0, :cond_5

    const-string v0, "SCONEProxyService"

    const-string v1, "init current network type: 0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->l:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    new-instance v0, Lcom/sec/msc/nts/android/proxy/c;

    invoke-direct {v0, p0}, Lcom/sec/msc/nts/android/proxy/c;-><init>(Lcom/sec/msc/nts/android/proxy/NTSCProxyService;)V

    iput-object v0, p0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->k:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.msc.nts.action.test.tt"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.msc.nts.action.test.netTypeChange"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :catch_0
    move-exception v0

    const-string v1, "SCONEProxyService"

    const-string v2, "Proxy_debug folder remove failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "SCONEProxyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    :try_start_2
    invoke-static {v1}, Lcom/sec/msc/nts/android/proxy/d;->a(I)I

    move-result v0

    if-ne v0, v4, :cond_8

    sget-boolean v0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->a:Z

    if-eqz v0, :cond_7

    const-string v0, "SCONEProxyService"

    const-string v1, "init current network type: 1"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->l:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iput v3, p0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->l:I

    const-string v0, "SCONEProxyService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initializeService() #Exception. net type=> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_8
    :try_start_3
    invoke-static {v1}, Lcom/sec/msc/nts/android/proxy/d;->a(I)I

    move-result v0

    if-ne v0, v5, :cond_a

    sget-boolean v0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->a:Z

    if-eqz v0, :cond_9

    const-string v0, "SCONEProxyService"

    const-string v1, "init current network type: 2"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->l:I

    goto/16 :goto_1

    :cond_a
    sget-boolean v0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->a:Z

    if-eqz v0, :cond_b

    const-string v0, "SCONEProxyService"

    const-string v1, "init current network type: 3"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->l:I

    goto/16 :goto_1

    :cond_c
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->l:I

    const-string v0, "SCONEProxyService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initializeService() #getActiveNetworkInfo() is null. net type=> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    const-string v0, "portnum"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->j:I

    sget-boolean v0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "SCONEProxyService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ProxyService onBind() called. getIntExtra: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->a()I

    iget-object v0, p0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->d:Lcom/sec/msc/nts/android/proxy/f;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    sget-boolean v0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "SCONEProxyService"

    const-string v1, "onCreate() called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    sput v2, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->e:I

    const-string v0, "SNL"

    const-string v1, "Proxy service version is 2.7.9.2"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "SCONEProxyService"

    const-string v1, "onDestroy called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "SCONEProxyService"

    const-string v1, "onDestroy called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->b(I)V

    :try_start_0
    iget-object v0, p0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->d()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->q:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->q:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->r:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_2
    iput-object v3, p0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->q:Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->p:Landroid/net/ConnectivityManager;

    sget-boolean v0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->b:Z

    if-eqz v0, :cond_3

    const-string v0, "ProxyService onDestroy() called."

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_3
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 2

    sget-boolean v0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "ProxyService onRebind() called"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "portnum"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->j:I

    sget-boolean v0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "SCONEProxyService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ProxyService onStart() called. getIntExtra: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->a()I

    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    sget-boolean v0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "SCONEProxyService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onStartCommand() called. getIntExtra: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2

    sget-boolean v0, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "ProxyService onUnbind() called"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
