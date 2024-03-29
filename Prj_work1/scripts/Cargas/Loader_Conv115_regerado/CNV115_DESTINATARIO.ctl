--   CARGA MANUAL SIA/NSIA - ITEM      

options (errors=9999999, rows=1000)
LOAD DATA      

infile '$$IN$$'

INTO TABLE gfcarga.tsh_destinatario_conv_115_reg
Append      
(      
    id_serie_levantamento    " '$$ID$$' "           ,
    uf_filial                " '$$UF$$' "           ,
    volume                   " '$$VOL$$' "          ,
    linha                    RECNUM                 ,

    CNPJ_CPF                POSITION(1:14)          "TRIM(:CNPJ_CPF)",
    IE                      POSITION(15:28)         ,
    RazaoSocial             POSITION(29:63)         "TRIM(:RazaoSocial)",
    Endereco                POSITION(64:108)        "TRIM(:Endereco)",
    Numero                  POSITION(109:113)       ,
    Complemento             POSITION(114:128)       "TRIM(:Complemento)",
    CEP                     POSITION(129:136)       ,
    Bairro                  POSITION(137:151)       "TRIM(:Bairro)",
    Municipio               POSITION(152:181)       ,
    UF                      POSITION(182:183)       ,
    TelefoneContato         POSITION(184:195)       ,
    CodIdentConsumidor      POSITION(196:207)       ,
    NumeroTerminal          POSITION(208:219)       ,
    Ufhabilitacao           POSITION(220:221)       ,
    DataEmissao             POSITION(222:229)       "to_date(:DataEmissao, 'YYYYMMDD')",
    Modelo                  POSITION(230:231)       ,
    Serie                   POSITION(232:234)       ,
    numero_nf               POSITION(235:243)       ,
    CodigoMunicipio         POSITION(244:250)       ,
    Brancos                 POSITION(251:255)       ,
    CodigoAutentRegistro    POSITION(256:287)

)      

