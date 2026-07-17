# Agentic Audit Brief: Compound Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 3 across 3 audit(s)
- Eligible audit results: 11 (3 matched; 8 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Compound Finance (`compound-finance`)
- Website: [https://compound.finance/](https://compound.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, ethereum, linea, mantle, optimism, polygon, scroll, unichain
- Contract surface: 1130 unique implementations (1130 raw deployments)
- Coverage basis: 2/65 confirmed own live verified implementations (3.1%); conservative 3.1% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,244,363,245.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Compound Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 65 contract row(s) across arbitrum, base, ethereum, linea, mantle, optimism, polygon, scroll, unichain. Structural roles: 42 core, 13 supporting, 9 infra, 1 unclassified. 34 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 65
- Structural roles: core (42), supporting (13), infra (9), unclassified (1)
- Contract kinds: contract (61), abstract (4)
- Detected standards: erc1967proxy (22), erc20 (17), erc20permit (8), ownable (6), chainlinkaggregator (5), erc165 (3), ownable2step (3), pausable (1)
- Frameworks: openzeppelin (46), openzeppelin-upgradeable (19), chainlink (7), uniswap-v3 (6), layerzero (2), solmate (2)
- Upgradeable-pattern rows: 34

## Fork Analysis

0 of 418 contracts are derived from known codebases. 418 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0746928e47f858944d189996829ca711f64461a7`, chain 1)
- UnnamedContract (`0x0a4f4f9e84fc4f674f0d209f94d41fafe5af887d`, chain 1)
- UnnamedContract (`0x0ca9231a11c242206139a6dd8bf532f885516f96`, chain 1)
- UnnamedContract (`0x16f3532e6af45a2c51b6c77b1267cef34a9cf3b3`, chain 1)
- UnnamedContract (`0x1933f7e5f8b0423fbab28ce9c8c39c2cc414027b`, chain 1)
- UnnamedContract (`0x1b0e765f6224c21223aea2af16c1c46e38885a40`, chain 1)
- UnnamedContract (`0x1c0c89c1fa07e1dbfcb99ddb80c57252498c82b2`, chain 1)
- UnnamedContract (`0x1ec63b5883c3481134fd50d5daebc83ecd2e8779`, chain 1)
- UnnamedContract (`0x1fa408992e74a42d1787e28b880c451452e8c958`, chain 1)
- UnnamedContract (`0x214ed9da11d2fbe465a6fc601a91e62ebec1a0d6`, chain 1)
- UnnamedContract (`0x23a982b74a3236a5f2297856d4391b2edbbb5549`, chain 1)
- UnnamedContract (`0x2665701293fcbeb223d11a08d826563edcce423a`, chain 1)
- UnnamedContract (`0x2bea101d992b58da3f52c4c2aaeb49d33f7dce14`, chain 1)
- UnnamedContract (`0x2d09142eae60fd8bd454a276e95aebdffd05722d`, chain 1)
- UnnamedContract (`0x316f9708bb98af7da9c68c1c3b5e79039cd336e3`, chain 1)
- UnnamedContract (`0x31b844dbc7cdbaa27d22fd6d54986836d023bf3f`, chain 1)
- UnnamedContract (`0x351a133fd850ea81ed8a782016e308acbaddec91`, chain 1)
- UnnamedContract (`0x3afdc9bca9213a35503b077a6072f3d0d5ab0840`, chain 1)
- UnnamedContract (`0x3d0bb1ccab520a66e607822fc55bc921738fafe3`, chain 1)
- UnnamedContract (`0x3e7d1eab13ad0104d2750b8863b489d65364e32d`, chain 1)
- UnnamedContract (`0x400249b8244afac24aedc658041e56e449b43b5d`, chain 1)
- UnnamedContract (`0x40fcee8cdda01522846d197df9d9c1199b1cb1d3`, chain 1)
- UnnamedContract (`0x4f12633d511dc3049de1ea923b7047fbed0070d2`, chain 1)
- UnnamedContract (`0x4f4d5a808e2448cb12df7ac12efb12888fd9bdd5`, chain 1)
- UnnamedContract (`0x514910771af9ca656af840dff83e8264ecf986ca`, chain 1)
- UnnamedContract (`0x553303d460ee0afb37edff9be42922d8ff63220e`, chain 1)
- UnnamedContract (`0x5546198be8479dcd69044e90f50783ba1a25a8f5`, chain 1)
- UnnamedContract (`0x5641af9ab0794afcc5c9b036f6e01144ba42e747`, chain 1)
- UnnamedContract (`0x57a71a9c632b2e6d8b0eb9a157888a3fc87400d1`, chain 1)
- UnnamedContract (`0x5abcfc8a649ac15ff7d41c0dd0d53af3bbb7f876`, chain 1)
- UnnamedContract (`0x5acae76a83d9770370989738452ad3a8be3c54dd`, chain 1)
- UnnamedContract (`0x5c29868c58b6e15e2b962943278969ab6a7d3212`, chain 1)
- UnnamedContract (`0x5d409e56d886231adaf00c8775665ad0f9897b56`, chain 1)
- UnnamedContract (`0x60f2058379716a64a7a5d29219397e79bc552194`, chain 1)
- UnnamedContract (`0x68749665ff8d2d112fa859aa293f07a622782f38`, chain 1)
- UnnamedContract (`0x69b50ff403e995d9c4441a303438d9049dac8ccd`, chain 1)
- UnnamedContract (`0x6d903f6003cca6255d85cca4d3b5e5146dc33925`, chain 1)
- UnnamedContract (`0x6f654c583454859f535f6b720981cc939d1b036e`, chain 1)
- UnnamedContract (`0x72e9b6f907365d76c6192ad49c0c5ba356b7fa48`, chain 1)
- UnnamedContract (`0x7783a5c7656d75ed1144379c25142b7e43da5f5e`, chain 1)
- UnnamedContract (`0x7b03a016dbc36db8e05c480192fadcdb0a06bc37`, chain 1)
- UnnamedContract (`0x7badab7109afbbf48ecd8d6498caacd2630b45b9`, chain 1)
- UnnamedContract (`0x8236a87084f8b84306f72007f36f2618a5634494`, chain 1)
- UnnamedContract (`0x8350b7de6a6a2c1368e7d4bd968190e13e354297`, chain 1)
- UnnamedContract (`0x835b92840b721d3a66eb9da7fc4adf092a8f77e7`, chain 1)
- UnnamedContract (`0x83b34662f65532e611a87ebed38063dec889d5a7`, chain 1)
- UnnamedContract (`0x87641f6bc5ad796ea2f30af2a79ab2cf30f74188`, chain 1)
- UnnamedContract (`0x8a5c2e36e02fb1ba95c9a3e96e6e16bbbdae9aaa`, chain 1)
- UnnamedContract (`0x8c74b2811d2f1ad65517adb5c65773c1e520ed2f`, chain 1)
- UnnamedContract (`0x8fffffd4afb6115b954bd326cbe7b4ba576818f6`, chain 1)
- UnnamedContract (`0x91359ce8989cb610a4127777828e667f23b94ee9`, chain 1)
- UnnamedContract (`0x9f4001c75295049dc5d566acfb27054d1fa1af35`, chain 1)
- UnnamedContract (`0x9feac5a70435ef209f4013d46945ac1d4cba9397`, chain 1)
- UnnamedContract (`0xa0332aafd9e9164a95b1fa521f8a479125573451`, chain 1)
- UnnamedContract (`0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48`, chain 1)
- UnnamedContract (`0xa17581a9e3356d9a858b789d68b4d866e593ae94`, chain 1)
- UnnamedContract (`0xa2699232b341881b1ed85d91592b7c259e029acf`, chain 1)
- UnnamedContract (`0xa35b1b31ce002fbf2058d22f30f95d405200a15b`, chain 1)
- UnnamedContract (`0xa3931d71877c0e7a3148cb7eb4463524fec27fbd`, chain 1)
- UnnamedContract (`0xa569d910839ae8865da8f8e70fffb0cba869f961`, chain 1)
- UnnamedContract (`0xa70a0227028ad005f4fc9376a82cd1462e3aaedc`, chain 1)
- UnnamedContract (`0xaa9527bf3183a96fe6e55831c96de5cd988d3484`, chain 1)
- UnnamedContract (`0xb6e043072c5815b75e0ee0cb31ed33bd089fca84`, chain 1)
- UnnamedContract (`0xba8f83fffc7097cbcd89fe323d31753cfac33867`, chain 1)
- UnnamedContract (`0xbf5495efe5db9ce00f80364c8b423567e58d2110`, chain 1)
- UnnamedContract (`0xc0053f3fbccd593758258334dfce24c2a9a673ad`, chain 1)
- UnnamedContract (`0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2`, chain 1)
- UnnamedContract (`0xc3d688b66703497daa19211eedff47f25384cdc3`, chain 1)
- UnnamedContract (`0xc8e4c3f58d5fc4409522503927ecea057ebba1fc`, chain 1)
- UnnamedContract (`0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf`, chain 1)
- UnnamedContract (`0xcfc1fa6b7ca982176529899d99af6473ad80df4f`, chain 1)
- UnnamedContract (`0xd4ec911b8fd79139736950235a93d3ea9c3f68ed`, chain 1)
- UnnamedContract (`0xd5f7838f5c461feff7fe49ea5ebaf7728bb0adfa`, chain 1)
- UnnamedContract (`0xd6a48f6f687a5fef8a69834c49514b747012cf1c`, chain 1)
- UnnamedContract (`0xd72ac1bce9177cfe7aeb5d0516a38c88a64ce0ab`, chain 1)
- UnnamedContract (`0xd98be00b5d27fc98112bde293e487f8d4ca57d07`, chain 1)
- UnnamedContract (`0xdac17f958d2ee523a2206206994597c13d831ec7`, chain 1)
- UnnamedContract (`0xdc035d45d973e3ec169d2276ddab16f1e407384f`, chain 1)
- UnnamedContract (`0xdcee70654261af21c44c093c300ed3bb97b78192`, chain 1)
- UnnamedContract (`0xdf08cd1b9d40a106b49b74f70c1cca60596ededc`, chain 1)
- UnnamedContract (`0xe3458a0bdbd5a413d3731595c5eb7c4cd6a14dd1`, chain 1)
- UnnamedContract (`0xe51a17c21b4cd878cdae305df9bacc3477425282`, chain 1)
- UnnamedContract (`0xe85dc543813b8c2cfeaac371517b925a166a9293`, chain 1)
- UnnamedContract (`0xef819fe60af67698567f03095a029ae1a1935007`, chain 1)
- UnnamedContract (`0xf1c9acdc66974dfb6decb12aa385b9cd01190e38`, chain 1)
- UnnamedContract (`0xf1cee2a82cc42246c8c38253f118abb6caad715b`, chain 1)
- UnnamedContract (`0xf469fbd2abcd6b9de8e169d128226c0fc90a012e`, chain 1)
- UnnamedContract (`0xf5600f17f7d3d87d0e0fdafe01dbe513919c6bf8`, chain 1)
- UnnamedContract (`0xfae103dc9cf190ed75350761e95403b7b8afa6c0`, chain 1)
- UnnamedContract (`0xfd5282968119c348c1e47fbcadd13069d9857bf2`, chain 1)
- UnnamedContract (`0xfdfd9c85ad200c506cf9e21f1fd8dd01932fbb23`, chain 1)
- UnnamedContract (`0xff30586cd0f29ed462364c7e81375fc0c71219b1`, chain 1)
- UnnamedContract (`0x0b2c639c533813f4aa9d7837caf62653d097ff85`, chain 10)
- UnnamedContract (`0x0be923b1716115d742e35fa359d415598c50510f`, chain 10)
- UnnamedContract (`0x0d276fc14719f9292d5c1ea2198673d1f4269246`, chain 10)
- UnnamedContract (`0x13e3ee699d1909e989722e753853ae30b17e08c5`, chain 10)
- UnnamedContract (`0x16a9fa2fda030272ce99b29cf780dfa30361e0f3`, chain 10)
- UnnamedContract (`0x1f0e8fae2767305c2e65800b7c42c3a9ee1dc345`, chain 10)
- UnnamedContract (`0x24d86da09c4dd64e50db7501b0f695d030f397af`, chain 10)
- UnnamedContract (`0x2e44e174f7d53f0212823acc11c01a11d58c5bcb`, chain 10)
- UnnamedContract (`0x371db45c7ee248daff4dc1ffb67a20faa0ecfe02`, chain 10)
- UnnamedContract (`0x3e6d1cca8eee6d02f1f578b613374eb53e6823b4`, chain 10)
- UnnamedContract (`0x3fb418b74ec30bc3e940221f58a04e16afc6378b`, chain 10)
- UnnamedContract (`0x403f2083b6e220147f8a8832f0b284b4ed5777d1`, chain 10)
- UnnamedContract (`0x443ea0340cb75a160f31a440722dec7b5bc3c2e9`, chain 10)
- UnnamedContract (`0x4ed39cf78ffa4428de6bcedb8d0f5ff84699e13d`, chain 10)
- UnnamedContract (`0x57f5e098cad7a3d1eed53991d4d66c45c9af7812`, chain 10)
- UnnamedContract (`0x5a7facb970d094b6c7ff1df0ea68d99e6e73cbff`, chain 10)
- UnnamedContract (`0x5d173813b4505701e79e654b36a95e6c1fad4448`, chain 10)
- UnnamedContract (`0x5eba6ec97843163c92ab48a7ac0ccc8423c652b1`, chain 10)
- UnnamedContract (`0x68f180fcce6836688e9084f035309e29bf0a2095`, chain 10)
- UnnamedContract (`0x699a196c609b9b3db559ce5778b2827252bd24f5`, chain 10)
- UnnamedContract (`0x718a5788b89454aae3a028ae9c111a29be6c2a6f`, chain 10)
- UnnamedContract (`0x7e7d4467112689329f7e06571ed0e8cbad4910ee`, chain 10)
- UnnamedContract (`0x84e93ec6170ed630f5ebd89a1aae72d4f63f2713`, chain 10)
- UnnamedContract (`0x8671d5e3a10639a573bacffef448ca076b2d5cd7`, chain 10)
- UnnamedContract (`0x92014e7f331dfab2848a5872aa8b2e7b6f3ce8b4`, chain 10)
- UnnamedContract (`0x995e394b8b2437ac8ce61ee0bc610d617962b214`, chain 10)
- UnnamedContract (`0xadf7ad4dd000ea75667a3cdf65f3d3b7f1e9f02e`, chain 10)
- UnnamedContract (`0xc3a73a70d1577cd5b02da0ba91c0afc8fa434daf`, chain 10)
- UnnamedContract (`0xc4aafc9f0c52fdda0fed972c55b136bd07552ad0`, chain 10)
- UnnamedContract (`0xcb3643cc8294b23171272845473dec49739d4ba3`, chain 10)
- UnnamedContract (`0xd187f938348aa245e2104be8d849ea6d8d23f434`, chain 10)
- UnnamedContract (`0xd62d433a4ca55f97bded88641588f65271cc5cf2`, chain 10)
- UnnamedContract (`0xd98be00b5d27fc98112bde293e487f8d4ca57d07`, chain 10)
- UnnamedContract (`0xddc326838f2b5e5625306c3cf33318666f3cf002`, chain 10)
- UnnamedContract (`0xdfb81f0ebfdfdd90143f5debd1cd016b677d1585`, chain 10)
- UnnamedContract (`0xe36a30d249f7761327fd973001a32010b521b6fd`, chain 10)
- UnnamedContract (`0xe6eb5b9b85cff2c84df3de6e7855bc9e76f034d5`, chain 10)
- UnnamedContract (`0xecef79e109e997bca29c1c0897ec9d7b03647f5e`, chain 10)
- UnnamedContract (`0x1ad4ceba9f8135a557bbe317db62aa125c330f26`, chain 130)
- UnnamedContract (`0x1f71901daf98d70b4baf40de080321e5c2676856`, chain 130)
- UnnamedContract (`0x2416092f143378750bb29b79ed961ab195cceea5`, chain 130)
- UnnamedContract (`0x2c7118c4c88b9841fcf839074c26ae8f035f2921`, chain 130)
- UnnamedContract (`0x2e44e174f7d53f0212823acc11c01a11d58c5bcb`, chain 130)
- UnnamedContract (`0x2f4eaf29dfeef4654bd091f7112926e108ef4ed0`, chain 130)
- UnnamedContract (`0x3870fac3de911c12a57e5a2532d15ad8ca275a60`, chain 130)
- UnnamedContract (`0x3c30b5a5a04656565686f800481580ac4e7ed178`, chain 130)
- UnnamedContract (`0x4200000000000000000000000000000000000006`, chain 130)
- UnnamedContract (`0x443ea0340cb75a160f31a440722dec7b5bc3c2e9`, chain 130)
- UnnamedContract (`0x4a900f81deda753bbbab12453b3775d5f26df6f3`, chain 130)
- UnnamedContract (`0x4b5dee60531a72c1264319ec6a22678a4d0c8118`, chain 130)
- UnnamedContract (`0x51515144cff7dc3623c52c5e91768a9955d2beb1`, chain 130)
- UnnamedContract (`0x5404872d8f2e24b230ec9b9ec64e3855f637fb93`, chain 130)
- UnnamedContract (`0x58ebb8db8b4fdf2dcbbb16e04c2f5b952963b514`, chain 130)
- UnnamedContract (`0x6bad2334e987106f40c50c7942d794b4e09edfc5`, chain 130)
- UnnamedContract (`0x6c987dde50db1dcdd32cd4175778c2a291978e2a`, chain 130)
- UnnamedContract (`0x6f7d514bbd4aff3bcd1140b7344b32f063dee486`, chain 130)
- UnnamedContract (`0x72874cfe957bb47795548e5a9fd740d135ba5e45`, chain 130)
- UnnamedContract (`0x7dcc39b4d1c53cb31e1abc0e358b43987fef80f7`, chain 130)
- UnnamedContract (`0x84e93ec6170ed630f5ebd89a1aae72d4f63f2713`, chain 130)
- UnnamedContract (`0x8d38a3d6b3c3b7d96d6536da7eef94a9d7dbc991`, chain 130)
- UnnamedContract (`0x8df378453ff9deffa513367cdf9b3b53726303e9`, chain 130)
- UnnamedContract (`0x8f187aa05619a017077f5308904739877ce9ea21`, chain 130)
- UnnamedContract (`0x927b51f251480a681271180da4de28d44ec4afb8`, chain 130)
- UnnamedContract (`0xaeb318360f27748acb200ce616e389a6c9409a07`, chain 130)
- UnnamedContract (`0xc02fe7317d4eb8753a02c35fe019786854a92001`, chain 130)
- UnnamedContract (`0xc3eacf0612346366db554c991d7858716db09f58`, chain 130)
- UnnamedContract (`0xdb7edfa090061d9367cbeaf6be16ecbde596676c`, chain 130)
- UnnamedContract (`0xdf78e4f0a8279942ca68046476919a90f2288656`, chain 130)
- UnnamedContract (`0xfa454de61b317b6535a0c462267208e8fdb89f45`, chain 130)
- UnnamedContract (`0x0a6513e40db6eb1b165753ad52e80663aea50545`, chain 137)
- UnnamedContract (`0x1bfd67037b42cf73acf2047067bd4f2c47d9bfd6`, chain 137)
- UnnamedContract (`0x2f4eaf29dfeef4654bd091f7112926e108ef4ed0`, chain 137)
- UnnamedContract (`0x2f9e3953b2ef89fa265f2a32ed9f80d00229125b`, chain 137)
- UnnamedContract (`0x3a58a54c066fdc0f2d55fc9c89f0415c92ebf3c4`, chain 137)
- UnnamedContract (`0x45939657d1ca34a8fa39a924b71d28fe8431e581`, chain 137)
- UnnamedContract (`0x59e242d352ae13166b4987ae5c990c232f7f7cd6`, chain 137)
- UnnamedContract (`0x5d37e4b374e6907de8fc7fb33ee3b0af403c7403`, chain 137)
- UnnamedContract (`0x83abacafaf625d84919ca769222579bc75aea2d1`, chain 137)
- UnnamedContract (`0x83e0f742cacbe66349e3701b171ee2487a26e738`, chain 137)
- UnnamedContract (`0x8505b9d2254a7ae468c0e9dd10ccea3a837aef5c`, chain 137)
- UnnamedContract (`0x97371df4492605486e23da797fa68e55fc38a13f`, chain 137)
- UnnamedContract (`0x9c4ec768c28520b50860ea7a15bd7213a9ff58bf`, chain 137)
- UnnamedContract (`0xa265e611cf0ccb49ca9b58c2e1e8aa9b922504e6`, chain 137)
- UnnamedContract (`0xab594600376ec9fd91f8e885dadf0ce036862de0`, chain 137)
- UnnamedContract (`0xaeb318360f27748acb200ce616e389a6c9409a07`, chain 137)
- UnnamedContract (`0xbde8f31d2ddda895264e27dd990fab3dc87b372d`, chain 137)
- UnnamedContract (`0xcc3e7c85bb0ee4f09380e041fee95a0caedd4a02`, chain 137)
- UnnamedContract (`0xd712ace4ca490d4f3e92992ecf3de12251b975f9`, chain 137)
- UnnamedContract (`0xde31f8bfbd8c84b5360cfacca3539b938dd78ae6`, chain 137)
- UnnamedContract (`0xf25212e676d1f7f89cd72ffee66158f541246445`, chain 137)
- UnnamedContract (`0xf9680d99d6c9589e2a93a78a04a279e509205945`, chain 137)
- UnnamedContract (`0xfa68fb4628dff1028cfec22b4162fccd0d45efb6`, chain 137)
- UnnamedContract (`0xfe4a8cc5b5b2366c1b58bea3858e81843581b2f7`, chain 137)
- UnnamedContract (`0x16c7b5c1b10489f4b111af11de2bd607c9728107`, chain 5000)
- UnnamedContract (`0x3c851cbe2740747f5ce4e8894842a313e5a3aee3`, chain 5000)
- UnnamedContract (`0x41e345a046a73ef15316191b41f3abea4cef1168`, chain 5000)
- UnnamedContract (`0x5a1d1c89da75bc957bbf9ed61b4b0adee0553285`, chain 5000)
- UnnamedContract (`0x602cc55d673f134c2d6c8085d10674ec4df4d155`, chain 5000)
- UnnamedContract (`0x606174f62cd968d8e684c645080fa694c1d7786e`, chain 5000)
- UnnamedContract (`0x67dfca85cceefa2c5b1db4dee3bea716a28b9baa`, chain 5000)
- UnnamedContract (`0x731564585278f228fb8f93a0bf62729e24367662`, chain 5000)
- UnnamedContract (`0xadd81aaf528784531e888317afcd429b00c9f1b3`, chain 5000)
- UnnamedContract (`0xb77cd4cd000957283d8baf53cd782ecf029cf7db`, chain 5000)
- UnnamedContract (`0xc91eca15747e73d6dd7f616c49daff37b9f1b604`, chain 5000)
- UnnamedContract (`0xcd83cbbfce149d141a5171c3d6a0f0fccee225ab`, chain 5000)
- UnnamedContract (`0xcda86a272531e8640cd7f1a92c01839911b90bb0`, chain 5000)
- UnnamedContract (`0xe268b436e75648aa0639e2088fa803fea517a0c7`, chain 5000)
- UnnamedContract (`0xf528b4bcac12dad0bfa114282b219ad706ba7f18`, chain 5000)
- UnnamedContract (`0x0090a563c4832e4e519f5f054483519b1a83c8c3`, chain 8453)
- UnnamedContract (`0x07da0e54543a844a80abe69c8a12f22b3aa59f9d`, chain 8453)
- UnnamedContract (`0x0e383794eaaa6cf7ffb2c8ad5bebbbc5cb0f0a7b`, chain 8453)
- UnnamedContract (`0x123964802e6ababbe1bc9547d72ef1b69b00a6b1`, chain 8453)
- UnnamedContract (`0x1738fcae8d5a6aef39985df31fe60e5dc5e1a7b3`, chain 8453)
- UnnamedContract (`0x220da2686dc870ac0a97498a1845e610d2f13431`, chain 8453)
- UnnamedContract (`0x2330aae3bca5f05169d5f4597964d44522f62930`, chain 8453)
- UnnamedContract (`0x2416092f143378750bb29b79ed961ab195cceea5`, chain 8453)
- UnnamedContract (`0x2c776041ccfe903071af44aa147368a9c8eea518`, chain 8453)
- UnnamedContract (`0x3d0bb1ccab520a66e607822fc55bc921738fafe3`, chain 8453)
- UnnamedContract (`0x3dc83e4c67d99b935e07771f36060deaeffff45d`, chain 8453)
- UnnamedContract (`0x3e6d1cca8eee6d02f1f578b613374eb53e6823b4`, chain 8453)
- UnnamedContract (`0x41e345a046a73ef15316191b41f3abea4cef1168`, chain 8453)
- UnnamedContract (`0x4200000000000000000000000000000000000006`, chain 8453)
- UnnamedContract (`0x45939657d1ca34a8fa39a924b71d28fe8431e581`, chain 8453)
- UnnamedContract (`0x4687670f5f01716faa382e2356c103bad776752c`, chain 8453)
- UnnamedContract (`0x46e6b214b524310239732d51387075e0e70970bf`, chain 8453)
- UnnamedContract (`0x4b5dee60531a72c1264319ec6a22678a4d0c8118`, chain 8453)
- UnnamedContract (`0x564417b682817e1c7806b2a1a4f73e084d742925`, chain 8453)
- UnnamedContract (`0x5875eee11cf8398102fdad704c9e96607675467a`, chain 8453)
- UnnamedContract (`0x59e242d352ae13166b4987ae5c990c232f7f7cd6`, chain 8453)
- UnnamedContract (`0x5d173813b4505701e79e654b36a95e6c1fad4448`, chain 8453)
- UnnamedContract (`0x6b2f857d3f3a32ba7d9ac46d0ad8e5bd6e2011f1`, chain 8453)
- UnnamedContract (`0x6d75bfb5a5885f841b132198c9f0be8c872057bf`, chain 8453)
- UnnamedContract (`0x71041dddad3595f9ced3dccfbe3d1f4b0a16bb70`, chain 8453)
- UnnamedContract (`0x72e9b6f907365d76c6192ad49c0c5ba356b7fa48`, chain 8453)
- UnnamedContract (`0x784efeb622244d2348d4f2522f8860b96fbece89`, chain 8453)
- UnnamedContract (`0x78d0677032a35c63d142a48a2037048871212a8c`, chain 8453)
- UnnamedContract (`0x7e860098f58bbfc8648a4311b374b1d669a2bc6b`, chain 8453)
- UnnamedContract (`0x7fcd174e80f264448ebee8c88a7c4476aaf58ea6`, chain 8453)
- UnnamedContract (`0x820c137fa70c8691f0e44dc420a5e53c168921dc`, chain 8453)
- UnnamedContract (`0x833589fcd6edb6e08f4c7c32d4f71b54bda02913`, chain 8453)
- UnnamedContract (`0x83e0f742cacbe66349e3701b171ee2487a26e738`, chain 8453)
- UnnamedContract (`0x89e9b098bb0e3d09f4288fb2b9632b4dcb40bbf6`, chain 8453)
- UnnamedContract (`0x8c087080253cd3bd395aecaf16f36ee608acd96f`, chain 8453)
- UnnamedContract (`0x8d38a3d6b3c3b7d96d6536da7eef94a9d7dbc991`, chain 8453)
- UnnamedContract (`0x8df378453ff9deffa513367cdf9b3b53726303e9`, chain 8453)
- UnnamedContract (`0x9c4ec768c28520b50860ea7a15bd7213a9ff58bf`, chain 8453)
- UnnamedContract (`0x9e1028f5f1d5ede59748ffcee5532509976840e0`, chain 8453)
- UnnamedContract (`0x9f485610e26b9c0140439f88dc0c7742903bd1cf`, chain 8453)
- UnnamedContract (`0xaa390749cb758af4070e93478fc743c72c18989c`, chain 8453)
- UnnamedContract (`0xaa9527bf3183a96fe6e55831c96de5cd988d3484`, chain 8453)
- UnnamedContract (`0xb125e6687d4313864e53df431d5425969c15eb2f`, chain 8453)
- UnnamedContract (`0xb88e4078aac88f10c0ca71086ddcf512ec54498a`, chain 8453)
- UnnamedContract (`0xbd4cfc08d64a848a9116a92cd06d2f2bdc0a2505`, chain 8453)
- UnnamedContract (`0xbde8f31d2ddda895264e27dd990fab3dc87b372d`, chain 8453)
- UnnamedContract (`0xc1cba3fcea344f92d9239c08c0568f6f2f0ee452`, chain 8453)
- UnnamedContract (`0xc4a9fff2152fe11fbb40f059100ce1271a330c51`, chain 8453)
- UnnamedContract (`0xc89567205207e481c1162c7e8a03e27e8e619a77`, chain 8453)
- UnnamedContract (`0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf`, chain 8453)
- UnnamedContract (`0xcc3e7c85bb0ee4f09380e041fee95a0caedd4a02`, chain 8453)
- UnnamedContract (`0xd9aaec86b65d86f6a7b5b1b0c42ffa531710b6ca`, chain 8453)
- UnnamedContract (`0xdb7edfa090061d9367cbeaf6be16ecbde596676c`, chain 8453)
- UnnamedContract (`0xdd18688bb75af704f3fb1183e459c4d4d41132d9`, chain 8453)
- UnnamedContract (`0xe6eb5b9b85cff2c84df3de6e7855bc9e76f034d5`, chain 8453)
- UnnamedContract (`0xedfa23602d0ec14714057867a78d01e94176bea0`, chain 8453)
- UnnamedContract (`0x0be923b1716115d742e35fa359d415598c50510f`, chain 42161)
- UnnamedContract (`0x15eb948705933433826b9a7956741764e1432156`, chain 42161)
- UnnamedContract (`0x2416092f143378750bb29b79ed961ab195cceea5`, chain 42161)
- UnnamedContract (`0x250bd3da70b1844dbe7491c521b9490abd57b709`, chain 42161)
- UnnamedContract (`0x271a200023c9512d37149dfbb62bf0f62a8d4680`, chain 42161)
- UnnamedContract (`0x311930889c61e141e15a61d11be974d749390e7a`, chain 42161)
- UnnamedContract (`0x3410f05fb77715ac1d1ec68a8d74f38d0850d54c`, chain 42161)
- UnnamedContract (`0x354a6da3fcde098f8389cad84b0182725c6c91de`, chain 42161)
- UnnamedContract (`0x35751007a407ca6feffe80b3cb397736d2cf4dbe`, chain 42161)
- UnnamedContract (`0x3fb4d38ea7ec20d91917c09591490eeda38cf88a`, chain 42161)
- UnnamedContract (`0x47885403524c26a4514b5f8d82747a8c90cef0c6`, chain 42161)
- UnnamedContract (`0x4f12633d511dc3049de1ea923b7047fbed0070d2`, chain 42161)
- UnnamedContract (`0x50834f3163758fcc1df9973b6e91f0f0f0434ad3`, chain 42161)
- UnnamedContract (`0x5372bcf3486d59c23f5fc85745b41f180efff881`, chain 42161)
- UnnamedContract (`0x57f5e098cad7a3d1eed53991d4d66c45c9af7812`, chain 42161)
- UnnamedContract (`0x5979d7b546e38e414f7e9822514be443a4800529`, chain 42161)
- UnnamedContract (`0x5998a5c516bd5e479e0b6aa6f243d372730b68d2`, chain 42161)
- UnnamedContract (`0x5d173813b4505701e79e654b36a95e6c1fad4448`, chain 42161)
- UnnamedContract (`0x5d409e56d886231adaf00c8775665ad0f9897b56`, chain 42161)
- UnnamedContract (`0x5eba6ec97843163c92ab48a7ac0ccc8423c652b1`, chain 42161)
- UnnamedContract (`0x60f2058379716a64a7a5d29219397e79bc552194`, chain 42161)
- UnnamedContract (`0x639fe6ab55c921f74e7fac1ee960c0b6293ba612`, chain 42161)
- UnnamedContract (`0x675dafae7d2711032615bd32e6d352af32e5a8bd`, chain 42161)
- UnnamedContract (`0x69ad47985da1b3aa3fa3c1fe642c81c08de21941`, chain 42161)
- UnnamedContract (`0x6c84a8f1c29108f47a79964b5fe888d4f4d0de40`, chain 42161)
- UnnamedContract (`0x6f7d514bbd4aff3bcd1140b7344b32f063dee486`, chain 42161)
- UnnamedContract (`0x70175d5f312d2ac5b8d71d76c055d1c9f000eba5`, chain 42161)
- UnnamedContract (`0x7de363b6bf0a892b94a1cd0c9df76826bfc14228`, chain 42161)
- UnnamedContract (`0x8495af03fb797e2965bcb42cb0693e1c15614798`, chain 42161)
- UnnamedContract (`0x88730d254a2f7e6ac8388c3198afd694ba9f7fae`, chain 42161)
- UnnamedContract (`0x92014e7f331dfab2848a5872aa8b2e7b6f3ce8b4`, chain 42161)
- UnnamedContract (`0x95dedd64b551f05e9f59a101a519b024b6b116e7`, chain 42161)
- UnnamedContract (`0x9c4ec768c28520b50860ea7a15bd7213a9ff58bf`, chain 42161)
- UnnamedContract (`0xa2699232b341881b1ed85d91592b7c259e029acf`, chain 42161)
- UnnamedContract (`0xa4f2e977cab3177d61e2e7eaecd257bf09f2f915`, chain 42161)
- UnnamedContract (`0xa5edbdd9646f8dff606d7448e414884c7d905dca`, chain 42161)
- UnnamedContract (`0xaf88d065e77c8cc2239327c5edb3a432268e5831`, chain 42161)
- UnnamedContract (`0xb2988bdadc45c43e3fe1a728f715e94bee4db406`, chain 42161)
- UnnamedContract (`0xb2a824043730fe05f3da2efafa1cbbe83fa548d6`, chain 42161)
- UnnamedContract (`0xb3e79c7cac540ca833015e63d96d3032ba0c4129`, chain 42161)
- UnnamedContract (`0xbde8f31d2ddda895264e27dd990fab3dc87b372d`, chain 42161)
- UnnamedContract (`0xc35137f62b825aeeaf30b69b6b32e3953d8d624a`, chain 42161)
- UnnamedContract (`0xcc392d2c3b37520e01712320be331d41f7661013`, chain 42161)
- UnnamedContract (`0xd0c7101eacbb49f3decccc166d238410d6d46d57`, chain 42161)
- UnnamedContract (`0xd10b40ff1d92e2267d099da3509253d9da4d715e`, chain 42161)
- UnnamedContract (`0xd98be00b5d27fc98112bde293e487f8d4ca57d07`, chain 42161)
- UnnamedContract (`0xdb7edfa090061d9367cbeaf6be16ecbde596676c`, chain 42161)
- UnnamedContract (`0xdb98056fecfff59d032ab628337a4887110df3db`, chain 42161)
- UnnamedContract (`0xe808488e8627f6531ba79a13a9e0271b39abeb1c`, chain 42161)
- UnnamedContract (`0xec70dcb4a1efa46b8f2d97c310c9c4790ba5ffa8`, chain 42161)
- UnnamedContract (`0xedfb5fd27b0259b0a696364b183223b5ca3cbe62`, chain 42161)
- UnnamedContract (`0xfa454de61b317b6535a0c462267208e8fdb89f45`, chain 42161)
- UnnamedContract (`0xfc5a1a6eb076a2c7ad06ed22c90d7e710e35ad0a`, chain 42161)
- UnnamedContract (`0xff970a61a04b1ca14834a43f5de4533ebddb5cc8`, chain 42161)
- UnnamedContract (`0x0746928e47f858944d189996829ca711f64461a7`, chain 59144)
- UnnamedContract (`0x13933885c9a392ce73f396707ec61f30a8b05e37`, chain 59144)
- UnnamedContract (`0x176211869ca2b568f2a7d4ee941e073a821ee1ff`, chain 59144)
- UnnamedContract (`0x1bf74c010e6320bab11e2e5a532b5ac15e0b8aa6`, chain 59144)
- UnnamedContract (`0x2416092f143378750bb29b79ed961ab195cceea5`, chain 59144)
- UnnamedContract (`0x2c7118c4c88b9841fcf839074c26ae8f035f2921`, chain 59144)
- UnnamedContract (`0x3aab2285ddcddad8edf438c1bab47e1a9d05a9b4`, chain 59144)
- UnnamedContract (`0x3c6cd9cc7c7a4c2cf5a82734cd249d7d593354da`, chain 59144)
- UnnamedContract (`0x4a900f81deda753bbbab12453b3775d5f26df6f3`, chain 59144)
- UnnamedContract (`0x4b5dee60531a72c1264319ec6a22678a4d0c8118`, chain 59144)
- UnnamedContract (`0x60f2058379716a64a7a5d29219397e79bc552194`, chain 59144)
- UnnamedContract (`0x7a99092816c8bd5ec8ba229e3a6e6da1e628e1f9`, chain 59144)
- UnnamedContract (`0x7e0df525427874522fb5b711d5f347fac187af4b`, chain 59144)
- UnnamedContract (`0x841e380e3a98e4ee8912046d69731f4e21efb1d7`, chain 59144)
- UnnamedContract (`0x8d38a3d6b3c3b7d96d6536da7eef94a9d7dbc991`, chain 59144)
- UnnamedContract (`0x8d50b433c0dcf3636c29695122464df5deb37edc`, chain 59144)
- UnnamedContract (`0x970ffd8e335b8fa4cd5c869c7cac3a90671d5dc3`, chain 59144)
- UnnamedContract (`0x972b1b7032aa93bf449a899fbf31bb30735a671a`, chain 59144)
- UnnamedContract (`0xa2699232b341881b1ed85d91592b7c259e029acf`, chain 59144)
- UnnamedContract (`0xaadaa473c1bdf7317ec07c915680af29debfdcb5`, chain 59144)
- UnnamedContract (`0xaeb318360f27748acb200ce616e389a6c9409a07`, chain 59144)
- UnnamedContract (`0xb5bedd42000b71fdde22d3ee8a79bd49a568fc8f`, chain 59144)
- UnnamedContract (`0xc4a9fff2152fe11fbb40f059100ce1271a330c51`, chain 59144)
- UnnamedContract (`0xc8e4c3f58d5fc4409522503927ecea057ebba1fc`, chain 59144)
- UnnamedContract (`0xd2671165570f41bbb3b0097893300b6eb6101e6c`, chain 59144)
- UnnamedContract (`0xdb7edfa090061d9367cbeaf6be16ecbde596676c`, chain 59144)
- UnnamedContract (`0xe5d7c2a44ffddf6b295a15c148167daaaf5cf34f`, chain 59144)
- UnnamedContract (`0xf1cee2a82cc42246c8c38253f118abb6caad715b`, chain 59144)
- UnnamedContract (`0xfd5282968119c348c1e47fbcadd13069d9857bf2`, chain 59144)
- UnnamedContract (`0x43d12fb3afcad5347fa764eeab105478337b7200`, chain 534352)
- UnnamedContract (`0x4c089231f69b5065678c01984301d19f64b0d623`, chain 534352)
- UnnamedContract (`0x53c6d04e3ec7031105baea05b36cbc3c987c56fa`, chain 534352)
- UnnamedContract (`0x5ec955a4c15b195a4af9a61f7155f6fe3c1a0656`, chain 534352)
- UnnamedContract (`0x6bf14cb0a831078629d993fdebcb182b21a8774c`, chain 534352)
- UnnamedContract (`0x6f7d514bbd4aff3bcd1140b7344b32f063dee486`, chain 534352)
- UnnamedContract (`0x70167d30964cbfdc315ecae02441af747be0c5ee`, chain 534352)
- UnnamedContract (`0x709cef91dd5d162d7047b678334d1be41fe92843`, chain 534352)
- UnnamedContract (`0x77831f8997de34ead958da207e43e4be70771c79`, chain 534352)
- UnnamedContract (`0x87a27b91f4130a25e9634d23a5b8e05e342bac50`, chain 534352)
- UnnamedContract (`0xb2f97c1bd3bf02f5e74d13f02e3e26f93d77ce44`, chain 534352)
- UnnamedContract (`0xecab0beea3e5dea0c35d3e69468eac20098032d7`, chain 534352)
- UnnamedContract (`0xf6013e80e9e6ac211cc031ad1ce98b3aa20b73e4`, chain 534352)
- UnnamedContract (`0xf610a9dfb7c89644979b4a0f27063e9e7d7cda32`, chain 534352)
- Aero (`0x940181a94a35a4569e4529a3cdfb74e38fd98631`, chain 8453)
- ArbitrumBridgeReceiver (`0x42480c37b249e33aabaf4c22b20235656bd38068`, chain 42161)
- BaseBulker (`0x023ee795361b28cdbb94e302983578486a0a5f1b`, chain 59144)
- BVM_ETH (`0xdeaddeaddeaddeaddeaddeaddeaddeaddead1111`, chain 5000)
- ChainlinkCorrelatedAssetsPriceOracle (`0x0090a563c4832e4e519f5f054483519b1a83c8c3`, chain 130)
- ClonableBeaconProxy (`0x2f2a2543b76a4166549f7aab2e75bef0aefc5b0f`, chain 42161)
- CometExtAssetList (`0x055e53f50b84fd91c4be367220efd36c3d091e1f`, chain 1)
- Comp (`0xc00e94cb662c3520282e6f5717214004a7f26888`, chain 1)
- CompoundGovernor (`0x309a862bbc1a00e45506cb8a802d1ff10004c8c0`, chain 1)
- ConfiguratorProxy (`0xb21b06d71c75973babde35b49ffdac3f82ad3775`, chain 42161)
- deUSD (`0x15700b564ca08d9439c58ca5053166e8317aa138`, chain 1)
- ERC1967Proxy (`0x57f5e098cad7a3d1eed53991d4d66c45c9af7812`, chain 1)
- ERC1967Proxy (`0x5c5b196abe0d54485975d1ec29617d42d9198326`, chain 1)
- ERC1967Proxy (`0xd11c452fc99cf405034ee446803b6f6c1f6d5ed8`, chain 1)
- ERC1967Proxy (`0xd9a442856c234a39a81a089c06451ebaa4306a72`, chain 1)
- FBTC (`0xc96de26018a54d51c097160568752c4e3bd6c364`, chain 5000)
- FiatTokenProxy (`0x078d782b760474a361dda0af3839290b0ef57ad6`, chain 130)
- FiatTokenProxy (`0x06efdbff2a14a7c8e15944d1f4a48f9f95f663a4`, chain 534352)
- GovernanceToken (`0x4200000000000000000000000000000000000042`, chain 10)
- L2StandardERC20 (`0x9bcef72be871e61ed4fbbc7630889bee758eb81d`, chain 10)
- L2TBTC (`0x236aa50979d5f3de3bd1eeb40e81137f22ab794b`, chain 8453)
- LineaBridgeReceiver (`0x1f71901daf98d70b4baf40de080321e5c2676856`, chain 59144)
- MainnetBulker (`0xa397a8c2086c554b531c02e29f3291c9704b00c7`, chain 1)
- MainnetBulkerWithWstETHSupport (`0x2c776041ccfe903071af44aa147368a9c8eea518`, chain 1)
- MaticWETH (`0x7ceb23fd6bc0add59e62ac25578270cff1b9f619`, chain 137)
- OptimismBridgeReceiver (`0x18281dfc4d00905da1aaa6731414eaba843c468a`, chain 8453)
- OptimismMintableERC20 (`0x52b7d8851d6ccbc6342ba0855be65f7b82a3f17f`, chain 5000)
- OssifiableProxy (`0x1f32b1c2345538c0c6f582fcb022739c4a194ebb`, chain 10)
- PolygonBridgeReceiver (`0x18281dfc4d00905da1aaa6731414eaba843c468a`, chain 137)
- Proxy (`0x2ae3f1ec7f1f5012cfeab0185bfc7aa3cf0dec22`, chain 8453)
- RateBasedCorrelatedAssetsPriceOracle (`0x00c03abc59b978ecda0a118ca8b0061ea6121101`, chain 1)
- ReverseMultiplicativePriceFeed (`0x04eab657b065238aa67c3879f4d71bfdd09c2796`, chain 1)
- RocketTokenRETH (`0xae78736cd615f374d3085123a210448e74fc6393`, chain 1)
- RSETH_OFT (`0x4186bfc76e2e237523cbc30fd220fe055156b41f`, chain 42161)
- RsETHCorrelatedAssetsPriceOracle (`0x0af91e13383fd771f21b40b79421b2d59e8214c2`, chain 1)
- RsETHTokenWrapper (`0x87eee96d50fb761ad85b1c982d28a042169d61b1`, chain 10)
- SafeProxy (`0xd9496f2a3fd2a97d8a4531d92742f3c8f53183cb`, chain 1)
- SafeProxy (`0xb3e79c7cac540ca833015e63d96d3032ba0c4129`, chain 8453)
- ScalingPriceFeedWithCustomDescription (`0x0090a563c4832e4e519f5f054483519b1a83c8c3`, chain 5000)
- ScrollBridgeReceiver (`0xc6bf5a64896d679cf89843dbec6c0f5d3c9b610d`, chain 534352)
- Sky (`0x56072c95faa701256059aa122697b133aded9279`, chain 1)
- StakedFrax (`0xa663b02cf0a4b149d2ad41910cb81e23e1c41c32`, chain 1)
- StakedTokenV1 (`0xbe9895146f7af43049ca1c1ae358b0541ea49704`, chain 1)
- TAssetMultichainToken (`0xd09acb80c1e8f2291862c4978a008791c9167003`, chain 42161)
- TBTC (`0x18084fba666a33d37592fa2633fd49a74dd93a88`, chain 1)
- TransparentUpgradeableProxy (`0xa1290d69c65a6fe4df752f95823fae25cb99e5a7`, chain 1)
- TransparentUpgradeableProxy (`0x85c4f855bc0609d2584405819edaea3adabfe97d`, chain 130)
- TransparentUpgradeableProxy (`0x04c0599ae5a44757c0af6f9ec3b93da8976c150a`, chain 8453)
- TransparentUpgradeableProxy (`0x82af49447d8a07e3bd95bd0d56f35241523fbab1`, chain 42161)
- TransparentUpgradeableProxy (`0x912ce59144191c1204e64559fe8253a0e49e6548`, chain 42161)
- TransparentUpgradeableProxy (`0xfd086bc7cd5c481dcc9c85ebe478a1c0b69fcbb9`, chain 42161)
- TransparentUpgradeableProxy (`0x0ece76334fb560f2b1a49a60e38cf726b02203f0`, chain 59144)
- UChildERC20Proxy (`0x2791bca1f2de4661ed88a30c99a7a9449aa84174`, chain 137)
- UChildERC20Proxy (`0xc2132d05d31c914a87c6611c10748aeb04b58e8f`, chain 137)
- Uni (`0x1f9840a85d5af5bf1d1762f925bdaddc4201f984`, chain 1)
- USDe (`0x4c9edd5852cd905f086c759e8383e09bff1e68b3`, chain 1)
- USDeOFT (`0x5d3a1ff2b6bab83b63cd9ad0787074081a52ef34`, chain 5000)
- USDT (`0x94b008aa00579c1307b0ef2c499ad98a8ce58e58`, chain 10)
- UUPSProxy (`0xcd5fe23c85820f7b72d0926fc9b05b43e359b7ee`, chain 1)
- WBTC (`0x2260fac5e5542a773aa44fbcfedf7c193bc2c599`, chain 1)
- WETH9 (`0x4200000000000000000000000000000000000006`, chain 10)
- WMATIC (`0x0d500b1d8e8ef31e21c99d1db9a6444d3adf1270`, chain 137)
- WrappedEther (`0x5300000000000000000000000000000000000004`, chain 534352)
- WstETH (`0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0`, chain 1)
- XERC20 (`0x2416092f143378750bb29b79ed961ab195cceea5`, chain 10)

## Contract Surface Quality

- Logic-topography rows: 65; live-surface rows included: 65 (65 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 418/499 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/65 (3.1%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 418 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 712 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 52 standard proxy/library)
- Proxy deployments represented within implementation groups: 116
- Confirmed-live implementations: 418 of 1130 unique; 712 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 2/777
- Verified + Unaudited implementations: 775
- Verified by bytecode match: 0
- Unverified implementations: 353
- Unique implementations: 1130
- Raw deployments: 1130
- Audits discovered: 11 (11 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-12 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 10 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: 3.1% (OpenZeppelin, Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| OpenZeppelin | Tier 1 | 2 | 0.3% | 2022-06 |
| Trail of Bits | Tier 1 | 1 | 0.1% | 2020-02 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Comp | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381996 | `0xc00e94cb662c3520282e6f5717214004a7f26888` | ✅ Audited |
| WETH9 | unknown | project_anchor | own_supporting | 0 | optimism | unit-382035 | `0x4200000000000000000000000000000000000006` | ✅ Audited |

### ⚠️ Verified + Unaudited (775)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccessControlledAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00377d6c82df8f63163ff828760b2a5d935734cf` | ⚠️ Unaudited |
| AccessControlledOCR2Aggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x019699e5b12331cf77df9e39818c2e15c8b06215` | ⚠️ Unaudited |
| AccessControlledOffchainAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00260db07a22a6a5182213d8de1aba0705a6cd78` | ⚠️ Unaudited |
| AccessControlManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4195ed6e112cbddc1adf7271047dba4e6bb6bc56` | ⚠️ Unaudited |
| AcreMultiAssetVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a6e0d0189c1d09eb4c63a53693d2be26cafd18d` | ⚠️ Unaudited |
| ActionRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94af5994eb6841e1d930c95ad0c9f89771c3073f` | ⚠️ Unaudited |
| AddressMapping | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7298d8995eb7a932b36a77fcc44dc0cfdce74de8` | ⚠️ Unaudited |
| AddressProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20ee00f43ef299dba82ba6fef537756dabe38cc7` | ⚠️ Unaudited |
| AddressQueueStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44e31944e1a6f3b8f805e105b130f8bdb7e2ebd8` | ⚠️ Unaudited |
| AddressSetStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd4ae2511df21f367792ba4d67c6eb032171c6a16` | ⚠️ Unaudited |
| Aero | unknown | project_anchor | own_supporting | 0 | base | unit-382376 | `0x940181a94a35a4569e4529a3cdfb74e38fd98631` | ⚠️ Unaudited |
| AGETHPoolV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x60ff20bacd9a647e4025ed8b17ce30e40095a1d2` | ⚠️ Unaudited |
| AGETHTokenWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa88845af0d087ce8cf2f6d7d7a674154b21f73a5` | ⚠️ Unaudited |
| Aggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b8b84d5f89378eb7f902031b6006dd6c0eeae4d` | ⚠️ Unaudited |
| AggregatorFacade | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x010b33ce6fe3c65e8c873d91be0bcb3de36c0a67` | ⚠️ Unaudited |
| AIP1Point1Target | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4b075f1d7dce6f480bf87e45df2f2e1b1a430184` | ⚠️ Unaudited |
| AIP1Point2Action | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6274106eedd4848371d2c09e0352d67b795ed516` | ⚠️ Unaudited |
| AirdropDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe4c69af018b2ea9e575026c0472b6531a2bc382f` | ⚠️ Unaudited |
| ArbCommunityNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbd0dd2f644fb4eca58e1e73eee2e5e1cc52de79a` | ⚠️ Unaudited |
| ArbFiatToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1efb3f88bc88f03fd1804a5c53b7141bbef5ded8` | ⚠️ Unaudited |
| ArbitrumBridgeReceiver | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382167 | `0x42480c37b249e33aabaf4c22b20235656bd38068` | ⚠️ Unaudited |
| ArbitrumExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xba4eee20f434bc3908a0b18da496348657133a7e` | ⚠️ Unaudited |
| ArbitrumValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31982c9e5edd99bb923a948252167ea4bbc38ac1` | ⚠️ Unaudited |
| ArbUXRNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2fa063182c6f0f953c99abf46add4d2c9f6ff61a` | ⚠️ Unaudited |
| ARM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe06b0e8c4bd455153e8794ad7ea8ff5a14b64e4b` | ⚠️ Unaudited |
| ARMProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc311a21e6fef769344eb1515588b9d535662a145` | ⚠️ Unaudited |
| AssetListFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x0daf7a2772c84a82d1d46a4b628151e6d7f5b202` | ⚠️ Unaudited |
| AssetPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21b86fdc93f23fd52022a283828df8e808d28d5d` | ⚠️ Unaudited |
| AssetRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb823359367978a28eae71e90f79d95b62348bd80` | ⚠️ Unaudited |
| Auction | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x85a22763f94d703d2ee39e9374616ae4c1612569` | ⚠️ Unaudited |
| AuctionBidder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x773a4cacbca8e3704f8f7842531eab83e437b3c4` | ⚠️ Unaudited |
| AuctionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68fe80c6e97e0c8613e2fed344358c6635ba5366` | ⚠️ Unaudited |
| AuraSwEthBbAWethSYV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb6ea7fddfdf2afc2bc6bf715185a33f8e27b96b` | ⚠️ Unaudited |
| AvsOperator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8969d7c2e3e5b056d5d4984031788eca923960f5` | ⚠️ Unaudited |
| BalanceLogicLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8e634181dafb102213fad46b71ba1a4b6153b648` | ⚠️ Unaudited |
| Bank | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65fbae61ad2c8836ffbfb502a0da41b0789d9fc6` | ⚠️ Unaudited |
| BaseBridgeHelperModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x362dbd4ff662b2e2b05b9cedc91da2dd2c655b26` | ⚠️ Unaudited |
| BaseBulker | unknown | project_anchor | own_supporting | 0 | linea | unit-382307 | `0x023ee795361b28cdbb94e302983578486a0a5f1b` | ⚠️ Unaudited |
| BaseRegistrarImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x6e84390dcc5195414ec91a8c56a5c91021b95704` | ⚠️ Unaudited |
| BatchedPhasedEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b8e50ec9fbf844c3671bc178df8eadfcff831ca` | ⚠️ Unaudited |
| BatchSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1070f775e8eb466154bba8fa0076c4adc7fe17e8` | ⚠️ Unaudited |
| BeaconAuthorization | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x632c2d58ad870fbd4569da0a4e82ddf4b56e83e8` | ⚠️ Unaudited |
| BeaconBackportRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fec9cf78087064f1f32269f68f94ae343ffbfff` | ⚠️ Unaudited |
| BeaconBackportRewardsEscrowBeneficiary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24c0fbd3ff8e742080c60881f8527ca3baf07647` | ⚠️ Unaudited |
| BeaconDkg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x024a697788918007592572f7cd020df2bc2abd84` | ⚠️ Unaudited |
| BeaconDkgValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4edc83c5c5b0c41a594371485554b95280653f94` | ⚠️ Unaudited |
| BeaconInactivity | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67a26f2ebdb2448605936fe9a5f496cda7941ec0` | ⚠️ Unaudited |
| BeaconProxyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3fe38087a94903a9d946fa1915e1772fe611000f` | ⚠️ Unaudited |
| BeaconRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf51807acb3394b8550f0554fb9098856ef5f491` | ⚠️ Unaudited |
| BeaconRewardsEscrowBeneficiary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b15fef1bfa4aff9b51f7b3b2df4d197cde68ff0` | ⚠️ Unaudited |
| BitcoinDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04b94f55780682478c8d8329368aaafd320f4d32` | ⚠️ Unaudited |
| BitcoinRedeemer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f2766373e74f268d5dbde32a395eb1c924839a5` | ⚠️ Unaudited |
| BlackPearl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x677365ac7ca3e9efe12a29a001737a3db265e8af` | ⚠️ Unaudited |
| Blocklist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70222d2579877a1a82dd4f00bfc97975d41001b2` | ⚠️ Unaudited |
| BLS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6552059b6efc6aa4ae3ea45f28ed4d92ace020cd` | ⚠️ Unaudited |
| BLSPublicKeyCompendium | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18dd3cbe484f955217165feac6fe928d04a56a72` | ⚠️ Unaudited |
| BLSRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1ed35b793d887e028493dac4a11aa5feb811dd67` | ⚠️ Unaudited |
| BNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a393848f5d1b8e7dab45f3a7e01f9f0dc687242` | ⚠️ Unaudited |
| BondedECDSAKeep | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9e838fcb9295fa44d89d06ed59811ae1a22c105` | ⚠️ Unaudited |
| BondedECDSAKeepFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a7cd8e1384d49f502b4a4ce9ac9eb320835c5d7` | ⚠️ Unaudited |
| BondedSortitionPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c46f496c410465975a427e34a976fc15a2ede4f` | ⚠️ Unaudited |
| BonusDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x03f349b3cc4f200d7fae4d8ddaf1507f5a40d356` | ⚠️ Unaudited |
| BoringVaultPriceProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x130e22952dd3de2c80ebdfc2b256e344ff3a0729` | ⚠️ Unaudited |
| Bridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b67c2908ef408f6612e025fe3cf12c8507a4717` | ⚠️ Unaudited |
| BridgedBaseWOETHProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xd8724322f44e5c58d7a815f542036fb17dbbf839` | ⚠️ Unaudited |
| BridgedWOETHStrategyProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x80c864704dd06c3693ed5179190786ee38acf835` | ⚠️ Unaudited |
| BridgeGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa94dd662e2a247493facceab9f2459aaf90778ee` | ⚠️ Unaudited |
| BridgeGovernanceParameters | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce4b16b81a28d785feeb7b1d56a9b97d450d3443` | ⚠️ Unaudited |
| BridgeV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1fe8a0daed7e912d3b5b56ff6e05f17d82059c8` | ⚠️ Unaudited |
| Bulker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x74a81f84268744a40febc48f8b812a1f188d80c3` | ⚠️ Unaudited |
| BurnMintTokenPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0a7b237027b1c351c4bd3a6c1906a47005c696a1` | ⚠️ Unaudited |
| BurnMintTokenPoolAndProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x07d7a985832369ef32f0491aa4cd44ffa9dd4200` | ⚠️ Unaudited |
| BurnWithFromMintTokenPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0c6dda1c33e62ca3a8ceb4ae2485f08510672d02` | ⚠️ Unaudited |
| BurnWithFromMintTokenPoolAndProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x82164603b46a79c0ddcf2e622e242f16428939db` | ⚠️ Unaudited |
| BVM_ETH | unknown | project_anchor | own_supporting | 0 | mantle | unit-382230 | `0xdeaddeaddeaddeaddeaddeaddeaddeaddead1111` | ⚠️ Unaudited |
| CachedRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4709ab91123f7dbb4b6c4a02c94e855678404fc7` | ⚠️ Unaudited |
| CallProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x031828231b6829208c1b2aad4ecfea2c011dcf87` | ⚠️ Unaudited |
| CCTPHookWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6d04c71d805c158a3e786b3feed3a6b490f79670` | ⚠️ Unaudited |
| CErc20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x158079ee67fce2f58472a96584a73c7ab9ac95c1` | ⚠️ Unaudited |
| CErc20Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x5d3a536e4d6dbd6114cc1ead35777bab948e3643` | ⚠️ Unaudited |
| CEther | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ddc2d193948926d02f9b1fe9e1daa0718270ed5` | ⚠️ Unaudited |
| ChainlinkCorrelatedAssetsPriceOracle | unknown | project_anchor | own_supporting | 0 | unichain | unit-382065 | `0x0090a563c4832e4e519f5f054483519b1a83c8c3` | ⚠️ Unaudited |
| ChannelConfigStore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1affdb984bbd8c3382f1ddc8bd605383830160f3` | ⚠️ Unaudited |
| ChildChainManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x195fe6ee6639665cceb15bcceb9980fc445dfa0b` | ⚠️ Unaudited |
| ChildChainManagerProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xafeea1de9d660d3cb53031cfe1a58de40b171ce8` | ⚠️ Unaudited |
| ChildERC1155 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa0c68c638235ee32657e8f720a23cec1bfc77c77` | ⚠️ Unaudited |
| ChildERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0b9020d4e32990d67559b1317c7bf0c15d6eb88f` | ⚠️ Unaudited |
| ChildERC721 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x004bae2ed0210e937327aaf199135393f64d5b57` | ⚠️ Unaudited |
| ChildMintableERC721 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd4888fab8bd39a663b63161f5ee1eae31a25b653` | ⚠️ Unaudited |
| CLAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2298d44cfda0ceafe7f5ef5fd587b67d7b9b1fbb` | ⚠️ Unaudited |
| ClaimBribesSafeModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x26179ada0f7cb714c11a8190e1f517988c28e759` | ⚠️ Unaudited |
| ClonableBeaconProxy | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-382415 | `0x2f2a2543b76a4166549f7aab2e75bef0aefc5b0f` | ⚠️ Unaudited |
| Comet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x023ee795361b28cdbb94e302983578486a0a5f1b` | ⚠️ Unaudited |
| CometExt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x052a2aa8d16e3d69c3c6def0e743b7d958b5cd69` | ⚠️ Unaudited |
| CometExtAssetList | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381918 | `0x055e53f50b84fd91c4be367220efd36c3d091e1f` | ⚠️ Unaudited |
| CometFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x023ee795361b28cdbb94e302983578486a0a5f1b` | ⚠️ Unaudited |
| CometFactoryWithExtendedAssetList | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0202aecab5f0c6c147bb4630a5678da7094d6155` | ⚠️ Unaudited |
| CometProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x0e383794eaaa6cf7ffb2c8ad5bebbbc5cb0f0a7b` | ⚠️ Unaudited |
| CometRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x06029a334626aa22228aa0e624b119212064d756` | ⚠️ Unaudited |
| CometWithExtendedAssetList | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x0090a563c4832e4e519f5f054483519b1a83c8c3` | ⚠️ Unaudited |
| CommitStore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x032b209a6b7a00336047505b55a4cbfbd29ee2c1` | ⚠️ Unaudited |
| CompoundEzEthLoopStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd050d674bdd75a0398be6b6ec87978cd6622f1bc` | ⚠️ Unaudited |
| CompoundGovernor | unknown | project_anchor | own_supporting | 1 | ethereum | unit-382403 | `0x309a862bbc1a00e45506cb8a802d1ff10004c8c0` | ⚠️ Unaudited |
| Comptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x178053c06006e67e09879c09ff012ff9d263df29` | ⚠️ Unaudited |
| ConfiguratorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | `0x113308f0d52cea7a50c185ff4edcbd789e68b1a3` | ⚠️ Unaudited |
| ConfiguratorProxy | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382195 | `0xb21b06d71c75973babde35b49ffdac3f82ad3775` | ⚠️ Unaudited |
| ConfirmedTransactionModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04b2218a03f4b034a2e83e9e8d1e7ea0da8748ba` | ⚠️ Unaudited |
| Consortium | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f8048c81d00da5e757e20ad5fc89f8a32c5478e` | ⚠️ Unaudited |
| ConstantPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x033bf4885274d9740b2e09bac0fc7ddd93417c7e` | ⚠️ Unaudited |
| Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca06411bd7a7296d7dbdd0050dfc846e95febeb7` | ⚠️ Unaudited |
| CoveragePool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d7b622c07f216d99efc3efb9cf71872f46d811a` | ⚠️ Unaudited |
| CoveragePoolBeneficiary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22428b09efc87709ab49a77da6f9ce4ffa2ee39b` | ⚠️ Unaudited |
| CPoR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x575a16cd2305ad7171f5c1036c3506070df28c51` | ⚠️ Unaudited |
| Create2Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6521991a0bc180a5df7f42b27f4ee8f3b192ba62` | ⚠️ Unaudited |
| CrossChainRemoteStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5f81a5a22375ebcc2075b162d23a5b16a1e7a92d` | ⚠️ Unaudited |
| CryptoCabz | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x76bf9ac96fc75849c6872cf89f367e56feed5c30` | ⚠️ Unaudited |
| CumulativeMerkleDrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26542fbe5f320f25747e80831acdd1f27cdd0c65` | ⚠️ Unaudited |
| DadFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01c1103d765f62a0d909499d7b615c382cdb072d` | ⚠️ Unaudited |
| DaiFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf07674f6ac6632e253c291b694f9c2e2ed69ebbb` | ⚠️ Unaudited |
| DaiUsds | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3225737a9bbb6473cb4a45b7244aca2befdb276a` | ⚠️ Unaudited |
| DaoModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3de7a43ec8716126c819c6e4020c9f0a9b8a398a` | ⚠️ Unaudited |
| DataLayrChallenge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ee53d3d6e622ac0296369445afb3cbbdc57c066` | ⚠️ Unaudited |
| DataLayrChallengeUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xcdc78c5eaea2de33b00a9200ee1700937fb0f55d` | ⚠️ Unaudited |
| DataLayrServiceManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x5bd63a7ecc13b955c4f57e3f12a64c10263c14c1` | ⚠️ Unaudited |
| DelegationLogicLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd6e6d57d0627aae127743c79bc795f836431d59f` | ⚠️ Unaudited |
| Deposit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ac1841a47054e070236f1664991e52c30c04dc5` | ⚠️ Unaudited |
| DepositDataRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75ab6ddce07556639333d3df1eaa684f5735223e` | ⚠️ Unaudited |
| DepositFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87effef56c7ff13e2463b5d4dce81be2340faf8b` | ⚠️ Unaudited |
| DepositFunding | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62d1286683507939c065c12f2d1e80cca8ccd125` | ⚠️ Unaudited |
| DepositLiquidation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ca5060bf142c58168aedb974aabb020bc081a56` | ⚠️ Unaudited |
| DepositManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a41d539d5a599a6ea6a79e32bd047277892ea28` | ⚠️ Unaudited |
| DepositQueue | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24aa958c90b7973dc16c63c9992f69e1767377ae` | ⚠️ Unaudited |
| DepositRedemption | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x817c0f6332392ad65d7688ed22f59b227e372323` | ⚠️ Unaudited |
| depositRootGenerator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10f2c552ef9ca8d2b592a8055e2db0efe5c561d6` | ⚠️ Unaudited |
| DepositStates | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8695ff199a1216fc7e2bf97303bf662babae1c80` | ⚠️ Unaudited |
| DepositSweep | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x392635646bc22fc13c86859d1f02b27974ac9b95` | ⚠️ Unaudited |
| DepositUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ad83decf0555945094e5d25129c1f324f212517` | ⚠️ Unaudited |
| deUSD | unknown | project_anchor | own_supporting | 1 | ethereum | unit-382402 | `0x15700b564ca08d9439c58ca5053166e8317aa138` | ⚠️ Unaudited |
| DForce | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5d8063df0319457f777a353efef0dc0189a15ba1` | ⚠️ Unaudited |
| DirectStakingBaseHandlerProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdb282a4935fdab14a1b5ff14a4de75e100b4c1e3` | ⚠️ Unaudited |
| DirectStakingHandlerL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x851de5ea424557b52d1d6debe5bda12a7d37904b` | ⚠️ Unaudited |
| DistributeMerkleERC20Upgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x242b0fe8b141cabe48b79115f376137b983c34d0` | ⚠️ Unaudited |
| DonationVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa544b70dc6af906862f68eb8e68c27bb7150e672` | ⚠️ Unaudited |
| DorMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83b78c4a54507ddc8db1fc3fd41df6edb0c9da2a` | ⚠️ Unaudited |
| DorRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5324e2f61987fcb06d892f1256b7c12ca9152a10` | ⚠️ Unaudited |
| DragonLair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf28164a485b0b2c90639e47b0f377b4a438a16b1` | ⚠️ Unaudited |
| DSChief | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e2a84d6ade1e7fffee039a35ef5f19f13057152` | ⚠️ Unaudited |
| DSChiefFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e7ca05e174a523709e556080e227f734a8f1483` | ⚠️ Unaudited |
| DSToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x068083069ed92da4c5291dba52d8912abfcc5523` | ⚠️ Unaudited |
| DualAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x01065f4726bbbce2ef1a4bebc04af3209357c71e` | ⚠️ Unaudited |
| DVFInterface2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc619735fdf48bba5e2bb403e42a5d457db684d5` | ⚠️ Unaudited |
| DVFInterface3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa297ec52ac188f98a5b293bca3ff405643319212` | ⚠️ Unaudited |
| DVFInterface4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7de1f04204ef29229d84e7c0c2d1216c28645a15` | ⚠️ Unaudited |
| DWSTETHV3RateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5760a2f36a8a3bf57cfc8376b046669a7fbbf08` | ⚠️ Unaudited |
| EACAggregatorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0017abac5b6f291f9164e35b1234ca1d697f9cf4` | ⚠️ Unaudited |
| eBtcRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81be3526a71d9013a1a5bd38758e0f248231b523` | ⚠️ Unaudited |
| ECDSABackportRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9ca1abe343515312eb6d13178c5a2dce3c036fa` | ⚠️ Unaudited |
| ECDSABackportRewardsEscrowBeneficiary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82ab5f02993bf312d9aca03157f26febebc76108` | ⚠️ Unaudited |
| EcdsaDkgValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0125c8977a02b2fa3970b1ed9af02f5bedd4ef27` | ⚠️ Unaudited |
| EcdsaInactivity | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8263efcb8f28246697585c89fed0501cd946f764` | ⚠️ Unaudited |
| ECDSARewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5ac5a8892230e0a3e1c473881a2de7353ffca88` | ⚠️ Unaudited |
| ECDSARewardsDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b9e48f8818962699fe38f5989b130cee691bbb3` | ⚠️ Unaudited |
| ECDSARewardsDistributorEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa77ec9c89a0c889bcb05d15df42d49b706952042` | ⚠️ Unaudited |
| ECDSARewardsEscrowBeneficiary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x037a91d627cdbdd5ae20d6912fa15ae29b5efb84` | ⚠️ Unaudited |
| EETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b47a665364bc15c28b05f449b53354d0ceff72f` | ⚠️ Unaudited |
| EigenLayrDelegation | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xea4f1fe4928f1f83a450899c068bcd455baf4798` | ⚠️ Unaudited |
| EmptyContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b28a6cdf1bc937a984334ef5409b755489fb585` | ⚠️ Unaudited |
| ENSRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x50130b669b28c339991d8676fa73cf122a121267` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x147379a0174780570d07d70a14fb244ee5f2d786` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x478bf562b2a39ff8530ee41ff0dfb39d8bdd2192` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-382404 | `0x57f5e098cad7a3d1eed53991d4d66c45c9af7812` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x5c4606cb0ee50fdc4fad8722c99e8d6d49f59219` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-382397 | `0x5c5b196abe0d54485975d1ec29617d42d9198326` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-382406 | `0xd11c452fc99cf405034ee446803b6f6c1f6d5ed8` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-382400 | `0xd9a442856c234a39a81a089c06451ebaa4306a72` | ⚠️ Unaudited |
| ERC20Bridged | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0fbcbaea96ce0cf7ee00a8c19c3ab6f5dc8e1921` | ⚠️ Unaudited |
| ERC20PaymentReceiverEzRVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24c28e5ea9960dff3c00c02790d1aec21b5d65af` | ⚠️ Unaudited |
| ERC20RebasableBridgedPermit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x5a007d6e37633fb297b82c074b94bb29546bebc3` | ⚠️ Unaudited |
| ERC4626CorrelatedAssetsPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x311930889c61e141e15a61d11be974d749390e7a` | ⚠️ Unaudited |
| ERC4626VaultWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f987372a1ae29f834deaea66d2e72137ba10fc7` | ⚠️ Unaudited |
| EsGMX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x56f9799a53fa850d6f7c71f7e9015eb7768758a0` | ⚠️ Unaudited |
| EsGmxBatchSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc3828fa579996090dc7767e051341338e60207ef` | ⚠️ Unaudited |
| EthBlocklistErc20Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b4f6bfb694790051e0203db83edbb5888099556` | ⚠️ Unaudited |
| EthBlocklistVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00e3af59e2496d030e5b2c629784db284fd4cd3c` | ⚠️ Unaudited |
| EthDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45fed80345757ce3b530effa4b8022df3419cccd` | ⚠️ Unaudited |
| EthErc20Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3acdbdbf0459d376df9378c02af50c83dc7646e9` | ⚠️ Unaudited |
| EthGenesisVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x124c33d07f94b31adf87c12f7ca3a586d3510928` | ⚠️ Unaudited |
| EthOsTokenVaultEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09e84205df7c68907e619d07afd90143c5763605` | ⚠️ Unaudited |
| EthPrivErc20Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28f325dd287a5984b754d34cfca38af3a8429e71` | ⚠️ Unaudited |
| EthPrivVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x135f45e0179dd928e73422b40bdc6c5d7047a035` | ⚠️ Unaudited |
| ETHRegistrarController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xdb75db974b1f2bd3b5916d503036208064d18295` | ⚠️ Unaudited |
| EthRestakeBlocklistErc20Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fcd8bb2e3dde5809b2106039b741c041bd49e4e` | ⚠️ Unaudited |
| EthRestakeBlocklistVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e30370cabd4b4d95be17706d840ff9de1addb67` | ⚠️ Unaudited |
| EthRestakeErc20Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x215f4c69c3d1461c7aa38c9c73c27e10cfb0eee4` | ⚠️ Unaudited |
| EthRestakePrivErc20Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xedebe792c6190be612cbe97f628137faa8c36ee5` | ⚠️ Unaudited |
| EthRestakePrivVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x792ff341e1db4ab20fbfb93c0fc071501525e353` | ⚠️ Unaudited |
| EthRestakeVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59adb46407ebf4cba923f91f2c06acc4b2e073bb` | ⚠️ Unaudited |
| EthRestakeVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x026df36ec050e7f473cbfc30aa42946d3ed11b2c` | ⚠️ Unaudited |
| EthValidatorsChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac9125646185cb58e86e77d5f402efa3fafafc84` | ⚠️ Unaudited |
| EthVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0cb2cbdf9a030ffbdea6f20a019f1feaca5cae78` | ⚠️ Unaudited |
| EthVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x170618936cd96b1ed8112ec3d3778374b38dfe5e` | ⚠️ Unaudited |
| ETHx | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c22ffd479637ea0ed61d451cbe6355627283358` | ⚠️ Unaudited |
| EulerEzEthLoopStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe97c9410ac4cf12966c31e70d748b5c889b5fe6` | ⚠️ Unaudited |
| EulerSwapEzEthDelegateStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d02267b9529ba1ee284e73e107feaf91e23dd89` | ⚠️ Unaudited |
| EVM2EVMOffRamp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x017513a8ca43992938e7fa72033ee29a0e2c029e` | ⚠️ Unaudited |
| EVM2EVMOnRamp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x05b723f3db92430fbe4395fd03e40cc7e9d17988` | ⚠️ Unaudited |
| EzAdminL1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7625716271e5dd3896cf5336a1ea62fae9a24718` | ⚠️ Unaudited |
| EzAuction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ab40d79d1c85670a10803853a307c862c1ba29f` | ⚠️ Unaudited |
| ezETHConversionStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xebb77a6a553646f81eaf57429c8fc004f9bbd86a` | ⚠️ Unaudited |
| EzETHExchangeRatePriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde43600de5016b50752cc2615332d8ccbed6ec1b` | ⚠️ Unaudited |
| EzEthToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e756b7bcca7b26fb9d85344b3525f5559bbacb0` | ⚠️ Unaudited |
| ezETHValueStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35b5ebe66dd7ef372f5c36b25a297863e1b0bd9e` | ⚠️ Unaudited |
| EzRVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04fc0eec2f93b94781e89fcab192613c48957d73` | ⚠️ Unaudited |
| EzRVaultLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47fbab3dbaebfcf6173b9637bb020c0ca05158e2` | ⚠️ Unaudited |
| EzRVaultsFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02e976adf6d27ec622b00a0125e3c52e32b0727f` | ⚠️ Unaudited |
| Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5a5f138005e19a3e6d0fe68b039397eeef2322b` | ⚠️ Unaudited |
| FactoryRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5c3f18f06cc09ca1910767a34a20f771039e37c0` | ⚠️ Unaudited |
| FastlaneFee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x434b68b11bbe8fd3074089397ca3d275801d6354` | ⚠️ Unaudited |
| FastPriceEvents | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1b27de2815b7903b64961e8c6a992e013dd983e6` | ⚠️ Unaudited |
| FastPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x068f2880c5dc0cb5c1ef913a517f3ad4122167c7` | ⚠️ Unaudited |
| FBTC | unknown | project_anchor | own_supporting | 0 | mantle | unit-382227 | `0xc96de26018a54d51c097160568752c4e3bd6c364` | ⚠️ Unaudited |
| FBTCPartnerVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x512258182db0ad147cdc1a116191be823f8f198c` | ⚠️ Unaudited |
| FeedRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47fb2585d2c56fe188d0e6ec628a38b74fceeedf` | ⚠️ Unaudited |
| FeeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48a42f6aed34fd936355b5358fee4de847dcf649` | ⚠️ Unaudited |
| FeeRebateToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf3fff06b75f99352d8c2a3c4bef1339a2f94789` | ⚠️ Unaudited |
| FeeTo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdaf819c2437a82f9e01f6586207ebf961a7f0970` | ⚠️ Unaudited |
| FeeToSetter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18e433c7bf8a2e1d0197ce5d8f9afada1a771360` | ⚠️ Unaudited |
| Fiat24CryptoDeposit2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08a65c2ac24680e6c9dd1a61a1e823f058d24df9` | ⚠️ Unaudited |
| FiatToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8cbde23b1416cac07a52591bba744c744d77a91a` | ⚠️ Unaudited |
| FiatTokenProxy | unknown | project_anchor | own_supporting | 1 | unichain | unit-382411 | `0x078d782b760474a361dda0af3839290b0ef57ad6` | ⚠️ Unaudited |
| FiatTokenProxy | unknown | project_anchor | own_supporting | 0 | scroll | unit-382234 | `0x06efdbff2a14a7c8e15944d1f4a48f9f95f663a4` | ⚠️ Unaudited |
| FiatTokenUtil | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6315aa908c50376d1028412c028aa0629f0355a6` | ⚠️ Unaudited |
| FiatTokenV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0882477e7895bdc5cea7cb1552ed914ab157fe56` | ⚠️ Unaudited |
| FiatTokenV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7277a6e95992041568d9391d09d0122023778a2` | ⚠️ Unaudited |
| FiatTokenV2_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0f4fb9474303d10905ab86aa8d5a65fe44b6e04a` | ⚠️ Unaudited |
| FixedRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbb64b15b0c14645a9216a4caf57b33aa9ba2860` | ⚠️ Unaudited |
| Flags | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x15e9dd0f01fc778c7f97ca1e2c4d9895b03b2e5d` | ⚠️ Unaudited |
| FlashAuctionBuyer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39e2a9eb9d8d9cc30fe096b5a642d7597be1a521` | ⚠️ Unaudited |
| Forwarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x15e62707fca7352fbe35f51a8d6b0f8066a05dcc` | ⚠️ Unaudited |
| Franchiser | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xefae01493270dc08af466369cf588aa5025475a2` | ⚠️ Unaudited |
| FranchiserFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x002e326b8ed01f27588388b731720f9b72cc27cf` | ⚠️ Unaudited |
| FranchiserPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x219a69e60eaf34a7658848664b907fa6d72b5ceb` | ⚠️ Unaudited |
| Fraud | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51bbef1c7cc3a1d3bc5e64ce6c3ba6e66fba3559` | ⚠️ Unaudited |
| FunctionsClientUpgradeHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x09e4f606a78d21a0cdc72894fd0b75f5039f7831` | ⚠️ Unaudited |
| FunctionsCoordinator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x97b207cdbd46400f23c2392c4fb20f7b4e948ace` | ⚠️ Unaudited |
| FunctionsRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf9b8fc078197181c841c296c876945aaa425b278` | ⚠️ Unaudited |
| FundingScript | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94c70c36b519e03705ddc26982d438f71993d063` | ⚠️ Unaudited |
| FxChild | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8397259c983751daf40400790063935a11afa28a` | ⚠️ Unaudited |
| GasPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c0a348500638aace229d6868c26b4e64fe46ab3` | ⚠️ Unaudited |
| GaugeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x35f35ca5b132cadf2916bab57639128eac5bbcb5` | ⚠️ Unaudited |
| GearboxDeposit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8793164ae37e5fae2cdf7620f4d4dc615bc22f31` | ⚠️ Unaudited |
| GearboxDepositV31 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4deed6b663a64f76f6a59412486a9d9048cd234f` | ⚠️ Unaudited |
| GearboxRedeem | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x150d67ad07700918fc77d7fd2e78967693718ece` | ⚠️ Unaudited |
| GearboxRedeemV31 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90a02936ba645ab719574512b578ee85d208257a` | ⚠️ Unaudited |
| GemFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x431e935209d79706b5866eb42137a3491d845692` | ⚠️ Unaudited |
| GemPit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69076e44a9c70a67d5b79d95795aba299083c275` | ⚠️ Unaudited |
| Generalized4626Strategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x167747bf5b3b6bf2f7f7c4cce32c463e9598d425` | ⚠️ Unaudited |
| globalIndexLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x325ea059f11d6860e50a803ae52d49ef35c85fb9` | ⚠️ Unaudited |
| GLP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4277f8f2c384827b5273592ff7cebd9f2c1ac258` | ⚠️ Unaudited |
| GlpBalance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x13e0bbe893b33b64d4f3f96725dd70531fa4ebce` | ⚠️ Unaudited |
| GlpManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x321f653eed006ad1c29d174e17d96351bde22649` | ⚠️ Unaudited |
| GMPBasculeV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3ecfe771564e3f28cfb7a9b203f4d10279338ed` | ⚠️ Unaudited |
| GMX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x01234181085565ed162a948b6a5e88758cd7c7b8` | ⚠️ Unaudited |
| GmxTimelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x34b45ee7cdccb5652bf54fd9795dd447a4118a81` | ⚠️ Unaudited |
| GnosisSafe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x035e930e88cdf1849ca1e9abb3e72043efdcb7c5` | ⚠️ Unaudited |
| GnosisSafeProxyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0b681cc8cddcd687aba50a99f8dfb31ede4f11bf` | ⚠️ Unaudited |
| Governable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaf8e969e3e23f1732f614e64630498ec809d8a47` | ⚠️ Unaudited |
| GovernanceToken | unknown | project_anchor | own_supporting | 0 | optimism | unit-382036 | `0x4200000000000000000000000000000000000042` | ⚠️ Unaudited |
| GovernorAlpha | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e4be8bc9637f0eaa1a755019e06a68ce081d58f` | ⚠️ Unaudited |
| GrantStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02612d20cc087670a959bb12ca3c5fd56c8a3db3` | ⚠️ Unaudited |
| Harvester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3ff1121068a3d88d56b885b38921bed7121a538` | ⚠️ Unaudited |
| HashStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x2a2f37d29143aea599c57169817a48c04664150b` | ⚠️ Unaudited |
| IBCVoucher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77d81c09e64972fef1a785e9c6357847c08a5b9f` | ⚠️ Unaudited |
| InstantWithdrawer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ddaa152b3cf455693c944f9f47925408ff6f8ff` | ⚠️ Unaudited |
| InternalAccountingUnit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b6238e95bbcabee58997c99badd4154ad68ba92` | ⚠️ Unaudited |
| InvestmentManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x23754725a49c0f003c349a6c7869ff8609a7cefd` | ⚠️ Unaudited |
| InvestmentStrategyBase | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9fecf38689349a5cff97526610cdb27618edc6b9` | ⚠️ Unaudited |
| ITBPositionDecoderAndSanitizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x310fc2403b0d12fc6de088b96da9ac7399d872ee` | ⚠️ Unaudited |
| JumpRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5562024784cc914069d67d89a28e3201bf7b57e7` | ⚠️ Unaudited |
| KeepBonding | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27321f84704a599ab740281e285cc4463d89a3d5` | ⚠️ Unaudited |
| Keeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x435192a898a5ee86bbc8951471e5fbe721ba3f7a` | ⚠️ Unaudited |
| KeeperRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f75953c2661d3a0138fcd80551ea10b80dd08c7` | ⚠️ Unaudited |
| KeepFactorySelection | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29fa8f46cbb9562b87773c8f50a7f9f27178261c` | ⚠️ Unaudited |
| KeepRandomBeaconOperator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf708431162ba247ddae362d2c919e0fbafcf9de` | ⚠️ Unaudited |
| KeepRandomBeaconOperatorStatistics | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3975ce253ff9d586cf08c3898f95064b7a5718e7` | ⚠️ Unaudited |
| KeepRandomBeaconServiceImplV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09959798b95d00a3183d20fac298e4594e599eab` | ⚠️ Unaudited |
| KeepTokenGeyserRewardsEscrowBeneficiary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06b5869aadcf3fa9a2733dd93d4240a6d813fd7d` | ⚠️ Unaudited |
| KeepVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf00dac2be1250cf62cbfc617ee7bc45c0016c87` | ⚠️ Unaudited |
| KPKWSTETHV3RateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8efa074aa18368270d5cda1fe733de2b9459ac2` | ⚠️ Unaudited |
| L1cmETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d7aef0cbcd7b5bae2ccc4cf69f68443468bf9f6` | ⚠️ Unaudited |
| L1cmETHAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae96df024b9cb69a39a219d7176df6e7e39fac44` | ⚠️ Unaudited |
| L1Cook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3bb3d74b1280a2e86013a03d05147b9a684df4bc` | ⚠️ Unaudited |
| L1CookAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x078382dfdc3b1b984b53c38268e6a683fa348a79` | ⚠️ Unaudited |
| L1CookMessagingStatus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12a01ce234b063417d0916a755e31201ab4824be` | ⚠️ Unaudited |
| L1ERC20Q | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6be0f719ac481adcbdde30486b1b80e1728aed1b` | ⚠️ Unaudited |
| L1LineaReceiverETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33275453144a4d6ef266ef1164f3e6fcb6ef27f1` | ⚠️ Unaudited |
| L1MessagingStatus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa91377ab040d9571e14ac8192343a3247c84de7e` | ⚠️ Unaudited |
| L2AddressRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3e84af3743cc4e7f516570b341ced56530d901e8` | ⚠️ Unaudited |
| L2ERC20ExtendedTokensBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | unichain | n/a | `0x1a513e9b6434a12c7bb5b9af3b21963308dee372` | ⚠️ Unaudited |
| L2ERC20TokenBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x23b96add54c479c6784dd504670b5376b808f4c7` | ⚠️ Unaudited |
| L2MessageService | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x05d43713b7e333d2d54be65ce3b5f3698ab960fd` | ⚠️ Unaudited |
| L2StandardERC20 | unknown | project_anchor | own_supporting | 0 | optimism | unit-382052 | `0x9bcef72be871e61ed4fbbc7630889bee758eb81d` | ⚠️ Unaudited |
| L2TBTC | unknown | project_anchor | own_supporting | 1 | base | unit-382421 | `0x236aa50979d5f3de3bd1eeb40e81137f22ab794b` | ⚠️ Unaudited |
| L2USDCBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x1998108fa7993ea67a8b1a99d392a3288c5a5521` | ⚠️ Unaudited |
| LBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12364c9d095a2a43abb71b0d8313663ff0348eea` | ⚠️ Unaudited |
| LBTCOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1290a6b480f7ef14925229fdb66f5680ad8f44ad` | ⚠️ Unaudited |
| LEZyVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00aa8017206206dd43a2dd3679e890f9b50496ac` | ⚠️ Unaudited |
| LightRelay | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x836cdfe63fe2d63f8bdb69b96f6097f36635896e` | ⚠️ Unaudited |
| LightRelayMaintainerProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ca2f6206da1a7cb8155fea68797efdf25efa3c8` | ⚠️ Unaudited |
| LineaBridgeReceiver | unknown | project_anchor | own_supporting | 0 | linea | unit-382312 | `0x1f71901daf98d70b4baf40de080321e5c2676856` | ⚠️ Unaudited |
| LineaSurgeXP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x96b3a15257c4983a6fe9073d8c91763433124b82` | ⚠️ Unaudited |
| LineaVoyageXP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xd83af4fbd77f3ab65c3b1dc4b38d7e67aecf599a` | ⚠️ Unaudited |
| LineaXP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc24e7b826b3c1e8918843baf7abd2e51399cfc13` | ⚠️ Unaudited |
| LinkToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13432a43f2779c9c64fe9e436c2576e5231f7abc` | ⚠️ Unaudited |
| Liquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb61c66a4d83da8e04f40ca844c0c4b508ca81fa3` | ⚠️ Unaudited |
| LiquidCashier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x485fd98f834b4bf9db855f8fa03990318103c12e` | ⚠️ Unaudited |
| LiquidFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaec1fbb90528533d5f066094abdeb2f1b0039a3b` | ⚠️ Unaudited |
| LiquidityBuffer | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x006fad88c35d973a87e451cf8d000c7e83dad409` | ⚠️ Unaudited |
| LiquidityPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02656fe285fac5d5c756c2f03c17277df9bac65b` | ⚠️ Unaudited |
| LiquidOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f26b0f570c2cfb4050b424ef6ea5903818404ac` | ⚠️ Unaudited |
| LiquidVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1693b20932c798a63375db0252be7ca449ffa3b` | ⚠️ Unaudited |
| Liquifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2225c97928934625e8382e6636d30f94c46b6ed3` | ⚠️ Unaudited |
| LockReleaseTokenPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x34700f5fae61ba628c4269bdcba12da53bbfa726` | ⚠️ Unaudited |
| LockReleaseTokenPoolAndProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x387e40ed22ee3396288c874411b00c48f6978653` | ⚠️ Unaudited |
| Locks | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c84a8f1c29108f47a79964b5fe888d4f4d0de40` | ⚠️ Unaudited |
| LombardConsortium | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e1871fc8ac793dcf2a74ce004ee21d913763565` | ⚠️ Unaudited |
| LombardTimeLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x055e84e7fe8955e2781010b866f10ef6e1e77e59` | ⚠️ Unaudited |
| LombardTokenPoolV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61003ba35d6f57e0b61442bc88c2c7a45bf56095` | ⚠️ Unaudited |
| LoyaltyPointsMarketSafe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d716d4ec89060411b978e00691fac9795f2cd24` | ⚠️ Unaudited |
| LPRewardsKEEPETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47a5f2ffdf66d13ed7e317581f458d09b49d6f44` | ⚠️ Unaudited |
| LPRewardsTBTCSaddle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78aa83bd6c9de5de0a2231366900ab060a482edd` | ⚠️ Unaudited |
| LPRewardsTBTCv2Saddle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ad9e8e5236c0e2cf6d755bb7be4eabcbc03f76d` | ⚠️ Unaudited |
| LRTSquare | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d987e04fc47ac625f720f169c658307fd9a16a2` | ⚠️ Unaudited |
| LRTSquared | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x138f08a1798b7cf15adbf051bc2f11bca0ea7743` | ⚠️ Unaudited |
| LRTSquaredAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2b8c78a5eb18a5f3b0392c5479bb45c77d02ff5` | ⚠️ Unaudited |
| LRTSquaredCore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cb489ef513e1cc35c4657c91853a2e6ff1957de` | ⚠️ Unaudited |
| Mailbox | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x052359563d104867a42c48cb7e688b1af22f0080` | ⚠️ Unaudited |
| MainnetBulker | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381986 | `0xa397a8c2086c554b531c02e29f3291c9704b00c7` | ⚠️ Unaudited |
| MainnetBulkerWithWstETHSupport | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381936 | `0x2c776041ccfe903071af44aa147368a9c8eea518` | ⚠️ Unaudited |
| MaintainerProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x535e01f948458e0b64f9db2a01da6f32e240140f` | ⚠️ Unaudited |
| ManagedRewardsFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfda1fb5a2a5b23638c7017950506a36dcfd2bdc3` | ⚠️ Unaudited |
| MantleOFTAdapterUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x60af2681bcc4886935f428a1386a4a68973f7c4f` | ⚠️ Unaudited |
| ManyChainMultiSig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x170a530bbb5925808f743aac7ba89d6f0e748552` | ⚠️ Unaudited |
| MasterMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2230393edad0299b7e7b59f20aa856cd1bed52e1` | ⚠️ Unaudited |
| MaticWETH | unknown | project_anchor | own_supporting | 0 | polygon | unit-382139 | `0x7ceb23fd6bc0add59e62ac25578270cff1b9f619` | ⚠️ Unaudited |
| Maximillion | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf859a1ad94bcf445a406b892ef0d3082f4174088` | ⚠️ Unaudited |
| Members | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e8640574aa764763291ed733672d3a105107ac5` | ⚠️ Unaudited |
| MembershipManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x047a7749ad683c2fd8a27c7904ca8dd128f15889` | ⚠️ Unaudited |
| MembershipNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x290d981b41b713437265cd7846806d7500307106` | ⚠️ Unaudited |
| MerklClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23bd2d2af26c42ef9d1a1159d80f1cd7d90f049e` | ⚠️ Unaudited |
| MerklClaimerStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbca64801a6639ebda2c28cc0bdddf804424957db` | ⚠️ Unaudited |
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x090d4613473dee047c3f2706764f49e0821d256e` | ⚠️ Unaudited |
| MerkleTreeLeafChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d225296cd421aa65b2b9a68a971d7bf912fc5f1` | ⚠️ Unaudited |
| METH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x052f52748109bae13d6319a463d64b6a2a613e52` | ⚠️ Unaudited |
| METHExchangeRatePriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5bd3e64f6702f55e744e70e27281a7caabf7de46` | ⚠️ Unaudited |
| METHL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xa1f06b96f082c470e9759d1090d281b2493c6a2c` | ⚠️ Unaudited |
| MezoAllocator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e1d7ea6c2f5a39e90a21450a57269ca50e2b5df` | ⚠️ Unaudited |
| MezoBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1af817c36708fd0d057c87a51c92fbb0e527d1f5` | ⚠️ Unaudited |
| Migrations | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0aab73d845d481fe790787f535618457921a7e85` | ⚠️ Unaudited |
| MiniMeTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x003ea7f54b6dcf6cee86986edc18143a35f15505` | ⚠️ Unaudited |
| MintableBaseToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0d0e30d12b54d9ef7300edba23cb34f3730e6a4f` | ⚠️ Unaudited |
| MintableOFTUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x04c0599ae5a44757c0af6f9ec3b93da8976c150a` | ⚠️ Unaudited |
| Minter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xeb018363f0a9af8f91f06fee6613a751b2a33fe5` | ⚠️ Unaudited |
| MomFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x141a206ece672e3198086c5d21f7858ad03669ea` | ⚠️ Unaudited |
| MovingFunds | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3106675ede4a64d70131247466fd8704a3d42123` | ⚠️ Unaudited |
| Multicall2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x842ec2c7d803033edf55e478f461fc547bc54eb2` | ⚠️ Unaudited |
| MultiplicativePriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x023ee795361b28cdbb94e302983578486a0a5f1b` | ⚠️ Unaudited |
| MultiSend | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77deaa3c55f576d3ec0c130cadfbc5bf1cd64081` | ⚠️ Unaudited |
| MultiSigWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4a9196b06f339ad9f3ee752c987b401f2e1e2718` | ⚠️ Unaudited |
| MultiSigWalletWithDailyLimit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4a9d21b46810f69a02ac2d61f4bf1963de82700d` | ⚠️ Unaudited |
| NameWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xa53cca02f98d590819141aa85c891e2af713c223` | ⚠️ Unaudited |
| NativeLBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b89d757668a830f17d693a88d46073501df635d` | ⚠️ Unaudited |
| NativeStakingChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa47f925659799636c73f1fa244affe21f2a5a0da` | ⚠️ Unaudited |
| NavErc20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0a105e10801b52bf89a042bdb40c7389e57af36` | ⚠️ Unaudited |
| NavErc20WithDebt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff62ad6200a54fff9288c997f8ca2d480a0c48bc` | ⚠️ Unaudited |
| NavHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86b238787f24eecf24500135bc9d4d117062b6e6` | ⚠️ Unaudited |
| NavLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfda0b8bca5d0a5a5093141d8a45d133a9f09b258` | ⚠️ Unaudited |
| NavRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe2d60463de3a0221276d737b87c605e0bb5451e9` | ⚠️ Unaudited |
| NavUnStEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c82f6829797a4174a082ce9fee0b9bddc1e5e39` | ⚠️ Unaudited |
| NCStableCoinInterestRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x645e758796408efdd65bbbd877e8ebceeb231f4c` | ⚠️ Unaudited |
| NCStandardInterestRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18b5b6696e6569f437f48b111734d72b225d14a7` | ⚠️ Unaudited |
| NEC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc80c051057b774cd75067dc48f8987c4eb97a5e` | ⚠️ Unaudited |
| NectarController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fae7beed65b3d98ad8f1d5276387b20c6b851b7` | ⚠️ Unaudited |
| NetworkRestakeResetHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x274bbdb8db5cca01e8364e781f8c338f79cb2fc8` | ⚠️ Unaudited |
| NFTDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x009c9f7e2709ea488e53c2ab1bf9080547629655` | ⚠️ Unaudited |
| NodeELRewardVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97c92752dd8a8947ce453d3e35d2cad5857367af` | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xcc00f934a7541868b9a09f98d7928f727b9e4d75` | ⚠️ Unaudited |
| NonUnderlyingTokenTransferStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8bddb5e42b419d949bcaba2a1538c9c37867f4f8` | ⚠️ Unaudited |
| NoOp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0972e6062eac0fe8686d82ea010504066dadb887` | ⚠️ Unaudited |
| NttManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x075108f275ed81c9cfc01065e6e50ceea81d6363` | ⚠️ Unaudited |
| OCRConfigurationStoreEVMSimple | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xffe6b35ef0a2178b80138cfae82c912195fe22c6` | ⚠️ Unaudited |
| OETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x10b342e0205fc20a0934d1a0f25e270520439989` | ⚠️ Unaudited |
| OETHBase | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1c62a3c2620f2fb7ba5d50c9da2dec214cb82be9` | ⚠️ Unaudited |
| OETHBaseDripperProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x02f2c609950e90934ce99e58b4d7326ad0d7f8d6` | ⚠️ Unaudited |
| OETHBaseHarvester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa50fd560af7433d00d231b397512f5df375ffad8` | ⚠️ Unaudited |
| OETHBaseHarvesterProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x0cbeacf86232fc04050cd679d860516f7254c22e` | ⚠️ Unaudited |
| OETHBaseOracleRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbc80da22601eae8720ed8ab117eb88c92b97c75b` | ⚠️ Unaudited |
| OETHBaseVaultAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd50f7d13632ccadcf24fb74676981099fe70d1a7` | ⚠️ Unaudited |
| OETHBaseVaultCore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4a759f78b1a1995b57c9d3b40eb1cdc2b66caaab` | ⚠️ Unaudited |
| OETHBaseVaultProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x98a0cbef61bd2d21435f433be4cd42b56b38cc93` | ⚠️ Unaudited |
| OETHBaseZapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3b56c09543d3068f8488ed34e6f383c3854d2bc1` | ⚠️ Unaudited |
| OETHbHydrexAMOProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe6bebe3072ff42a7c2a4a5a9864b30bc5608d9c3` | ⚠️ Unaudited |
| OETHbHydrexAMOStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc5d36960ffe43687ab1cb4f905b97f0a064f38e0` | ⚠️ Unaudited |
| OETHDripper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0030c7dc6cb7f449e9566f273342c3370ee6b16a` | ⚠️ Unaudited |
| OETHHarvester | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0d017afa83eace9f10a8ec5b6e13941664a6785c` | ⚠️ Unaudited |
| OETHOracleRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ccd26e82f7305b12742fbb36708b42f82b61dba` | ⚠️ Unaudited |
| OETHVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x39254033945aa2e4809cc2977e7087bee48bd7ab` | ⚠️ Unaudited |
| OETHVaultAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60c91b985ac7117765b859d718576b2ed8940d74` | ⚠️ Unaudited |
| OETHVaultCore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1091588cc431275f99dc5df311fd8e1ab81c89f3` | ⚠️ Unaudited |
| OETHVaultValueChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9d98cf85b65fa1acef5e9aaa2300753adf7bcf6a` | ⚠️ Unaudited |
| OETHZapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c135f50c7317a93cc95bb208a494e5ade5b66b0` | ⚠️ Unaudited |
| OgvStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe61110663334794aba03c349c621a075dc590a42` | ⚠️ Unaudited |
| OnDemandSPV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1531b6e3d51bf80f634957df81a990b92da4b154` | ⚠️ Unaudited |
| OperatorDelegator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07b86abfeabc0631ce3946d8f917ba0c794a6eb5` | ⚠️ Unaudited |
| OperatorDelegatorLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f1cf88b1f9edb4cbd8eaf0364970cf8aab03f56` | ⚠️ Unaudited |
| OperatorFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53ae226d3384d1d2cfbacdcc069e9860e2287606` | ⚠️ Unaudited |
| OperatorRewardsCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ccabba6100be33ded45bcec21df92dba9dfe250` | ⚠️ Unaudited |
| OPSuccinctL2OutputOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0c3702bf1052acfeca77804cdb46da705e3ebe99` | ⚠️ Unaudited |
| OptimismBridgeExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0e37599436974a25ddeedf795c848d30af46eacf` | ⚠️ Unaudited |
| OptimismBridgeReceiver | unknown | project_anchor | own_supporting | 0 | base | unit-382343 | `0x18281dfc4d00905da1aaa6731414eaba843c468a` | ⚠️ Unaudited |
| OptimismMintableERC20 | unknown | project_anchor | own_supporting | 0 | mantle | unit-382217 | `0x52b7d8851d6ccbc6342ba0855be65f7b82a3f17f` | ⚠️ Unaudited |
| Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0fc84ab084a08971e6f52a9da41bfae82b546ebe` | ⚠️ Unaudited |
| OracleQuorumManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54c23e0d89da943165c969d1abdb65f0d64174b4` | ⚠️ Unaudited |
| OracleRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06c7a36bfe715479c7f583785b7e9303dfcc89ff` | ⚠️ Unaudited |
| Oracles | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0c1670364d4b5c4e9dc8062cdd45068d9c678d6` | ⚠️ Unaudited |
| OrderBook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x09f77e8a13de9a35a7231028187e9fd5db8a2acb` | ⚠️ Unaudited |
| OrderBookReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa27c20a7cf0e1c68c0460706bb674f98f362bc21` | ⚠️ Unaudited |
| OrderExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7257ac5d0a0aac04aa7ba2ac0a6eb742e332c3fb` | ⚠️ Unaudited |
| OssifiableProxy | unknown | project_anchor | own_supporting | 1 | optimism | unit-382409 | `0x1f32b1c2345538c0c6f582fcb022739c4a194ebb` | ⚠️ Unaudited |
| OssifiableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x07d4692291b9e30e326fd31706f686f83f331b82` | ⚠️ Unaudited |
| OsToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x475e7d2bd7428deb68deaa933dbf0d5850b96702` | ⚠️ Unaudited |
| OsTokenConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x287d1e2a8de183a8bf8f2b09fa1340fbd766eb59` | ⚠️ Unaudited |
| OsTokenFlashLoans | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xebe12d858e55ddc5fc5a8153dc3e117824fbf5d2` | ⚠️ Unaudited |
| OsTokenVaultController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a261e60fb14586b474c208b1b7ac6d0f5000306` | ⚠️ Unaudited |
| OUSDVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa96fd141e92de60394103c7f9e045662913820f9` | ⚠️ Unaudited |
| OutsourceDepositLogging | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x478409d856cd759cbfaa6639d88b7cdcb8ec29ed` | ⚠️ Unaudited |
| OwnedResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x9453dc2dddf2a19951e708b4ff8d5f5e38f4c06f` | ⚠️ Unaudited |
| PatchedManagedRewardsFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3ab1a16622bc5bdd1619d427fb1a6f73c71be23d` | ⚠️ Unaudited |
| Pauser | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x29ab878aed032e2e2c86ff4a9a9b05e3276cf1f8` | ⚠️ Unaudited |
| PauserRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x075a48633dc6845f92339741e9c96b88f1b2a86f` | ⚠️ Unaudited |
| PaymentSplitter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9e3659858d530914cb81d0833c30e47931a5fce` | ⚠️ Unaudited |
| Penalty | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x84645f1b80475992df2c65c28be6688d15dc6ed6` | ⚠️ Unaudited |
| PepeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x8baf44b350ef672232a6673e1e128c7875640477` | ⚠️ Unaudited |
| PerlinNoise | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0b3a7479694d678fb34ef737811cb31b9dd9990e` | ⚠️ Unaudited |
| PermissionedNodeRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x106c7053fbb563bcb06b723072bf0628db69b27b` | ⚠️ Unaudited |
| PermissionedRebaseModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf633980a61e9f90a41d030676059dc201d9d4a37` | ⚠️ Unaudited |
| PermissionlessNodeRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4f4bfa0861f62309934a5551e0b2541ee82fdcf1` | ⚠️ Unaudited |
| PermissionlessPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30c2501b3b2031fba3000daa6f8ed0a42fbbb3f0` | ⚠️ Unaudited |
| PhasedEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x964d45256c73df0239a26216cec155d7e12ec157` | ⚠️ Unaudited |
| PlainTransferEscrowBeneficiary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fa3ef45137c3aff337e42f98023c1d7dd3666c0` | ⚠️ Unaudited |
| PnlAccounting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd317b85f7bd56361e2e3216610803e433acaea7` | ⚠️ Unaudited |
| PnlAccountingHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57c23fe7a1a8d86f1128196c7c22f8711e81437e` | ⚠️ Unaudited |
| PolygonBridgeReceiver | unknown | project_anchor | own_supporting | 0 | polygon | unit-382131 | `0x18281dfc4d00905da1aaa6731414eaba843c468a` | ⚠️ Unaudited |
| PoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x420dd381b31aef6683db6b902084cb0ffece40da` | ⚠️ Unaudited |
| PoolSelector | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x62e0b431990ea128fe685e764fb04e7d604603b0` | ⚠️ Unaudited |
| PoolUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4f53a6c259a6951406534b214564b3b529719e4` | ⚠️ Unaudited |
| Portal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b459cae3f5f91469b910a8811723606b2ddeafd` | ⚠️ Unaudited |
| PositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6a02e6381297826cca630fc5e2d53bdbbbaf93b2` | ⚠️ Unaudited |
| PositionRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x05cb7c42890e0522264fe5ec6d84e8d7218cb78f` | ⚠️ Unaudited |
| PositionRouterReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2a74c7498d42ecee75032ed41416c5fa39802f74` | ⚠️ Unaudited |
| PreOrder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b7a14fc3a93c2d43ffd2d2089d4e84c0f97ff44` | ⚠️ Unaudited |
| PriceConsumer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f7d995fc12752fe5df42134252e8b7a8922f242` | ⚠️ Unaudited |
| PriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8023518b2192fb5384dadc596765b3dd1cdfe471` | ⚠️ Unaudited |
| PriceFeedTimelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7b1ffddeec3c4797079c7ed91057e399e9d43a8b` | ⚠️ Unaudited |
| PriceFeedWith4626Support | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13933885c9a392ce73f396707ec61f30a8b05e37` | ⚠️ Unaudited |
| PriceOracleProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1653c07fa6ce103b43925dddb5e31ca568e53ba1` | ⚠️ Unaudited |
| PriceProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28a6e7ebb6aca8f64145952a9565245c3dc1f32f` | ⚠️ Unaudited |
| PriceRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x13015e4e6f839e1aa1016df521ea458eca20438c` | ⚠️ Unaudited |
| ProtocolGovernor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x94c012a23a8a65a6f40608da30534a46a433f410` | ⚠️ Unaudited |
| ProtocolPoolController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03a993369b5b6290d412b63d29f3bc2dc13f5e61` | ⚠️ Unaudited |
| ProtocolRevenueManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf8749c3dc1fc0592f21c2593204c45d3be0d322` | ⚠️ Unaudited |
| Proxy | unknown | project_anchor | own_supporting | 1 | base | unit-382420 | `0x2ae3f1ec7f1f5012cfeab0185bfc7aa3cf0dec22` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x02612d20cc087670a959bb12ca3c5fd56c8a3db3` | ⚠️ Unaudited |
| ProxyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x81e5c1483c6869e95a4f5b00b41181561278179f` | ⚠️ Unaudited |
| ProxyMock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72233ff361ebd3e157e3fa5224365137b6dee7db` | ⚠️ Unaudited |
| PublicResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x86c5aed9f27837074612288610fb98ccc1733126` | ⚠️ Unaudited |
| Puff | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x26a6b0dcdcfb981362afa56d581e4a7dba3be140` | ⚠️ Unaudited |
| PUMP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ed540d53b4b49931544a6d8926f3157784b079c` | ⚠️ Unaudited |
| PumpLockMint | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77d22a277b1b29d9b07c207aa1cdfcc38404eaad` | ⚠️ Unaudited |
| PumpToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2cd2644edab51cb2122f37e03e5f997661d49cfe` | ⚠️ Unaudited |
| PumpTokenOFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xadc9c900b05f39f48bb6f402a1bae60929f4f9a8` | ⚠️ Unaudited |
| PumpTokenOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb1b273f03c084a906ee64f27beeed7293ef3a52` | ⚠️ Unaudited |
| Quick | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x831753dd7087cac61ab5644b308642cc1c33dc13` | ⚠️ Unaudited |
| QuickConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x38e8d77f4b651fb989c8b5ad274346dd5b5239ea` | ⚠️ Unaudited |
| QuoterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x1e662e74074465dca2d3c4a1c6e78a1a8f6c0b10` | ⚠️ Unaudited |
| RandomBeacon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5499f54b4a1cb4816eefcf78962040461be3d80b` | ⚠️ Unaudited |
| RandomBeaconChaosnet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf23fc18ece6afe7fb57ba59979e8600bb4b0294a` | ⚠️ Unaudited |
| RandomBeaconGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0a3088ed9fff4357b79cd3896bd38876fcb1c63` | ⚠️ Unaudited |
| RateBasedCorrelatedAssetsPriceOracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381916 | `0x00c03abc59b978ecda0a118ca8b0061ea6121101` | ⚠️ Unaudited |
| RateBasedScalingPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ad4ceba9f8135a557bbe317db62aa125c330f26` | ⚠️ Unaudited |
| RateProviderRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0b6c01e9a8d21ed05726f9020b577a614bedce7` | ⚠️ Unaudited |
| RBACTimelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1e2faed390be7945acbf22fc25173c4bdda3ea45` | ⚠️ Unaudited |
| Reader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1136b815765877f4fe626e4e82f462aed5bac9fa` | ⚠️ Unaudited |
| Redemption | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d807e9ce1ef73048fee9a4214e75e894ea25914` | ⚠️ Unaudited |
| RedemptionController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf2ee409bee416a53b5c040d8e6dad4a7ceb2510` | ⚠️ Unaudited |
| RedemptionScript | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0972e6062eac0fe8686d82ea010504066dadb887` | ⚠️ Unaudited |
| ReferralReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8aa382760bcdce8644c33e6c2d52f6304a76f5c8` | ⚠️ Unaudited |
| ReferralStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2249d006a8ccdf4c99aa6c8b9502a2aecc923392` | ⚠️ Unaudited |
| RegistryModuleOwnerCustom | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x818792c958ac33c01c58d5026cec91a86e9071d7` | ⚠️ Unaudited |
| RegistryPermission | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab00b934de01c1b4931047125c2ba5b3d6186b85` | ⚠️ Unaudited |
| RegulationsManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fcb83123ffbc72373134d09d1c8ab52812cd0b4` | ⚠️ Unaudited |
| ReimbursementPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x369fce62b33512b2a883cf217635ee28dd17f9cc` | ⚠️ Unaudited |
| RestakeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18ac4d26acd4c5c4fe98c9098d2e5e1e501a042a` | ⚠️ Unaudited |
| RETHCorrelatedAssetsPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x584a6bb85fc446642217be0f6491c9d652f33b72` | ⚠️ Unaudited |
| ReturnsReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1980b341cb31cb436ffe0620a01a4cb6d4d09a27` | ⚠️ Unaudited |
| ReverseMultiplicativePriceFeed | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381917 | `0x04eab657b065238aa67c3879f4d71bfdd09c2796` | ⚠️ Unaudited |
| ReverseRegistrar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x08d3ff6e65f680844fd2465393ff6f0d742b67d5` | ⚠️ Unaudited |
| RevokableVester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b31b28103754a272d7905240301ec7b2a1f61e5` | ⚠️ Unaudited |
| RewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1de098faf30bd74f22753c28db17a2560d4f5554` | ⚠️ Unaudited |
| RewardEthToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01d34aee72325f1d4a748f13c2169404523ecee0` | ⚠️ Unaudited |
| RewardManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a2a2dc0aab0defc092ed8636330eaebd975e7ec` | ⚠️ Unaudited |
| RewardReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8bfb8e82ee4569aee78d03235ff465bd436d40e0` | ⚠️ Unaudited |
| RewardRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc73d553473dc65ce56db96c58e6a091c20980fba` | ⚠️ Unaudited |
| RewardRouterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa906f338cb21815cbc4bc87ace9e68c87ef8d8f1` | ⚠️ Unaudited |
| RewardsDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x227f65131a261548b057215bb1d5ab2997964c7d` | ⚠️ Unaudited |
| RewardSplitter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x439b60d3c886e711dad30cf23a2bbd5388febcd9` | ⚠️ Unaudited |
| RewardSplitterFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x256af27ce81282a0491a5361172c1db08f6cc5f8` | ⚠️ Unaudited |
| RewardTracker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0a22fec325b89ac294fceafefd7fbc9115be964b` | ⚠️ Unaudited |
| RiskManagerV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2355d701d8d85ed161ab66a0a7e759c463f62b30` | ⚠️ Unaudited |
| RMN | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2d45c49506ba94ea46dff99f12159fe8be04a7fc` | ⚠️ Unaudited |
| RocketTokenRETH | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381991 | `0xae78736cd615f374d3085123a210448e74fc6393` | ⚠️ Unaudited |
| RoleManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09aa40b6e0e768a04d650302e1879dced6b7666e` | ⚠️ Unaudited |
| Root | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xfbf795ead640e261868eb200ed2850eb9c151e7d` | ⚠️ Unaudited |
| Router | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x141fa059441e0ca23ce184b6a78bafd2a517dde8` | ⚠️ Unaudited |
| RSETH_OFT | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382166 | `0x4186bfc76e2e237523cbc30fd220fe055156b41f` | ⚠️ Unaudited |
| RsETHCorrelatedAssetsPriceOracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381921 | `0x0af91e13383fd771f21b40b79421b2d59e8214c2` | ⚠️ Unaudited |
| RSETHPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x352e20158c9916579b337d1332f462b26a8a699c` | ⚠️ Unaudited |
| RSETHPoolNoWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x9a7fa6fe70f2a23dc3980df69f922b6961fbbe81` | ⚠️ Unaudited |
| RSETHRateReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3222d3de5a9a3ab884751828903044cc4adc627e` | ⚠️ Unaudited |
| RsETHScalingPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c30b5a5a04656565686f800481580ac4e7ed178` | ⚠️ Unaudited |
| RsETHTokenWrapper | unknown | project_anchor | own_supporting | 1 | optimism | unit-382407 | `0x87eee96d50fb761ad85b1c982d28a042169d61b1` | ⚠️ Unaudited |
| RswETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4796d939b22027c2876d5ce9fde52da9ec4e2362` | ⚠️ Unaudited |
| SafeProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-382401 | `0xd9496f2a3fd2a97d8a4531d92742f3c8f53183cb` | ⚠️ Unaudited |
| SafeProxy | unknown | project_anchor | own_supporting | 0 | base | unit-382383 | `0xb3e79c7cac540ca833015e63d96d3032ba0c4129` | ⚠️ Unaudited |
| ScalingPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x00cbf714d5fa2083ea7c816c80c954442d3ebd4b` | ⚠️ Unaudited |
| ScalingPriceFeedWithCustomDescription | unknown | project_anchor | own_supporting | 0 | mantle | unit-382213 | `0x0090a563c4832e4e519f5f054483519b1a83c8c3` | ⚠️ Unaudited |
| ScrollBridgeReceiver | unknown | project_anchor | own_supporting | 0 | scroll | unit-382291 | `0xc6bf5a64896d679cf89843dbec6c0f5d3c9b610d` | ⚠️ Unaudited |
| SDCollateral | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x7af4730cc8ebad1a050dcad5c03c33d2793ee91f` | ⚠️ Unaudited |
| SetFiveMillionProposalThresholdAction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2f8577f68d8306aeb48f9015ac61744bbadfd713` | ⚠️ Unaudited |
| SEthFiStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76c57e359c0eda0aac54d97832fb1b4451805ad8` | ⚠️ Unaudited |
| SharedMevEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07a98f01f5a91043f1396f101a21e91e90488a2f` | ⚠️ Unaudited |
| ShortsTracker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf58eec83ba28ddd79390b9e90c4d3ebff1d434da` | ⚠️ Unaudited |
| ShortsTrackerTimelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x79b6ee65fc1466b5fd95e20650df740c085c6c2a` | ⚠️ Unaudited |
| SignatureChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xd254915fc567865730f0516f8933bc0b96ec3527` | ⚠️ Unaudited |
| SignerBondsManualSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43faf6fe84e01dd186cfeb9ea2f0854a1ef7442f` | ⚠️ Unaudited |
| SimpleReadAccessController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a9d21b46810f69a02ac2d61f4bf1963de82700d` | ⚠️ Unaudited |
| SimpleStakingERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38d43a6cb8da0e855a42fb6b0733a0498531d774` | ⚠️ Unaudited |
| SimpleWriteAccessController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0f86056d00bcf39baef81bbed1786e6f32c1a5fe` | ⚠️ Unaudited |
| Sky | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381952 | `0x56072c95faa701256059aa122697b133aded9279` | ⚠️ Unaudited |
| SocializingPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1082a48779188c53507d28b1d2a4b17ad839be6d` | ⚠️ Unaudited |
| SortitionPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e4cba3779d56386ed43631b4dcd6d8eacecbcf6` | ⚠️ Unaudited |
| StaderConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x060a6a57f8ce8fb99cbc8d4fd6b73c36eebd2c30` | ⚠️ Unaudited |
| StaderInsuranceFund | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2540939c846b8096534b0dcc6ebb6ebdf3ae1f3d` | ⚠️ Unaudited |
| StaderStakePoolsManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9dceaeb1c035c1427e64e6c6fec61f816e0d0ff5` | ⚠️ Unaudited |
| StakeAndBake | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9088d8a41744e9cca78d01e6185f2acb81be497a` | ⚠️ Unaudited |
| StakeAndBakeNativeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0bca0fb61480530e87dddbb3bb5f0539c97eae88` | ⚠️ Unaudited |
| StakedEthToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82fe8c78cae0013471179e76224ef89941baaa75` | ⚠️ Unaudited |
| StakedFrax | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381988 | `0xa663b02cf0a4b149d2ad41910cb81e23e1c41c32` | ⚠️ Unaudited |
| StakedGlp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x01af26b74409d10e15b102621edd29c326ba1c55` | ⚠️ Unaudited |
| StakedGlpMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe19ab1cca0a010521140cf5ada1cf8308c0b382c` | ⚠️ Unaudited |
| StakedLBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x072072317469ebb6c340a47e41561c9c3b782bd9` | ⚠️ Unaudited |
| StakedLBTCOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e28ef6d59fa87530fd058e0d5a94f657f1fdc1c` | ⚠️ Unaudited |
| StakedTokenV1 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-382399 | `0xbe9895146f7af43049ca1c1ae358b0541ea49704` | ⚠️ Unaudited |
| StakedUSDeOFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x211cc4dd073734da055fbf44a2b4667d5e5fe5d2` | ⚠️ Unaudited |
| StakedUSDeV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d39a5de30e57443bff2a8307a4256c8797a3497` | ⚠️ Unaudited |
| StakeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe547cadbe081749e5b3dc53cb792dfaea2d02fd2` | ⚠️ Unaudited |
| StakerProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb68b125e5b0f2600841b2bba484e76a495df17a0` | ⚠️ Unaudited |
| StakerRewardsBeneficiary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb59f486135145ad247b82f9cdf52be4a58a0b81` | ⚠️ Unaudited |
| Staking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01a360392c74b5b8bf4973f438ff3983507a06a2` | ⚠️ Unaudited |
| StakingManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ad639fc9c73f547bfff8b28d091d86d2472fa1e` | ⚠️ Unaudited |
| StakingPoolRewardsEscrowBeneficiary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x118b7642b91bcf02c565a3c417534e29e4069bd8` | ⚠️ Unaudited |
| StakingPortBacker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x236aa50979d5f3de3bd1eeb40e81137f22ab794b` | ⚠️ Unaudited |
| StakingRewardsFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x02a2d80ce5c021a40aec9062a6273bbc33537e1c` | ⚠️ Unaudited |
| StaticMetadataService | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x18703d0117121f6a7476221e2afc57faf9866e4c` | ⚠️ Unaudited |
| STETHShim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86a72256932d32afbcd841fce2e9e5534c6699d3` | ⚠️ Unaudited |
| Strategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ae0e44de96885702bd99a6914751c952d284938` | ⚠️ Unaudited |
| Strategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x60d2d94acb969ca54e781007ee89f04c1a2e5943` | ⚠️ Unaudited |
| StrategyExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89f57d3617f6a9ff877fea34dd0688b2840ef50e` | ⚠️ Unaudited |
| StrategyStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97c03f52244e60bb18511cbf03f890d5886f1f47` | ⚠️ Unaudited |
| Streamer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf86b6b0cc4d7178e118db3179a2d2191959ea752` | ⚠️ Unaudited |
| StreamerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe041026b9176e98a365a7f9343d8e6224cb70a8a` | ⚠️ Unaudited |
| SupporterVester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0302f75047aa0935052275e77d15c40bee7b63b2` | ⚠️ Unaudited |
| SUsds | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e7991e5c547ce825bdeb665ee14a3274f9f61e0` | ⚠️ Unaudited |
| Swapper1InchV5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd0fcf8a31bc78ec07752e9ccd3960e936d18366` | ⚠️ Unaudited |
| Swapper1InchV6 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x747cac75776b3a0bba3de3e61ec12a6a7f52232e` | ⚠️ Unaudited |
| SwapRouter02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xa328e968906f5c5922accc197d6dcfe2c2776eb4` | ⚠️ Unaudited |
| swETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d3b4bb82bdf0a3593bcf098b5c5b6f7570211a7` | ⚠️ Unaudited |
| SwETHProxyOFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c6392a69dc11f254457716c682f70e4b2ed7b05` | ⚠️ Unaudited |
| SwETHSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa68ca9c69a4ff22203ce189ce4448d7401875e8` | ⚠️ Unaudited |
| swEXIT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02454d649054276e3ed8b9f17f8d5f49ac6c8f78` | ⚠️ Unaudited |
| SWNFTv3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9f6d9aafca9ea1d1673099c6f085aab829caf9b` | ⚠️ Unaudited |
| SystemConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ca047689261e35c9e507b1bb0b7443c2a436310` | ⚠️ Unaudited |
| T | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcdf7028ceab81fa0c6971208e83fa7872994bee5` | ⚠️ Unaudited |
| TapFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x521c420c2a2b461034becbb41d4888b68951f14f` | ⚠️ Unaudited |
| TAssetMultichainToken | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-382417 | `0xd09acb80c1e8f2291862c4978a008791c9167003` | ⚠️ Unaudited |
| TBTC | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381924 | `0x18084fba666a33d37592fa2633fd49a74dd93a88` | ⚠️ Unaudited |
| TBTCConstants | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63a152ea1cd78ac3c7c1fcf1322dc6de1126750d` | ⚠️ Unaudited |
| TBTCDepositToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10b66bd1e3b5a936b7f8dbc5976004311037cdf0` | ⚠️ Unaudited |
| TBTCSystem | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe20a5c79b39bc8c363f0f49adcfa82c2a01ab64a` | ⚠️ Unaudited |
| TBTCVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52818e501612d3c5b37b5f9b83b024342c277fd4` | ⚠️ Unaudited |
| TellerWithMultiAssetSupportDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51d9c2e5f23cc9234fe6a8f9b56fec5f1fbf1a5f` | ⚠️ Unaudited |
| TermsOfServiceAllowList | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x767b63ae98fcf99ad04e819ce93ec5cd0299bbf1` | ⚠️ Unaudited |
| TetherToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e98db51010dd1ade14dd3fb164e218805fdba1b` | ⚠️ Unaudited |
| TetherTokenEURTV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde706e90f07ffa15b1783379edab3c21fbbd5c7d` | ⚠️ Unaudited |
| TEthExchangeRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4bd1ec6cdad93b3c6219ceda018ecaf8d655fa8d` | ⚠️ Unaudited |
| TEthRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x077c2122e96c7457d11fb9523f5745acb49fdc1e` | ⚠️ Unaudited |
| TickLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xb86284160348d0727e7fc6b131812082243b4604` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x09214c0a3594fbcad59a58099b0a63e2b29b15b8` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x1237d9538b400233d876bf7cbefa3e5b1d9e62c0` | ⚠️ Unaudited |
| TmpStreamHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x139f6317863571c67acda646e07d0399d3130d8d` | ⚠️ Unaudited |
| TNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c377a56c4a5eee3fa4c7a8de0440168e4f11708` | ⚠️ Unaudited |
| TokenAdminRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x39ae1032cf4b334a1ed41cdd0833bdd7c7e7751e` | ⚠️ Unaudited |
| TokenBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x0ffcbe98041b77bd87c38e2d0a6b473e7703444e` | ⚠️ Unaudited |
| TokenManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1ef8156b46e6f5a1973bff4975177fd13275ad59` | ⚠️ Unaudited |
| TokenRateOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x537a7f9d551da3c2800cb11ca17f2946d21029af` | ⚠️ Unaudited |
| TokenStakingEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda534b567099ca481384133bc121d5843f681365` | ⚠️ Unaudited |
| TokenVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05e36403584e1f3f004dc516b5375a1e884c9a27` | ⚠️ Unaudited |
| TopFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0eda20f7499aae7bdadc4e52fd72e49663733ed4` | ⚠️ Unaudited |
| Topupper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11d0cff93cc1def7b621de281296ded0e3694285` | ⚠️ Unaudited |
| TopUps | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41c9b5639e3f2f6c61e9b78b2c6ff3746e79d91a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0295e0ce709723fb25a28b8f67c54a488ba5ae46` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x03abeec03bf39ac5a5c8886cf3496326d8164e1e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0742bd018d1e9c8c918afa605e53e71cb0a65567` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x08921f17a32110f8df44a3d5007f2acd09cfae6d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x09134c643a6b95d342bdaf081fa473338f066572` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0d4fefd3c9ba9214c2412c87bc140e1766ab584b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0e628a1c34c92f0aa85af998814ce4f03caa5913` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x1736011d3e075351b319dbc1da28dac68ea830a6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x1766be66fbb0a1883d41b4cfb0a533c5249d3b82` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x177879ad09f0bdf71fa91573f825ae29d5aa9de0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x1e70dc4b6f41c16b23cf0ee674b4d5471c63f2e7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x1fcca65fb6ae3b2758b9b2b394cb227eae404e1e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x22eec85ba6a5cd97ead4728ea1c69e1d9c6fa778` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x27e120c518a339c3d8b665e56c4503df785985c2` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x289d600447a74b952ad16f0bd53b8eaaac2d2d71` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x2b5b36597be376221a098361ceedaaf426c3fd01` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x2bf60d953c8afc18415840e46272806eb14ac18a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x33757a5e3afb438733679275c03ee2db43f43ee7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x387dbc0fb00b26fb085aa658527d5be98302c84c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x38fdf7b489316e03ed8754ad339cb5c4483fdcf9` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x3a0613a7ee2a0621ee11f8a609d17606612d26ed` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x3b099bc0e9854799688b0542222c938e0a6b7f24` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x46ddc39e780088b1b146aba8cbbe15dc321a1a1d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x582dc2ee559077ae3a2bb08ef0eefe064c747482` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x58749c46ffe97e4d79508a2c781c440f4756f064` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x5a12796f7e7ebbbc8a402667d266d2e65a814042` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x6f149f8bf1cb0245e70171c9972059c22294aa35` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x708de6fa67da1ce1d53d14fc3c29fba104b0a1a9` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x83ee10a7aa71ddc721b871ea687f13542a360110` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x85e1157b1f3d1384a6a67679b761517916c4b5ee` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-382405 | `0xa1290d69c65a6fe4df752f95823fae25cb99e5a7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xb08fbe0e46c284c002d7718b992c7022aa1f061e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xb8df0a949ac45ff8f401553a1dcb742feb38e6d3` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xc94cffd5249df4008a043ee61e13f19af16d0936` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xd789870bea40d056a4d26055d0befcc8755da146` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xdf217efd8f3ecb5e837aedf203c28c1f06854017` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | unichain | n/a | `0x24c8964338deb5204b096039147b8e8c3aea42cc` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | unichain | unit-382410 | `0x85c4f855bc0609d2584405819edaea3adabfe97d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | base | unit-382422 | `0x04c0599ae5a44757c0af6f9ec3b93da8976c150a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | base | n/a | `0x09959798b95d00a3183d20fac298e4594e599eab` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | base | n/a | `0xc38e046dfdadf15f7f56853674242888301208a5` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x096760f208390250649e3e8763348e783aef5562` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x09e9222e96e7b4ae2a407b98d48e330053351eee` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x10417734001162ea139e8b044dfe28dbb8b28ad0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x1293a54e160d1cd7075487898d65266081a15458` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x15533b77981cda0f85c4f9a485237df4285d6844` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x5288c571fd7ad117bea99bf60fe0846c4e84f933` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x6c411ad3e74de3e7bd422b94a27770f5b86c623b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-382416 | `0x82af49447d8a07e3bd95bd0d56f35241523fbab1` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-382418 | `0x912ce59144191c1204e64559fe8253a0e49e6548` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-382414 | `0xfd086bc7cd5c481dcc9c85ebe478a1c0b69fcbb9` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | linea | n/a | `0x05f5198b1d4a37e07ac510fc7a207e1499e8aef7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | linea | unit-382419 | `0x0ece76334fb560f2b1a49a60e38cf726b02203f0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | linea | n/a | `0x22c498b5c42c787c790f8f1fcef50b33a830f5dc` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | linea | n/a | `0x823106e745a62d0c2fc4d27644c62ade946d9cca` | ⚠️ Unaudited |
| TreasuryVester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d30b1ab88d487b0f3061f40de76845bec3f1e94` | ⚠️ Unaudited |
| TreehouseAccounting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7ce3cb5bc5c00cd2f9b39d9b0580f5355535709` | ⚠️ Unaudited |
| TreehouseFastlane | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x829525417cd78cba0f99a8736426fc299506c0d6` | ⚠️ Unaudited |
| TreehouseRedemption | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0618dbdb3be798346e6d9c08c3c84658f94ad09f` | ⚠️ Unaudited |
| TreehouseRedemptionV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd63a29faff07130d3af89bb4f40778938aabb85` | ⚠️ Unaudited |
| TreehouseRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ae023d31d3590b7fd0919251a8c68dfc0c4d398` | ⚠️ Unaudited |
| Trig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1d75c4dda3d28b4f2ab634c439e495cf211a216f` | ⚠️ Unaudited |
| TubFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3b67099121e1fbde6276b2802048d1a7dd1b987` | ⚠️ Unaudited |
| UChildDAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x490e379c9cff64944be82b849f8fd5972c7999a7` | ⚠️ Unaudited |
| UChildERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x00032e33ac57c73f9d4e3e85a97488214cb5f25b` | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x009aedc40323b16a0cbc71920d05c15192643974` | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | project_anchor | own_supporting | 1 | polygon | unit-382413 | `0x2791bca1f2de4661ed88a30c99a7a9449aa84174` | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | project_anchor | own_supporting | 1 | polygon | unit-382412 | `0xc2132d05d31c914a87c6611c10748aeb04b58e8f` | ⚠️ Unaudited |
| UnderwriterToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x007854fdcc9c6f748b435e63745599fb1a0df843` | ⚠️ Unaudited |
| Uni | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381929 | `0x1f9840a85d5af5bf1d1762f925bdaddc4201f984` | ⚠️ Unaudited |
| UnichainPriceFeedEzethFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x3587a73aa02519335a8a6053a97657bece0bc2cc` | ⚠️ Unaudited |
| UnichainPriceFeedWeethFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xa8a94da411425634e3ed6c331a32ab4fd774aa43` | ⚠️ Unaudited |
| UnichainPriceFeedWstethstethWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x4bad96dd1c7d541270a0c92e1d4e5f12eeea7a57` | ⚠️ Unaudited |
| UniswapAnchoredView | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x046728da7cb8272284238bd3e47909823d63a58d` | ⚠️ Unaudited |
| UniV4UniversalRouterStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09af9b2261463c38115acd6d345da345851700fb` | ⚠️ Unaudited |
| UniversalResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x3aa974fb3f8c1e02796048bdcded79e9d53a6965` | ⚠️ Unaudited |
| UniversalRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x07507a719e7d040ebcbcf54715d7ce7ce5241c91` | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x18efef04f525a9bf0c6440b12ebb71bfa2ab5982` | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xded8823234e28f18a824abe4f64fa7863b626341` | ⚠️ Unaudited |
| UsccDepositStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c4564bd54da474314f715b19d7d8c7671760395` | ⚠️ Unaudited |
| USDCTokenPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf46beff26e1c4552fb4ffb00314bdf175fbe97e4` | ⚠️ Unaudited |
| USDe | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381946 | `0x4c9edd5852cd905f086c759e8383e09bff1e68b3` | ⚠️ Unaudited |
| USDeOFT | unknown | project_anchor | own_supporting | 0 | mantle | unit-382219 | `0x5d3a1ff2b6bab83b63cd9ad0787074081a52ef34` | ⚠️ Unaudited |
| USDG | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x40757a2883f82392c49ce86cb0d92d0653db2d51` | ⚠️ Unaudited |
| Usds | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x191cd41681a3fe15aa15a0bec415821ce24cad5e` | ⚠️ Unaudited |
| UsdsJoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c0f895007ca717aa01c8693e59df1e8c3777feb` | ⚠️ Unaudited |
| USDT | unknown | project_anchor | own_supporting | 0 | optimism | unit-382050 | `0x94b008aa00579c1307b0ef2c499ad98a8ce58e58` | ⚠️ Unaudited |
| UserWithdrawalManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f9479226734ef4fd25b36470584f8e1ab620e0c` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0ef8fa4760db8f5cd4d993f3e3416f30f942d705` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1b7a4c3797236a1c37f8741c0be35c2c72736fff` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x200057a0a4a97149b0924c5dbba868f283d903a2` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2093bbb221f1d8c7c932c32ee28be6dee4a37a6a` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2ecd155405ca52a5ca0e552981ff44a8252fab81` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x46c4ab30743759ec142f7495b7e935e213cc29a8` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x57aaf0004c716388b21795431cd7d5f9d3bb6a41` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x857b4faa11b143f69f091d1c4ded5480a8d16f8b` | ⚠️ Unaudited |
| UUPSProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-382398 | `0xcd5fe23c85820f7b72d0926fc9b05b43e359b7ee` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd0ff8996db4bdb46870b7e833b7532f484fead1a` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd5edf7730abad812247f6f54d7bd31a52554e35e` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | `0x3a19866d5e0fae0ce19adda617f9d2b9fd5a3975` | ⚠️ Unaudited |
| V3Migrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xa8b49c4cbf805f3252ddbf4de465c34986707c34` | ⚠️ Unaudited |
| ValidatorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0238247e71ad0ab272203af13baea72e99ee7c3c` | ⚠️ Unaudited |
| ValidatorWithdrawalVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3073cc90ad39e0c30bb0d4c70f981fbd00f3458f` | ⚠️ Unaudited |
| VamToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1512d268a94ce119eacbf80139ad7910eb9cfbc8` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x489ee077994b6658eafa855c308275ead8097c4a` | ⚠️ Unaudited |
| VaultAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d8cc0262bb3802eafaf4e7dde7afd3383e8f872` | ⚠️ Unaudited |
| VaultAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ef0553feb80e6f133cae3092e38f0b23da6452b` | ⚠️ Unaudited |
| VaultCore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69d9a767e071cfba316ba06a914a08f1314b7a92` | ⚠️ Unaudited |
| VaultErrorController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe56d2e4c685e67c866c292b583be732068afd93a` | ⚠️ Unaudited |
| VaultPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1cf4579904eb2acda0e4081e39ec10d0c32b5de3` | ⚠️ Unaudited |
| VaultPull | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x313ca6136521d22a7ea763b3566ed0b53f5b3ab9` | ⚠️ Unaudited |
| VaultReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x060cbba8730eff54ee24e08d6a4973f376463cc0` | ⚠️ Unaudited |
| VaultRescuer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1af329d2c4ceaf45e1d8062c696b09ffaddb933a` | ⚠️ Unaudited |
| VaultSend | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc780112305ed959ceeeb0de692e2407e4145fc3a` | ⚠️ Unaudited |
| VaultsRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a0008a588772446f6e656133c2d5029cc4fc20e` | ⚠️ Unaudited |
| VaultValueChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25041ccb8352b9ba65883a94685aef07a5ad8739` | ⚠️ Unaudited |
| VeArtProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe9992487b2ee03b7a91241695a58e0ef3654643e` | ⚠️ Unaudited |
| VendingMachine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cca7e410ee41739792ea0a24e00349dd247680e` | ⚠️ Unaudited |
| VendingMachineV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce1f983c29f7a6c0c0dfa78c4d8fe7bdfe026d4b` | ⚠️ Unaudited |
| VendingMachineV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7570a2350183b4bdf7ca74fad3fc19048e6437e6` | ⚠️ Unaudited |
| Verifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa618f119504455762c9bbbce4ac9ee7fde457d05` | ⚠️ Unaudited |
| VerifierProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaae5ec245bb779883786b44ab3aaad5313ff6582` | ⚠️ Unaudited |
| Vester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x199070ddfd1cfb69173aa2f7e20906f26b363004` | ⚠️ Unaudited |
| Voter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x16613524e02ad97edfef371bc883f2f5d6c480a5` | ⚠️ Unaudited |
| VotingEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xebf418fe2512e7e6bd9b87a8f0f294acdc67e6b4` | ⚠️ Unaudited |
| VotingRewardsFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x45ca74858c579e717ee29a86042e0d53b252b504` | ⚠️ Unaudited |
| VoxFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x414b1da0bb6e948dc0559d14ebde9fa9572499bf` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3264834ada73a8b0b132ee52fd5a367cf60e86c6` | ⚠️ Unaudited |
| WalletCoordinator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10fb5943e2f4f67ee6a533dae49b6d4cc443ffe5` | ⚠️ Unaudited |
| WalletProposalValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30019d85a86abd3cda1167f4c052690c32fbdec2` | ⚠️ Unaudited |
| WalletRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08d7e8ce124921caafd7670502379ced0065c832` | ⚠️ Unaudited |
| WalletRegistryGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6aed6cc30d1b2770771052555d257da86ed47fe8` | ⚠️ Unaudited |
| Wallets | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc67913137429985416dbce28d9fa9ec960ba47bf` | ⚠️ Unaudited |
| WBTC | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381932 | `0x2260fac5e5542a773aa44fbcfedf7c193bc2c599` | ⚠️ Unaudited |
| WBTCPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x319f19ffb23fdfe322873af6480685f4db7f7d96` | ⚠️ Unaudited |
| WeETHExchangeRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30ed8ce7668658271da0ddb350070ffea75595e4` | ⚠️ Unaudited |
| WETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x353f8931ce1c52f643121be129985aab09c4bf52` | ⚠️ Unaudited |
| WhitePaperInterestRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c159cfd11677a4f2fe4fd0278dd37a95b986069` | ⚠️ Unaudited |
| WithdrawQueue | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02ac87c747f5b74d3d290adcf83bb2b694e2ba0b` | ⚠️ Unaudited |
| WithdrawRequestNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ed97c79ded8894036da095b2e2f79f8080a9cd4` | ⚠️ Unaudited |
| WMATIC | unknown | project_anchor | own_supporting | 0 | polygon | unit-382130 | `0x0d500b1d8e8ef31e21c99d1db9a6444d3adf1270` | ⚠️ Unaudited |
| WOETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x388782b21275f75255f3ee08e23bd3991d4eb830` | ⚠️ Unaudited |
| WOETHBase | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2e1826c5a9d7fa49b1b6f54f9b6e47281a583408` | ⚠️ Unaudited |
| WrappedEther | unknown | project_anchor | own_supporting | 0 | scroll | unit-382254 | `0x5300000000000000000000000000000000000004` | ⚠️ Unaudited |
| WrappedOusd | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdeabeb7dfda1deff8a90fde8a16d7a42d316e632` | ⚠️ Unaudited |
| WrappedRSETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe119d214a6efa7d3cf60e6e59481ede1b0064a6b` | ⚠️ Unaudited |
| WrapperLockEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x991f0e5c5775ca9dd02e30e67f545c36cff3690e` | ⚠️ Unaudited |
| WstETH | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381968 | `0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0` | ⚠️ Unaudited |
| wstETH_Burner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7581ebe7870a220360d216c3404ff7cb79b2a0f` | ⚠️ Unaudited |
| WstETHCorrelatedAssetsPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0866fc8a76bfc485b8e8c7d543a54bd72f015b1c` | ⚠️ Unaudited |
| WstETHExchangeRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ce02cba4952cf75dc8c1baade27761141c6cd1e` | ⚠️ Unaudited |
| WstETHPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f67e4d9bd67efa28236013288737d39aef48e79` | ⚠️ Unaudited |
| WstETHRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa14a1a1646980c2b78eddd51b66ec220aefe6109` | ⚠️ Unaudited |
| XERC20 | unknown | project_anchor | own_supporting | 1 | optimism | unit-382408 | `0x2416092f143378750bb29b79ed961ab195cceea5` | ⚠️ Unaudited |
| Zap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd9fc4fdb07e46a69349101e862e82aa002ade0d` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (353)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381919 | `0x0746928e47f858944d189996829ca711f64461a7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381920 | `0x0a4f4f9e84fc4f674f0d209f94d41fafe5af887d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381922 | `0x0ca9231a11c242206139a6dd8bf532f885516f96` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381923 | `0x16f3532e6af45a2c51b6c77b1267cef34a9cf3b3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381925 | `0x1933f7e5f8b0423fbab28ce9c8c39c2cc414027b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381926 | `0x1b0e765f6224c21223aea2af16c1c46e38885a40` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381927 | `0x1c0c89c1fa07e1dbfcb99ddb80c57252498c82b2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381928 | `0x1ec63b5883c3481134fd50d5daebc83ecd2e8779` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381930 | `0x1fa408992e74a42d1787e28b880c451452e8c958` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381931 | `0x214ed9da11d2fbe465a6fc601a91e62ebec1a0d6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381933 | `0x23a982b74a3236a5f2297856d4391b2edbbb5549` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381934 | `0x2665701293fcbeb223d11a08d826563edcce423a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381935 | `0x2bea101d992b58da3f52c4c2aaeb49d33f7dce14` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381937 | `0x2d09142eae60fd8bd454a276e95aebdffd05722d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381938 | `0x316f9708bb98af7da9c68c1c3b5e79039cd336e3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381939 | `0x31b844dbc7cdbaa27d22fd6d54986836d023bf3f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381940 | `0x351a133fd850ea81ed8a782016e308acbaddec91` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381941 | `0x3afdc9bca9213a35503b077a6072f3d0d5ab0840` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381942 | `0x3d0bb1ccab520a66e607822fc55bc921738fafe3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381943 | `0x3e7d1eab13ad0104d2750b8863b489d65364e32d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381944 | `0x400249b8244afac24aedc658041e56e449b43b5d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381945 | `0x40fcee8cdda01522846d197df9d9c1199b1cb1d3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381947 | `0x4f12633d511dc3049de1ea923b7047fbed0070d2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381948 | `0x4f4d5a808e2448cb12df7ac12efb12888fd9bdd5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381949 | `0x514910771af9ca656af840dff83e8264ecf986ca` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381950 | `0x553303d460ee0afb37edff9be42922d8ff63220e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381951 | `0x5546198be8479dcd69044e90f50783ba1a25a8f5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381953 | `0x5641af9ab0794afcc5c9b036f6e01144ba42e747` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381954 | `0x57a71a9c632b2e6d8b0eb9a157888a3fc87400d1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381955 | `0x5abcfc8a649ac15ff7d41c0dd0d53af3bbb7f876` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381956 | `0x5acae76a83d9770370989738452ad3a8be3c54dd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381957 | `0x5c29868c58b6e15e2b962943278969ab6a7d3212` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381958 | `0x5d409e56d886231adaf00c8775665ad0f9897b56` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381959 | `0x60f2058379716a64a7a5d29219397e79bc552194` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381960 | `0x68749665ff8d2d112fa859aa293f07a622782f38` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381961 | `0x69b50ff403e995d9c4441a303438d9049dac8ccd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381962 | `0x6d903f6003cca6255d85cca4d3b5e5146dc33925` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381963 | `0x6f654c583454859f535f6b720981cc939d1b036e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381964 | `0x72e9b6f907365d76c6192ad49c0c5ba356b7fa48` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381965 | `0x7783a5c7656d75ed1144379c25142b7e43da5f5e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381966 | `0x7b03a016dbc36db8e05c480192fadcdb0a06bc37` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381967 | `0x7badab7109afbbf48ecd8d6498caacd2630b45b9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381969 | `0x8236a87084f8b84306f72007f36f2618a5634494` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381970 | `0x8350b7de6a6a2c1368e7d4bd968190e13e354297` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381971 | `0x835b92840b721d3a66eb9da7fc4adf092a8f77e7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381972 | `0x83b34662f65532e611a87ebed38063dec889d5a7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381973 | `0x87641f6bc5ad796ea2f30af2a79ab2cf30f74188` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381974 | `0x8a5c2e36e02fb1ba95c9a3e96e6e16bbbdae9aaa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381975 | `0x8c74b2811d2f1ad65517adb5c65773c1e520ed2f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381976 | `0x8fffffd4afb6115b954bd326cbe7b4ba576818f6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381977 | `0x91359ce8989cb610a4127777828e667f23b94ee9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381978 | `0x9f4001c75295049dc5d566acfb27054d1fa1af35` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381979 | `0x9feac5a70435ef209f4013d46945ac1d4cba9397` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381980 | `0xa0332aafd9e9164a95b1fa521f8a479125573451` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381981 | `0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381982 | `0xa17581a9e3356d9a858b789d68b4d866e593ae94` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381983 | `0xa2699232b341881b1ed85d91592b7c259e029acf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381984 | `0xa35b1b31ce002fbf2058d22f30f95d405200a15b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381985 | `0xa3931d71877c0e7a3148cb7eb4463524fec27fbd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381987 | `0xa569d910839ae8865da8f8e70fffb0cba869f961` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381989 | `0xa70a0227028ad005f4fc9376a82cd1462e3aaedc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381990 | `0xaa9527bf3183a96fe6e55831c96de5cd988d3484` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381992 | `0xb6e043072c5815b75e0ee0cb31ed33bd089fca84` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381993 | `0xba8f83fffc7097cbcd89fe323d31753cfac33867` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381994 | `0xbf5495efe5db9ce00f80364c8b423567e58d2110` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381995 | `0xc0053f3fbccd593758258334dfce24c2a9a673ad` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381997 | `0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381998 | `0xc3d688b66703497daa19211eedff47f25384cdc3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381999 | `0xc8e4c3f58d5fc4409522503927ecea057ebba1fc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382000 | `0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382001 | `0xcfc1fa6b7ca982176529899d99af6473ad80df4f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382002 | `0xd4ec911b8fd79139736950235a93d3ea9c3f68ed` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382003 | `0xd5f7838f5c461feff7fe49ea5ebaf7728bb0adfa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382004 | `0xd6a48f6f687a5fef8a69834c49514b747012cf1c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382005 | `0xd72ac1bce9177cfe7aeb5d0516a38c88a64ce0ab` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382006 | `0xd98be00b5d27fc98112bde293e487f8d4ca57d07` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382007 | `0xdac17f958d2ee523a2206206994597c13d831ec7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382008 | `0xdc035d45d973e3ec169d2276ddab16f1e407384f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382009 | `0xdcee70654261af21c44c093c300ed3bb97b78192` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382010 | `0xdf08cd1b9d40a106b49b74f70c1cca60596ededc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382011 | `0xe3458a0bdbd5a413d3731595c5eb7c4cd6a14dd1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382012 | `0xe51a17c21b4cd878cdae305df9bacc3477425282` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382013 | `0xe85dc543813b8c2cfeaac371517b925a166a9293` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382014 | `0xef819fe60af67698567f03095a029ae1a1935007` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382015 | `0xf1c9acdc66974dfb6decb12aa385b9cd01190e38` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382016 | `0xf1cee2a82cc42246c8c38253f118abb6caad715b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382017 | `0xf469fbd2abcd6b9de8e169d128226c0fc90a012e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382018 | `0xf5600f17f7d3d87d0e0fdafe01dbe513919c6bf8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382019 | `0xfae103dc9cf190ed75350761e95403b7b8afa6c0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382020 | `0xfd5282968119c348c1e47fbcadd13069d9857bf2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382021 | `0xfdfd9c85ad200c506cf9e21f1fd8dd01932fbb23` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382022 | `0xff30586cd0f29ed462364c7e81375fc0c71219b1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382023 | `0x0b2c639c533813f4aa9d7837caf62653d097ff85` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382024 | `0x0be923b1716115d742e35fa359d415598c50510f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382025 | `0x0d276fc14719f9292d5c1ea2198673d1f4269246` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382026 | `0x13e3ee699d1909e989722e753853ae30b17e08c5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382027 | `0x16a9fa2fda030272ce99b29cf780dfa30361e0f3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382028 | `0x1f0e8fae2767305c2e65800b7c42c3a9ee1dc345` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382029 | `0x24d86da09c4dd64e50db7501b0f695d030f397af` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382030 | `0x2e44e174f7d53f0212823acc11c01a11d58c5bcb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382031 | `0x371db45c7ee248daff4dc1ffb67a20faa0ecfe02` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382032 | `0x3e6d1cca8eee6d02f1f578b613374eb53e6823b4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382033 | `0x3fb418b74ec30bc3e940221f58a04e16afc6378b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382034 | `0x403f2083b6e220147f8a8832f0b284b4ed5777d1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382037 | `0x443ea0340cb75a160f31a440722dec7b5bc3c2e9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382038 | `0x4ed39cf78ffa4428de6bcedb8d0f5ff84699e13d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382039 | `0x57f5e098cad7a3d1eed53991d4d66c45c9af7812` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382040 | `0x5a7facb970d094b6c7ff1df0ea68d99e6e73cbff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382041 | `0x5d173813b4505701e79e654b36a95e6c1fad4448` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382042 | `0x5eba6ec97843163c92ab48a7ac0ccc8423c652b1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382043 | `0x68f180fcce6836688e9084f035309e29bf0a2095` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382044 | `0x699a196c609b9b3db559ce5778b2827252bd24f5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382045 | `0x718a5788b89454aae3a028ae9c111a29be6c2a6f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382046 | `0x7e7d4467112689329f7e06571ed0e8cbad4910ee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382047 | `0x84e93ec6170ed630f5ebd89a1aae72d4f63f2713` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382048 | `0x8671d5e3a10639a573bacffef448ca076b2d5cd7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382049 | `0x92014e7f331dfab2848a5872aa8b2e7b6f3ce8b4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382051 | `0x995e394b8b2437ac8ce61ee0bc610d617962b214` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382053 | `0xadf7ad4dd000ea75667a3cdf65f3d3b7f1e9f02e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382054 | `0xc3a73a70d1577cd5b02da0ba91c0afc8fa434daf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382055 | `0xc4aafc9f0c52fdda0fed972c55b136bd07552ad0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382056 | `0xcb3643cc8294b23171272845473dec49739d4ba3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382057 | `0xd187f938348aa245e2104be8d849ea6d8d23f434` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382058 | `0xd62d433a4ca55f97bded88641588f65271cc5cf2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382059 | `0xd98be00b5d27fc98112bde293e487f8d4ca57d07` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382060 | `0xddc326838f2b5e5625306c3cf33318666f3cf002` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382061 | `0xdfb81f0ebfdfdd90143f5debd1cd016b677d1585` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382062 | `0xe36a30d249f7761327fd973001a32010b521b6fd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382063 | `0xe6eb5b9b85cff2c84df3de6e7855bc9e76f034d5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382064 | `0xecef79e109e997bca29c1c0897ec9d7b03647f5e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-382067 | `0x1ad4ceba9f8135a557bbe317db62aa125c330f26` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-382068 | `0x1f71901daf98d70b4baf40de080321e5c2676856` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-382069 | `0x2416092f143378750bb29b79ed961ab195cceea5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-382070 | `0x2c7118c4c88b9841fcf839074c26ae8f035f2921` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-382072 | `0x2e44e174f7d53f0212823acc11c01a11d58c5bcb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-382074 | `0x2f4eaf29dfeef4654bd091f7112926e108ef4ed0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-382076 | `0x3870fac3de911c12a57e5a2532d15ad8ca275a60` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-382077 | `0x3c30b5a5a04656565686f800481580ac4e7ed178` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-382080 | `0x4200000000000000000000000000000000000006` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-382081 | `0x443ea0340cb75a160f31a440722dec7b5bc3c2e9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-382082 | `0x4a900f81deda753bbbab12453b3775d5f26df6f3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-382083 | `0x4b5dee60531a72c1264319ec6a22678a4d0c8118` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-382085 | `0x51515144cff7dc3623c52c5e91768a9955d2beb1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-382086 | `0x5404872d8f2e24b230ec9b9ec64e3855f637fb93` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-382087 | `0x58ebb8db8b4fdf2dcbbb16e04c2f5b952963b514` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-382090 | `0x6bad2334e987106f40c50c7942d794b4e09edfc5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-382091 | `0x6c987dde50db1dcdd32cd4175778c2a291978e2a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-382093 | `0x6f7d514bbd4aff3bcd1140b7344b32f063dee486` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-382095 | `0x72874cfe957bb47795548e5a9fd740d135ba5e45` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-382097 | `0x7dcc39b4d1c53cb31e1abc0e358b43987fef80f7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-382100 | `0x84e93ec6170ed630f5ebd89a1aae72d4f63f2713` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-382106 | `0x8d38a3d6b3c3b7d96d6536da7eef94a9d7dbc991` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-382108 | `0x8df378453ff9deffa513367cdf9b3b53726303e9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-382109 | `0x8f187aa05619a017077f5308904739877ce9ea21` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-382110 | `0x927b51f251480a681271180da4de28d44ec4afb8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-382115 | `0xaeb318360f27748acb200ce616e389a6c9409a07` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-382119 | `0xc02fe7317d4eb8753a02c35fe019786854a92001` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-382121 | `0xc3eacf0612346366db554c991d7858716db09f58` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-382124 | `0xdb7edfa090061d9367cbeaf6be16ecbde596676c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-382125 | `0xdf78e4f0a8279942ca68046476919a90f2288656` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-382127 | `0xfa454de61b317b6535a0c462267208e8fdb89f45` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-382129 | `0x0a6513e40db6eb1b165753ad52e80663aea50545` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-382132 | `0x1bfd67037b42cf73acf2047067bd4f2c47d9bfd6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-382133 | `0x2f4eaf29dfeef4654bd091f7112926e108ef4ed0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-382134 | `0x2f9e3953b2ef89fa265f2a32ed9f80d00229125b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-382135 | `0x3a58a54c066fdc0f2d55fc9c89f0415c92ebf3c4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-382136 | `0x45939657d1ca34a8fa39a924b71d28fe8431e581` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-382137 | `0x59e242d352ae13166b4987ae5c990c232f7f7cd6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-382138 | `0x5d37e4b374e6907de8fc7fb33ee3b0af403c7403` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-382140 | `0x83abacafaf625d84919ca769222579bc75aea2d1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-382141 | `0x83e0f742cacbe66349e3701b171ee2487a26e738` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-382142 | `0x8505b9d2254a7ae468c0e9dd10ccea3a837aef5c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-382143 | `0x97371df4492605486e23da797fa68e55fc38a13f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-382144 | `0x9c4ec768c28520b50860ea7a15bd7213a9ff58bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-382145 | `0xa265e611cf0ccb49ca9b58c2e1e8aa9b922504e6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-382146 | `0xab594600376ec9fd91f8e885dadf0ce036862de0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-382147 | `0xaeb318360f27748acb200ce616e389a6c9409a07` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-382148 | `0xbde8f31d2ddda895264e27dd990fab3dc87b372d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-382149 | `0xcc3e7c85bb0ee4f09380e041fee95a0caedd4a02` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-382150 | `0xd712ace4ca490d4f3e92992ecf3de12251b975f9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-382151 | `0xde31f8bfbd8c84b5360cfacca3539b938dd78ae6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-382152 | `0xf25212e676d1f7f89cd72ffee66158f541246445` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-382153 | `0xf9680d99d6c9589e2a93a78a04a279e509205945` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-382154 | `0xfa68fb4628dff1028cfec22b4162fccd0d45efb6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-382155 | `0xfe4a8cc5b5b2366c1b58bea3858e81843581b2f7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-382214 | `0x16c7b5c1b10489f4b111af11de2bd607c9728107` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-382215 | `0x3c851cbe2740747f5ce4e8894842a313e5a3aee3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-382216 | `0x41e345a046a73ef15316191b41f3abea4cef1168` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-382218 | `0x5a1d1c89da75bc957bbf9ed61b4b0adee0553285` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-382220 | `0x602cc55d673f134c2d6c8085d10674ec4df4d155` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-382221 | `0x606174f62cd968d8e684c645080fa694c1d7786e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-382222 | `0x67dfca85cceefa2c5b1db4dee3bea716a28b9baa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-382223 | `0x731564585278f228fb8f93a0bf62729e24367662` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-382224 | `0xadd81aaf528784531e888317afcd429b00c9f1b3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-382225 | `0xb77cd4cd000957283d8baf53cd782ecf029cf7db` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-382226 | `0xc91eca15747e73d6dd7f616c49daff37b9f1b604` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-382228 | `0xcd83cbbfce149d141a5171c3d6a0f0fccee225ab` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-382229 | `0xcda86a272531e8640cd7f1a92c01839911b90bb0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-382231 | `0xe268b436e75648aa0639e2088fa803fea517a0c7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-382232 | `0xf528b4bcac12dad0bfa114282b219ad706ba7f18` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382338 | `0x0090a563c4832e4e519f5f054483519b1a83c8c3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382339 | `0x07da0e54543a844a80abe69c8a12f22b3aa59f9d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382340 | `0x0e383794eaaa6cf7ffb2c8ad5bebbbc5cb0f0a7b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382341 | `0x123964802e6ababbe1bc9547d72ef1b69b00a6b1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382342 | `0x1738fcae8d5a6aef39985df31fe60e5dc5e1a7b3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382344 | `0x220da2686dc870ac0a97498a1845e610d2f13431` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382345 | `0x2330aae3bca5f05169d5f4597964d44522f62930` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382346 | `0x2416092f143378750bb29b79ed961ab195cceea5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382347 | `0x2c776041ccfe903071af44aa147368a9c8eea518` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382348 | `0x3d0bb1ccab520a66e607822fc55bc921738fafe3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382349 | `0x3dc83e4c67d99b935e07771f36060deaeffff45d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382350 | `0x3e6d1cca8eee6d02f1f578b613374eb53e6823b4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382351 | `0x41e345a046a73ef15316191b41f3abea4cef1168` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382352 | `0x4200000000000000000000000000000000000006` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382353 | `0x45939657d1ca34a8fa39a924b71d28fe8431e581` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382354 | `0x4687670f5f01716faa382e2356c103bad776752c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382355 | `0x46e6b214b524310239732d51387075e0e70970bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382356 | `0x4b5dee60531a72c1264319ec6a22678a4d0c8118` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382357 | `0x564417b682817e1c7806b2a1a4f73e084d742925` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382358 | `0x5875eee11cf8398102fdad704c9e96607675467a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382359 | `0x59e242d352ae13166b4987ae5c990c232f7f7cd6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382360 | `0x5d173813b4505701e79e654b36a95e6c1fad4448` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382361 | `0x6b2f857d3f3a32ba7d9ac46d0ad8e5bd6e2011f1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382362 | `0x6d75bfb5a5885f841b132198c9f0be8c872057bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382363 | `0x71041dddad3595f9ced3dccfbe3d1f4b0a16bb70` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382364 | `0x72e9b6f907365d76c6192ad49c0c5ba356b7fa48` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382365 | `0x784efeb622244d2348d4f2522f8860b96fbece89` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382366 | `0x78d0677032a35c63d142a48a2037048871212a8c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382367 | `0x7e860098f58bbfc8648a4311b374b1d669a2bc6b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382368 | `0x7fcd174e80f264448ebee8c88a7c4476aaf58ea6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382369 | `0x820c137fa70c8691f0e44dc420a5e53c168921dc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382370 | `0x833589fcd6edb6e08f4c7c32d4f71b54bda02913` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382371 | `0x83e0f742cacbe66349e3701b171ee2487a26e738` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382372 | `0x89e9b098bb0e3d09f4288fb2b9632b4dcb40bbf6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382373 | `0x8c087080253cd3bd395aecaf16f36ee608acd96f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382374 | `0x8d38a3d6b3c3b7d96d6536da7eef94a9d7dbc991` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382375 | `0x8df378453ff9deffa513367cdf9b3b53726303e9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382377 | `0x9c4ec768c28520b50860ea7a15bd7213a9ff58bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382378 | `0x9e1028f5f1d5ede59748ffcee5532509976840e0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382379 | `0x9f485610e26b9c0140439f88dc0c7742903bd1cf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382380 | `0xaa390749cb758af4070e93478fc743c72c18989c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382381 | `0xaa9527bf3183a96fe6e55831c96de5cd988d3484` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382382 | `0xb125e6687d4313864e53df431d5425969c15eb2f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382384 | `0xb88e4078aac88f10c0ca71086ddcf512ec54498a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382385 | `0xbd4cfc08d64a848a9116a92cd06d2f2bdc0a2505` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382386 | `0xbde8f31d2ddda895264e27dd990fab3dc87b372d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382387 | `0xc1cba3fcea344f92d9239c08c0568f6f2f0ee452` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382388 | `0xc4a9fff2152fe11fbb40f059100ce1271a330c51` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382389 | `0xc89567205207e481c1162c7e8a03e27e8e619a77` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382390 | `0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382391 | `0xcc3e7c85bb0ee4f09380e041fee95a0caedd4a02` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382392 | `0xd9aaec86b65d86f6a7b5b1b0c42ffa531710b6ca` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382393 | `0xdb7edfa090061d9367cbeaf6be16ecbde596676c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382394 | `0xdd18688bb75af704f3fb1183e459c4d4d41132d9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382395 | `0xe6eb5b9b85cff2c84df3de6e7855bc9e76f034d5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382396 | `0xedfa23602d0ec14714057867a78d01e94176bea0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382156 | `0x0be923b1716115d742e35fa359d415598c50510f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382157 | `0x15eb948705933433826b9a7956741764e1432156` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382158 | `0x2416092f143378750bb29b79ed961ab195cceea5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382159 | `0x250bd3da70b1844dbe7491c521b9490abd57b709` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382160 | `0x271a200023c9512d37149dfbb62bf0f62a8d4680` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382161 | `0x311930889c61e141e15a61d11be974d749390e7a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382162 | `0x3410f05fb77715ac1d1ec68a8d74f38d0850d54c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382163 | `0x354a6da3fcde098f8389cad84b0182725c6c91de` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382164 | `0x35751007a407ca6feffe80b3cb397736d2cf4dbe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382165 | `0x3fb4d38ea7ec20d91917c09591490eeda38cf88a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382168 | `0x47885403524c26a4514b5f8d82747a8c90cef0c6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382169 | `0x4f12633d511dc3049de1ea923b7047fbed0070d2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382170 | `0x50834f3163758fcc1df9973b6e91f0f0f0434ad3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382171 | `0x5372bcf3486d59c23f5fc85745b41f180efff881` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382172 | `0x57f5e098cad7a3d1eed53991d4d66c45c9af7812` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382173 | `0x5979d7b546e38e414f7e9822514be443a4800529` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382174 | `0x5998a5c516bd5e479e0b6aa6f243d372730b68d2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382175 | `0x5d173813b4505701e79e654b36a95e6c1fad4448` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382176 | `0x5d409e56d886231adaf00c8775665ad0f9897b56` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382177 | `0x5eba6ec97843163c92ab48a7ac0ccc8423c652b1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382178 | `0x60f2058379716a64a7a5d29219397e79bc552194` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382179 | `0x639fe6ab55c921f74e7fac1ee960c0b6293ba612` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382180 | `0x675dafae7d2711032615bd32e6d352af32e5a8bd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382181 | `0x69ad47985da1b3aa3fa3c1fe642c81c08de21941` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382182 | `0x6c84a8f1c29108f47a79964b5fe888d4f4d0de40` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382183 | `0x6f7d514bbd4aff3bcd1140b7344b32f063dee486` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382184 | `0x70175d5f312d2ac5b8d71d76c055d1c9f000eba5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382185 | `0x7de363b6bf0a892b94a1cd0c9df76826bfc14228` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382186 | `0x8495af03fb797e2965bcb42cb0693e1c15614798` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382187 | `0x88730d254a2f7e6ac8388c3198afd694ba9f7fae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382188 | `0x92014e7f331dfab2848a5872aa8b2e7b6f3ce8b4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382189 | `0x95dedd64b551f05e9f59a101a519b024b6b116e7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382190 | `0x9c4ec768c28520b50860ea7a15bd7213a9ff58bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382191 | `0xa2699232b341881b1ed85d91592b7c259e029acf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382192 | `0xa4f2e977cab3177d61e2e7eaecd257bf09f2f915` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382193 | `0xa5edbdd9646f8dff606d7448e414884c7d905dca` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382194 | `0xaf88d065e77c8cc2239327c5edb3a432268e5831` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382196 | `0xb2988bdadc45c43e3fe1a728f715e94bee4db406` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382197 | `0xb2a824043730fe05f3da2efafa1cbbe83fa548d6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382198 | `0xb3e79c7cac540ca833015e63d96d3032ba0c4129` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382199 | `0xbde8f31d2ddda895264e27dd990fab3dc87b372d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382200 | `0xc35137f62b825aeeaf30b69b6b32e3953d8d624a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382201 | `0xcc392d2c3b37520e01712320be331d41f7661013` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382202 | `0xd0c7101eacbb49f3decccc166d238410d6d46d57` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382203 | `0xd10b40ff1d92e2267d099da3509253d9da4d715e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382204 | `0xd98be00b5d27fc98112bde293e487f8d4ca57d07` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382205 | `0xdb7edfa090061d9367cbeaf6be16ecbde596676c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382206 | `0xdb98056fecfff59d032ab628337a4887110df3db` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382207 | `0xe808488e8627f6531ba79a13a9e0271b39abeb1c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382208 | `0xec70dcb4a1efa46b8f2d97c310c9c4790ba5ffa8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382209 | `0xedfb5fd27b0259b0a696364b183223b5ca3cbe62` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382210 | `0xfa454de61b317b6535a0c462267208e8fdb89f45` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382211 | `0xfc5a1a6eb076a2c7ad06ed22c90d7e710e35ad0a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382212 | `0xff970a61a04b1ca14834a43f5de4533ebddb5cc8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-382308 | `0x0746928e47f858944d189996829ca711f64461a7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-382309 | `0x13933885c9a392ce73f396707ec61f30a8b05e37` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-382310 | `0x176211869ca2b568f2a7d4ee941e073a821ee1ff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-382311 | `0x1bf74c010e6320bab11e2e5a532b5ac15e0b8aa6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-382313 | `0x2416092f143378750bb29b79ed961ab195cceea5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-382314 | `0x2c7118c4c88b9841fcf839074c26ae8f035f2921` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-382315 | `0x3aab2285ddcddad8edf438c1bab47e1a9d05a9b4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-382316 | `0x3c6cd9cc7c7a4c2cf5a82734cd249d7d593354da` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-382317 | `0x4a900f81deda753bbbab12453b3775d5f26df6f3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-382318 | `0x4b5dee60531a72c1264319ec6a22678a4d0c8118` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-382319 | `0x60f2058379716a64a7a5d29219397e79bc552194` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-382320 | `0x7a99092816c8bd5ec8ba229e3a6e6da1e628e1f9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-382321 | `0x7e0df525427874522fb5b711d5f347fac187af4b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-382322 | `0x841e380e3a98e4ee8912046d69731f4e21efb1d7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-382323 | `0x8d38a3d6b3c3b7d96d6536da7eef94a9d7dbc991` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-382324 | `0x8d50b433c0dcf3636c29695122464df5deb37edc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-382325 | `0x970ffd8e335b8fa4cd5c869c7cac3a90671d5dc3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-382326 | `0x972b1b7032aa93bf449a899fbf31bb30735a671a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-382327 | `0xa2699232b341881b1ed85d91592b7c259e029acf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-382328 | `0xaadaa473c1bdf7317ec07c915680af29debfdcb5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-382329 | `0xaeb318360f27748acb200ce616e389a6c9409a07` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-382330 | `0xb5bedd42000b71fdde22d3ee8a79bd49a568fc8f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-382331 | `0xc4a9fff2152fe11fbb40f059100ce1271a330c51` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-382332 | `0xc8e4c3f58d5fc4409522503927ecea057ebba1fc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-382333 | `0xd2671165570f41bbb3b0097893300b6eb6101e6c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-382334 | `0xdb7edfa090061d9367cbeaf6be16ecbde596676c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-382335 | `0xe5d7c2a44ffddf6b295a15c148167daaaf5cf34f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-382336 | `0xf1cee2a82cc42246c8c38253f118abb6caad715b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-382337 | `0xfd5282968119c348c1e47fbcadd13069d9857bf2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-382249 | `0x43d12fb3afcad5347fa764eeab105478337b7200` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-382252 | `0x4c089231f69b5065678c01984301d19f64b0d623` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-382255 | `0x53c6d04e3ec7031105baea05b36cbc3c987c56fa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-382257 | `0x5ec955a4c15b195a4af9a61f7155f6fe3c1a0656` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-382262 | `0x6bf14cb0a831078629d993fdebcb182b21a8774c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-382264 | `0x6f7d514bbd4aff3bcd1140b7344b32f063dee486` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-382265 | `0x70167d30964cbfdc315ecae02441af747be0c5ee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-382266 | `0x709cef91dd5d162d7047b678334d1be41fe92843` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-382268 | `0x77831f8997de34ead958da207e43e4be70771c79` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-382272 | `0x87a27b91f4130a25e9634d23a5b8e05e342bac50` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-382286 | `0xb2f97c1bd3bf02f5e74d13f02e3e26f93d77ce44` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-382301 | `0xecab0beea3e5dea0c35d3e69468eac20098032d7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-382303 | `0xf6013e80e9e6ac211cc031ad1ce98b3aa20b73e4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-382304 | `0xf610a9dfb7c89644979b4a0f27063e9e7d7cda32` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Trail of Bits - April 2019](https://github.com/trailofbits/publications/blob/master/reviews/compound-2.pdf) | Trail of Bits | Audit | 2019-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [OpenZeppelin - August 2019](https://www.openzeppelin.com/news/compound-audit) | OpenZeppelin | Audit | 2019-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 18 | high |
| [Trail of Bits - August 2019](https://github.com/trailofbits/publications/blob/master/reviews/compound-3.pdf) | Trail of Bits | Audit | 2019-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [OpenZeppelin - Timelock & Pause Guardian](https://www.openzeppelin.com/news/compound-finance-patch-audit) | OpenZeppelin | Audit | 2019-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [OpenZeppelin - cDAI](https://www.openzeppelin.com/news/compound-finance-mcd-dsr-integration) | OpenZeppelin | Audit | 2020-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [OpenZeppelin - COMP & Governance](https://www.openzeppelin.com/news/compound-alpha-governance-system-audit) | OpenZeppelin | Audit | 2020-02 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 1 | high |
| [Trail of Bits - February 2020](https://github.com/trailofbits/publications/blob/master/reviews/compound-governance.pdf) | Trail of Bits | Audit | 2020-02 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 1 | high |
| [OpenZeppelin - Tether](https://www.openzeppelin.com/news/compound-tether-integration-audit) | OpenZeppelin | Audit | 2020-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [OpenZeppelin - COMP Distribution](https://www.openzeppelin.com/news/compound-comp-distribution-system-audit) | OpenZeppelin | Audit | 2020-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Compound III Audit by OpenZeppelin](https://www.openzeppelin.com/news/compound-iii-audit) | OpenZeppelin | Audit | 2022-06 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 30 | high |
| [Compound III Security Audit by ChainSecurity](https://www.chainsecurity.com/security-audit/compound-iii) | ChainSecurity | Audit | 2024-12 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [16913] Trail of Bits - April 2019 — no match: Extracted from Compound v2 Security Assessment report by Trail of Bits, dated April 8, 2019. Scope includes all Solidity smart contracts in the money-market repository at specified commits.
- [16914] OpenZeppelin - August 2019 — no match: All contracts explicitly listed in scope section of the audit report.
- [16915] Trail of Bits - August 2019 — no match: Extracted contracts from scope and findings targets. Audit date from cover page.
- [16916] OpenZeppelin - Timelock & Pause Guardian — no match: Contracts explicitly listed in scope section of the audit report.
- [16917] OpenZeppelin - cDAI — no match: Scope explicitly mentions auditing all contracts in contracts/ directory that were added or changed between two commits, specifically naming CDaiDelegate.sol, DAIInterestRateModel.sol, and changes to JumpRateModel.sol.
- [16918] OpenZeppelin - COMP & Governance — matched: The report explicitly states the scope includes the Compound Governance Token (COMP) and Governor Alpha contracts. The audit date is given as February 25, 2020.
- [16919] Trail of Bits - February 2020 — matched: Scope explicitly includes Comp.sol and GovernorAlpha.sol. Timelock.sol is mentioned as an interaction but not in scope.
- [16920] OpenZeppelin - Tether — no match: Contracts explicitly mentioned as part of the audited patch: PriceOracleProxy, PriceOracle, SimplePriceOracle, CToken, CErc20Delegator.
- [16921] OpenZeppelin - COMP Distribution — no match: Audit report for Compound COMP distribution system. Scope includes Comptroller.sol and ComptrollerStorage.sol; Dripper.sol is mentioned in findings.
- [16922] Compound III Audit by OpenZeppelin — matched: Extracted all contracts listed in the scope section of the audit report. The audit date is the delivery date (June 14, 2022) as stated in the summary.
- [16923] Compound III Security Audit by ChainSecurity — no match: Only the protocol name 'Compound III' is mentioned; no specific contract files or names are listed in the provided text.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Trail of Bits - April 2019 | CToken | unmatched — not counted | — | Target in findings 15, 18, 19, 20, 21 | no |
| Trail of Bits - April 2019 | Comptroller | unmatched — not counted | — | Target in findings 16, 22, 23 | no |
| Trail of Bits - April 2019 | Unitroller | unmatched — not counted | — | Target in finding 23 | no |
| Trail of Bits - April 2019 | MoneyMarket | unmatched — not counted | — | Target in finding 15 | no |
| Trail of Bits - April 2019 | CarefulMath | unmatched — not counted | — | Mentioned in finding 14 | no |
| Trail of Bits - April 2019 | Exponential | unmatched — not counted | — | Mentioned in Appendix B | no |
| Trail of Bits - April 2019 | ComptrollerV1Storage | unmatched — not counted | — | Mentioned in finding 23 | no |
| Trail of Bits - April 2019 | UnitrollerAdminStorage | unmatched — not counted | — | Mentioned in finding 23 | no |
| Trail of Bits - April 2019 | ReentrancyGuard | unmatched — not counted | — | Mentioned in finding 20 | no |
| OpenZeppelin - August 2019 | CarefulMath | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin - August 2019 | CErc20 | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin - August 2019 | CEther | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin - August 2019 | Comptroller | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin - August 2019 | ComptrollerInterface | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin - August 2019 | ComptrollerV1Storage | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin - August 2019 | UnitrollerAdminStorage | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin - August 2019 | CToken | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin - August 2019 | EIP20Interface | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin - August 2019 | EIP20NonStandardInterface | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin - August 2019 | ComptrollerErrorReporter | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin - August 2019 | TokenErrorReporter | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin - August 2019 | Exponential | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin - August 2019 | InterestRateModel | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin - August 2019 | Maximillion | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin - August 2019 | ReentrancyGuard | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin - August 2019 | Unitroller | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin - August 2019 | WhitePaperInterestRateModel | unmatched — not counted | — | listed in scope | no |
| Trail of Bits - August 2019 | CEther | unmatched — not counted | — | Target in finding 24 | no |
| Trail of Bits - August 2019 | ErrorReporter | unmatched — not counted | — | Target in finding 25 | no |
| Trail of Bits - August 2019 | Comptroller | unmatched — not counted | — | Target in finding 26 | no |
| Trail of Bits - August 2019 | BoolComptroller | unmatched — not counted | — | Target in finding 28 | no |
| Trail of Bits - August 2019 | CToken | unmatched — not counted | — | Mentioned in findings and scope | no |
| Trail of Bits - August 2019 | Unitroller | unmatched — not counted | — | Mentioned in scope and findings | no |
| Trail of Bits - August 2019 | PriceOracle | unmatched — not counted | — | Mentioned in finding 26 | no |
| OpenZeppelin - Timelock & Pause Guardian | CErc20 | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin - Timelock & Pause Guardian | CEther | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin - Timelock & Pause Guardian | CToken | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin - Timelock & Pause Guardian | Comptroller | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin - Timelock & Pause Guardian | ComptrollerV2Storage | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin - Timelock & Pause Guardian | ComptrollerV1Storage | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin - Timelock & Pause Guardian | ComptrollerErrorReporter | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin - Timelock & Pause Guardian | Exponential | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin - Timelock & Pause Guardian | Timelock | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin - Timelock & Pause Guardian | Unitroller | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin - cDAI | CDaiDelegate | unmatched — not counted | — | newly added file mentioned in scope | no |
| OpenZeppelin - cDAI | DAIInterestRateModel | unmatched — not counted | — | newly added file mentioned in scope | no |
| OpenZeppelin - cDAI | JumpRateModel | unmatched — not counted | — | changed contract mentioned in scope | no |
| OpenZeppelin - COMP & Governance | Comp | own contract | Comp (selected) `0xc00e94cb662c3520282e6f5717214004a7f26888` — deployed 2020-03-04 03:08:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| OpenZeppelin - COMP & Governance | GovernorAlpha | unmatched — not counted | — | mentioned as audited contract | no |
| Trail of Bits - February 2020 | Comp | own contract | Comp (selected) `0xc00e94cb662c3520282e6f5717214004a7f26888` — deployed 2020-03-04 03:08:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Trail of Bits - February 2020 | GovernorAlpha | unmatched — not counted | — | listed in scope as GovernorAlpha.sol | no |
| OpenZeppelin - Tether | PriceOracleProxy | unmatched — not counted | — | mentioned as audited contract | no |
| OpenZeppelin - Tether | PriceOracle | unmatched — not counted | — | mentioned as audited contract | no |
| OpenZeppelin - Tether | SimplePriceOracle | unmatched — not counted | — | mentioned as audited contract | no |
| OpenZeppelin - Tether | CToken | unmatched — not counted | — | mentioned as audited contract | no |
| OpenZeppelin - Tether | CErc20Delegator | unmatched — not counted | — | mentioned as audited contract | no |
| OpenZeppelin - COMP Distribution | Comptroller | unmatched — not counted | — | audited commit includes changes in Comptroller.sol | no |
| OpenZeppelin - COMP Distribution | ComptrollerStorage | unmatched — not counted | — | audited commit includes storage updates in ComptrollerStorage.sol | no |
| OpenZeppelin - COMP Distribution | Dripper | unmatched — not counted | — | mentioned in finding N01 | no |
| Compound III Audit by OpenZeppelin | Comet | unmatched — not counted | — | listed in scope | no |
| Compound III Audit by OpenZeppelin | Bulker | unmatched — not counted | — | listed in scope | no |
| Compound III Audit by OpenZeppelin | CometConfiguration | unmatched — not counted | — | listed in scope | no |
| Compound III Audit by OpenZeppelin | CometCore | unmatched — not counted | — | listed in scope | no |
| Compound III Audit by OpenZeppelin | CometExt | unmatched — not counted | — | listed in scope | no |
| Compound III Audit by OpenZeppelin | CometExtInterface | unmatched — not counted | — | listed in scope | no |
| Compound III Audit by OpenZeppelin | CometFactory | unmatched — not counted | — | listed in scope | no |
| Compound III Audit by OpenZeppelin | CometInterface | unmatched — not counted | — | listed in scope | no |
| Compound III Audit by OpenZeppelin | CometMainInterface | unmatched — not counted | — | listed in scope | no |
| Compound III Audit by OpenZeppelin | CometMath | unmatched — not counted | — | listed in scope | no |
| Compound III Audit by OpenZeppelin | CometProxyAdmin | unmatched — not counted | — | listed in scope | no |
| Compound III Audit by OpenZeppelin | CometRewards | unmatched — not counted | — | listed in scope | no |
| Compound III Audit by OpenZeppelin | CometStorage | unmatched — not counted | — | listed in scope | no |
| Compound III Audit by OpenZeppelin | Configurator | unmatched — not counted | — | listed in scope | no |
| Compound III Audit by OpenZeppelin | ConfiguratorStorage | unmatched — not counted | — | listed in scope | no |
| Compound III Audit by OpenZeppelin | ERC20 | unmatched — not counted | — | listed in scope | no |
| Compound III Audit by OpenZeppelin | IWETH9 | unmatched — not counted | — | listed in scope | no |
| Compound III Audit by OpenZeppelin | TransparentUpgradeableConfiguratorProxy | unmatched — not counted | — | listed in scope | no |
| Compound III Audit by OpenZeppelin | Ownable | unmatched — not counted | — | listed in scope | no |
| Compound III Audit by OpenZeppelin | WETH9 | own contract | WETH9 (selected) `0x4200000000000000000000000000000000000006` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Compound III Audit by OpenZeppelin | AggregatorV3Interface | unmatched — not counted | — | listed in scope | no |
| Compound III Audit by OpenZeppelin | draft-IERC1822 | unmatched — not counted | — | listed in scope | no |
| Compound III Audit by OpenZeppelin | Proxy | ambiguous — not counted | Proxy (proxy) (alternative) `0x2ae3f1ec7f1f5012cfeab0185bfc7aa3cf0dec22` — deployed 2023-07-22 04:48:19+03 — liveness: live (current_address_book_code) | bare standard proxy-shell name is not deployment identity; normalized_full_corpus:project_anchor:matcher_anchor | no |
| Compound III Audit by OpenZeppelin | IBeacon | unmatched — not counted | — | listed in scope | no |
| Compound III Audit by OpenZeppelin | ProxyAdmin | unmatched — not counted | — | listed in scope | no |
| Compound III Audit by OpenZeppelin | TransparentUpgradeableProxy | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0xa1290d69c65a6fe4df752f95823fae25cb99e5a7` — deployed 2023-12-10 23:46:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xfd086bc7cd5c481dcc9c85ebe478a1c0b69fcbb9` — deployed 2021-08-31 20:48:43+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x912ce59144191c1204e64559fe8253a0e49e6548` — deployed 2023-03-16 15:08:28+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x04c0599ae5a44757c0af6f9ec3b93da8976c150a` — deployed 2024-04-23 05:18:37+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x82af49447d8a07e3bd95bd0d56f35241523fbab1` — deployed 2021-05-30 06:51:42+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x85c4f855bc0609d2584405819edaea3adabfe97d` — deployed 2025-04-29 12:10:36+03 — liveness: live (code_present_context)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x0ece76334fb560f2b1a49a60e38cf726b02203f0` — deployed 2023-08-03 16:47:46+03 — liveness: live (current_address_book_code) | bare standard proxy-shell name is not deployment identity; normalized_full_corpus:project_anchor:matcher_anchor | no |
| Compound III Audit by OpenZeppelin | ERC1967Proxy | ambiguous — not counted | ERC1967Proxy (proxy) (alternative) `0xd9a442856c234a39a81a089c06451ebaa4306a72` — deployed 2024-01-31 20:48:47+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x5c5b196abe0d54485975d1ec29617d42d9198326` — deployed 2024-07-16 18:00:35+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0xd11c452fc99cf405034ee446803b6f6c1f6d5ed8` — deployed 2024-09-09 08:58:47+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x57f5e098cad7a3d1eed53991d4d66c45c9af7812` — deployed 2023-10-06 22:57:59+03 — liveness: live (current_address_book_code) | bare standard proxy-shell name is not deployment identity; normalized_full_corpus:project_anchor:matcher_anchor | no |
| Compound III Audit by OpenZeppelin | ERC1967Upgrade | unmatched — not counted | — | listed in scope | no |
| Compound III Audit by OpenZeppelin | Context | unmatched — not counted | — | listed in scope | no |
| Compound III Audit by OpenZeppelin | StorageSlot | unmatched — not counted | — | listed in scope | no |
| Compound III Audit by OpenZeppelin | Address | unmatched — not counted | — | listed in scope | no |
| Compound III Security Audit by ChainSecurity | Compound III | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | `0x940181a94a35a4569e4529a3cdfb74e38fd98631` | Aero | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x42480c37b249e33aabaf4c22b20235656bd38068` | ArbitrumBridgeReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x023ee795361b28cdbb94e302983578486a0a5f1b` | BaseBulker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0xdeaddeaddeaddeaddeaddeaddeaddeaddead1111` | BVM_ETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x2f2a2543b76a4166549f7aab2e75bef0aefc5b0f` | ClonableBeaconProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x055e53f50b84fd91c4be367220efd36c3d091e1f` | CometExtAssetList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x309a862bbc1a00e45506cb8a802d1ff10004c8c0` | CompoundGovernor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xb21b06d71c75973babde35b49ffdac3f82ad3775` | ConfiguratorProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x15700b564ca08d9439c58ca5053166e8317aa138` | deUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0xc96de26018a54d51c097160568752c4e3bd6c364` | FBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0x078d782b760474a361dda0af3839290b0ef57ad6` | FiatTokenProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | `0x06efdbff2a14a7c8e15944d1f4a48f9f95f663a4` | FiatTokenProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x4200000000000000000000000000000000000042` | GovernanceToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x9bcef72be871e61ed4fbbc7630889bee758eb81d` | L2StandardERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x236aa50979d5f3de3bd1eeb40e81137f22ab794b` | L2TBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x1f71901daf98d70b4baf40de080321e5c2676856` | LineaBridgeReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa397a8c2086c554b531c02e29f3291c9704b00c7` | MainnetBulker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2c776041ccfe903071af44aa147368a9c8eea518` | MainnetBulkerWithWstETHSupport | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x7ceb23fd6bc0add59e62ac25578270cff1b9f619` | MaticWETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x18281dfc4d00905da1aaa6731414eaba843c468a` | OptimismBridgeReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x52b7d8851d6ccbc6342ba0855be65f7b82a3f17f` | OptimismMintableERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x1f32b1c2345538c0c6f582fcb022739c4a194ebb` | OssifiableProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x18281dfc4d00905da1aaa6731414eaba843c468a` | PolygonBridgeReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x00c03abc59b978ecda0a118ca8b0061ea6121101` | RateBasedCorrelatedAssetsPriceOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x04eab657b065238aa67c3879f4d71bfdd09c2796` | ReverseMultiplicativePriceFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x4186bfc76e2e237523cbc30fd220fe055156b41f` | RSETH_OFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0af91e13383fd771f21b40b79421b2d59e8214c2` | RsETHCorrelatedAssetsPriceOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x87eee96d50fb761ad85b1c982d28a042169d61b1` | RsETHTokenWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x0090a563c4832e4e519f5f054483519b1a83c8c3` | ScalingPriceFeedWithCustomDescription | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | `0xc6bf5a64896d679cf89843dbec6c0f5d3c9b610d` | ScrollBridgeReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa663b02cf0a4b149d2ad41910cb81e23e1c41c32` | StakedFrax | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xbe9895146f7af43049ca1c1ae358b0541ea49704` | StakedTokenV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xd09acb80c1e8f2291862c4978a008791c9167003` | TAssetMultichainToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x18084fba666a33d37592fa2633fd49a74dd93a88` | TBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x2791bca1f2de4661ed88a30c99a7a9449aa84174` | UChildERC20Proxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xc2132d05d31c914a87c6611c10748aeb04b58e8f` | UChildERC20Proxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1f9840a85d5af5bf1d1762f925bdaddc4201f984` | Uni | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4c9edd5852cd905f086c759e8383e09bff1e68b3` | USDe | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x5d3a1ff2b6bab83b63cd9ad0787074081a52ef34` | USDeOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x94b008aa00579c1307b0ef2c499ad98a8ce58e58` | USDT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcd5fe23c85820f7b72d0926fc9b05b43e359b7ee` | UUPSProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2260fac5e5542a773aa44fbcfedf7c193bc2c599` | WBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x0d500b1d8e8ef31e21c99d1db9a6444d3adf1270` | WMATIC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | `0x5300000000000000000000000000000000000004` | WrappedEther | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0` | WstETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x2416092f143378750bb29b79ed961ab195cceea5` | XERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 694 |
| upstream | 11 |
| standard_library | 72 |
| needs_review | 353 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Address-book scope dispositions: 3 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 3 ambiguous, 85 unmatched
- Matched-own operational status: 3 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=10, low=1
- Match method counts: unique_name=3

Zero-match audit list:

- [16913] Trail of Bits - April 2019
- [16914] OpenZeppelin - August 2019
- [16915] Trail of Bits - August 2019
- [16916] OpenZeppelin - Timelock & Pause Guardian
- [16917] OpenZeppelin - cDAI
- [16920] OpenZeppelin - Tether
- [16921] OpenZeppelin - COMP Distribution
- [16923] Compound III Security Audit by ChainSecurity

Fork inheritance lineage and inherited audits are included when available.
