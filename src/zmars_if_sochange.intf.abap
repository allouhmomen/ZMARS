INTERFACE zmars_if_sochange
  PUBLIC .


  TYPES:
    char1                          TYPE c LENGTH 000001 ##TYPSHADOW .
  TYPES:
    atp_wrkmod TYPE c LENGTH 000001 ##TYPSHADOW .
  TYPES:
    xfeld TYPE c LENGTH 000001 ##TYPSHADOW .
  TYPES:
    new_cond_mnt TYPE c LENGTH 000001 ##TYPSHADOW .
  TYPES:
    BEGIN OF bapisdls                      ,
      pricing         TYPE knprs,
      atp_wrkmod      TYPE atp_wrkmod,
      scheduling      TYPE char1,
      nostructure     TYPE xfeld,
      cond_handl      TYPE new_cond_mnt,
      addr_check      TYPE char1,
      fsh_copy_ref    TYPE char1,
      no_credit_check TYPE char1,
      no_atp          TYPE char1,
    END OF bapisdls                       ##TYPSHADOW .
  TYPES:
    prgrs_vbak TYPE c LENGTH 000001 ##TYPSHADOW .
  TYPES:
    telf1_vp TYPE c LENGTH 000016 ##TYPSHADOW .
  TYPES:
    bsark_e TYPE c LENGTH 000004 ##TYPSHADOW .
  TYPES:
    ihrez_e TYPE c LENGTH 000012 ##TYPSHADOW .
  TYPES:
    mahza TYPE p LENGTH 000002 DECIMALS 000000 ##TYPSHADOW .
  TYPES:
    ps_posid TYPE c LENGTH 000024 ##TYPSHADOW .
  TYPES:
    xblnr_v TYPE c LENGTH 000016 ##TYPSHADOW .
  TYPES:
    kurrf TYPE p LENGTH 000005 DECIMALS 000005 ##TYPSHADOW .
  TYPES:
    kursk TYPE p LENGTH 000005 DECIMALS 000005 ##TYPSHADOW .
  TYPES:
    delco TYPE c LENGTH 000003 ##TYPSHADOW .
  TYPES:
    waers_iso TYPE c LENGTH 000003 ##TYPSHADOW .
  TYPES:
    char012 TYPE c LENGTH 000012 ##TYPSHADOW .
  TYPES:
    cgpl_guid16_r3 TYPE x LENGTH 000016 ##TYPSHADOW .
  TYPES:
    vbkla TYPE c LENGTH 000009 ##TYPSHADOW .
  TYPES:
    xblnr_v_long TYPE c LENGTH 000035 ##TYPSHADOW .
  TYPES:
    vsnmr_v TYPE c LENGTH 000012 ##TYPSHADOW .
  TYPES:
    psm_budat TYPE d ##TYPSHADOW .
  TYPES:
    psm_tas TYPE c LENGTH 000030 ##TYPSHADOW .
  TYPES:
    psm_betc TYPE c LENGTH 000010 ##TYPSHADOW .
  TYPES:
    psm_mod_allow TYPE c LENGTH 000001 ##TYPSHADOW .
  TYPES:
    psm_canc_allow TYPE c LENGTH 000001 ##TYPSHADOW .
  TYPES:
    psm_bpn TYPE c LENGTH 000006 ##TYPSHADOW .
  TYPES:
    psm_rep_freq TYPE c LENGTH 000003 ##TYPSHADOW .
  TYPES:
    BEGIN OF bapisdh1                      ,
      collect_no           TYPE submi,
      sales_org            TYPE vkorg,
      distr_chan           TYPE vtweg,
      division             TYPE spart,
      sales_grp            TYPE vkgrp,
      sales_off            TYPE vkbur,
      req_date_h           TYPE edatu_vbak,
      date_type            TYPE prgrs_vbak,
      purch_no_c           TYPE bstkd,
      purch_date           TYPE bstdk,
      po_method            TYPE bsark,
      po_supplem           TYPE bstzd,
      ref_1                TYPE ihrez,
      name                 TYPE bname_v,
      telephone            TYPE telf1_vp,
      price_grp            TYPE konda,
      cust_group           TYPE kdgrp,
      sales_dist           TYPE bzirk,
      price_list           TYPE pltyp,
      incoterms1           TYPE inco1,
      incoterms2           TYPE inco2,
      pmnttrms             TYPE dzterm,
      dlv_block            TYPE lifsk,
      bill_block           TYPE faksk,
      ord_reason           TYPE augru,
      compl_dlv            TYPE autlf,
      price_date           TYPE prsdt,
      qt_valid_f           TYPE angdt_v,
      qt_valid_t           TYPE bnddt,
      ct_valid_f           TYPE guebg,
      ct_valid_t           TYPE gueen,
      cust_grp1            TYPE kvgr1,
      cust_grp2            TYPE kvgr2,
      cust_grp3            TYPE kvgr3,
      cust_grp4            TYPE kvgr4,
      cust_grp5            TYPE kvgr5,
      purch_no_s           TYPE bstkd_e,
      po_dat_s             TYPE bstdk_e,
      po_meth_s            TYPE bsark_e,
      ref_1_s              TYPE ihrez_e,
      sd_doc_cat           TYPE vbtyp,
      doc_date             TYPE audat,
      war_date             TYPE gwldt,
      ship_cond            TYPE vsbed,
      pp_search            TYPE ktext_v,
      dun_count            TYPE mahza,
      dun_date             TYPE mahdt,
      costcenter           TYPE kostl,
      wbs_elem             TYPE ps_posid,
      dlvschduse           TYPE abrvw,
      pldlvstyp            TYPE abdis,
      ref_doc              TYPE vgbel,
      comp_cde_b           TYPE bukrs_vf,
      alttax_cls           TYPE taxk1_ak,
      tax_class2           TYPE taxk2,
      tax_class3           TYPE taxk3,
      tax_class4           TYPE taxk4,
      tax_class5           TYPE taxk5,
      tax_class6           TYPE taxk6,
      tax_class7           TYPE taxk7,
      tax_class8           TYPE taxk8,
      tax_class9           TYPE taxk9,
      ref_doc_l            TYPE xblnr_v,
      ass_number           TYPE ordnr_v,
      refdoc_cat           TYPE vbtyp,
      ordcomb_in           TYPE kzazu_d,
      bill_sched           TYPE perfk,
      invo_sched           TYPE perrl,
      mn_invoice           TYPE mrnkz,
      exrate_fi            TYPE kurrf,
      add_val_dy           TYPE valtg,
      fix_val_dy           TYPE valdt,
      pymt_meth            TYPE dzlsch,
      accnt_asgn           TYPE ktgrd,
      exchg_rate           TYPE kursk,
      bill_date            TYPE fkdat,
      serv_date            TYPE fbuda,
      dunn_key             TYPE mschl,
      dunn_block           TYPE mansp,
      promotion            TYPE waktion,
      pmtgar_pro           TYPE abssche_cm,
      departm_no           TYPE abtnr,
      rec_point            TYPE empst,
      poitm_no_s           TYPE posex_e,
      doc_num_fi           TYPE lcnum,
      cstcndgrp1           TYPE kdkg1,
      cstcndgrp2           TYPE kdkg2,
      cstcndgrp3           TYPE kdkg3,
      cstcndgrp4           TYPE kdkg4,
      cstcndgrp5           TYPE kdkg5,
      dlv_time             TYPE delco,
      currency             TYPE waerk,
      curr_iso             TYPE waers_iso,
      fkk_conacct          TYPE char012,
      campaign             TYPE cgpl_guid16_r3,
      doc_class            TYPE vbkla,
      h_curr               TYPE waers,
      h_curr_iso           TYPE isocd,
      ship_type            TYPE vsarttr,
      s_proc_ind           TYPE sdabw,
      ref_doc_l_long       TYPE xblnr_v_long,
      version              TYPE vsnmr_v,
      psm_pstng_date       TYPE psm_budat,
      treasury_acc_symbol  TYPE psm_tas,
      business_event_tcode TYPE psm_betc,
      modification_allowed TYPE psm_mod_allow,
      cancellation_allowed TYPE psm_canc_allow,
      payment_methods      TYPE dzwels,
      business_partner_no  TYPE psm_bpn,
      reporting_freq       TYPE psm_rep_freq,
      sepa_mandate_id      TYPE sepa_mndid,
      incotermsv           TYPE incov,
      incoterms2l          TYPE inco2_l,
      incoterms3l          TYPE inco3_l,
      sd_doc_cat_long      TYPE vbtypl,
      refdoc_cat_long      TYPE vbtypl_v,
      eutri_deal           TYPE xegdr,
      taxdep_cty           TYPE landtx,
      taxdst_cty           TYPE land1tx,
    END OF bapisdh1                       ##TYPSHADOW .
  TYPES:
    BEGIN OF bapisdh1x                     ,
      updateflag           TYPE updkz_d,
      collect_no           TYPE bapiupdate,
      sales_org            TYPE bapiupdate,
      distr_chan           TYPE bapiupdate,
      division             TYPE bapiupdate,
      sales_grp            TYPE bapiupdate,
      sales_off            TYPE bapiupdate,
      req_date_h           TYPE bapiupdate,
      date_type            TYPE bapiupdate,
      purch_no_c           TYPE bapiupdate,
      purch_date           TYPE bapiupdate,
      po_method            TYPE bapiupdate,
      po_supplem           TYPE bapiupdate,
      ref_1                TYPE bapiupdate,
      name                 TYPE bapiupdate,
      telephone            TYPE bapiupdate,
      price_grp            TYPE bapiupdate,
      cust_group           TYPE bapiupdate,
      sales_dist           TYPE bapiupdate,
      price_list           TYPE bapiupdate,
      incoterms1           TYPE bapiupdate,
      incoterms2           TYPE bapiupdate,
      pmnttrms             TYPE bapiupdate,
      dlv_block            TYPE bapiupdate,
      bill_block           TYPE bapiupdate,
      ord_reason           TYPE bapiupdate,
      compl_dlv            TYPE bapiupdate,
      price_date           TYPE bapiupdate,
      qt_valid_f           TYPE bapiupdate,
      qt_valid_t           TYPE bapiupdate,
      ct_valid_f           TYPE bapiupdate,
      ct_valid_t           TYPE bapiupdate,
      cust_grp1            TYPE bapiupdate,
      cust_grp2            TYPE bapiupdate,
      cust_grp3            TYPE bapiupdate,
      cust_grp4            TYPE bapiupdate,
      cust_grp5            TYPE bapiupdate,
      purch_no_s           TYPE bapiupdate,
      po_dat_s             TYPE bapiupdate,
      po_meth_s            TYPE bapiupdate,
      ref_1_s              TYPE bapiupdate,
      sd_doc_cat           TYPE bapiupdate,
      doc_date             TYPE bapiupdate,
      war_date             TYPE bapiupdate,
      ship_cond            TYPE bapiupdate,
      pp_search            TYPE bapiupdate,
      dun_count            TYPE bapiupdate,
      dun_date             TYPE bapiupdate,
      costcenter           TYPE bapiupdate,
      wbs_elem             TYPE bapiupdate,
      dlvschduse           TYPE bapiupdate,
      pldlvstyp            TYPE bapiupdate,
      ref_doc              TYPE bapiupdate,
      comp_cde_b           TYPE bapiupdate,
      alttax_cls           TYPE bapiupdate,
      tax_class2           TYPE bapiupdate,
      tax_class3           TYPE bapiupdate,
      tax_class4           TYPE bapiupdate,
      tax_class5           TYPE bapiupdate,
      tax_class6           TYPE bapiupdate,
      tax_class7           TYPE bapiupdate,
      tax_class8           TYPE bapiupdate,
      tax_class9           TYPE bapiupdate,
      ref_doc_l            TYPE bapiupdate,
      ass_number           TYPE bapiupdate,
      refdoc_cat           TYPE bapiupdate,
      ordcomb_in           TYPE bapiupdate,
      bill_sched           TYPE bapiupdate,
      invo_sched           TYPE bapiupdate,
      mn_invoice           TYPE bapiupdate,
      exrate_fi            TYPE bapiupdate,
      add_val_dy           TYPE bapiupdate,
      fix_val_dy           TYPE bapiupdate,
      pymt_meth            TYPE bapiupdate,
      accnt_asgn           TYPE bapiupdate,
      exchg_rate           TYPE bapiupdate,
      bill_date            TYPE bapiupdate,
      serv_date            TYPE bapiupdate,
      dunn_key             TYPE bapiupdate,
      dunn_block           TYPE bapiupdate,
      promotion            TYPE bapiupdate,
      pmtgar_pro           TYPE bapiupdate,
      departm_no           TYPE bapiupdate,
      rec_point            TYPE bapiupdate,
      poitm_no_s           TYPE bapiupdate,
      doc_num_fi           TYPE bapiupdate,
      cstcndgrp1           TYPE bapiupdate,
      cstcndgrp2           TYPE bapiupdate,
      cstcndgrp3           TYPE bapiupdate,
      cstcndgrp4           TYPE bapiupdate,
      cstcndgrp5           TYPE bapiupdate,
      dlv_time             TYPE bapiupdate,
      currency             TYPE bapiupdate,
      fkk_conacct          TYPE bapiupdate,
      campaign             TYPE bapiupdate,
      doc_class            TYPE bapiupdate,
      h_curr               TYPE bapiupdate,
      ship_type            TYPE bapiupdate,
      s_proc_ind           TYPE bapiupdate,
      version              TYPE bapiupdate,
      psm_pstng_date       TYPE bapiupdate,
      treasury_acc_symbol  TYPE bapiupdate,
      business_event_tcode TYPE bapiupdate,
      modification_allowed TYPE bapiupdate,
      cancellation_allowed TYPE bapiupdate,
      payment_methods      TYPE bapiupdate,
      business_partner_no  TYPE bapiupdate,
      reporting_freq       TYPE bapiupdate,
      sepa_mandate_id      TYPE bapiupdate,
      incotermsv           TYPE bapiupdate,
      incoterms2l          TYPE bapiupdate,
      incoterms3l          TYPE bapiupdate,
      sd_doc_cat_long      TYPE bapiupdate,
      refdoc_cat_long      TYPE bapiupdate,
      eutri_deal           TYPE bapiupdate,
      taxdep_cty           TYPE bapiupdate,
      taxdst_cty           TYPE bapiupdate,
    END OF bapisdh1x                      ##TYPSHADOW .
  TYPES:
    dzaehk_short TYPE n LENGTH 000002 ##TYPSHADOW .
  TYPES:
    bapikbetr1 TYPE p LENGTH 000015 DECIMALS 000009 ##TYPSHADOW .
  TYPES:
    kvmei_iso TYPE c LENGTH 000003 ##TYPSHADOW .
  TYPES:
    swo_objtyp TYPE c LENGTH 000010 ##TYPSHADOW .
  TYPES:
    swo_typeid TYPE c LENGTH 000070 ##TYPSHADOW .
  TYPES:
    logsys TYPE c LENGTH 000010 ##TYPSHADOW .
  TYPES:
    bapikawrt1 TYPE p LENGTH 000015 DECIMALS 000009 ##TYPSHADOW .
  TYPES:
    kkurs TYPE p LENGTH 000005 DECIMALS 000005 ##TYPSHADOW .
  TYPES:
    kolnr_short TYPE n LENGTH 000002 ##TYPSHADOW .
  TYPES:
    bapikwert1 TYPE p LENGTH 000015 DECIMALS 000009 ##TYPSHADOW .
  TYPES:
    bapikstbs1 TYPE p LENGTH 000015 DECIMALS 000009 ##TYPSHADOW .
  TYPES:
    dzaeko_short TYPE n LENGTH 000002 ##TYPSHADOW .
  TYPES:
    dzaeko TYPE n LENGTH 000003 ##TYPSHADOW .
  TYPES:
    BEGIN OF bapicond                      ,
      itm_number      TYPE kposn,
      cond_st_no      TYPE stunr,
      cond_count      TYPE dzaehk_short,
      cond_type       TYPE kscha,
      cond_value      TYPE bapikbetr1,
      currency        TYPE waers,
      cond_unit       TYPE kmein,
      cond_p_unt      TYPE kpein,
      curr_iso        TYPE waers_iso,
      cd_unt_iso      TYPE kvmei_iso,
      refobjtype      TYPE swo_objtyp,
      refobjkey       TYPE swo_typeid,
      reflogsys       TYPE logsys,
      applicatio      TYPE kappl,
      conpricdat      TYPE kdatu,
      calctypcon      TYPE krech,
      conbaseval      TYPE bapikawrt1,
      conexchrat      TYPE kkurs,
      numconvert      TYPE kumza,
      denominato      TYPE kumne,
      condtype        TYPE kntyp,
      stat_con        TYPE kstat,
      scaletype       TYPE stfkz,
      accruals        TYPE kruek,
      coninvolst      TYPE kreli,
      condorigin      TYPE kherk,
      groupcond       TYPE kgrpe,
      cond_updat      TYPE koupd,
      access_seq      TYPE kolnr_short,
      condcount       TYPE kopos,
      roundoffdi      TYPE bapicurext,
      condvalue       TYPE bapikwert1,
      currency_2      TYPE waerk,
      curr_iso_2      TYPE waers_iso,
      condcntrl       TYPE ksteu,
      condisacti      TYPE kinak,
      condclass       TYPE koaid,
      factbasval      TYPE kfaktor,
      scalebasin      TYPE kzbzg,
      scalbasval      TYPE bapikstbs1,
      unitmeasur      TYPE konms,
      iso_unit        TYPE isocd_unit,
      currenckey      TYPE konws,
      curreniso       TYPE waers_iso,
      condincomp      TYPE kfkiv,
      condconfig      TYPE kvarc,
      condchaman      TYPE kmprs,
      cond_no         TYPE knumh,
      tax_code        TYPE mwskz,
      varcond         TYPE varcond,
      accountkey      TYPE kvsl1,
      account_ke      TYPE kvsl2,
      wt_withcd       TYPE wt_withcd,
      structcond      TYPE kdupl,
      factconbas      TYPE kfaktor1,
      condcoinhd      TYPE dzaeko_short,
      access_seq_long TYPE kolnr,
      cond_count_long TYPE dzaehk,
      condcoinhd_long TYPE dzaeko,
    END OF bapicond                       ##TYPSHADOW .
  TYPES:
    _bapicond                      TYPE STANDARD TABLE OF bapicond                       WITH DEFAULT KEY ##TYPSHADOW .
  TYPES:
    BEGIN OF bapicondx                     ,
      itm_number      TYPE kposn,
      cond_st_no      TYPE stunr,
      cond_count      TYPE dzaehk_short,
      cond_type       TYPE kscha,
      updateflag      TYPE updkz_d,
      cond_value      TYPE bapiupdate,
      currency        TYPE bapiupdate,
      cond_unit       TYPE bapiupdate,
      cond_p_unt      TYPE bapiupdate,
      varcond         TYPE varcond,
      cond_count_long TYPE dzaehk,
    END OF bapicondx                      ##TYPSHADOW .
  TYPES:
    _bapicondx                     TYPE STANDARD TABLE OF bapicondx                      WITH DEFAULT KEY ##TYPSHADOW .
  TYPES:
    _bapiparex                     TYPE STANDARD TABLE OF bapiparex                      WITH DEFAULT KEY ##TYPSHADOW .
  TYPES:
    data_index TYPE int4 ##TYPSHADOW .
  TYPES:
    /nfm/bln TYPE c LENGTH 000010 ##TYPSHADOW .
  TYPES:
    /nfm/psn TYPE n LENGTH 000006 ##TYPSHADOW .
  TYPES:
    /nfm/nes TYPE c LENGTH 000003 ##TYPSHADOW .
  TYPES:
    /nfm/nfs TYPE c LENGTH 000002 ##TYPSHADOW .
  TYPES:
    /nfm/neb TYPE c LENGTH 000002 ##TYPSHADOW .
  TYPES:
    /nfm/boesl TYPE c LENGTH 000003 ##TYPSHADOW .
  TYPES:
    /nfm/ndt TYPE d ##TYPSHADOW .
  TYPES:
    /nfm/nmo TYPE n LENGTH 000006 ##TYPSHADOW .
  TYPES:
    /nfm/kta TYPE d ##TYPSHADOW .
  TYPES:
    /nfm/nkn TYPE p LENGTH 000007 DECIMALS 000002 ##TYPSHADOW .
  TYPES:
    /nfm/nkw TYPE c LENGTH 000005 ##TYPSHADOW .
  TYPES:
    s_curr_iso TYPE c LENGTH 000003 ##TYPSHADOW .
  TYPES:
    /nfm/nku TYPE p LENGTH 000008 DECIMALS 000002 ##TYPSHADOW .
  TYPES:
    /nfm/fsp TYPE c LENGTH 000002 ##TYPSHADOW .
  TYPES:
    /nfm/bwr TYPE p LENGTH 000008 DECIMALS 000002 ##TYPSHADOW .
  TYPES:
    /nfm/bcu TYPE c LENGTH 000005 ##TYPSHADOW .
  TYPES:
    /nfm/nno TYPE p LENGTH 000007 DECIMALS 000002 ##TYPSHADOW .
  TYPES:
    /nfm/bek TYPE c LENGTH 000010 ##TYPSHADOW .
  TYPES:
    /nfm/eind TYPE c LENGTH 000010 ##TYPSHADOW .
  TYPES:
    /nfm/eds TYPE c LENGTH 000010 ##TYPSHADOW .
  TYPES:
    /nfm/nbd TYPE n LENGTH 000003 ##TYPSHADOW .
  TYPES:
    update_type TYPE c LENGTH 000001 ##TYPSHADOW .
  TYPES:
    BEGIN OF /nfm/bapidocitm               ,
      data_index    TYPE data_index,
      doc_number    TYPE /nfm/bln,
      itm_number    TYPE /nfm/psn,
      compcode      TYPE bukrs,
      fiscyear      TYPE gjahr,
      nfmkey        TYPE /nfm/nes,
      ratedetkey    TYPE /nfm/nfs,
      basekey       TYPE /nfm/neb,
      exchangekey   TYPE /nfm/boesl,
      ratedetdat    TYPE /nfm/ndt,
      ratemonth     TYPE /nfm/nmo,
      actratedat    TYPE /nfm/kta,
      rate          TYPE /nfm/nkn,
      ratecurky     TYPE /nfm/nkw,
      ratecurkyiso  TYPE s_curr_iso,
      ratedoccur    TYPE /nfm/nku,
      invoicebl     TYPE /nfm/fsp,
      bvaldoccur    TYPE /nfm/bwr,
      bvalcurkyd    TYPE /nfm/bcu,
      bvalcurkydiso TYPE s_curr_iso,
      netrate       TYPE /nfm/nno,
      provider      TYPE /nfm/bek,
      vendorcov     TYPE /nfm/eind,
      coverageky    TYPE /nfm/eds,
      postingdays   TYPE /nfm/nbd,
      updtype       TYPE update_type,
    END OF /nfm/bapidocitm                ##TYPSHADOW .
  TYPES:
    _/nfm/bapidocitm               TYPE STANDARD TABLE OF /nfm/bapidocitm                WITH DEFAULT KEY ##TYPSHADOW .
  TYPES:
    cux_cfg_id TYPE c LENGTH 000006 ##TYPSHADOW .
  TYPES:
    cublob TYPE c LENGTH 000250 ##TYPSHADOW .
  TYPES:
    BEGIN OF bapicublb                     ,
      config_id TYPE cux_cfg_id,
      context   TYPE cublob,
    END OF bapicublb                      ##TYPSHADOW .
  TYPES:
    _bapicublb                     TYPE STANDARD TABLE OF bapicublb                      WITH DEFAULT KEY ##TYPSHADOW .
  TYPES:
    cu_inst_id TYPE c LENGTH 000008 ##TYPSHADOW .
  TYPES:
    cuib_objtyp TYPE c LENGTH 000010 ##TYPSHADOW .
  TYPES:
    klassenart TYPE c LENGTH 000003 ##TYPSHADOW .
  TYPES:
    cuib_objkey TYPE c LENGTH 000050 ##TYPSHADOW .
  TYPES:
    cu_obj_txt TYPE c LENGTH 000070 ##TYPSHADOW .
  TYPES:
    cu_quan TYPE c LENGTH 000015 ##TYPSHADOW .
  TYPES:
    cu_inf TYPE c LENGTH 000001 ##TYPSHADOW .
  TYPES:
    cux_quan_unit TYPE c LENGTH 000003 ##TYPSHADOW .
  TYPES:
    cu_checked TYPE c LENGTH 000001 ##TYPSHADOW .
  TYPES:
    cux_uuid_type TYPE c LENGTH 000032 ##TYPSHADOW .
  TYPES:
    cux_persist_id TYPE c LENGTH 000032 ##TYPSHADOW .
  TYPES:
    cux_persist_id_type TYPE c LENGTH 000001 ##TYPSHADOW .
  TYPES:
    BEGIN OF bapicuins                     ,
      config_id       TYPE cux_cfg_id,
      inst_id         TYPE cu_inst_id,
      obj_type        TYPE cuib_objtyp,
      class_type      TYPE klassenart,
      obj_key         TYPE cuib_objkey,
      obj_txt         TYPE cu_obj_txt,
      quantity        TYPE cu_quan,
      author          TYPE cu_inf,
      quantity_unit   TYPE cux_quan_unit,
      complete        TYPE cu_checked,
      consistent      TYPE cu_checked,
      object_guid     TYPE cux_uuid_type,
      persist_id      TYPE cux_persist_id,
      persist_id_type TYPE cux_persist_id_type,
    END OF bapicuins                      ##TYPSHADOW .
  TYPES:
    _bapicuins                     TYPE STANDARD TABLE OF bapicuins                      WITH DEFAULT KEY ##TYPSHADOW .
  TYPES:
    cux_part_pos_no TYPE c LENGTH 000004 ##TYPSHADOW .
  TYPES:
    cux_sales_relevant TYPE c LENGTH 000001 ##TYPSHADOW .
  TYPES:
    cux_guid_prt TYPE c LENGTH 000032 ##TYPSHADOW .
  TYPES:
    cux_gen_bom_ident TYPE c LENGTH 000008 ##TYPSHADOW .
  TYPES:
    BEGIN OF bapicuprt                     ,
      config_id      TYPE cux_cfg_id,
      parent_id      TYPE cu_inst_id,
      inst_id        TYPE cu_inst_id,
      part_of_no     TYPE cux_part_pos_no,
      obj_type       TYPE cuib_objtyp,
      class_type     TYPE klassenart,
      obj_key        TYPE cuib_objkey,
      author         TYPE cu_inf,
      sales_relevant TYPE cux_sales_relevant,
      part_of_guid   TYPE cux_guid_prt,
      bom_ident      TYPE cux_gen_bom_ident,
    END OF bapicuprt                      ##TYPSHADOW .
  TYPES:
    _bapicuprt                     TYPE STANDARD TABLE OF bapicuprt                      WITH DEFAULT KEY ##TYPSHADOW .
  TYPES:
    cu_posex TYPE c LENGTH 000006 ##TYPSHADOW .
  TYPES:
    cux_configuration_type TYPE c LENGTH 000001 ##TYPSHADOW .
  TYPES:
    cux_kbname TYPE c LENGTH 000030 ##TYPSHADOW .
  TYPES:
    cux_rt_version TYPE c LENGTH 000030 ##TYPSHADOW .
  TYPES:
    cux_kb_profile TYPE c LENGTH 000030 ##TYPSHADOW .
  TYPES:
    cux_kblanguage TYPE c LENGTH 000001 ##TYPSHADOW .
  TYPES:
    BEGIN OF bapicucfg                     ,
      posex         TYPE cu_posex,
      config_id     TYPE cux_cfg_id,
      root_id       TYPE cu_inst_id,
      sce           TYPE cux_configuration_type,
      kbname        TYPE cux_kbname,
      kbversion     TYPE cux_rt_version,
      complete      TYPE cu_checked,
      consistent    TYPE cu_checked,
      cfginfo       TYPE cublob,
      kbprofile     TYPE cux_kb_profile,
      kblanguage    TYPE cux_kblanguage,
      cbase_id      TYPE cux_persist_id,
      cbase_id_type TYPE cux_persist_id_type,
    END OF bapicucfg                      ##TYPSHADOW .
  TYPES:
    _bapicucfg                     TYPE STANDARD TABLE OF bapicucfg                      WITH DEFAULT KEY ##TYPSHADOW .
  TYPES:
    BEGIN OF bapicuref                     ,
      posex     TYPE cu_posex,
      config_id TYPE cux_cfg_id,
      inst_id   TYPE cu_inst_id,
    END OF bapicuref                      ##TYPSHADOW .
  TYPES:
    _bapicuref                     TYPE STANDARD TABLE OF bapicuref                      WITH DEFAULT KEY ##TYPSHADOW .
  TYPES:
    cu_charc TYPE c LENGTH 000040 ##TYPSHADOW .
  TYPES:
    cu_charct TYPE c LENGTH 000070 ##TYPSHADOW .
  TYPES:
    cux_value40 TYPE c LENGTH 000040 ##TYPSHADOW .
  TYPES:
    cu_valuet TYPE c LENGTH 000070 ##TYPSHADOW .
  TYPES:
    cux_valcod TYPE c LENGTH 000001 ##TYPSHADOW .
  TYPES:
    cux_value70 TYPE c LENGTH 000070 ##TYPSHADOW .
  TYPES:
    BEGIN OF bapicuval                     ,
      config_id     TYPE cux_cfg_id,
      inst_id       TYPE cu_inst_id,
      charc         TYPE cu_charc,
      charc_txt     TYPE cu_charct,
      value         TYPE cux_value40,
      value_txt     TYPE cu_valuet,
      author        TYPE cu_inf,
      value_to      TYPE cux_value40,
      valcode       TYPE cux_valcod,
      value_long    TYPE cux_value70,
      value_to_long TYPE cux_value70,
    END OF bapicuval                      ##TYPSHADOW .
  TYPES:
    _bapicuval                     TYPE STANDARD TABLE OF bapicuval                      WITH DEFAULT KEY ##TYPSHADOW .
  TYPES:
    cu_vkey TYPE c LENGTH 000026 ##TYPSHADOW .
  TYPES:
    cu_factor TYPE c LENGTH 000015 ##TYPSHADOW .
  TYPES:
    BEGIN OF bapicuvk                      ,
      config_id TYPE cux_cfg_id,
      inst_id   TYPE cu_inst_id,
      vkey      TYPE cu_vkey,
      factor    TYPE cu_factor,
    END OF bapicuvk                       ##TYPSHADOW .
  TYPES:
    _bapicuvk                      TYPE STANDARD TABLE OF bapicuvk                       WITH DEFAULT KEY ##TYPSHADOW .
  TYPES:
    matnr18 TYPE c LENGTH 000018 ##TYPSHADOW .
  TYPES:
    matnr_ku1 TYPE c LENGTH 000022 ##TYPSHADOW .
  TYPES:
    abgru TYPE c LENGTH 000002 ##TYPSHADOW .
  TYPES:
    iso_zieme TYPE c LENGTH 000003 ##TYPSHADOW .
  TYPES:
    kurrf_p TYPE p LENGTH 000005 DECIMALS 000005 ##TYPSHADOW .
  TYPES:
    kursk_p TYPE p LENGTH 000005 DECIMALS 000005 ##TYPSHADOW .
  TYPES:
    ablfz TYPE p LENGTH 000007 DECIMALS 000003 ##TYPSHADOW .
  TYPES:
    absfz TYPE p LENGTH 000007 DECIMALS 000003 ##TYPSHADOW .
  TYPES:
    kbver TYPE p LENGTH 000002 DECIMALS 000000 ##TYPSHADOW .
  TYPES:
    kever TYPE p LENGTH 000002 DECIMALS 000000 ##TYPSHADOW .
  TYPES:
    vkaus TYPE c LENGTH 000003 ##TYPSHADOW .
  TYPES:
    gewei_iso TYPE c LENGTH 000003 ##TYPSHADOW .
  TYPES:
    voleh_iso TYPE c LENGTH 000003 ##TYPSHADOW .
  TYPES:
    nachl TYPE c LENGTH 000001 ##TYPSHADOW .
  TYPES:
    exart TYPE c LENGTH 000002 ##TYPSHADOW .
  TYPES:
    kannr TYPE c LENGTH 000035 ##TYPSHADOW .
  TYPES:
    faktf TYPE c LENGTH 000002 ##TYPSHADOW .
  TYPES:
    rr_reltyp TYPE c LENGTH 000001 ##TYPSHADOW .
  TYPES:
    rr_acdatv TYPE c LENGTH 000001 ##TYPSHADOW .
  TYPES:
    pmatn18 TYPE c LENGTH 000018 ##TYPSHADOW .
  TYPES:
    j_1bcfop_old TYPE c LENGTH 000005 ##TYPSHADOW .
  TYPES:
    j_1btaxlw1 TYPE c LENGTH 000003 ##TYPSHADOW .
  TYPES:
    j_1btaxlw2 TYPE c LENGTH 000003 ##TYPSHADOW .
  TYPES:
    j_1btxsdc_ TYPE c LENGTH 000002 ##TYPSHADOW .
  TYPES:
    w_sortk TYPE c LENGTH 000018 ##TYPSHADOW .
  TYPES:
    kurrf_v TYPE p LENGTH 000005 DECIMALS 000005 ##TYPSHADOW .
  TYPES:
    kursk_v TYPE p LENGTH 000005 DECIMALS 000005 ##TYPSHADOW .
  TYPES:
    posguid TYPE c LENGTH 000022 ##TYPSHADOW .
  TYPES:
    cuxcfg_id TYPE c LENGTH 000006 ##TYPSHADOW .
  TYPES:
    mgv_material_external TYPE c LENGTH 000040 ##TYPSHADOW .
  TYPES:
    mgv_material_guid TYPE c LENGTH 000032 ##TYPSHADOW .
  TYPES:
    mgv_material_version TYPE c LENGTH 000010 ##TYPSHADOW .
  TYPES:
    mgv_pr_ref_mat_external TYPE c LENGTH 000040 ##TYPSHADOW .
  TYPES:
    mgv_pr_ref_mat_guid TYPE c LENGTH 000032 ##TYPSHADOW .
  TYPES:
    mgv_pr_ref_mat_version TYPE c LENGTH 000010 ##TYPSHADOW .
  TYPES:
    fkber_short TYPE c LENGTH 000004 ##TYPSHADOW .
  TYPES:
    char12 TYPE c LENGTH 000012 ##TYPSHADOW .
  TYPES:
    crm_fkrel TYPE c LENGTH 000001 ##TYPSHADOW .
  TYPES:
    j_1bcfop_long TYPE c LENGTH 000010 ##TYPSHADOW .
  TYPES:
    vbx_sel_id TYPE c LENGTH 000032 ##TYPSHADOW .
  TYPES:
    matwa18 TYPE c LENGTH 000018 ##TYPSHADOW .
  TYPES:
    mgv_mat_entrd_external TYPE c LENGTH 000040 ##TYPSHADOW .
  TYPES:
    mgv_mat_entrd_guid TYPE c LENGTH 000032 ##TYPSHADOW .
  TYPES:
    mgv_mat_entrd_version TYPE c LENGTH 000010 ##TYPSHADOW .
  TYPES:
    j_1atxrel_ TYPE c LENGTH 000010 ##TYPSHADOW .
  TYPES:
    cmp_compreas_copy TYPE c LENGTH 000004 ##TYPSHADOW .
  TYPES:
    j_1btaxlw5 TYPE c LENGTH 000003 ##TYPSHADOW .
  TYPES:
    sgt_rcat16 TYPE c LENGTH 000016 ##TYPSHADOW .
  TYPES:
    fmfg_core_tp_sublevl TYPE c LENGTH 000002 ##TYPSHADOW .
  TYPES:
    fmfg_core_tp_agencid TYPE c LENGTH 000003 ##TYPSHADOW .
  TYPES:
    fmfg_core_tp_altraid TYPE c LENGTH 000003 ##TYPSHADOW .
  TYPES:
    fmfg_core_tp_begper TYPE n LENGTH 000004 ##TYPSHADOW .
  TYPES:
    fmfg_core_tp_endper TYPE n LENGTH 000004 ##TYPSHADOW .
  TYPES:
    fmfg_core_tp_avtype TYPE c LENGTH 000001 ##TYPSHADOW .
  TYPES:
    fmfg_core_tp_main_acct TYPE c LENGTH 000004 ##TYPSHADOW .
  TYPES:
    fmfg_core_tp_sub_acct TYPE c LENGTH 000003 ##TYPSHADOW .
  TYPES:
    fmfg_core_tp_betc TYPE c LENGTH 000010 ##TYPSHADOW .
  TYPES:
    revacc_refid TYPE c LENGTH 000030 ##TYPSHADOW .
  TYPES:
    revacc_reftype TYPE c LENGTH 000003 ##TYPSHADOW .
  TYPES:
    pmatn40 TYPE c LENGTH 000040 ##TYPSHADOW .
  TYPES:
    matwa40 TYPE c LENGTH 000040 ##TYPSHADOW .
  TYPES:
    sgt_rcat40 TYPE c LENGTH 000040 ##TYPSHADOW .
  TYPES:
    txs_business_transaction TYPE c LENGTH 000004 ##TYPSHADOW .
  TYPES:
    txs_material_usage TYPE c LENGTH 000001 ##TYPSHADOW .
  TYPES:
    txs_usage_purpose TYPE c LENGTH 000025 ##TYPSHADOW .
  TYPES:
    BEGIN OF bapisditm ,
      itm_number               TYPE posnr_va,
      hg_lv_item               TYPE uepos,
      po_itm_no                TYPE posex,
      material                 TYPE matnr18,
      alt_to_itm               TYPE grpos,
      cust_mat22               TYPE matnr_ku1,
      batch                    TYPE charg_d,
      dlv_group                TYPE grkor,
      part_dlv                 TYPE kztlf,
      reason_rej               TYPE abgru,
      bill_block               TYPE faksp,
      bill_date                TYPE fkdat,
      plant                    TYPE werks_d,
      store_loc                TYPE lgort_d,
      target_qty               TYPE dzmeng,
      target_qu                TYPE dzieme,
      t_unit_iso               TYPE iso_zieme,
      item_categ               TYPE pstyv,
      short_text               TYPE arktx,
      prc_group1               TYPE mvgr1,
      prc_group2               TYPE mvgr2,
      prc_group3               TYPE mvgr3,
      prc_group4               TYPE mvgr4,
      prc_group5               TYPE mvgr5,
      prod_hiera               TYPE prodh_d,
      matl_group               TYPE matkl,
      purch_no_c               TYPE bstkd,
      purch_date               TYPE bstdk,
      po_method                TYPE bsark,
      ref_1                    TYPE ihrez,
      purch_no_s               TYPE bstkd_e,
      po_dat_s                 TYPE bstdk_e,
      po_meth_s                TYPE bsark_e,
      ref_1_s                  TYPE ihrez_e,
      poitm_no_s               TYPE posex_e,
      price_grp                TYPE konda,
      cust_group               TYPE kdgrp,
      sales_dist               TYPE bzirk,
      price_list               TYPE pltyp,
      incoterms1               TYPE inco1,
      incoterms2               TYPE inco2,
      ordcomp_in               TYPE kzazu_d,
      bill_sched               TYPE perfk,
      invo_sched               TYPE perrl,
      mn_invoice               TYPE mrnkz,
      ex_rate_fi               TYPE kurrf_p,
      add_val_dy               TYPE valtg,
      fix_val_dy               TYPE valdt,
      pmnttrms                 TYPE dzterm,
      pymt_meth                TYPE dzlsch,
      accnt_asgn               TYPE ktgrd,
      exchg_rate               TYPE kursk_p,
      price_date               TYPE prsdt,
      serv_date                TYPE fbuda,
      dunn_key                 TYPE mschl,
      dunn_block               TYPE mansp,
      promotion                TYPE waktion,
      pmtgar_pro               TYPE abssche_cm,
      doc_num_fi               TYPE lcnum,
      departm_no               TYPE abtnr,
      rec_point                TYPE empst,
      cstcndgrp1               TYPE kdkg1,
      cstcndgrp2               TYPE kdkg2,
      cstcndgrp3               TYPE kdkg3,
      cstcndgrp4               TYPE kdkg4,
      cstcndgrp5               TYPE kdkg5,
      dlv_time                 TYPE delco,
      sales_unit               TYPE vrkme,
      s_unit_iso               TYPE isocd_unit,
      trg_qty_no               TYPE umziz,
      trgqty_den               TYPE umzin,
      rnddlv_qty               TYPE ablfz,
      maxdevamnt               TYPE absfz,
      maxdevper                TYPE kbver,
      maxdev_day               TYPE kever,
      usage_ind                TYPE vkaus,
      fixed_quan               TYPE fmeng,
      unlmt_dlv                TYPE uebtk,
      overdlvtol               TYPE uebto,
      unddlv_tol               TYPE untto,
      division                 TYPE spart,
      salqtynum                TYPE umvkz,
      salqtyden                TYPE umvkn,
      gross_wght               TYPE brgew_ap,
      net_weight               TYPE ntgew_ap,
      untof_wght               TYPE gewei,
      unof_wtiso               TYPE gewei_iso,
      volume                   TYPE volum_ap,
      volunit                  TYPE voleh,
      volunitiso               TYPE voleh_iso,
      dlv_prio                 TYPE lprio,
      ship_point               TYPE vstel,
      route                    TYPE route,
      created_by               TYPE ernam,
      tax_class1               TYPE taxmt,
      tax_class2               TYPE taxmt,
      tax_class3               TYPE taxmt,
      tax_class4               TYPE taxmt,
      tax_class5               TYPE taxmt,
      tax_class6               TYPE taxmt,
      tax_class7               TYPE taxmt,
      tax_class8               TYPE taxmt,
      tax_class9               TYPE taxmt,
      mat_pr_grp               TYPE kondm,
      val_type                 TYPE bwtar_d,
      fixdat_qty               TYPE fixmg,
      bomexpl_no               TYPE sernr,
      resanalkey               TYPE abgr_schl,
      reqmts_typ               TYPE bedae,
      no_gr_post               TYPE nachl,
      bus_transt               TYPE exart,
      overhd_key               TYPE aufzschl,
      cstg_sheet               TYPE aufkalsm,
      matfrgtgrp               TYPE mfrgr,
      pldlvshdin               TYPE plavo,
      seq_no                   TYPE kannr,
      bil_form                 TYPE faktf,
      dli_profil               TYPE ad01profnr,
      rev_type                 TYPE rr_reltyp,
      begdem_per               TYPE rr_acdatv,
      pr_ref_mat               TYPE pmatn18,
      refobjtype               TYPE swo_objtyp,
      refobjkey                TYPE swo_typeid,
      reflogsys                TYPE logsys,
      order_prob               TYPE awahr,
      max_pl_dlv               TYPE antlf,
      cfop_code                TYPE j_1bcfop_old,
      taxlawicms               TYPE j_1btaxlw1,
      taxlawipi                TYPE j_1btaxlw2,
      sd_taxcode               TYPE j_1btxsdc_,
      assort_mod               TYPE w_sortk,
      comp_quant               TYPE kmpmg,
      target_val               TYPE bapicurext,
      currency                 TYPE waerk,
      curr_iso                 TYPE waers_iso,
      profit_ctr               TYPE prctr,
      orderid                  TYPE aufnr,
      wbs_elem                 TYPE ps_posid,
      deprec_per               TYPE akprz,
      ref_doc                  TYPE vgbel,
      ref_doc_it               TYPE vgpos,
      ref_doc_ca               TYPE vbtyp_v,
      cust_mat35               TYPE kdmat,
      exch_rate_fi_v           TYPE kurrf_v,
      exchg_rate_v             TYPE kursk_v,
      itemguid_atp             TYPE posguid,
      val_contr                TYPE wktnr,
      val_con_i                TYPE wktps,
      config_id                TYPE cuxcfg_id,
      inst_id                  TYPE cu_inst_id,
      mat_ext                  TYPE mgv_material_external,
      mat_guid                 TYPE mgv_material_guid,
      mat_vers                 TYPE mgv_material_version,
      p_mat_ext                TYPE mgv_pr_ref_mat_external,
      p_mat_guid               TYPE mgv_pr_ref_mat_guid,
      p_mat_vers               TYPE mgv_pr_ref_mat_version,
      func_area                TYPE fkber_short,
      altern_bom               TYPE stlal,
      fkk_conacct              TYPE char12,
      ean_upc                  TYPE ean11,
      prodcat                  TYPE wminr,
      ship_type                TYPE vsarttr,
      s_proc_ind               TYPE sdabw,
      func_area_long           TYPE fkber,
      bill_rel                 TYPE crm_fkrel,
      vw_uepos                 TYPE uepvw,
      campaign                 TYPE cgpl_guid16_r3,
      dlvschduse               TYPE abrvw,
      cfop_long                TYPE j_1bcfop_long,
      selection                TYPE vbx_sel_id,
      mat_entrd                TYPE matwa18,
      log_system_own           TYPE logsys,
      itm_type_usage           TYPE vwpos,
      taxlawiss                TYPE j_1btaxlw3,
      mat_entrd_external       TYPE mgv_mat_entrd_external,
      mat_entrd_guid           TYPE mgv_mat_entrd_guid,
      mat_entrd_version        TYPE mgv_mat_entrd_version,
      loc_taxcat               TYPE j_1afitp_d,
      loc_zerovat              TYPE j_1arfzvat,
      loc_actcode              TYPE j_1agicd_d,
      loc_disttype             TYPE j_1adtyp_d,
      loc_txrelclas            TYPE j_1atxrel_,
      calc_motive              TYPE bemot,
      compreas                 TYPE cmp_compreas_copy,
      fund                     TYPE bp_geber,
      funds_ctr                TYPE fistl,
      cmmt_item                TYPE fm_fipex,
      grant_nbr                TYPE gm_grant_nbr,
      budget_period            TYPE fm_budget_period,
      taxlawcofins             TYPE j_1btaxlw4,
      taxlawpis                TYPE j_1btaxlw5,
      treasury_acc_symbol      TYPE psm_tas,
      business_event_tcode     TYPE psm_betc,
      modification_allowed     TYPE psm_mod_allow,
      cancellation_allowed     TYPE psm_canc_allow,
      payment_methods          TYPE dzwels,
      business_partner_no      TYPE psm_bpn,
      reporting_freq           TYPE psm_rep_freq,
      sepa_mandate_id          TYPE sepa_mndid,
      req_segment              TYPE sgt_rcat16,
      tp_sublevl               TYPE fmfg_core_tp_sublevl,
      tp_agencid               TYPE fmfg_core_tp_agencid,
      tp_altraid               TYPE fmfg_core_tp_altraid,
      tp_begper                TYPE fmfg_core_tp_begper,
      tp_endper                TYPE fmfg_core_tp_endper,
      tp_avtype                TYPE fmfg_core_tp_avtype,
      tp_main_acct             TYPE fmfg_core_tp_main_acct,
      tp_sub_acct              TYPE fmfg_core_tp_sub_acct,
      tp_betc                  TYPE fmfg_core_tp_betc,
      revacc_refid             TYPE revacc_refid,
      revacc_reftype           TYPE revacc_reftype,
      ref_doc_ca_long          TYPE vbtypl,
      incotermsv               TYPE incov,
      incoterms2l              TYPE inco2_l,
      incoterms3l              TYPE inco3_l,
      material_long            TYPE matnr40,
      pr_ref_mat_long          TYPE pmatn40,
      mat_entrd_long           TYPE matwa40,
      po_quan                  TYPE bstmg,
      po_unit                  TYPE bstme,
      req_seg_long             TYPE sgt_rcat40,
      txs_business_transaction TYPE txs_business_transaction,
      txs_material_usage       TYPE txs_material_usage,
      txs_usage_purpose        TYPE txs_usage_purpose,
      service_doc_type         TYPE fco_srvdoc_type,
      service_doc_id           TYPE fco_srvdoc_id,
      service_doc_item_id      TYPE fco_srvdoc_item_id,
    END OF bapisditm ##TYPSHADOW .
  TYPES:
    _bapisditm                     TYPE STANDARD TABLE OF bapisditm                      WITH DEFAULT KEY ##TYPSHADOW .
  TYPES:
    BEGIN OF bapisditmx ,
      itm_number               TYPE posnr_va,
      updateflag               TYPE updkz_d,
      hg_lv_item               TYPE bapiupdate,
      po_itm_no                TYPE bapiupdate,
      material                 TYPE bapiupdate,
      alt_to_itm               TYPE bapiupdate,
      cust_mat22               TYPE bapiupdate,
      batch                    TYPE bapiupdate,
      dlv_group                TYPE bapiupdate,
      part_dlv                 TYPE bapiupdate,
      reason_rej               TYPE bapiupdate,
      bill_block               TYPE bapiupdate,
      bill_date                TYPE bapiupdate,
      plant                    TYPE bapiupdate,
      store_loc                TYPE bapiupdate,
      target_qty               TYPE bapiupdate,
      target_qu                TYPE bapiupdate,
      t_unit_iso               TYPE bapiupdate,
      item_categ               TYPE bapiupdate,
      short_text               TYPE bapiupdate,
      prc_group1               TYPE bapiupdate,
      prc_group2               TYPE bapiupdate,
      prc_group3               TYPE bapiupdate,
      prc_group4               TYPE bapiupdate,
      prc_group5               TYPE bapiupdate,
      prod_hiera               TYPE bapiupdate,
      matl_group               TYPE bapiupdate,
      purch_no_c               TYPE bapiupdate,
      purch_date               TYPE bapiupdate,
      po_method                TYPE bapiupdate,
      ref_1                    TYPE bapiupdate,
      purch_no_s               TYPE bapiupdate,
      po_dat_s                 TYPE bapiupdate,
      po_meth_s                TYPE bapiupdate,
      ref_1_s                  TYPE bapiupdate,
      poitm_no_s               TYPE bapiupdate,
      price_grp                TYPE bapiupdate,
      cust_group               TYPE bapiupdate,
      sales_dist               TYPE bapiupdate,
      price_list               TYPE bapiupdate,
      incoterms1               TYPE bapiupdate,
      incoterms2               TYPE bapiupdate,
      ordcomp_in               TYPE bapiupdate,
      bill_sched               TYPE bapiupdate,
      invo_sched               TYPE bapiupdate,
      mn_invoice               TYPE bapiupdate,
      ex_rate_fi               TYPE bapiupdate,
      add_val_dy               TYPE bapiupdate,
      fix_val_dy               TYPE bapiupdate,
      pmnttrms                 TYPE bapiupdate,
      pymt_meth                TYPE bapiupdate,
      accnt_asgn               TYPE bapiupdate,
      exchg_rate               TYPE bapiupdate,
      price_date               TYPE bapiupdate,
      serv_date                TYPE bapiupdate,
      dunn_key                 TYPE bapiupdate,
      dunn_block               TYPE bapiupdate,
      promotion                TYPE bapiupdate,
      pmtgar_pro               TYPE bapiupdate,
      doc_num_fi               TYPE bapiupdate,
      departm_no               TYPE bapiupdate,
      rec_point                TYPE bapiupdate,
      cstcndgrp1               TYPE bapiupdate,
      cstcndgrp2               TYPE bapiupdate,
      cstcndgrp3               TYPE bapiupdate,
      cstcndgrp4               TYPE bapiupdate,
      cstcndgrp5               TYPE bapiupdate,
      dlv_time                 TYPE bapiupdate,
      sales_unit               TYPE bapiupdate,
      trg_qty_no               TYPE bapiupdate,
      trgqty_den               TYPE bapiupdate,
      rnddlv_qty               TYPE bapiupdate,
      maxdevamnt               TYPE bapiupdate,
      maxdevper                TYPE bapiupdate,
      maxdev_day               TYPE bapiupdate,
      usage_ind                TYPE bapiupdate,
      fixed_quan               TYPE bapiupdate,
      unlmt_dlv                TYPE bapiupdate,
      overdlvtol               TYPE bapiupdate,
      unddlv_tol               TYPE bapiupdate,
      division                 TYPE bapiupdate,
      salqtynum                TYPE bapiupdate,
      salqtyden                TYPE bapiupdate,
      gross_wght               TYPE bapiupdate,
      net_weight               TYPE bapiupdate,
      untof_wght               TYPE bapiupdate,
      volume                   TYPE bapiupdate,
      volunit                  TYPE bapiupdate,
      dlv_prio                 TYPE bapiupdate,
      ship_point               TYPE bapiupdate,
      route                    TYPE bapiupdate,
      tax_class1               TYPE bapiupdate,
      tax_class2               TYPE bapiupdate,
      tax_class3               TYPE bapiupdate,
      tax_class4               TYPE bapiupdate,
      tax_class5               TYPE bapiupdate,
      tax_class6               TYPE bapiupdate,
      tax_class7               TYPE bapiupdate,
      tax_class8               TYPE bapiupdate,
      tax_class9               TYPE bapiupdate,
      mat_pr_grp               TYPE bapiupdate,
      val_type                 TYPE bapiupdate,
      fixdat_qty               TYPE bapiupdate,
      bomexpl_no               TYPE bapiupdate,
      resanalkey               TYPE bapiupdate,
      reqmts_typ               TYPE bapiupdate,
      no_gr_post               TYPE bapiupdate,
      bus_transt               TYPE bapiupdate,
      overhd_key               TYPE bapiupdate,
      cstg_sheet               TYPE bapiupdate,
      matfrgtgrp               TYPE bapiupdate,
      pldlvshdin               TYPE bapiupdate,
      seq_no                   TYPE bapiupdate,
      bil_form                 TYPE bapiupdate,
      dli_profil               TYPE bapiupdate,
      rev_type                 TYPE bapiupdate,
      begdem_per               TYPE bapiupdate,
      pr_ref_mat               TYPE bapiupdate,
      refobjtype               TYPE bapiupdate,
      refobjkey                TYPE bapiupdate,
      reflogsys                TYPE bapiupdate,
      order_prob               TYPE bapiupdate,
      max_pl_dlv               TYPE bapiupdate,
      cfop_code                TYPE bapiupdate,
      taxlawicms               TYPE bapiupdate,
      taxlawipi                TYPE bapiupdate,
      sd_taxcode               TYPE bapiupdate,
      assort_mod               TYPE bapiupdate,
      comp_quant               TYPE bapiupdate,
      target_val               TYPE bapiupdate,
      profit_ctr               TYPE bapiupdate,
      orderid                  TYPE bapiupdate,
      wbs_elem                 TYPE bapiupdate,
      deprec_per               TYPE bapiupdate,
      ref_doc                  TYPE bapiupdate,
      ref_doc_it               TYPE bapiupdate,
      ref_doc_ca               TYPE bapiupdate,
      cust_mat35               TYPE bapiupdate,
      exch_rate_fi_v           TYPE bapiupdate,
      exchg_rate_v             TYPE bapiupdate,
      itemguid_atp             TYPE bapiupdate,
      val_contr                TYPE bapiupdate,
      val_con_i                TYPE bapiupdate,
      config_id                TYPE bapiupdate,
      inst_id                  TYPE bapiupdate,
      mat_ext                  TYPE bapiupdate,
      mat_guid                 TYPE bapiupdate,
      mat_vers                 TYPE bapiupdate,
      p_mat_ext                TYPE bapiupdate,
      p_mat_guid               TYPE bapiupdate,
      p_mat_vers               TYPE bapiupdate,
      func_area                TYPE bapiupdate,
      altern_bom               TYPE bapiupdate,
      fkk_conacct              TYPE bapiupdate,
      ean_upc                  TYPE bapiupdate,
      prodcat                  TYPE bapiupdate,
      ship_type                TYPE bapiupdate,
      s_proc_ind               TYPE bapiupdate,
      bill_rel                 TYPE bapiupdate,
      vw_uepos                 TYPE bapiupdate,
      campaign                 TYPE bapiupdate,
      dlvschduse               TYPE bapiupdate,
      selection                TYPE bapiupdate,
      mat_entrd                TYPE bapiupdate,
      log_system_own           TYPE bapiupdate,
      itm_type_usage           TYPE bapiupdate,
      mat_entrd_external       TYPE bapiupdate,
      mat_entrd_guid           TYPE bapiupdate,
      mat_entrd_version        TYPE bapiupdate,
      loc_taxcat               TYPE bapiupdate,
      loc_zerovat              TYPE bapiupdate,
      loc_actcode              TYPE bapiupdate,
      loc_disttype             TYPE bapiupdate,
      loc_txrelclas            TYPE bapiupdate,
      calc_motive              TYPE bapiupdate,
      fund                     TYPE bapiupdate,
      funds_ctr                TYPE bapiupdate,
      cmmt_item                TYPE bapiupdate,
      grant_nbr                TYPE bapiupdate,
      budget_period            TYPE bapiupdate,
      taxlawiss                TYPE bapiupdate,
      taxlawcofins             TYPE bapiupdate,
      taxlawpis                TYPE bapiupdate,
      treasury_acc_symbol      TYPE bapiupdate,
      business_event_tcode     TYPE bapiupdate,
      modification_allowed     TYPE bapiupdate,
      cancellation_allowed     TYPE bapiupdate,
      payment_methods          TYPE bapiupdate,
      business_partner_no      TYPE bapiupdate,
      reporting_freq           TYPE bapiupdate,
      cfop_long                TYPE bapiupdate,
      sepa_mandate_id          TYPE bapiupdate,
      req_segment              TYPE bapiupdate,
      tp_sublevl               TYPE bapiupdate,
      tp_agencid               TYPE bapiupdate,
      tp_altraid               TYPE bapiupdate,
      tp_begper                TYPE bapiupdate,
      tp_endper                TYPE bapiupdate,
      tp_avtype                TYPE bapiupdate,
      tp_main_acct             TYPE bapiupdate,
      tp_sub_acct              TYPE bapiupdate,
      tp_betc                  TYPE bapiupdate,
      revacc_refid             TYPE bapiupdate,
      revacc_reftype           TYPE bapiupdate,
      ref_doc_ca_long          TYPE bapiupdate,
      incotermsv               TYPE bapiupdate,
      incoterms2l              TYPE bapiupdate,
      incoterms3l              TYPE bapiupdate,
      material_long            TYPE bapiupdate,
      pr_ref_mat_long          TYPE bapiupdate,
      mat_entrd_long           TYPE bapiupdate,
      po_quan                  TYPE bapiupdate,
      po_unit                  TYPE bapiupdate,
      req_seg_long             TYPE bapiupdate,
      txs_business_transaction TYPE bapiupdate,
      txs_material_usage       TYPE bapiupdate,
      txs_usage_purpose        TYPE bapiupdate,
      service_doc_type         TYPE bapiupdate,
      service_doc_id           TYPE bapiupdate,
      service_doc_item_id      TYPE bapiupdate,
    END OF bapisditmx ##TYPSHADOW .
  TYPES:
    _bapisditmx                    TYPE STANDARD TABLE OF bapisditmx                     WITH DEFAULT KEY ##TYPSHADOW .
  TYPES:
    swc_objede TYPE c LENGTH 000032 ##TYPSHADOW .
  TYPES:
    num06 TYPE n LENGTH 000006 ##TYPSHADOW .
  TYPES:
    adrnr TYPE c LENGTH 000010 ##TYPSHADOW .
  TYPES:
    BEGIN OF bapisdkey                     ,
      refobjtyp       TYPE swo_objtyp,
      refobject       TYPE swc_objede,
      refobjkey       TYPE swo_typeid,
      reflogsys       TYPE logsys,
      doc_number      TYPE vbeln,
      itm_number      TYPE posnr_va,
      sched_lin       TYPE etenr,
      cond_no         TYPE knumv,
      conditemno      TYPE kposn,
      cond_st_no      TYPE stunr,
      cond_count      TYPE dzaehk_short,
      cond_type       TYPE kscha,
      status          TYPE char1,
      tindex          TYPE num06,
      address         TYPE adrnr,
      abrli           TYPE abrli,
      abart           TYPE abart,
      cond_count_long TYPE dzaehk,
    END OF bapisdkey                      ##TYPSHADOW .
  TYPES:
    _bapisdkey                     TYPE STANDARD TABLE OF bapisdkey                      WITH DEFAULT KEY ##TYPSHADOW .
  TYPES:
    tdid TYPE c LENGTH 000004 ##TYPSHADOW .
  TYPES:
    tdformat TYPE c LENGTH 000002 ##TYPSHADOW .
  TYPES:
    tdline TYPE c LENGTH 000132 ##TYPSHADOW .
  TYPES:
    msgfn TYPE c LENGTH 000003 ##TYPSHADOW .
  TYPES:
    BEGIN OF bapisdtext                    ,
      doc_number TYPE vbeln_va,
      itm_number TYPE posnr_va,
      text_id    TYPE tdid,
      langu      TYPE spras,
      langu_iso  TYPE laiso,
      format_col TYPE tdformat,
      text_line  TYPE tdline,
      function   TYPE msgfn,
    END OF bapisdtext                     ##TYPSHADOW .
  TYPES:
    _bapisdtext                    TYPE STANDARD TABLE OF bapisdtext                     WITH DEFAULT KEY ##TYPSHADOW .
  TYPES:
    ad_title_t TYPE c LENGTH 000020 ##TYPSHADOW .
  TYPES:
    ad_name1 TYPE c LENGTH 000040 ##TYPSHADOW .
  TYPES:
    ad_name2 TYPE c LENGTH 000040 ##TYPSHADOW .
  TYPES:
    ad_name3 TYPE c LENGTH 000040 ##TYPSHADOW .
  TYPES:
    ad_name4 TYPE c LENGTH 000040 ##TYPSHADOW .
  TYPES:
    ad_name_co TYPE c LENGTH 000040 ##TYPSHADOW .
  TYPES:
    ad_city1 TYPE c LENGTH 000040 ##TYPSHADOW .
  TYPES:
    ad_city2 TYPE c LENGTH 000040 ##TYPSHADOW .
  TYPES:
    ad_citynum TYPE c LENGTH 000012 ##TYPSHADOW .
  TYPES:
    ad_pstcd2 TYPE c LENGTH 000010 ##TYPSHADOW .
  TYPES:
    ad_pstcd3 TYPE c LENGTH 000010 ##TYPSHADOW .
  TYPES:
    ad_pobx TYPE c LENGTH 000010 ##TYPSHADOW .
  TYPES:
    ad_pobxloc TYPE c LENGTH 000040 ##TYPSHADOW .
  TYPES:
    ad_pstlar TYPE c LENGTH 000015 ##TYPSHADOW .
  TYPES:
    ad_str_old TYPE c LENGTH 000040 ##TYPSHADOW .
  TYPES:
    ad_strnum TYPE c LENGTH 000012 ##TYPSHADOW .
  TYPES:
    ad_strabbr TYPE c LENGTH 000002 ##TYPSHADOW .
  TYPES:
    ad_hsnm1 TYPE c LENGTH 000010 ##TYPSHADOW .
  TYPES:
    ad_strspp1 TYPE c LENGTH 000040 ##TYPSHADOW .
  TYPES:
    ad_strspp2 TYPE c LENGTH 000040 ##TYPSHADOW .
  TYPES:
    ad_lctn TYPE c LENGTH 000040 ##TYPSHADOW .
  TYPES:
    ad_bld_old TYPE c LENGTH 000010 ##TYPSHADOW .
  TYPES:
    ad_floor TYPE c LENGTH 000010 ##TYPSHADOW .
  TYPES:
    ad_roomnum TYPE c LENGTH 000010 ##TYPSHADOW .
  TYPES:
    ad_sort1 TYPE c LENGTH 000020 ##TYPSHADOW .
  TYPES:
    ad_sort2 TYPE c LENGTH 000020 ##TYPSHADOW .
  TYPES:
    ad_tzone TYPE c LENGTH 000006 ##TYPSHADOW .
  TYPES:
    ad_txjcd TYPE c LENGTH 000015 ##TYPSHADOW .
  TYPES:
    ad_remark1 TYPE c LENGTH 000050 ##TYPSHADOW .
  TYPES:
    ad_comm TYPE c LENGTH 000003 ##TYPSHADOW .
  TYPES:
    ad_tlnmbr1 TYPE c LENGTH 000030 ##TYPSHADOW .
  TYPES:
    ad_tlxtns1 TYPE c LENGTH 000010 ##TYPSHADOW .
  TYPES:
    ad_fxnmbr1 TYPE c LENGTH 000030 ##TYPSHADOW .
  TYPES:
    ad_fxxtns1 TYPE c LENGTH 000010 ##TYPSHADOW .
  TYPES:
    ad_street TYPE c LENGTH 000060 ##TYPSHADOW .
  TYPES:
    ad_citypnm TYPE c LENGTH 000008 ##TYPSHADOW .
  TYPES:
    ad_checkst TYPE c LENGTH 000001 ##TYPSHADOW .
  TYPES:
    ad_cit2num TYPE c LENGTH 000012 ##TYPSHADOW .
  TYPES:
    lzone TYPE c LENGTH 000010 ##TYPSHADOW .
  TYPES:
    ad_hsnm2 TYPE c LENGTH 000010 ##TYPSHADOW .
  TYPES:
    ad_smtpadr TYPE c LENGTH 000241 ##TYPSHADOW .
  TYPES:
    ad_strspp3 TYPE c LENGTH 000040 ##TYPSHADOW .
  TYPES:
    ad_bldng TYPE c LENGTH 000020 ##TYPSHADOW .
  TYPES:
    regiogroup TYPE c LENGTH 000008 ##TYPSHADOW .
  TYPES:
    ad_city3 TYPE c LENGTH 000040 ##TYPSHADOW .
  TYPES:
    ad_cityhnm TYPE c LENGTH 000012 ##TYPSHADOW .
  TYPES:
    ad_pst1xt TYPE c LENGTH 000010 ##TYPSHADOW .
  TYPES:
    ad_pst2xt TYPE c LENGTH 000010 ##TYPSHADOW .
  TYPES:
    ad_pst3xt TYPE c LENGTH 000010 ##TYPSHADOW .
  TYPES:
    ad_pobxnum TYPE c LENGTH 000001 ##TYPSHADOW .
  TYPES:
    ad_pobxreg TYPE c LENGTH 000003 ##TYPSHADOW .
  TYPES:
    ad_pobxcty TYPE c LENGTH 000003 ##TYPSHADOW .
  TYPES:
    ad_uriscr TYPE c LENGTH 000132 ##TYPSHADOW .
  TYPES:
    ad_no_uses TYPE c LENGTH 000004 ##TYPSHADOW .
  TYPES:
    ad_no_usep TYPE c LENGTH 000004 ##TYPSHADOW .
  TYPES:
    ad_hsnm3 TYPE c LENGTH 000010 ##TYPSHADOW .
  TYPES:
    ad_langucr TYPE c LENGTH 000001 ##TYPSHADOW .
  TYPES:
    ad_po_box_lby TYPE c LENGTH 000040 ##TYPSHADOW .
  TYPES:
    ad_delivery_service_type TYPE c LENGTH 000004 ##TYPSHADOW .
  TYPES:
    ad_delivery_service_number TYPE c LENGTH 000010 ##TYPSHADOW .
  TYPES:
    ad_uritype TYPE c LENGTH 000003 ##TYPSHADOW .
  TYPES:
    ad_cntynum TYPE c LENGTH 000008 ##TYPSHADOW .
  TYPES:
    ad_county TYPE c LENGTH 000040 ##TYPSHADOW .
  TYPES:
    ad_twshpnum TYPE c LENGTH 000008 ##TYPSHADOW .
  TYPES:
    ad_township TYPE c LENGTH 000040 ##TYPSHADOW .
  TYPES:
    ad_xpcpt TYPE c LENGTH 000001 ##TYPSHADOW .
  TYPES:
    BEGIN OF bapiaddr1                     ,
      addr_no          TYPE ad_addrnum,
      formofaddr       TYPE ad_title_t,
      name             TYPE ad_name1,
      name_2           TYPE ad_name2,
      name_3           TYPE ad_name3,
      name_4           TYPE ad_name4,
      c_o_name         TYPE ad_name_co,
      city             TYPE ad_city1,
      district         TYPE ad_city2,
      city_no          TYPE ad_citynum,
      postl_cod1       TYPE ad_pstcd1,
      postl_cod2       TYPE ad_pstcd2,
      postl_cod3       TYPE ad_pstcd3,
      po_box           TYPE ad_pobx,
      po_box_cit       TYPE ad_pobxloc,
      deliv_dis        TYPE ad_pstlar,
      street           TYPE ad_str_old,
      street_no        TYPE ad_strnum,
      str_abbr         TYPE ad_strabbr,
      house_no         TYPE ad_hsnm1,
      str_suppl1       TYPE ad_strspp1,
      str_suppl2       TYPE ad_strspp2,
      location         TYPE ad_lctn,
      building         TYPE ad_bld_old,
      floor            TYPE ad_floor,
      room_no          TYPE ad_roomnum,
      country          TYPE land1,
      langu            TYPE spras,
      region           TYPE regio,
      sort1            TYPE ad_sort1,
      sort2            TYPE ad_sort2,
      time_zone        TYPE ad_tzone,
      taxjurcode       TYPE ad_txjcd,
      adr_notes        TYPE ad_remark1,
      comm_type        TYPE ad_comm,
      tel1_numbr       TYPE ad_tlnmbr1,
      tel1_ext         TYPE ad_tlxtns1,
      fax_number       TYPE ad_fxnmbr1,
      fax_extens       TYPE ad_fxxtns1,
      street_lng       TYPE ad_street,
      distrct_no       TYPE ad_citypnm,
      chckstatus       TYPE ad_checkst,
      pboxcit_no       TYPE ad_cit2num,
      transpzone       TYPE lzone,
      house_no2        TYPE ad_hsnm2,
      e_mail           TYPE ad_smtpadr,
      str_suppl3       TYPE ad_strspp3,
      title            TYPE ad_titletx,
      countryiso       TYPE intca,
      langu_iso        TYPE laiso,
      build_long       TYPE ad_bldng,
      regiogroup       TYPE regiogroup,
      home_city        TYPE ad_city3,
      homecityno       TYPE ad_cityhnm,
      pcode1_ext       TYPE ad_pst1xt,
      pcode2_ext       TYPE ad_pst2xt,
      pcode3_ext       TYPE ad_pst3xt,
      po_w_o_no        TYPE ad_pobxnum,
      po_box_reg       TYPE ad_pobxreg,
      pobox_ctry       TYPE ad_pobxcty,
      po_ctryiso       TYPE intca,
      homepage         TYPE ad_uriscr,
      dont_use_s       TYPE ad_no_uses,
      dont_use_p       TYPE ad_no_usep,
      house_no3        TYPE ad_hsnm3,
      langu_cr         TYPE ad_langucr,
      langucriso       TYPE laiso,
      po_box_lobby     TYPE ad_po_box_lby,
      deli_serv_type   TYPE ad_delivery_service_type,
      deli_serv_number TYPE ad_delivery_service_number,
      uri_type         TYPE ad_uritype,
      county_code      TYPE ad_cntynum,
      county           TYPE ad_county,
      township_code    TYPE ad_twshpnum,
      township         TYPE ad_township,
      xpcpt            TYPE ad_xpcpt,
    END OF bapiaddr1                      ##TYPSHADOW .
  TYPES:
    _bapiaddr1                     TYPE STANDARD TABLE OF bapiaddr1                      WITH DEFAULT KEY ##TYPSHADOW .
  TYPES:
    parvw TYPE c LENGTH 000002 ##TYPSHADOW .
  TYPES:
    kunde_d TYPE c LENGTH 000010 ##TYPSHADOW .
  TYPES:
    addr_link TYPE c LENGTH 000010 ##TYPSHADOW .
  TYPES:
    bu_address_guid_bapi TYPE c LENGTH 000032 ##TYPSHADOW .
  TYPES:
    BEGIN OF bapiparnrc                    ,
      document    TYPE vbeln,
      itm_number  TYPE posnr,
      updateflag  TYPE updkz_d,
      partn_role  TYPE parvw,
      p_numb_old  TYPE kunde_d,
      p_numb_new  TYPE kunde_d,
      address     TYPE adrnr,
      addr_link   TYPE addr_link,
      refobjtype  TYPE swo_objtyp,
      refobjkey   TYPE swo_typeid,
      reflogsys   TYPE logsys,
      addressguid TYPE bu_address_guid_bapi,
    END OF bapiparnrc                     ##TYPSHADOW .
  TYPES:
    _bapiparnrc                    TYPE STANDARD TABLE OF bapiparnrc                     WITH DEFAULT KEY ##TYPSHADOW .
  TYPES:
    anred_vp TYPE c LENGTH 000015 ##TYPSHADOW .
  TYPES:
    stras_gp TYPE c LENGTH 000035 ##TYPSHADOW .
  TYPES:
    land1_iso TYPE c LENGTH 000002 ##TYPSHADOW .
  TYPES:
    pfort_gp TYPE c LENGTH 000035 ##TYPSHADOW .
  TYPES:
    ort01_gp TYPE c LENGTH 000035 ##TYPSHADOW .
  TYPES:
    teltx TYPE c LENGTH 000030 ##TYPSHADOW .
  TYPES:
    telx1 TYPE c LENGTH 000030 ##TYPSHADOW .
  TYPES:
    adrnp TYPE c LENGTH 000010 ##TYPSHADOW .
  TYPES:
    addr_origin TYPE c LENGTH 000001 ##TYPSHADOW .
  TYPES:
    bu_adext TYPE c LENGTH 000020 ##TYPSHADOW .
  TYPES:
    BEGIN OF bapiparnr                     ,
      partn_role            TYPE parvw,
      partn_numb            TYPE kunnr,
      itm_number            TYPE posnr,
      title                 TYPE anred_vp,
      name                  TYPE name1_gp,
      name_2                TYPE name2_gp,
      name_3                TYPE name3_gp,
      name_4                TYPE name4_gp,
      street                TYPE stras_gp,
      country               TYPE land1,
      countr_iso            TYPE land1_iso,
      postl_code            TYPE pstlz,
      pobx_pcd              TYPE pstl2,
      pobx_cty              TYPE pfort_gp,
      city                  TYPE ort01_gp,
      district              TYPE ort02_gp,
      region                TYPE regio,
      po_box                TYPE pfach,
      telephone             TYPE telf1,
      telephone2            TYPE telf2,
      telebox               TYPE telbx,
      fax_number            TYPE telfx,
      teletex_no            TYPE teltx,
      telex_no              TYPE telx1,
      langu                 TYPE spras,
      langu_iso             TYPE laiso,
      unload_pt             TYPE ablad,
      transpzone            TYPE lzone,
      taxjurcode            TYPE txjcd,
      address               TYPE adrnr,
      priv_addr             TYPE adrnp,
      addr_type             TYPE ad_adrtype,
      addr_orig             TYPE addr_origin,
      addr_link             TYPE addr_link,
      refobjtype            TYPE swo_objtyp,
      refobjkey             TYPE swo_typeid,
      reflogsys             TYPE logsys,
      vat_reg_no            TYPE stceg,
      addressguid           TYPE bu_address_guid_bapi,
      externaladdressnumber TYPE bu_adext,
    END OF bapiparnr                      ##TYPSHADOW .
  TYPES:
    _bapiparnr                     TYPE STANDARD TABLE OF bapiparnr                      WITH DEFAULT KEY ##TYPSHADOW .
  TYPES:
    _bapiret2                      TYPE STANDARD TABLE OF bapiret2                       WITH DEFAULT KEY ##TYPSHADOW .
  TYPES:
    edi_ettyp TYPE c LENGTH 000001 ##TYPSHADOW .
  TYPES:
    BEGIN OF bapischdl                     ,
      itm_number      TYPE posnr_va,
      sched_line      TYPE etenr,
      req_date        TYPE edatu,
      date_type       TYPE prgrs,
      req_time        TYPE ezeit_vbep,
      req_qty         TYPE wmeng,
      req_dlv_bl      TYPE lifsp_ep,
      sched_type      TYPE ettyp,
      tp_date         TYPE tddat_d,
      ms_date         TYPE mbdat,
      load_date       TYPE lddat,
      gi_date         TYPE wadat,
      tp_time         TYPE tduhr,
      ms_time         TYPE mbuhr,
      load_time       TYPE lduhr,
      gi_time         TYPE wauhr,
      refobjtype      TYPE swo_objtyp,
      refobjkey       TYPE swo_typeid,
      reflogsys       TYPE logsys,
      dlv_date        TYPE edatu,
      dlv_time        TYPE ezeit_vbep,
      rel_type        TYPE abart,
      plan_sched_type TYPE edi_ettyp,
    END OF bapischdl                      ##TYPSHADOW .
  TYPES:
    _bapischdl                     TYPE STANDARD TABLE OF bapischdl                      WITH DEFAULT KEY ##TYPSHADOW .
  TYPES:
    BEGIN OF bapischdlx                    ,
      itm_number      TYPE posnr_va,
      sched_line      TYPE etenr,
      updateflag      TYPE updkz_d,
      req_date        TYPE bapiupdate,
      date_type       TYPE bapiupdate,
      req_time        TYPE bapiupdate,
      req_qty         TYPE bapiupdate,
      req_dlv_bl      TYPE bapiupdate,
      sched_type      TYPE bapiupdate,
      tp_date         TYPE bapiupdate,
      ms_date         TYPE bapiupdate,
      load_date       TYPE bapiupdate,
      gi_date         TYPE bapiupdate,
      tp_time         TYPE bapiupdate,
      ms_time         TYPE bapiupdate,
      load_time       TYPE bapiupdate,
      gi_time         TYPE bapiupdate,
      refobjtype      TYPE swo_objtyp,
      refobjkey       TYPE swo_typeid,
      dlv_date        TYPE bapiupdate,
      dlv_time        TYPE bapiupdate,
      rel_type        TYPE bapiupdate,
      plan_sched_type TYPE bapiupdate,
    END OF bapischdlx                     ##TYPSHADOW .
  TYPES:
    _bapischdlx                    TYPE STANDARD TABLE OF bapischdlx                     WITH DEFAULT KEY ##TYPSHADOW .

  METHODS bapi_salesorder_change
    IMPORTING
      !behave_when_error     TYPE char1 DEFAULT space
      !int_number_assignment TYPE char1 DEFAULT space
      !logic_switch          TYPE bapisdls OPTIONAL
      !no_dequeue_all        TYPE char1 DEFAULT space
      !no_status_buf_init    TYPE char1 DEFAULT space
      !order_header_in       TYPE bapisdh1 OPTIONAL
      !order_header_inx      TYPE bapisdh1x
      !salesdocument         TYPE vbeln_va
      !simulation            TYPE char1 OPTIONAL
      !_dest_                TYPE rfcdest DEFAULT 'NONE'
    CHANGING
      !conditions_in         TYPE _bapicond OPTIONAL
      !conditions_inx        TYPE _bapicondx OPTIONAL
      !extensionex           TYPE _bapiparex OPTIONAL
      !extensionin           TYPE _bapiparex OPTIONAL
      !nfmetallitms          TYPE _/nfm/bapidocitm OPTIONAL
      !order_cfgs_blob       TYPE _bapicublb OPTIONAL
      !order_cfgs_inst       TYPE _bapicuins OPTIONAL
      !order_cfgs_part_of    TYPE _bapicuprt OPTIONAL
      !order_cfgs_ref        TYPE _bapicucfg OPTIONAL
      !order_cfgs_refinst    TYPE _bapicuref OPTIONAL
      !order_cfgs_value      TYPE _bapicuval OPTIONAL
      !order_cfgs_vk         TYPE _bapicuvk OPTIONAL
      !order_item_in         TYPE _bapisditm OPTIONAL
      !order_item_inx        TYPE _bapisditmx OPTIONAL
      !order_keys            TYPE _bapisdkey OPTIONAL
      !order_text            TYPE _bapisdtext OPTIONAL
      !partneraddresses      TYPE _bapiaddr1 OPTIONAL
      !partnerchanges        TYPE _bapiparnrc OPTIONAL
      !partners              TYPE _bapiparnr OPTIONAL
      !return                TYPE _bapiret2
      !schedule_lines        TYPE _bapischdl OPTIONAL
      !schedule_linesx       TYPE _bapischdlx OPTIONAL
    RAISING
      cx_aco_application_exception
      cx_aco_communication_failure
      cx_aco_system_failure .
ENDINTERFACE.
