object frmLogin: TfrmLogin
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  ClientHeight = 571
  ClientWidth = 888
  Color = clBlack
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 17
  object painelFundo: TPanel
    Left = 8
    Top = 8
    Width = 857
    Height = 545
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    DesignSize = (
      857
      545)
    object labelDigite: TLabel
      Left = 466
      Top = 64
      Width = 293
      Height = 32
      Caption = 'Digite seu Usu'#225'rio e Senha'
      Font.Charset = ANSI_CHARSET
      Font.Color = 10790052
      Font.Height = -24
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnTerminar: TSpeedButton
      Left = 820
      Top = 11
      Width = 23
      Height = 22
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = 'X'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 9671571
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnTerminarClick
    end
    object painelLateral: TPanel
      Left = 0
      Top = 0
      Width = 395
      Height = 545
      Align = alLeft
      BevelOuter = bvNone
      Color = 15724527
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8553090
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      object labelDesenvolvido: TLabel
        Left = 61
        Top = 472
        Width = 265
        Height = 49
        Alignment = taCenter
        AutoSize = False
        Caption = 'DESENVOLVIDO POR BRUNO GISSE. TODOS OS DIREITOS RESERVADOS'
        Font.Charset = ANSI_CHARSET
        Font.Color = 10790052
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        WordWrap = True
      end
      object labelVersion: TLabel
        Left = 157
        Top = 348
        Width = 69
        Height = 17
        Caption = 'Vers'#227'o 1.0.0'
        Font.Charset = ANSI_CHARSET
        Font.Color = 10790052
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object imagemLogo: TImage
        Left = 127
        Top = 204
        Width = 133
        Height = 109
        Center = True
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000800000
          00800806000000C33E61CB000000097048597300000B1300000B1301009A9C18
          00001DC74944415478DAED9D097C55C5F5C7E765231020248D94102180A0A222
          455BF75DEBDED605544041B64020C89F62C1AA955244C5FED152202B8B20680D
          FEAB52DC6B512BD5AAB5B55851AA948A80A26C42624296F7FF9EE4BEC7BCCB7B
          F7DEB727E49D4FEEE7BE3B997D7E73E6CC9933332E95A0364DAE78672041F1A5
          0400DA382500D0C6290180364E0900B4714A00A08D5302006D9CDA2400CACACA
          4E71BBDD37F2F37497CBD5DB70DEC5F30ECF4B696969CF8E1A35AA26DEF98C05
          B52900D0F00378CDE3F9A1953FC0B117603CCECF65E3C78F7F27DEF98E26B519
          009494940C4E4A4A5AC1CFF6C184030C1B792D6F6C6C5C3671E2C49DF12E47A4
          A94D00A0B4B454D8FDE3F4EA90CB0B100E127C2D3F97666565BD70C30D3734C4
          BB5C91A0231E00151515FD1B1A1ADEA1F1324CFF7A895E5D41C3BEC7985F535F
          5FDF173F57E37E334FAE559C84D98EDF153CCB0A0A0A36C5BB8CE1D0110F007A
          FFEF69A86B35A75A9ED18CED8FF9F33F73E6CC94BCBCBCCB69E4513C571336CD
          2689377896D5D5D5551615151D88777983A5231A00E5E5E527D2CB37E8AC9F9F
          A3E8B58F3809BF64C992A368D8E1FC1C45B8936DBC4BE3AFE6594AFCEBF1EF8E
          77F99DD0110D0004BF25087EA335A7BFD2F3CF08252E01131CE1167E8EE1C9B1
          F28BBF4D328B484E4E5E3676ECD8FFC6BB1EACE8880400E3FEA934C2CFE8FD37
          EA721FDFC30A0B0B1F0F27EEF9F3E7B7832E255E01830C2D2916DE1BC9C79F78
          1EADAEAE5E3D6DDAB46FE35D37663A6200C0D89DD4BD7BF7ABA9EC9FD238E7FB
          F15277E0C081CC4836C2E2C58BBB233CDE427AC215FAD978DFC3B31A81B494E9
          E4DFE35D5F1E6AF500282B2BEB40A38FE0E7541AE2D840FEF0F3DA8409132E88
          563E84EBC0610AF8398CA7A38DF70FC98FCC229630247D1D978A33A8D50260E1
          C285DD5252528AA8C4097C7EC7CE3FB2C0F7C78D1BF7B768E76BDEBC79ED3B76
          EC289C48C070B18DEE4166246B6488C8CECE7E2E1EBA8556070084B163A9B049
          FC1CA79C6BF53EA0A70D88535E85238CE4E965E37D1BCF4A9E0AF2FA69ACF2D8
          6A0000AB3F87CA9CC1CFAB02F52AD1D6D1D39FE02D32404FCD7D2AECFF37F1CA
          BB219F5C244315591FACAC81DBC8F3A60C111D3A74583562C488AA68E6AD4503
          A0B2B2326DD7AE5D37D1A8B7F369D583F7F12CA7727F8D90D517FFEB3CFF1050
          A4A6A61E3D66CC98AFE25D1EA165CB9675A9ADADBD81BC8ADC72B68DF77DE47F
          8D681DE10A7F8C467E5A2400E8ED99BC6EE5F9194F9E855761950BDAB76FBFD8
          D35308BB9CD7088F072AF0FFE8FD83E35D267FE4D12DF08CA6918FB2F21BAD45
          A91605001AEF185EB7F18CE5E960E1753DCFFCACACACDFEB821373F4CEE9E9E9
          3B4C61AFA6F73C1BEFB2599170BADDBB775FE644B70010A4BCEBF05BCEFB69CA
          56174EDA2D020032BEF3BA8DC25D47C192037813A5CA73B0F7390505056FF9F3
          408F1A879F72ADB2B6EFD8B1237FD6AC59F5F12EA35312DD02C3D808598BB09A
          D61A246097E9E4D25017A5E20600118C727373AFE2E79D1420A07A968AD82FAB
          6EFC9C07DA3FB38AB3B4B4F44D535C73097347BCCA182E9594949C0DE065514A
          64864E165E45705C8D9F7B820542CC0100C23B8170D1CFFF546992BA1FDA42C1
          4BDBB56B57366AD4A8BD76F1C2458EE7B5D1E4DC1F007C14EB32469A101CD30F
          1E3CF82307BA8503F8198BCCF384D3B8630600D0DC0B344F2083E3C97F170BAF
          EF21E8CCFFE28B2F1E0B86750380FFE5354D737A83C63F3756E58B152D5AB4A8
          477272B2E816C66BF68C5EA27EDDB88FA4EC8F3A892FEA001015293D7E0A991A
          AA020B374DE33B7EE68732DDA1F15309BF95F0DFD59CC710D7D268972F5E64E8
          162EE1679161B7A0B7652D9DED6C279ACFA800401BDF6F235F97587895357431
          CC78381C560D00AEE1F594E79B0AA94A4949C91D3B76ECFE6894AFA511B2CFE5
          AAD9E44DE7ACEB9107CEB5B34B882800162E5CD8918A1F46A232BE1F17C81F0D
          F4257E4A19D7164C9E3C7957B8E9C216D791EE055AFC8F300E8E8A64D95A3A31
          03124DE3CBFC4CF2B831945E585858F8AA55B88800401666525353657C9F4CC3
          665B787D1F3FC508762BC2B5BB172EB36DDBB62BDBB76F3FFDA4934EF219EBC9
          C379A0FFCF91285B6B2238E123AA79DDC1432570D6895661C2020082DD40C69A
          89868E3BDD9F1F114A78BDC2F35B32B3365C53A9D1A34777A2B7DF6A80AD5FB7
          6EDD545EDE2165215C657F515151666B31C98A240100590379D5F34D1DFD034E
          38C82A4C480080DD9C0B7BF925957C51203F242E3DFC5124D6871146360611BD
          5F623CEF4D7A4586F145A6C79DDEAFE0285E7FFBF6EDAB9C3E7DFA8D11AC5727
          79BB887C158B2046B99FA4533C4263FC3B9679103234A1FB34A76FE874995661
          8202802440655750CE1B2CBCED1436CF90501C8905182AF77B54E83DFCFC318F
          8F96B063C78EEAB8E30E891AC26D9871E44F9A34696B04EBD592186A52796DE1
          E9AE390BF779834EB2342D2DEDC9E2E2E280D6C234D009F83B9932BAC8FBC6C5
          8B17BF6F840F9AC4388697BE7A7880F8AD1448CE0160983F3D6F611DFB21CFC3
          147865A4F6D5C1EEF361F7323BF03BBCE4E7E737E6E4E478851EDAFF7958DE95
          9148DB2901009F198899C8D3B7B2A14454D44C896528741BE16479FB61FEF77D
          93FF0F719B0A977D29D8BC10FFC980E97D2DAECFA98F1E56611C0140E6D9BC64
          89D5DFF2E57A129A1B89F1DD4C0C1D37197BF4CCB4971EB37CD0A041B268A46F
          F8B8817CAC8E641EEC88867C4635732727B489BA92F27C4DB91EE29DEACF137E
          1A295F01F5BE2498BCE0FFE7BCEED3E25903007E6215C629007EC5EB1726E7B7
          798AA2B97992294C1FB8CEBFA9AC24CDB918B73B4E3BEDB4C1B208A2B9EFAAA9
          A9C99B32654A6DB4F263A689132776ABABAB130594AEE07A8D8A3FDBE4160AD5
          11C7F7A8FB0F9D781605207E3F322D204DA67D165A85B305006C251BB6F21F7E
          76D6127B1E59E0BA586CA1A687097BBD464BFB19F2740D859569DE399AFB7CD0
          FE3FD1CE8F296F62AFF0A096878FC9DBF10C5DDD117E47D218B2E6D1D741541B
          089B867F1FDD096E2B89EF162779315654F5A9AFA8D17B02801D56E16C0140C4
          85BC8A35A79D8CF3C73959A0890421049E0B3B7C5DAF971E3D7A5C79D451473D
          67DAF1338806F9472CF2E421D293DED95F73BA83B17BAEF6EDA201CEA7038D31
          4CC10E936568E445347291F865C89B8BBF9F69FFDBC5FF2C37A178A8B4B47489
          01380F3D43DAD7D885730280A779E9E3C83D443C3B56952C64ACFF9FEEF9EED3
          A7CFDFB3B2B2F4F9ED7BE4E9D418E7E94C5E7FF17CD358F534404F00E0B7C731
          9C6521E5CBC6D3DFEAEE708AEC929212D933A098357D97EF2FF4FFD7D6D6B65F
          BE7CB925A75DB16245467575F50ED392F14FA8933576E570020091C2BDAC2956
          E6D53A5190A154B07733E7800103DC70213DEFB6639D10157C32152C60964D1C
          B286FE09BD732D339CA039070010C393719AD35A1AFF4776E1A8BB7D34947738
          35C6F926C9DDCCED640601071021D752B826BCF4FC255A3851B5F770622D640B
          0058CB4EDD5E0DA127B7A8A8E80BBB709124D9B1BB63C70EB1FFEB999999A9FA
          F63D34AC1AFBF6F3AC365818637229FE0235D0B30896054B972EDDEE243F53A7
          4E6D5F5555257EF5C597EB01C0EFEDC2028067C9873E55FD846716409465DC7B
          797A69657B19005C6A17A71F79E841E4A1194ECAE2840348068FF17C83D01322
          A1D90B9648F376B1FA85FD2BD8BFFEAF2768FC9B0285130DA2D1AB8EB6496207
          20390776BCD92E2FF47ED1B73FE2F996B13A3D3D3D6FC18205B63310CA7105E5
          78CE499901C5C570A73F59F991BD07F8FB489787826923270090F5F98BB5C28E
          075DE576E1224D547A666A6AEAE7B0FF8EFAD237BF2FE77F2FFA0B3364C89064
          C022D3D5531C26B3213737F7143B4314D27B9597BEFFF0611AE2A74ECB42E32C
          956DEA36DE9612E718BBB8689FFB7979CDDE689FBFD03E76E6E687EACFCE0343
          C00C32FB8096C03B24709AD3042249B367CF7EBD6BD7AEDE953F86A36ABE3B07
          DA5245EF1F4E6F5869727EC350C608C9D2B54F65F13DD64A016370944FF5BAD3
          C77127640C6952A7326D351BC1CAB83D1F20CE00888D56F154565626EFDEBD7B
          0BE97BB91BDC602C02A7630592130E700C15F66F93C5C9D9B0DDBFD8858D3415
          17176F844D1FEFF9DEBB77EFAB3366CCB830907F7AAA9CE97395E6B48A5E25F3
          6A8F50E5C28F006498C703657D857137A0110BBD77365571B7E6F40E7186D421
          00D3B1804904DC9388B3566CFFF95E459D6F71121E7F52B6B55ADE83368471AA
          0914BB7AAFE0128FCD1654F219A4FBA6960759F83971D2A44901C73A1A4BA4E1
          AE9E6F7A471FC6D4FFE87E00722FA2D2DD769396DFCDA6628340CF15BFBA31EB
          44FC97C4B22E3C04777E92F25DAF39C9B176A38389C32900A447BCECF996BA17
          AD552C37319287325E059AD3ABA47FA1551800504D3EBDFBF0F6ECD993B27AF5
          6A9FE1C290E8AB3C7521F379384B06FE0E9AE3835B88E9D5F39A530D1CA9BB67
          1E1F4B42E0FC0E5361D950EA5D0B0FC510C6F16A2068FBBB8C759A9318784C89
          456165CB754646C676DDE68DDE3C92B16E8555382AC36706039D4F6F7DDDE447
          7622CD37059565EC95B0E3A594FB03CDAF985B7B97C2459660B818A6E240F487
          A9BC1ED2F2B289F6383ED80539C7002041F3D4A70A212C3F12367D76440F1B21
          AB7F9AD301431F61792A170D56A19AB799796813C0B9DC330CF07F9127649A15
          F05838CAF9B66C4CE179C1986EE93DEE52EAE5651507225D515E0DD49C7E0E00
          1E08369E600020A6D79B758993EF3B9005E63A8D238CC2CA52F4055ABA15A45B
          60170E61E854F2FBB66935B186F06F19D63B67E80D6A43229DEBCBB79F33A4F4
          320F29B120EAE307AA7935D643F50C45F994D791224BA7A02C826087B28D6B8E
          E6B48D79761FA66107838927188265F7A6E77DAACF4268B8B300C09B4EC2D3CB
          85BDDFE6C4AF1863F0CA25A92C07DE6583E62D34C6B668953D1091A62CCE156A
          F95E4B7DD8AAA1FD515000601A9605D2647F9EF70C1C2AE1662A7955B88512D3
          2A1AFA68E217017F1B0DDFA4C70674A21EBD4B2B6C50639D31E716BB01BB65D5
          A76A6B6B9BC67384AB6B4451435A9798B88799A4F7BF247609CCC7D7F8131CC5
          6680D9CAA594ED04FC55F1BCD5AD5BB775A16E5835B689494FF7829438AF3396
          CD83A6A08D42419F2CBA4CF27C5349FF047D03838DC74348EA67518019C47399
          871DF3BB96DFCF33EECF1D346850254EBA59D30C00F06008E9DC64CCDF4F34FD
          4BE481FB727373979A152F546A4FF2722BE16EE5B3B74D12B216211D6109E0DD
          20C0DBBE7DBB805784359FD3468953F63D8E401609DA749DFA1F66A4E34D172E
          9C172A170E1A000864FD681859210C6A0382BFB4A9605956BE33503E323333DD
          7DFBF6D5FFE7C8C8C18A485366051E65D2A73496ED8E2499FF6FDDBA75784A4A
          CA4CD57CD64FB2957F1AF7DDA6029AECFD4CD440BD5D05085E5441101CF165D3
          6E2BD9357D7BA8F5119259B81F1B813F9009A776714D4443486FB4B42BF0B3F0
          13743A9126F29D43030F378C2FEC8E8FB52459440254FD9CEA11004B3EC3892C
          56793B1F9D7120DCED9FA1E621240080C2F3A880D7B482B819BB4F74BA023566
          CC98FEF8DFA00EEF495F1AA651598CC3B2EEEF9BD930C6BA689031CB90459D61
          5682A3B171B5987717D9DBA0344356D9E0525151616BCB2044BDCF24FC2F35A7
          908FBEF550C83B83E0023E563A923F3253E8242C402931CEF7F3548248D2C3A9
          882650D1C837E6E7E7AFCAC9C9D10122426146B847A24483468E1C996E2538D2
          4B0778144A944D00A31BB33EC530749D5D1AC66E60D1BCF6D29C27501F65E1E4
          3D6400C0B6865230FDC8753982B5A793932F01804CEBFA684E5750092FE87E16
          2D5AF415ECD16B0F87E4FBC9E4C993ED8E638D3B51FED300C15F35A7FD94ADB3
          F6FF81B2654BFBFF9FF9FF7976F10220391842DF3A5FCDD39DF8F6D985B5A290
          012052AE8148FD3CBE5F3023B8D72E2C00A8D3CCA66B90C03BE9D322B88B7016
          9F7380A46711F72BE11436163464C890B42E5DBA5499CCC22FA1919BF20E0710
          F5ED54ED7FB24279B35DBCD48948FEBADA598E8E1B6917CE8EC2DA1C4AA644FA
          FCB5E62416C3F976E6E20040CEFD69D225C82608D9514C2578910CDAC57C6BBC
          E73B543D77BCC83050D14DB9648AF61CE5F82E6538D35C1D947DB1557CC6B179
          32F7F79E7E16E2CCEB300A0B00C66644510C793720CA9977F4D4653615245A3C
          5D78F92595304B7EF85BF88995CA39526418778A3C6357BF9BF6ECD933C09F02
          4927B369BE2C5FD3218E89448708FB7C0032F7B06AB66CF1D00734F0C95699F3
          D8F7694E329128C3ADB277EFDE57666767EBF3DA90F5DCF124EA408C32AD1667
          BEA2175FEAC422198628EB193FD09CEE060073ECC239A1B00160CC4D65D9551F
          F32E238301373722CC75AEA9A9F9404C97CDFFEBD7AF9FEADCB9B3EE14F7B97F
          A844BE078B85AEF2D5224AC77886B24F77B285BCB8B8F82463CAECA1C6FAFAFA
          5E91DA011D9113422888A86B87784BE876BF08CBBEDC2A8C6CACC0DF4B1E5940
          C8DFDC1F3FD71397ADB9754B25C330F5FB94E358CABA1BA70D0C779F390DEFE7
          F4B31700D61591CA5FA400605E9E74A4A1020462AD2BD26D936A9659856246E0
          FD3F9CE5DB9C9C9C2ED15C6D6CE904FB7FC574104744774047EC9028322A3765
          9DE5F906F14BE9B9B666CDC66ADDB5F8FFC9C0810307A7A6A6EAEBF30F51D869
          76711CC944E792D950A9FCA68EFE257B2023A90C8B1800C8A818273EA939D5D6
          D5D5F572BA8BC88FA24338C0808913277EE024FC914C86EA3D1FB9E9992953A6
          7C13C9B8230600B151674AF3B1F2B5C19B0D5AEF7112DE8FA2E36DC29EEE246C
          8242A7889E134823FA1858C2B27677E8D0A1A7DDAD17FE141D842D6408298D77
          051DE914510018DB943F339D1568BB600100C470B34273927585DC70F5DCD120
          77814AFDA6ABEA93D2BC635AA677394CECBA32B793FD074751A139FC4E75B994
          6CD54E311ECFB66DD9B0212AEF7AB75BEDC76F9DDBA5BE22FCD7FCDE496BC845
          105FAB46B5B93E496DEABC536D7695ABA82E7E45FCA858C62B39E460BAB7C2DC
          EE4D0879FDADB639993738106615BDDF563F1E6D72CF541D0FD4AB339264E7AD
          4B31956B6AF45E346EB8C7BF384BDFDD0496FFD0481F039477F95EDF3145BDE5
          9AA522764771C4015052529247636ED62F5D966DD9C6362DBF0407100B9F6E87
          0A1EBFB9FF813BD52934F04D54F885F4CCEFC5AAB19D5213285CEA1F2EB75A47
          1E1FEF78AF0AEB12CAA81C164D8F5E49A30FD79CD6C1CEFD1E2A29871B959797
          CBB66AAFC935D2FF3148FFB6DBB42345D53355CFC67A35C22542A8CBE7C897D6
          401F32E43CE64A56CB3366A9CF830D1C1500D0A345C1633E45E4347F278A19CB
          CA0200DDC6B0776161E196E8D61BBD7DA6EAE66A50BFA2026F750538B2CD4C6E
          F973ABFFC219C49650D4B13BF896F17B1BBD7267BD4BED494D56B58C7707EB6A
          5555A35B3566CF6DBAD54CED9EA132935C2A29B59DCAA0B069750DAA5D8A5B65
          D193BB12479E7235C911A209EB414F3F9EEF7C97C336C2FF417C2E7327AB7B3A
          CD528E2F958ADA7D01E6CD1CD04A00704B00BF72C3B6BEE1F24AFC3EAFA24855
          77ABC1547A1935906DE3F5231A5D56F6DEA2D1FFD521496D8CE4186C45228354
          37AAFE34EE8980EB4CF22A8623C7DB04939D5A0519F72A4743683401200B38CF
          684E75F5F5F5C7F85BC4F063641A102C91A0AABBD4247ADD027FBD8BCA165B86
          17E8A1950D8DEA4F9DEE575F462B1FA190702D7783BA0840C8DACBE580D2CFC9
          63AA91821565CC51B6BB96A30600E3E042515DEA63AADF4B9C90196EC69F7EC5
          89CC18CE8DC61904D577A9B388FC35B37047A56D7625A9B9DF26A9DFE5CC5211
          D5B6458B64486997A68692F7E92ED3BE05111601C9B919F7A9B7ACE288EA9531
          7E0C19F6C2057A9837751A172E8B16515F1E9643A7AF6236F06E24F304EBF739
          34427A3C95707B871455066B77BC5B87D9C255482D652EEB8B2D8326F2F33943
          5341C7FB94E32190A122A5BA5E1532543DA87304BEFFC02CC172293DDA0010CD
          9E8CEF5EE34E1AF5361A75811FBF72D093F95C60110E4589F4DB489D4500FBDF
          A58FFBF492F33BCC51AF071BCF81BBD4562ADBEEE0A9908886DB4AC3F50C36DC
          FEBBD4050899EB34A75DC80296074D46FDD2281A56367F788F541173A6ECECEC
          7EFECEF5C16FC08D9C84935945391CE431BB6DE15664060052FA859DE61CBA64
          C129B550005C040074C3D9F803A0B8B8B86B5252D27FF51B4502297A8C438FE6
          E137E0C1137291A46ABE2471594141C1FA60EDE200C01F28F5D587E2630870AB
          191DBE5625C1A85D1902AE209EF24883401ABF690898A35E701CA640A556E720
          D826A9075CDA8921946D0DF1847F5A78B844CF968D10FAB168EB61E9E758F8BF
          9E867E80C6B53C6859D4CCF879A4B1B171456161A1A36DDA5577AA339801FCF9
          300D1FF36824FFFB6B52D46FB266A9989C831C2EEDBD4365A5A6AAA9E45DEC0F
          7D37A0369D368E10385BFDD52A8E980040ECDAE002FF341DEE7C66A03B808544
          4194979777A3DC84C973BEC56D999E0B95C5BC6C594D4DCD1ABB23E3E1022230
          2D22C6C3A7812277B8D58B8064B5AB51BD823016F246D468109C27979E7EB14B
          8EAA71ABCB28439AD90F3D9FECAB42A681B6BB8662767328BD5A8C447F782893
          EE4A86014777FBD8DD96E95B78F75EB12EE6E7A3709937FC56E25D4A2C95847D
          5BEDFD6F8E4FA94D0C11AFBB451194A43E609AB83156D3C4AF67AACEED4511D4
          A84E22AF67D2B0E7F1B6DD1DE56E3EB7A00039C2F6E2CC9801402E37943DFFDE
          4CD26B61DDC706A3F3372EA4940D1772B3B68C6D76C7BB1CB6757AFFCFD5C934
          E4DFC259E4A1213E7335DF53BCADE949523BA9F5EDC4F965835B7D9392ACAA68
          84FA83B56ABFBB9D727B86943D33551757AD72A5B5539D089F52DFA032925DAA
          33FCAB9B4A56B9AAB149152C2AE1A309DFDFE53B2D0E368FF5B081533ADDAB36
          58F98BE9E5D180E07DFDCE21B933072EE0F888559DE4228B86860659701A6D3A
          BD4CAB84A6E3EC3A03826A8F1BECFF594AAD9D79A8EA69B8DFD008FB5DC94A38
          D209B1AC93B0C9ADFE45199EA00CED01CD349F21C1ADD6320C581E1D13530094
          94948C4116F06E8332AE86EF11AEE10732C620E295FDFAC3746314E2DFCE94B3
          A73EE584FD93E6A1236EA06B992A3DEDFDFFDD6A102C7FA8BB791D63500B5D0E
          7E8F867B95A1E1716414EFC612514EC1DDF465F7FD94ADB3557C3105C0FCF9F3
          DBA5A7A76F51DADA3F743B009817A9F821B92543F4E4A9C80DBF32DF6D108C1E
          C03D4D651C4857A7BB9A8F623F95F771B0D53E4E570EC3A52649DEAD36BB9B57
          1EFFC6FB8D8ED5EA6DD73CE5D7C4AE45EA01CC84302846A2B3BC8574BB3F97AD
          E2B1DAF71FAE1E40D4AEB50DAA777DA33A16EED087B8C4044CEE53E8468BE518
          2661ED5C62DFE842467133BABB8C5E887CC0EF06DEB5F8A9C68FBC653BFD57B8
          7FE952CDE661B22E919CAA3E4E576A8B13F5748BD703E8645C42252B821D34E7
          A100E077B1483FA107F0A5980340C8CFB9BFEF02801F841A5FB094D0031CA2B8
          00406EB990A3D195660514CB1BBF137A804314170008C104CC67F93F0D17B836
          DAE926F400BE143700C0052E92CB193427B92EF538A4F64FA2996E420FE04B71
          0380105CE03D5EDEFBFF00C4C20913264C8E669A093D802FC51B0062F7A79FF9
          5F7DF0E0C19ED13C823EA107F0A57803E0B023E8A13B9105EE8F569A093D802F
          C515004280408C44BD0D6EA86F7B47EB5088841EC097E20E007F47D03BB90E26
          1C4AE8010E51DC0120545A5ABAC03843D743EF6FDFBEFD14BB7BF3CC6418915C
          078026125F77DE73FDDDA197D0031CA21601808A8A8ABE34969885EB0D320659
          C0B600428B172FEED4D0D0205BCCC5A0B497B7229A9783659DC17B2853420FE0
          4B2D020042C80272EEF050CD49CE08F8318DF7C74061C45228252545A68DA256
          CEF4E7C77CCC4C420FE04B2D0600C67983D2ABBCF7FC193D7891D2F605885510
          6CFE6CFE27A78D372DFB06AC1B3F075525F400BED462002024D7C38995AF3F03
          50991DE02C63AFEC9ECD0C1487019AA7783FE4EF62A9841EC0975A1400841008
          C544EC411A3139C8A0B25964295C64BE959D61420FE04B2D0E0042C80397D283
          CBE5683407DEB7E17741BB76EDCA468D1A653B7F0FA407A0B2B6C03E7F7D3049
          3DD6CAF400C3C9FBED34A44F5DB51A3D4020AAACAC4CDBBD7BB7DCD875130D7C
          B67EE48CDC5ACAF78BCC1C9E4C4A4A7A32586B22430FB0D0DF34F008D103C8F6
          F089AD460F604762EB87B4DF352D2D2D8B46FF2A2B2B6BA7BFBD85C150D5DD4A
          AE6929E7F98E95BF56A7076008A155C7E982AD15B50A00448BF6CF545D5DF54D
          F689A3FDF5A440D412F500EEE69DD48B1B1BD4ACCEF7375D7EED88DA34003C54
          35930A9743A25C4AF619B43E3D804BAD62B85A91719F0AFA1ADB04004CD49AF5
          00A150020016D4DAF400A150020041524BD40384430900B4714A00A08D530200
          6D9C120068E39400401BA70400DA382500D0C6290180364E0900B4714A00A08D
          5302006D9C120068E3F4FF7C8AFD530B289B820000000049454E44AE426082}
      end
      object labelBemVindo: TLabel
        Left = 45
        Top = 64
        Width = 292
        Height = 32
        Caption = 'Bem-vindos ao DataOracle'
        Font.Charset = ANSI_CHARSET
        Font.Color = 10790052
        Font.Height = -24
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object labelNomeSistema: TLabel
        Left = 144
        Top = 321
        Width = 97
        Height = 25
        Caption = 'DataOracle'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7884598
        Font.Height = -19
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
    end
    object painelUsuario: TPanel
      Left = 466
      Top = 217
      Width = 293
      Height = 55
      BevelOuter = bvNone
      TabOrder = 1
      object labelUsuario: TLabel
        Left = 0
        Top = 0
        Width = 293
        Height = 17
        Align = alTop
        Caption = 'NOME DO USU'#193'RIO:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clSilver
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 127
      end
      object editUsuario: TEdit
        Left = 0
        Top = 30
        Width = 293
        Height = 24
        Align = alBottom
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnKeyDown = editUsuarioKeyDown
        OnKeyPress = editUsuarioKeyPress
      end
      object painelUnderlineUsuario: TPanel
        Left = 0
        Top = 54
        Width = 293
        Height = 1
        Align = alBottom
        BevelOuter = bvNone
        Color = clSilver
        ParentBackground = False
        TabOrder = 1
      end
    end
    object painelFundoSenha: TPanel
      Left = 466
      Top = 306
      Width = 293
      Height = 55
      BevelOuter = bvNone
      TabOrder = 2
      object labelSenha: TLabel
        Left = 0
        Top = 0
        Width = 293
        Height = 17
        Align = alTop
        Caption = 'SENHA:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clSilver
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 47
      end
      object editSenha: TEdit
        Left = 0
        Top = 31
        Width = 293
        Height = 23
        Align = alBottom
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        PasswordChar = '*'
        TabOrder = 0
        OnKeyDown = editSenhaKeyDown
        OnKeyPress = editSenhaKeyPress
      end
      object painelUnderlineSenha: TPanel
        Left = 0
        Top = 54
        Width = 293
        Height = 1
        Align = alBottom
        BevelOuter = bvNone
        Color = clSilver
        ParentBackground = False
        TabOrder = 1
      end
    end
    object painelFundoConfirma: TPanel
      Left = 521
      Top = 440
      Width = 208
      Height = 81
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 3
      object painelBtnConfirma: TPanel
        Left = 8
        Top = 8
        Width = 177
        Height = 49
        BevelOuter = bvNone
        Caption = 'ENTRAR'
        Color = 16024898
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        object btnConfirma: TSpeedButton
          Left = 0
          Top = 0
          Width = 177
          Height = 49
          Cursor = crHandPoint
          Align = alClient
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = btnConfirmaClick
          ExplicitLeft = 64
          ExplicitTop = 8
          ExplicitWidth = 153
          ExplicitHeight = 41
        end
      end
    end
  end
end