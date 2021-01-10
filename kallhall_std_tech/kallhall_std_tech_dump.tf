; Technology File KALLHALL_STD_LIB2
; Generated on Jan 10 10:48:22 2021
;     with @(#)$CDS: virtuoso version 6.1.8-64b 10/08/2019 20:07 (sjfhw316) $


;********************************
; CONTROLS
;********************************
controls(
 techVersion("1.0")

 refTechLibs(
; techLibName            
; -----------            
  "KAL3" 
 ) ;refTechLibs

) ;controls


;********************************
; LAYER DEFINITION
;********************************
layerDefinitions(

) ;layerDefinitions


;********************************
; VIADEFS
;********************************
viaDefs(

 customViaDefs(
 ;( viaDefName libName cellName viewName layer1 layer2 resistancePerCut)
 ;( ---------- ------- -------- -------- ------ ------ ----------------)
  ( M2_M1_HV  KALLHALL_STD_LIB2 M2_M1_HV via Metal1 Metal2 0.0)
  ( M2_M1_VV  KALLHALL_STD_LIB2 M2_M1_VV via Metal1 Metal2 0.0)
  ( M2_M1_VH  KALLHALL_STD_LIB2 M2_M1_VH via Metal1 Metal2 0.0)
  ( M2_M1_HH  KALLHALL_STD_LIB2 M2_M1_HH via Metal1 Metal2 0.0)
  ( M3_M2_VH  KALLHALL_STD_LIB2 M3_M2_VH via Metal2 Metal3 0.0)
  ( M3_M2_HH  KALLHALL_STD_LIB2 M3_M2_HH via Metal2 Metal3 0.0)
  ( M3_M2_HV  KALLHALL_STD_LIB2 M3_M2_HV via Metal2 Metal3 0.0)
  ( M3_M2_VV  KALLHALL_STD_LIB2 M3_M2_VV via Metal2 Metal3 0.0)
  ( M4_M3_HV  KALLHALL_STD_LIB2 M4_M3_HV via Metal3 Metal4 0.0)
  ( M4_M3_VV  KALLHALL_STD_LIB2 M4_M3_VV via Metal3 Metal4 0.0)
  ( M4_M3_VH  KALLHALL_STD_LIB2 M4_M3_VH via Metal3 Metal4 0.0)
  ( M4_M3_HH  KALLHALL_STD_LIB2 M4_M3_HH via Metal3 Metal4 0.0)
 ) ;customViaDefs

) ;viaDefs



;********************************
; CONSTRAINT GROUPS
;********************************
constraintGroups(

 ;( group	[override]	[definition]	[operator] )
 ;( -----	----------	------------	---------- )
  ( "LEFSpecialRouteSpec"	nil    "LEFSpecialRouteSpec"

    interconnect(
     ( validVias     (M2_M1  M3_M2  M4_M3  ) )
    ) ;interconnect
  ) ;LEFSpecialRouteSpec

 ;( group	[override]	[definition]	[operator] )
 ;( -----	----------	------------	---------- )
  ( "LEFDefaultRouteSpec"	nil    "LEFDefaultRouteSpec"

    routingDirections(
     ( Poly	"none" )
     ( Metal1	"horizontal" )
     ( Metal2	"vertical" )
     ( Metal3	"horizontal" )
     ( Metal4	"vertical" )
    ) ;routingDirections

    spacings(
     ( minWidth                   "Cont"	1.0 )
    ) ;spacings

    routingGrids(
     ( horizontalPitch            "Metal1"	4.0 )
     ( verticalPitch              "Metal1"	4.0 )
     ( horizontalOffset           "Metal1"	2.0 )
     ( verticalOffset             "Metal1"	2.0 )
    ) ;routingGrids

    spacings(
     ( minWidth                   "Metal1"	2.0 )
     ( minWidth                   "Via1"	1.0 )
    ) ;spacings

    routingGrids(
     ( horizontalPitch            "Metal2"	4.0 )
     ( verticalPitch              "Metal2"	4.0 )
     ( horizontalOffset           "Metal2"	2.0 )
     ( verticalOffset             "Metal2"	2.0 )
    ) ;routingGrids

    spacings(
     ( minWidth                   "Metal2"	2.0 )
     ( minWidth                   "Via2"	1.0 )
    ) ;spacings

    routingGrids(
     ( horizontalPitch            "Metal3"	4.0 )
     ( verticalPitch              "Metal3"	4.0 )
     ( horizontalOffset           "Metal3"	2.0 )
     ( verticalOffset             "Metal3"	2.0 )
    ) ;routingGrids

    spacings(
     ( minWidth                   "Metal3"	2.0 )
     ( minWidth                   "Via3"	1.0 )
    ) ;spacings

    routingGrids(
     ( horizontalPitch            "Metal4"	4.0 )
     ( verticalPitch              "Metal4"	4.0 )
     ( horizontalOffset           "Metal4"	2.0 )
     ( verticalOffset             "Metal4"	2.0 )
    ) ;routingGrids

    spacings(
     ( minWidth                   "Metal4"	2.0 )
    ) ;spacings

    interconnect(
     ( validLayers   (Metal1  Metal2  Metal3  Metal4  ) )
     ( validVias     (M2_M1_HV  M2_M1_VV  M2_M1_VH  M2_M1_HH  M3_M2_VH  M3_M2_HH  M3_M2_HV  M3_M2_VV  M4_M3_HV  M4_M3_VV  M4_M3_VH  M4_M3_HH  ) )
    ) ;interconnect
  ) ;LEFDefaultRouteSpec
) ;constraintGroups


;********************************
; SITEDEFS
;********************************
siteDefs(

 scalarSiteDefs(
 ;( siteDefName          type width  height  symInX symInY symInR90)
 ;( -----------          ---- -----  ------  ------ ------ -------)
  ( CoreSite             core 10.0  28.0  nil nil nil)
  ( IOSite               pad  1.0  240.0  nil nil nil)
  ( CornerSite           pad  240.0  240.0  nil nil nil)
  ( CoreSiteDouble       core 10.0  56.0  nil nil nil)
 ) ;scalarSiteDefs

) ;siteDefs
