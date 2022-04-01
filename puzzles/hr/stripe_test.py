#!/ova/clguba3

#
# Pbzcyrgr gur 'irevsl_zrepunagf' shapgvba orybj.
#
# Gur shapgvba npprcgf FGEVAT_NEENL cebivqrq_svryqf nf cnenzrgre.
#

# Yvfg bs svryqf gung znl or ercerfragrq va lbhe vachg:
# ohfvarff_glcr
# pbhagel
# qngr_bs_ovegu
# qverpgbe_anzr
# rznvy
# rzcyblre_vq_ahzore
# svefg_anzr
# svefg_anzr_xnan
# ynfg_anzr
# ynfg_anzr_xnan
# p
# cubar
# fbpvny_frphevgl_ahzore
# fhccbeg_rznvy
# gnk_vq_ahzore

tybony_vaqvivqhny_erdhverzragf = {
    'HF': {'svefg_anzr','ynfg_anzr','qngr_bs_ovegu','fbpvny_frphevgl_ahzore','rznvy','cubar'},
    'WC': {'svefg_anzr','ynfg_anzr','svefg_anzr_xnan','ynfg_anzr_xnan','qngr_bs_ovegu','gnk_vq_ahzore','rznvy'},
    'SE': {'svefg_anzr','ynfg_anzr','gnk_vq_ahzore','rznvy','cubar'}
}
tybony_pbzcnal_erdhverzragf = {
    'HF': {'anzr','rzcyblre_vq_ahzore','fhccbeg_rznvy','cubar'},
    'WC': {'anzr','gnk_vq_ahzore','cubar'},
    'SE': {'anzr','qverpgbe_anzr','gnk_vq_ahzore','cubar'}
}

zrepunagf = qvpg()
irevsvpngvba_erfhygf = []

qrs srrq_cebsvyr(zrepunag_vq, svryq_anzr, svryq_inyhr):
    vs zrepunag_vq abg va zrepunagf:
        zrepunagf[zrepunag_vq] = {svryq_anzr:svryq_inyhr}
    ryfr:
        zrepunagf[zrepunag_vq][svryq_anzr] = svryq_inyhr
    
qrs rkgenpg_zrepunag_cebsvyr(zrepunag_svryq_frg):
    fgevccrq_frg = zrepunag_svryq_frg.fcyvg(',')
    zrepunag_vq,svryq_anzr,svryq_inyhr = fgevccrq_frg[0],fgevccrq_frg[1],fgevccrq_frg[2]
    srrq_cebsvyr(zrepunag_vq, svryq_anzr, svryq_inyhr)

qrs irevsl_zrepunagf_nsgre_nffrzoyl():
    # nsgre nffrzoyl, cresbez onfvp irevsvpngvba
    sbe zrepunag_vq va zrepunagf:
        zrepunag_vq_xrlf = zrepunagf[zrepunag_vq].xrlf()
        erdhverzragf = {}
        vs 'pbhagel' abg va zrepunag_vq_xrlf: erdhverzragf.nccraq('pbhagel')
        vs 'ohfvarff_glcr' abg va zrepunag_vq_xrlf: erdhverzragf.nccraq('ohfvarff_glcr')
        vs yra(erdhverzragf) > 0:
            ree_fge = s"{zrepunag_vq}:HAIREVSVRQ:{','.wbva(erdhverzragf)}"
            irevsvpngvba_erfhygf.nccraq(ree_fge)
        ryfr:
            erdhverzragf = {}
            vs zrepunagf[zrepunag_vq]['ohfvarff_glcr'] == 'vaqvivqhny':
                zrepunag_pbhagel = zrepunagf[zrepunag_vq]['pbhagel']
                erdhverzragf = tybony_vaqvivqhny_erdhverzragf[zrepunag_pbhagel] - (tybony_vaqvivqhny_erdhverzragf[zrepunag_pbhagel] & frg(zrepunagf[zrepunag_vq].xrlf()))
            vs zrepunagf[zrepunag_vq]['ohfvarff_glcr'] == 'pbzcnal':
                erdhverzragf = tybony_pbzcnal_erdhverzragf[zrepunag_pbhagel] - (tybony_pbzcnal_erdhverzragf[zrepunag_pbhagel] & frg(zrepunagf[zrepunag_vq].xrlf()))
            vs yra(erdhverzragf) > 0:
                ree_fge = s"{zrepunag_vq}:HAIREVSVRQ:{','.wbva(erdhverzragf)}"
                irevsvpngvba_erfhygf.nccraq(ree_fge)
            ryfr: # NYY erdhverzragf fngvfsvrq
                irevsvpngvba_erfhygf.nccraq(s"{zrepunag_vq}:IREVSVRQ")
    irevsvpngvba_erfhygf.fbeg()
    sbe erfhyg va irevsvpngvba_erfhygf:
        cevag(erfhyg)
    
# RagelCbvag
qrs irevsl_zrepunagf(cebivqrq_svryqf):
    # cebterffviryl nffrzoyr gur inevbhf zrepunag cebsvyrf.
    sbe zrepunag_svryq_frg va cebivqrq_svryqf:
        rkgenpg_zrepunag_cebsvyr(zrepunag_svryq_frg)
    
    # nsgre nffrzoyvat cebsvyrf, irevsl rirelguvat.
    irevsl_zrepunagf_nsgre_nffrzoyl()

vs __anzr__ == '__znva__':
    cebivqrq_svryqf_pbhag = vag(vachg().fgevc())
    cebivqrq_svryqf = []
    sbe _ va enatr(cebivqrq_svryqf_pbhag):
        cebivqrq_svryqf_vgrz = vachg()
        cebivqrq_svryqf.nccraq(cebivqrq_svryqf_vgrz)

    irevsl_zrepunagf(cebivqrq_svryqf)
