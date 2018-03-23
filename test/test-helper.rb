# encoding: UTF-8
# frozen_string_literal: true

Bundler.require :default, :development

module TestHelper
  extend Memoist

  def keys
    { "wisoky.co"         => OpenSSL::PKey.read(Base64.urlsafe_decode64("LS0tLS1CRUdJTiBFQyBQUklWQVRFIEtFWS0tLS0tCk1IY0NBUUVFSU1hYUJqNXpHQVdNTVdxbXNiYTF4L2plbjlFRG1EdDFtT3ZxQ0xIQUVzNWpvQW9HQ0NxR1NNNDkKQXdFSG9VUURRZ0FFcHFQWTVIbFM4ODQ1ZHc2cjF0cG1pYWlGVXNieG5XeGY3RW9mNXRXYzhLd2hFaUhVd1Jrbgp6eFhPcFhaKzlmVVRlN1F5SEtsSmN6cGZDUGhZTk04WWZnPT0KLS0tLS1FTkQgRUMgUFJJVkFURSBLRVktLS0tLQo=")),
      "powlowski.info"    => OpenSSL::PKey.read(Base64.urlsafe_decode64("LS0tLS1CRUdJTiBSU0EgUFJJVkFURSBLRVktLS0tLQpNSUlKS1FJQkFBS0NBZ0VBdHg5R05SOGhnSmJtS0JPbGw1Ym10K0VPNWNIRDVJRTMreitobldOSG84eW9CakkvCmVIaVRYdXprTG8zSFBISUZvby91czZHbDQzOGdRRVhGTXpCalVGNU13bEZ2dTRBK256WVNDWWpDREN5d2F4aWEKSm0zcVNXM21HVWhER013b3R6d1FYNWN3Qjd3MExsT2QzV0hkd3paZGk3bXR5L2tpY3VsVUhYakFzTU9GV2gxRwpxSnY5d3crL0lvVWR1clZubnh5dTNQTEwxTnZqM3NCaDlQOHlIZW1vRTBRQlNIRXN2dFBxVWI1WktFTlI3MVBTCnVTWmVIYnVIcXVja2k2RWM4R3NSMTEzUTkrK1JWbmFSS2ZLMUxKSkRnNVMwSUZiS2JKT05vMXdCVUdsUlZ2VXMKbDVha2dnbiszYk1XT05tclFyTG5aVDRhVmJOOUZMWERXQ2VPTnZSc3NLUlAvZTdzbVZSUWRWYTdKNk1VcnFRbwpiYzNFbUxPbUkvb0hhRmhCUTZ0U0tSRGVjdW9IREoxbVpqM0tmeXNvWThNWjl1WXpPcm5XVkZONExSQ2E3S0pMCktSVGFJZERldm1RLzZQU1RFOFAxcVg4Y2RxTi8rSElLWVJkUWsxaExSZUNpTzBaeWVxejNSZW10ZEh4Tk9uSUMKZ1NhR2JMZnRMWmtYTWJLNXd1QS84emJLSjJ5RDQ4bWkvSGpRbDhZaTRNTWtnL2ltM2VPbGwwNmxFa043Q3FMVgppdWR6U1pLSnluWldtV0VCUWV2UWxBc0ZDZk1ZK2h5Snp1dHp5VU9QU2hVTHlFWjJsSllDS0NKaVE0VUs4Q0RvCkdmWFA3ZFhqenRmbFVmMTFkTzEvbFVGNDdVNjBFWUtMV01yWmZGWmhYQTlhSlhFT3MzU0g4Y0lWcVdFQ0F3RUEKQVFLQ0FnQnpMUlIzYlBFaGM4ZW5CVlJ0bDlmZFo0eDdMZmdMek1wdEdJU0ovVnVkeHFjWDNwclZKdUZxSHcwVgp5czY1VWU0QlpRMzVwWDQxTEV3WW9NbDdmTCs2V05WbWt0bjMwSjJTZmV1eVczWFJPbnByb2JteTJnYzEwQTJkCmNUbmlhdVpnK1VKREhWQjBUUWQwNjlxcTExY241UlhKUUN2ejB1cTc0ODJvQzc4R2JyTjlEbFRXeitZM3ZidTEKOW92UVZ6Q3BmdHpzMHprbzFIVHFNWTVyRGVkenNQYXB4MmdYTERlOGZvVXVqTTUrNkhpc1VzaUM4NExXcUpDWQpDWEdPOFBMR3RGRXdhQzE3QkE4aGxzbU8zTHpmSDgrZS92U2NNbnAyK0FkcDdBQlhseVkxejFjUXNRc2ZUeklpCk52V1BKRGozWnBicnNyZlZsMkxnbDhJWnZDZFJrQitoUHk1WjNYWGN2bkVJOU1WZDRLaUVEdHdtMm0wUWNFSWYKVlUrblhPZGdNaUZvTTN0R24xeVJ0MG5oR3ZVNW5tTWh2RDhmNzRwaHFnTlRBUmN3NDF6aUJTR1JaOGhPVkExcApNUmcyZUh0SU1KeTI4RE5PdDdtcnpQb21TOUpqblBkR2dsc2ZTcnRWREtWeDBpbEpXQ3FReGZEWExBTUFTdjc2CjRNMFNnMTk2NW13WTdNUVF0eFdrWkpjcU5MU0dCdGVSeUtzUHBuWjBzZ2FvV1JiRjA0cFk3b2ZwOEFDYUJLRVQKbUFXdmgxZlVPcFdBaUllMHI2QjFSRGQ0YzlBZWtUV2JObmViUmRVeldLL1NlSDAyZm5jTEo5emdGUVU5TitKZAp1aE5YK2lIKy9iaHRIL0ZxaEVwTC9id1A5bDFOckxKQThDa2orb1N2UUVzVGJaYWt3UUtDQVFFQTZYV2VsdzI1CmU1VFdGcTlldnV1N0s4Y21TT2srMUd0cW1wd0ZZTURPdHZKSWJjU1ZMVy9PQU1yYXhxaTBtNFlLUFphbWpnUjEKdHJvU1IxWi8yVHo4cytJTU5kdE52SUp0THNyNjlpamwvN2Z1R0ZuVXFPK2FUQXJieG1LRmR5VDlBNGVaUnMycQpMRkY4aHNSVUgwZkVKaXZTZVNCeWxSSEwvRS8yd3Jqalp4R1RWdTQ2UGgrWUxUcUdudDZ0MitNNnZ0YjJzOUl4CkNCSlV5T1lyWTFGdFNEbzBLR3R5eTNWdkZiZTZGcFNaMUVQK0liRU1laXErN1VWeUgxV1l6QTRLa1Q5N2dGTTQKcEw3S0J5aUo1amdEL3N5b1ZHV1ZkL0xWWW5HM3hFNTBMN29RaUFaa3hyRnN6dU85QTl0VEdqV1ZyNW40eUFRNApDUFJsMG0vdXNObUdQUUtDQVFFQXlNMTUyYkJQOUNiaVYyZU9wUWxwL25yWEwxbGhxVUhjTlplZnRTNFRtalloCjNHS0M4TUE4OUZnOEpqYk1OYjNoNDRkQlA0TXVxdVo3Uk9INXcyRFFEcnN0cTdBaUNiVEFkTEVodDBSQWlVY28KUjRuTWRZWlRHQWhhOVdhQWwxalVIakZVMlFUZjl3S3BZeXZmdTVKb2RXaFRPY2sxS3ZleHFiVVRkcG9CbEdoZwpZN0I1cEpmK1AzaCtOK0xsTzVQOUYyakc5TWprOUJIbEpHcFl4SFE0THNBVHdqcHhsNFJEUFcyNWVBVlMzVTZSCjlBdlZ5Qm03bG1Cb0NhVTNCWHU5aTZmeDRhUGJTdDNFankyZGZPR1hPRUQwRCs2QjVYS29PelNMdFZzVlJIRHUKeTI0SzExbk8wUVNyeW1HN3l6ME50MHlvR2drRHhGQXpPRUJJZVAwRjlRS0NBUUVBM0pNa285Tnp6Qzl6bHp0YQphVWlRTDJ5WjM0bUFzM0pKNW9wRENvY2d4L2xpTlZQbkhtYmtYQnROV1NWTWZ5VEZ5Q3J1Y29BRU9BRFdCRkRWCnVvckV0N0I3bU9iN0s0Q1BhQWFmMXJRTm11NU5KdlM0MkdTSmhBOCtWdEgvQi9NS21xc2pScUpLaGxUM010Mk0KSFlIUThiKzF2SHZMeHN4cHpwbytxdnZFM3p6YjJPWjhZUFc0OGdLNTdxQzE0MnR0dGFHa3RZR0NrZjIvM1pDYQpyZHZoUkx5NVN2YzZIc0Yxa3k5andySGtKWW1ZTW56MUxQZjJMSGZRdTRwRU00ZVF0R3NtWkxnOGJHdFd0aXkzCkhhMFBHVTZFUERrK1gzWXY1ak5MVFU1U3VFVTBHVkR4SmttOFpEMEgrUHpnSjRNNVNoQlAzYXNleGxjalhSQWsKbFRMd2dRS0NBUUJXK1RqSDR5Z2VWaUUvUG1sNGJrVnNwZ1JDUy9LUy95WEVTTEl5Sll6MEJISlNKSkVXZWcxcwp3REw5VWtyTkZEdWM4MTU5aGZKV3I1SEEyaWYyU2g2VDR0cjdQRVRoODFwUXNOQXJzdkpKQTNzYzBVQ3Z2c2lLCjVrT1BleUJEYllRaXQ3ZEtjR1FaZHh1ckNydlRZS3pCL2JmZWxabmp6SGsxU21ydHVmTHBOdlJZK1gwV240Yk8KTXdCb2NHeGRpOUhacTlaUS9CcSs1R2xkaG5xQVRONXcwVjA5aVZiZUM3bWNCOFNIaWJiRWlGMkxXUHoxdUwrWgplSlJYYVNvVncrenJhb2pIOU5MczhIVk1sck5aL2RRajEyNWU0QzEvRmxScm9HeksxbksxdkR5Ui9FM1J6T0paCmdpNXVjRHFJNHg3bnY5b252TFBXK2UzVmRYSnVoUmxwQW9JQkFRQzNoWW9MVGtLY2ViNmVURHRmZDdpSGdlUTAKdUp0L2sxME8zbWFjSUlzMGd5ZDQ4cDBmcmpteDdBWFFaSWhFZ2pNcGtHK3hFRGRWMTh4d00zYkV1T2RjSm83NApwSlZYMDhVaURPT05BckxkY1hvL1gxYysxZXNVeDYxc2Uwbm5lOEZxd3Y5b091aXM4Z1ZGWS9XN01tcEY5dnNlCkRMbHZadnpWelNxcXR6OTJpTEM2enJ5cTdrK0pCL3hwRU1XemRUM1lKYXlGK1NwSjJveDRXVTIrTjI1V0NiL1gKc2NqZHkyNUZzSW5teXpSKzRxMnZHb3grR2NjU3ZCcCtrZVhHN0dNNmMwbTVXUCttZnExSUtWRFh1WlZSTUR5cQptSEY4cmxBYU9ES1c4SlI1Mnp1Wi8zTXpzWkNJS2NqYjA1V09KdDdKM1NXVWQyOWU5WDJQdStkdjBXa0wKLS0tLS1FTkQgUlNBIFBSSVZBVEUgS0VZLS0tLS0K")),
      "mcglynn.org"       => OpenSSL::PKey.read(Base64.urlsafe_decode64("LS0tLS1CRUdJTiBSU0EgUFJJVkFURSBLRVktLS0tLQpNSUlHNVFJQkFBS0NBWUVBNlZ4UExhYVN4QTRrdUx0SHhiNVI2YW0wVVF4L3BTOEhjZDAyQy9YS29GSEk3QnJGCk5VUzlkSDBIWGpBc3NIWkhRa1BkamlRUUh2OW9aR0QxNGZXelhPWTRlbUhJVXFPWmljSk1mRnFXVlJYSEx3SVUKOUxITUlQeDFabHJOVEFjOEN1aG5FZUtoWTBwc1NMc09GeitDL0QvSVNvM2R0aVI5Tk5TenlqdUdOKzdxUnRUbgpYcHdIQlJHbFdCT1VneUI0TDF2QTFKUE0xY2UwODhOMmhZeDIwOTVtUTZpM3pvY2VJSTFrb0FoQjFVbm5YUEN4Ck1oaGlScjV5Q3N4d0ZEQzkwSlQ1MXNOaWFoVEdoRFZLUkg1UUdWd2xyOVo3L3Y2d1dKZ0I2TUw2VWFEbEw3SEkKVDRXRWNJYjBrOVNzMGY3MlcxRFJDdXlhdHltWnhPaCt0TXBIN3J3cmtvSXlldnAwT1RUQ29GT0hUWWlNaGRrRgowa2t1L05nclNVdWxRSnFlaFMrNmtzZTZveVZFU2E4enNyVGhLL1gyYmJvSUhwOU0vRU9GVFVTSXVhZmY5b3MrCk9LUlhOOWI5Q0tnUTk5NFA4S1V1UHR5bjZ1M0UvNUtMVnAvbkpHM2d5anRvZWZIdktwdXRtNWk2TUlRSi85eVMKcUwvRVlYL04wTzBXVlRkVkFnTUJBQUVDZ2dHQkFLaGZtQ21DQkdjOUpUVzh1djVzWWNITVZuUWNKb1ZTdDNacQplN0tKZDlmUTZyMmdXeVlpSU9oSnhlVXBzVFRwUW1VSGZuWXVnd3M2a1dITHE5MkxZQXpwZDFxbDd0bmhmTWl1CnptenpGNER3bzdUQk5jbVA5NDdkV1ArdkNHMlEwcnUwRDVvU0FRd1pDS1E1Z3VNM1NoVWpHQ3JpelZPOFpES1kKUGRqdXRkcnBvVlBXRGRKdmxZa013RllhV285NS8vMTdvRmhCQkF4RGVjWmdBOFk4SVFpaGNQdmtZaXE3eHZzSgp5YzdGNW1vMFZxRHljWWVKbkc4YXZrSVlXODNWazk2VHdyZVJWSkRjTldYS2pWRjBJeXQzK2FEU3VZM05JNkpyCkZVamVNZnoyYndYZUhBV1pSYng2L25temxybjRHVEV0TzI1Q0VZVVhNNkNMVFRHYWdWS2dpL2VJWGdiWDB0bmsKcDFCSWhBRWFxdFZLMjlkdHd1aWdWNjhxdU1ZRU5wNjh5ZkplV0s3VmczTUsrbVI2cTJ5NmNZdFhjUVJTbk1GagpXMmRzTVliNlZxQ21XRHFBNld2Vis4TTNhRFJWaHhBM2t0dEtBdXcwTUw5THl5dlNWeHdYL2luOGNtUXgwL0pPCjk0enlDMnAwdjFmc0xkeEJHMm1ZYytWZHBSblR3UUtCd1FEMUF3RkhPM1dqa0lrWDhLQjVtVXY2VXl3MWQ1c2sKWDVkdjNXYVZmNGhTUGxPSHRSaGJHNWJ6eFJXaG50ZHg1MTVIT2tEZHo0dEtHZXRyWjlVUWo5WjlrUXMyNFFLVApCaitNRlVjZ3F6dGtYRjVHdy9QMnNzN2M1dVhjdkkyanFlU3Uxd2xGOTlZQ1owUzhEVUNWWHdQU1Rla3pTL0Q2CkhaaE5lT0xHSTlzVmlGMkl5RnMyL2cvaXpYbDRlTGwyV2swRkYzMDNhZjk2ME5LSjJITFhEbUE0MHRITzVtQnAKUXZxQUMzQmVRTFR5NWIzckVWcHVJaE0wOUJsbW8xdEFCRjBDZ2NFQTg5T0pZcHRBYmZFSkduUkVTeHZTbTdCQgp5c2FDTEdrUEpSYnlmUjJOOEF6NTBUd05Ra1RiYlpLb0pLcksxT0FtV1JHOTF1cXJVVUJ4L0lVVThIMVh1RmIvClJKamxQZ2tCNnRyRFczTk4xeGp6Y1BUY3FOblBDcndvMUtlUUw4ZlpDYVArNkMxMTZ6YllVa1hQQ2g4TFhFbk8KUHBmbnQrclpHSytsMjhxMk9KMkRqM0RxaEN2dndPSnpIQUlGSkFwVTZXcStuOEhBM1RmVHhCc2UxYW1TQkROSQp2M0RRTytLSEJpRHJpMzFmeWxBZlFEUnNUQk5zZldzejRWU2U5MDlaQW9IQUlhMDREOEpzZVA3MDJRV0tDU3k0CjlMOVo1RDk4WTVPQURUQXhXWHNlRWEvZmExZkk4VHpwa3JnVU1STFVLaVBUSVpjd00wekRxSHZIa0F2RmpYRTMKMmlxRmtCVjlkUmYyeEJwb25HVHMxTzZkUnJ6SVc3QllIcVRlRTJrWFR0ZWJSeXpuYVdhWFU5MDk1VnNzOVZzSgorMjRhRDZMd2pIQms3c0VlNm4wakwrSitlTDZSU3czQXdUdmM1bUl4bThMdHN6VjNVSmFSTnlCY3ovV2dVMDcyCml0anZYYkRzcjRzMVEwUlBQYVZIT2R1Nkx3VkRtTCsyUkNFSkhNSjNXR1ZCQW9IQkFNQnVwQkFSclhEWGViTEsKTGhnRkZsdlBhSzFycTlMMiszL3ZNMlB4VGxNMU9uaWE1Mi8wdmlVbFNOVGZnb010Z0xadEhTR2dSYU16dElKeQpXY3RQY1VySVJtRFNOcUtXSTFCQ1pVb29uemR5dHJiZ1djSmRYRjBCa1V2OER2eld3Z0VzMEFKWDFxZlR1amg4ClplRjhETkJDWTZiYzVvRXR0VGNaY1ZJZEUyRnRWeVovSEdkQjhjK09LUURpeTBIZGNaUmlyWjJTSWUrMW5zazQKQ2tiZ3RKL2lCYmtwaFA2dVVwaFFwUFdLOW0zS2ZFK0UwQy9lYUpJM2FGT2ZJSExZeVFLQndRRGF5SFQzZWExaAo0WWtaRWF3OHl3cCtrTDRDSVliYnhqc3l3Ly9tOTVJSXJUdHhkeDVHTUZPOUpuVUp2NUhQSEVJdjhvb0dyL2s2Cmo4NkdxUkVDWC9UVHpJYlppcFRGZzJQd3h5OWY1eThlMlZOTHZqa0JSd1Y1SW1jbEhEZCtrWTI2ZlI4VmkwQlAKNkpNN1lkUExIMXpJZmRGQkxuRitOcE5pbE5zdk5GT0Q0NEdiOVZVemd0b0FlUzJRWjhpcUZxcWRZbSs3STlPRgpDYjl0ekEvY1Y4ekFUdmZwZFk0REJnMXNzeFlZSXlYZngwSHpoNHRuR2xZczJpQXl0aFk4dzdzPQotLS0tLUVORCBSU0EgUFJJVkFURSBLRVktLS0tLQo=")),
      "okon.info"         => OpenSSL::PKey.read(Base64.urlsafe_decode64("LS0tLS1CRUdJTiBSU0EgUFJJVkFURSBLRVktLS0tLQpNSUlHNHdJQkFBS0NBWUVBcytORWZGbkd5MFFWZFhqVm1IbDZvUXZ4clM5M1ZrdjFkcVYwMXBpQnJBYTRjaThLCk1IVzYxNHZ5MEhsdy8rVjZEN3RwZmxwMm9WbkRjY1lkeitVSVBUL21SbWEyMHFrajVBbTNEdEJyVDhkMUdabWkKaG9nU28waTRCVzBad0ZYdCtWQnRMYjZLbWtyZkN4RytUcUdsN1hsQmFYZzNqVkVSNWMrcFdoeDlqZkNtREpULwpVZE9FRUQwVFp5WU9VbmIyZWFiMzE1Ym9XOFR6Q0dNVUJta3JGd2ZtOGp0M0t1c0FhRkF1MWpZb0NUSEU0TnZqCi9BeFREdnVvN0NIWlVnUStrMWhUM2tQK1ZXQWVYZ29hczVpdHZaKzJsRWcrRU04clBoQnJzbTU4cGpJWG9hL3UKY0pNU0M5NnhGUytNcm1GVHU5ZFVaS0c5ZVhKZHRoWjVWR3Z5cTk3WFJoQkJENk9KcVUyUy85QzRrZi9FYlZ1VgpFWlYzWnpSNEF3dXo2NjBsWmpnOHIxRmYwT2t5cDJiUlRSZVlzRG9adUxTMEVPWWEveXdhNWQyb3FhRSsvd2xWCjZBbU13L3RaTE8rS29zVWpDbWdxTnkwNGtrWFNqUitUOUpRMzYzRmd0cEJzYlNGRzJiVFhndFRkSWRUdE9YMlMKN1NYZzBCdlF4OGdkM2gxSkFnTUJBQUVDZ2dHQkFKelFrd1JBRXY5aGM3OTdQZUIwamNWVXJ6TEZQU2Y2Z1pvVApkSDRhWm5nN1I1RXFscHhXRlRJUDZ2VjMyRjBMZzlPeEVhNjNWOUVpZWpGMWZzbWJwQW9ZNlRvWUVtb2tUb2hkCk83cHJVQkUxRkV6ajFIMm9vMjY2VnNsTUtYVzBzd1p5NlNwR2YzY3ZxNjV2b2xIVHN0MElwbEEySDE5TysrWTEKbURGWXdzNzRxUmd3eno1YXdEYVR0NVZrNUhsWkFWWmRpcExqRjkzZ0cra0V6aEVrbnc2dHNkTWFxYkM5T2hhMQpSNDh2bU1rakhMalVsN05DWHltaGtzbCtYSCtWK0N5T3Y1WFRpZ0c2VFJoNWN1YjloSitYWFhlZU01MGdOWmhPCnRkcWtLZzAyczBhekh3WUs0eU54bVZOcUdLMjA3T3BCZlpCRnYvV2hqaHRoV3BUSWhHUDl1alV3VG12Z3FaaXQKVmRzYzk4VG9ETUhrSGZLU2VqRUhkYlhWM1drMksxYStNYy9xenBTWU9FWUhoQU0xWmo2Sy9GWGc3R1VZWFhOSwprWkF2dW4wSXJYbWxCVGFsRU1MZTVGaytoNlNoRnBsTFYwUU01am1ySHNFd09QUU00bG5GUWl1czlBRjFqMlhVCm1ZWGsrMWVnanh5Uk1zcDVtZTJOd0hzWFc1OGE3UUtCd1FEZGdFWEJBVEZrM3IvWE9tUE5uS0NIZlJWdkREZGwKRVNDVlIwM2VKVU0ycFhmRHpIY25rRlFCN1dSb0dkRGlIbHhzSldsRklnM1U5UTU4LzlJcmU0Um9Ba05zd3FucQpGZVF1OVZ5SUxMandicnM5ZzA2Qk1XelFTanBHZHZwbmVUY3NGeitOM2JvWnR3ejA1akhSZjlKc0Z0bmVhbEVsCms2VC8zejd4NjNWOFFYZU5VbnFnd3FRYzFqdUh5ZzdnQU1hdzN1eXFkQkl4NTJ0eFV6OGxKWjVsMStJWExxZTQKeWxmbTV6ZnlxVmc0blo1Yjc1U1FMQkZyNVhTMm1mZ2NkS3NDZ2NFQXorZklWYTRGWHdEeVU1d2VqSjF5alRzcwovYWtQT2x5M2szbzRWanVnU09wMUdudDh1cEpCdWpidUFlZ3hoOTNQamtHRDMrQ0xlczlmMTlMSHpxOFJEaE9WCnBEOGZqTU1lcEFiSWJWbEZSMTNCOUMxbFp6YXZ1MTV5UDFHSERVV2ErZXg0UlVZbFR1dks4c2hGMmh0MlpmamYKc25ERTBZa1NjaXhhN1BhbnlSbGhvdEt6b2ZYMnBhcjI5TVhwQW5nWlNWUXZCNXlzSUFzZ2xQUWlmMGNqaW1ERgpVcStONUZHZnh4TG12OTRDOEZ2dGFlTVVrNTFSUkJwNnFMd29qTzNiQW9IQWV5RUdKWThUTlI1NkNCdkdSUk1QClRhSGoyMUl3TFBlRFpGZzUyZ1pld2E3ano2MEdnN0RBY2ozVHRlYTc3aWF3ZTlHa0hqRWEvVW1vWHlZYVg5K08Kci82cUduaHYyZGVIZSs4YkcvdTRacmMzVUsrQVlXTG5PVFk2Qk5lNHhQSm1FQlZ3Vjkxc3lVU3ZhQ2ZhZzdvSgpiOXFZREFLUHoxS3V3eW9IcEpXZVBvOXA5TjVubXB2NGZLcytkbktGS0ZKbUlRWWJDM253YjF0VXA2OStCNWxNCjN4Sk45Vk1UR3k4b0JBeCtWbDk2MGlZVVZNanVqZUpoWU5neHRCd05CMHgzQW9IQUdOQmpPc2F3WVd4dGY4a3MKWkVBT2dnakVEK3B6cE5XWUc0UUU0Vlh3aFlObVFxam1kQ1lzcmhzTVFUSURaMkh6K2RpYjhzYU1IelpORENkZQpMYTc3YkNDdVJaSTdJOFBPRG1tNDFrUkhYb00wT1A2S0VjMlhIOWZmN3VxK0libGpDOTFMWllrL3ZyR3A0VnhCCjZneEpEMWFxN0ZORlNuVC92SnpLcFdtekVPOTBsY2hzSkRLRkk3VEtFT0RtTktNODhXR1kwMkhCc1hsaWhDUzMKVVZXZVNrL09mVlh5cTRPS2ZHb25IRk5WS25idVdTci9NN2NkRWZIUEhnQ0hIbnJ0QW9IQUxsSjdnbFBic3JEdQpnV1N4c3RoWFRnWmFzRFJPNi92M0ZsVTAwRjZ0cnJBM1YxMkZxQzduYmxLL3F2b1BBK3RxT2gyR2h4Szk4Tkw2ClZldWpSdjhVVDZZZ2tuQUF6WDZDWEl2SkpSUERYaGY0b1FNbFVZZk1BZTRYWjV0UTBuWVI3eFlpYkFDYXZ5ZEoKVDFVOEtEZ2E2YVYvd0NBeGx6Q29TNXpNQ2t1RjdvT1czTzZIdUEvQzdnazFrVHhrd29KUEhuQ2lWNTIxeld1SQo2dURvem9IVkwxRS9MUmlidDFiS25sQktCSGVReGZxekxhcFBYWmVqNGlDdi9acll6S0RTCi0tLS0tRU5EIFJTQSBQUklWQVRFIEtFWS0tLS0tCg==")),
      "ebert.biz"         => OpenSSL::PKey.read(Base64.urlsafe_decode64("LS0tLS1CRUdJTiBSU0EgUFJJVkFURSBLRVktLS0tLQpNSUlHNHdJQkFBS0NBWUVBeVAycEt2eVRORjVXMHdaa0RtNUVVYkhTekRJaklwTEJlSld0V1ptaVFhTDR5QzkyCnFDMWd3Zm1XbERIQjRYbUhLNWhTZVVRN1RpZGdBVUxsTG5RRkRmbnVRbjlvdkhzeDNGaUlUZWJtRmNRdDh0NEQKU1NmTVN0ekNWRFhJaDlwblJoYndhdTB6UTFWK1RQT0NwMDFiVGYrSHE4bWY0Q3h5Ti9veTh2UHRTcFJXUGZ4cApuY0ZoL2ZqM3J5WEk2MEZZSGYvZWxZRGRQTVZvUWMyQXM2Zkt4dVlxUnRpQndERDJDMDZISlp0MTBQNGM5dDFMCk93cURMa1NxZ3BkRGV2VE5VelE0UTlTWWxLMkYxbURMR3dpTVpLUWZhRXRvYUNwMUs1RklpZkcya0RmUkNkSTcKMzczM01PWjVqR2JmcFpiaGFiYnRqMDhna3pYZGM5Z2czTzFIM0xuMUppazN2RCtia2N3a0lrdTVKMm15MXoxWgo4RUY0SHZoQjg0aWpKZStiRFF0eUVNb1Rqdm1ZWC9jSVoxU1VMTmV2UjVCOWJGVVI3ZldSb3grM1NNL0lEZ0ZYCnZlTnNZQ1dSdzR0SWVYOEJ1WnFpNVZ4YnIrbVR0TVR2YnhmMEdwcEtKY1hENHg3aXczL1ROKzUySGN0bDVtVTAKWk5WNmNsQkZwQWwrTDdLL0FnTUJBQUVDZ2dHQU9XZXBqMnVBSjY3aUlYZHIwR3RSKy90TDk2SkNRcmVqcG1zcApqYlBCa2ZtWUVLVHR3TzdrK2NIdGJmb2dJK1B2NVZXbUNKaWlUNW9UWTRqVnFFVGV4TFVqaGI2YURXc3FQSUxVCnUxczlUKzR1S1hXYmZxTnRSOXh4YkZmSUpIVU9sZ2dyTm43MDYwQlp5R1NzWmxoRHdhMC85S0tybFAxY3lmd2QKM1NJcUhlanNFTndzMWkvTGF4eFdzYUdiRndZY3dzUzNyLytVTUswNUw4SWdCaS9nVEpxa2JJT2QyMlNnZ1c0MgpUMWx0ZHZsOUVFejRGYTdVOUx3TDd5eUF5M2RyUTJVeG9lTU9vb00vcE1tL1NmdkQrVFdRZWVjQy9pcEpxVEhiCmlOK2tEbVY0d1ZzdGNqRUNxcmF2ajBqRUY5L0NTbnVDeEZvSXJnWmc3SkQwRXhkU0RaRHFCU01QZGo0ZVJOeDkKazN5aytnU3hMSlBPU00rOHZLZ0lIRGxaZU01dUhEUmZIdlNXWWd3cUdST05yNHFUZ3M4TUhMUkh0YTNZRUx2TgpTV0E5RVgzSHZEOXFETHh0QzRwNURaeTd2Q3pZS2oxOFZNdFJTR1RyamVCT2xlZjU3TE1zUFlyRnEvVVNrUHQvCkhqZTJVbC83T1VhL1ZzQUZ0T3oxUmlqcG9xR3hBb0hCQVBWYnFsdlBoaVBHVVpnK3IvZGpCWTdtVU5UMHpWckwKZWdaRVBvMlZLWC9DanZ6SEhCTjZQYzlFTFJ1bk9CQllkQzlVS1dRZUpNM3ZEVkF5SFZPNjM3cUtzS3FxNWZ2OQpRQXZYdHBsdnY1NGloMVlUK0wvYXVlUm16MXFPdHVNMUl3c0FvSmlpQjdPWUptRCt5Y0JQRTdMSEczcVoxTzk3Cm9mN2dNVFJiYUJWYWQ1dWVDZGgrNjFvWlc5UDRzaDlrdWwxUGo4STJNbTRPaXFCQ2E5Snlsa0RLQmhVTldCMG8KTmFOZTNINXY1NEZQQW14dENMcXVXR0U3MFV6N3cvUVR3d0tCd1FEUnRWMGwyemJhcmgyUTk2NE95ZlpDVnk1MAowYWY1YWJTM3lPS1BRcUo3UUlGSDA2UUJXZVZlalVtWW1SaE1JV0FLV3lVY1lkbU0vdzFlMThMRE9MeXlyZDFPCkMzUlZ6a05OV2E4WjFEbzN4UUdpOVB4M01RYjd1aHlSV2lEMzZ4Y3JIdEtnbmJPK1BlbExXRk9lRXNmOHBGcmEKdDRWZDFqYUo1OEJEUVEvYXRsNy9tUGV0SHNpR2xuSkdzaWw1SkFvTC9SVWhXVHFUYTZkQTd2MjkzMktuNFBCRgpzS0xUVzBaVXMzZUpFVXpvUnlNWXlJbzdhR3RWV0VLN3J4MXpJVlVDZ2NCUlRlZmM5cDYzdWg4TnVUQXNaU2JSClhLYktlcmlWN3JsbjNETnlUVXhzSnJlbE1nR3V2cUkrelpPNUJ5ZC8yeC9kRXlHSUtLai9pTWk3bTIrMmNFVjEKRmtKR3U4enNQTlo5VmlVUElVVzVEQzRXcXhXUjFkUWx5Si9MbldFalYxZGViUDNLdGw2Zzk3azRDUlluNE14aApRTE50WkE1NHNWcFVFRXlkMGZCaXF4RFpnM3cxdnBFVTBUUnB3STZkOG80REg3cytteUVJOFU2a25uNEdSYXhlCm1kTjhKR2pmZUpTVnAzaWZlVXVZd09ySHJUWG9UcC9BME1haG9RZ2xHR3NDZ2NFQWpLSWgyM2ROTEEzRUNpbnYKY2orQ2hDN1BHc3hXNTI0NklWMzRnYlpnSEdPL3p4bGhUUDZxVVdSU3pLRXVxQzlocHRCRTdPbTU2VkpKOXlhZQptQ2orY3AwaVltcFFGQk1GRTJSbmh0ektSZ2c1OXJ4d2FzWllOb3d6Q0U3MitRdVJOL3V0cU1UWmUyVXRoTGV4Cks3clFudDdoaHZlMzJwd0RheXdkeFh4bVUzZ2w4U2IyUWdUNDJUa2ZYY1d4Qm1waXluTm9yanFXaTdLUU1YMlUKY0xiVUJGMVhCSVZXVElOVGdRM3h4ZHZ5UlhzZlVFbDhXaWJHaEM5eVlVY29hc01aQW9IQVJydVRaRE5yY1F2Swp3YnRJMWpxYTNLQ3paTjVGSkZyNEFLek91eVhKZmMyVnMyR2NKQVFqYTdUZlA3dHdiYUxRdWEyVTFBcEtwampmClh5ZnVib2pzSFhvQ0pWYk4wQktVazR2c3BKU0pVdzJZZkRqNjJ3NVNCbCthMHJYYjhOWS9MdTU2QWZqUEpwYWgKdm9yUGs5SXlhQUx0cjNETjZtS21HZVBWK0wrZVVDRXVCb3VhTTNmYnB4OXZCOGRnQW9sR1hGeG9ua1dmWFBxcgovSmxjWXF4WjJ5YUZNem5jR2JWTTJYaW04SkVkTlZEZXFMMWVOZDd0bHlyRzR2eWFPSUhICi0tLS0tRU5EIFJTQSBQUklWQVRFIEtFWS0tLS0tCg==")),
      "olsonjacobi.name"  => OpenSSL::PKey.read(Base64.urlsafe_decode64("LS0tLS1CRUdJTiBSU0EgUFJJVkFURSBLRVktLS0tLQpNSUlFcFFJQkFBS0NBUUVBOWZpZXBwUHpCQkl3cUR3bU56RDZqZFVxL2lSSitoZ3F4WHF1akZxZ25NQnF4aHFuCmR4elJhbEdGT2tXeXdLTTJPS0RuSHY5akNReGVOY0xUcHdQb0pEaEwrLzlWcE9mTXliQmZPazJhVk81TUJRakUKUnROM05WeUNobnpKZVl2cjczTk51NU01aTJ2emw4elh6RUFLS2R5bm0zVXFDbE1tbGtyRUM2VXFWdFdJR3dPLwpMb2NBQXFxa2F5TGJBVzFMSlkxdE94VklzYkJDSHNRYXlhRUFMYTJBVE8wTlJvRSs1ZXRoRkQ4RG10UEZwckFNCnNrWkxicm1iQlQ5bC9pWkNRUDU0N0FFUkxOcG5haC95VlRXZ2pFdHVWK1dHeklKZTN3c0JkVHZ1TkxpaFh4U20KVm9uUXo4TXpvbVBoOU5INUF4SnRyaCtjeHpZWWRocGFZTkdZYndJREFRQUJBb0lCQVFDSTl0ajQ3dGRhUS9xKwpJMGd3WVdDVFM4ajEzU1VvVXY2MkdodEo0a2tmSC9JVXY5RFNmY1NLakR4QWQ0RVN6WThxdDBZYk42Qmc4SGNoClBveDJxckZBUWV6bHRJZHZIUGdtc3NSRUJlUlRPS0l5QjNDcjg2S2tudys3Ylk4TzFJQWJSTHhiSDU3aWFNa3EKbFJEeEZoUFN2YURDNnRudkIrQXJ2aFF1VzlrWW9oVUJOcmtJdk90aHhmMDJTaDBCcXF4ckQxSUVPaVpFUmJ2Lwp2cUcydUdKYy9reEVKcUNqK3IwQUlIYXdKSDJ5Sk9iMnVoWHB2L2czbjJjdjFhc3l3WGV6ZmlmbUYxbmtkZVV0CmxQclIrU0ppVnk2M3ZoTDZGa0dxMG05REdEeFZLN201MGluOGVlZTZ0L2JvV2ZXTVovaURyR1B5TjdHMFBZRDQKK2dkTUFPWjVBb0dCQVB5WUxyV1ZJczh2SEUwVk13aXRoQWQxN3Z1RGJKV1Y4OER1WThGWXlsTWZQSHBEejNRYgpLOElWbmhaMlBtNEQ2WFhZWG9Lc1BDVExWRE5hTDg1VzBUaVFhT09rWE1Hc0xDM2xjZlRTQ2NqbkFESDVtTWlHCm1nUUpYdTVFbmFIajJVbERnUE9kYkRlcjUvem9xdjVzKys0NDdrRUo2N2NWSGZ0MVB5aVdhNFNkQW9HQkFQbEoKazhueEFuVFBzOENpOWE4Z3VZTXNqVHFQc1cvYUp4YmRtQ3dBZWxtMVFTM2RKekI0OWJLQU1hSG9mSnlIcXRwWApkSXYzeVRFZFZaTEdJOVpyMk5HN0ptUlZpejBvM2lQVTJMSHV3UmxVeXRNMDFBdGNPbFdZQjc4NUg4V1RPakpjCjZuUmNwT0hETHlNcVVsWXBMM3dKTlF4WXpydmRqUW5ldFAwWDZCVjdBb0dBWHBNMFdmU2U5ZWZ6dHNETFBPS0sKM3FnL2RKaCtuWHRwcXNFWFJKdFVGYzlLTzVVTUpiTE9yWHFlbUZacGhaT2RZK3hCWnJmS1JSU0VVRDNpVEdXaApMSWFWWHpaNUxHS2tvQUthcWtuQ05DQ1pxQnlHSWY2VHlCTWlJaUE2elJTY2xKdmJ1bHNrMjZ0WHp3L21oaUNVCksxdlJpVFNIdHlNRytOR3JkaXpyME5rQ2dZRUFoeW03dGd5MU5qeS95NzBQMVFxN1MwSkd1Ty9jVnpkRFpvUnoKMDdmV252bEdBK1liTDQ4R09PaUZBTEtiamd1Sk9hV2RqWjZtT2JrY0F0N240NFRLSkwyQ2pYaE1iTGJSNnorbQoxcU1May82RGtvemNRK1NYeEgwUUJrQ2sxMjJDYW5neXJ6RGtQWHlrL0Q0Z01wTldLYnljUkx1S0xCWnVPR0hHClpFd29EQzBDZ1lFQW1KYVRXSUtMeTAwLzkwVWJSN1N5QUlEQ1dLKzYzM3hnQ1hUOE1nOHNxZjRjWXA2dEJvVHAKWWdYVWtOcUtwRGowQUcvZUxQZ29vaDQrS0Q0K0pEbU5acWlTdkQ2SnU2dnhHcUlpOFZ1NlN5Wm9sWmYzT1cwSgoxQWZwODBUSDRlc29YTFJkMk1FMnQrMURwMlJCRDNoMmd4K09POW5UR3pYS2ptR3M4K3hsQnlrPQotLS0tLUVORCBSU0EgUFJJVkFURSBLRVktLS0tLQo=")),
      "okunevabednar.io"  => OpenSSL::PKey.read(Base64.urlsafe_decode64("LS0tLS1CRUdJTiBSU0EgUFJJVkFURSBLRVktLS0tLQpNSUlFcEFJQkFBS0NBUUVBdXpzSUI4Sk96aXVRa01TUWxtODJBRm9SVExwRWJiekVxL3hBbEJiSjJvb0RqaEZtCm1FaUZLSWQxZERmNjdreWZsYUtoeGhSaTZoQ0VtRHJVQ0FheG1DWjdiOXRPZS9YaTdBWm8vYlRJVHlEY2Q1b2kKbmk5RXBPZEpDM1RscGZoeXN2TDlpV1dzTkNmSjI1aFZjUWQxN081RVFRWmJGc2N4MklwYUkzdU9kblVISmYyUQpNa24vbmpSUGNqeVZ0bE80RnFCbWw5bjMrRXdTTHBiQ0RnZk0wSmxidTE4WE9kNnZvYmFaaW92WjFpMCtwMHkwCkgwYTBzWHp6RmhPMXRIaFNreWtZS3plSFJGTXUzTzh1MFFGQVgyV0tpQjVNemVxQk5FQTFZRzNDRXdmZjByMEQKREIrWVZMMzZaaE5YenBKT1oyTEtRQkFXU3ZyY1Nyc3ppZ0RjUFFJREFRQUJBb0lCQUE5MHBnc043VGR6dlRGVwpLS0ZpZU5DNm5xYjQwV0ZGcmU2TW1rQWZTWFp5NGl3K0gzditzSTlSNzA0eXVOSW5IUjFiR1lPaWR5L2ZRVExYCjJGejVRSHZRNFd1d2JPQXF3aHE5eExqOHpYUkt3Q2hYWHZnejZyUzZLdnQ1SU9QOGlHdGhSN0NwNWZkQU9aZVoKRWFTTSt4MGQ1aUNBQjlEdmpKdlZmKzloNmJhNWVqYnJMUkNoMzZZM0UyZEYweTFraFdCdFhKNUxpQmdkMytqKwo4d1dqelZQMnZiZVBsYU5XM3NRdG8xdG1QSjlnSUtyTkorSE5aejdyMVVFcDhYNUhwNlpkUGMxN1ZRaHZRUVkwCmZvd0M0SWlzWC9RZlBZUlZPdmxpQ1h5dkpKUk43RTFwN1U1SWNhcmpGY0p5TmxGTDFUQmRreXo0dE11QkhFZXQKSG8xNzJBRUNnWUVBNWhFelBTVDhsNzhZazZtNFNQdHBNY3pqUHBZVVAvckk2SDdaWnZZNFVJQ21CUVBINitkVQpDVk5IaHB4OGVyV2tENXlKdzI0NlNyTFl1NmNBL2ZnaFpWc3R3b0FKakRuZlRwdnFOR0QzbjFKcWU2alkzMzJrClJhTXVIUWJ4US9JakV5N251N1JKQlkzaDc5bEpBMEJ0NXVVeWNQRHB6bXNQeVFyMW5ra1FpejBDZ1lFQTBGVzkKN1dzTHRtc0x3ZXNZeEpTeUxYaWxLYm9IU1JiZ2tpQ2FuMHpkUWRZTk1NQ2RRNW5nTXVRaWNCbk5nRjBxRWFqcApuWTEvY2phRnUvb0t2S1Y2SXNpa3UwYi9USWxaeC9VTDhpNFo0WjI4ZU1BVUN0QmhoWXU1Rjc5aUg0UGM2bU5mCmF4dGdGa05HWXE1N3ZrcDN3a0l0SngvVjJTTHRjNDRSTUc4YXBRRUNnWUJ1aHlManBDcEp5TC9JNlFlazRFdTQKWmlOaVJQMnpnd3NVVHlTb3gyOWtsWG1zL1JVRjYxdS9JeWhBcmx0TEpJcU9DWGxSejFubjJ5WXVlTndNSnpIOApIS0xPUjI3TzFGckl6RFRuTnhLZmt4dWZEdzRweUpXcjh1cExmYk5aSGpIbG5Hb3VEajNxa2pCU1owUWhjTW1iCjNNNnYzYjJsc2wraUNVYlk1V2N5VFFLQmdRQ0VJOTR6bUpIMVFqQlM3eXJtaE9uK3JXY1U4RWx1c25QK08yL1gKV29sOEdLaUZJNmFjR2gxNktma3Q0Uy9YRzBCenN3OTZQeVYyNjk0blBKRlMxaUtCcllIT3gxbG0wamQvL0kxMwpMb1o3OC9CM0psMlAvbHZjdUtMTnpUWVBoek8zOXcrdWY4NlNVRmwwZmZjKzJ6emFtZDdKMGdkeGtoWEtGWElSCnBtYmdBUUtCZ1FEWGllcjZScHFDczdXNUNma1p5VmhabDNEQThhUVVzOHEyYUIvd1B6NzU2Tm0yZVB4R0VaMHgKbSsxcUVFbmhZWEdybVNyMzl4RHBYd3Y0VVNCOFNhMnFENzVaMVh0OFRFNnZBZDRMNGdwVGt4QS9MOHNMLzlnKwo5SjhYcmxaWWQ5ZUMwWjQvd0duQjNmbkkxckFPTGFnaG9ES2VUKzdXakVnMnprV25GUmtNM2c9PQotLS0tLUVORCBSU0EgUFJJVkFURSBLRVktLS0tLQo=")),
      "gerhold.co"        => OpenSSL::PKey.read(Base64.urlsafe_decode64("LS0tLS1CRUdJTiBSU0EgUFJJVkFURSBLRVktLS0tLQpNSUlFcEFJQkFBS0NBUUVBNTRGWm15UEE1NlVneFIySlJ6WXJ5d2ZrUHV6ODc4NGp6cWNKbTduemJGLzdqaGVpCmFHeVI2WXFZRmExU2NyaGxzMXVSNGMxNFdJL2YvY2NTWVN4U0ZkNkVNV0NwQm5HRERGZ0pYcjhLRk1nNkNYRnEKM2lsbEVncm44V0VrOGFDTEtzQmpzd1BQZFNySHdjZGw3MmYrMHNhN1d0YzNUNVJkaTdGZCtIcGR6UW9UWHVwYgpaVXN5RU1qaG9QQjh6SDFiS1A1OE00UXhaU0oxdThaWkk0SUJiQ0Z0QVNNNlZ5alZESTAzSGV2cXAxZXFPanJwCkZJYWhWQStWdFd3ZGE2TzFuR3RjWXNKUWhGMXJ3OWgxNHFtU0tTbm1LQWZWWW83VWpzd01kRXhMMjhHZThvaVUKd0liSWdhSUpYcVRldE5ZUVZDWTBLNTl6Q21VS0FmVktwb2RqZ3dJREFRQUJBb0lCQUYzY1FNTTRwTDZHWVpucApscjNyaGFma2hETExET1lCTXQxWE5mc1FVbFJQT2dOcks2cWcwaXZZeUQ2SnJoTGJGa2k0eUpXL0k1cnNna2szCkRBbWYyWXdLVXBoZWMwa3NmcEJqcFREbnphT05acEpyaklPVVR1a1l5TjlCbnFQa2ptZi81cXd1MEU3VjBIV04KYlpPNkcwUEQxVFJJYTZGMUt0UTNUajB2QjViWVNJaU5LcS9WMEtWbWtucjU1Q1pxUFBkVDl5dytITjNrNG12MQpzQmpTQTNxZGFDMG56UkgwTEUvZ1AwQXFYNWswWkhiYzdKNFdyRXd0dUlia2dRQlRzNU9PaERmY2t2NFlycDloCnhHbUxYQzJYaC9nUzhGc2ZpN1F2b21acS9mbXJqSG9qTlNSR2hPNGNIT3ZuU1FyUXAwemVEaXJlUjB0MDlWaDMKNnM2NmJPRUNnWUVBODVCV0RIeWs0RmQzQUxVeGN5VHptRmRQRk51S2lPZnFWanlVZHM5VjZKeURHQzIxald3RQpCcXFISnRrUHdWUlVmUHI5ckJ6VzhSaEhaV29DSlI2K0pUVFJRQkJuNmFLditRaFlOOVJReWR0VGFFaktSWkZoCjl0cjJhYm5DeVBkZXJzNm45VENHdjlJVkZsZnF4YzZmMmIwdmVDWnFKN0MyOFFqelhwQnpidEVDZ1lFQTgxTmwKQ2V6ZjJpcWhQVmwvNXJUNWY3OVhkRjRablcyNE9KMmNNUHNBMkMrWlh4NnNzV2FsbTZ6OEhwVDhFc2lRVmYrdgpsZzduSE1JNDlzeWFnQkFKdmlnZzYyd3g3YkVKSnhUS1V4WFZ4amswRTVGc1NRZ0dtV1ZnZ3lMc2d5Vlk2RFJNCk9xTERDNDkza2VacmxmSC9iaFJyOHI3U3lmcmRKNWdHQVM0Q0NoTUNnWUVBak9hdDhQRldqSFhzNFJyeExYUnQKKzI1ZTBHa2xIb2hUbDJuYVZWVWlsTHVlVnlseVF3cisxVUJuaVVDL0RZK1VoT3pLUFh3OW1DSDhnNTJzK2Y1cgo3Nmc3ZVQxRWIvTnVxN2w1RjJzYkJYdDlKL0ljR2R5OStJbTVUWFpxU2NwWkd2VndVcmFzN1dGQ1U3ZXVtSm9zCi9WQ2xtbk5XcS9sZUM5aXF1Y1VGRWxFQ2dZRUE3MGxHcHFFVWJwYlhvOTVkQWtOY3pQMGRBdW43Sks4ZXFFYU8Kc0RoVzEwTFFBQlBKWGxnRWFuaU9JNEQ5OTNiWFFrdEVvRHdkbVZHQzlXbTJVbFB6VU5aanNVRGdSTkNCb0xZNApWY2EyU000K1lUUDBta2xUUEF6UEFZY1pzY3JMaU9iTlJDaUZ5TnVZaVpsZ21iKzNJc2pnYzRLbkJrdzJxbFk5CktYSFdQWk1DZ1lBaGR3eVdFK3pFWEpnUUFrVGVQdXhhR3V1YlFtKzdDYWpOa0thRkhPZzFFSXNkZllwRlNpc00KUW5RQlhydW02bWxJZjdXaGNBaDN0MjJBMWRwc1dhckZiN1F1cVRaRTlBbVcvTDRaMmNSc1hLd1A4L3Z6bzJoSApQbXVJK3loc083UlRwdENUSkxWVENJWXQ4VkhZNTB6eHdxY2NHNFEzZVVialh5TmFlTVpWd3c9PQotLS0tLUVORCBSU0EgUFJJVkFURSBLRVktLS0tLQo=")),
      "hoegerrenner.info" => OpenSSL::PKey.read(Base64.urlsafe_decode64("LS0tLS1CRUdJTiBFQyBQUklWQVRFIEtFWS0tLS0tCk1JR2tBZ0VCQkRBcmw3dkdCUWI0UTNRMWcwYnM2RktLWW82NEQ3b2ZseW4zRVJVbTRXdnA3ZWpkbzBpNHZtOXUKbzd1MktCbitjNWVnQndZRks0RUVBQ0toWkFOaUFBVEowVmdwSFNDcUdYSk16V0l1cStNUzJoU3kzQ2E4WVBFRgoyNHNtVEtKcTUxQmRUdng5Q2phQVQ5YXAxMmVhRkE2YWNVc3VWNjVyeVc5czA5eFI4VlZsWnFKSFY0ZTJZZm9OCkVXQXUrKzUzZHQ5cXBVeFlpM2ljWnhFMDJNTlkrSW89Ci0tLS0tRU5EIEVDIFBSSVZBVEUgS0VZLS0tLS0K")),
      "rice.com"          => OpenSSL::PKey.read(Base64.urlsafe_decode64("LS0tLS1CRUdJTiBSU0EgUFJJVkFURSBLRVktLS0tLQpNSUlKS0FJQkFBS0NBZ0VBelNSeHpxZkhpVFg1bzl5N0JBdE1NM0lxcmtrSWNMZmhia3FHS0V3VFJXYkMyam5ZCmRDaXQ5SC9BV25zYTdpcnlOQ0hwS1lhUVozMkJ4MVVycnQrVk9kMm1YSDEwZHJ5VUtQcTZDdk1rSnBqYitNTncKTXlmd0dxKzdNdmMrUDBWcXp3dE5oNnplVThubVRzMTY2eWd0SVdzREEydWprc1R3ZHY3bEVFK0xMY1djbC90Ugp2dCtKcWtqeVNDYm1UOWl2bXUyeWh4UGFWbmU1TGxLQ2JnOWVJZEZTWEV1R2JFSnBpVGNhZ0lsSUh3VmJ6VnpSCllCbzlobjRXbHhXSmVUSkNQYmxIN0U0cmtrNUdJUDJqUnlvYmdUb2pTNERHS1hqc1ZwamJtc0l1Vk15OE5qQjUKWTJVcU54MVRaWFcvZTV2Nk9jUk9mOFFXSmxhQW1jNTd3S09La3Y0QXdoZ3QzWnluTXpnaVZaQ0Q2MzFDMmszYgpIUitTeHNneXFocHFZSEhUMThxM1hlVnI3d2lsR1Q1WnBremlIbk9SbjlFRjIxa21jczc2MWNBS3hIU3lENkNwCmdTVERObkc0Sm5sWjVnM1BpSk9YR1IvajgvZzNmZ3YydnAzL05nVm55Q2IrTUhCT0ZSaStXOXM1ZytMRU9XdTEKNmp1b2lWOHpaNlk5UmZFdHhVZjRzZ0ErNFJjUGZxQkJ5U2JPRW9neDJ5dDB3aVVJeUwyTEpZMmpBQUNxTVpSWApVUnB0bEtsVjAzbWZuL0I2aHkzNWR5VmN4ME9WRlpXK01tZUgzaHNHSWQwZE92UWdQaHpHOVBkcTVCUWVoQkp5ClpvdlU4RE54U0p5dnA1N0tqYlJWY2VIeklzUUw0MGZXdW81VlU0bHdnLzZueDdmYWlsdkRKSS9hZXQwQ0F3RUEKQVFLQ0FnQU1YRzdUSWY3L0FKYWJUaGlpeEwrQnRoWm1UQlpMSEhsaitPK2VpLzc1UnBqbEoya29qcTcwdGFIMAprY2hzbzMvV3JsaHJYU1ZrWndhajZUanBuNlZSU0U3VzhlUkxwMDlTTE5GN0NXMmJPY2kvYzU5V0pjanRBcnZICjlXZjF6Z3dDajg3TEp4cDZlQWI5cHBvS2czQTh2RU1CT01JeGZOWjBoU1Z1Vnl5dXhHS01NZU9hR2NRazA2SnQKd0pKT0syTmhkWU0xYW5mVWtBQkRqMHMyc0l4ZWcwdHdMa2phU3lJcTEzd3NWSmxZN1N5NzhpVFhvcDBrZG9LTAo5Z3REbDBpd2lYS1JCYURRZnhEd3VmZlZ1TzdSV1p4NDF6aVpsU1RBanhOa2Z1RGwwVFJpRzRlaytwcVJtWjNGCjFsT0Vja0NnckhpQ2NHRlpUQXNSdVlSeGRpbEtXSSthRU15L2lxUzFja0dPR0NuNUVMSmNpT21HV0hTQTF2eFgKZ1FMaVZ1Nkh1b0ZpcW1Jd3NWeHF5MFczN1ZDUEpVWFRXVmhCOGRXbjJscklyd3U0WWhhZzEwcXJ3cnJIQzFIWAo3a0hyU3JJRGdCSzBNdlQyTFh1TUU2eFcxT2k2N2k2RG05UHNrVXRIanVUNEpWTk94YUdRVUVBQm5YSkd5Y1MzCkRFVUFoR25qRmdpY29vM2JoQXZrdmh4WXNFdUdVRDZiVlZ1UTN0MytnbW0rWWVoSlUxdms4bldLYVdhOG14WEYKQWYrZmJIZ2c4TWxaVnJjOWpQQmZJZDQxdEZlUFpQbXpaaWFHRThnbHJ1d2xzQkhHa2F5WG4xYWtqM3JiV2NscgpLSWlRemJ4UjczTmZVTHNhZ2ZtL3lJWjBQeDRjWHgydG9zYUZiU3lkbGZLVDhaNGNEUUtDQVFFQTVyUVRwT3QzCjQ3VkZZUkw1ZTNaZTc3Rjc1MG9WN0pob3Q5YkZjenJFQTl6cVRFTC9Ua2pGbVE3RGR4aFgwTVo5YVZnMklMY3EKaThOdnpZWWhiMDlwd1ZsUWpzQmtocXA5WjlYWWU5bkNJRHBCMFhQWnRUM2pqbUtFcUYwZC8yT0FHeW16bWhVcwp6ajhnNDRsbFV5K1dvc1p2L2NicmF1RHZaUDBqbWd6cTRWSDlRK21VR2RKZlRDNXpBYldnZ3RodjhyWXd4YUVyCnhxOE9DNVp0V1BWK3BwN1dKV3ZSRWs4WWtTcFZVWjJVV2R0V2VaUk5hNWIxUHBUS3J4VGRxNkUvb3V4d1UwOTMKYWIwWDVlMGs3bnErVyttK1Y5Uks0NEUyL0x1c3JUWUlkRVRuWUpsRVo0aU9EUEJGNit5QlBtMVBKbGtSN3RjQwpNelhsUlNXRllUQjA0d0tDQVFFQTQ2TGNNUlZpdHd5QWkzamY1STd0amc4TmFpREw4dkJ1QzFzRXlMMndKaFNUClVXU0tiWmZIcEVpNlI1UVR2L01sd0RHNUZ4VThUWk1pSHl1RFFMR0pwYnQ3Vk5mZFVpWlozZkJiRkNKK3htaDMKOU1FRWszcWZJZlVHN0d3RmlkUEx4R3Q0OGMrREFNZW5nYnVhNlpMRTdvd21SZW8wK3k3cmRpQ3d3MEY3MWxUSApzbVd1aEhCa1hoTFlpU1lpZ1ZRTVJDR0U3aW5LdUdkQTdLd2dpTWQ4VVhrV3NibDJZRmFmd3JSRlVZVmJRUlJ2ClZTVnVMYVVoYTZCbzFkbGxLZ1lrVFIwOEZRNWhrVisvaGtZNlZoM1BCRzZEZXhJR1FiNlJrQjdDNWprSVhDdlMKUzFvOWF6aENreTFralo4YXpuMUg2Ky9xM25qckl5UXNtcWdoZUpBZFB3S0NBUUJBNG1Tai9aVzZkVUVPREVnZQpjU3hDUGFpYlpEckdVQmNqblVQckpKdjhlaVZyVFd5QWwvYjdGU3ZrVXZSZnczT0NMVTBMNW5nUTF1YWE1eDZBCkw5V09pNUFjbGYrdjRFTms4TC95RlV5RHc5Ni9DZFl4SXpiYzFOaDZnYlh1SGczcGxkRHRoUWNVK3F4RlVsOHQKQmpWWGtuZnM2QVZPQ2ZWS2NlZVJiQkNqVG12c3JjVDVmakZQTzhFY3VmaHExSFNuenBYby8ydFFkZXQ5VnRGcQpNNkZyTzBEL1JWT0gwcmNXSE5IaUltK1cxaGw4R0RtdUNNYncwdWd1VmJBQ2xWZFFleThjUHoxV2Y5ZzQwbm1RCm1QVHc1TXlqNXhFbzZ5Nkw1anlxZW9mbUszcm5zRE9NNnRzSXlJcmh6NktKN0RSV2xMWjJkZ0lvWlFBV2NuY1EKM3BBQkFvSUJBQmQ2Q1dtS2doYk0xRWtPRzFFd0tISFpQWkh2ZGZsRk1LUTlLOTRrS2hHVFY2b3lTMUNJTWMvUQpyRjJMZVFuMzRySFNydnNoZG9tdG5meEcrWTluZ0FHMnR6NkYwTTZUSS91T3VXWDNOTW56cGtONDBLY0JJMzVXCkRmTytKRWdWcnROQUhrWWFGN0d4NWFXc21vcHlWNXNlbXlma3dyZ1JHN21nSDNyVHV4amN2NGUza3VzWHlGSW4KY1d1Ym9qMWlWSzJHSTNhSW10NnZ6M05aUVRXNkZTazE2dEJEaDJEaUxqSGZjN0szcFRTdURkbGpOZHpCUmhRYQpoQlZpQ1Z2dkxEbER4Wm1LVlNld0QwbWkzb3RaSWF1Y1ZqVVFJOU1OKzJjNHRQTVhlTFJBMUx4dXZ4emF2WXIrClNIdU9xQzRabjV4R3J4dG9yeDk5c0pmMnRSVUJEL01DZ2dFQkFMRExRNzg0SDU2QjhlZU5zZE1wUk1mTitxZDQKclFlVTB2NUxUOElxdldTcmpLZTlHS3J4NTNSZ3RPNEtRTkdYc3FoMkROdktobFNDMys0amxCdms2UmxxUFdFYwpOSnRZSEw4UFBwby9hOEphM0F1RlpYL0NLNFFCeHR2SEdodjdPeG9JMG9zd0EzNG5NcVk2QXJaSktuSjEvcDljCmYxQk03TGRZQk1VNmVEeDBsSDVFM2xkM2lXVFN1ZUdWVk5PdzBpNmpoeDl3MUp0LzZwRis5NDJqdDFiRUoyN3YKYVdXT2REQ1g0SVIxMStiRlhhOEZJcEhCbStoTm1FdWRRc2hwN2pId2hCTjNiZnNSeHJXWGUyd1cvYkthdFBqWAo1N0p1bEFQVlN3L3h1TGJZZFZiVGlvdmRsMWxObXFJZEpqYVZma2ZZSzVJUVR1R0pxVHNzdVkvbWNITT0KLS0tLS1FTkQgUlNBIFBSSVZBVEUgS0VZLS0tLS0K")) }.freeze
  end
  memoize :keys

  def algorithms
    { "wisoky.co"         => "ES256",
      "powlowski.info"    => "RS256",
      "mcglynn.org"       => "HS256",
      "okon.info"         => "RS256",
      "ebert.biz"         => "HS512",
      "olsonjacobi.name"  => "RS384",
      "okunevabednar.io"  => "RS512",
      "gerhold.co"        => "HS384",
      "hoegerrenner.info" => "ES384",
      "rice.com"          => "HS512" }.freeze
  end
  memoize :algorithms

  def public_keychain
    keys.each_with_object({}) { |(id, key), memo| memo[id] = key.public_key.to_pem }.freeze
  end
  memoize :public_keychain

  def private_keychain
    keys.each_with_object({}) { |(id, key), memo| memo[id] = key.to_pem }.freeze
  end
  memoize :private_keychain
end

Test::Unit::TestCase.send :include, TestHelper
