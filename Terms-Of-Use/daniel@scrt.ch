Delivered-To: kurt@seifried.org
Received: by 10.79.79.71 with SMTP id d68csp2967197ivb;
        Sun, 19 Nov 2017 11:17:26 -0800 (PST)
X-Received: by 10.200.6.204 with SMTP id j12mr18090100qth.38.1511119046639;
        Sun, 19 Nov 2017 11:17:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1511119046; cv=none;
        d=google.com; s=arc-20160816;
        b=SQ9SmjY7OXKpW7lb8C/12Ky/tyup1HpnPYKGBL93Rp54SD7uDoCjB/krwb7t1LgxIL
         vPFjYj4cBAFtSvPal9fpGPcKfTXD6fAMjCWl7jLNEbaKUoUmoOdCPmPNH2JZdXeerKMw
         D7mqow7jPLmjUYFRbSUpf5grySZpKjYZueDPp24HKJtLLugPJRUoujWBNqt0kraIEoOw
         0oT5Aww8XdsUosKta1lyOa4g+itgpdy3/t5ZiyBoc4gpQHpyd4PMn57L1Ns5GR567EkJ
         s2SX/F7/6ONJtxea1Df2v9/ADzfP0iedrfgIq74SqeR+waMQWEPmhv/snxDCXPy4Y2WH
         L7Mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=uoLJyPHgr8mseobzB6+MTroxg86FwipZfc3Ab3RYdtY=;
        b=Yw7Hwj+AEA20IdFaASBpHqQ7QMBOsS96abOFl8Z3+nbbR4qZFAGbWtJY7tGxrRxNvp
         sKV3r3P11U5KVeBWpOs7DCLTPh5jcoSeZ3+xc0QuNpRddnc8gPXkohvkIVYsRqfBHRt3
         NNfB+JqohBdy6X7BGkuUmL6+keNWSrKjOWbFPylOZsN93UNHjQYlvNnRCyj1/TURX+lF
         srqt0MfZ9R0jNoK389lqiav+N7vtdBBxkeXAdSgmjU4HTe5lsrD31QRtZdcWRRWV/hUu
         mFn91o3Co6QBCCy022Jmv59O8yVkXirSfWm0wyB6XYU6SNeHmCXj9rX5+9QjgiJMMKb/
         AROA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@scrt-ch.20150623.gappssmtp.com header.s=20150623 header.b=xvb1pNJC;
       spf=pass (google.com: domain of daniel@scrt.ch designates 209.85.220.41 as permitted sender) smtp.mailfrom=daniel@scrt.ch
Return-Path: <daniel@scrt.ch>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id t9sor1430132qtg.139.2017.11.19.11.17.26
        for <kurt@seifried.org>
        (Google Transport Security);
        Sun, 19 Nov 2017 11:17:26 -0800 (PST)
