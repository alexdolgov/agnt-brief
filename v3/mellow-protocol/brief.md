# Agentic Audit Brief: Mellow Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 32 across 13 audit(s)
- Eligible audit results: 21 (13 matched; 8 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Mellow Protocol (`mellow-protocol`)
- Website: [https://mellow.finance](https://mellow.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, bsc, ethereum, fraxtal, manta-pacific, mantle, optimism, plasma, polygon, polygon-zkevm
- Contract surface: 833 unique implementations (839 raw deployments)
- Coverage basis: 17/49 confirmed own live verified implementations (34.7%); conservative 34.7% with 0 needs-review implementation(s)
- DeFi Llama TVL: $200,876,073.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Mellow Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 54 contract row(s) across arbitrum, base, bsc, ethereum, fraxtal, manta-pacific, mantle, optimism, plasma, polygon. Structural roles: 36 core, 11 supporting, 5 unclassified, 2 infra. 15 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 54
- Structural roles: core (36), supporting (11), unclassified (5), infra (2)
- Contract kinds: contract (52), abstract (2)
- Detected standards: erc165 (21), accesscontrol (13), erc1967proxy (10), erc20 (9), erc20permit (4), ownable (4), eip1271 (2), erc4626 (2), multicall (2), chainlinkaggregator (1), ownable2step (1)
- Frameworks: openzeppelin (44), openzeppelin-upgradeable (14), chainlink (1)
- Upgradeable-pattern rows: 15

## Fork Analysis

1 of 435 contracts are derived from known codebases. 434 contracts have no detected origin.

### Forked Contracts

**CLPool** (`0x2ae9df02539887d4ebce0230168a302d34784c82`, chain 8453)
Origin: peapods-finance (`0xd533986cbb79a015fe9f6c8f92dbb35cc998c37e`)
Containment: 100.0% - 21 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x02e1c91c4d82af454d892fbe2c5de2c4504b2675`, chain 1)
- UnnamedContract (`0x034faa92ecfe1075b36c451e79d1dbfb4a954474`, chain 1)
- UnnamedContract (`0x04e0581f5c7b1f760a5245fb58600840f03a3db9`, chain 1)
- UnnamedContract (`0x06e16d36ed1a99a46c0cb771ce927808d96132c2`, chain 1)
- UnnamedContract (`0x07c22b9db88cb4b1f0763b8c6ce05f8794b14f4e`, chain 1)
- UnnamedContract (`0x09bba67c316e59840699124a8dc0bbda6a2a9d59`, chain 1)
- UnnamedContract (`0x0bf7b603389795e109a13140ecb07036a1534573`, chain 1)
- UnnamedContract (`0x0faea3bce32428d63d3bee147755168342fa14eb`, chain 1)
- UnnamedContract (`0x10541361e71d84d1d0b577d95f3ee4b8ec059aea`, chain 1)
- UnnamedContract (`0x13aebe2c8c903493b7dc575a683992752de6b4bc`, chain 1)
- UnnamedContract (`0x13c7bcc2126d6892eefd489ad215a1a09f36aa9f`, chain 1)
- UnnamedContract (`0x156bd0377181b6090230b20e4d9070c04467d1bd`, chain 1)
- UnnamedContract (`0x1616d39a201d246cbd1b3b145234638f7719b53a`, chain 1)
- UnnamedContract (`0x181cb55f872450d16ae858d532b4e35e50eaa76d`, chain 1)
- UnnamedContract (`0x1ae8c006b5c97707aa074aaed42becad2cf80da2`, chain 1)
- UnnamedContract (`0x1b7c5ffae79b456fe1eee47503253cbac55ba287`, chain 1)
- UnnamedContract (`0x1c5da4e4e15cfb929cf61bb416a47651724b421b`, chain 1)
- UnnamedContract (`0x1e13a22d392584b24f5ddd6e6da88f54da872fa8`, chain 1)
- UnnamedContract (`0x1e6b0ff883378bf8ecb6b8d3a292933f6859384f`, chain 1)
- UnnamedContract (`0x1fcd3926b6dfa2a90fe49a383c732b31f1ee54eb`, chain 1)
- UnnamedContract (`0x216b6454e974aff2e802cc64445a2515f78a33df`, chain 1)
- UnnamedContract (`0x219138d7ad1438320b6fde3ca23bd2ea3490c472`, chain 1)
- UnnamedContract (`0x230e1d993107d5902dac8a59a0bcb13f72477017`, chain 1)
- UnnamedContract (`0x24fd64eb4766d91fd79a4d5e8086b2460debcae7`, chain 1)
- UnnamedContract (`0x25091725982e83f6afdf6a17705feeca5866b864`, chain 1)
- UnnamedContract (`0x2555870baed1385f819e42eb4829b52f0af6bac5`, chain 1)
- UnnamedContract (`0x277c6a642564a91ff78b008022d65683cee5ccc5`, chain 1)
- UnnamedContract (`0x279c6cb1d79bca99022b5a092e04c98ef068eadd`, chain 1)
- UnnamedContract (`0x27a907d1f809e8c03d806dc31c8e0c545a3187fc`, chain 1)
- UnnamedContract (`0x27e3e8e275523850236485fe2341e55689a81bb1`, chain 1)
- UnnamedContract (`0x296ef13265c2682a338bc31aff90150e707853c4`, chain 1)
- UnnamedContract (`0x2a166ae48f9f1fc27685582a61250011fd5363d8`, chain 1)
- UnnamedContract (`0x2c04ab334d1f0b7f959793d1137872e8c84cfc23`, chain 1)
- UnnamedContract (`0x2e2747dd8498396ef82a7bce510da264938eba72`, chain 1)
- UnnamedContract (`0x2ea268f1018a4767bf5da42d531ea9e943942a36`, chain 1)
- UnnamedContract (`0x31e09fd362d71259957c98dda56a1b37d6bf871a`, chain 1)
- UnnamedContract (`0x354822625acd925d02ac13f1c96dba2aa5ee7cc6`, chain 1)
- UnnamedContract (`0x35d482d0bbbb1c2f25d9b12f234883f3224f3198`, chain 1)
- UnnamedContract (`0x37be38a8bd5d84defa072fff6c0e1d923e9563eb`, chain 1)
- UnnamedContract (`0x383c5f09f42d8e5d206b3f23c542f23b490cd778`, chain 1)
- UnnamedContract (`0x3883d8cdcdda03784908cfa2f34ed2cf1604e4d7`, chain 1)
- UnnamedContract (`0x3d120987e85c1c294577a1c39c96693a6f9be97b`, chain 1)
- UnnamedContract (`0x3e80e11c8fd3e05221fe63be3487f9f0a4316dc8`, chain 1)
- UnnamedContract (`0x3eb8ed404817e40e9216149d1272581837b4b46d`, chain 1)
- UnnamedContract (`0x40d6bbb07d15f7cb9b34d88ef3e366b97eae70d0`, chain 1)
- UnnamedContract (`0x40eb5210c9b4bea7928cf9a80b22c1e7741505ab`, chain 1)
- UnnamedContract (`0x41dfc0fb65875015226073e1a4f9c24f147027bf`, chain 1)
- UnnamedContract (`0x441c999b0a8d39d6f0c078a5164bad1c5d8706d7`, chain 1)
- UnnamedContract (`0x45b3ad579cec11e7d5be58c4d2c2993f041b3285`, chain 1)
- UnnamedContract (`0x49ecc99374776789132317b2f4108a5a966085b7`, chain 1)
- UnnamedContract (`0x4c494435544c7bf39b62ab2af211eaf4a76f7373`, chain 1)
- UnnamedContract (`0x4d12fa40e9608298be8f62bd3627c152d8566b49`, chain 1)
- UnnamedContract (`0x4d7aabd771c3dab92ba0d0f49b67fdb89ee20792`, chain 1)
- UnnamedContract (`0x4f5d5a362be00209403473945d76b2d5254a60c2`, chain 1)
- UnnamedContract (`0x4f6bc03537c6f74e250f57a9a7238087cabf1c6d`, chain 1)
- UnnamedContract (`0x501d198a56cff2add64d157d3c8f465d20fd1942`, chain 1)
- UnnamedContract (`0x50577964425e06af4ddeca7970bef5c30bc1ab4b`, chain 1)
- UnnamedContract (`0x515906468b65e63e869b6e88e392587e31aa9873`, chain 1)
- UnnamedContract (`0x51add83f44e6a10c82f01d1689a0bdbad70e4bc0`, chain 1)
- UnnamedContract (`0x52cf3fcf4bcb466bb4632349ba8b1b08a8e32c31`, chain 1)
- UnnamedContract (`0x53e47237a4a0c63739ada94682407a724b407efb`, chain 1)
- UnnamedContract (`0x5403d66485affdfd03a289958d1d666334d43ec6`, chain 1)
- UnnamedContract (`0x552f1c7e18bc2013c7feec7b8f2cb18c8461469e`, chain 1)
- UnnamedContract (`0x55c982401020eadc2fb4a9d2e160068d6defb738`, chain 1)
- UnnamedContract (`0x57a013ac2a8790d3133f151f22a16ff2ac68627f`, chain 1)
- UnnamedContract (`0x58c4b6b0d6cff1d684e4b8ee899550f4b68a1031`, chain 1)
- UnnamedContract (`0x5b2099e204f22a0cce3806fc2093713e2780d437`, chain 1)
- UnnamedContract (`0x5dbf9287787a5825becb0321a276c9c92d570a75`, chain 1)
- UnnamedContract (`0x614cb9e9d13712781dfd15adc9f3dade60e4efab`, chain 1)
- UnnamedContract (`0x624a5219216c5a101247b39a04260ed3a2a05b71`, chain 1)
- UnnamedContract (`0x628c053e196fccb986cf2105136ef11e4ce5d4ed`, chain 1)
- UnnamedContract (`0x637e658d3f1371001faa6f94a62eabedfcdac86f`, chain 1)
- UnnamedContract (`0x63f1aada036e5b63465b7a2749202f34c72b3faa`, chain 1)
- UnnamedContract (`0x6408a5261578e17f858add039deb72e1952e9fe9`, chain 1)
- UnnamedContract (`0x649f34cfdc9bcaea43fe61b17ecfd601b444f45b`, chain 1)
- UnnamedContract (`0x64d00a006dcbf0add69e2431c1789c70a9ce0ad5`, chain 1)
- UnnamedContract (`0x65582767218d8829ffb79853af7764cea34cee2b`, chain 1)
- UnnamedContract (`0x666be6e7b3db5b01ab153e44c28bfbd5402424e3`, chain 1)
- UnnamedContract (`0x6955ab1adefa2e48f449b88183a2774a186b7e61`, chain 1)
- UnnamedContract (`0x6a2dd3b817f0364e7603e781dda9c62f62c440e1`, chain 1)
- UnnamedContract (`0x6ad30f260c5081cae68962e2f1730a3727987deb`, chain 1)
- UnnamedContract (`0x6c97a35d7c57c48463281a5ec9620a4613be62bf`, chain 1)
- UnnamedContract (`0x6d73ddeab6d64ccbc98bca243ac2e880e7dedef4`, chain 1)
- UnnamedContract (`0x6ea5a344d116db8949348648713760836d60fc5a`, chain 1)
- UnnamedContract (`0x6ec0cb7d87ac8b9288e69a46edf34e9217735c7e`, chain 1)
- UnnamedContract (`0x6f9947e11c8337690e59e7d23f19e265e86e62cc`, chain 1)
- UnnamedContract (`0x72926d99c913dede6c7d92ddf125ba781b0e901c`, chain 1)
- UnnamedContract (`0x749b85100d66525eec385638b46bd3ee590c0c79`, chain 1)
- UnnamedContract (`0x7562995263b742c430fe835dd32d41eefcd918d9`, chain 1)
- UnnamedContract (`0x759d4335cb712aa188935c2bd3aa6d205ac61305`, chain 1)
- UnnamedContract (`0x76001fafd4a8d3e8cd399e19b91296bc8bd0bb84`, chain 1)
- UnnamedContract (`0x76147aeef95e7cb058ed23c1c708e33d1ca58fe0`, chain 1)
- UnnamedContract (`0x78674e6883a1b2cccd41afd451897ca01429c151`, chain 1)
- UnnamedContract (`0x78a80df6b868a420bbab605bc8a5cfd8525ea943`, chain 1)
- UnnamedContract (`0x78ba57594656400d74a0c5ea80f84750cb47f449`, chain 1)
- UnnamedContract (`0x7a57d62b1217ce5685e26c333741e61b99233e65`, chain 1)
- UnnamedContract (`0x7a69820e9e7410098f766262c326e211bfa5d1b1`, chain 1)
- UnnamedContract (`0x7af142702fcbb0696bc4b4db9c2d609434864f52`, chain 1)
- UnnamedContract (`0x7e0e4b05898181a597673cd5a8fef2b9e36bec97`, chain 1)
- UnnamedContract (`0x7fea4c6e715fe2fe88e1cd70ed7ef88f7f0092d1`, chain 1)
- UnnamedContract (`0x8000a200b30acadb4769e413ac065f10863cc1d0`, chain 1)
- UnnamedContract (`0x81379c8b9376f06178b28954e46c32626776daf0`, chain 1)
- UnnamedContract (`0x81698f87c6482bf1ce9bfcfc0f103c4a0adf0af0`, chain 1)
- UnnamedContract (`0x8306bec30063f00f5ffd6976f09f6b10e77b27f2`, chain 1)
- UnnamedContract (`0x83b0da156e6837d57cd118b9d87973dd231ccb1a`, chain 1)
- UnnamedContract (`0x881157f71a4d4275bf923c9dc519f9c2bcb1ac89`, chain 1)
- UnnamedContract (`0x888d2a3e9b600f360a3386c9d2fedfa658e7fa29`, chain 1)
- UnnamedContract (`0x893aa69fbaa1ee81b536f0fbe3a3453e86290080`, chain 1)
- UnnamedContract (`0x8a78e6b7e15c4ae3aeaee3bf0de4f2de4078c1cd`, chain 1)
- UnnamedContract (`0x8bcb28e9a37c65f01a160660259e2fe9b81e1c26`, chain 1)
- UnnamedContract (`0x8d8b65727729fb484cb6dc1452d61608a5758596`, chain 1)
- UnnamedContract (`0x8e024f875f6fddf1471582bed8504f46cb64487e`, chain 1)
- UnnamedContract (`0x8e1b32ab28408142cb41458a847ba6a30f0a12d2`, chain 1)
- UnnamedContract (`0x8e6c80c41450d3fa7b1fd0196676b99bfb34bf48`, chain 1)
- UnnamedContract (`0x8eb26ae16ced27f46c717d0e2df070c370d65261`, chain 1)
- UnnamedContract (`0x90c983dc732e65db6177638f0125914787b8cb78`, chain 1)
- UnnamedContract (`0x91d3f3099aa7c5d8b6a10e283debf8efcfb59098`, chain 1)
- UnnamedContract (`0x936ae7ebf19444f098e6ce29714b1a2080f47289`, chain 1)
- UnnamedContract (`0x9389477cf0a0c13ad0ee54f35587c9d7d121b231`, chain 1)
- UnnamedContract (`0x941ee11c2470755a5281e6b5d8f74fcd6bb1057a`, chain 1)
- UnnamedContract (`0x9437b2a8cf3b69d782a61f9814baabc172f72003`, chain 1)
- UnnamedContract (`0x95934438741616fc7fcf65215e4a624aa608494b`, chain 1)
- UnnamedContract (`0x973495e81180cd6ead654328a0bebe01c8ad53ea`, chain 1)
- UnnamedContract (`0x9898c6d87699b864630422065e450772ff5d90c9`, chain 1)
- UnnamedContract (`0x9938a09fea37ba681a1bd53d33ddde2debec1da0`, chain 1)
- UnnamedContract (`0x99a069d159684464c6cf88992fd979981db49d7e`, chain 1)
- UnnamedContract (`0x9bcee2554e7d415e362caf6c48e0e7f130d9cf8f`, chain 1)
- UnnamedContract (`0x9c5d826e1bcdf67f0596725cbb931dc02132d88d`, chain 1)
- UnnamedContract (`0x9d0182633c0d50280685277f7bc7093ca8434dac`, chain 1)
- UnnamedContract (`0x9d992650b30c6fb7a83e7e7a430b4e015433b838`, chain 1)
- UnnamedContract (`0xa0f4871c4121542d7325fd6abef837eef28eb68b`, chain 1)
- UnnamedContract (`0xa1e38210b06a05882a7e7bfe167cd67f07fa234a`, chain 1)
- UnnamedContract (`0xa1eeeb677a121327ea2643fb47a23fec304edd00`, chain 1)
- UnnamedContract (`0xa21aa0efda3a4557daae3eb96d78962a9db9cf6a`, chain 1)
- UnnamedContract (`0xa33a068645e228db11c42e9d187edc72361b7bc0`, chain 1)
- UnnamedContract (`0xa4e41e38fbbc176bb4f79ab9d4528ca8335950a6`, chain 1)
- UnnamedContract (`0xa5136542ecf3dcafbb3bd213cd7024b4741dbde6`, chain 1)
- UnnamedContract (`0xa59b36aca119a30c527eddaa386eb130bcf1939f`, chain 1)
- UnnamedContract (`0xa62243c7a36e74d8280781242a3b0e019ce74e64`, chain 1)
- UnnamedContract (`0xa6278b726d4aa09d14f9e820d7785fad82e7196f`, chain 1)
- UnnamedContract (`0xa6af7dc0ba24e14d84103a68fb1db504c0031b8c`, chain 1)
- UnnamedContract (`0xa8a78538fc6d44951d6e957192a9772afb02dd2f`, chain 1)
- UnnamedContract (`0xa8d3deb21d981e6ac5989b5497c9337432af4c48`, chain 1)
- UnnamedContract (`0xa9a6d34e792fb34bdcf39fbb110169f1e7c5e78c`, chain 1)
- UnnamedContract (`0xab236d41a261f49a98a9827cb37a803778f6a9c5`, chain 1)
- UnnamedContract (`0xabe20d266ae54b9ae30492dea6b6407bf18feeb5`, chain 1)
- UnnamedContract (`0xacee4a703f27ea1ebcd550511aae58ad012624cc`, chain 1)
- UnnamedContract (`0xae052557af0024514a916396c8eb950ad7d260dc`, chain 1)
- UnnamedContract (`0xb0d19eef486b4807ab1fe20ab4cfacb074592ea5`, chain 1)
- UnnamedContract (`0xb1653ee92b724a033338cc17896e06275a4e9335`, chain 1)
- UnnamedContract (`0xb17a8d440c4e0a206fc1de76f3d0531f70bf6d42`, chain 1)
- UnnamedContract (`0xb1b9671a7473165ee3dbf7467c4a26c4bb720545`, chain 1)
- UnnamedContract (`0xb1e5a8f26c43d019f2883378548a350ecdd1423b`, chain 1)
- UnnamedContract (`0xb2657a1eb016692509f321a4365551e2ec1173c2`, chain 1)
- UnnamedContract (`0xb379bf6bb0770a3ac855dc04451958b7f8ddc80b`, chain 1)
- UnnamedContract (`0xb6451d4eaec79fd22b69086a5b760a166bd28c52`, chain 1)
- UnnamedContract (`0xb65a578bf6b4b997b87c83c22f240b291a875ee3`, chain 1)
- UnnamedContract (`0xb8050a88a9dbbc751daa40ea9eb5496dc1f59da2`, chain 1)
- UnnamedContract (`0xbaab39a03c9f31a9f0c8f25471ccfa37aaba03ba`, chain 1)
- UnnamedContract (`0xbd4bdaa3ac88f48728acf35f2704583bf19e7d1e`, chain 1)
- UnnamedContract (`0xbdf7b7bb56c35d439da87f66b195cdf38777d972`, chain 1)
- UnnamedContract (`0xbfafc964361f78754f523343b09b3cb7bb73bdd6`, chain 1)
- UnnamedContract (`0xc7e8b00a61adb658c49d2d8a377fc44572e9ecb5`, chain 1)
- UnnamedContract (`0xc82405cc38cb005974f0e7bd40cea1d9e3037635`, chain 1)
- UnnamedContract (`0xc8a65b27f2fbb60af856ed9f594e076c2ff27917`, chain 1)
- UnnamedContract (`0xc95b806ac073df930014ac476d26c8ad918f14e0`, chain 1)
- UnnamedContract (`0xc9932e91858e0fc801958d16a990e4fd812aec21`, chain 1)
- UnnamedContract (`0xc9aaa47e9da52cb96a96ed52bcce9fdca5dfe061`, chain 1)
- UnnamedContract (`0xca86abc73dac61fae350ec52ed33680edb50a1ff`, chain 1)
- UnnamedContract (`0xcc1d3926e079c826cd807fdf825a6777846bb5c1`, chain 1)
- UnnamedContract (`0xcc4de7c3af8a4ecc2d96bc821bba3a2d94e3298b`, chain 1)
- UnnamedContract (`0xcd3c0f51798d1daa92fb192e57844ae6cee8a6c7`, chain 1)
- UnnamedContract (`0xcdfa7efe670869c6b6be4375654e0b206ef49c89`, chain 1)
- UnnamedContract (`0xce4e73137cbb37db2561d4f85722b4fca52eb38e`, chain 1)
- UnnamedContract (`0xd0ad0f374e6312f0700c3c2119e7cd3204236e06`, chain 1)
- UnnamedContract (`0xd0f8478f6d195120eb64518bcd7adfa6e03e1116`, chain 1)
- UnnamedContract (`0xd1547c9a5155c3f34a6ff0db0cf16171819fe08b`, chain 1)
- UnnamedContract (`0xd1f59ba974e828df68cb2592c16b967b637cb4e4`, chain 1)
- UnnamedContract (`0xd1fab7a0e3136651ee661945a066f9274c3eb35a`, chain 1)
- UnnamedContract (`0xd27ffb15dd00d5e52ac2bfe6d5afd36cae850081`, chain 1)
- UnnamedContract (`0xd3442ba55108d33fa1eb3f1a3c0876f892b01c44`, chain 1)
- UnnamedContract (`0xd3bb0bc0e7ccbc647ee040ff32be2996949212f0`, chain 1)
- UnnamedContract (`0xd662df7c0faf0fe6446638651b05c287806ad1ae`, chain 1)
- UnnamedContract (`0xd7286673fd2d56ef9b324783835e2594674629d5`, chain 1)
- UnnamedContract (`0xd89738c820d74a353a4a4f9b2ec688ca4a7defe6`, chain 1)
- UnnamedContract (`0xdc9c17662133fb865e7ba3198b67c53a617b2153`, chain 1)
- UnnamedContract (`0xdd008e4810c25da5e40b5b10566864b7f563bdc4`, chain 1)
- UnnamedContract (`0xde13130dabf6f6b2a7a5ef34c3cb7e1298b50b04`, chain 1)
- UnnamedContract (`0xdf96d59d3688c56ca29aed045fe67c84bbc38461`, chain 1)
- UnnamedContract (`0xe04dc6f116a85508cd6299229218ed4719e43f2a`, chain 1)
- UnnamedContract (`0xe12e8249582198f4f1fb3920db8fc645fcb72657`, chain 1)
- UnnamedContract (`0xe3b023d3ff076e35448c936da5e8f6ada6130ca4`, chain 1)
- UnnamedContract (`0xe3c89d39822bc85890facffff3e1362c01f3129f`, chain 1)
- UnnamedContract (`0xe4357bdae017726ee5e83db3443bcd269bbf125d`, chain 1)
- UnnamedContract (`0xe5afacb8158892837936fc6a74472322cc78dcc6`, chain 1)
- UnnamedContract (`0xe707321b887b9da133ac5fcc5edb78ab177a152d`, chain 1)
- UnnamedContract (`0xe86399fe6d7007fdecb08a2ee1434ee677a04433`, chain 1)
- UnnamedContract (`0xe88cf95e44a2ff048315b8b3858e59bb11b8a602`, chain 1)
- UnnamedContract (`0xe92931c82cd709a65a37ff87740ba6930c54200f`, chain 1)
- UnnamedContract (`0xeb1cafbcc8923ecbc243ff251c385c201a6c734a`, chain 1)
- UnnamedContract (`0xebd53ef0b1651acae768fc9826e9656834ae3e4a`, chain 1)
- UnnamedContract (`0xec3b20276dffb4e13a7f15f990c31481cd918c91`, chain 1)
- UnnamedContract (`0xecf3bde9f50f71ede67e05050123b64b519df55c`, chain 1)
- UnnamedContract (`0xef39c188e2bc8eb45daf49a3fe2f72bf32050892`, chain 1)
- UnnamedContract (`0xf004a8fc0bcda18faba77eff9357ee6fdeeef463`, chain 1)
- UnnamedContract (`0xf3a1c44d1825fb49d633f681cb2b4e7de2e071d4`, chain 1)
- UnnamedContract (`0xf478061d453092af95afbd510ca41dc46ad13607`, chain 1)
- UnnamedContract (`0xf4ea276361348b301ba2296db909a7c973a15451`, chain 1)
- UnnamedContract (`0xf7a19974dc36e1ad9a74e967b0bc9b24e0f4c4b3`, chain 1)
- UnnamedContract (`0xf85932ace734e3cf04b5c2a6cb7b10f44014ecb9`, chain 1)
- UnnamedContract (`0xf86e9c52cb0a97e70eed554c8edb278996c860f3`, chain 1)
- UnnamedContract (`0xf910533e9796b7e74d6fa8512cc74281b736e7f6`, chain 1)
- UnnamedContract (`0xf9d20f02ab533ac6f990c9d96b595651d83b4b92`, chain 1)
- UnnamedContract (`0xfa3c9e965d254c101500c4e74120500f89881336`, chain 1)
- UnnamedContract (`0xfaa5ab0ca10e09ab404b18d900ceea34b746aa4a`, chain 1)
- UnnamedContract (`0xfbf0ff6eaaf1d64c75cfda7655b5e74ee8632817`, chain 1)
- UnnamedContract (`0xfd23f971696576331fcf96f80a20b4d3b31ca5b2`, chain 1)
- UnnamedContract (`0xfd778bf795c606464ab94be3e5106aa441b23554`, chain 1)
- UnnamedContract (`0xfe805c111554d1c5b67f78791be7fb35a0327bee`, chain 1)
- UnnamedContract (`0x1ce9d9cae2c9c00af3d06fcac1d267d09a954c92`, chain 10)
- UnnamedContract (`0x22171a4db2f165d78caa897d282850773bbf7c78`, chain 10)
- UnnamedContract (`0x2790aa3c0b8a7b4b3a8485be6dbca8d342eb0a02`, chain 10)
- UnnamedContract (`0x2fa71491f8070fa644d97b4782db5734854c0f6f`, chain 10)
- UnnamedContract (`0x319c0dd36284ac24a6b2bee73929f699b9f48c38`, chain 10)
- UnnamedContract (`0x3c01ec09d15d5450fc702dc4353b17cd2978d8a5`, chain 10)
- UnnamedContract (`0x478946bcd4a5a22b316470f5486fafb928c0ba25`, chain 10)
- UnnamedContract (`0x4956d48858f7e8d065037f6ae2449bd6af1a1287`, chain 10)
- UnnamedContract (`0x49efad116f1f9a04c6b9454f4b2e55cdf71ba77d`, chain 10)
- UnnamedContract (`0x4dc22588ade05c40338a9d95a6da9dcee68bcd60`, chain 10)
- UnnamedContract (`0x4e90232c38ed817d5f03a3dcf13a43d5d015a1ce`, chain 10)
- UnnamedContract (`0x50482118284630c7f0e676db7869335589d26d81`, chain 10)
- UnnamedContract (`0x59aa940f2a7135ca824310ac107f30c829738fe0`, chain 10)
- UnnamedContract (`0x65cd4f08709d1d1c1ebcbe91073c390afabc3144`, chain 10)
- UnnamedContract (`0x67fe54e339949346e99bc65ae4c425abab7ef502`, chain 10)
- UnnamedContract (`0x6b0e1a42030cb62c505c60e808ab945b1396f8e4`, chain 10)
- UnnamedContract (`0x6fe21c784e42f3176f9d0e02f25d0cd07952fb37`, chain 10)
- UnnamedContract (`0x71d022eba6f2607ab8ec32cb894075d94e10ceb8`, chain 10)
- UnnamedContract (`0x7243936fba26190299d38ecb7069c7a539f8ca3a`, chain 10)
- UnnamedContract (`0x734effcb7981b00046a9fcb00d6abd477bbf9684`, chain 10)
- UnnamedContract (`0x739c53d4434db94e782d82e310e50f9a655cf525`, chain 10)
- UnnamedContract (`0x7db963a6edc02473dbc9f4acdbf0d58a455d58be`, chain 10)
- UnnamedContract (`0x84ce89b4f6f67e523a81a82f9f2f14d84b726f6b`, chain 10)
- UnnamedContract (`0x88cfe68b365343f191e5d64c25cb1fe80bd54035`, chain 10)
- UnnamedContract (`0x893df22649247ad4e57e4926731f9cf0da344829`, chain 10)
- UnnamedContract (`0x89bf652e92c073ac49f33f6bb7b662b446b94681`, chain 10)
- UnnamedContract (`0x8ac2f9dac7a2852d44f3c09634444d533e4c078e`, chain 10)
- UnnamedContract (`0x9128ecebafb428f52af9dd863d1bbb36a677fb59`, chain 10)
- UnnamedContract (`0x96e7ca11cd96b705ce8febccadb466fd1245cfea`, chain 10)
- UnnamedContract (`0x9b0c181987fb01081258e1863d39a2be55aafe3a`, chain 10)
- UnnamedContract (`0xa0116415f30d9f783d4e8f1f3fce5dbb9dd59fd7`, chain 10)
- UnnamedContract (`0xb3ebe27274304446e089f7c678e4ed68ee387fe2`, chain 10)
- UnnamedContract (`0xb54aacb3b203499543c6ec2b13acfad74bba8be9`, chain 10)
- UnnamedContract (`0xb55da32e47914be05348547367bde9f95ce2dab9`, chain 10)
- UnnamedContract (`0xb5652f3f8e429c66144eba6cca042c23377bd08b`, chain 10)
- UnnamedContract (`0xb71ac980569540ce38195b38369204ff555c80be`, chain 10)
- UnnamedContract (`0xbf30ff33cf9c6b0c48702ff17891293b002dfea4`, chain 10)
- UnnamedContract (`0xc8c77a0129b9028a192bbc969391c4a1d45e85fd`, chain 10)
- UnnamedContract (`0xd8d7303929fe9f03c7b563c237f58479c2d93c2b`, chain 10)
- UnnamedContract (`0xebd5311bea1948e1441333976eadcfe5fbda777c`, chain 10)
- UnnamedContract (`0xed8b81e3ff6c54951621715f5992ca52007d88ba`, chain 10)
- UnnamedContract (`0xee1bac98527a9fdd57fccf967817215b083ce1f0`, chain 10)
- UnnamedContract (`0xf0e36e9186dbe927505d2588a6e6d56083dd4a56`, chain 10)
- UnnamedContract (`0xfc09733f4f61d20a5a96ced3a6582497fe1ccb3a`, chain 10)
- UnnamedContract (`0x2ae580d09eff4e178b62fc30db3482bb36fb9e71`, chain 56)
- UnnamedContract (`0x759d4335cb712aa188935c2bd3aa6d205ac61305`, chain 56)
- UnnamedContract (`0x94928c3853efef2759a18ed9d249768eb260df8c`, chain 56)
- UnnamedContract (`0xa5faff49394f1912a68e8f5bdd7beed690ed22b3`, chain 56)
- UnnamedContract (`0xac345625fd4c1086bb9141099e250c34694ef10e`, chain 56)
- UnnamedContract (`0xc7812434fb2f8b0510241408226142f59b16dda3`, chain 56)
- UnnamedContract (`0xc8e046fe778be29572016d1f703e9b2ff77a207d`, chain 56)
- UnnamedContract (`0xe47eac8c81ff1157360e3508eda0d31824775e47`, chain 56)
- UnnamedContract (`0x0721edbc7cca13cd7bf23f939a70d95175cb486f`, chain 137)
- UnnamedContract (`0x0877c0927f551b94b859bd01f2dc3a2300ec1f38`, chain 137)
- UnnamedContract (`0x0b45d71af0c9780859a86d8ec0ccf34300ee315e`, chain 137)
- UnnamedContract (`0x0dd522e5a6659e650ca7a7a5690a284794fe97ff`, chain 137)
- UnnamedContract (`0x13b0eac196f794d1f3085ac8f4310b513029f7cc`, chain 137)
- UnnamedContract (`0x1cb3cb208dd81cbdcfae1405a7a7316f9ab3c12b`, chain 137)
- UnnamedContract (`0x1e63e304cd9f2bef6928b70385592e086a79af8a`, chain 137)
- UnnamedContract (`0x208e625ed8254119ebfb22f14b5cfe816e450075`, chain 137)
- UnnamedContract (`0x2546524b0746060298cbdfa172e549dc3dcdbaaf`, chain 137)
- UnnamedContract (`0x27aebfebdd0fde261ec3e1df395061c56eec5836`, chain 137)
- UnnamedContract (`0x61d8f814e5e5d330ec869c8373745bd9a3a9c27a`, chain 137)
- UnnamedContract (`0x6243288c527c15a7b7ed6b892bc2670e05c951f0`, chain 137)
- UnnamedContract (`0x65dc714c95ba1be283e693b47ca3ec0d7b003607`, chain 137)
- UnnamedContract (`0x66093351a818f6fb6e6f2077ee669457cb0e6cce`, chain 137)
- UnnamedContract (`0x76787742e9e56479bf9f6de6c16ebf1ff58478e8`, chain 137)
- UnnamedContract (`0x82aa4db7c1cb85d4c1140ae15f7b7c1079664fea`, chain 137)
- UnnamedContract (`0x8c528f50f2cafcffdeacbd9d1ba9a078027ddf5e`, chain 137)
- UnnamedContract (`0x8ff3148ce574b8e135130065b188960ba93799c6`, chain 137)
- UnnamedContract (`0x9869984a2d5a6b1e152d8c0327bc4a617380812b`, chain 137)
- UnnamedContract (`0x9ff5276efce6c611da32b6eff47ca4ccb5714b33`, chain 137)
- UnnamedContract (`0xa1251eeb1e306f471828ea19069cb5cfb9b5dcec`, chain 137)
- UnnamedContract (`0xa9212e328b4c0d649f8000eb03d842e40eb99728`, chain 137)
- UnnamedContract (`0xb1942d3c3d2dadee1d7c39866bed9880ee266562`, chain 137)
- UnnamedContract (`0xb1f69766991b64121c472b38607063a79bbeeb2a`, chain 137)
- UnnamedContract (`0xb376004aab1fd3aac06cc168950b976f8e6cb516`, chain 137)
- UnnamedContract (`0xc12885af1d4eafb8176905f16d23cd7a33d21f37`, chain 137)
- UnnamedContract (`0xca7e70faf6d6dd14d3d2dbe04690c44536d6c66d`, chain 137)
- UnnamedContract (`0xd3d0e85f225348a2006270daf624d8c46cae4e1f`, chain 137)
- UnnamedContract (`0xd4d8366c5d943ad219176aef31a2c634ee249f57`, chain 137)
- UnnamedContract (`0xe062512c72967faf53d048c0ff60bdf3cee7edcf`, chain 137)
- UnnamedContract (`0xf5eaa5ff25fe48d9f91f05aa517d95e50d142280`, chain 137)
- UnnamedContract (`0xf75d5b35f3ece7e9000d3746797f43e398647c93`, chain 137)
- UnnamedContract (`0xf9856a12f7db6897690c833e85dc77365f9563fd`, chain 137)
- UnnamedContract (`0x30a7c7726dba087c9af3547bde7b2953dfdf06bb`, chain 169)
- UnnamedContract (`0x5fed9c370f3800a790de051b9d6ec4fab8e3f757`, chain 169)
- UnnamedContract (`0x87c7aed3d021c3b2798361bc33b6d427cfa465b5`, chain 169)
- UnnamedContract (`0x9c807f6f6d785e31f4af84722cd5097ab5a87d78`, chain 169)
- UnnamedContract (`0x9cd45b6e33433ed50738f508ad378b567603f61f`, chain 169)
- UnnamedContract (`0x9d9645c761151fa4b390a0e79f63ba356ff1870a`, chain 169)
- UnnamedContract (`0xda0b90cc8655069caff40a6a595f228575f8f9ed`, chain 169)
- UnnamedContract (`0xdfcd6a517c86ede52ef9c7f34ad9e918943ece67`, chain 169)
- UnnamedContract (`0x24dd1eabead7b3cb07b7d162439ec0a4eec703df`, chain 252)
- UnnamedContract (`0x35d6c8800335c739cade2c66be822d0a0057a7df`, chain 252)
- UnnamedContract (`0xbe8e7c5e750124ea690e387eb6ef32e723fd051d`, chain 252)
- UnnamedContract (`0xd2d2a9d446591833b32b3fad2f2b3810cd98b34f`, chain 252)
- UnnamedContract (`0xd6dcc17af74217356cba56aa485b3f0fe8437896`, chain 252)
- UnnamedContract (`0xf32fd742608c237d5a377838fa69837584ca9676`, chain 252)
- UnnamedContract (`0x20157dbabb84e3bbfe68c349d0d44e48ae7b5ad2`, chain 8453)
- UnnamedContract (`0x28d8d6c17ed96b4d15bcbac02040dcdd41678750`, chain 8453)
- UnnamedContract (`0x2a0881a1636d433cebb439e3c7efbf3cef29d700`, chain 8453)
- UnnamedContract (`0x2f4f2dee13ff6597fc57a0d6fd9496722103d4fa`, chain 8453)
- UnnamedContract (`0x47ca96ea59c13f72745928887f84c9f52c3d7348`, chain 8453)
- UnnamedContract (`0x4d69971ccd4a636c403a3c1b00c85e99bb9b5606`, chain 8453)
- UnnamedContract (`0x4e829f8a5213c42535ab84aa40bd4adcce9cba02`, chain 8453)
- UnnamedContract (`0x4e962bb3889bf030368f56810a9c96b83cb3e778`, chain 8453)
- UnnamedContract (`0x53017a5b2c56583e184577578d55ab098b40323d`, chain 8453)
- UnnamedContract (`0x5585d8cc99720f77706b4ae720791b7ad26c5eb8`, chain 8453)
- UnnamedContract (`0x62f607b2add31b32f090943bc28fcc0b4f9b0ce5`, chain 8453)
- UnnamedContract (`0x6b0e1a42030cb62c505c60e808ab945b1396f8e4`, chain 8453)
- UnnamedContract (`0x6e4b3093c38b4a422fa6f4617eab4fa93283a73d`, chain 8453)
- UnnamedContract (`0x70a5e525c88ace896de311f7dd4c46ff62d2c8c2`, chain 8453)
- UnnamedContract (`0x70acdf2ad0bf2402c957154f944c19ef4e1cbae1`, chain 8453)
- UnnamedContract (`0x71d022eba6f2607ab8ec32cb894075d94e10ceb8`, chain 8453)
- UnnamedContract (`0x731f2cdf517b9f8702cb4c3200bb2bd8ecd3c7a7`, chain 8453)
- UnnamedContract (`0x79293082a2bb8c57a81fa101fe64331489ffdd60`, chain 8453)
- UnnamedContract (`0x82321f3beb69f503380d6b233857d5c43562e2d0`, chain 8453)
- UnnamedContract (`0x861a2922be165a5bd41b1e482b49216b465e1b5f`, chain 8453)
- UnnamedContract (`0x8741d5e1b271546b899562d1690b3519f1dc60f5`, chain 8453)
- UnnamedContract (`0x893df22649247ad4e57e4926731f9cf0da344829`, chain 8453)
- UnnamedContract (`0x8bd5e3141a134d3d26b458293ad1c9d56d66fb8a`, chain 8453)
- UnnamedContract (`0x919ae9b1a9370145585d7d6edc61cff0839e7a8a`, chain 8453)
- UnnamedContract (`0x940d74a151bfd827791352d4560cac3a5764a833`, chain 8453)
- UnnamedContract (`0x96e7ca11cd96b705ce8febccadb466fd1245cfea`, chain 8453)
- UnnamedContract (`0x9785ef59e2b499fb741674ecf6faf912df7b3c1b`, chain 8453)
- UnnamedContract (`0x988702fe529a3461ec7fd09eea3f962856709fd9`, chain 8453)
- UnnamedContract (`0x9b6d95c7cf8aff7d799b6dcc35fef76d8167a0dd`, chain 8453)
- UnnamedContract (`0x9ec3d1204d2815cbf26a4a5f8448d5afc42c789b`, chain 8453)
- UnnamedContract (`0xa46f75a6b96f5fb2dcf4296637d97ac0a752cb7a`, chain 8453)
- UnnamedContract (`0xa53e7861527187d9887e64d86c2151316807ace1`, chain 8453)
- UnnamedContract (`0xaafafd305b88d1b987692947e167c447ccbff8ad`, chain 8453)
- UnnamedContract (`0xae8cde18e46a93b0b06a29e35cb61ded411c322e`, chain 8453)
- UnnamedContract (`0xafb62448929664bfccb0aae22f232520e765ba88`, chain 8453)
- UnnamedContract (`0xb17d90ff52077811304d24ba8ce969425815b163`, chain 8453)
- UnnamedContract (`0xb24d945b9d35420aded2ab47ff66ef2492a1c947`, chain 8453)
- UnnamedContract (`0xb2cc224c1c9fee385f8ad6a55b4d94e92359dc59`, chain 8453)
- UnnamedContract (`0xbdb39e6a52a4d91a96e79c7c2dcbd8915ce99c14`, chain 8453)
- UnnamedContract (`0xcba8f910af1c50c9d075dde10f34fdc4f0233d85`, chain 8453)
- UnnamedContract (`0xd17613d91150a2345ece9598d055c7197a1f5a71`, chain 8453)
- UnnamedContract (`0xd4305877ab5dedfc939fa209812c828343a23f83`, chain 8453)
- UnnamedContract (`0xd9ef9874d58719e4f256d96edd2dce19f9c3d3d9`, chain 8453)
- UnnamedContract (`0xdc7ead706795eda3feda08ad519d9452badf2c0d`, chain 8453)
- UnnamedContract (`0xde5ff829fef54d1bdec957d9538a306f0ead1368`, chain 8453)
- UnnamedContract (`0xe846373c1a92b167b4e9cd5d8e4d6b1db9e90ec7`, chain 8453)
- UnnamedContract (`0xe9f4eb4b4c884204a3383fc64481e157bba882aa`, chain 8453)
- UnnamedContract (`0xed8b81e3ff6c54951621715f5992ca52007d88ba`, chain 8453)
- UnnamedContract (`0xf0e36e9186dbe927505d2588a6e6d56083dd4a56`, chain 8453)
- UnnamedContract (`0xf1f6c37fc0d67d1965cac00559e665de5d67fbc3`, chain 8453)
- UnnamedContract (`0xf5d8609c202e84f665679c3625f6dc6b27b70799`, chain 8453)
- UnnamedContract (`0xfecdcca747ad30b2f848b4af9bdc60a364f48410`, chain 8453)
- UnnamedContract (`0x0a974551c45cfb9e002d06b2ab82ae20e800d000`, chain 9745)
- UnnamedContract (`0x3169036c3f79c03c14a7496dd2016f5b059e17d8`, chain 9745)
- UnnamedContract (`0x7696731721dddec1502f35c52d9c83a768227dae`, chain 9745)
- UnnamedContract (`0x841e213864046111e43d237703d71fabe91ef9e0`, chain 9745)
- UnnamedContract (`0xa330cc14988321160fd26d9f202cbd845328b6e2`, chain 9745)
- UnnamedContract (`0xad1b3ea06027df987d1320e1f4d0f1b58230250c`, chain 9745)
- UnnamedContract (`0xbbf9400c09b0f649f3156989f1ccb9c016f943bb`, chain 9745)
- UnnamedContract (`0xc724d3ba28e24e243f653c626f8bea44113b3a0b`, chain 9745)
- UnnamedContract (`0x022a33293aed00e59e93d354d3810249fa33d7d4`, chain 42161)
- UnnamedContract (`0x222fa99c485a088564eb43faa50bc10b2497cdb2`, chain 42161)
- UnnamedContract (`0x40330720039352b309c70a5028322d1481f496d1`, chain 42161)
- UnnamedContract (`0xda1674c1135ea98a311a3b4aa11865266ab52a7c`, chain 42161)
- AaveVault (`0x3af5e4e2e9fae6d994aeeb98fa795dcfc88d23ae`, chain 137)
- AaveVaultGovernance (`0x75e858cf4edaed91cabad4ab50043b18bf181bb0`, chain 1)
- ChainlinkOracle (`0x45ce8c3ddd839f09ab15641176f6b26cbc411130`, chain 137)
- Compounder (`0x69fed68943c0f371dce9702f7874af2a7d05e7b4`, chain 8453)
- CowswapValidator (`0xd2f34dda5be5f88fd4efd16d45a92e80a7f45903`, chain 1)
- CreateStrategyHelper (`0x5b1b1aac71bdca9ed1dcb2aa357f678584db4029`, chain 10)
- CurveValidator (`0xbbfa3f43bed0a379d2ef7d1f5d16dd3a9366eff4`, chain 1)
- DepositWrapper (`0x231002439e1bd5b610c3d98321ea760002b9ff64`, chain 1)
- ENA (`0x57e114b691db790c35207b2e685d4a43181e6061`, chain 1)
- ERC20VaultGovernance (`0x05164ec2c3074a4e8ea20513fbe98790ffe930a4`, chain 137)
- FarmWrapper (`0x0fd566cda6d6a3ae1760e1eebd22ee400cc79655`, chain 1)
- GnosisSafeProxy (`0x002910769444bd0d715cc4c6f2a90d92c5e6695e`, chain 1)
- GnosisSafeProxy (`0x175427a2bda468293ec2f5bee81060c1bd5d586e`, chain 169)
- HStrategy (`0x158b75d163ae46de8c36fb9068df8908417030a8`, chain 137)
- Initializer (`0x39c62c6308bed7b0832cafc2bea0c0edc7f2060c`, chain 1)
- LpWrapper (`0x09636bd5dc37b364e430f4d9c60e0c214aa6ad43`, chain 8453)
- MellowOFT (`0x05e979fdceb5a82f963468a3f1e4c7ccf6957c84`, chain 1)
- MellowOFTAdapter (`0x24e6d68a553ba3146e10cdb06e9db996cea2bbba`, chain 252)
- Migrator (`0x643ed3c06e19a96eabcbc32c2f665db16282beab`, chain 1)
- OracleSubmitter (`0x00000000df0088bd598df1e4ae57943dc481907a`, chain 1)
- PulseStrategy (`0x2683b341a25455619f5ff8511c14b3e760a868ed`, chain 1)
- PulseStrategyModule (`0x734effcb7981b00046a9fcb00d6abd477bbf9684`, chain 8453)
- PulseVeloBotLazy (`0x4b7c2cd551052e2d4516987936d738339dbeffef`, chain 10)
- SafeProxy (`0x0cf4a2db7734aabffd15b34fbe8a760b4eeeb9f4`, chain 1)
- SafeProxy (`0x0cf4a2db7734aabffd15b34fbe8a760b4eeeb9f4`, chain 56)
- SafeProxy (`0x3f31b8ca3fd126abe13931cb6bd9d53d9fbb6235`, chain 56)
- SourceCore (`0x013d1e716eeda3f86756ff22438308ed1d269afb`, chain 252)
- SourceHelper (`0x474dd66474b82dcb770865471964463f7153ba69`, chain 169)
- StakedUSDeV2 (`0x9d39a5de30e57443bff2a8307a4256c8797a3497`, chain 1)
- StakingRewards (`0x0a64501684dd1df7e8c06456dbd324f971848914`, chain 8453)
- TBTC (`0x18084fba666a33d37592fa2633fd49a74dd93a88`, chain 1)
- TokenProxy (`0x57b946008913b82e4df85f501cbaed910e58d26c`, chain 1)
- TransparentUpgradeableProxy (`0x004e9c3ef86bc1ca1f0bb5c7662861ee93350568`, chain 1)
- TransparentUpgradeableProxy (`0x08f39b3d75712148dacdb2669c3eacc7f1152547`, chain 1)
- TransparentUpgradeableProxy (`0x20157dbabb84e3bbfe68c349d0d44e48ae7b5ad2`, chain 1)
- TransparentUpgradeableProxy (`0x3a828c183b3f382d030136c824844ea30145b4c7`, chain 1)
- TransparentUpgradeableProxy (`0x48e69cb6c6f05e194589be37408c5717e7cce1c7`, chain 1)
- TransparentUpgradeableProxy (`0x5e362eb2c0706bd1d134689ec75176018385430b`, chain 1)
- TransparentUpgradeableProxy (`0x64047dd3288276d70a4f8b5df54668c8403f877f`, chain 1)
- TransparentUpgradeableProxy (`0x7f43fde12a40de708d908fb3b9bfb8540d9ce444`, chain 1)
- TransparentUpgradeableProxy (`0x82f5104b23ff2fa54c2345f821dac9369e9e0b26`, chain 1)
- TransparentUpgradeableProxy (`0xc65433845ecd16688eda196497fa9130d6c47bd8`, chain 1)
- UniV2Validator (`0x006d458392c459c16adae4cb53ac8b9199097708`, chain 137)
- UniV3Oracle (`0x1a407175437514694e561d7208a343d78374cfcf`, chain 1)
- VeloDeployFactory (`0x5b1b1aac71bdca9ed1dcb2aa357f678584db4029`, chain 8453)
- VeloDepositWithdrawModule (`0x28c75f34c18937c492545be8fe278ede4dd70043`, chain 8453)
- WBTC (`0x2260fac5e5542a773aa44fbcfedf7c193bc2c599`, chain 1)
- WhitelistedEthWrapper (`0xfd4a4922d1afe70000ce0ec6806454e78256504e`, chain 1)
- WithdrawalQueue (`0x88d282791d7d738cdf998a21310881e8b458bb2b`, chain 252)
- WstETH (`0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0`, chain 1)
- YearnVault (`0x9c95ec6f009987f6ac79ecdd47f166769fc646ce`, chain 1)
- YearnVaultGovernance (`0x2bc5f6c850938d83526110a14d9fc97a6843c127`, chain 137)

## Contract Surface Quality

- Logic-topography rows: 54; live-surface rows included: 54 (53 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 429/702 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 17/49 (34.7%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 429 own, 30 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 374 discovered implementations shown in the inventory but excluded from coverage (30 third-party/infra; 2 standard proxy/library)
- Proxy deployments represented within implementation groups: 44
- Confirmed-live implementations: 429 of 833 unique; 404 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 17/424
- Verified + Unaudited implementations: 407
- Verified by bytecode match: 0
- Unverified implementations: 409
- Unique implementations: 833
- Raw deployments: 839
- Audits discovered: 21 (21 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 13
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 8 fresh, 8 aging, 5 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 19 match-unverified
- Tier 1 coverage: 26.5% (ChainSecurity, Sherlock)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 13 | 3.1% | 2025-02 |
| BlockSec | Tier 2 | 4 | 0.9% | 2022-08 |
| StateMind | Tier 2 | 3 | 0.7% | 2025-01 |
| N/A | Tier 2 | 2 | 0.5% | 2025-11 |
| Decurity | Tier 2 | 1 | 0.2% | 2025-03 |
| Nethermind | Tier 2 | 1 | 0.2% | 2026-03 |
| Pessimistic | Tier 2 | 1 | 0.2% | 2022-12 |
| Sherlock | Tier 1 | 1 | 0.2% | 2025-07 |
| yAudit | Tier 2 | 1 | 0.2% | 2025-06 |

## Contract Surface

### ✅ Verified + Audited (17)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveVault | unknown | project_anchor | own_supporting | 0 | polygon | unit-247087 | `0x3af5e4e2e9fae6d994aeeb98fa795dcfc88d23ae` | ✅ Audited |
| AaveVaultGovernance | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246847 | `0x75e858cf4edaed91cabad4ab50043b18bf181bb0` | ✅ Audited |
| ChainlinkOracle | unknown | project_anchor | own_supporting | 0 | polygon | unit-247088 | `0x45ce8c3ddd839f09ab15641176f6b26cbc411130` | ✅ Audited |
| CowswapValidator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246966 | `0xd2f34dda5be5f88fd4efd16d45a92e80a7f45903` | ✅ Audited |
| CurveValidator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246941 | `0xbbfa3f43bed0a379d2ef7d1f5d16dd3a9366eff4` | ✅ Audited |
| DepositWrapper | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246751 | `0x231002439e1bd5b610c3d98321ea760002b9ff64` | ✅ Audited |
| DVV | unknown | project_anchor | own_supporting | 1 | ethereum | unit-247497 | `0x5e362eb2c0706bd1d134689ec75176018385430b` | ✅ Audited |
| HStrategy | unknown | project_anchor | own_supporting | 0 | polygon | unit-247075 | `0x158b75d163ae46de8c36fb9068df8908417030a8` | ✅ Audited |
| Initializer | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246778 | `0x39c62c6308bed7b0832cafc2bea0c0edc7f2060c` | ✅ Audited |
| Migrator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246827 | `0x643ed3c06e19a96eabcbc32c2f665db16282beab` | ✅ Audited |
| OracleSubmitter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246715 | `0x00000000df0088bd598df1e4ae57943dc481907a` | ✅ Audited |
| TargetCore | unknown | project_anchor | own_supporting | 1 | ethereum | unit-247500 | `0x48e69cb6c6f05e194589be37408c5717e7cce1c7` | ✅ Audited |
| UniV2Validator | unknown | project_anchor | own_supporting | 0 | polygon | unit-247065 | `0x006d458392c459c16adae4cb53ac8b9199097708` | ✅ Audited |
| UniV3Oracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246738 | `0x1a407175437514694e561d7208a343d78374cfcf` | ✅ Audited |
| WhitelistedEthWrapper | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247012 | `0xfd4a4922d1afe70000ce0ec6806454e78256504e` | ✅ Audited |
| YearnVault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246900 | `0x9c95ec6f009987f6ac79ecdd47f166769fc646ce` | ✅ Audited |
| YearnVaultGovernance | unknown | project_anchor | own_supporting | 0 | polygon | unit-247085 | `0x2bc5f6c850938d83526110a14d9fc97a6843c127` | ✅ Audited |

### ⚠️ Verified + Unaudited (407)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveV3TreasuryConnector | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x91eda28735ce089a8b5133476263c3fb8303c8ca` | ⚠️ Unaudited |
| AcreMultiAssetVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a6e0d0189c1d09eb4c63a53693d2be26cafd18d` | ⚠️ Unaudited |
| AddressesWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d00499079d7145163a213ab1443056cce6b0f77` | ⚠️ Unaudited |
| AddressRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xab684ac3e0844713989dae272729a9fac029aeb3` | ⚠️ Unaudited |
| AggregatorV3wstEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3eb81a6763b0576033c4c2197b04b42cbe392939` | ⚠️ Unaudited |
| AllowAllValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x02a563a480fa4c1b8852866b66f71e62b7511bc9` | ⚠️ Unaudited |
| AssetPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21b86fdc93f23fd52022a283828df8e808d28d5d` | ⚠️ Unaudited |
| Auction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xabe0080ea5f7a58b90398b1c87093cc225e33fe1` | ⚠️ Unaudited |
| AuctionBidder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x773a4cacbca8e3704f8f7842531eab83e437b3c4` | ⚠️ Unaudited |
| AuraOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f8211b50c26fc11aa955064b611e42227e6f8ca` | ⚠️ Unaudited |
| AuraVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x548f0034e8646d72c8ff7b46f604788929bc9f0b` | ⚠️ Unaudited |
| AuraVaultGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b81d60dc40f6ca230be5abf5641d4c2e38dba01` | ⚠️ Unaudited |
| BalancerVaultStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe553512f15e0d5550636384c59e3104cf8fe4ae3` | ⚠️ Unaudited |
| Bank | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65fbae61ad2c8836ffbfb502a0da41b0789d9fc6` | ⚠️ Unaudited |
| BasePulseStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c896de0ed46517c8206b82ff7d7824d30892f14` | ⚠️ Unaudited |
| BasePulseStrategyHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c59aae0ee2eeedec34d235feaf91a45ccae2cb5` | ⚠️ Unaudited |
| BasePulseStrategyUpgradable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94ab171819be4a9bb349a34c8f47087d4ffe046f` | ⚠️ Unaudited |
| BasicRedeemHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x00000000176dd23550c3845746b2036e90dc5912` | ⚠️ Unaudited |
| BasicShareManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x00000000e5f0cdda56447b2a29e2847a52c8725d` | ⚠️ Unaudited |
| BatchCall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0347dbe55cbc7dbda46f96e018d7ba20219e5e1f` | ⚠️ Unaudited |
| BatchedPhasedEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b8e50ec9fbf844c3671bc178df8eadfcff831ca` | ⚠️ Unaudited |
| BeaconAuthorization | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x632c2d58ad870fbd4569da0a4e82ddf4b56e83e8` | ⚠️ Unaudited |
| BeaconBackportRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fec9cf78087064f1f32269f68f94ae343ffbfff` | ⚠️ Unaudited |
| BeaconBackportRewardsEscrowBeneficiary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24c0fbd3ff8e742080c60881f8527ca3baf07647` | ⚠️ Unaudited |
| BeaconDkg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x024a697788918007592572f7cd020df2bc2abd84` | ⚠️ Unaudited |
| BeaconDkgValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4edc83c5c5b0c41a594371485554b95280653f94` | ⚠️ Unaudited |
| BeaconInactivity | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67a26f2ebdb2448605936fe9a5f496cda7941ec0` | ⚠️ Unaudited |
| BeaconRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf51807acb3394b8550f0554fb9098856ef5f491` | ⚠️ Unaudited |
| BeaconRewardsEscrowBeneficiary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b15fef1bfa4aff9b51f7b3b2df4d197cde68ff0` | ⚠️ Unaudited |
| BimaBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0de02a2d05a82222cbb98df3eea10cafc8c92c1` | ⚠️ Unaudited |
| BimaCore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x227e9323d692578ca3df92b87d06625df22380ab` | ⚠️ Unaudited |
| BimaPSM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42ad6834a6599a0b7a7812f01f8092b580523d67` | ⚠️ Unaudited |
| BimaToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49ce2eabdeaf65864a9d6542b2de9d384dfaef15` | ⚠️ Unaudited |
| BimaVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4bbfb26a2285b3d5e7406f383a676e78b126799` | ⚠️ Unaudited |
| BimaWrappedCollateralFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76de9b5df6dcaa70f88e4e0949e17367c4129dbf` | ⚠️ Unaudited |
| BitcoinDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04b94f55780682478c8d8329368aaafd320f4d32` | ⚠️ Unaudited |
| BitcoinRedeemer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f2766373e74f268d5dbde32a395eb1c924839a5` | ⚠️ Unaudited |
| BitmaskVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x0000000009e9368ad21fc19dce1cfcf9af6de339` | ⚠️ Unaudited |
| BLS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6552059b6efc6aa4ae3ea45f28ed4d92ace020cd` | ⚠️ Unaudited |
| BondedECDSAKeep | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9e838fcb9295fa44d89d06ed59811ae1a22c105` | ⚠️ Unaudited |
| BondedECDSAKeepFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a7cd8e1384d49f502b4a4ce9ac9eb320835c5d7` | ⚠️ Unaudited |
| BondedSortitionPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c46f496c410465975a427e34a976fc15a2ede4f` | ⚠️ Unaudited |
| BorrowerOperations | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87fed36c032ee7289a1d2f3c48798e4c7fcdfaec` | ⚠️ Unaudited |
| brBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2ec37d45fcae65d9787ecf71dc85a444968f6646` | ⚠️ Unaudited |
| Bridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x265054f72bad343fdee3e018269cbb899e2e2ec5` | ⚠️ Unaudited |
| BridgeFeeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0e628a1c34c92f0aa85af998814ce4f03caa5913` | ⚠️ Unaudited |
| BridgeGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa94dd662e2a247493facceab9f2459aaf90778ee` | ⚠️ Unaudited |
| BridgeGovernanceParameters | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce4b16b81a28d785feeb7b1d56a9b97d450d3443` | ⚠️ Unaudited |
| BridgeLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xb8324885ffe77b2a69f9db4d7917ad2ad1b8f957` | ⚠️ Unaudited |
| brVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1419b48e5c1f5ce413cf02d6dcbe1314170e3386` | ⚠️ Unaudited |
| BurnableTokenizedShareManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000000c79d2b5cd58ae545afc83030233d7b6` | ⚠️ Unaudited |
| BurnerRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00ba6e1fc08d71784d31051257e79720e633651d` | ⚠️ Unaudited |
| CCIPPeer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17ea3dcd055a72b137e6f09cd5f2a1c187908ee1` | ⚠️ Unaudited |
| CelerMinterReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c3f1fe22959b4f6ac2bf2474b3bdf9969465c95` | ⚠️ Unaudited |
| Claimer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25024a3017b8da7161d8c5dccf768f8678fb5802` | ⚠️ Unaudited |
| CLPool | unknown | project_anchor | own_supporting | 0 | base | unit-247256 | `0x2ae9df02539887d4ebce0230168a302d34784c82` | ⚠️ Unaudited |
| Collector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x240fbe0790d5b25366bf88ee14ae8dde72bfe312` | ⚠️ Unaudited |
| CollectorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33134822bb77a4f4d51f01b34debb2a6068a2f18` | ⚠️ Unaudited |
| CollectorV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3db672b06be25c0deef550b82812744938905c10` | ⚠️ Unaudited |
| Compounder | unknown | project_anchor | own_supporting | 0 | base | unit-247344 | `0x69fed68943c0f371dce9702f7874af2a7d05e7b4` | ⚠️ Unaudited |
| Consensus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x000000007e6b679b9196a1609e5bc2405edfd6aa` | ⚠️ Unaudited |
| ConstantAggregatorV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c1418499aa69a08dfbced4243bba7eb90de3d09` | ⚠️ Unaudited |
| ContractRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x07648b9667d7be0929e53c7b9a624e0ae0d274c7` | ⚠️ Unaudited |
| Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca06411bd7a7296d7dbdd0050dfc846e95febeb7` | ⚠️ Unaudited |
| Core | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x30ce7bb58dd3ea6fbe32645f644462479170e090` | ⚠️ Unaudited |
| CoreVaultsCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x551233202dcc8761123c0489c3d59ef602f6bec6` | ⚠️ Unaudited |
| CoveragePool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d7b622c07f216d99efc3efb9cf71872f46d811a` | ⚠️ Unaudited |
| CoveragePoolBeneficiary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22428b09efc87709ab49a77da6f9ce4ffa2ee39b` | ⚠️ Unaudited |
| CreateStrategyHelper | unknown | project_anchor | own_supporting | 0 | optimism | unit-247032 | `0x5b1b1aac71bdca9ed1dcb2aa357f678584db4029` | ⚠️ Unaudited |
| DadFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01c1103d765f62a0d909499d7b615c382cdb072d` | ⚠️ Unaudited |
| DaiFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf07674f6ac6632e253c291b694f9c2e2ed69ebbb` | ⚠️ Unaudited |
| DataCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9135bee71ddc97f39b832e39df9b26d539796216` | ⚠️ Unaudited |
| DebtToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6bede1c6009a78c222d9bdb7974bb67847fdb68c` | ⚠️ Unaudited |
| DefaultBondModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x204043f4bda61f719ad232b4196e1bc4131a3096` | ⚠️ Unaudited |
| DefaultBondStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x378f3ad5f48524bb2cd9a0f88b6aa525bab2cb62` | ⚠️ Unaudited |
| DefaultBondTvlModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48f758bd51555765ebed4fd01c85554bd0b3c03b` | ⚠️ Unaudited |
| DefaultCollateralFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x3f95a719260ce6ec9622bc549c9adcff9edf16d9` | ⚠️ Unaudited |
| DefaultProxyImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x538459eea06a06018c70bf9794e1c7b298694828` | ⚠️ Unaudited |
| DefaultStakerRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x460e5ee46b55795f5a7db7ec82aecf25086b9c09` | ⚠️ Unaudited |
| DelayRedeemRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x720081e3ee2b1542e341afc793de20b08beb859d` | ⚠️ Unaudited |
| Deposit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ac1841a47054e070236f1664991e52c30c04dc5` | ⚠️ Unaudited |
| DepositFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87effef56c7ff13e2463b5d4dce81be2340faf8b` | ⚠️ Unaudited |
| DepositFunding | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62d1286683507939c065c12f2d1e80cca8ccd125` | ⚠️ Unaudited |
| DepositHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5240b32ba23d088369d75d420f675e6beb72b09c` | ⚠️ Unaudited |
| DepositLiquidation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ca5060bf142c58168aedb974aabb020bc081a56` | ⚠️ Unaudited |
| DepositRedemption | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x817c0f6332392ad65d7688ed22f59b227e372323` | ⚠️ Unaudited |
| DepositStates | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8695ff199a1216fc7e2bf97303bf662babae1c80` | ⚠️ Unaudited |
| DepositSweep | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x392635646bc22fc13c86859d1f02b27974ac9b95` | ⚠️ Unaudited |
| DepositUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ad83decf0555945094e5d25129c1f324f212517` | ⚠️ Unaudited |
| DineroTreasuryConnector | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x75ec066efb238cf211baa73b28db539541493c70` | ⚠️ Unaudited |
| directBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11964b366f794ae56717e8efa05d31ab2a09954b` | ⚠️ Unaudited |
| DirectBTCMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x704a2f4de8628e180fffa0e89203468dcc9481ee` | ⚠️ Unaudited |
| DirectStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07a5d37823c5c7963042fab79ed4747ab60eef57` | ⚠️ Unaudited |
| DistributionOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xacaace9fa99cb55340034b720038bb9532aa6bc3` | ⚠️ Unaudited |
| DLCBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25be3edd820a8fce6b8e211f40c5b82ba176994c` | ⚠️ Unaudited |
| DLCManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24b0420c82f1333596ad7bf9d892f2ff70ca4a76` | ⚠️ Unaudited |
| DonationVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa544b70dc6af906862f68eb8e68c27bb7150e672` | ⚠️ Unaudited |
| DSChief | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e2a84d6ade1e7fffee039a35ef5f19f13057152` | ⚠️ Unaudited |
| DSChiefFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e7ca05e174a523709e556080e227f734a8f1483` | ⚠️ Unaudited |
| DSToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x068083069ed92da4c5291dba52d8912abfcc5523` | ⚠️ Unaudited |
| DummyReporter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5475ae8be6f0e68db9245eaacf3a85e021e469ba` | ⚠️ Unaudited |
| DummyReporterTheoriq | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ce9e5502fe1ae53a714f4a47c36fdc28bc3b290` | ⚠️ Unaudited |
| ECDSABackportRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9ca1abe343515312eb6d13178c5a2dce3c036fa` | ⚠️ Unaudited |
| ECDSABackportRewardsEscrowBeneficiary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82ab5f02993bf312d9aca03157f26febebc76108` | ⚠️ Unaudited |
| EcdsaDkgValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0125c8977a02b2fa3970b1ed9af02f5bedd4ef27` | ⚠️ Unaudited |
| EcdsaInactivity | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8263efcb8f28246697585c89fed0501cd946f764` | ⚠️ Unaudited |
| ECDSARewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5ac5a8892230e0a3e1c473881a2de7353ffca88` | ⚠️ Unaudited |
| ECDSARewardsDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b9e48f8818962699fe38f5989b130cee691bbb3` | ⚠️ Unaudited |
| ECDSARewardsDistributorEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa77ec9c89a0c889bcb05d15df42d49b706952042` | ⚠️ Unaudited |
| ECDSARewardsEscrowBeneficiary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x037a91d627cdbdd5ae20d6912fa15ae29b5efb84` | ⚠️ Unaudited |
| EigenLayerVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00000003f82051a8b2f020b79e94c3dc94e89b81` | ⚠️ Unaudited |
| EigenLayerWstETHAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xb91f8965e57041b3f7a1a274661bb62c34d563d6` | ⚠️ Unaudited |
| ENA | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246810 | `0x57e114b691db790c35207b2e685d4a43181e6061` | ⚠️ Unaudited |
| ENAOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a327e7afc4a352433a7124791e1f04a6886b683` | ⚠️ Unaudited |
| ERC20RootVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x00ac9da14c236e1f086feccef2e468768c15ec07` | ⚠️ Unaudited |
| ERC20RootVaultGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x052485d2b2e9ecf2cf21ecbdf1733e023f4e73f8` | ⚠️ Unaudited |
| ERC20RootVaultHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x14034a6f284f2ede2b625d4737ea0e1db8fe0e30` | ⚠️ Unaudited |
| ERC20TvlModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca60f449867c9101ec80f8c611eab39afe7bd638` | ⚠️ Unaudited |
| ERC20Validator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x02b771d9df4f3d7b558d13623d93e1f917f55d63` | ⚠️ Unaudited |
| ERC20Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x02a7f089c9f104d134f215197c61552120e68447` | ⚠️ Unaudited |
| ERC20VaultGovernance | unknown | project_anchor | own_supporting | 0 | polygon | unit-247066 | `0x05164ec2c3074a4e8ea20513fbe98790ffe930a4` | ⚠️ Unaudited |
| ERC20Verifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x00000000acd80376e999af8c424e5e33bd224a08` | ⚠️ Unaudited |
| ExporterDataCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ad64e6a4f6ef8c32a5abdeea8b027d6ce197917` | ⚠️ Unaudited |
| ExternalRequestsCoordinator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36c9b5e8f039381d1da79b94a206af8bc076c043` | ⚠️ Unaudited |
| ExternalRequestsManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10f4d4ead6bcd4de7849898403d88528e3dfc872` | ⚠️ Unaudited |
| ExternalRequestsManagerBetaV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x052b1cacbdea7b4d711c6f428a20618ef60fda1b` | ⚠️ Unaudited |
| Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x0000000072bafceaff1ad0237ea58f06cfc4467f` | ⚠️ Unaudited |
| FarmWrapper | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246727 | `0x0fd566cda6d6a3ae1760e1eebd22ee400cc79655` | ⚠️ Unaudited |
| FBTCProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3a30f627dbc02aff3c0a736a065443a0e85b1ae` | ⚠️ Unaudited |
| FeeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x00000000c18039e1f415fe07c33a316232238648` | ⚠️ Unaudited |
| FeeRebateToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf3fff06b75f99352d8c2a3c4bef1339a2f94789` | ⚠️ Unaudited |
| FEOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5250ae8a29a19df1a591cb1295ea9bf2b0232453` | ⚠️ Unaudited |
| FiatToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8cbde23b1416cac07a52591bba744c744d77a91a` | ⚠️ Unaudited |
| FiatTokenUtil | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6315aa908c50376d1028412c028aa0629f0355a6` | ⚠️ Unaudited |
| FiatTokenV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0882477e7895bdc5cea7cb1552ed914ab157fe56` | ⚠️ Unaudited |
| FiatTokenV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7277a6e95992041568d9391d09d0122023778a2` | ⚠️ Unaudited |
| FiatTokenV2_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2327a938febf5fec13bacfb16ae10ecbc4cbdcf` | ⚠️ Unaudited |
| FiatTokenV2_2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48` | ⚠️ Unaudited |
| FlashLoanArbitrage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8ffc3a54ab700f94b111904853893f4b24f0d87b` | ⚠️ Unaudited |
| Fraud | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51bbef1c7cc3a1d3bc5e64ce6c3ba6e66fba3559` | ⚠️ Unaudited |
| FundingScript | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94c70c36b519e03705ddc26982d438f71993d063` | ⚠️ Unaudited |
| GasPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbf15324c5838aefe6731077c55adc85bdae8b89` | ⚠️ Unaudited |
| GasPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c0a348500638aace229d6868c26b4e64fe46ab3` | ⚠️ Unaudited |
| GearboxDepositHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d711c0259b2a8fea90439559eca50fccee4712a` | ⚠️ Unaudited |
| GearboxHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11ab305016d90611cf35e1a976f9cd56d6a32c41` | ⚠️ Unaudited |
| GearboxOperator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07cb254b6a848440be3e18a63fb13d5ca5fbe26c` | ⚠️ Unaudited |
| GearboxRootVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f22602d6db68b576784a560b42eff9b32bfd16e` | ⚠️ Unaudited |
| GearboxVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1802cd8a33156709dddf0730b02b868223d31ed1` | ⚠️ Unaudited |
| GearboxVaultGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x131101d3175156efb21d9af753b18c24079ca7e9` | ⚠️ Unaudited |
| GearValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7d0b2cb3021174d8f9faef3fa3831af3daa74a5` | ⚠️ Unaudited |
| GemFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x431e935209d79706b5866eb42137a3491d845692` | ⚠️ Unaudited |
| GemPit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69076e44a9c70a67d5b79d95795aba299083c275` | ⚠️ Unaudited |
| GGVOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xceed1b69e3418308c240c7575fe65b9723834ea4` | ⚠️ Unaudited |
| GnosisSafe | unknown | project_anchor | own_supporting | 1 | ethereum | unit-247504 | `0x002910769444bd0d715cc4c6f2a90d92c5e6695e` | ⚠️ Unaudited |
| GnosisSafeL2 | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x2e93913a796a6c6b2bb76f41690e78a2e206be54` | ⚠️ Unaudited |
| GnosisSafeProxy | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-247164 | `0x175427a2bda468293ec2f5bee81060c1bd5d586e` | ⚠️ Unaudited |
| GovernanceTester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87f1e73367f406a6546b34ed3781db6e86f57eae` | ⚠️ Unaudited |
| GrantStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02612d20cc087670a959bb12ca3c5fd56c8a3db3` | ⚠️ Unaudited |
| HStrategyHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xadf65e524ecbc6dc3077047a977349f65ab4e88e` | ⚠️ Unaudited |
| Hypernative | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e856c929555bfc85f5031d44fac6a21af31c52d` | ⚠️ Unaudited |
| IBTC | unknown | project_anchor | own_supporting | 1 | ethereum | unit-247503 | `0x20157dbabb84e3bbfe68c349d0d44e48ae7b5ad2` | ⚠️ Unaudited |
| IncentiveVoting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5587416ef31da806948e6975c377844f5eddb7a8` | ⚠️ Unaudited |
| InchDepositWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd64deeebcb6c108abcb42a3c6ca60c6770d4cd44` | ⚠️ Unaudited |
| InstantFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7051126223a559e3500bd0843924d971f55f0533` | ⚠️ Unaudited |
| IsSafeWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde14e027e18806e312cb02423a098cd001c257a8` | ⚠️ Unaudited |
| KeepBonding | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27321f84704a599ab740281e285cc4463d89a3d5` | ⚠️ Unaudited |
| KeepFactorySelection | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29fa8f46cbb9562b87773c8f50a7f9f27178261c` | ⚠️ Unaudited |
| KeepRandomBeaconOperator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf708431162ba247ddae362d2c919e0fbafcf9de` | ⚠️ Unaudited |
| KeepRandomBeaconOperatorStatistics | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3975ce253ff9d586cf08c3898f95064b7a5718e7` | ⚠️ Unaudited |
| KeepRandomBeaconServiceImplV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09959798b95d00a3183d20fac298e4594e599eab` | ⚠️ Unaudited |
| KeepTokenGeyserRewardsEscrowBeneficiary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06b5869aadcf3fa9a2733dd93d4240a6d813fd7d` | ⚠️ Unaudited |
| KeepVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf00dac2be1250cf62cbfc617ee7bc45c0016c87` | ⚠️ Unaudited |
| KyberHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b0f7fc3ddc5e95a810898075d792247d9f0b86c` | ⚠️ Unaudited |
| KyberVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90e2bc3ddbcd0432c8c98c552d33fdddea35c2dc` | ⚠️ Unaudited |
| KyberVaultGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x681e368136046565caa1fd9b18172868fbe24c08` | ⚠️ Unaudited |
| LidoDepositHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000065d1a7bd71f52886910aabe6555b7317c` | ⚠️ Unaudited |
| LidoTreasuryConnector | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xb63a5eb2f20cd7a2ee9b1421fc06059cf7b048a7` | ⚠️ Unaudited |
| LightRelay | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x836cdfe63fe2d63f8bdb69b96f6097f36635896e` | ⚠️ Unaudited |
| LightRelayMaintainerProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ca2f6206da1a7cb8155fea68797efdf25efa3c8` | ⚠️ Unaudited |
| LiquidationManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d3b9e988470d14a81b9965e4e5229aae06b73ba` | ⚠️ Unaudited |
| Locks | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c84a8f1c29108f47a79964b5fe888d4f4d0de40` | ⚠️ Unaudited |
| LPOptimiserStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91ad66461bcee31339a36a83cbca18f0e4369891` | ⚠️ Unaudited |
| LPRewardsKEEPETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47a5f2ffdf66d13ed7e317581f458d09b49d6f44` | ⚠️ Unaudited |
| LPRewardsTBTCSaddle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78aa83bd6c9de5de0a2231366900ab060a482edd` | ⚠️ Unaudited |
| LPRewardsTBTCv2Saddle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ad9e8e5236c0e2cf6d755bb7be4eabcbc03f76d` | ⚠️ Unaudited |
| LpWrapper | unknown | project_anchor | own_supporting | 0 | base | unit-247231 | `0x09636bd5dc37b364e430f4d9c60e0c214aa6ad43` | ⚠️ Unaudited |
| LStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c1fa7b32b67c66583254d08e839adfce06c055d` | ⚠️ Unaudited |
| LStrategyHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17d3a50b1ba002b02a1daaf948637299d40ef651` | ⚠️ Unaudited |
| LUSDOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f15b86cb4cfa39a9cd407616078fbf903a41535` | ⚠️ Unaudited |
| MaintainerProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x535e01f948458e0b64f9db2a01da6f32e240140f` | ⚠️ Unaudited |
| ManagedRatiosOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1437dcca4e1442f20285fb7c11805e7a965681e2` | ⚠️ Unaudited |
| ManagedValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fd0a7184f91510deecd7722d297439da386c872` | ⚠️ Unaudited |
| MasterChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe05de631122d95ef347f6fca85d1bb149fcc6df2` | ⚠️ Unaudited |
| MasterMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x566c11b5c2201b69c9269fe924e4395873674335` | ⚠️ Unaudited |
| MellowAccountV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x00000000860913f37fab81ce8ce4e5bd1f664482` | ⚠️ Unaudited |
| MellowOFT | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246721 | `0x05e979fdceb5a82f963468a3f1e4c7ccf6957c84` | ⚠️ Unaudited |
| MellowOFTAdapter | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-247186 | `0x24e6d68a553ba3146e10cdb06e9db996cea2bbba` | ⚠️ Unaudited |
| MellowOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0667d042cb57091a30e2ea38b194f09036d73447` | ⚠️ Unaudited |
| MellowStakingPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5377e320fc58a639780ac6741b7de461609cc461` | ⚠️ Unaudited |
| MellowSymbioticVault | unknown | project_anchor | own_supporting | 1 | ethereum | unit-247498 | 2 deployments: ethereum `0x04e0581f5c7b1f760a5245fb58600840f03a3db9`; ethereum `0x08f39b3d75712148dacdb2669c3eacc7f1152547` | ⚠️ Unaudited |
| MellowVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0104bbf0d2eb4b6ffa6deffceafce1096af82911` | ⚠️ Unaudited |
| MellowVaultCompat | unknown | project_anchor | own_supporting | 5 | ethereum | unit-247499 (5 proxies) | 6 deployments: ethereum `0x09bba67c316e59840699124a8dc0bbda6a2a9d59`; ethereum `0x3a828c183b3f382d030136c824844ea30145b4c7`; ethereum `0x64047dd3288276d70a4f8b5df54668c8403f877f`; ethereum `0x7f43fde12a40de708d908fb3b9bfb8540d9ce444`; ethereum `0x82f5104b23ff2fa54c2345f821dac9369e9e0b26`; ethereum `0xc65433845ecd16688eda196497fa9130d6c47bd8` | ⚠️ Unaudited |
| MellowVaultGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x02c4daa3810f5bd94e84c20ee3d78d3de64d926f` | ⚠️ Unaudited |
| Members | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e8640574aa764763291ed733672d3a105107ac5` | ⚠️ Unaudited |
| MezoAllocator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e1d7ea6c2f5a39e90a21450a57269ca50e2b5df` | ⚠️ Unaudited |
| MezoBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1af817c36708fd0d057c87a51c92fbb0e527d1f5` | ⚠️ Unaudited |
| MomFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x141a206ece672e3198086c5d21f7858ad03669ea` | ⚠️ Unaudited |
| MovingFunds | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3106675ede4a64d70131247466fd8704a3d42123` | ⚠️ Unaudited |
| MPondLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b1f6acab2bfb0b72d61c7be8455f0d5f72c617c` | ⚠️ Unaudited |
| MStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0f2641e0c03b5dda5fbb979b4869147220ca41f8` | ⚠️ Unaudited |
| msUSDOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcca5532b0aff8c3875c889c08fd458615fb37472` | ⚠️ Unaudited |
| Multicall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba610d8c8c93580c19fb8800fc406227de8df947` | ⚠️ Unaudited |
| MultiCollateralHintHelpers | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a62989d451c4f359a30bfcece51da8a313dd490` | ⚠️ Unaudited |
| MultiTroveGetter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42186eefc0e6d7e3cfb82f3845671ef1600dcf6b` | ⚠️ Unaudited |
| MultiVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x00464cc86244aceceb827e66719998c40f95f462` | ⚠️ Unaudited |
| MUSDOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb844a4de9bfc50dc988cb3231083b804dfdb541` | ⚠️ Unaudited |
| NetworkMiddleware | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f8625c2a9bc9770bcfe06aae1fcdd479fa60b83` | ⚠️ Unaudited |
| NetworkRestakeDelegator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02129f8639374ee5cf154b2f8427c6d9d2a3b27c` | ⚠️ Unaudited |
| NoOp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d5b85d4099958de09fee8bc252a546b42590daf` | ⚠️ Unaudited |
| NttManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x075108f275ed81c9cfc01065e6e50ceea81d6363` | ⚠️ Unaudited |
| OHMOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87e92a98f590d243d291afae822bc0523e141447` | ⚠️ Unaudited |
| OlympusConcentratedStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e7900eb386fabc74f7b166ffda693cb03326dfe` | ⚠️ Unaudited |
| OlympusStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ec09dc83080a17de87ae0bd22097f360e078cf7` | ⚠️ Unaudited |
| OmniCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d8c5795d87d3a227dd8c28d89f0dfae7489b4de` | ⚠️ Unaudited |
| OnDemandSPV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1531b6e3d51bf80f634957df81a990b92da4b154` | ⚠️ Unaudited |
| OneSidedDepositWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2ef057b5d99e8cc70073f4be29f6c49c92cac6b` | ⚠️ Unaudited |
| OperatorSpecificDelegator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x250798d35c07ac093cfaadd11f259ae5cd5cc5c2` | ⚠️ Unaudited |
| OptStrategyBotV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2890b95cd001bd47b3338390e39ee3e5dc213cb4` | ⚠️ Unaudited |
| Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x000000009ade4dae1f868775a3f087945983f062` | ⚠️ Unaudited |
| OracleFactory | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-246834 | `0x686f660274b448f9905e329adf336b5dfd5e351f` | ⚠️ Unaudited |
| OracleHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000005f543c38d5ea6d0bf10a50974eb55e35` | ⚠️ Unaudited |
| OutsourceDepositLogging | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x478409d856cd759cbfaa6639d88b7cdcb8ec29ed` | ⚠️ Unaudited |
| PancakeFeesCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6bf0bc493eb0f5856eec35fa8b1944f1b4527e2` | ⚠️ Unaudited |
| PancakeSwapHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31cbfa956a75b6df87f8387e62ea5f9dc7d4efd9` | ⚠️ Unaudited |
| PancakeSwapMerklHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c07b3a4e59b75b11fff1d0cf54e635b043cf04e` | ⚠️ Unaudited |
| PancakeSwapMerklPulseStrategyV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x215795f035096320ad1b5e85c80365138bffe2d0` | ⚠️ Unaudited |
| PancakeSwapMerklVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2dd38ec5e5a55a9eb5d932f0f0af5416277b7517` | ⚠️ Unaudited |
| PancakeSwapMerklVaultGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x459d212ed6821d2a90d64a44673f239e5995fb33` | ⚠️ Unaudited |
| PancakeSwapPulseStrategyV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x11669e470affed8f93830636ab49ba6fe09b8df7` | ⚠️ Unaudited |
| PancakeSwapPulseV2Helper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8bc60087ca542511de2f6865e4257775cf2b5ca8` | ⚠️ Unaudited |
| PancakeSwapVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ef878787af783f8aca01d394b2288714590f4e0` | ⚠️ Unaudited |
| PancakeSwapVaultGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0810b657477d1577d7f7070481a4ef67569b8cb6` | ⚠️ Unaudited |
| Payment | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x552b0c6688fcae5cf0164f27fd129b882a42fa05` | ⚠️ Unaudited |
| PhasedEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x964d45256c73df0239a26216cec155d7e12ec157` | ⚠️ Unaudited |
| PlainTransferEscrowBeneficiary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fa3ef45137c3aff337e42f98023c1d7dd3666c0` | ⚠️ Unaudited |
| PodOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ac774014e2306dbddac4af7cb0f80087de76f52` | ⚠️ Unaudited |
| Portal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b459cae3f5f91469b910a8811723606b2ddeafd` | ⚠️ Unaudited |
| PriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b248f3646755f5b71a66bae8c55c568809cbff2` | ⚠️ Unaudited |
| ProtocolGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x00d91571c99a218bbcb5daad4c1d9dd6ed428d05` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0375178c4d752b3ae35d806c6bb60d07faecba5e` | ⚠️ Unaudited |
| Puller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72d9edbc6ef3574a3ddd3c9965688fc659c74a95` | ⚠️ Unaudited |
| PulseStrategy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246757 | `0x2683b341a25455619f5ff8511c14b3e760a868ed` | ⚠️ Unaudited |
| PulseStrategyModule | unknown | project_anchor | own_supporting | 0 | base | unit-247368 | `0x734effcb7981b00046a9fcb00d6abd477bbf9684` | ⚠️ Unaudited |
| PulseStrategyV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5050b4262d95d473c782d5bbbb574a50aa7e9611` | ⚠️ Unaudited |
| PulseStrategyV2Helper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0729742d219276ed4c1b004d700291a06acd5aea` | ⚠️ Unaudited |
| PulseVeloBotLazy | unknown | project_anchor | own_supporting | 0 | optimism | unit-247027 | `0x4b7c2cd551052e2d4516987936d738339dbeffef` | ⚠️ Unaudited |
| RandomBeacon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5499f54b4a1cb4816eefcf78962040461be3d80b` | ⚠️ Unaudited |
| RandomBeaconChaosnet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf23fc18ece6afe7fb57ba59979e8600bb4b0294a` | ⚠️ Unaudited |
| RandomBeaconGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0a3088ed9fff4357b79cd3896bd38876fcb1c63` | ⚠️ Unaudited |
| RatiosStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3aa61e6196fb3eb1170e578ad924898624f54ad6` | ⚠️ Unaudited |
| RebalanceWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe9d760c7368548a75804578b9893f018bdebdf3` | ⚠️ Unaudited |
| Redeem | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6882ae88956f676a15efe3e9f920aabaaa57497d` | ⚠️ Unaudited |
| RedeemQueue | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000000c139266ba06170ed1deaca6d11903c1` | ⚠️ Unaudited |
| Redemption | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d807e9ce1ef73048fee9a4214e75e894ea25914` | ⚠️ Unaudited |
| RedemptionScript | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0972e6062eac0fe8686d82ea010504066dadb887` | ⚠️ Unaudited |
| RedemptionWatchtower | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xb8df0a949ac45ff8f401553a1dcb742feb38e6d3` | ⚠️ Unaudited |
| RedirectingDepositHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x0000000024abbd08686abb2987831dea88ef1180` | ⚠️ Unaudited |
| ReimbursementPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x369fce62b33512b2a883cf217635ee28dd17f9cc` | ⚠️ Unaudited |
| Reservoir | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf911f2f5b5e4b12bb2d5cbdcec717d3c6222bbc3` | ⚠️ Unaudited |
| ResolvStakingV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf1762fdbb06e8ee715ae59495b2bf14fb1649df` | ⚠️ Unaudited |
| Restaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04f744f99ea5c588a8a31906d5b5c91cabb7b5c0` | ⚠️ Unaudited |
| RETHOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc839b7c8fca7f7211b11b878ca2466250f069bad` | ⚠️ Unaudited |
| RewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32a07be243ac4ea140b6fef69e3aa44d59f39f7a` | ⚠️ Unaudited |
| RewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29b06ce31449a9f89719137a705cff395450a415` | ⚠️ Unaudited |
| RiskManagerV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2355d701d8d85ed161ab66a0a7e759c463f62b30` | ⚠️ Unaudited |
| RlpPriceAggregatorV3Interface | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e35e7b1e03a37e40b0f1a4ee27813fe2d474ecb` | ⚠️ Unaudited |
| RlpPriceStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03f75a4dce6a2aa260d98d10c2c606e5bcfff85c` | ⚠️ Unaudited |
| RlpUpOnlyPriceStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x093285c34515c01a55e15a25812bcf87e7ab0dc6` | ⚠️ Unaudited |
| RockXETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3376ebca0a85fc8d791b1001a571c41fdd61514a` | ⚠️ Unaudited |
| RockXRedeem | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3774af7bb6e792963167588ae85b5ab8664ba818` | ⚠️ Unaudited |
| RockXRestaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x351eea2c8de2f7f1fb4cf08aa9423cec4269a098` | ⚠️ Unaudited |
| RockXStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x02e3e2c644601b18ad67a6f09155fe5581af25ea` | ⚠️ Unaudited |
| rstETHPlusTestCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e81941f09454f7d3bfe493bc88cdec642f22a0d` | ⚠️ Unaudited |
| Safe | unknown | project_anchor | own_supporting | 1 | ethereum | unit-247501 | `0x0cf4a2db7734aabffd15b34fbe8a760b4eeeb9f4` | ⚠️ Unaudited |
| SafeL2 | unknown | project_anchor | own_supporting | 1 | bsc | unit-247506 | `0x3f31b8ca3fd126abe13931cb6bd9d53d9fbb6235` | ⚠️ Unaudited |
| SafeProxy | unknown | project_anchor | own_supporting | 0 | bsc | unit-247205 | `0x0cf4a2db7734aabffd15b34fbe8a760b4eeeb9f4` | ⚠️ Unaudited |
| ShitcoinOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41d0d82c3499912fc2428ee27f861dec7efbefb7` | ⚠️ Unaudited |
| Sigma | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18d0d914913ac720a6421cc809f3f44697d021b5` | ⚠️ Unaudited |
| SignatureDepositQueue | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x000000000af33501e5bdaf9b481ad2712a024727` | ⚠️ Unaudited |
| SignatureRedeemQueue | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x000000008d14ef3658805765107d9f12776f4138` | ⚠️ Unaudited |
| SignerBondsManualSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43faf6fe84e01dd186cfeb9ea2f0854a1ef7442f` | ⚠️ Unaudited |
| SimpleOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14219845c6b7984aa5ec0a39754dcc327169de32` | ⚠️ Unaudited |
| SimpleToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35533f54740f1f1aa4179e57ba37039dfa16868b` | ⚠️ Unaudited |
| SingleVaultStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09c60d0d393924007dafe560fe279d13397e43ab` | ⚠️ Unaudited |
| SortedTroves | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x870a108234dee42a9fa01c36368e5e4ea3c56b4a` | ⚠️ Unaudited |
| SortitionPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e4cba3779d56386ed43631b4dcd6d8eacecbcf6` | ⚠️ Unaudited |
| SourceCore | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-247183 | `0x013d1e716eeda3f86756ff22438308ed1d269afb` | ⚠️ Unaudited |
| SourceHelper | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-247167 | `0x474dd66474b82dcb770865471964463f7153ba69` | ⚠️ Unaudited |
| StabilityPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f2283c7c8967c5fb3a959e63ea89865b882d627` | ⚠️ Unaudited |
| StakedENA | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7fd57b46ae1a7b14f6940508381877ee03e1018b` | ⚠️ Unaudited |
| StakedTokenDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53c5b703465234f97c5a7b17b602c6224a08031e` | ⚠️ Unaudited |
| StakedUsbd | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15ba049b9481e8c30531f736b58609b8aa1d1eef` | ⚠️ Unaudited |
| StakedUsbdOftAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x450bd4e955ee33ff42bf9dff84dbbb301ce0b42f` | ⚠️ Unaudited |
| StakedUSDeV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246903 | `0x9d39a5de30e57443bff2a8307a4256c8797a3497` | ⚠️ Unaudited |
| StakerRewardsBeneficiary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb59f486135145ad247b82f9cdf52be4a58a0b81` | ⚠️ Unaudited |
| Staking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4befa2aa9c305238aa3e0b5d17eb20c045269e9d` | ⚠️ Unaudited |
| StakingDepositWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b8058fa941835d5f287680d2f569935356b9730` | ⚠️ Unaudited |
| StakingModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x048408944dc91720fda3a3059540227bd707705f` | ⚠️ Unaudited |
| StakingPoolRewardsEscrowBeneficiary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x118b7642b91bcf02c565a3c417534e29e4069bd8` | ⚠️ Unaudited |
| StakingPortBacker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x236aa50979d5f3de3bd1eeb40e81137f22ab794b` | ⚠️ Unaudited |
| StakingRewards | unknown | project_anchor | own_supporting | 0 | base | unit-247234 | `0x0a64501684dd1df7e8c06456dbd324f971848914` | ⚠️ Unaudited |
| stBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xdf217efd8f3ecb5e837aedf203c28c1f06854017` | ⚠️ Unaudited |
| strETHOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x030326da079bb84451351effbe7f897fab0499e5` | ⚠️ Unaudited |
| StUSR | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0da21d330f3f75d730a1b5f1535ca75061cabf61` | ⚠️ Unaudited |
| Subvault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x00000000ca30010b8417f791250ae221fdad5920` | ⚠️ Unaudited |
| sUSDeOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc766f2f2a6044727926090ef781be2efa098b8ea` | ⚠️ Unaudited |
| SwapModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0000000022b540fe06d7a9c32d81163971b583d6` | ⚠️ Unaudited |
| Symbiosis | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd38bb40815d2b0c2d2c866e0c72c5728ffc76dd9` | ⚠️ Unaudited |
| SymbiosisTokenVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ef7dd4d7782c27a4c509585db60695d8c7231bf` | ⚠️ Unaudited |
| SymbioticVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00000000cbc6f5d4348496ffa22cf014b9da394b` | ⚠️ Unaudited |
| SymbioticWithdrawalQueue | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0c3e33e133e715aec43b74bd5bf8732b0775e08a` | ⚠️ Unaudited |
| SyncDepositQueue | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000000b98f77a017b5d3468400c5c597a3bde` | ⚠️ Unaudited |
| SyrupUSDCOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8e29252b1f65a6ef5a9f389c2d0b20716623ad0` | ⚠️ Unaudited |
| T | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcdf7028ceab81fa0c6971208e83fa7872994bee5` | ⚠️ Unaudited |
| TapFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x521c420c2a2b461034becbb41d4888b68951f14f` | ⚠️ Unaudited |
| TargetHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4bc3c56a526ec108ea6ffa28f18f5161b675c961` | ⚠️ Unaudited |
| TBTC | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246736 | `0x18084fba666a33d37592fa2633fd49a74dd93a88` | ⚠️ Unaudited |
| TBTCConstants | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63a152ea1cd78ac3c7c1fcf1322dc6de1126750d` | ⚠️ Unaudited |
| TBTCDepositToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10b66bd1e3b5a936b7f8dbc5976004311037cdf0` | ⚠️ Unaudited |
| tBTCOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8ac6dcecaa570680abcd9ce833051ecda62c812` | ⚠️ Unaudited |
| TBTCSystem | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe20a5c79b39bc8c363f0f49adcfa82c2a01ab64a` | ⚠️ Unaudited |
| TBTCVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52818e501612d3c5b37b5f9b83b024342c277fd4` | ⚠️ Unaudited |
| TheCounter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa27a69ae180e202fde5d38189a3f24fe24e55861` | ⚠️ Unaudited |
| TicksFeesReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x622535dfe61d603d88c220c17998d60629e4ddac` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x290d9544669c9c7a64f6899a0a3b28d563f6ebee` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01327cae0ced4443fbe7681fd3923dd1c43c1408` | ⚠️ Unaudited |
| TokenizedShareManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x00000000861e8b90b81f35c18ca14858cc91d1df` | ⚠️ Unaudited |
| TokenLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09a028587705b49fa162671d2507567cfef75bf7` | ⚠️ Unaudited |
| TokenLogic | unknown | project_anchor | own_supporting | 1 | ethereum | unit-247502 | `0x57b946008913b82e4df85f501cbaed910e58d26c` | ⚠️ Unaudited |
| TokenStakingEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda534b567099ca481384133bc121d5843f681365` | ⚠️ Unaudited |
| TokenVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3086ac03b0347bee2ce3fd9079452db13fc76827` | ⚠️ Unaudited |
| TopFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0eda20f7499aae7bdadc4e52fd72e49663733ed4` | ⚠️ Unaudited |
| TopUps | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41c9b5639e3f2f6c61e9b78b2c6ff3746e79d91a` | ⚠️ Unaudited |
| TransferProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0ab759d3a1a4956e8c3c52c71ccb50f20bc342b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x5f73c0260adc537856914b9b3da64ee87257e76c` | ⚠️ Unaudited |
| Treasury | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xacb7027f271b03b502d65feba617a0d817d62b8e` | ⚠️ Unaudited |
| TreasuryIntermediateEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84b883f8833e7eefd17b6a5e4e885b22f4acfed6` | ⚠️ Unaudited |
| TroveManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ed4f24f71ffbfba5109be1ed13c83b7cc657938` | ⚠️ Unaudited |
| TroveManagerGetters | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e26de999ff1a1c39f44ba642e3b2f0e0cd7b1b1` | ⚠️ Unaudited |
| TubFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3b67099121e1fbde6276b2802048d1a7dd1b987` | ⚠️ Unaudited |
| UnderwriterToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x007854fdcc9c6f748b435e63745599fb1a0df843` | ⚠️ Unaudited |
| uniBTC | unknown | project_anchor | own_supporting | 1 | ethereum | unit-247505 | `0x004e9c3ef86bc1ca1f0bb5c7662861ee93350568` | ⚠️ Unaudited |
| uniBTCRate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe542919e4b281f10b437f947c8ba224ddfabc716` | ⚠️ Unaudited |
| UniV2Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x02a74dcd6ba8eade6308df6bd71a3095b1c5645f` | ⚠️ Unaudited |
| UniV3Helper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x021cf3e1bfc6f277bf6683157c8951b385af34f0` | ⚠️ Unaudited |
| UniV3MEVProtection | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6d431838be4f1a2f0cb15b2a26f12cd3e1e4f24` | ⚠️ Unaudited |
| UniV3PoolOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb00b7023d92cbacf0201aaa6d4bf5b5203430663` | ⚠️ Unaudited |
| UniV3Validator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0347ed7f979bf1b48f57d32b8f056ce881717d73` | ⚠️ Unaudited |
| UniV3Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x047876989e579a5a2e209dc1a853c8c08af85a78` | ⚠️ Unaudited |
| UniV3VaultConfigurable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c172b6fdec5ca1e2fd30ad35b785ffac03970e2` | ⚠️ Unaudited |
| UniV3VaultConfigurableGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17af7e1a3737c0197cb4761a1807db01c8903a89` | ⚠️ Unaudited |
| UniV3VaultGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x09f87378b46778e6b491bcae05510ab7c41e6ada` | ⚠️ Unaudited |
| USDe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c9edd5852cd905f086c759e8383e09bff1e68b3` | ⚠️ Unaudited |
| UsrExternalRequestsManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac85ef29192487e0a109b7f9e40c267a9ea95f2e` | ⚠️ Unaudited |
| USRPriceAggregatorV3Interface | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a93414f88f597922a9829df5f7c94b81bc46f64` | ⚠️ Unaudited |
| UsrPriceStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x7f45180d6ffd0435d8dd695fd01320e6999c261c` | ⚠️ Unaudited |
| UsrRedemptionExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60a7b7915980ed34fde6e239618fadcf67897c37` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x0000000070f44289ec5ea3e5972f058f75b29801` | ⚠️ Unaudited |
| VaultCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd801ce49d1028004918f36abbcfc67892eb531ab` | ⚠️ Unaudited |
| VaultRateOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20edb9299ae83d9f22be16279a4a2b422f34d020` | ⚠️ Unaudited |
| VaultRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0a477a21b18cf4afa6a939a6fe762db8b7778cf6` | ⚠️ Unaudited |
| VaultTokenized | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x8327b8bd2561d28f914931ad57370d62c7968e40` | ⚠️ Unaudited |
| VaultWithoutNative | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x047d41f2544b7f63a8e991af2068a363d210d6da` | ⚠️ Unaudited |
| VeloAmmModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3240847946e112db9c7d3bbb4fc3cdc38cb6bfb5` | ⚠️ Unaudited |
| VeloDeployFactory | unknown | project_anchor | own_supporting | 0 | base | unit-247321 | `0x5b1b1aac71bdca9ed1dcb2aa357f678584db4029` | ⚠️ Unaudited |
| VeloDeployFactoryHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x65ab2e4c52f424336dbe42f153a91458b70defff` | ⚠️ Unaudited |
| VeloDepositWithdrawModule | unknown | project_anchor | own_supporting | 0 | base | unit-247247 | `0x28c75f34c18937c492545be8fe278ede4dd70043` | ⚠️ Unaudited |
| VeloOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0e53a7e266c5970d510581961f5a917bc19c9426` | ⚠️ Unaudited |
| VeloSugarHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1d5fe76f2e8d4d8625f14c0013990837ed4c6dae` | ⚠️ Unaudited |
| VendingMachine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cca7e410ee41739792ea0a24e00349dd247680e` | ⚠️ Unaudited |
| VendingMachineV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce1f983c29f7a6c0c0dfa78c4d8fe7bdfe026d4b` | ⚠️ Unaudited |
| VendingMachineV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7570a2350183b4bdf7ca74fad3fc19048e6437e6` | ⚠️ Unaudited |
| Verifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x000000007e86a96e279662108cc19ba4c32ede3c` | ⚠️ Unaudited |
| VetoSlasher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04a216411317a334c234c6abdd589bb94d303d5b` | ⚠️ Unaudited |
| VoltzVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec4b7e68ed580d2e94479609567f6f5c07ea82ba` | ⚠️ Unaudited |
| VoltzVaultGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4270eb53c020b8dcc0315c5264bf90810e0dea27` | ⚠️ Unaudited |
| VoltzVaultHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x361b361061ab3ae5ddc75cc06c2ef05f2645f4b6` | ⚠️ Unaudited |
| VoxFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x414b1da0bb6e948dc0559d14ebde9fa9572499bf` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3264834ada73a8b0b132ee52fd5a367cf60e86c6` | ⚠️ Unaudited |
| WalletCoordinator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10fb5943e2f4f67ee6a533dae49b6d4cc443ffe5` | ⚠️ Unaudited |
| WalletProposalValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30019d85a86abd3cda1167f4c052690c32fbdec2` | ⚠️ Unaudited |
| WalletRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08d7e8ce124921caafd7670502379ced0065c832` | ⚠️ Unaudited |
| WalletRegistryGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6aed6cc30d1b2770771052555d257da86ed47fe8` | ⚠️ Unaudited |
| Wallets | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc67913137429985416dbce28d9fa9ec960ba47bf` | ⚠️ Unaudited |
| WBTC | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246749 | `0x2260fac5e5542a773aa44fbcfedf7c193bc2c599` | ⚠️ Unaudited |
| wBTCOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f66477e683e1007e58f52e2ee1718d8da2a6658` | ⚠️ Unaudited |
| WETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x353f8931ce1c52f643121be129985aab09c4bf52` | ⚠️ Unaudited |
| WETH9 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2` | ⚠️ Unaudited |
| WhiteList | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a9f66d5566551e968cbc67558c765760286577d` | ⚠️ Unaudited |
| WithdrawalHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9370924c999dceef8a69b74d567edca2fc3c7286` | ⚠️ Unaudited |
| WithdrawalQueue | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-247192 | `0x88d282791d7d738cdf998a21310881e8b458bb2b` | ⚠️ Unaudited |
| WormholeTransceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x147379a0174780570d07d70a14fb244ee5f2d786` | ⚠️ Unaudited |
| WrappedIBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c6f294f441661503c237c2317712a0ecd8d2da1` | ⚠️ Unaudited |
| WstETH | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246857 | `0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0` | ⚠️ Unaudited |
| WStethOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5eed882e4529e34b4aae833df19d99f514fdef96` | ⚠️ Unaudited |
| WStethRatiosAggregatorV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x773ae8ca45d5701131ca84c58821a39ddadc709c` | ⚠️ Unaudited |
| WstUSR | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1202f5c7b4b9e47a1a484e8b270be34dbbc75055` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (409)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246718 | `0x02e1c91c4d82af454d892fbe2c5de2c4504b2675` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246719 | `0x034faa92ecfe1075b36c451e79d1dbfb4a954474` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-246720 | `0x0430f142a6ab7d63c3f6601540d1315f8b93c31f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-246722 | `0x06d3aa0a54ceae43a217d2f7f3b596988308233d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246723 | `0x06e16d36ed1a99a46c0cb771ce927808d96132c2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246724 | `0x07c22b9db88cb4b1f0763b8c6ce05f8794b14f4e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246725 | `0x0bf7b603389795e109a13140ecb07036a1534573` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246726 | `0x0faea3bce32428d63d3bee147755168342fa14eb` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-246728 | `0x0ffae07a99ecca31b0b8d5e1ef1327b952200674` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246729 | `0x10541361e71d84d1d0b577d95f3ee4b8ec059aea` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246730 | `0x13aebe2c8c903493b7dc575a683992752de6b4bc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246731 | `0x13c7bcc2126d6892eefd489ad215a1a09f36aa9f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246732 | `0x156bd0377181b6090230b20e4d9070c04467d1bd` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-246733 | `0x1608bbad1c21623281fa0c6cecd0d9cd4d81ed44` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246734 | `0x1616d39a201d246cbd1b3b145234638f7719b53a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246737 | `0x181cb55f872450d16ae858d532b4e35e50eaa76d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246739 | `0x1ae8c006b5c97707aa074aaed42becad2cf80da2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246741 | `0x1b7c5ffae79b456fe1eee47503253cbac55ba287` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246742 | `0x1c5da4e4e15cfb929cf61bb416a47651724b421b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246744 | `0x1e13a22d392584b24f5ddd6e6da88f54da872fa8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246745 | `0x1e6b0ff883378bf8ecb6b8d3a292933f6859384f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246746 | `0x1fcd3926b6dfa2a90fe49a383c732b31f1ee54eb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246747 | `0x216b6454e974aff2e802cc64445a2515f78a33df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246748 | `0x219138d7ad1438320b6fde3ca23bd2ea3490c472` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246750 | `0x230e1d993107d5902dac8a59a0bcb13f72477017` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246754 | `0x24fd64eb4766d91fd79a4d5e8086b2460debcae7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246755 | `0x25091725982e83f6afdf6a17705feeca5866b864` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246756 | `0x2555870baed1385f819e42eb4829b52f0af6bac5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246758 | `0x277c6a642564a91ff78b008022d65683cee5ccc5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246759 | `0x279c6cb1d79bca99022b5a092e04c98ef068eadd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246760 | `0x27a907d1f809e8c03d806dc31c8e0c545a3187fc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246761 | `0x27e3e8e275523850236485fe2341e55689a81bb1` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-246762 | `0x29631648ba8b841c541a0a46a42d41ea5663858e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246763 | `0x296ef13265c2682a338bc31aff90150e707853c4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246764 | `0x2a166ae48f9f1fc27685582a61250011fd5363d8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246765 | `0x2c04ab334d1f0b7f959793d1137872e8c84cfc23` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246766 | `0x2e2747dd8498396ef82a7bce510da264938eba72` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246767 | `0x2ea268f1018a4767bf5da42d531ea9e943942a36` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246769 | `0x31e09fd362d71259957c98dda56a1b37d6bf871a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246771 | `0x354822625acd925d02ac13f1c96dba2aa5ee7cc6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246772 | `0x35d482d0bbbb1c2f25d9b12f234883f3224f3198` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246774 | `0x37be38a8bd5d84defa072fff6c0e1d923e9563eb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246775 | `0x383c5f09f42d8e5d206b3f23c542f23b490cd778` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246777 | `0x3883d8cdcdda03784908cfa2f34ed2cf1604e4d7` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-246779 | `0x3b017858474d1ec68613e3dbcb730a1fd6f96f27` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-246780 | `0x3c834e075e7879febc89c08dd6797613951af114` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246781 | `0x3d120987e85c1c294577a1c39c96693a6f9be97b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246782 | `0x3e80e11c8fd3e05221fe63be3487f9f0a4316dc8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246783 | `0x3eb8ed404817e40e9216149d1272581837b4b46d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246785 | `0x40d6bbb07d15f7cb9b34d88ef3e366b97eae70d0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246786 | `0x40eb5210c9b4bea7928cf9a80b22c1e7741505ab` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246787 | `0x41dfc0fb65875015226073e1a4f9c24f147027bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246788 | `0x441c999b0a8d39d6f0c078a5164bad1c5d8706d7` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-246789 | `0x4551ccb9c83b889f4918c06e878901e0b0baa0f5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246790 | `0x45b3ad579cec11e7d5be58c4d2c2993f041b3285` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246792 | `0x49ecc99374776789132317b2f4108a5a966085b7` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-246793 | `0x4a68c88446bb2dd8a029405323ee89dda4ff5216` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246794 | `0x4c494435544c7bf39b62ab2af211eaf4a76f7373` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246795 | `0x4d12fa40e9608298be8f62bd3627c152d8566b49` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246796 | `0x4d7aabd771c3dab92ba0d0f49b67fdb89ee20792` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-246797 | `0x4ee923472b2847a08af4fb983c97d550b318507e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246798 | `0x4f5d5a362be00209403473945d76b2d5254a60c2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246799 | `0x4f6bc03537c6f74e250f57a9a7238087cabf1c6d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246800 | `0x501d198a56cff2add64d157d3c8f465d20fd1942` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246801 | `0x50577964425e06af4ddeca7970bef5c30bc1ab4b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246802 | `0x515906468b65e63e869b6e88e392587e31aa9873` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246803 | `0x51add83f44e6a10c82f01d1689a0bdbad70e4bc0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246804 | `0x52cf3fcf4bcb466bb4632349ba8b1b08a8e32c31` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246805 | `0x53e47237a4a0c63739ada94682407a724b407efb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246806 | `0x5403d66485affdfd03a289958d1d666334d43ec6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246807 | `0x552f1c7e18bc2013c7feec7b8f2cb18c8461469e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246808 | `0x55c982401020eadc2fb4a9d2e160068d6defb738` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246809 | `0x57a013ac2a8790d3133f151f22a16ff2ac68627f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246811 | `0x58c4b6b0d6cff1d684e4b8ee899550f4b68a1031` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-246812 | `0x5b016039d72c1849aa825b886038604fae686070` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246813 | `0x5b2099e204f22a0cce3806fc2093713e2780d437` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-246814 | `0x5dbb9262d92454abb4daff80da5e45a36949c6cf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246815 | `0x5dbf9287787a5825becb0321a276c9c92d570a75` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-246818 | `0x5f93db7de96268c917c391ca2174daa4ca4dc828` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246820 | `0x614cb9e9d13712781dfd15adc9f3dade60e4efab` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246822 | `0x624a5219216c5a101247b39a04260ed3a2a05b71` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246823 | `0x628c053e196fccb986cf2105136ef11e4ce5d4ed` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246824 | `0x637e658d3f1371001faa6f94a62eabedfcdac86f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246825 | `0x63f1aada036e5b63465b7a2749202f34c72b3faa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246826 | `0x6408a5261578e17f858add039deb72e1952e9fe9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246828 | `0x649f34cfdc9bcaea43fe61b17ecfd601b444f45b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246829 | `0x64d00a006dcbf0add69e2431c1789c70a9ce0ad5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246830 | `0x65582767218d8829ffb79853af7764cea34cee2b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246831 | `0x666be6e7b3db5b01ab153e44c28bfbd5402424e3` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-246832 | `0x66a0b4de44adec3854fddd93c67d41c64515ee0f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-246833 | `0x670b30f2bde56b26147be998b033042471c10da9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246835 | `0x6955ab1adefa2e48f449b88183a2774a186b7e61` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246836 | `0x6a2dd3b817f0364e7603e781dda9c62f62c440e1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246837 | `0x6ad30f260c5081cae68962e2f1730a3727987deb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246838 | `0x6c97a35d7c57c48463281a5ec9620a4613be62bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246839 | `0x6d73ddeab6d64ccbc98bca243ac2e880e7dedef4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246840 | `0x6ea5a344d116db8949348648713760836d60fc5a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246841 | `0x6ec0cb7d87ac8b9288e69a46edf34e9217735c7e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246842 | `0x6f9947e11c8337690e59e7d23f19e265e86e62cc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246843 | `0x72926d99c913dede6c7d92ddf125ba781b0e901c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246844 | `0x749b85100d66525eec385638b46bd3ee590c0c79` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246845 | `0x7562995263b742c430fe835dd32d41eefcd918d9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246846 | `0x759d4335cb712aa188935c2bd3aa6d205ac61305` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246848 | `0x76001fafd4a8d3e8cd399e19b91296bc8bd0bb84` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246849 | `0x76147aeef95e7cb058ed23c1c708e33d1ca58fe0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246850 | `0x78674e6883a1b2cccd41afd451897ca01429c151` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246851 | `0x78a80df6b868a420bbab605bc8a5cfd8525ea943` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246852 | `0x78ba57594656400d74a0c5ea80f84750cb47f449` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246853 | `0x7a57d62b1217ce5685e26c333741e61b99233e65` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246854 | `0x7a69820e9e7410098f766262c326e211bfa5d1b1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246855 | `0x7af142702fcbb0696bc4b4db9c2d609434864f52` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246856 | `0x7e0e4b05898181a597673cd5a8fef2b9e36bec97` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246858 | `0x7fea4c6e715fe2fe88e1cd70ed7ef88f7f0092d1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246859 | `0x8000a200b30acadb4769e413ac065f10863cc1d0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246860 | `0x81379c8b9376f06178b28954e46c32626776daf0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246861 | `0x81698f87c6482bf1ce9bfcfc0f103c4a0adf0af0` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-246862 | `0x81b9ed999d9b0af7e00aa5842b570608f365cb29` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246864 | `0x8306bec30063f00f5ffd6976f09f6b10e77b27f2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246865 | `0x83b0da156e6837d57cd118b9d87973dd231ccb1a` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-246867 | `0x847a1188466c6d24926faaf92bb9bd2be30aa530` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-246868 | `0x84cd30891c25cd99da9b425d4df9dfbb135b05d4` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-246869 | `0x85f13c217360419c31364f1246788efddbf3866e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246871 | `0x881157f71a4d4275bf923c9dc519f9c2bcb1ac89` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246872 | `0x888d2a3e9b600f360a3386c9d2fedfa658e7fa29` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246874 | `0x893aa69fbaa1ee81b536f0fbe3a3453e86290080` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-246875 | `0x8a072ce94e30d38569b6b0d74b0a7d96453b1318` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246876 | `0x8a78e6b7e15c4ae3aeaee3bf0de4f2de4078c1cd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246877 | `0x8bcb28e9a37c65f01a160660259e2fe9b81e1c26` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246879 | `0x8d8b65727729fb484cb6dc1452d61608a5758596` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246880 | `0x8e024f875f6fddf1471582bed8504f46cb64487e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246881 | `0x8e1b32ab28408142cb41458a847ba6a30f0a12d2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246882 | `0x8e6c80c41450d3fa7b1fd0196676b99bfb34bf48` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246883 | `0x8eb26ae16ced27f46c717d0e2df070c370d65261` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246884 | `0x90c983dc732e65db6177638f0125914787b8cb78` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246885 | `0x91d3f3099aa7c5d8b6a10e283debf8efcfb59098` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246886 | `0x936ae7ebf19444f098e6ce29714b1a2080f47289` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246887 | `0x9389477cf0a0c13ad0ee54f35587c9d7d121b231` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-246888 | `0x941100649a6c0b896d5d7345115b9033efa7c7a1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246889 | `0x941ee11c2470755a5281e6b5d8f74fcd6bb1057a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246890 | `0x9437b2a8cf3b69d782a61f9814baabc172f72003` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246891 | `0x95934438741616fc7fcf65215e4a624aa608494b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246892 | `0x973495e81180cd6ead654328a0bebe01c8ad53ea` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-246893 | `0x98589d213282f3efcdd475e3aeb4028c8309cd5a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246894 | `0x9898c6d87699b864630422065e450772ff5d90c9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246895 | `0x9938a09fea37ba681a1bd53d33ddde2debec1da0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246896 | `0x99a069d159684464c6cf88992fd979981db49d7e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246897 | `0x9bcee2554e7d415e362caf6c48e0e7f130d9cf8f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246898 | `0x9c5d826e1bcdf67f0596725cbb931dc02132d88d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246902 | `0x9d0182633c0d50280685277f7bc7093ca8434dac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246905 | `0x9d992650b30c6fb7a83e7e7a430b4e015433b838` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246906 | `0xa0f4871c4121542d7325fd6abef837eef28eb68b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246907 | `0xa1e38210b06a05882a7e7bfe167cd67f07fa234a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246908 | `0xa1eeeb677a121327ea2643fb47a23fec304edd00` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246909 | `0xa21aa0efda3a4557daae3eb96d78962a9db9cf6a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246910 | `0xa33a068645e228db11c42e9d187edc72361b7bc0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246911 | `0xa4e41e38fbbc176bb4f79ab9d4528ca8335950a6` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-246912 | `0xa501decbdef5c9641dbd01a60611ca3cc9efaaa2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246913 | `0xa5136542ecf3dcafbb3bd213cd7024b4741dbde6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246914 | `0xa59b36aca119a30c527eddaa386eb130bcf1939f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246915 | `0xa62243c7a36e74d8280781242a3b0e019ce74e64` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246916 | `0xa6278b726d4aa09d14f9e820d7785fad82e7196f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246918 | `0xa6af7dc0ba24e14d84103a68fb1db504c0031b8c` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-246919 | `0xa794cd2800295fe612cf9a4c0cd2371f64e0757a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246920 | `0xa8a78538fc6d44951d6e957192a9772afb02dd2f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246921 | `0xa8d3deb21d981e6ac5989b5497c9337432af4c48` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246922 | `0xa9a6d34e792fb34bdcf39fbb110169f1e7c5e78c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246923 | `0xab236d41a261f49a98a9827cb37a803778f6a9c5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246924 | `0xabe20d266ae54b9ae30492dea6b6407bf18feeb5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246925 | `0xacee4a703f27ea1ebcd550511aae58ad012624cc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246926 | `0xae052557af0024514a916396c8eb950ad7d260dc` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-246927 | `0xaee0233486920e5569d2095e61eb72bc142d49f3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246928 | `0xb0d19eef486b4807ab1fe20ab4cfacb074592ea5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246929 | `0xb1653ee92b724a033338cc17896e06275a4e9335` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246930 | `0xb17a8d440c4e0a206fc1de76f3d0531f70bf6d42` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246931 | `0xb1b9671a7473165ee3dbf7467c4a26c4bb720545` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246932 | `0xb1e5a8f26c43d019f2883378548a350ecdd1423b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246933 | `0xb2657a1eb016692509f321a4365551e2ec1173c2` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-246934 | `0xb32028ca8d83741036ed73ba71720dd2eddcfab0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246935 | `0xb379bf6bb0770a3ac855dc04451958b7f8ddc80b` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-246936 | `0xb5d0782b9cd9da84d038cafca7469422ad6123f4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246937 | `0xb6451d4eaec79fd22b69086a5b760a166bd28c52` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246938 | `0xb65a578bf6b4b997b87c83c22f240b291a875ee3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246939 | `0xb8050a88a9dbbc751daa40ea9eb5496dc1f59da2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246940 | `0xbaab39a03c9f31a9f0c8f25471ccfa37aaba03ba` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246942 | `0xbd4bdaa3ac88f48728acf35f2704583bf19e7d1e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246943 | `0xbdf7b7bb56c35d439da87f66b195cdf38777d972` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246945 | `0xbfafc964361f78754f523343b09b3cb7bb73bdd6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246946 | `0xc7e8b00a61adb658c49d2d8a377fc44572e9ecb5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246947 | `0xc82405cc38cb005974f0e7bd40cea1d9e3037635` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246948 | `0xc8a65b27f2fbb60af856ed9f594e076c2ff27917` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246949 | `0xc95b806ac073df930014ac476d26c8ad918f14e0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246950 | `0xc9932e91858e0fc801958d16a990e4fd812aec21` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246951 | `0xc9aaa47e9da52cb96a96ed52bcce9fdca5dfe061` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246952 | `0xca86abc73dac61fae350ec52ed33680edb50a1ff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246953 | `0xcc1d3926e079c826cd807fdf825a6777846bb5c1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246954 | `0xcc4de7c3af8a4ecc2d96bc821bba3a2d94e3298b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246955 | `0xcd3c0f51798d1daa92fb192e57844ae6cee8a6c7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246957 | `0xcdfa7efe670869c6b6be4375654e0b206ef49c89` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246958 | `0xce4e73137cbb37db2561d4f85722b4fca52eb38e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246959 | `0xd0ad0f374e6312f0700c3c2119e7cd3204236e06` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246960 | `0xd0f8478f6d195120eb64518bcd7adfa6e03e1116` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246961 | `0xd1547c9a5155c3f34a6ff0db0cf16171819fe08b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246962 | `0xd1f59ba974e828df68cb2592c16b967b637cb4e4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246963 | `0xd1fab7a0e3136651ee661945a066f9274c3eb35a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246964 | `0xd27ffb15dd00d5e52ac2bfe6d5afd36cae850081` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246967 | `0xd3442ba55108d33fa1eb3f1a3c0876f892b01c44` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246968 | `0xd3bb0bc0e7ccbc647ee040ff32be2996949212f0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246969 | `0xd662df7c0faf0fe6446638651b05c287806ad1ae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246971 | `0xd7286673fd2d56ef9b324783835e2594674629d5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246972 | `0xd89738c820d74a353a4a4f9b2ec688ca4a7defe6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246974 | `0xdc9c17662133fb865e7ba3198b67c53a617b2153` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246975 | `0xdd008e4810c25da5e40b5b10566864b7f563bdc4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246976 | `0xde13130dabf6f6b2a7a5ef34c3cb7e1298b50b04` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246977 | `0xdf96d59d3688c56ca29aed045fe67c84bbc38461` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246979 | `0xe04dc6f116a85508cd6299229218ed4719e43f2a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246980 | `0xe12e8249582198f4f1fb3920db8fc645fcb72657` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-246981 | `0xe2826546e047547b16180ff660265b4e9c092e7e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246982 | `0xe3b023d3ff076e35448c936da5e8f6ada6130ca4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246983 | `0xe3c89d39822bc85890facffff3e1362c01f3129f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246984 | `0xe4357bdae017726ee5e83db3443bcd269bbf125d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246985 | `0xe5afacb8158892837936fc6a74472322cc78dcc6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246986 | `0xe707321b887b9da133ac5fcc5edb78ab177a152d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246987 | `0xe86399fe6d7007fdecb08a2ee1434ee677a04433` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246988 | `0xe88cf95e44a2ff048315b8b3858e59bb11b8a602` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246989 | `0xe92931c82cd709a65a37ff87740ba6930c54200f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246990 | `0xeb1cafbcc8923ecbc243ff251c385c201a6c734a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246991 | `0xebd53ef0b1651acae768fc9826e9656834ae3e4a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246992 | `0xec3b20276dffb4e13a7f15f990c31481cd918c91` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246993 | `0xecf3bde9f50f71ede67e05050123b64b519df55c` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-246994 | `0xeeab670a62eef69cf8a82286c5d9674827836fb4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246995 | `0xef39c188e2bc8eb45daf49a3fe2f72bf32050892` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246996 | `0xf004a8fc0bcda18faba77eff9357ee6fdeeef463` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246999 | `0xf3a1c44d1825fb49d633f681cb2b4e7de2e071d4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247000 | `0xf478061d453092af95afbd510ca41dc46ad13607` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247002 | `0xf4ea276361348b301ba2296db909a7c973a15451` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247003 | `0xf7a19974dc36e1ad9a74e967b0bc9b24e0f4c4b3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247004 | `0xf85932ace734e3cf04b5c2a6cb7b10f44014ecb9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247005 | `0xf86e9c52cb0a97e70eed554c8edb278996c860f3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247006 | `0xf910533e9796b7e74d6fa8512cc74281b736e7f6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247007 | `0xf9d20f02ab533ac6f990c9d96b595651d83b4b92` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247008 | `0xfa3c9e965d254c101500c4e74120500f89881336` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247009 | `0xfaa5ab0ca10e09ab404b18d900ceea34b746aa4a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247010 | `0xfbf0ff6eaaf1d64c75cfda7655b5e74ee8632817` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247011 | `0xfd23f971696576331fcf96f80a20b4d3b31ca5b2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247013 | `0xfd778bf795c606464ab94be3e5106aa441b23554` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247015 | `0xfe805c111554d1c5b67f78791be7fb35a0327bee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247018 | `0x1ce9d9cae2c9c00af3d06fcac1d267d09a954c92` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247019 | `0x22171a4db2f165d78caa897d282850773bbf7c78` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247020 | `0x2790aa3c0b8a7b4b3a8485be6dbca8d342eb0a02` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247021 | `0x2fa71491f8070fa644d97b4782db5734854c0f6f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247022 | `0x319c0dd36284ac24a6b2bee73929f699b9f48c38` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247023 | `0x3c01ec09d15d5450fc702dc4353b17cd2978d8a5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247024 | `0x478946bcd4a5a22b316470f5486fafb928c0ba25` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247025 | `0x4956d48858f7e8d065037f6ae2449bd6af1a1287` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247026 | `0x49efad116f1f9a04c6b9454f4b2e55cdf71ba77d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247028 | `0x4dc22588ade05c40338a9d95a6da9dcee68bcd60` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247029 | `0x4e90232c38ed817d5f03a3dcf13a43d5d015a1ce` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247030 | `0x50482118284630c7f0e676db7869335589d26d81` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247031 | `0x59aa940f2a7135ca824310ac107f30c829738fe0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247033 | `0x65cd4f08709d1d1c1ebcbe91073c390afabc3144` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247034 | `0x67fe54e339949346e99bc65ae4c425abab7ef502` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247035 | `0x6b0e1a42030cb62c505c60e808ab945b1396f8e4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247036 | `0x6fe21c784e42f3176f9d0e02f25d0cd07952fb37` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247037 | `0x71d022eba6f2607ab8ec32cb894075d94e10ceb8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247038 | `0x7243936fba26190299d38ecb7069c7a539f8ca3a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247039 | `0x734effcb7981b00046a9fcb00d6abd477bbf9684` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247040 | `0x739c53d4434db94e782d82e310e50f9a655cf525` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247041 | `0x7db963a6edc02473dbc9f4acdbf0d58a455d58be` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247042 | `0x84ce89b4f6f67e523a81a82f9f2f14d84b726f6b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247043 | `0x88cfe68b365343f191e5d64c25cb1fe80bd54035` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247044 | `0x893df22649247ad4e57e4926731f9cf0da344829` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247045 | `0x89bf652e92c073ac49f33f6bb7b662b446b94681` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247046 | `0x8ac2f9dac7a2852d44f3c09634444d533e4c078e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247047 | `0x9128ecebafb428f52af9dd863d1bbb36a677fb59` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247048 | `0x96e7ca11cd96b705ce8febccadb466fd1245cfea` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247049 | `0x9b0c181987fb01081258e1863d39a2be55aafe3a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247050 | `0xa0116415f30d9f783d4e8f1f3fce5dbb9dd59fd7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247051 | `0xb3ebe27274304446e089f7c678e4ed68ee387fe2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247052 | `0xb54aacb3b203499543c6ec2b13acfad74bba8be9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247053 | `0xb55da32e47914be05348547367bde9f95ce2dab9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247054 | `0xb5652f3f8e429c66144eba6cca042c23377bd08b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247055 | `0xb71ac980569540ce38195b38369204ff555c80be` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247057 | `0xbf30ff33cf9c6b0c48702ff17891293b002dfea4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247058 | `0xc8c77a0129b9028a192bbc969391c4a1d45e85fd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247059 | `0xd8d7303929fe9f03c7b563c237f58479c2d93c2b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247060 | `0xebd5311bea1948e1441333976eadcfe5fbda777c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247061 | `0xed8b81e3ff6c54951621715f5992ca52007d88ba` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247062 | `0xee1bac98527a9fdd57fccf967817215b083ce1f0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247063 | `0xf0e36e9186dbe927505d2588a6e6d56083dd4a56` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247064 | `0xfc09733f4f61d20a5a96ced3a6582497fe1ccb3a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-247207 | `0x2ae580d09eff4e178b62fc30db3482bb36fb9e71` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-247209 | `0x759d4335cb712aa188935c2bd3aa6d205ac61305` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-247213 | `0x94928c3853efef2759a18ed9d249768eb260df8c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-247215 | `0xa5faff49394f1912a68e8f5bdd7beed690ed22b3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-247216 | `0xac345625fd4c1086bb9141099e250c34694ef10e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-247220 | `0xc7812434fb2f8b0510241408226142f59b16dda3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-247221 | `0xc8e046fe778be29572016d1f703e9b2ff77a207d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-247222 | `0xe47eac8c81ff1157360e3508eda0d31824775e47` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-247067 | `0x0721edbc7cca13cd7bf23f939a70d95175cb486f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-247068 | `0x0877c0927f551b94b859bd01f2dc3a2300ec1f38` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-247072 | `0x0b45d71af0c9780859a86d8ec0ccf34300ee315e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-247073 | `0x0dd522e5a6659e650ca7a7a5690a284794fe97ff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-247074 | `0x13b0eac196f794d1f3085ac8f4310b513029f7cc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-247076 | `0x1cb3cb208dd81cbdcfae1405a7a7316f9ab3c12b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-247077 | `0x1e63e304cd9f2bef6928b70385592e086a79af8a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-247078 | `0x208e625ed8254119ebfb22f14b5cfe816e450075` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-247079 | `0x2546524b0746060298cbdfa172e549dc3dcdbaaf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-247080 | `0x27aebfebdd0fde261ec3e1df395061c56eec5836` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-247096 | `0x61d8f814e5e5d330ec869c8373745bd9a3a9c27a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-247097 | `0x6243288c527c15a7b7ed6b892bc2670e05c951f0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-247099 | `0x65dc714c95ba1be283e693b47ca3ec0d7b003607` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-247100 | `0x66093351a818f6fb6e6f2077ee669457cb0e6cce` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-247109 | `0x76787742e9e56479bf9f6de6c16ebf1ff58478e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-247112 | `0x82aa4db7c1cb85d4c1140ae15f7b7c1079664fea` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-247117 | `0x8c528f50f2cafcffdeacbd9d1ba9a078027ddf5e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-247118 | `0x8ff3148ce574b8e135130065b188960ba93799c6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-247123 | `0x9869984a2d5a6b1e152d8c0327bc4a617380812b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-247127 | `0x9ff5276efce6c611da32b6eff47ca4ccb5714b33` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-247128 | `0xa1251eeb1e306f471828ea19069cb5cfb9b5dcec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-247131 | `0xa9212e328b4c0d649f8000eb03d842e40eb99728` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-247136 | `0xb1942d3c3d2dadee1d7c39866bed9880ee266562` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-247137 | `0xb1f69766991b64121c472b38607063a79bbeeb2a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-247140 | `0xb376004aab1fd3aac06cc168950b976f8e6cb516` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-247143 | `0xc12885af1d4eafb8176905f16d23cd7a33d21f37` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-247144 | `0xca7e70faf6d6dd14d3d2dbe04690c44536d6c66d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-247147 | `0xd3d0e85f225348a2006270daf624d8c46cae4e1f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-247149 | `0xd4d8366c5d943ad219176aef31a2c634ee249f57` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-247153 | `0xe062512c72967faf53d048c0ff60bdf3cee7edcf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-247160 | `0xf5eaa5ff25fe48d9f91f05aa517d95e50d142280` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-247161 | `0xf75d5b35f3ece7e9000d3746797f43e398647c93` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-247162 | `0xf9856a12f7db6897690c833e85dc77365f9563fd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-247166 | `0x30a7c7726dba087c9af3547bde7b2953dfdf06bb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-247169 | `0x5fed9c370f3800a790de051b9d6ec4fab8e3f757` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-247171 | `0x87c7aed3d021c3b2798361bc33b6d427cfa465b5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-247173 | `0x9c807f6f6d785e31f4af84722cd5097ab5a87d78` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-247174 | `0x9cd45b6e33433ed50738f508ad378b567603f61f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-247175 | `0x9d9645c761151fa4b390a0e79f63ba356ff1870a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-247177 | `0xda0b90cc8655069caff40a6a595f228575f8f9ed` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-247178 | `0xdfcd6a517c86ede52ef9c7f34ad9e918943ece67` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-247185 | `0x24dd1eabead7b3cb07b7d162439ec0a4eec703df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-247187 | `0x35d6c8800335c739cade2c66be822d0a0057a7df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-247194 | `0xbe8e7c5e750124ea690e387eb6ef32e723fd051d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-247195 | `0xd2d2a9d446591833b32b3fad2f2b3810cd98b34f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-247196 | `0xd6dcc17af74217356cba56aa485b3f0fe8437896` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-247198 | `0xf32fd742608c237d5a377838fa69837584ca9676` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247242 | `0x20157dbabb84e3bbfe68c349d0d44e48ae7b5ad2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247248 | `0x28d8d6c17ed96b4d15bcbac02040dcdd41678750` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247254 | `0x2a0881a1636d433cebb439e3c7efbf3cef29d700` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247259 | `0x2f4f2dee13ff6597fc57a0d6fd9496722103d4fa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247281 | `0x47ca96ea59c13f72745928887f84c9f52c3d7348` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247289 | `0x4d69971ccd4a636c403a3c1b00c85e99bb9b5606` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247293 | `0x4e829f8a5213c42535ab84aa40bd4adcce9cba02` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247295 | `0x4e962bb3889bf030368f56810a9c96b83cb3e778` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247307 | `0x53017a5b2c56583e184577578d55ab098b40323d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247313 | `0x5585d8cc99720f77706b4ae720791b7ad26c5eb8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247327 | `0x62f607b2add31b32f090943bc28fcc0b4f9b0ce5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247348 | `0x6b0e1a42030cb62c505c60e808ab945b1396f8e4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247352 | `0x6e4b3093c38b4a422fa6f4617eab4fa93283a73d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247359 | `0x70a5e525c88ace896de311f7dd4c46ff62d2c8c2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247362 | `0x70acdf2ad0bf2402c957154f944c19ef4e1cbae1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247364 | `0x71d022eba6f2607ab8ec32cb894075d94e10ceb8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247366 | `0x731f2cdf517b9f8702cb4c3200bb2bd8ecd3c7a7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247370 | `0x79293082a2bb8c57a81fa101fe64331489ffdd60` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247381 | `0x82321f3beb69f503380d6b233857d5c43562e2d0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247394 | `0x861a2922be165a5bd41b1e482b49216b465e1b5f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247396 | `0x8741d5e1b271546b899562d1690b3519f1dc60f5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247398 | `0x893df22649247ad4e57e4926731f9cf0da344829` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247401 | `0x8bd5e3141a134d3d26b458293ad1c9d56d66fb8a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247404 | `0x919ae9b1a9370145585d7d6edc61cff0839e7a8a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247411 | `0x940d74a151bfd827791352d4560cac3a5764a833` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247416 | `0x96e7ca11cd96b705ce8febccadb466fd1245cfea` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247418 | `0x9785ef59e2b499fb741674ecf6faf912df7b3c1b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247422 | `0x988702fe529a3461ec7fd09eea3f962856709fd9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247423 | `0x9b6d95c7cf8aff7d799b6dcc35fef76d8167a0dd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247427 | `0x9ec3d1204d2815cbf26a4a5f8448d5afc42c789b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247429 | `0xa46f75a6b96f5fb2dcf4296637d97ac0a752cb7a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247433 | `0xa53e7861527187d9887e64d86c2151316807ace1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247437 | `0xaafafd305b88d1b987692947e167c447ccbff8ad` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247439 | `0xae8cde18e46a93b0b06a29e35cb61ded411c322e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247441 | `0xafb62448929664bfccb0aae22f232520e765ba88` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247442 | `0xb17d90ff52077811304d24ba8ce969425815b163` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247443 | `0xb24d945b9d35420aded2ab47ff66ef2492a1c947` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247444 | `0xb2cc224c1c9fee385f8ad6a55b4d94e92359dc59` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247449 | `0xbdb39e6a52a4d91a96e79c7c2dcbd8915ce99c14` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247455 | `0xcba8f910af1c50c9d075dde10f34fdc4f0233d85` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247459 | `0xd17613d91150a2345ece9598d055c7197a1f5a71` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247462 | `0xd4305877ab5dedfc939fa209812c828343a23f83` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247464 | `0xd9ef9874d58719e4f256d96edd2dce19f9c3d3d9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247465 | `0xdc7ead706795eda3feda08ad519d9452badf2c0d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247467 | `0xde5ff829fef54d1bdec957d9538a306f0ead1368` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247470 | `0xe846373c1a92b167b4e9cd5d8e4d6b1db9e90ec7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247473 | `0xe9f4eb4b4c884204a3383fc64481e157bba882aa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247475 | `0xed8b81e3ff6c54951621715f5992ca52007d88ba` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247478 | `0xf0e36e9186dbe927505d2588a6e6d56083dd4a56` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247479 | `0xf1f6c37fc0d67d1965cac00559e665de5d67fbc3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247481 | `0xf5d8609c202e84f665679c3625f6dc6b27b70799` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247488 | `0xfecdcca747ad30b2f848b4af9bdc60a364f48410` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-247489 | `0x0a974551c45cfb9e002d06b2ab82ae20e800d000` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-247490 | `0x3169036c3f79c03c14a7496dd2016f5b059e17d8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-247491 | `0x7696731721dddec1502f35c52d9c83a768227dae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-247492 | `0x841e213864046111e43d237703d71fabe91ef9e0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-247493 | `0xa330cc14988321160fd26d9f202cbd845328b6e2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-247494 | `0xad1b3ea06027df987d1320e1f4d0f1b58230250c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-247495 | `0xbbf9400c09b0f649f3156989f1ccb9c016f943bb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-247496 | `0xc724d3ba28e24e243f653c626f8bea44113b3a0b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-247200 | `0x022a33293aed00e59e93d354d3810249fa33d7d4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-247201 | `0x222fa99c485a088564eb43faa50bc10b2497cdb2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-247202 | `0x40330720039352b309c70a5028322d1481f496d1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-247203 | `0xda1674c1135ea98a311a3b4aa11865266ab52a7c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [blocksec_mellow_vaults_v1.3-signed.pdf](https://github.com/mellow-finance/mellow-audits/blob/main/202208_BlockSec_vaults_v1/blocksec_mellow_vaults_v1.3-signed.pdf) | BlockSec | Audit | 2022-08 | stale | Direct | contract_name | matched | 4 | 0 | 0 | 6 | high |
| [ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf](https://github.com/mellow-finance/mellow-audits/blob/main/202208_Chainsecurity_vaults_v1/ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf) | ChainSecurity | Audit | 2022-08 | stale | Direct | contract_name | matched | 9 | 0 | 0 | 34 | high |
| [Mellow Protocol HStrategy Security Analysis.pdf](https://github.com/mellow-finance/mellow-audits/blob/main/202211_Pessimistic_HStrategy/Mellow%20Protocol%20HStrategy%20Security%20Analysis.pdf) | Pessimistic | Audit | 2022-11 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 3 | high |
| [Mellow protocol Gearbox integration Security Analysis by Pessimistic.pdf](https://github.com/mellow-finance/mellow-audits/blob/main/202212_Pessimistic_Gearbox/Mellow%20protocol%20Gearbox%20integration%20Security%20Analysis%20by%20Pessimistic.pdf) | Pessimistic | Audit | 2022-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [StateMind Mellow LRT report with deployment.pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2FkF9WEmdIYGcCPdAPltyL%2FStateMind%20Mellow%20LRT%20report%20with%20deployment.pdf) | StateMind | Audit | 2024-05 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 18 | high |
| [Sherlock Mellow Modular LRTs Audit Report.pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2FT65xUuoxB4TbuaSjSyst%2FSherlock%20Mellow%20Modular%20LRTs%20Audit%20Report.pdf) | Sherlock | Contest | 2024-08 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 8 | high |
| [Mellow Finance Simple-LRT and DVV Vault Security Audit Report.pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2Fz1vRTE4p2jsyru2NDTW5%2FMellow%20Finance%20Simple-LRT%20and%20DVV%20Vault%20Security%20Audit%20Report.pdf) | yAudit | Audit | 2025-06 | aging | Direct | address | matched | 1 | 1 | 0 | 5 | high |
| [ChainSecurity_MellowFinance_MellowLRT_Audit.pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2FVOe4RlDJHDolkm4fiVZM%2FChainSecurity_MellowFinance_MellowLRT_Audit.pdf) | ChainSecurity | Audit | 2024-08 | aging | Direct | contract_name | matched | 3 | 0 | 0 | 22 | high |
| [Statemind Mellow Multi Vault Audit Report.pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2F0QLb9sa0V8su4O0MaCLK%2FStatemind%20Mellow%20Multi%20Vault%20Audit%20Report.pdf) | Statemind | Audit | 2025-01 | aging | Direct | contract_name | matched | 2 | 0 | 0 | 14 | high |
| [ChainSecurity Mellow Multivault Audit.pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2FUabZ3jdmQWi13qIivg13%2FChainSecurity%20Mellow%20Multivault%20Audit.pdf) | ChainSecurity | Audit | 2025-02 | aging | Direct | contract_name | matched | 3 | 0 | 0 | 15 | high |
| [Nethermind Mellow Interop Audit Report.pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2FDyGtu1VK0bKYsUxQI0ES%2FNethermind%20Mellow%20Interop%20Audit%20Report.pdf) | Nethermind | Audit | 2025-03 | aging | Direct | contract_name | matched | 2 | 1 | 0 | 16 | high |
| [Decurity Mellow Interop Audit Report.pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2FFHTkyHS9rabfh8AMkJU3%2FDecurity%20Mellow%20Interop%20Audit%20Report.pdf) | Decurity | Audit | 2025-03 | aging | Direct | contract_name | matched | 2 | 1 | 0 | 7 | high |
| [Sherlock_Mellow-Core-Vaults_20250728.pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2FLBYikKe3UYNWMV8Kte52%2FSherlock_Mellow-Core-Vaults_20250728.pdf) | Sherlock | Contest | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 38 | high |
| [Nethermind_Mellow-Core-Vaults_20250903.pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2FNs4351hVFYzadiFii2az%2FNethermind_Mellow-Core-Vaults_20250903.pdf) | Nethermind | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 75 | high |
| [NM_0758_Mellow-1.pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2F2GBCylSChOvXlBDteguf%2FNM_0758_Mellow-1.pdf) | Nethermind | Audit | 2026-03 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [NM0735-FINAL_MELLOW (1).pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2FEKdTZHaxv3h0qKauW9TU%2FNM0735-FINAL_MELLOW%20(1).pdf) | Nethermind | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [NM0758-FINAL_Mellow (1).pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2FqiqkyRtS5hyeGOGEkUlO%2FNM0758-FINAL_Mellow%20(1).pdf) | Nethermind | Audit | 2025-12 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [NM0798-FINAL_MELLOW (1).pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2F3pkyCLIShMV1QdiygMDh%2FNM0798-FINAL_MELLOW%20(1).pdf) | Nethermind | Audit | 2026-01 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [NM0812-FINAL_Mellow (1).pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2FiJpqr8BmY5Fdjfd1fw5n%2FNM0812-FINAL_Mellow%20(1).pdf) | Nethermind | Audit | 2026-01 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [NM0703-FINAL_MELLOW (1).pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2FM2HU6Mm6042D009NBVaa%2FNM0703-FINAL_MELLOW%20(1).pdf) | N/A | Audit | 2025-11 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 0 | high |
| [NM0682-FINAL_Mellow (1).pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2FuoD71STRiDu2ON8SHpvK%2FNM0682-FINAL_Mellow%20(1).pdf) | N/A | Audit | 2025-10 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 0 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [17626] blocksec_mellow_vaults_v1.3-signed.pdf — matched: Extracted contract names from findings and recommendations. The audit date is from the cover page: 'Date:August 4, 2022'.
- [17627] ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf — matched: Extracted from ChainSecurity audit report for Mellow Vaults. Scope section lists excluded files; all other contracts in the repository are considered in scope. The report date is on the cover page: Aug 09, 2022.
- [17628] Mellow Protocol HStrategy Security Analysis.pdf — matched: Scope explicitly lists four files. IntegrationVault mentioned in findings but not in scope; excluded.
- [17629] Mellow protocol Gearbox integration Security Analysis by Pessimistic.pdf — no match: Scope explicitly listed 8 files under 'The scope of the audit included only the following files:' on page 3. Audit date from cover page and final page.
- [17630] StateMind Mellow LRT report with deployment.pdf — matched: Scope section explicitly lists 20 files. Audit date from header: '06-05-2024 - 27-05-2024' indicates end date 2024-05-27.
- [17631] Sherlock Mellow Modular LRTs Audit Report.pdf — matched: Extracted contract names from the report text, including those mentioned in findings and code snippets. The scope section mentions the repository and branch but does not list individual contracts; however, contracts are referenced throughout the findings.
- [17632] Mellow Finance Simple-LRT and DVV Vault Security Audit Report.pdf — matched: All contracts listed in the 'Scope of Audit' table and mainnet deployments are included. The audit date is from the cover page 'JUNE 09, 2025'.
- [17633] ChainSecurity_MellowFinance_MellowLRT_Audit.pdf — matched: All 25 contracts listed in the scope table on page 5 of the report.
- [17634] Statemind Mellow Multi Vault Audit Report.pdf — matched: Scope section explicitly lists 16 files. Audit date from cover page: 06-01-2025 - 31-01-2025, using end date.
- [17635] ChainSecurity Mellow Multivault Audit.pdf — matched: Extracted 18 contracts from scope tables in the report. Audit date from cover page.
- [17636] Nethermind Mellow Interop Audit Report.pdf — matched: All 18 contracts listed in the 'Audited Files' table on page 3 are in scope. The audit date is the final report date (March 19, 2025) from the summary table.
- [17637] Decurity Mellow Interop Audit Report.pdf — matched: All contracts listed in scope section of the report.
- [17638] Sherlock_Mellow-Core-Vaults_20250728.pdf — no match: All contracts listed in the scope section of the audit report were extracted. The audit date is the end date of the audit period (July 14 - July 28, 2025).
- [17639] Nethermind_Mellow-Core-Vaults_20250903.pdf — no match: All contracts listed in the 'Audited Files' table (Section 2) are in scope. The audit date is explicitly stated as 'Final Report September 03, 2025' on the cover page and in the summary table.
- [17640] NM_0758_Mellow-1.pdf — no match: Audit report for Mellow Finance's SyncDepositQueue contract. Scope includes SyncDepositQueue.sol and its parent SyncQueue.sol.
- [17641] NM0735-FINAL_MELLOW (1).pdf — no match: The audit scope is explicitly the SwapModule contract in src/utils/SwapModule.sol. The audit date is November 19, 2025 from the cover page.
- [17642] NM0758-FINAL_Mellow (1).pdf — no match: Audit report for Mellow Finance's SyncDepositQueue contract. Scope includes SyncDepositQueue.sol and its parent SyncQueue.sol.
- [17643] NM0798-FINAL_MELLOW (1).pdf — no match: Only one contract in scope: BurnableTokenizedShareManager. Audit date from cover page and summary table.
- [17644] NM0812-FINAL_Mellow (1).pdf — no match: The audit scope is a pull request with 2 lines of code. The only contract explicitly mentioned in scope is ShareManager.
- [17645] NM0703-FINAL_MELLOW (1).pdf — matched: The audit report explicitly states the scope is the OracleSubmitter contract. The date is from the cover page and summary table.
- [17646] NM0682-FINAL_Mellow (1).pdf — matched: Only one contract in scope: Migrator.sol. Audit date from cover page and summary table.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| blocksec_mellow_vaults_v1.3-signed.pdf | LStrategy | unmatched — not counted | — | Mentioned in finding 2.1.1 | no |
| blocksec_mellow_vaults_v1.3-signed.pdf | ProtocolGovernance | unmatched — not counted | — | Mentioned in finding 2.1.2 | no |
| blocksec_mellow_vaults_v1.3-signed.pdf | AggregateVault | unmatched — not counted | — | Mentioned in finding 2.2.1 | no |
| blocksec_mellow_vaults_v1.3-signed.pdf | IntegrationVault | unmatched — not counted | — | Mentioned in finding 2.2.3 | no |
| blocksec_mellow_vaults_v1.3-signed.pdf | BaseValidator | unmatched — not counted | — | Mentioned in finding 2.2.4 | no |
| blocksec_mellow_vaults_v1.3-signed.pdf | ERC20RootVault | unmatched — not counted | — | Mentioned in findings 2.2.5, 2.3.1, 2.3.5 | no |
| blocksec_mellow_vaults_v1.3-signed.pdf | AaveVault | own contract | AaveVault (selected) `0x3af5e4e2e9fae6d994aeeb98fa795dcfc88d23ae` — deployed 2022-07-28 20:08:39+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| blocksec_mellow_vaults_v1.3-signed.pdf | YearnVaultGovernance | own contract | YearnVaultGovernance (selected) `0x2bc5f6c850938d83526110a14d9fc97a6843c127` — deployed 2022-07-28 21:03:30+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| blocksec_mellow_vaults_v1.3-signed.pdf | YearnVault | own contract | YearnVault (selected) `0x9c95ec6f009987f6ac79ecdd47f166769fc646ce` — deployed 2022-07-29 17:00:07+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| blocksec_mellow_vaults_v1.3-signed.pdf | UniV3Oracle | own contract | UniV3Oracle (selected) `0x1a407175437514694e561d7208a343d78374cfcf` — deployed 2022-07-29 16:52:16+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | ProtocolGovernance | unmatched — not counted | — | listed in scope and described in system overview | no |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | UnitPricesGovernance | unmatched — not counted | — | inherited by ProtocolGovernance, described in system overview | no |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | ContractRegistry | unmatched — not counted | — | excluded from scope but mentioned as part of system | no |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | VaultRegistry | unmatched — not counted | — | described in system overview | no |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | DefaultAccessControl | unmatched — not counted | — | described in system overview | no |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | ChainlinkOracle | own contract | ChainlinkOracle (selected) `0x45ce8c3ddd839f09ab15641176f6b26cbc411130` — deployed 2022-07-28 20:07:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | UniV3Oracle | own contract | UniV3Oracle (selected) `0x1a407175437514694e561d7208a343d78374cfcf` — deployed 2022-07-29 16:52:16+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | LStrategy | unmatched — not counted | — | described in system overview | no |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | MStrategy | unmatched — not counted | — | described in system overview | no |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | ERC20Vault | unmatched — not counted | — | described in system overview | no |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | ERC20RootVault | unmatched — not counted | — | described in system overview | no |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | AggregateVault | unmatched — not counted | — | described in system overview | no |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | IntegrationVault | unmatched — not counted | — | described in system overview | no |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | YearnVault | own contract | YearnVault (selected) `0x9c95ec6f009987f6ac79ecdd47f166769fc646ce` — deployed 2022-07-29 17:00:07+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | AaveVault | own contract | AaveVault (selected) `0x3af5e4e2e9fae6d994aeeb98fa795dcfc88d23ae` — deployed 2022-07-28 20:08:39+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | UniV3Vault | unmatched — not counted | — | described in system overview | no |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | MellowVault | unmatched — not counted | — | mentioned as out of scope but part of system | no |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | VaultGovernance | unmatched — not counted | — | described in system overview | no |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | YearnVaultGovernance | own contract | YearnVaultGovernance (selected) `0x2bc5f6c850938d83526110a14d9fc97a6843c127` — deployed 2022-07-28 21:03:30+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | ERC20RootVaultGovernance | unmatched — not counted | — | described in system overview | no |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | AaveVaultGovernance | own contract | AaveVaultGovernance (selected) `0x75e858cf4edaed91cabad4ab50043b18bf181bb0` — deployed 2022-07-29 16:54:07+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | BaseValidator | unmatched — not counted | — | described in system overview | no |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | UniV2Validator | own contract | UniV2Validator (selected) `0x006d458392c459c16adae4cb53ac8b9199097708` — deployed 2022-07-28 20:05:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | UniV3Validator | unmatched — not counted | — | mentioned in findings | no |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | ERC20Validator | unmatched — not counted | — | mentioned in findings | no |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | CowswapValidator | own contract | CowswapValidator (selected) `0xd2f34dda5be5f88fd4efd16d45a92e80a7f45903` — deployed 2022-07-29 16:48:28+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | CurveValidator | own contract | CurveValidator (selected) `0xbbfa3f43bed0a379d2ef7d1f5d16dd3a9366eff4` — deployed 2022-07-29 16:48:53+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | CommonLibrary | unmatched — not counted | — | mentioned in scope and findings | no |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | ExceptionsLibrary | unmatched — not counted | — | mentioned in findings | no |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | PermissionIdsLibrary | unmatched — not counted | — | mentioned in findings | no |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | SemverLibrary | unmatched — not counted | — | excluded from scope | no |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | BatchCall | unmatched — not counted | — | excluded from scope | no |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | ContractMeta | unmatched — not counted | — | excluded from scope | no |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | DefaultProxy | unmatched — not counted | — | excluded from scope | no |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | DefaultProxyAdmin | unmatched — not counted | — | excluded from scope | no |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | IOracle | unmatched — not counted | — | mentioned in findings | no |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | IVaultRegistry | unmatched — not counted | — | mentioned in findings | no |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | IContractMeta | unmatched — not counted | — | mentioned in findings | no |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | IVault | unmatched — not counted | — | mentioned in findings | no |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | IAggregateVault | unmatched — not counted | — | mentioned in findings | no |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | IIntegrationVault | unmatched — not counted | — | mentioned in findings | no |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | IValidator | unmatched — not counted | — | mentioned in findings | no |
| ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf | LStrategyOrderHelper | unmatched — not counted | — | mentioned in findings | no |
| Mellow Protocol HStrategy Security Analysis.pdf | HStrategy | own contract | HStrategy (selected) `0x158b75d163ae46de8c36fb9068df8908417030a8` — deployed 2022-10-04 16:21:13+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Mellow Protocol HStrategy Security Analysis.pdf | HStrategyHelper | unmatched — not counted | — | listed in scope | no |
| Mellow Protocol HStrategy Security Analysis.pdf | UniV3Helper | unmatched — not counted | — | listed in scope | no |
| Mellow Protocol HStrategy Security Analysis.pdf | DefaultAccessControlLateInit | unmatched — not counted | — | listed in scope | no |
| Mellow protocol Gearbox integration Security Analysis by Pessimistic.pdf | IGearboxRootVault | unmatched — not counted | — | listed in scope | no |
| Mellow protocol Gearbox integration Security Analysis by Pessimistic.pdf | IGearboxVault | unmatched — not counted | — | listed in scope | no |
| Mellow protocol Gearbox integration Security Analysis by Pessimistic.pdf | IGearboxVaultGovernance | unmatched — not counted | — | listed in scope | no |
| Mellow protocol Gearbox integration Security Analysis by Pessimistic.pdf | GearboxRootVault | unmatched — not counted | — | listed in scope | no |
| Mellow protocol Gearbox integration Security Analysis by Pessimistic.pdf | GearboxVault | unmatched — not counted | — | listed in scope | no |
| Mellow protocol Gearbox integration Security Analysis by Pessimistic.pdf | GearboxVaultGovernance | unmatched — not counted | — | listed in scope | no |
| Mellow protocol Gearbox integration Security Analysis by Pessimistic.pdf | IntegrationVault | unmatched — not counted | — | listed in scope | no |
| Mellow protocol Gearbox integration Security Analysis by Pessimistic.pdf | GearboxHelper | unmatched — not counted | — | listed in scope | no |
| StateMind Mellow LRT report with deployment.pdf | Vault | unmatched — not counted | — | listed in scope | no |
| StateMind Mellow LRT report with deployment.pdf | VaultConfigurator | unmatched — not counted | — | listed in scope | no |
| StateMind Mellow LRT report with deployment.pdf | ManagedValidator | unmatched — not counted | — | listed in scope | no |
| StateMind Mellow LRT report with deployment.pdf | DefaultBondStrategy | unmatched — not counted | — | listed in scope | no |
| StateMind Mellow LRT report with deployment.pdf | DepositWrapper | own contract | DepositWrapper (selected) `0x231002439e1bd5b610c3d98321ea760002b9ff64` — deployed 2023-02-19 16:59:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| StateMind Mellow LRT report with deployment.pdf | ChainlinkOracle | own contract | ChainlinkOracle (selected) `0x45ce8c3ddd839f09ab15641176f6b26cbc411130` — deployed 2022-07-28 20:07:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| StateMind Mellow LRT report with deployment.pdf | DefaultAccessControl | unmatched — not counted | — | listed in scope | no |
| StateMind Mellow LRT report with deployment.pdf | ERC20SwapValidator | unmatched — not counted | — | listed in scope | no |
| StateMind Mellow LRT report with deployment.pdf | ManagedRatiosOracle | unmatched — not counted | — | listed in scope | no |
| StateMind Mellow LRT report with deployment.pdf | ERC20SwapModule | unmatched — not counted | — | listed in scope | no |
| StateMind Mellow LRT report with deployment.pdf | DefaultBondTvlModule | unmatched — not counted | — | listed in scope | no |
| StateMind Mellow LRT report with deployment.pdf | DefaultBondValidator | unmatched — not counted | — | listed in scope | no |
| StateMind Mellow LRT report with deployment.pdf | DefaultBondModule | unmatched — not counted | — | listed in scope | no |
| StateMind Mellow LRT report with deployment.pdf | ManagedTvlModule | unmatched — not counted | — | listed in scope | no |
| StateMind Mellow LRT report with deployment.pdf | ERC20TvlModule | unmatched — not counted | — | listed in scope | no |
| StateMind Mellow LRT report with deployment.pdf | DefaultModule | unmatched — not counted | — | listed in scope | no |
| StateMind Mellow LRT report with deployment.pdf | AllowAllValidator | unmatched — not counted | — | listed in scope | no |
| StateMind Mellow LRT report with deployment.pdf | ConstantAggregatorV3 | unmatched — not counted | — | listed in scope | no |
| StateMind Mellow LRT report with deployment.pdf | WStethRatiosAggregatorV3 | unmatched — not counted | — | listed in scope | no |
| StateMind Mellow LRT report with deployment.pdf | FullMath | unmatched — not counted | — | listed in scope | no |
| Sherlock Mellow Modular LRTs Audit Report.pdf | Vault | unmatched — not counted | — | mentioned in code snippets and findings | no |
| Sherlock Mellow Modular LRTs Audit Report.pdf | ChainlinkOracle | own contract | ChainlinkOracle (selected) `0x45ce8c3ddd839f09ab15641176f6b26cbc411130` — deployed 2022-07-28 20:07:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sherlock Mellow Modular LRTs Audit Report.pdf | WStethRatiosAggregatorV3 | unmatched — not counted | — | mentioned in findings | no |
| Sherlock Mellow Modular LRTs Audit Report.pdf | ConstantAggregatorV3 | unmatched — not counted | — | mentioned in findings | no |
| Sherlock Mellow Modular LRTs Audit Report.pdf | SimpleDVTStakingStrategy | unmatched — not counted | — | mentioned in findings | no |
| Sherlock Mellow Modular LRTs Audit Report.pdf | StakingModule | unmatched — not counted | — | mentioned in findings | no |
| Sherlock Mellow Modular LRTs Audit Report.pdf | Configurator | unmatched — not counted | — | mentioned in findings | no |
| Sherlock Mellow Modular LRTs Audit Report.pdf | RatiosOracle | unmatched — not counted | — | mentioned in findings | no |
| Sherlock Mellow Modular LRTs Audit Report.pdf | PriceOracle | unmatched — not counted | — | mentioned in findings | no |
| Mellow Finance Simple-LRT and DVV Vault Security Audit Report.pdf | VaultControl | unmatched — not counted | — | listed in scope table | no |
| Mellow Finance Simple-LRT and DVV Vault Security Audit Report.pdf | DVV | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x5e362eb2c0706bd1d134689ec75176018385430b` — deployed 2024-08-02 20:07:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Mellow Finance Simple-LRT and DVV Vault Security Audit Report.pdf | MellowVaultCompat | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x64047dd3288276d70a4f8b5df54668c8403f877f` — deployed 2024-08-15 18:12:59+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x82f5104b23ff2fa54c2345f821dac9369e9e0b26` — deployed 2024-06-24 21:20:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x3a828c183b3f382d030136c824844ea30145b4c7` — deployed 2024-08-15 17:45:59+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xc65433845ecd16688eda196497fa9130d6c47bd8` — deployed 2024-06-24 20:46:35+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x7f43fde12a40de708d908fb3b9bfb8540d9ce444` — deployed 2024-08-14 18:59:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Mellow Finance Simple-LRT and DVV Vault Security Audit Report.pdf | ERC4626Vault | unmatched — not counted | — | listed in scope table | no |
| Mellow Finance Simple-LRT and DVV Vault Security Audit Report.pdf | VaultControlStorage | unmatched — not counted | — | listed in scope table | no |
| Mellow Finance Simple-LRT and DVV Vault Security Audit Report.pdf | MigratorDVV | unmatched — not counted | — | listed in scope table and mainnet deployments | no |
| ChainSecurity_MellowFinance_MellowLRT_Audit.pdf | Vault | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_MellowFinance_MellowLRT_Audit.pdf | VaultConfigurator | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_MellowFinance_MellowLRT_Audit.pdf | DefaultModule | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_MellowFinance_MellowLRT_Audit.pdf | ERC20SwapModule | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_MellowFinance_MellowLRT_Audit.pdf | ERC20TvlModule | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_MellowFinance_MellowLRT_Audit.pdf | ManagedTvlModule | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_MellowFinance_MellowLRT_Audit.pdf | StakingModule | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_MellowFinance_MellowLRT_Audit.pdf | DefaultBondModule | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_MellowFinance_MellowLRT_Audit.pdf | DefaultBondTvlModule | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_MellowFinance_MellowLRT_Audit.pdf | ChainlinkOracle | own contract | ChainlinkOracle (selected) `0x45ce8c3ddd839f09ab15641176f6b26cbc411130` — deployed 2022-07-28 20:07:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_MellowFinance_MellowLRT_Audit.pdf | ConstantAggregatorV3 | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_MellowFinance_MellowLRT_Audit.pdf | ManagedRatiosOracle | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_MellowFinance_MellowLRT_Audit.pdf | WStethRatiosAggregatorV3 | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_MellowFinance_MellowLRT_Audit.pdf | AdminProxy | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_MellowFinance_MellowLRT_Audit.pdf | DefaultProxyImplementation | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_MellowFinance_MellowLRT_Audit.pdf | Initializer | own contract | Initializer (selected) `0x39c62c6308bed7b0832cafc2bea0c0edc7f2060c` — deployed 2024-06-08 11:21:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_MellowFinance_MellowLRT_Audit.pdf | DefaultBondStrategy | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_MellowFinance_MellowLRT_Audit.pdf | SimpleDVTStakingStrategy | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_MellowFinance_MellowLRT_Audit.pdf | DefaultAccessControl | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_MellowFinance_MellowLRT_Audit.pdf | DepositWrapper | own contract | DepositWrapper (selected) `0x231002439e1bd5b610c3d98321ea760002b9ff64` — deployed 2023-02-19 16:59:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_MellowFinance_MellowLRT_Audit.pdf | RestrictingKeeper | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_MellowFinance_MellowLRT_Audit.pdf | AllowAllValidator | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_MellowFinance_MellowLRT_Audit.pdf | DefaultBondValidator | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_MellowFinance_MellowLRT_Audit.pdf | ERC20SwapValidator | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_MellowFinance_MellowLRT_Audit.pdf | ManagedValidator | unmatched — not counted | — | listed in scope table | no |
| Statemind Mellow Multi Vault Audit Report.pdf | EigenLayerFactoryHelper | unmatched — not counted | — | listed in scope | no |
| Statemind Mellow Multi Vault Audit Report.pdf | ERC4626Adapter | unmatched — not counted | — | listed in scope | no |
| Statemind Mellow Multi Vault Audit Report.pdf | EigenLayerAdapter | unmatched — not counted | — | listed in scope | no |
| Statemind Mellow Multi Vault Audit Report.pdf | EigenLayerWstETHAdapter | unmatched — not counted | — | listed in scope | no |
| Statemind Mellow Multi Vault Audit Report.pdf | IsolatedEigenLayerVault | unmatched — not counted | — | listed in scope | no |
| Statemind Mellow Multi Vault Audit Report.pdf | IsolatedEigenLayerVaultFactory | unmatched — not counted | — | listed in scope | no |
| Statemind Mellow Multi Vault Audit Report.pdf | IsolatedEigenLayerWstETHVault | unmatched — not counted | — | listed in scope | no |
| Statemind Mellow Multi Vault Audit Report.pdf | IsolatedEigenLayerWstETHVaultFactory | unmatched — not counted | — | listed in scope | no |
| Statemind Mellow Multi Vault Audit Report.pdf | SymbioticAdapter | unmatched — not counted | — | listed in scope | no |
| Statemind Mellow Multi Vault Audit Report.pdf | EigenLayerWithdrawalQueue | unmatched — not counted | — | listed in scope | no |
| Statemind Mellow Multi Vault Audit Report.pdf | SymbioticWithdrawalQueue | unmatched — not counted | — | listed in scope | no |
| Statemind Mellow Multi Vault Audit Report.pdf | RatiosStrategy | unmatched — not counted | — | listed in scope | no |
| Statemind Mellow Multi Vault Audit Report.pdf | Claimer | unmatched — not counted | — | listed in scope | no |
| Statemind Mellow Multi Vault Audit Report.pdf | WhitelistedEthWrapper | own contract | WhitelistedEthWrapper (selected) `0xfd4a4922d1afe70000ce0ec6806454e78256504e` — deployed 2025-02-20 14:04:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Statemind Mellow Multi Vault Audit Report.pdf | MultiVault | own contract | 0xe88cf9… (selected) `0xe88cf95e44a2ff048315b8b3858e59bb11b8a602` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Statemind Mellow Multi Vault Audit Report.pdf | MultiVaultStorage | unmatched — not counted | — | listed in scope | no |
| ChainSecurity Mellow Multivault Audit.pdf | ERC4626Adapter | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity Mellow Multivault Audit.pdf | SymbioticAdapter | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity Mellow Multivault Audit.pdf | EigenLayerAdapter | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity Mellow Multivault Audit.pdf | EigenLayerWstETHAdapter | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity Mellow Multivault Audit.pdf | IsolatedEigenLayerVault | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity Mellow Multivault Audit.pdf | IsolatedEigenLayerVaultFactory | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity Mellow Multivault Audit.pdf | IsolatedEigenLayerWstETHVault | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity Mellow Multivault Audit.pdf | IsolatedEigenLayerWstETHVaultFactory | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity Mellow Multivault Audit.pdf | WhitelistedEthWrapper | own contract | WhitelistedEthWrapper (selected) `0xfd4a4922d1afe70000ce0ec6806454e78256504e` — deployed 2025-02-20 14:04:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity Mellow Multivault Audit.pdf | SymbioticWithdrawalQueue | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity Mellow Multivault Audit.pdf | EigenLayerWithdrawalQueue | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity Mellow Multivault Audit.pdf | EigenLayerWstETHWithdrawalQueue | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity Mellow Multivault Audit.pdf | RatiosStrategy | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity Mellow Multivault Audit.pdf | Claimer | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity Mellow Multivault Audit.pdf | MultiVault | own contract | 0xe88cf9… (selected) `0xe88cf95e44a2ff048315b8b3858e59bb11b8a602` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity Mellow Multivault Audit.pdf | MultiVaultStorage | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity Mellow Multivault Audit.pdf | Migrator | own contract | Migrator (selected) `0x643ed3c06e19a96eabcbc32c2f665db16282beab` — deployed 2025-01-23 14:16:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity Mellow Multivault Audit.pdf | EigenLayerFactoryHelper | unmatched — not counted | — | listed in scope table | no |
| Nethermind Mellow Interop Audit Report.pdf | TargetCore | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x48e69cb6c6f05e194589be37408c5717e7cce1c7` — deployed 2025-08-22 17:33:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Nethermind Mellow Interop Audit Report.pdf | SourceCore | ambiguous — not counted | 0x9cd45b… (alternative) `0x9cd45b6e33433ed50738f508ad378b567603f61f` — liveness: live (current_address_book_code)<br>SourceCore (alternative) `0x013d1e716eeda3f86756ff22438308ed1d269afb` — deployed 2025-07-18 19:02:43+03 — liveness: live (current_address_book_code)<br>0x24dd1e… (alternative) `0x24dd1eabead7b3cb07b7d162439ec0a4eec703df` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Nethermind Mellow Interop Audit Report.pdf | TargetCoreStorage | unmatched — not counted | — | listed in audited files table | no |
| Nethermind Mellow Interop Audit Report.pdf | SourceCoreStorage | unmatched — not counted | — | listed in audited files table | no |
| Nethermind Mellow Interop Audit Report.pdf | Delegator | own contract | 0xd1547c… (selected) `0xd1547c9a5155c3f34a6ff0db0cf16171819fe08b` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Nethermind Mellow Interop Audit Report.pdf | WithdrawalQueue | ambiguous — not counted | 0xebd53e… (alternative) `0xebd53ef0b1651acae768fc9826e9656834ae3e4a` — liveness: live (current_address_book_code)<br>WithdrawalQueue (alternative) `0x88d282791d7d738cdf998a21310881e8b458bb2b` — deployed 2025-07-18 22:39:29+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Nethermind Mellow Interop Audit Report.pdf | Oracle | unmatched — not counted | — | listed in audited files table | no |
| Nethermind Mellow Interop Audit Report.pdf | MellowOFT | ambiguous — not counted | MellowOFT (alternative) `0x05e979fdceb5a82f963468a3f1e4c7ccf6957c84` — deployed 2025-07-28 01:16:59+03 — liveness: live (current_address_book_code)<br>0xf3a1c4… (alternative) `0xf3a1c44d1825fb49d633f681cb2b4e7de2e071d4` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Nethermind Mellow Interop Audit Report.pdf | MellowOFTAdapter | ambiguous — not counted | 0x9d9645… (alternative) `0x9d9645c761151fa4b390a0e79f63ba356ff1870a` — liveness: live (current_address_book_code)<br>MellowOFTAdapter (alternative) `0x24e6d68a553ba3146e10cdb06e9db996cea2bbba` — deployed 2025-07-18 19:02:43+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Nethermind Mellow Interop Audit Report.pdf | ISourceCoreStorage | unmatched — not counted | — | listed in audited files table | no |
| Nethermind Mellow Interop Audit Report.pdf | ITargetCoreStorage | unmatched — not counted | — | listed in audited files table | no |
| Nethermind Mellow Interop Audit Report.pdf | ITargetCore | unmatched — not counted | — | listed in audited files table | no |
| Nethermind Mellow Interop Audit Report.pdf | ISourceCore | unmatched — not counted | — | listed in audited files table | no |
| Nethermind Mellow Interop Audit Report.pdf | IWithdrawalQueue | unmatched — not counted | — | listed in audited files table | no |
| Nethermind Mellow Interop Audit Report.pdf | IDelegator | unmatched — not counted | — | listed in audited files table | no |
| Nethermind Mellow Interop Audit Report.pdf | IOracle | unmatched — not counted | — | listed in audited files table | no |
| Nethermind Mellow Interop Audit Report.pdf | IMellowOFT | unmatched — not counted | — | listed in audited files table | no |
| Nethermind Mellow Interop Audit Report.pdf | IMellowOFTAdapter | unmatched — not counted | — | listed in audited files table | no |
| Decurity Mellow Interop Audit Report.pdf | TargetCore | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x48e69cb6c6f05e194589be37408c5717e7cce1c7` — deployed 2025-08-22 17:33:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Decurity Mellow Interop Audit Report.pdf | SourceCore | ambiguous — not counted | 0x9cd45b… (alternative) `0x9cd45b6e33433ed50738f508ad378b567603f61f` — liveness: live (current_address_book_code)<br>SourceCore (alternative) `0x013d1e716eeda3f86756ff22438308ed1d269afb` — deployed 2025-07-18 19:02:43+03 — liveness: live (current_address_book_code)<br>0x24dd1e… (alternative) `0x24dd1eabead7b3cb07b7d162439ec0a4eec703df` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Decurity Mellow Interop Audit Report.pdf | TargetCoreStorage | unmatched — not counted | — | listed in scope section | no |
| Decurity Mellow Interop Audit Report.pdf | SourceCoreStorage | unmatched — not counted | — | listed in scope section | no |
| Decurity Mellow Interop Audit Report.pdf | Delegator | own contract | 0xd1547c… (selected) `0xd1547c9a5155c3f34a6ff0db0cf16171819fe08b` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Decurity Mellow Interop Audit Report.pdf | WithdrawalQueue | ambiguous — not counted | 0xebd53e… (alternative) `0xebd53ef0b1651acae768fc9826e9656834ae3e4a` — liveness: live (current_address_book_code)<br>WithdrawalQueue (alternative) `0x88d282791d7d738cdf998a21310881e8b458bb2b` — deployed 2025-07-18 22:39:29+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Decurity Mellow Interop Audit Report.pdf | Oracle | unmatched — not counted | — | listed in scope section | no |
| Decurity Mellow Interop Audit Report.pdf | MellowOFT | ambiguous — not counted | MellowOFT (alternative) `0x05e979fdceb5a82f963468a3f1e4c7ccf6957c84` — deployed 2025-07-28 01:16:59+03 — liveness: live (current_address_book_code)<br>0xf3a1c4… (alternative) `0xf3a1c44d1825fb49d633f681cb2b4e7de2e071d4` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Decurity Mellow Interop Audit Report.pdf | MellowOFTAdapter | ambiguous — not counted | 0x9d9645… (alternative) `0x9d9645c761151fa4b390a0e79f63ba356ff1870a` — liveness: live (current_address_book_code)<br>MellowOFTAdapter (alternative) `0x24e6d68a553ba3146e10cdb06e9db996cea2bbba` — deployed 2025-07-18 19:02:43+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Sherlock_Mellow-Core-Vaults_20250728.pdf | Factory | unmatched — not counted | — | listed in scope | no |
| Sherlock_Mellow-Core-Vaults_20250728.pdf | BasicRedeemHook | unmatched — not counted | — | listed in scope | no |
| Sherlock_Mellow-Core-Vaults_20250728.pdf | LidoDepositHook | unmatched — not counted | — | listed in scope | no |
| Sherlock_Mellow-Core-Vaults_20250728.pdf | RedirectingDepositHook | unmatched — not counted | — | listed in scope | no |
| Sherlock_Mellow-Core-Vaults_20250728.pdf | FenwickTreeLibrary | unmatched — not counted | — | listed in scope | no |
| Sherlock_Mellow-Core-Vaults_20250728.pdf | ShareManagerFlagLibrary | unmatched — not counted | — | listed in scope | no |
| Sherlock_Mellow-Core-Vaults_20250728.pdf | SlotLibrary | unmatched — not counted | — | listed in scope | no |
| Sherlock_Mellow-Core-Vaults_20250728.pdf | TransferLibrary | unmatched — not counted | — | listed in scope | no |
| Sherlock_Mellow-Core-Vaults_20250728.pdf | BasicShareManager | unmatched — not counted | — | listed in scope | no |
| Sherlock_Mellow-Core-Vaults_20250728.pdf | FeeManager | unmatched — not counted | — | listed in scope | no |
| Sherlock_Mellow-Core-Vaults_20250728.pdf | RiskManager | unmatched — not counted | — | listed in scope | no |
| Sherlock_Mellow-Core-Vaults_20250728.pdf | ShareManager | unmatched — not counted | — | listed in scope | no |
| Sherlock_Mellow-Core-Vaults_20250728.pdf | TokenizedShareManager | unmatched — not counted | — | listed in scope | no |
| Sherlock_Mellow-Core-Vaults_20250728.pdf | ACLModule | unmatched — not counted | — | listed in scope | no |
| Sherlock_Mellow-Core-Vaults_20250728.pdf | BaseModule | unmatched — not counted | — | listed in scope | no |
| Sherlock_Mellow-Core-Vaults_20250728.pdf | CallModule | unmatched — not counted | — | listed in scope | no |
| Sherlock_Mellow-Core-Vaults_20250728.pdf | ShareModule | unmatched — not counted | — | listed in scope | no |
| Sherlock_Mellow-Core-Vaults_20250728.pdf | SubvaultModule | unmatched — not counted | — | listed in scope | no |
| Sherlock_Mellow-Core-Vaults_20250728.pdf | VaultModule | unmatched — not counted | — | listed in scope | no |
| Sherlock_Mellow-Core-Vaults_20250728.pdf | VerifierModule | unmatched — not counted | — | listed in scope | no |
| Sherlock_Mellow-Core-Vaults_20250728.pdf | Oracle | unmatched — not counted | — | listed in scope | no |
| Sherlock_Mellow-Core-Vaults_20250728.pdf | BitmaskVerifier | unmatched — not counted | — | listed in scope | no |
| Sherlock_Mellow-Core-Vaults_20250728.pdf | Consensus | unmatched — not counted | — | listed in scope | no |
| Sherlock_Mellow-Core-Vaults_20250728.pdf | MellowACL | unmatched — not counted | — | listed in scope | no |
| Sherlock_Mellow-Core-Vaults_20250728.pdf | EigenLayerVerifier | unmatched — not counted | — | listed in scope | no |
| Sherlock_Mellow-Core-Vaults_20250728.pdf | ERC20Verifier | unmatched — not counted | — | listed in scope | no |
| Sherlock_Mellow-Core-Vaults_20250728.pdf | OwnedCustomVerifier | unmatched — not counted | — | listed in scope | no |
| Sherlock_Mellow-Core-Vaults_20250728.pdf | SymbioticVerifier | unmatched — not counted | — | listed in scope | no |
| Sherlock_Mellow-Core-Vaults_20250728.pdf | Verifier | unmatched — not counted | — | listed in scope | no |
| Sherlock_Mellow-Core-Vaults_20250728.pdf | DepositQueue | unmatched — not counted | — | listed in scope | no |
| Sherlock_Mellow-Core-Vaults_20250728.pdf | Queue | unmatched — not counted | — | listed in scope | no |
| Sherlock_Mellow-Core-Vaults_20250728.pdf | RedeemQueue | unmatched — not counted | — | listed in scope | no |
| Sherlock_Mellow-Core-Vaults_20250728.pdf | SignatureDepositQueue | unmatched — not counted | — | listed in scope | no |
| Sherlock_Mellow-Core-Vaults_20250728.pdf | SignatureQueue | unmatched — not counted | — | listed in scope | no |
| Sherlock_Mellow-Core-Vaults_20250728.pdf | SignatureRedeemQueue | unmatched — not counted | — | listed in scope | no |
| Sherlock_Mellow-Core-Vaults_20250728.pdf | Subvault | unmatched — not counted | — | listed in scope | no |
| Sherlock_Mellow-Core-Vaults_20250728.pdf | VaultConfigurator | unmatched — not counted | — | listed in scope | no |
| Sherlock_Mellow-Core-Vaults_20250728.pdf | Vault | unmatched — not counted | — | listed in scope | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | BitmaskVerifier | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | Consensus | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | Verifier | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | MellowACL | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | EigenLayerVerifier | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | OwnedCustomVerifier | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | ERC20Verifier | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | SymbioticVerifier | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | SymbioticStrategy | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | SignatureDepositQueue | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | RedeemQueue | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | SignatureQueue | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | Queue | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | DepositQueue | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | SignatureRedeemQueue | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | TokenizedShareManager | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | RiskManager | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | ShareManager | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | FeeManager | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | BasicShareManager | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | LidoDepositHook | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | RedirectingDepositHook | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | BasicRedeemHook | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | TransferLibrary | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | ShareManagerFlagLibrary | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | SlotLibrary | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | FenwickTreeLibrary | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | IMellowACL | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | IConsensus | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | IVerifier | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | ICustomVerifier | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | IQueue | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | IRedeemQueue | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | IDepositQueue | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | ISignatureQueue | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | IRiskManager | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | ITokenizedShareManager | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | IShareManager | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | IFeeManager | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | IHook | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | IRedeemHook | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | IFactory | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | IFactoryEntity | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | IOracle | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | ISymbioticRegistry | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | ISymbioticVault | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | ISymbioticStakerRewards | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | IRewardsCoordinator | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | IDelegationManager | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | IAllocationManager | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | ISignatureUtils | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | IStrategy | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | IStrategyManager | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | IWSTETH | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | IWETH | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | IVerifierModule | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | IBaseModule | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | IShareModule | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | IACLModule | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | IVaultModule | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | ISubvaultModule | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | ICallModule | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | Factory | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | OracleHelper | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | Oracle | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | Subvault | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | VaultConfigurator | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | Vault | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | VerifierModule | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | SubvaultModule | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | ACLModule | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | CallModule | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | ShareModule | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | VaultModule | unmatched — not counted | — | listed in scope table | no |
| Nethermind_Mellow-Core-Vaults_20250903.pdf | BaseModule | unmatched — not counted | — | listed in scope table | no |
| NM_0758_Mellow-1.pdf | SyncDepositQueue | unmatched — not counted | — | listed in Audited Files table | no |
| NM_0758_Mellow-1.pdf | SyncQueue | unmatched — not counted | — | listed in Audited Files table | no |
| NM0735-FINAL_MELLOW (1).pdf | SwapModule | unmatched — not counted | — | Listed in Audited Files table and throughout report as the sole contract in scope. | no |
| NM0758-FINAL_Mellow (1).pdf | SyncDepositQueue | unmatched — not counted | — | listed in Audited Files table | no |
| NM0758-FINAL_Mellow (1).pdf | SyncQueue | unmatched — not counted | — | listed in Audited Files table | no |
| NM0798-FINAL_MELLOW (1).pdf | BurnableTokenizedShareManager | unmatched — not counted | — | listed in Audited Files table | no |
| NM0812-FINAL_Mellow (1).pdf | ShareManager | unmatched — not counted | — | The changes are meant to transfer the fees from the ShareManager contract to the feeRecipient address via burn and mint. | no |
| NM0703-FINAL_MELLOW (1).pdf | OracleSubmitter | own contract | OracleSubmitter (selected) `0x00000000df0088bd598df1e4ae57943dc481907a` — deployed 2025-11-21 14:54:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| NM0682-FINAL_Mellow (1).pdf | Migrator | own contract | Migrator (selected) `0x643ed3c06e19a96eabcbc32c2f665db16282beab` — deployed 2025-01-23 14:16:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | `0x2ae9df02539887d4ebce0230168a302d34784c82` | CLPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x5b1b1aac71bdca9ed1dcb2aa357f678584db4029` | CreateStrategyHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x57e114b691db790c35207b2e685d4a43181e6061` | ENA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x05164ec2c3074a4e8ea20513fbe98790ffe930a4` | ERC20VaultGovernance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0fd566cda6d6a3ae1760e1eebd22ee400cc79655` | FarmWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x20157dbabb84e3bbfe68c349d0d44e48ae7b5ad2` | IBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x09636bd5dc37b364e430f4d9c60e0c214aa6ad43` | LpWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x05e979fdceb5a82f963468a3f1e4c7ccf6957c84` | MellowOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | `0x24e6d68a553ba3146e10cdb06e9db996cea2bbba` | MellowOFTAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2683b341a25455619f5ff8511c14b3e760a868ed` | PulseStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x734effcb7981b00046a9fcb00d6abd477bbf9684` | PulseStrategyModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x4b7c2cd551052e2d4516987936d738339dbeffef` | PulseVeloBotLazy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | `0x013d1e716eeda3f86756ff22438308ed1d269afb` | SourceCore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta-pacific | `0x474dd66474b82dcb770865471964463f7153ba69` | SourceHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9d39a5de30e57443bff2a8307a4256c8797a3497` | StakedUSDeV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x0a64501684dd1df7e8c06456dbd324f971848914` | StakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x18084fba666a33d37592fa2633fd49a74dd93a88` | TBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x57b946008913b82e4df85f501cbaed910e58d26c` | TokenLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x004e9c3ef86bc1ca1f0bb5c7662861ee93350568` | uniBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x5b1b1aac71bdca9ed1dcb2aa357f678584db4029` | VeloDeployFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x28c75f34c18937c492545be8fe278ede4dd70043` | VeloDepositWithdrawModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2260fac5e5542a773aa44fbcfedf7c193bc2c599` | WBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | `0x88d282791d7d738cdf998a21310881e8b458bb2b` | WithdrawalQueue | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0` | WstETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 390 |
| upstream | 22 |
| standard_library | 10 |
| needs_review | 411 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Address-book scope dispositions: 32 own (3 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 9 ambiguous, 267 unmatched
- Matched-own operational status: 32 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=21
- Match method counts: unique_name=32

Zero-match audit list:

- [17629] Mellow protocol Gearbox integration Security Analysis by Pessimistic.pdf
- [17638] Sherlock_Mellow-Core-Vaults_20250728.pdf
- [17639] Nethermind_Mellow-Core-Vaults_20250903.pdf
- [17640] NM_0758_Mellow-1.pdf
- [17641] NM0735-FINAL_MELLOW (1).pdf
- [17642] NM0758-FINAL_Mellow (1).pdf
- [17643] NM0798-FINAL_MELLOW (1).pdf
- [17644] NM0812-FINAL_Mellow (1).pdf

Fork inheritance lineage and inherited audits are included when available.