Received-SPF: pass (google.com: domain of daniel@scrt.ch designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@scrt-ch.20150623.gappssmtp.com header.s=20150623 header.b=xvb1pNJC;
       spf=pass (google.com: domain of daniel@scrt.ch designates 209.85.220.41 as permitted sender) smtp.mailfrom=daniel@scrt.ch
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=scrt-ch.20150623.gappssmtp.com; s=20150623;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=uoLJyPHgr8mseobzB6+MTroxg86FwipZfc3Ab3RYdtY=;
        b=xvb1pNJCWu64sFkLTfVYD6dKiQGYTItACO5uQIWOBputyK3PFvQuKrZVFPqtL2gyVf
         6SThVozkgrLYk7MxNCvXKTzmQdwjhvGmmNxytxTJkwy5t7sHdqK43fZnPBmF+G+U/Qre
         uOYNL1rSgFSmUFdtcdfUHkzP0CaIxsGGN92Z0Np2U0lisviuUWfdQ4aq1UF0cGGTjGHI
         9zu0h+BBCUMzKYeiMzsyJSLgEZh65vszNR4vlnopLiVkH+iHU8QRpu+sxufbHWx1AY46
         J/n5LzgqwqYjMXGfwLDUGOkRZlUHWnQ94AMBurygui0RGHcj2bCe0EzJKE7vBkxBk/eK
         DZLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=uoLJyPHgr8mseobzB6+MTroxg86FwipZfc3Ab3RYdtY=;
        b=B2XeQPKMJ4UvfLkADpY8s6+mm7M46ydWdPSHxhsJlrH6qobdebEGtcoWXdh89KMG3Z
         FqLWctI/vhsud1WiGaN/PjVxxWfP5oxYedmKD6o2BgsTeDzQMd+BOcMYvvt8Z13+rK6R
         ki6WQts4YLQax3QAJFJKeG4RrmOr7NzDbMefJnxfT8tfSFYC44ryc0GNEYfRmKuyNyS1
         LLQKfbTgqZRxJs9T3vQ5FF72DvXR6RdBiu+xNR8PX8UM69sizf39vM/Meo7gh6Ssz1ja
         wVb2Azt220BCCY4UAKG4ZvaUMfzK2O/o+NKpFzeqN4PTbICjHpRLzSVcH5/QNfaHv9bE
         9mhA==
X-Gm-Message-State: AJaThX4/P6NYK9q6tKjKIsf2ZBaTG6DVp2br3sCZHWtWdqpScrBvVlaZ
	QumtLjfN9rIP04T4+GTp97rouhtJKQl6fvnjoegZoQAO
X-Google-Smtp-Source: AGs4zMbxStO0uMxT2J48V/jydBKqoeDo+9GYMIP3XRry1tK0MY7RHewyAv5cyJe6qh9N9wwQjaZcdX83k9Ygx12PnFA=
X-Received: by 10.237.60.46 with SMTP id t43mr17911626qte.294.1511119046069;
 Sun, 19 Nov 2017 11:17:26 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.88.16 with HTTP; Sun, 19 Nov 2017 11:17:25 -0800 (PST)
Received: by 10.140.88.16 with HTTP; Sun, 19 Nov 2017 11:17:25 -0800 (PST)
In-Reply-To: <20171118164039.64559.31617@slab.local>
References: <20171118164039.64559.31617@slab.local>
From: Daniel Le Gall <daniel@scrt.ch>
Date: Sun, 19 Nov 2017 20:17:25 +0100
Message-ID: <CAJD1bhuTsRO3dpDT99=t0vdRL073jEcnjKePva5Gv68xhVJi2A@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for daniel@scrt.ch
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="94eb2c0e80f0f462a5055e5ad180"

--94eb2c0e80f0f462a5055e5ad180
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept

Le 18 nov. 2017 5:40 PM, <kurt@seifried.org> a =C3=A9crit :

> This is a confirmation email sent from CVE request form at
> https://iwantacve.org/ asking you to accept the MITRE CVE Terms of Use
> (assuming you filled out the CVE form and want one, we can't use the data
> until you accept the MITRE CVE Terms of Use).
>
> Simply quote the email and reply with "I accept" at the top if you agree
> to the MITRE CVE Terms of Use and we will add a copy of the email to the
> DWF MITRE CVE Terms of Use acceptance data at https://github.com/
> distributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use
>
> The reason we use a complete copy of the email is that it provides an
> artifact showing that the email address accepted the Terms of Use, when
> they were accepted and so on.
>
> If you did not submit a CVE request to the DWF you can safely ignore this
> message, however we may resend it at some point in the future, if you don=
't
> want any future emails simply reply with "unsubscribe" or "DON'T SEND ME
> THIS EMAIL EVER AGAIN" and I'll add your email address to the block list =
so
> we don't spam you with these, please note that this will prevent you from
> being able to accept the MITRE CVE Terms of Use via the DWF automatically
> in future (you'll have to manually ask). But again, if you have no idea
> what a CVE is then you can ignore this/ask to be added to the block list
> with no problems.
>
> MITRE CVE Terms of Use
>
> LICENSE
>
> Submissions: For all materials you submit to the Common Vulnerabilities
> and Exposures (CVE=C2=AE), you hereby grant to The MITRE Corporation (MIT=
RE) and
> all CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusiv=
e,
> no-charge, royalty-free, irrevocable copyright license to reproduce,
> prepare derivative works of, publicly display, publicly perform,
> sublicense, and distribute such materials and derivative works. Unless
> required by applicable law or agreed to in writing, you provide such
> materials on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
> KIND, either express or implied, including, without limitation, any
> warranties or conditions of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or
> FITNESS FOR A PARTICULAR PURPOSE.
>
> CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive,
> no-charge, royalty-free, irrevocable copyright license to reproduce,
> prepare derivative works of, publicly display, publicly perform,
> sublicense, and distribute Common Vulnerabilities and Exposures (CVE=C2=
=AE). Any
> copy you make for such purposes is authorized provided that you reproduce
> MITRE's copyright designation and this license in any such copy.
>
> DISCLAIMERS
>
> ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE
> PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE
> REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD =
OF
> TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRE=
SS
> OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE
> INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIE=
S
> OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.
>
> A copy is available at https://github.com/distributedweaknessfiling/DWF-
> Legal-Acceptance/blob/master/Terms-Of-Use.md
>
> To contact the DWF either hit reply, or email kurt@seifried.org manually
> with your question/concerns/etc.
>
>

--94eb2c0e80f0f462a5055e5ad180
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">I accept</div><div class=3D"gmail_extra"><br><div class=
=3D"gmail_quote">Le=C2=A018 nov. 2017 5:40 PM,  &lt;<a href=3D"mailto:kurt@=
seifried.org">kurt@seifried.org</a>&gt; a =C3=A9crit=C2=A0:<br type=3D"attr=
ibution"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex">This is a confirmation email sent f=
rom CVE request form at <a href=3D"https://iwantacve.org/" rel=3D"noreferre=
r" target=3D"_blank">https://iwantacve.org/</a> asking you to accept the MI=
TRE CVE Terms of Use (assuming you filled out the CVE form and want one, we=
 can&#39;t use the data until you accept the MITRE CVE Terms of Use).<br>
<br>
Simply quote the email and reply with &quot;I accept&quot; at the top if yo=
u agree to the MITRE CVE Terms of Use and we will add a copy of the email t=
o the DWF MITRE CVE Terms of Use acceptance data at <a href=3D"https://gith=
ub.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-=
Use" rel=3D"noreferrer" target=3D"_blank">https://github.com/<wbr>distribut=
edweaknessfiling/DWF-<wbr>Legal-Acceptance/tree/master/<wbr>Terms-Of-Use</a=
><br>
<br>
The reason we use a complete copy of the email is that it provides an artif=
act showing that the email address accepted the Terms of Use, when they wer=
e accepted and so on.<br>
<br>
If you did not submit a CVE request to the DWF you can safely ignore this m=
essage, however we may resend it at some point in the future, if you don&#3=
9;t want any future emails simply reply with &quot;unsubscribe&quot; or &qu=
ot;DON&#39;T SEND ME THIS EMAIL EVER AGAIN&quot; and I&#39;ll add your emai=
l address to the block list so we don&#39;t spam you with these, please not=
e that this will prevent you from being able to accept the MITRE CVE Terms =
of Use via the DWF automatically in future (you&#39;ll have to manually ask=
). But again, if you have no idea what a CVE is then you can ignore this/as=
k to be added to the block list with no problems.<br>
<br>
MITRE CVE Terms of Use<br>
<br>
LICENSE<br>
<br>
Submissions: For all materials you submit to the Common Vulnerabilities and=
 Exposures (CVE=C2=AE), you hereby grant to The MITRE Corporation (MITRE) a=
nd all CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusi=
ve, no-charge, royalty-free, irrevocable copyright license to reproduce, pr=
epare derivative works of, publicly display, publicly perform, sublicense, =
and distribute such materials and derivative works. Unless required by appl=
icable law or agreed to in writing, you provide such materials on an &quot;=
AS IS&quot; BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either exp=
ress or implied, including, without limitation, any warranties or condition=
s of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR =
PURPOSE.<br>
<br>
CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive, n=
o-charge, royalty-free, irrevocable copyright license to reproduce, prepare=
 derivative works of, publicly display, publicly perform, sublicense, and d=
istribute Common Vulnerabilities and Exposures (CVE=C2=AE). Any copy you ma=
ke for such purposes is authorized provided that you reproduce MITRE&#39;s =
copyright designation and this license in any such copy.<br>
<br>
DISCLAIMERS<br>
<br>
ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE P=
ROVIDED ON AN &quot;AS IS&quot; BASIS AND THE CONTRIBUTOR, THE ORGANIZATION=
 HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS =
BOARD OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES=
, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE US=
E OF THE INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WA=
RRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.<br>
<br>
A copy is available at <a href=3D"https://github.com/distributedweaknessfil=
ing/DWF-Legal-Acceptance/blob/master/Terms-Of-Use.md" rel=3D"noreferrer" ta=
rget=3D"_blank">https://github.com/<wbr>distributedweaknessfiling/DWF-<wbr>=
Legal-Acceptance/blob/master/<wbr>Terms-Of-Use.md</a><br>
<br>
To contact the DWF either hit reply, or email <a href=3D"mailto:kurt@seifri=
ed.org">kurt@seifried.org</a> manually with your question/concerns/etc.<br>
<br>
</blockquote></div></div>

--94eb2c0e80f0f462a5055e5ad180--
