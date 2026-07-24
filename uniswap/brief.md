# Agentic Audit Brief: Uniswap

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 20 (0 matched; 20 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Uniswap (`uniswap`)
- Website: [https://app.uniswap.org/](https://app.uniswap.org/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, avalanche, base, base-sepolia, blast, boba, bsc, celo, ethereum, gnosis, ink, linea, manta-pacific, mantle, monad, moonbeam, optimism, plasma, polygon, polygon-zkevm, scroll, sei, sepolia, sonic, unichain, x-layer, zksync-era, zora
- Contract surface: 1035 unique implementations (1048 raw deployments)
- Coverage basis: 0/33 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,839,201,157.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Uniswap. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 33 contract row(s) across arbitrum, avalanche, base, base-sepolia, blast, bsc, celo, ethereum, gnosis, linea, manta-pacific, mantle, megaeth, monad, moonbeam, optimism, polygon, sei, sepolia, sonic, unichain, x-layer, zksync-era, zora. Structural roles: 26 core, 7 supporting. 4 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 33
- Structural roles: core (26), supporting (7)
- Contract kinds: contract (33)
- Detected standards: erc1967proxy (3), multicall (3), erc165 (1), erc20 (1), erc721 (1)
- Frameworks: openzeppelin (15), solmate (13), permit2 (10), uniswap-v3 (7), solady (6), uniswap-v2 (3), foundry (2), openzeppelin-upgradeable (1), uniswap (1)
- Upgradeable-pattern rows: 4

## Fork Analysis

0 of 260 contracts are derived from known codebases. 260 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x000000005c84f8fd50b21cac312528a64437030e`, chain 1)
- UnnamedContract (`0x00004c4ccc709ef590f7c81102c0689f0263d4e9`, chain 1)
- UnnamedContract (`0x00cca200bf124dbfa848937c553864f4b4ce0632`, chain 1)
- UnnamedContract (`0x1a9c8182c09f50c8318d769245bea52c32be35bc`, chain 1)
- UnnamedContract (`0x1f98415757620b543a52e61c46b32eb19261f984`, chain 1)
- UnnamedContract (`0x1f98431c8ad98523631ae4a59f267346ea31f984`, chain 1)
- UnnamedContract (`0x42b24a95702b9986e82d421cc3568932790a48ec`, chain 1)
- UnnamedContract (`0x5ba1e12693dc8f9c48aad8770482f4739beed696`, chain 1)
- UnnamedContract (`0x5c69bee701ef814a2b6a3edd4b1652cb9cc5aa6f`, chain 1)
- UnnamedContract (`0x61ffe014ba17989e743c5f6cb21bf9697530b21e`, chain 1)
- UnnamedContract (`0x65af3b62ee79763c704f04238080fbadd005b332`, chain 1)
- UnnamedContract (`0x66a9893cc07d91d95644aedd05d03f95e1dba8af`, chain 1)
- UnnamedContract (`0x68b3465833fb72a70ecdf485e0e4c7bd8665fc45`, chain 1)
- UnnamedContract (`0x7a250d5630b4cf539739df2c5dacb4c659f2488d`, chain 1)
- UnnamedContract (`0x8ad599c3a0ff1de082011efddc58f1908eb6e6d8`, chain 1)
- UnnamedContract (`0x91ae842a5ffd8d12023116943e72a606179294f3`, chain 1)
- UnnamedContract (`0xa5644e29708357803b5a882d272c41cc0df92b34`, chain 1)
- UnnamedContract (`0xb27308f9f90d607463bb33ea1bebb41c27ce5ab6`, chain 1)
- UnnamedContract (`0xb753548f6e010e7e680ba186f9ca1bdab2e90cf2`, chain 1)
- UnnamedContract (`0xb98766a35cdc28415be0767d4ea41e39fba3e000`, chain 1)
- UnnamedContract (`0xbbbb6ffabccb1eafd4f0baed6764d8aa973316b6`, chain 1)
- UnnamedContract (`0xbfd8137f7d1516d3ea5ca83523914859ec47f573`, chain 1)
- UnnamedContract (`0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2`, chain 1)
- UnnamedContract (`0xc36442b4a4522e871399cd717abdd847ab11fe88`, chain 1)
- UnnamedContract (`0xc6ef4c96ee89e48eff1c35545dbeed4ad8dac9d4`, chain 1)
- UnnamedContract (`0xcccccccae7503cac057829bf2811de42e16e0bd5`, chain 1)
- UnnamedContract (`0xe34139463ba50bd61336e0c446bd8c0867c6fe65`, chain 1)
- UnnamedContract (`0xee6a57ec80ea46401049e92587e52f5ec1c24785`, chain 1)
- UnnamedContract (`0xf38521f130fccf29db1961597bc5d2b60f995f85`, chain 1)
- UnnamedContract (`0x000000000022d473030f116ddee9f6b43ac78ba3`, chain 10)
- UnnamedContract (`0x000000005c84f8fd50b21cac312528a64437030e`, chain 10)
- UnnamedContract (`0x0c3c1c532f1e39edf36be9fe0be1410313e074bf`, chain 10)
- UnnamedContract (`0x1f98431c8ad98523631ae4a59f267346ea31f984`, chain 10)
- UnnamedContract (`0x42b24a95702b9986e82d421cc3568932790a48ec`, chain 10)
- UnnamedContract (`0x4a7b5da61326a6379179b40d00f57e5bbdc962c2`, chain 10)
- UnnamedContract (`0x61ffe014ba17989e743c5f6cb21bf9697530b21e`, chain 10)
- UnnamedContract (`0x68b3465833fb72a70ecdf485e0e4c7bd8665fc45`, chain 10)
- UnnamedContract (`0x851116d9223fabed8e56c0e6b8ad0c31d98b3507`, chain 10)
- UnnamedContract (`0x91ae842a5ffd8d12023116943e72a606179294f3`, chain 10)
- UnnamedContract (`0xb27308f9f90d607463bb33ea1bebb41c27ce5ab6`, chain 10)
- UnnamedContract (`0xb753548f6e010e7e680ba186f9ca1bdab2e90cf2`, chain 10)
- UnnamedContract (`0xbfd8137f7d1516d3ea5ca83523914859ec47f573`, chain 10)
- UnnamedContract (`0xc36442b4a4522e871399cd717abdd847ab11fe88`, chain 10)
- UnnamedContract (`0xe34139463ba50bd61336e0c446bd8c0867c6fe65`, chain 10)
- UnnamedContract (`0xe592427a0aece92de3edee1f18e0157c05861564`, chain 10)
- UnnamedContract (`0xee6a57ec80ea46401049e92587e52f5ec1c24785`, chain 10)
- UnnamedContract (`0x000000000022d473030f116ddee9f6b43ac78ba3`, chain 56)
- UnnamedContract (`0x000000005c84f8fd50b21cac312528a64437030e`, chain 56)
- UnnamedContract (`0x00000000a55e50c71b70db3c8b58749cd1e18eb2`, chain 56)
- UnnamedContract (`0x0281e98322e4e8e53491d576ee6a2bfce644c55c`, chain 56)
- UnnamedContract (`0x1906c1d672b88cd1b9ac7593301ca990f94eae07`, chain 56)
- UnnamedContract (`0x32681814957e0c13117ddc0c2aba232b5c9e760f`, chain 56)
- UnnamedContract (`0x4752ba5dbc23f44d87826276bf6fd6b1c372ad24`, chain 56)
- UnnamedContract (`0x49b53c35af9072fc71767577bf6380a88ee32c71`, chain 56)
- UnnamedContract (`0x78d78e420da98ad378d7799be8f4af69033eb077`, chain 56)
- UnnamedContract (`0x7b8a01b39d58278b5de7e48c8449c9f4f5170613`, chain 56)
- UnnamedContract (`0x831d93e55af23a2977e4da892d5005f4f2995071`, chain 56)
- UnnamedContract (`0x8909dc15e40173ff4699343b6eb8132c65e18ec6`, chain 56)
- UnnamedContract (`0x963df249ed09c358a4819e39d9cd5736c3087184`, chain 56)
- UnnamedContract (`0xaec98e489ae35f243eb63452f6ad233a6c97ee97`, chain 56)
- UnnamedContract (`0xb971ef87ede563556b2ed4b1c0b0019111dd85d2`, chain 56)
- UnnamedContract (`0xc9a7f5b73e853664044ab31936d0e6583d8b1c79`, chain 56)
- UnnamedContract (`0xd9270014d396281579760619ccf4c3af0501a47c`, chain 56)
- UnnamedContract (`0xdb1d10011ad0ff90774d0c6bb92e5c5c8b4461f7`, chain 56)
- UnnamedContract (`0x000000000022d473030f116ddee9f6b43ac78ba3`, chain 130)
- UnnamedContract (`0x000000005af66799d1a6317714d66800f9ca1406`, chain 130)
- UnnamedContract (`0x000000005c84f8fd50b21cac312528a64437030e`, chain 130)
- UnnamedContract (`0x1f98400000000000000000000000000000000002`, chain 130)
- UnnamedContract (`0x1f98400000000000000000000000000000000003`, chain 130)
- UnnamedContract (`0x1f98431c8ad98523631ae4a59f267346ea31f984`, chain 130)
- UnnamedContract (`0x385a5cf5f83e99f7bb2852b6a19c3538b9fa7658`, chain 130)
- UnnamedContract (`0x4200000000000000000000000000000000000006`, chain 130)
- UnnamedContract (`0x435ddcfbb7a6741a5cc962a95d6915ebbf60ae24`, chain 130)
- UnnamedContract (`0x73855d06de49d0fe4a9c42636ba96c62da12ff9c`, chain 130)
- UnnamedContract (`0x824a3ecde463dd45cc156b64cefa132596c9a000`, chain 130)
- UnnamedContract (`0x943e6e07a7e8e791dafc44083e54041d743c46e9`, chain 130)
- UnnamedContract (`0xaa56d4d68646b4858a5a3a99058169d0100b38e2`, chain 130)
- UnnamedContract (`0xb7610f9b733e7d45184be3a1bc966960ccc54f0b`, chain 130)
- UnnamedContract (`0xb9d0c246f306b1aaf02ae6ba112d5ef25e5b60dc`, chain 130)
- UnnamedContract (`0xc6ef4c96ee89e48eff1c35545dbeed4ad8dac9d4`, chain 130)
- UnnamedContract (`0xd5d76fa166ab8d8ad4c9f61aaa81457b66cbe443`, chain 130)
- UnnamedContract (`0xeb44195e1847f23d4ff411b7d501b726c7620529`, chain 130)
- UnnamedContract (`0x000000000022d473030f116ddee9f6b43ac78ba3`, chain 137)
- UnnamedContract (`0x1f98415757620b543a52e61c46b32eb19261f984`, chain 137)
- UnnamedContract (`0x1f98431c8ad98523631ae4a59f267346ea31f984`, chain 137)
- UnnamedContract (`0x42b24a95702b9986e82d421cc3568932790a48ec`, chain 137)
- UnnamedContract (`0x61ffe014ba17989e743c5f6cb21bf9697530b21e`, chain 137)
- UnnamedContract (`0x68b3465833fb72a70ecdf485e0e4c7bd8665fc45`, chain 137)
- UnnamedContract (`0x91ae842a5ffd8d12023116943e72a606179294f3`, chain 137)
- UnnamedContract (`0x9e5a52f57b3038f1b8eee45f28b3c1967e22799c`, chain 137)
- UnnamedContract (`0xa5644e29708357803b5a882d272c41cc0df92b34`, chain 137)
- UnnamedContract (`0xb27308f9f90d607463bb33ea1bebb41c27ce5ab6`, chain 137)
- UnnamedContract (`0xb753548f6e010e7e680ba186f9ca1bdab2e90cf2`, chain 137)
- UnnamedContract (`0xbfd8137f7d1516d3ea5ca83523914859ec47f573`, chain 137)
- UnnamedContract (`0xc36442b4a4522e871399cd717abdd847ab11fe88`, chain 137)
- UnnamedContract (`0xe34139463ba50bd61336e0c446bd8c0867c6fe65`, chain 137)
- UnnamedContract (`0xe592427a0aece92de3edee1f18e0157c05861564`, chain 137)
- UnnamedContract (`0xedf6066a2b290c185783862c7f4776a2c8077ad1`, chain 137)
- UnnamedContract (`0xee6a57ec80ea46401049e92587e52f5ec1c24785`, chain 137)
- UnnamedContract (`0x000000009b1d0af20d8c6d0a44e162d11f9b8f00`, chain 143)
- UnnamedContract (`0x000000000022d473030f116ddee9f6b43ac78ba3`, chain 196)
- UnnamedContract (`0x2e9d45bb7b30549f5216813ada9a6b7982c5b3ed`, chain 196)
- UnnamedContract (`0x315e413a11ab0df498ef83873012430ca36638ae`, chain 196)
- UnnamedContract (`0x4b2ab38dbf28d31d467aa8993f6c2585981d6804`, chain 196)
- UnnamedContract (`0x4f0c28f5926afda16bf2506d5d9e57ea190f9bca`, chain 196)
- UnnamedContract (`0x5507749f2c558bb3e162c6e90c314c092e7372ff`, chain 196)
- UnnamedContract (`0x661e93cca42afacb172121ef892830ca3b70f08d`, chain 196)
- UnnamedContract (`0x7197e214c0b767cfb76fb734ab638e2c192f4e53`, chain 196)
- UnnamedContract (`0xd1b797d92d87b688193a2b976efc8d577d204343`, chain 196)
- UnnamedContract (`0xda00ae15d3a71466517129255255db7c0c0956d3`, chain 196)
- UnnamedContract (`0xe2023f3fa515cf070e07fd9d51c1d236e07843f4`, chain 196)
- UnnamedContract (`0xe538905cf8410324e03a5a23c1c177a474d59b2b`, chain 196)
- UnnamedContract (`0x0000000000225e31d15943971f47ad3022f714fa`, chain 324)
- UnnamedContract (`0x000000000022d473030f116ddee9f6b43ac78ba3`, chain 324)
- UnnamedContract (`0x0616e5762c1e7dc3723c50663df10a162d690a86`, chain 324)
- UnnamedContract (`0x0c68a7c72f074d1c45c16d41fa74eebc6d16a65c`, chain 324)
- UnnamedContract (`0x28731bcc616b5f51dd52cf2e4df0e78dd1136c06`, chain 324)
- UnnamedContract (`0x5aea5775959fbc2557cc8789bc1bf90a239d9a91`, chain 324)
- UnnamedContract (`0x611841b24e43c4acfd290b427a3d6cf1a59dac8e`, chain 324)
- UnnamedContract (`0x7d67b8ff4abffc020641f5e430fbeed03897674d`, chain 324)
- UnnamedContract (`0x8cb537fc92e26d8ebbb760e632c95484b6ea3e28`, chain 324)
- UnnamedContract (`0x8fda5a7a8dca67bbcdd10f02fa0649a937215422`, chain 324)
- UnnamedContract (`0x99c56385dabce3e81d8499d0b8d0257abc07e8a3`, chain 324)
- UnnamedContract (`0xa819de78cab1163f8605809392068ede3bfcdd1e`, chain 324)
- UnnamedContract (`0xaeabf2d69698c6810d2596fae86099790a13ee81`, chain 324)
- UnnamedContract (`0xbb79274ad9c7f68a5b6a7e31f431175bb889b557`, chain 324)
- UnnamedContract (`0xe10ff11b809f8ee07b056b452c3b2caa7fe24f89`, chain 324)
- UnnamedContract (`0xf84268fa8eb857c2e4298720c1c617178f5e78e1`, chain 324)
- UnnamedContract (`0x000000000022d473030f116ddee9f6b43ac78ba3`, chain 8453)
- UnnamedContract (`0x000000005c84f8fd50b21cac312528a64437030e`, chain 8453)
- UnnamedContract (`0x000000008a8330b5d1f43a62bf4c673a49f27ba0`, chain 8453)
- UnnamedContract (`0x00000000a3db63df9078cbf3df88b4cadd5a7f58`, chain 8453)
- UnnamedContract (`0x091e99cb1c49331a94dd62755d168e941abd0693`, chain 8453)
- UnnamedContract (`0x0cdee061c75d43c82520ed998c23ac2991c9ac6d`, chain 8453)
- UnnamedContract (`0x23cf10b1ee3adfca73b0ef17c07f7577e7acd2d7`, chain 8453)
- UnnamedContract (`0x2626664c2603336e57b271c5c0b26f421741e481`, chain 8453)
- UnnamedContract (`0x33128a8fc17869897dce68ed026d694621f6fdfd`, chain 8453)
- UnnamedContract (`0x3334d83e224af5ef9c2e7dda7c7c98efd9621fa9`, chain 8453)
- UnnamedContract (`0x3d4e44eb1374240ce5f1b871ab261cd16335b76a`, chain 8453)
- UnnamedContract (`0x4200000000000000000000000000000000000006`, chain 8453)
- UnnamedContract (`0x42be4d6527829fefa1493e1fb9f3676d2425c3c1`, chain 8453)
- UnnamedContract (`0x4615c383f85d0a2bbed973d83ccecf5cb7121463`, chain 8453)
- UnnamedContract (`0x4752ba5dbc23f44d87826276bf6fd6b1c372ad24`, chain 8453)
- UnnamedContract (`0x4f225937edc33efd6109c4cef7b560b2d6401009`, chain 8453)
- UnnamedContract (`0x5bb4bafafec57bed50d864aaa9d1ef992611e000`, chain 8453)
- UnnamedContract (`0x6ff5693b99212da76ad316178a184ab56d299b43`, chain 8453)
- UnnamedContract (`0x8909dc15e40173ff4699343b6eb8132c65e18ec6`, chain 8453)
- UnnamedContract (`0x9c5a6fb9b0d9a60e665d93a3e6923bde428c389a`, chain 8453)
- UnnamedContract (`0xc46143ae2801b21b8c08a753f9f6b52bead9c134`, chain 8453)
- UnnamedContract (`0xc6ef4c96ee89e48eff1c35545dbeed4ad8dac9d4`, chain 8453)
- UnnamedContract (`0xf9d1077fd35670d4acbd27af82652a8d84577d9f`, chain 8453)
- UnnamedContract (`0x000000000022d473030f116ddee9f6b43ac78ba3`, chain 42161)
- UnnamedContract (`0x000000005c84f8fd50b21cac312528a64437030e`, chain 42161)
- UnnamedContract (`0x18608ad558dcd233f7854242bbaef73988bee000`, chain 42161)
- UnnamedContract (`0x1f98431c8ad98523631ae4a59f267346ea31f984`, chain 42161)
- UnnamedContract (`0x42b24a95702b9986e82d421cc3568932790a48ec`, chain 42161)
- UnnamedContract (`0x4752ba5dbc23f44d87826276bf6fd6b1c372ad24`, chain 42161)
- UnnamedContract (`0x61ffe014ba17989e743c5f6cb21bf9697530b21e`, chain 42161)
- UnnamedContract (`0x68b3465833fb72a70ecdf485e0e4c7bd8665fc45`, chain 42161)
- UnnamedContract (`0x91ae842a5ffd8d12023116943e72a606179294f3`, chain 42161)
- UnnamedContract (`0xa51afafe0263b40edaef0df8781ea9aa03e381a3`, chain 42161)
- UnnamedContract (`0xa5644e29708357803b5a882d272c41cc0df92b34`, chain 42161)
- UnnamedContract (`0xadf885960b47ea2cd9b55e6dac6b42b7cb2806db`, chain 42161)
- UnnamedContract (`0xb27308f9f90d607463bb33ea1bebb41c27ce5ab6`, chain 42161)
- UnnamedContract (`0xb274d5f4b833b61b340b654d600a864fb604a87c`, chain 42161)
- UnnamedContract (`0xb753548f6e010e7e680ba186f9ca1bdab2e90cf2`, chain 42161)
- UnnamedContract (`0xbfd8137f7d1516d3ea5ca83523914859ec47f573`, chain 42161)
- UnnamedContract (`0xc36442b4a4522e871399cd717abdd847ab11fe88`, chain 42161)
- UnnamedContract (`0xc6ef4c96ee89e48eff1c35545dbeed4ad8dac9d4`, chain 42161)
- UnnamedContract (`0xe34139463ba50bd61336e0c446bd8c0867c6fe65`, chain 42161)
- UnnamedContract (`0xe592427a0aece92de3edee1f18e0157c05861564`, chain 42161)
- UnnamedContract (`0xee6a57ec80ea46401049e92587e52f5ec1c24785`, chain 42161)
- UnnamedContract (`0xf1d7cc64fb4452f05c498126312ebe29f30fbcf9`, chain 42161)
- UnnamedContract (`0x000000000022d473030f116ddee9f6b43ac78ba3`, chain 42220)
- UnnamedContract (`0x0ec9d3c06bc0a472a80085244d897bb604548824`, chain 42220)
- UnnamedContract (`0x245d3f47f55c532dbe9340368855be631b162cfd`, chain 42220)
- UnnamedContract (`0x3c1fcf8d6f3a579e98f4ae75eb0ada6de70f5673`, chain 42220)
- UnnamedContract (`0x3cfd4d48edfdcc53d3f173f596f621064614c582`, chain 42220)
- UnnamedContract (`0x3d79edaabc0eab6f08ed885c05fc0b014290d95a`, chain 42220)
- UnnamedContract (`0x505b43c452aa4443e0a6b84bb37771494633fde9`, chain 42220)
- UnnamedContract (`0x5615cdab10dc425a742d643d949a7f474c01abc4`, chain 42220)
- UnnamedContract (`0x5f115d9113f88e0a0db1b5033d90d4a9690acd3d`, chain 42220)
- UnnamedContract (`0x633987602de5c4f337e3dbf265303a1080324204`, chain 42220)
- UnnamedContract (`0x643770e279d5d0733f21d6dc03a8efbabf3255b4`, chain 42220)
- UnnamedContract (`0x644023b316bb65175c347de903b60a756f6dd554`, chain 42220)
- UnnamedContract (`0x6586fb35393abf7ff454977a9b3c912d218791c6`, chain 42220)
- UnnamedContract (`0x82825d0554fa07f7fc52ab63c961f330fdefa8e8`, chain 42220)
- UnnamedContract (`0x8ac47d3e65a3e6ad14596ee7d18ad1d1aa53208f`, chain 42220)
- UnnamedContract (`0x8c456f41a3883ba0ba99f810f7a2da54d9ea3ef0`, chain 42220)
- UnnamedContract (`0xa9fd765d85938d278cb0b108dbe4bf7186831186`, chain 42220)
- UnnamedContract (`0xafe208a311b21f13ef87e33a90049fc17a7acdec`, chain 42220)
- UnnamedContract (`0xb00b8c3ab078eb0f7dec6ce19c1a1da5bf4f8d7e`, chain 42220)
- UnnamedContract (`0xc1b262dd7643d4b7ca9e51631bbd900a564bf49a`, chain 42220)
- UnnamedContract (`0x000000000022d473030f116ddee9f6b43ac78ba3`, chain 43114)
- UnnamedContract (`0x00000000a3db63df9078cbf3df88b4cadd5a7f58`, chain 43114)
- UnnamedContract (`0x27dd7ee7fe723e83bf3612a75a034951fe299e99`, chain 43114)
- UnnamedContract (`0x44f5f1f5e452ea8d29c890e8f6e893fc0f1f0f97`, chain 43114)
- UnnamedContract (`0x4752ba5dbc23f44d87826276bf6fd6b1c372ad24`, chain 43114)
- UnnamedContract (`0x655c406ebfa14ee2006250925e54ec43ad184f8b`, chain 43114)
- UnnamedContract (`0x740b1c1de25031c31ff4fc9a62f554a55cdc1bad`, chain 43114)
- UnnamedContract (`0x94b75331ae8d42c1b61065089b7d48fe14aa73b7`, chain 43114)
- UnnamedContract (`0x9ada7d7879214073f40183f3410f2b3f088c6381`, chain 43114)
- UnnamedContract (`0x9e5a52f57b3038f1b8eee45f28b3c1967e22799c`, chain 43114)
- UnnamedContract (`0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7`, chain 43114)
- UnnamedContract (`0xbb00ff08d01d300023c629e8ffffcb65a5a578ce`, chain 43114)
- UnnamedContract (`0xbe0f5544ec67e9b3b2d979aaa43f18fd87e6257f`, chain 43114)
- UnnamedContract (`0xca9d0668c600c4dd07ca54be1615fe5cdfd76ac3`, chain 43114)
- UnnamedContract (`0xe1f93a7cb6ffa2db4f9d5a2fd43158a428993c09`, chain 43114)
- UnnamedContract (`0xe89b7c295d73fcce88ef263f86e7310925daebaf`, chain 43114)
- UnnamedContract (`0xeb9ffc8bf81b4ffd11fb6a63a6b0f098c6e21950`, chain 43114)
- UnnamedContract (`0x000000000022d473030f116ddee9f6b43ac78ba3`, chain 7777777)
- UnnamedContract (`0x048352d8dcf13686982c799da63fa6426a9d0b60`, chain 7777777)
- UnnamedContract (`0x0f797dc7efaea995bb916f268d919d0a1950ee3c`, chain 7777777)
- UnnamedContract (`0x11867e1b3348f3ce4fcc170bc5af3d23e07e64df`, chain 7777777)
- UnnamedContract (`0x209aada09d74ad3b8d0e92910eaf85d2357e3044`, chain 7777777)
- UnnamedContract (`0x3315ef7ca28db74abadc6c44570efdf06b04b020`, chain 7777777)
- UnnamedContract (`0x4200000000000000000000000000000000000006`, chain 7777777)
- UnnamedContract (`0x5ef5a6923d2f566f65f363b78ef7a88ab1e4206f`, chain 7777777)
- UnnamedContract (`0x7145f8aeef1f6510e92164038e1b6f8cb2c42cbb`, chain 7777777)
- UnnamedContract (`0x7de04c96be5159c3b5ceffc82aa176dc81281557`, chain 7777777)
- UnnamedContract (`0x843b0b03c3b3b0434b9cb00ad9cd1d9218e7741b`, chain 7777777)
- UnnamedContract (`0xa00f34a632630efd15223b1968358ba4845beec7`, chain 7777777)
- UnnamedContract (`0xa51c76bee6746cb487a7e9312e43e2b8f4a37c15`, chain 7777777)
- UnnamedContract (`0xbc91e8dfa3ff18de43853372a3d7dfe585137d78`, chain 7777777)
- UnnamedContract (`0xd4109824fc80dd41ca6ee8d304ec74b8beded03b`, chain 7777777)
- UnnamedContract (`0xf15d9e794d39a3b4ea9efc2376b2cd9562996422`, chain 7777777)
- UnnamedContract (`0xfff2bffc03474f361b7f92ccff2fd01cfbbdcdd1`, chain 7777777)
- AdvancedLBPStrategyFactory (`0x982dc187cbeb4e21431c735b01ecbd8a606129c5`, chain 1)
- AlgebraInterfaceMulticall (`0x1f98415757620b543a52e61c46b32eb19261f984`, chain 10)
- ContinuousClearingAuctionFactory (`0x0000ccadf55c911a2fbc0bb9d2942aa77c6faa1d`, chain 1)
- ExclusiveDutchOrderReactor (`0x6000da47483062a0d734ba3dc7576ce6a0b645c4`, chain 1)
- FiatTokenProxy (`0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48`, chain 1)
- Firepit (`0x0d5cd355e2abeb8fb1552f56c965b867346d6721`, chain 1)
- FullRangeLBPStrategyFactory (`0x39e5eb34dd2c8082ee1e556351ae660f33b04252`, chain 8453)
- GoldToken (`0x471ece3750da237f93b8e339c536989b8978a438`, chain 42220)
- LiquidityLauncher (`0x00000008412db3394c91a5cbd01635c6d140637c`, chain 1)
- MainnetDeployer (`0xd3aa12b99892b7d95bbaa27aef222a8e2a038c0c`, chain 1)
- NonfungiblePositionManager (`0x03a520b32c04bf3beef7beb72e919cf822ed34f1`, chain 8453)
- OptimismBridgedResourceFirepit (`0xe0a780e9105ac10ee304448224eb4a2b11a77eeb`, chain 130)
- OrderQuoter (`0x00000000a3db63df9078cbf3df88b4cadd5a7f58`, chain 56)
- Permit2 (`0x000000000022d473030f116ddee9f6b43ac78ba3`, chain 1)
- PriorityOrderReactor (`0x000000001ec5656dcdb24d90dfa42742738de729`, chain 8453)
- SwapRouter (`0xe592427a0aece92de3edee1f18e0157c05861564`, chain 1)
- TokenJar (`0xd576bdf6b560079a4c204f7644e556dbb19140b5`, chain 130)
- TransparentUpgradeableProxy (`0x0dfa04b28ab68ffd0e6e17fac6ec16d4846a2004`, chain 130)
- TransparentUpgradeableProxy (`0x82af49447d8a07e3bd95bd0d56f35241523fbab1`, chain 42161)
- UERC20Factory (`0x0cde87c11b959e5eb0924c1abf5250ee3f9bd1b5`, chain 1)
- Uni (`0x1f9840a85d5af5bf1d1762f925bdaddc4201f984`, chain 1)
- UnichainDeployer (`0xd16c47bf3ae22e0b2bac5925d990b81416f18dea`, chain 130)
- UniswapInterfaceMulticall (`0x0139141cd4ee88df3cdb65881d411bae271ef0c2`, chain 43114)
- UniswapV2Router02 (`0x284f11109359a7e1306c3e447ef14d38400063ff`, chain 130)
- UniversalRouter (`0x1095692a6237d83c6a72f3f5efedb9a670c49223`, chain 137)
- USUPERC20Factory (`0x24016ed99a69e9b86d16d84351e1661266b7ac6a`, chain 130)
- V2DutchOrderReactor (`0x00000011f84b9aa48e5f8aa8b9897600006289be`, chain 1)
- V3DutchOrderReactor (`0x00000000862ccf095823fc7576fa6c7e6b7385ef`, chain 43114)
- V3FeeAdapter (`0x5e74c9f42eed283bff3744fbd1889d398d40867d`, chain 1)
- VirtualLBPStrategyFactory (`0x00000010f37b6524617b17e66796058412bbc487`, chain 1)
- WBNB (`0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c`, chain 56)
- WETH9 (`0x4200000000000000000000000000000000000006`, chain 10)
- WMATIC (`0x0d500b1d8e8ef31e21c99d1db9a6444d3adf1270`, chain 137)

## Contract Surface Quality

- Logic-topography rows: 33; live-surface rows included: 33 (33 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 260/406 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/33 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 260 own, 2 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 773 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 3 standard proxy/library)
- Proxy deployments represented within implementation groups: 40
- Confirmed-live implementations: 260 of 1035 unique; 775 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/340
- Verified + Unaudited implementations: 340
- Verified by bytecode match: 0
- Unverified implementations: 695
- Unique implementations: 1035
- Raw deployments: 1048
- Audits discovered: 20 (20 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-09 (aging)
- Audit staleness (calendar age): 0 fresh, 6 aging, 13 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (340)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Accounts | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0x7d21685c17607338b313a7174bab6620bad0aab7` | ⚠️ Unaudited |
| Address | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ed97638af0dac459c29b1c650edcfb4b4ea0aab` | ⚠️ Unaudited |
| AdvancedLBPStrategyFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260365 | `0x982dc187cbeb4e21431c735b01ecbd8a606129c5` | ⚠️ Unaudited |
| AHv2Repayment | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x141e0541d87c6cbdbf2a6a8104248b4b922f629e` | ⚠️ Unaudited |
| AIP1Point1Target | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4b075f1d7dce6f480bf87e45df2f2e1b1a430184` | ⚠️ Unaudited |
| AIP1Point2Action | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6274106eedd4848371d2c09e0352d67b795ed516` | ⚠️ Unaudited |
| Airdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0c58c2041da4cfccf5818bbe3b66dbc23b3902d9` | ⚠️ Unaudited |
| AlgebraInterfaceMulticall | unknown | project_anchor | own_supporting | 0 | optimism | unit-260392 | `0x1f98415757620b543a52e61c46b32eb19261f984` | ⚠️ Unaudited |
| APROracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ddc33689380e6b56783a5442999b75a5b919361` | ⚠️ Unaudited |
| APRWithPoolOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x044dad5c0da888c93d8244261b67bd431b47ca14` | ⚠️ Unaudited |
| ArbCommunityNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbd0dd2f644fb4eca58e1e73eee2e5e1cc52de79a` | ⚠️ Unaudited |
| ArbGovToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd4d2f4110878a33ea5b97f0665e518253446161a` | ⚠️ Unaudited |
| ArbUXRNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2fa063182c6f0f953c99abf46add4d2c9f6ff61a` | ⚠️ Unaudited |
| Attestations | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0xdc553892cdeeed9f575aa0fba099e5847fd88d20` | ⚠️ Unaudited |
| BalanceChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x91688f449478a47256990e4c609e000b5810b20a` | ⚠️ Unaudited |
| BatchVote | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x5e44c7addc64cdbc7472324c00f940a419741e1c`; ethereum `0x8555dc3adcafb74b85d436a6eb7ee7befa9a6e9b` | ⚠️ Unaudited |
| BeaconProxyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x863491cc6c7275bcc15a386093e92390e2a1bda9` | ⚠️ Unaudited |
| BEP20BandProtocol | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xad6caeb32cd2c308980a548bd0bc5aa4306c6c18` | ⚠️ Unaudited |
| BEP20BitcoinCash | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x22fbfba7e764d5b07415e3aaaca9ae47cfd270e3` | ⚠️ Unaudited |
| BEP20Cardano | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3ee2200efb3400fabb9aacf31297cbdd1d435d47` | ⚠️ Unaudited |
| BEP20Cosmos | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0eb3a705fc54725037cc9e008bdede697f62f335` | ⚠️ Unaudited |
| BEP20DAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1af3f329e8be154074d8769d1ffa4ee058b1dbc3` | ⚠️ Unaudited |
| BEP20EOS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x56b6fb708fc5732dec1afc8d8556423a2edccbd6` | ⚠️ Unaudited |
| BEP20Ethereum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2170ed0880ac9a755fd29b2688956bd959f933f8` | ⚠️ Unaudited |
| BEP20Ontology | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfd7b3a77848f1c2d67e05e54d78d174a0c850335` | ⚠️ Unaudited |
| BEP20Polkadot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7083609fce4d1d8dc0c979aab8c869ea2c873402` | ⚠️ Unaudited |
| BEP20Tezos | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x16939ef78684453bfdfb47825f8a5f714f12623a` | ⚠️ Unaudited |
| BEP20XRP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1d2f0da169ceb9fc7b3144628db156f3f6c60dbe` | ⚠️ Unaudited |
| BEP20YFII | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7f70642d88cf1c4a3a7abb072b53b929b653eda5` | ⚠️ Unaudited |
| BEP20Zcash | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1ba42e5193dfa8b03d15dd1b86a3113bbbef8eeb` | ⚠️ Unaudited |
| BestToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8d52c2d70a7c28a9daac2ff12ad9bfbf041cd318` | ⚠️ Unaudited |
| BlackScholesEstimate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b4fd02326db6ebe095e0707e2973c9e045da3dc` | ⚠️ Unaudited |
| BlockchainParameters | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0x6e10a8864c65434a721d82e424d727326f9d5bfa` | ⚠️ Unaudited |
| BOBO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5888641e3e6cbea6d84ba81edb217bd691d3be38` | ⚠️ Unaudited |
| BridgeVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x03b2fb2363b0a33d41022c3e3a2c8130a78f7d5c` | ⚠️ Unaudited |
| CaliburEntry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000009b1d0af20d8c6d0a44e162d11f9b8f00` | ⚠️ Unaudited |
| CATERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4357054c3da8d46ed642383f03139ac7f090343` | ⚠️ Unaudited |
| CoinToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8145eb83744aac883b68ae34060bebb5031d8f5c` | ⚠️ Unaudited |
| CollateralMaximizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x494ba8753a253bb314f1e8324c36f804d31b96c1` | ⚠️ Unaudited |
| CommunityTreasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x650f5865541f6d68bddfe977db933c293ea72358` | ⚠️ Unaudited |
| CompensationEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda7b940be1bce0d6e2eecd96f5cf6ed0504b64c3` | ⚠️ Unaudited |
| COMPfarming | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1532eb6c6d134903a0dedfc840128007b36aa870` | ⚠️ Unaudited |
| ContinuousClearingAuctionFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260328 | `0x0000ccadf55c911a2fbc0bb9d2942aa77c6faa1d` | ⚠️ Unaudited |
| Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e65565cf7fbb37bac2c0d84e3a54c592e1dc4c8` | ⚠️ Unaudited |
| ConverterDAItoYCRV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98158e133f7f56a574fc806e579e1355048039ca` | ⚠️ Unaudited |
| CRON | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e14d03061705eb48fda6bc6e244c5eabe5d322e` | ⚠️ Unaudited |
| CrossChainAccount | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x2339c0d23b60739b3e5abf201f05903d24a26c77` | ⚠️ Unaudited |
| CrosschainAccountLinea | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x581f86da293a1d5cd087a10e7227a75d2d2201a8` | ⚠️ Unaudited |
| DAAORacle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f5030e80268323761e0551cdea722fd5c2723fe` | ⚠️ Unaudited |
| DackieInterfaceMulticall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xdc7f370de7631ce9e2c2e1dcda6b3b5744cf4705` | ⚠️ Unaudited |
| DadFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01c1103d765f62a0d909499d7b615c382cdb072d` | ⚠️ Unaudited |
| DaiFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf07674f6ac6632e253c291b694f9c2e2ed69ebbb` | ⚠️ Unaudited |
| DistributeYFI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x812ac0eaeb422efa44eac670aa2246a25ecfa017` | ⚠️ Unaudited |
| DistributionRewardsProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b1b08313a290adf97d36a6f41f42bb19e368d6d` | ⚠️ Unaudited |
| DoubleSigningSlasher | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0x50c100bacde7e2b546371eb0be1eaccf0a6772ec` | ⚠️ Unaudited |
| DragonLair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf28164a485b0b2c90639e47b0f377b4a438a16b1` | ⚠️ Unaudited |
| DSChief | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e2a84d6ade1e7fffee039a35ef5f19f13057152` | ⚠️ Unaudited |
| DSChiefFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e7ca05e174a523709e556080e227f734a8f1483` | ⚠️ Unaudited |
| DSSLeverage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x050cd4835b08babfc6ff92187971b3253e92640e` | ⚠️ Unaudited |
| DSToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x068083069ed92da4c5291dba52d8912abfcc5523` | ⚠️ Unaudited |
| DynamicSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x035fb9efa7ed40a688044af22282fb19b64b5f60` | ⚠️ Unaudited |
| ElectionProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0x8d6677192144292870907e3fa8a5527fe55a7ff6` | ⚠️ Unaudited |
| ElkDexInterfaceMulticall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xe3dbcd53f4ce1b06ab200f4912bd35672e68f1fa` | ⚠️ Unaudited |
| EminenceCurrency | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ccea6503e8e5525d3de0c60855b6332af559ad4` | ⚠️ Unaudited |
| EmojiGuess | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xecd580ddf0f13e2591d79068bf617fe865b7c8c7` | ⚠️ Unaudited |
| EpochRewardsProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0x07f007d389883622ef8d4d347b3f78007f28d8b7` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x34eae07195d83305a0be4786f2ab8705613c69c0`; ethereum `0xcdf14446f78ea7ebcaa62fdb0584e4d2e536b999` | ⚠️ Unaudited |
| ERC20Manageable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x07f1dc544136bcd253f9cfd3369cb5f7cf405a35` | ⚠️ Unaudited |
| ERC6160Ext20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d010bf9c26881788b4e6bf5fd1bdc358c8f90b8` | ⚠️ Unaudited |
| Escrow | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0xf4fa51472ca8d72af678975d9f8795a504e7ada5` | ⚠️ Unaudited |
| ExchangeProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0x67316300f17f063085ca8bca4bd3f7a5a3c66275` | ⚠️ Unaudited |
| ExclusiveDutchOrderReactor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260352 | `0x6000da47483062a0d734ba3dc7576ce6a0b645c4` | ⚠️ Unaudited |
| FairLaunchCapitalVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a2d0e5773dd6a345eda543b14c6ca6b51c6cc0a` | ⚠️ Unaudited |
| Faketroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6257e36efc9c7c6057c119ea2af40907159fef3f` | ⚠️ Unaudited |
| FeeCurrencyWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0xbb024e9cdcb2f9e34d893630d19611b8a5381b3c` | ⚠️ Unaudited |
| FeeOnTransferDetector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x55e74a5c3310bbccdd0b655ade2309e0d0d25826` | ⚠️ Unaudited |
| FeeTo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdaf819c2437a82f9e01f6586207ebf961a7f0970` | ⚠️ Unaudited |
| FeeToSetter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18e433c7bf8a2e1d0197ce5d8f9afada1a771360` | ⚠️ Unaudited |
| FiatToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8cbde23b1416cac07a52591bba744c744d77a91a` | ⚠️ Unaudited |
| FiatTokenProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-260742 | `0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48` | ⚠️ Unaudited |
| FiatTokenUtil | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6315aa908c50376d1028412c028aa0629f0355a6` | ⚠️ Unaudited |
| FiatTokenV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0882477e7895bdc5cea7cb1552ed914ab157fe56` | ⚠️ Unaudited |
| FiatTokenV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7277a6e95992041568d9391d09d0122023778a2` | ⚠️ Unaudited |
| FiatTokenV2_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2327a938febf5fec13bacfb16ae10ecbc4cbdcf` | ⚠️ Unaudited |
| Firepit | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260335 | `0x0d5cd355e2abeb8fb1552f56c965b867346d6721` | ⚠️ Unaudited |
| FixidityLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xd9ce4209888cfdfeb7c3d6e2ca34eeb06272284d` | ⚠️ Unaudited |
| fKRW | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c08b51ddbe8ba76e07be79975906c39aef2893a` | ⚠️ Unaudited |
| FreezerProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x47a472f45057a9d79d62c6427367016409f4ff5a`; celo `0xa79cdb272799175a118a4ce49cecbf3ec86649e6` | ⚠️ Unaudited |
| FullRangeLBPStrategyFactory | unknown | project_anchor | own_supporting | 0 | base | unit-260715 | `0x39e5eb34dd2c8082ee1e556351ae660f33b04252` | ⚠️ Unaudited |
| fUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d7f0933ac403773d219cf0519de8082946dc10f` | ⚠️ Unaudited |
| GasPriceMinimum | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0xdfca3a8d7699d8bafe656823ad60c17cb8270ecc` | ⚠️ Unaudited |
| GaugeProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x823fd217dcc5ce36ca6bc1489586ecb42b61081c` | ⚠️ Unaudited |
| GemFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x431e935209d79706b5866eb42137a3491d845692` | ⚠️ Unaudited |
| GemPit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69076e44a9c70a67d5b79d95795aba299083c275` | ⚠️ Unaudited |
| GoldToken | unknown | project_anchor | own_supporting | 1 | celo | unit-260746 | `0x471ece3750da237f93b8e339c536989b8978a438` | ⚠️ Unaudited |
| Governance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7212fc959bbb606f97036e8ac3da7aabf0cb735` | ⚠️ Unaudited |
| GovernanceSlasher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x68f04ab73b93f5175207296528454999475294d5` | ⚠️ Unaudited |
| GovernorAlpha | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2e1fb79129b3d44881bd56a82bb7cbb7328b6143`; ethereum `0xe8bac57870218ab398140286caca47b5157dd27f` | ⚠️ Unaudited |
| HegicERCPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7224f2e96061a1e3f51d152e32ccfab79ca1345a` | ⚠️ Unaudited |
| HegicOptions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30a086f5b7a8a6256b0d0e6c9ca4cd3577e4ae70` | ⚠️ Unaudited |
| HegicOptionsFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06194062288575f35c0af45d5e7013b65e082f23` | ⚠️ Unaudited |
| HToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x761c06a46d3c85ecd87cf6917b3de329b95829be` | ⚠️ Unaudited |
| iCollateral | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78705df56477ff301b71b176a2bd3151b9f4e025` | ⚠️ Unaudited |
| iCollateralVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb10e11f3e38dc35e06397689e45fa939eb3b0f69` | ⚠️ Unaudited |
| iCollateralVaultProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06a8fee7a607c5c887f5f0672f7d8849583ddcc1` | ⚠️ Unaudited |
| iDAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c5f9d1d115862ca99253e5738590f6d31ca35a0` | ⚠️ Unaudited |
| iDAIZapSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x260fbb4855b2a4a719097131016b573f95a867fa` | ⚠️ Unaudited |
| IEarnAPR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9cad8ab10daa9af1a9d2b878541f41b697268eec` | ⚠️ Unaudited |
| IEarnAPRWithPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x029feae8d773a3fe25f1a3e35a526bb54744c9bb` | ⚠️ Unaudited |
| IEarnManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x318135fbd0b40d48fcef431ccdf6c7926450edfb` | ⚠️ Unaudited |
| IEarnProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b3680ad3bc9e84fc06c8a0647b82d2026884bb4` | ⚠️ Unaudited |
| IEther | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75a4d0b18e98674199829ddd2a6477ea25cd25eb` | ⚠️ Unaudited |
| Implementation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x346239972d1fa486fc4a521031bc81bfb7d6e8a4` | ⚠️ Unaudited |
| IndicesPayment | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56ff7e476688f4924cb777ae22adfa192337d73c` | ⚠️ Unaudited |
| IndicesSplit | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0d994bcf071f060e477136a6fadd51a3163f34b0`; ethereum `0x611818381340495de61e40b4c4a790a4d7e24308` | ⚠️ Unaudited |
| insuredVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa53e9e63793e55c533fe98d0ed178992942863d9` | ⚠️ Unaudited |
| insurerVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8813d297ffff9ffa67b8fe91ac703caaa457bcf` | ⚠️ Unaudited |
| itokendeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x050a9798fb9dff67b78479a543b3f680d2f78844` | ⚠️ Unaudited |
| ItokenStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ddb30f677ad9de63c6d96b2b066fd801f8c7bf5` | ⚠️ Unaudited |
| iTrade | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14a5ca87175cc04b90cd31b2f13fbf88d9104e3e` | ⚠️ Unaudited |
| Keep3r | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30f3581ef6469334c8752d9b6ca3fb39c72f57f1` | ⚠️ Unaudited |
| Keep3rHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb41772890c8b1564c5015a12c0dc6f18b0af955e` | ⚠️ Unaudited |
| Keep3rJob | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb68e7deb279eaa11f234dff4931458d2c002d10d` | ⚠️ Unaudited |
| Keep3rV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ceb5cb57c4d4e2b2433641b95dd330a33185a44` | ⚠️ Unaudited |
| Keep3rV1Helper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1530a2924805aed2385f8b91849cab7fe95a5df9` | ⚠️ Unaudited |
| Keep3rV1JobRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7396899638410094b3690f8bd2b56f07fdab620c` | ⚠️ Unaudited |
| Keep3rV1Library | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdaef201ba1ba0354d71848893dd6d56905924c93` | ⚠️ Unaudited |
| Keep3rV1Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73353801921417f465377c8d898c6f4c0270282c` | ⚠️ Unaudited |
| Keep3rV1OracleUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a03b4f6d5314bb257540dc7702c326f97f5c080` | ⚠️ Unaudited |
| Keep3rV1Volatility | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x173ed6531818456f29fc74011a3b1fb4b6132dc9` | ⚠️ Unaudited |
| Keep3rV2Helper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1bf16291d2336ac3320f17cad646b56bd5c8f6c0` | ⚠️ Unaudited |
| Keep3rV2OracleFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2266be1ee5d345914976fd4ce9f4be65737880cb` | ⚠️ Unaudited |
| Keep3rV3OracleUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1542ec733b1a938be7d30acf49e7f4a6a5ba0f82` | ⚠️ Unaudited |
| L1NetRecipient | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xab88c8cf70a3bbb2ca3b2aed808963ab4c916b83` | ⚠️ Unaudited |
| L2AddressRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3e84af3743cc4e7f516570b341ced56530d901e8` | ⚠️ Unaudited |
| LazyHarvest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ea775672e4424c403f048ab08c7f56015c5d0f3` | ⚠️ Unaudited |
| LimitOrderRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x0337d36a3df76d882369e3cbf984a2ea40f6636f` | ⚠️ Unaudited |
| LiquidationOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd82f6d42356e225bf79b870a05aac79062a3e8ce` | ⚠️ Unaudited |
| LiquidityIncome | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28832484e8124634a248f2bc520f26e8345a56cd` | ⚠️ Unaudited |
| LiquidityLauncher | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260324 | `0x00000008412db3394c91a5cbd01635c6d140637c` | ⚠️ Unaudited |
| LiquidityPoolManagerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x912b5d41656048ef681efa9d32488a3ffe397994` | ⚠️ Unaudited |
| LmPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65df3e4e542827b3adbd5de6fc610fa42000532f` | ⚠️ Unaudited |
| LmPoolV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e3453a39a9e96213a36009f49f38d60df8fb249` | ⚠️ Unaudited |
| LockedGoldProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0x6cc083aed9e3ebe302a6336dbc7c921c9f03349e` | ⚠️ Unaudited |
| MainnetDeployer | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260377 | `0xd3aa12b99892b7d95bbaa27aef222a8e2a038c0c` | ⚠️ Unaudited |
| MasterChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0dc3ed36bb3bee1101de030e43550cb8733bca2c` | ⚠️ Unaudited |
| MasterChefV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x327339416778181799262780d1a4d28c46e0d1d0` | ⚠️ Unaudited |
| MasterKeeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x0d922fb1bc191f64970ac40376643808b4b74df9` | ⚠️ Unaudited |
| MasterMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x566c11b5c2201b69c9269fe924e4395873674335` | ⚠️ Unaudited |
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x090d4613473dee047c3f2706764f49e0821d256e` | ⚠️ Unaudited |
| MetaKeep3r | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93dfa873b15ad496ba8116ce6cfec52ef30a9372` | ⚠️ Unaudited |
| Migrations | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xe8882d0f80bd82a618251093124f56fdd8faf4b7` | ⚠️ Unaudited |
| Minter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x708f456c0d5496e0117ea8c1472cf0cc6782fb7b` | ⚠️ Unaudited |
| MixedRouteQuoterV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x003aa18c6e682db80cf4aa17261ccbffd28690ce` | ⚠️ Unaudited |
| MomFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x141a206ece672e3198086c5d21f7858ad03669ea` | ⚠️ Unaudited |
| Multicall2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x52dfc0d9960f11a9ca9ff616e791b91188446a60` | ⚠️ Unaudited |
| Multicall3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xcb2436774c3e191c85056d248ef4260ce5f27a9d` | ⚠️ Unaudited |
| MXTK | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x3e4ffeb394b371aaaa0998488046ca19d870d9ba` | ⚠️ Unaudited |
| NexusMutualCover | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93a2880f657793a1d839653c8f8cef52f3de7a28` | ⚠️ Unaudited |
| NFTDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x041b81cb4d223d8e70ac96c0d103f8a956ed4514` | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | project_anchor | own_supporting | 1 | base | unit-260747 | `0x03a520b32c04bf3beef7beb72e919cf822ed34f1` | ⚠️ Unaudited |
| Normalizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9214a67186965fd5fe582a64a8646ff058f023aa` | ⚠️ Unaudited |
| OptimismBridgedResourceFirepit | unknown | project_anchor | own_supporting | 0 | unichain | unit-260461 | `0xe0a780e9105ac10ee304448224eb4a2b11a77eeb` | ⚠️ Unaudited |
| OptimismMintableERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x570b1533f6daa82814b25b62b5c7c4c55eb83947` | ⚠️ Unaudited |
| OptionsV1Library | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48bc6de14fc64418da9d0b5befdb404e3e76cdd5` | ⚠️ Unaudited |
| OptionsV1Reserve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00fbd1774093e9240beb559f7a1300d291d86309` | ⚠️ Unaudited |
| Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x5b631863df1b20afb2715ee1f1381d6dc1dd065d`; base `0xdc74d75b48bad28866053d1f6479c5b689837a6e` | ⚠️ Unaudited |
| OrderQuoter | unknown | project_anchor | own_supporting | 0 | bsc | unit-260649 | `0x00000000a3db63df9078cbf3df88b4cadd5a7f58` | ⚠️ Unaudited |
| OSMedianizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf63089a8ad2a9d8bd6bb8022f3190eb7e1ed0f1` | ⚠️ Unaudited |
| PancakeInterfaceMulticall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x0d922fb1bc191f64970ac40376643808b4b74df9` | ⚠️ Unaudited |
| PangolinFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcdeea31e087f0cf463043d246a45b87f4e959737` | ⚠️ Unaudited |
| PangolinRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe54ca86531e17ef3616d22ca28b0d458b6c89106` | ⚠️ Unaudited |
| PEAKDEFI_V1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b103d2125d83d2521815f62304b67b2c2403a45` | ⚠️ Unaudited |
| PEAKDEFI_V2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x630d98424efe0ea27fb1b3ab7741907dffeaad78` | ⚠️ Unaudited |
| Permit2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260322 | `0x000000000022d473030f116ddee9f6b43ac78ba3` | ⚠️ Unaudited |
| Png | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x60781c2586d68229fde47564546784ab3faca982` | ⚠️ Unaudited |
| PoolConfiguration | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3212e307a17dce648c1e1498454cd86a35b962e4`; ethereum `0xe237cba27c937a03a5a7d005717fa5df2a6cc6f2` | ⚠️ Unaudited |
| PoolManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000000004444c5dc75cb358380d2e3de08a90` | ⚠️ Unaudited |
| PoolV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1df7f822d4d53228f41c90d42bd02c76fb6b7109`; ethereum `0x31081cbf263f353b95d3d38c1a1f53d923e2fc5b` | ⚠️ Unaudited |
| PositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1707327f626496a7b5b3872e7e4d2879df7d7a9f` | ⚠️ Unaudited |
| PriceProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e94fa3c1e72f48ecbc1f944f393ae8a323be471` | ⚠️ Unaudited |
| PriorityOrderReactor | unknown | project_anchor | own_supporting | 0 | base | unit-260702 | `0x000000001ec5656dcdb24d90dfa42742738de729` | ⚠️ Unaudited |
| Proposals | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xd4b9fd4f900fdbb58ce284f82730653f9379cbc4` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x41822d8a191fcfb1cfca5f7048818acd8ee933d3`; celo `0xb5795ccf25d01617a55592508d3982bc5a158fad` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | blast | n/a | `0x4300000000000000000000000000000000000004` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x0cb49b5b72abc23426e6ce2141349b34a12aa355` | ⚠️ Unaudited |
| Quick | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x831753dd7087cac61ab5644b308642cc1c33dc13` | ⚠️ Unaudited |
| QuickConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x38e8d77f4b651fb989c8b5ad274346dd5b5239ea` | ⚠️ Unaudited |
| Quoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4a7b5da61326a6379179b40d00f57e5bbdc962c2` | ⚠️ Unaudited |
| QuoterMath | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4752ba5dbc23f44d87826276bf6fd6b1c372ad24` | ⚠️ Unaudited |
| QuoterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x276bfef3d539cded7719b2cad25bea8ae46e200c` | ⚠️ Unaudited |
| Random | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0x22a4aaf42a50bfa7238182460e32f15859c93dfe` | ⚠️ Unaudited |
| Recover | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x075b36de1bd11cb361c5b3b1e80a9ab0e7aa8a60` | ⚠️ Unaudited |
| Registry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x203fdf86a00999107df531fa00b4ba81d674cb66` | ⚠️ Unaudited |
| Reserve | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0x9380fa34fd9e4fd14c06305fd7b6199089ed4eb9` | ⚠️ Unaudited |
| ReserveSpenderMultiSigProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x554fca0f7c465cd2f8c305a10bf907a2034d2a19` | ⚠️ Unaudited |
| RiskOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0739311a9725779f109706b48a56763a8ae8fe50` | ⚠️ Unaudited |
| SafetyRedundancy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6bdfea3b1fc7d01bfed72e08fd395fc6d0fb3c40` | ⚠️ Unaudited |
| SetFiveMillionProposalThresholdAction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2f8577f68d8306aeb48f9015ac61744bbadfd713` | ⚠️ Unaudited |
| Signatures | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x926a9e7c1a9cb608b6f3068f3ca3811dde792b7d` | ⚠️ Unaudited |
| Signer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10d7cb15642d540a4521a7b2840dab01287081fc` | ⚠️ Unaudited |
| SingleSidedAMM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82bfdd53dd95efa2c3e92543f28d46c566bf4b8a` | ⚠️ Unaudited |
| SmartWalletChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x173f5f648b18cf1c7f6aac66a35bf462539f3b27` | ⚠️ Unaudited |
| SmartWalletWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5268ba00308c3e6bd1c4aa1e46d65eb1a4b120a3` | ⚠️ Unaudited |
| SortedOracles | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0xefb84935239dacdecf7c5ba76d8de40b077b7b33` | ⚠️ Unaudited |
| StableAMM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0670e207ccc46c18fc38cdb3305c5a0e889eb4cd` | ⚠️ Unaudited |
| StableCreditHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x404f9ecabd4a0d4507c81766e01f76fe52ca0acb` | ⚠️ Unaudited |
| StableCreditProtocol | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15fe17da18288d1799643be1bb07fb939626f5f9` | ⚠️ Unaudited |
| StableTokenV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0x765de816845861e75a25fca122bb6898b8b1282a` | ⚠️ Unaudited |
| StableYieldCredit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11980d4bb4465cb4fc77a57b98a16787b3d834e7` | ⚠️ Unaudited |
| StakingRewardsFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x02a2d80ce5c021a40aec9062a6273bbc33537e1c` | ⚠️ Unaudited |
| StarLLMDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7184487e9fd1eaf75e20be5fe1301db9f2d4f4e1` | ⚠️ Unaudited |
| StarToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x67e1a362f6f72f064ffb088825d3c2f1c9a93d8c` | ⚠️ Unaudited |
| StateView | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x12a88ae16f46dce4e8b15368008ab3380885df30` | ⚠️ Unaudited |
| StrategyControllerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2be5d998c95de70d9a38b3d78e49751f10f9e88b` | ⚠️ Unaudited |
| StrategyCreamYFI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40bd98e3cce4f34c087a73dd3d05558733549afb` | ⚠️ Unaudited |
| StrategyDForceDAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd643cf07344428770b84973e049a1c18b5d47ede` | ⚠️ Unaudited |
| StrategyDForceUSDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01b354a9fb34760455ee9cbe7d71d2ce5c11ab5c` | ⚠️ Unaudited |
| StrategyDForceUSDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x787c771035bde631391ced5c083db424a4a64bd8` | ⚠️ Unaudited |
| StrategyMKRVaultDAIDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28e5a47820313da9c74b8f2295795da6e6e083a5` | ⚠️ Unaudited |
| StrategyMStableSavings | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31641a4836c172640fa1c02999b09c5d1069156f` | ⚠️ Unaudited |
| StrategyMStableSavingsTUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x442510ba285d5390cb5385a91a380d4268e0b81c` | ⚠️ Unaudited |
| StrategyProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16c20cfeda6e9ebfb9e557e76a2dfbe85c597c7a` | ⚠️ Unaudited |
| StrategySNXSUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2288c409e67b6ce52180f97a8cddf7abc24ec989` | ⚠️ Unaudited |
| StrategyVaultTUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35cee4c61b7619956e0b2015b5411f93cbba817a` | ⚠️ Unaudited |
| StrategyVaultUSDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25faca21dd2ad7edb3a027d543e617496820d8d6` | ⚠️ Unaudited |
| StrategyYffi | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe197e668d13746bb92e675dea2868ff14da0b73` | ⚠️ Unaudited |
| StrategyYFIGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x395f93350d5102b6139abfc84a7d6ee70488797c` | ⚠️ Unaudited |
| StrategyYfii | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2de055fec2b826ed4a7478ceddbeff82c1edfa70` | ⚠️ Unaudited |
| SupplyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2eb916605402e5c7e81f7d609d0e2204841978f` | ⚠️ Unaudited |
| Swap | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x849baee7e35f032cb07fa3887f5184a157e9f44d`; ethereum `0xa0359e049db5835a92c7300fa13a8dff4e9040ec` | ⚠️ Unaudited |
| SwapProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02e5be68d46dac0b524905bff209cf47ee6db2a9` | ⚠️ Unaudited |
| SwapRouter | unknown | project_anchor | own_supporting | 1 | ethereum | unit-260743 | `0xe592427a0aece92de3edee1f18e0157c05861564` | ⚠️ Unaudited |
| SwapRouter02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x075b36de1bd11cb361c5b3b1e80a9ab0e7aa8a60` | ⚠️ Unaudited |
| SwapV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x73e883b8924e1ebc0299faab828c3198489471ea`; ethereum `0x9fd4046cff042e3b7685789c637337237ded25aa` | ⚠️ Unaudited |
| Synthetic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0485a423c0b8ff2f5aa2ec35a32d1c67a2e99b6c` | ⚠️ Unaudited |
| SyntheticRebaseDollar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa90d9cc2f41a150489da5fffba2060a2938ffdc` | ⚠️ Unaudited |
| SynthetixAMM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ed4a410a612f2fe625a8f3cb4d70f197ff8c8be` | ⚠️ Unaudited |
| SynthetixExchange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0691cf9d171d6c9c3876598b14732248b204c2cf` | ⚠️ Unaudited |
| TapFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x521c420c2a2b461034becbb41d4888b68951f14f` | ⚠️ Unaudited |
| TaraClient | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9732044c8af3c96382ba5d4252ae2f99ad18bca6` | ⚠️ Unaudited |
| TendiesFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x101dd6f1f5e396f6ab87407df637cce814e24a9f` | ⚠️ Unaudited |
| TestERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f42b7d686ca3effc69778b6ed8493a7787b4d6e` | ⚠️ Unaudited |
| TickLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x0281e98322e4e8e53491d576ee6a2bfce644c55c` | ⚠️ Unaudited |
| TimeLoanPairFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2df93404574dff883e2b35911a684dab1760da0d` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1994b59e02cd0d09d839b03660c205e88a929b81` | ⚠️ Unaudited |
| TimelockGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x026d4b8d693f6c446782c2c61ee357ec561dfb61` | ⚠️ Unaudited |
| Token | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x057b1fb91a5fccb6c4aefd0ec55f79ce60aa8e83` | ⚠️ Unaudited |
| TokenJar | unknown | project_anchor | own_supporting | 0 | unichain | unit-260458 | `0xd576bdf6b560079a4c204f7644e556dbb19140b5` | ⚠️ Unaudited |
| TokenVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2b915f8c704dfb2d16d6fe46a2f1b433723bbb34`; ethereum `0x5b4d61760fae5fce7f362a600e038207fab1de5f` | ⚠️ Unaudited |
| TopFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0eda20f7499aae7bdadc4e52fd72e49663733ed4` | ⚠️ Unaudited |
| TransferWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xb49e4d6f0b7f8d0440f75697e6c8b37e09178bcf` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x6720350f7e3323418c05645cd5d6bb055f4a7427`; bsc `0x71ed829d15ecb2689af003da49e245b7b333836c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x070b849e8f2704bec603a1dd5de26acfe48d1896` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | unichain | unit-260744 | `0x0dfa04b28ab68ffd0e6e17fac6ec16d4846a2004` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x15533b77981cda0f85c4f9a485237df4285d6844` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-260745 | `0x82af49447d8a07e3bd95bd0d56f35241523fbab1` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | blast | n/a | `0x0747ad2b2e1f5761b1dcf0d8672bd1ffc3676f97` | ⚠️ Unaudited |
| TreasuryVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93a62da5a14c80f265dabc077fcee437b1a0efde` | ⚠️ Unaudited |
| TreasuryVester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d30b1ab88d487b0f3061f40de76845bec3f1e94` | ⚠️ Unaudited |
| TubFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3b67099121e1fbde6276b2802048d1a7dd1b987` | ⚠️ Unaudited |
| UERC20Factory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260334 | `0x0cde87c11b959e5eb0924c1abf5250ee3f9bd1b5` | ⚠️ Unaudited |
| Uni | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260339 | `0x1f9840a85d5af5bf1d1762f925bdaddc4201f984` | ⚠️ Unaudited |
| UnichainDeployer | unknown | project_anchor | own_supporting | 0 | unichain | unit-260456 | `0xd16c47bf3ae22e0b2bac5925d990b81416f18dea` | ⚠️ Unaudited |
| UniOracleFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61da8b0808cea5281a912cd85421a6d12261d136` | ⚠️ Unaudited |
| UniSwap_ETH_CDAIZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05a3c16c454262254c63b4dda9ef4007799af165` | ⚠️ Unaudited |
| UniswapAPR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c70d89a4681b2151f56dc2c3fd751abb9ce3d95` | ⚠️ Unaudited |
| UniswapInsuranceQuote | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5071b17384d5cfc2a82855f19cdd377dd1c03e60` | ⚠️ Unaudited |
| UniswapInterfaceMulticall | unknown | project_anchor | own_supporting | 0 | avalanche | unit-260618 | `0x0139141cd4ee88df3cdb65881d411bae271ef0c2` | ⚠️ Unaudited |
| UniswapOracleFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b5a6b318c39b60e7d8462f888e7fba89f75d02f` | ⚠️ Unaudited |
| UniswapV2Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x056588f18869a626b0ae9e89f077efe6ba752633` | ⚠️ Unaudited |
| UniswapV2Migrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16d4f26c15f3658ec65b1126ff27dd3df2a2996b` | ⚠️ Unaudited |
| UniswapV2Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e494045d79e2e2e9b30c303925142c60430b19a` | ⚠️ Unaudited |
| UniswapV2Router01 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf164fc0ec4e93095b804a4795bbe1e041497b92a` | ⚠️ Unaudited |
| UniswapV2Router02 | unknown | project_anchor | own_supporting | 0 | unichain | unit-260436 | `0x284f11109359a7e1306c3e447ef14d38400063ff` | ⚠️ Unaudited |
| UniswapV3Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x06d830e15081f65923674268121ff57cc54e4e23` | ⚠️ Unaudited |
| UniswapV3Pool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x055284a4ca6532ecc219ac06b577d540c686669d` | ⚠️ Unaudited |
| UniswapV3PositionUtility | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1df154042d0a7f1cd093d907094a8ba5d83df6c0` | ⚠️ Unaudited |
| UniswapV3Staker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f98407aab862cddef78ed252d6f557aa5b0f00d` | ⚠️ Unaudited |
| UniswapYieldV2Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25407d3f1868d09d6d09202d81fde4abca794508` | ⚠️ Unaudited |
| UniswapYieldV2Router02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48fe6259a971b243cc16f16f4c22e55fd94a3a8a` | ⚠️ Unaudited |
| UniversalERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca27a2e847c9ba0c23fa7d831dd0a5ef94e2334c` | ⚠️ Unaudited |
| UniversalRouter | unknown | project_anchor | own_supporting | 0 | polygon | unit-260468 | `0x1095692a6237d83c6a72f3f5efedb9a670c49223` | ⚠️ Unaudited |
| UnsupportedProtocol | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x352a86168e6988a1adf9a15cb00017aad3b67155` | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xded8823234e28f18a824abe4f64fa7863b626341` | ⚠️ Unaudited |
| USUPERC20Factory | unknown | project_anchor | own_supporting | 0 | unichain | unit-260435 | `0x24016ed99a69e9b86d16d84351e1661266b7ac6a` | ⚠️ Unaudited |
| UXLINKToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1a6b3a62391eccaaa992ade44cd4afe6bec8cff1` | ⚠️ Unaudited |
| V2DutchOrderReactor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260326 | `0x00000011f84b9aa48e5f8aa8b9897600006289be` | ⚠️ Unaudited |
| V3DutchOrderReactor | unknown | project_anchor | own_supporting | 0 | avalanche | unit-260612 | `0x00000000862ccf095823fc7576fa6c7e6b7385ef` | ⚠️ Unaudited |
| V3FeeAdapter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260351 | `0x5e74c9f42eed283bff3744fbd1889d398d40867d` | ⚠️ Unaudited |
| V3Migrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x03a520b32c04bf3beef7beb72e919cf822ed34f1` | ⚠️ Unaudited |
| V4Quoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0d5e0f971ed27fbff6c2837bf31316121532048d` | ⚠️ Unaudited |
| Validators | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0xaeb865bca93ddc8f47b8e29f40c5399ce34d0c58` | ⚠️ Unaudited |
| VamToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1512d268a94ce119eacbf80139ad7910eb9cfbc8` | ⚠️ Unaudited |
| vASTR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x36fab2071c7668d9b755b3ff45b21f7d86be1a42` | ⚠️ Unaudited |
| vBNC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa64cf1b7cbd5e6470f8a885612cefc4a60878c05` | ⚠️ Unaudited |
| vDOT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa2681a890e7fa09842c32365c7becec5652c8e37` | ⚠️ Unaudited |
| VenomNetworkToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77777777b79f2fa437bf526169f98aa0c884c4b7` | ⚠️ Unaudited |
| Vesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa445570a6a156c4a5e564b0d4075c3cc02a66a2b` | ⚠️ Unaudited |
| VestingVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f59818105abe05ae793a8caedb39fc2bea7f03c` | ⚠️ Unaudited |
| VETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9bafc3ef55d27361edd6d1e727c627a13c0950d3` | ⚠️ Unaudited |
| vGLMR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x02647942b07222fc1185297bb511034565432be9` | ⚠️ Unaudited |
| VirtualLBPStrategyFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260325 | `0x00000010f37b6524617b17e66796058412bbc487` | ⚠️ Unaudited |
| VoxFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x414b1da0bb6e948dc0559d14ebde9fa9572499bf` | ⚠️ Unaudited |
| VToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0b5dfdce7e5080eda88d5e84acd9c20acff54271` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2157a7894439191e520825fe9399ab8655e0f708` | ⚠️ Unaudited |
| WAVAX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7fc6d48e6e8e8b9505c171325539c651bf1d51d4` | ⚠️ Unaudited |
| WBNB | unknown | project_anchor | own_supporting | 0 | bsc | unit-260663 | `0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c` | ⚠️ Unaudited |
| WETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x353f8931ce1c52f643121be129985aab09c4bf52` | ⚠️ Unaudited |
| WETH9 | unknown | project_anchor | own_supporting | 0 | optimism | unit-260395 | `0x4200000000000000000000000000000000000006` | ⚠️ Unaudited |
| WMATIC | unknown | project_anchor | own_supporting | 0 | polygon | unit-260466 | `0x0d500b1d8e8ef31e21c99d1db9a6444d3adf1270` | ⚠️ Unaudited |
| WrappedYFI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x017e71e96f2ae777c679740d2d8dc15ed4231981` | ⚠️ Unaudited |
| X1NetworkToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1111111becab3c8866712ebf23fc4741010b8dce` | ⚠️ Unaudited |
| xVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0205ae93e18aa23d31e3df53899547b986e419c5` | ⚠️ Unaudited |
| yAffiliateFactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44ff2af361e4b6a2892523d513df5245fc53b367` | ⚠️ Unaudited |
| yBUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04bc0ab673d88ae9dbc9da2380cb6b79c4bca9ae` | ⚠️ Unaudited |
| yCollateralVaultProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24dd028bd027511482e701d08bae002cd6e82a5d` | ⚠️ Unaudited |
| yCRV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x170411a2d872945ee8c59e4ef5c3402ebe2a221c` | ⚠️ Unaudited |
| ycUSDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0597eaf957d896a5751aa35324bf24e1d9bc0f2c` | ⚠️ Unaudited |
| ycUSDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x631d66f79191c86d7b7a7c0e2afae3ae943931a4` | ⚠️ Unaudited |
| yDAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16de59092dae5ccf4a1e6439d611fd0653f0bd01` | ⚠️ Unaudited |
| yDAIv2Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56ab71990783442f68fb25e0b466196c7ca6bd33` | ⚠️ Unaudited |
| yDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61025859c349dfbe6ef0dfca202ef3e84ca05f83` | ⚠️ Unaudited |
| yDelegatedVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2088ba482f2097eb47896a2ec5f3925637b73d99` | ⚠️ Unaudited |
| YearnLiquidationKeep3r | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41303e87db5be5b1c7a341440d04ec6a11343eeb` | ⚠️ Unaudited |
| YFI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0bc529c00c6401aef6d220be8c6ea1667f6ad93e` | ⚠️ Unaudited |
| yInsure | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x181aea6936b407514ebfc0754a37704eb8d98f91` | ⚠️ Unaudited |
| yInsureView | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d2738fa41e83c5b5633f466f9aa11dae098340b` | ⚠️ Unaudited |
| ySUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36324b8168f960a12a8fd01406c9c78143d41380` | ⚠️ Unaudited |
| yTokenProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d5ad987b743eb624662fe5c62b8f6015554203a` | ⚠️ Unaudited |
| yTokenRebalance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19b6424c58afcee6d0cb954d4b8d44b9b5e9cc09` | ⚠️ Unaudited |
| yTUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73a052500105205d34daf004eab301916da8190f` | ⚠️ Unaudited |
| yUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12c0681dca0deb095f2f192c3ab64bf320af3aff` | ⚠️ Unaudited |
| yUSDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26ea744e5b887e5205727f55dfbe8685e3b21951` | ⚠️ Unaudited |
| yUSDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3118eec34240620ffd044dfa3aaa0a0f78b9aade` | ⚠️ Unaudited |
| yVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0fcda6f268d0c09cdfffe6bceac5233ac2367889` | ⚠️ Unaudited |
| yVaultCheck | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1bbe0f9af0cf852f9ff14637da2f0bc477a6d1ad` | ⚠️ Unaudited |
| yVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x044deaa1e5a8593adcead599e8d66fb5d3f677b5` | ⚠️ Unaudited |
| yWBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04aa51bbcb46541455ccf1b8bef2ebc5d3787ec9` | ⚠️ Unaudited |
| yWrappedVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x881b06da56bb5675c54e4ed311c21e54c5025298` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (695)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260323 | `0x000000005c84f8fd50b21cac312528a64437030e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260327 | `0x00004c4ccc709ef590f7c81102c0689f0263d4e9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260329 | `0x00cca200bf124dbfa848937c553864f4b4ce0632` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x089f8b425e4ab63b46e1e88688c138e44fbddff6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12a77ff585c31a788d7d8577e8dc13ade59b717e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17b9b197e422820b3e28629a2bb101949ee7d12b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260338 | `0x1a9c8182c09f50c8318d769245bea52c32be35bc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260340 | `0x1f98415757620b543a52e61c46b32eb19261f984` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260341 | `0x1f98431c8ad98523631ae4a59f267346ea31f984` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20f102f91a74fe85a395eaa77cc3c28d10651df1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b5ec5c4a513eb21d49449d09e2b0c75cebe51da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d80bd5f890b73fb4629ec00b4970657b5d543f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3032ab3fa8c01d786d29dade018d7f2017918e12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x359cf536b1fd6248ebad1449e1b3727cab33a01d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x365b19127425552cafeb1dd94c7dc1d0fc6e9517` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3cffea98953fc55fcdfcc4ff09d0620174cc1db6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d3484266a38b41a87a74b9df55e1cf5f0843864` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ffcf9727f3d4095a47834f244c42118e4fef4fe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260347 | `0x42b24a95702b9986e82d421cc3568932790a48ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4532961e5bd4d43de43a277e284ecdceb6852a93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4750c43867ef5f89869132eccf19b9b6c4286e1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b4e140d1f131fdad6fb59c13af796fd194e4135` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c82d1fbfe28c977cbb58d8c7ff8fcf9f70a2cca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5390b7f590edbac0a730b321dbcb7ad61c71d640` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54498c8e122ae5179cc9b60dc17351ab55633d99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5739760b44378f581fcbeea2aee9d49f6524414f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260348 | `0x5ba1e12693dc8f9c48aad8770482f4739beed696` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c254fd411db8d8a696b94a46508df7ce578729d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c3031a020a067aeb238cbe29db6cad992f10dc3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260350 | `0x5c69bee701ef814a2b6a3edd4b1652cb9cc5aa6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c90109a94f44f64b8a4ad810df719a4029c56de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d9408787605980a83f5ba790d8168a1da6cd379` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5df28f560aa911b40c316edad78f9ad378f8af46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e4be8bc9637f0eaa1a755019e06a68ce081d58f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260353 | `0x61ffe014ba17989e743c5f6cb21bf9697530b21e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6302dbdb54e475fb247e82f6978f5886521be840` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260354 | `0x65af3b62ee79763c704f04238080fbadd005b332` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260355 | `0x66a9893cc07d91d95644aedd05d03f95e1dba8af` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260356 | `0x68b3465833fb72a70ecdf485e0e4c7bd8665fc45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x726304e73c9cd0a2df34070bd01699279f09bcac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76da1c94eed6f6c4a7a8a78ca58b8034bde08fc4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260359 | `0x7a250d5630b4cf539739df2c5dacb4c659f2488d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e9c15c43f0d6c4a12e6bdff7c7d55d0f80e3e23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86ad8a61c8b260c8c28539927be6ad3fb57b6382` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87c7aaa50fa200c6c26b37b7c31c3e996b0b85d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87e980034d3aa7879f3ab79a8c3cb2919bfb05f4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260362 | `0x8ad599c3a0ff1de082011efddc58f1908eb6e6d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d161b7f0312215c6ed77c223c54bb1caa6e4d1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e194ba151e65c71e3d57b7ebacf4a73a63fd548` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260364 | `0x91ae842a5ffd8d12023116943e72a606179294f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x934591736d71a7f0981a3fdcd83bb5fe3fbeae33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x950bcda66032c12648662c634b19ce7a864f9675` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95e9d7f0e7496d1bfc169df5bdc1b36955d82ea2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c5c94b62ceddbe928da4d63ffa81c614987c573` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa134a9513589fa446f0a4da548a18488e38729b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3ca7a635041615d0aab77b803d62bd5023d40b2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260367 | `0xa5644e29708357803b5a882d272c41cc0df92b34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa2da8f75a6f7c37dd2a3edccbf7897759c9c119` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad87704822aa55835ef25768dd11c430db29ab17` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260368 | `0xb27308f9f90d607463bb33ea1bebb41c27ce5ab6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260369 | `0xb753548f6e010e7e680ba186f9ca1bdab2e90cf2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260370 | `0xb98766a35cdc28415be0767d4ea41e39fba3e000` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260371 | `0xbbbb6ffabccb1eafd4f0baed6764d8aa973316b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbe81471c3fb56e946e804897b7f8f3455402c5a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260372 | `0xbfd8137f7d1516d3ea5ca83523914859ec47f573` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260373 | `0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0a47dfe034b400b47bdad5fecda2621de6c4d95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc201d7ce611893ba81c7b950a0de1527a5a2f3dc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260374 | `0xc36442b4a4522e871399cd717abdd847ab11fe88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3a77238b9704e0680f592fa9bb2cc74efd46723` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260375 | `0xc6ef4c96ee89e48eff1c35545dbeed4ad8dac9d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc77e021a1379a9cd742d752f537479dd6c12509a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7f286e9f06835731bdae78b998720d64283e839` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc80b0a04d51f3fd4c91e9d28525709261936bed1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc819f6fd420c514a7a2f380343cb67607b990a14` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260376 | `0xcccccccae7503cac057829bf2811de42e16e0bd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf5104d094e3864cfcbda43b82e1cefd26a016eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd897e85c8c1594566c561a61138c68eea884a572` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdafe439dfb477ff104d378393b4d6e006e95f8bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdba8d2da7e3d6c9bd78c6ef1d978c5b9878b090f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdde0432fb96891b08874193489942459b0f2f100` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdfe672c671943411fc16197fb8e328662b57ce2c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260379 | `0xe34139463ba50bd61336e0c446bd8c0867c6fe65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3953d9d317b834592ab58ab2c7a6ad22b54075d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe634edc395997e71e15055147f0d6f3d816e416c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260384 | `0xee6a57ec80ea46401049e92587e52f5ec1c24785` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1a54266cca9ad4a67995b68b496ee12e79ae1c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf26995ebef4e45aecd07434f16bdff60cd62c49e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2baf413fba6ab290051c24a67951e074af2f064` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260385 | `0xf38521f130fccf29db1961597bc5d2b60f995f85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6ead00b3b9e1ff6a730cfdd3a82b3e5298b9525` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff235ea751964bba3887392de889a834a2bdfbde` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-260387 | `0x000000000022d473030f116ddee9f6b43ac78ba3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-260388 | `0x000000005c84f8fd50b21cac312528a64437030e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-260389 | `0x0c3c1c532f1e39edf36be9fe0be1410313e074bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-260393 | `0x1f98431c8ad98523631ae4a59f267346ea31f984` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-260396 | `0x42b24a95702b9986e82d421cc3568932790a48ec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-260398 | `0x4a7b5da61326a6379179b40d00f57e5bbdc962c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x541ab7c31a119441ef3575f6973277de0ef460bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5c69bee701ef814a2b6a3edd4b1652cb9cc5aa6f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-260400 | `0x61ffe014ba17989e743c5f6cb21bf9697530b21e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-260401 | `0x68b3465833fb72a70ecdf485e0e4c7bd8665fc45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7a250d5630b4cf539739df2c5dacb4c659f2488d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-260404 | `0x851116d9223fabed8e56c0e6b8ad0c31d98b3507` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8909dc15e40173ff4699343b6eb8132c65e18ec6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-260407 | `0x91ae842a5ffd8d12023116943e72a606179294f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x920b806e40a00e02e7d2b94ffc89860fdaed3640` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-260410 | `0xb27308f9f90d607463bb33ea1bebb41c27ce5ab6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-260411 | `0xb753548f6e010e7e680ba186f9ca1bdab2e90cf2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-260412 | `0xbfd8137f7d1516d3ea5ca83523914859ec47f573` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-260414 | `0xc36442b4a4522e871399cd717abdd847ab11fe88` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-260423 | `0xe34139463ba50bd61336e0c446bd8c0867c6fe65` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-260424 | `0xe592427a0aece92de3edee1f18e0157c05861564` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-260427 | `0xee6a57ec80ea46401049e92587e52f5ec1c24785` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf164fc0ec4e93095b804a4795bbe1e041497b92a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf1d7cc64fb4452f05c498126312ebe29f30fbcf9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-260647 | `0x000000000022d473030f116ddee9f6b43ac78ba3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-260648 | `0x000000005c84f8fd50b21cac312528a64437030e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-260650 | `0x00000000a55e50c71b70db3c8b58749cd1e18eb2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-260651 | `0x0281e98322e4e8e53491d576ee6a2bfce644c55c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x128ce3a3d48f27ce35a3f810cf2cddd2f6879b13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x170265370499b8f388883004fbad9ebde34f3781` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-260652 | `0x1906c1d672b88cd1b9ac7593301ca990f94eae07` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-260653 | `0x32681814957e0c13117ddc0c2aba232b5c9e760f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x44f161ae29361e332dea039dfa2f404e0bc5b5cc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-260654 | `0x4752ba5dbc23f44d87826276bf6fd6b1c372ad24` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-260655 | `0x49b53c35af9072fc71767577bf6380a88ee32c71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x581e2a6ef5e2032acd1eb0263ac8087fa2aef41f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x589b4931d426146864f6e3df652316a6d643ed8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5c69bee701ef814a2b6a3edd4b1652cb9cc5aa6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6f0037c79d144d5b8e3e6f04e49fbb5f25fd508f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x70421847195a77586ca46192e6e0337d610b0d7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x71479cf279bc2fcf5b8faa8c9eed2ab59127ab95` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-260656 | `0x78d78e420da98ad378d7799be8f4af69033eb077` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7a250d5630b4cf539739df2c5dacb4c659f2488d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-260657 | `0x7b8a01b39d58278b5de7e48c8449c9f4f5170613` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-260658 | `0x831d93e55af23a2977e4da892d5005f4f2995071` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-260659 | `0x8909dc15e40173ff4699343b6eb8132c65e18ec6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-260660 | `0x963df249ed09c358a4819e39d9cd5736c3087184` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9e5a52f57b3038f1b8eee45f28b3c1967e22799c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa28b3546ea3407ddd156bf45cfe679cb604aede6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa64dd3a63feed608660226112e748f93b87e650f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-260661 | `0xaec98e489ae35f243eb63452f6ad233a6c97ee97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb3abf5790a6f6706f16cbde1e7de893f3c5746fc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-260662 | `0xb971ef87ede563556b2ed4b1c0b0019111dd85d2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-260664 | `0xc9a7f5b73e853664044ab31936d0e6583d8b1c79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcd4855cea813a843002d750da09c2e8d966c945c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd00bd441cef3623dc59b5d9b5ef96ee87b42db42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd60537988f1fa1f471f94d669c4a3e936c977537` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd6e0bc285be97c75861910f4d2cfd4ac61dd629d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd73cd1117646625ffe23a55860035ac62fa8720d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-260665 | `0xd9270014d396281579760619ccf4c3af0501a47c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-260666 | `0xdb1d10011ad0ff90774d0c6bb92e5c5c8b4461f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdb20b456fab061174df34ab80f4d5504ed1d6672` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf5f4496219f31cdcba6130b5402873624585615a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfd31cecdedd7aef6528deab849a39629e7b237b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfe1a06260b3b68f49862ae5d617686d78f454dea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x16dd75c567a07082452ab56fd1e673987289e6ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x170265370499b8f388883004fbad9ebde34f3781` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x1e9400a91610048e1b59d92d688cffc953e6fab8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x32681814957e0c13117ddc0c2aba232b5c9e760f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x3ee84ffac05e05907e6ac89921f000ae966de001` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x49b53c35af9072fc71767577bf6380a88ee32c71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x4ce075e640649ea45fc55ac0e301ff75c4cd0f0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x4dfa9a980efe4802e969ac33968e3d6e59b8a19e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x581e2a6ef5e2032acd1eb0263ac8087fa2aef41f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x589f0d7a6332a15681c0938bc3bee6fd1413e939` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x5d6b0f5335ec95cd2ab7e52f2a0750dd86502435` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x70421847195a77586ca46192e6e0337d610b0d7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x71479cf279bc2fcf5b8faa8c9eed2ab59127ab95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x75fc67473a91335b5b8f8821277262a13b38c9b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x78d78e420da98ad378d7799be8f4af69033eb077` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x7b8a01b39d58278b5de7e48c8449c9f4f5170613` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x7e9cb3499a6cee3babe5c8a3d328ea7fd36578f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x831d93e55af23a2977e4da892d5005f4f2995071` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x8b5a954fba566b157798c413d95028f4ab87f5e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x8e041632b77fd2a23bd4d9543c0b8a0039b481b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x8fe3d346b53dca838b228e0e53acdbed5dec70dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x963df249ed09c358a4819e39d9cd5736c3087184` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x9c75d004a1d86cd4e75ec4785610649f92121036` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xae8fbe656a77519a7490054274910129c9244fa3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xaec98e489ae35f243eb63452f6ad233a6c97ee97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xb3abf5790a6f6706f16cbde1e7de893f3c5746fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xc6d25285d5c5b62b7ca26d6092751a145d50e9be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xcb2436774c3e191c85056d248ef4260ce5f27a9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xcd4855cea813a843002d750da09c2e8d966c945c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xd00bd441cef3623dc59b5d9b5ef96ee87b42db42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xd60537988f1fa1f471f94d669c4a3e936c977537` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xd73bf3436f6d25cee70aa80b7c9116a90b263f20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xd9270014d396281579760619ccf4c3af0501a47c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xe32f7dd7e3f098d518ff19a22d5f028e076489b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xed0d35e600ff40ac6c598c5b29468af22400fa66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xf5f4496219f31cdcba6130b5402873624585615a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-260429 | `0x000000000022d473030f116ddee9f6b43ac78ba3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-260430 | `0x000000005af66799d1a6317714d66800f9ca1406` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-260431 | `0x000000005c84f8fd50b21cac312528a64437030e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-260432 | `0x1f98400000000000000000000000000000000002` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-260433 | `0x1f98400000000000000000000000000000000003` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-260434 | `0x1f98431c8ad98523631ae4a59f267346ea31f984` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-260438 | `0x385a5cf5f83e99f7bb2852b6a19c3538b9fa7658` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-260439 | `0x4200000000000000000000000000000000000006` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-260440 | `0x435ddcfbb7a6741a5cc962a95d6915ebbf60ae24` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-260443 | `0x73855d06de49d0fe4a9c42636ba96c62da12ff9c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-260444 | `0x824a3ecde463dd45cc156b64cefa132596c9a000` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-260446 | `0x943e6e07a7e8e791dafc44083e54041d743c46e9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-260449 | `0xaa56d4d68646b4858a5a3a99058169d0100b38e2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-260451 | `0xb7610f9b733e7d45184be3a1bc966960ccc54f0b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-260453 | `0xb9d0c246f306b1aaf02ae6ba112d5ef25e5b60dc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-260455 | `0xc6ef4c96ee89e48eff1c35545dbeed4ad8dac9d4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-260459 | `0xd5d76fa166ab8d8ad4c9f61aaa81457b66cbe443` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-260462 | `0xeb44195e1847f23d4ff411b7d501b726c7620529` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-260463 | `0x000000000022d473030f116ddee9f6b43ac78ba3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0db103632700eb0ecb88ebdb9583cc4cae5279ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x16d4f26c15f3658ec65b1126ff27dd3df2a2996b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-260469 | `0x1f98415757620b543a52e61c46b32eb19261f984` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-260470 | `0x1f98431c8ad98523631ae4a59f267346ea31f984` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3a3ba807fc9f6f1faced9b03ab19f29c7529d851` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-260473 | `0x42b24a95702b9986e82d421cc3568932790a48ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x59ef2e4811bbd021944f4019150907f5bf6bff38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5c69bee701ef814a2b6a3edd4b1652cb9cc5aa6f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-260474 | `0x61ffe014ba17989e743c5f6cb21bf9697530b21e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x63fe39aa5418b4a99a7d6bac942cea9f718e7d6b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-260475 | `0x68b3465833fb72a70ecdf485e0e4c7bd8665fc45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7a250d5630b4cf539739df2c5dacb4c659f2488d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8909dc15e40173ff4699343b6eb8132c65e18ec6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-260481 | `0x91ae842a5ffd8d12023116943e72a606179294f3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-260482 | `0x9e5a52f57b3038f1b8eee45f28b3c1967e22799c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-260485 | `0xa5644e29708357803b5a882d272c41cc0df92b34` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-260486 | `0xb27308f9f90d607463bb33ea1bebb41c27ce5ab6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-260487 | `0xb753548f6e010e7e680ba186f9ca1bdab2e90cf2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-260488 | `0xbfd8137f7d1516d3ea5ca83523914859ec47f573` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-260490 | `0xc36442b4a4522e871399cd717abdd847ab11fe88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc951ab482ff11d8df636742e1f1c3fc8037427a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd7303474baca835743b54d73799688990f24a79d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd867e273eabd6c853fcd0ca0bfb6a3ae6491d2c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xddfed9b3403adb34e2bf05a3e4611d85e735102d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-260491 | `0xe34139463ba50bd61336e0c446bd8c0867c6fe65` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-260492 | `0xe592427a0aece92de3edee1f18e0157c05861564` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-260496 | `0xedf6066a2b290c185783862c7f4776a2c8077ad1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-260497 | `0xee6a57ec80ea46401049e92587e52f5ec1c24785` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf1d7cc64fb4452f05c498126312ebe29f30fbcf9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-260498 | `0x000000009b1d0af20d8c6d0a44e162d11f9b8f00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0d922fb1bc191f64970ac40376643808b4b74df9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1b35fba9357fd9bda7ed0429c8bbabe1e8cc88fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x38eb9e62abe4d3f70c0e161971f29593b8ae29ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x447b8e40b0cda8e55f405c86bc635d02d0540ab8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x454050c4c9190390981ac4b8d5afcd7ac65eeffa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5911cb3633e764939edc2d92b7e1ad375bb57649` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5d6b0f5335ec95cd2ab7e52f2a0750dd86502435` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6aa54a43d7eef5b239a18eed3af4877f46522bca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x738fd6d10bcc05c230388b4027cad37f82fe2af2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x743e03cceb4af2efa3cc76838f6e8b50b63f184c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8b3c541c30f9b29560f56b9e44b59718916b69ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xaa52bb8110fe38d0d2d2af0b85c3a3ee622ca455` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb3309c48f8407651d918ca3da4c45de40109e641` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xcb2436774c3e191c85056d248ef4260ce5f27a9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xdd489c75be1039ec7d843a6ac2fd658350b067cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe3dbcd53f4ce1b06ab200f4912bd35672e68f1fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x3c7b6fa5376ba88364e9beae6e1aec9f738e8f63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x42bff1f6b647462fcd8c28a488be9c9988830ef6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x48f809e2e3c4bc17d74cdb14726f710a86079c75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x683553d74d9779955a15d57d208234c956b6eae6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x83986ff655a54ee061f6b7f476b92f4fed111b93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x94aa89d2fab79d4d2b301848748806f6209d60f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x9f28881077b8026de188811d868560aea981185f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xa09df22ef7c77b10fd0e60e6b814501dd7edd60c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xa4f2db71348697c65a64a146f709c73030c2ebcd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xa767ca625981eb0ff45e19ef443dc8869ab901bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xb17673d9b67330aa7f62206d123661ed729acb2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xc94fb2d13587b0b5af78094933490b35e004eabe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xd917e52414bd12f3160b5ceb1b959336776a1d61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xe63b94a752be0ddd4895d96df173d7121d3d61e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xea9f30b3309ae3ee890f02cdaa880857e2fd2f24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xfe83e1dda189d71093f2a716a4d01d591d6ca66c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-260502 | `0x000000000022d473030f116ddee9f6b43ac78ba3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-260503 | `0x2e9d45bb7b30549f5216813ada9a6b7982c5b3ed` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-260504 | `0x315e413a11ab0df498ef83873012430ca36638ae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-260505 | `0x4b2ab38dbf28d31d467aa8993f6c2585981d6804` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-260506 | `0x4f0c28f5926afda16bf2506d5d9e57ea190f9bca` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-260507 | `0x5507749f2c558bb3e162c6e90c314c092e7372ff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-260508 | `0x661e93cca42afacb172121ef892830ca3b70f08d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-260509 | `0x7197e214c0b767cfb76fb734ab638e2c192f4e53` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-260513 | `0xd1b797d92d87b688193a2b976efc8d577d204343` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-260514 | `0xda00ae15d3a71466517129255255db7c0c0956d3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-260515 | `0xe2023f3fa515cf070e07fd9d51c1d236e07843f4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-260516 | `0xe538905cf8410324e03a5a23c1c177a474d59b2b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-260517 | `0x0000000000225e31d15943971f47ad3022f714fa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-260518 | `0x000000000022d473030f116ddee9f6b43ac78ba3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-260519 | `0x0616e5762c1e7dc3723c50663df10a162d690a86` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-260520 | `0x0c68a7c72f074d1c45c16d41fa74eebc6d16a65c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-260521 | `0x28731bcc616b5f51dd52cf2e4df0e78dd1136c06` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-260522 | `0x5aea5775959fbc2557cc8789bc1bf90a239d9a91` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-260523 | `0x611841b24e43c4acfd290b427a3d6cf1a59dac8e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-260524 | `0x7d67b8ff4abffc020641f5e430fbeed03897674d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-260526 | `0x8cb537fc92e26d8ebbb760e632c95484b6ea3e28` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-260527 | `0x8fda5a7a8dca67bbcdd10f02fa0649a937215422` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-260528 | `0x99c56385dabce3e81d8499d0b8d0257abc07e8a3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-260530 | `0xa819de78cab1163f8605809392068ede3bfcdd1e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-260531 | `0xaeabf2d69698c6810d2596fae86099790a13ee81` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-260532 | `0xbb79274ad9c7f68a5b6a7e31f431175bb889b557` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-260534 | `0xe10ff11b809f8ee07b056b452c3b2caa7fe24f89` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-260535 | `0xf84268fa8eb857c2e4298720c1c617178f5e78e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x0a59e1bc3f1b607180cfd527c1443bc4fdda6ff4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x16012cc23e61d487ecedf38369c4012e35397816` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x1f4f7b041895d9eb1a79be0896af3e68e4160010` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x253bf8d18ed3e244e70b91b03276b8a74b75a59e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x28f1158795a3585caaa3cd6469cd65382b89bb70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x401908e5e38d2f285425bafc1795ea900d030dea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x48af91cdcad8ffdd7a8d4cdf73c16cb0632d3d17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x4c40110fc1be659a02dd4f0368c140a42df3b752` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x74e9c28a9e62d8b559347f569d05e493ead9703d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x76776b10d782a1d194fbfc92d4b01db1ce1eeb4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x78458fded50585f867d95d1c433248ee0fae4c8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x88e5fd159dffa20e5813a99edebec3112d524fe4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x9036d0dcb5a059c9371b05d508f0072df773854e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x921c55ae486e63d16dbfbe216573a21aeb684c02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x974841bd5aea2aac749ff581d02e27b5d986c654` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xc507e22ba3140dc0a79fdf27e03c98aa20f3ee66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xcefe54c7a797199ab4e7e9ebb0885f1ece4aa544` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xd88436a3a1d503ff487c1d8d24dbd8a31895a962` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xdf5371ec1ac9549bc4e348f52b51d20783d0109f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xf195ad5977edfae85da2b580e66506b6f8cbe52a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xf95a85f2e15a5967d58eeb6951aa81a1efe42720` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xfe5045eb0145bbc358ea3d71471854d076c46d5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x19774c825e032710e883adae4d40b35c4bfcf4d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x1b35fba9357fd9bda7ed0429c8bbabe1e8cc88fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x30b35056f2d5c5fd83ca7a733041fdf45247ed57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x346239972d1fa486fc4a521031bc81bfb7d6e8a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x38eb9e62abe4d3f70c0e161971f29593b8ae29ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x454050c4c9190390981ac4b8d5afcd7ac65eeffa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x48e8a802e2bc3c48ec02c9807dff0e2233737c94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x533c7a53389e0538ab6ae1d7798d6c1213eac28b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x6aa54a43d7eef5b239a18eed3af4877f46522bca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x6e1293993c71cb2e6b2da8559f6d7dc1fdb3ae02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x743e03cceb4af2efa3cc76838f6e8b50b63f184c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x75fc67473a91335b5b8f8821277262a13b38c9b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x807f4e281b7a3b324825c64ca53c69f0b418de40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x81de30a9a2816f95f2ee8df62bafc45a095d57b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x864ddc9b50b9a0df676d826c9b9ede9f8913a160` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x8b3c541c30f9b29560f56b9e44b59718916b69ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x9b7ac6735b23578e81260acd34e3668d0cc6000a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x9db70e29712cc8af10c2b597bada6784544ff407` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xa683c66045ad16abb1bce5ad46a64d95f9a25785` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xa7122672f68b247cb18e2b9903f430ef5d28cc56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xa7e6cb0a6b1be8b779022a6afcb097cf0d3ff4a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xa9d71e1dd7ca26f26e656e66d6aa81ed7f745bf0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xaa52bb8110fe38d0d2d2af0b85c3a3ee622ca455` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xb3309c48f8407651d918ca3da4c45de40109e641` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xcba55304013187d49d4012f4d7e4b63a04405cd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xcd7f266e3c0d0771897aaf74beb38072d66402a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xdd489c75be1039ec7d843a6ac2fd658350b067cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xe3dbcd53f4ce1b06ab200f4912bd35672e68f1fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xe43ee1fabc4dcf4c2f060214f0a73c4e3afc76a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xefde184f4b5d79f7c3b7efc0388d829ff9af0050` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x0d922fb1bc191f64970ac40376643808b4b74df9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x1b35fba9357fd9bda7ed0429c8bbabe1e8cc88fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x346239972d1fa486fc4a521031bc81bfb7d6e8a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x38eb9e62abe4d3f70c0e161971f29593b8ae29ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x447b8e40b0cda8e55f405c86bc635d02d0540ab8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x454050c4c9190390981ac4b8d5afcd7ac65eeffa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x5911cb3633e764939edc2d92b7e1ad375bb57649` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x5d6b0f5335ec95cd2ab7e52f2a0750dd86502435` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x6aa54a43d7eef5b239a18eed3af4877f46522bca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x738fd6d10bcc05c230388b4027cad37f82fe2af2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x743e03cceb4af2efa3cc76838f6e8b50b63f184c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x75fc67473a91335b5b8f8821277262a13b38c9b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x807f4e281b7a3b324825c64ca53c69f0b418de40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x8b3c541c30f9b29560f56b9e44b59718916b69ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x9b7ac6735b23578e81260acd34e3668d0cc6000a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x9db70e29712cc8af10c2b597bada6784544ff407` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xa683c66045ad16abb1bce5ad46a64d95f9a25785` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xaa52bb8110fe38d0d2d2af0b85c3a3ee622ca455` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xcb2436774c3e191c85056d248ef4260ce5f27a9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xdd489c75be1039ec7d843a6ac2fd658350b067cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xefde184f4b5d79f7c3b7efc0388d829ff9af0050` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-260701 | `0x000000000022d473030f116ddee9f6b43ac78ba3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-260703 | `0x000000005c84f8fd50b21cac312528a64437030e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-260704 | `0x000000008a8330b5d1f43a62bf4c673a49f27ba0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-260705 | `0x00000000a3db63df9078cbf3df88b4cadd5a7f58` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-260707 | `0x091e99cb1c49331a94dd62755d168e941abd0693` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0bc2e0cab4ad1dd1398d70bc268c0502e8a6df24` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-260708 | `0x0cdee061c75d43c82520ed998c23ac2991c9ac6d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-260710 | `0x23cf10b1ee3adfca73b0ef17c07f7577e7acd2d7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-260711 | `0x2626664c2603336e57b271c5c0b26f421741e481` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x31fafd4889fa1269f7a13a66ee0fb458f27d72a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x32c7d417a8b28a99b7993436eadc3de175a277e0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-260713 | `0x33128a8fc17869897dce68ed026d694621f6fdfd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-260714 | `0x3334d83e224af5ef9c2e7dda7c7c98efd9621fa9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-260716 | `0x3d4e44eb1374240ce5f1b871ab261cd16335b76a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-260717 | `0x4200000000000000000000000000000000000006` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-260718 | `0x42be4d6527829fefa1493e1fb9f3676d2425c3c1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-260719 | `0x4615c383f85d0a2bbed973d83ccecf5cb7121463` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-260720 | `0x4752ba5dbc23f44d87826276bf6fd6b1c372ad24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4ba65e367fa6066eb608f02a8c469f1f1c492eaf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-260723 | `0x4f225937edc33efd6109c4cef7b560b2d6401009` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x51aed543997dc8211b513a0e765f3a5eb2fe412f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-260724 | `0x5bb4bafafec57bed50d864aaa9d1ef992611e000` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5c69bee701ef814a2b6a3edd4b1652cb9cc5aa6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x61c57c187557442393a96ba8e6fdfe27610832a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x62e7bbb31595424f43103064d0549e69dfbf2a7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6f57fb8d6ea4087da574f9e5f1e272cb6fd44f6d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-260725 | `0x6ff5693b99212da76ad316178a184ab56d299b43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7ccda9d7d7cdf28e5d5e2ef143d950865c302d90` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-260726 | `0x8909dc15e40173ff4699343b6eb8132c65e18ec6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x99e016d3b384e9b1d22ba560971e3172b40b5e90` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-260729 | `0x9c5a6fb9b0d9a60e665d93a3e6923bde428c389a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9e5a52f57b3038f1b8eee45f28b3c1967e22799c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa1ff2304b87cecf0f36794f2aa2468c5073e1eb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xade0c3805328d90085fa784d88ee37a418874bfa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb079fa0c53c2da05ea517ffc545cd7e3c180a136` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbc33b4d48f76d17a1800afcb730e8a6aaada7fe5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc02003b4168fa33eae03b9867dd5756596c9f766` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc3997ff81f2831929499c4ee4ee4e0f08f42d4d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc3b7f39e53333c1a4d977e7b2de192c20321006e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-260732 | `0xc46143ae2801b21b8c08a753f9f6b52bead9c134` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc6ea65b6769309a0f01223fb75576c4c3cd1f5f7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-260734 | `0xc6ef4c96ee89e48eff1c35545dbeed4ad8dac9d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd6e0bc285be97c75861910f4d2cfd4ac61dd629d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe9389cc9253ec313ba56f8c823f92b9f7ce1d04b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xec7a886ca35de12d7155d6ab5e160190bc6fc6eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf1d7cc64fb4452f05c498126312ebe29f30fbcf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf659c15aeb6e41a9edacbbf3faef3902c7f3fe1b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-260740 | `0xf9d1077fd35670d4acbd27af82652a8d84577d9f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-260536 | `0x000000000022d473030f116ddee9f6b43ac78ba3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-260537 | `0x000000005c84f8fd50b21cac312528a64437030e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x021ceac7e681dbce9b5039d2535ed97590eb395c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x182a927119d56008d921126764bf884221b10f59` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-260540 | `0x18608ad558dcd233f7854242bbaef73988bee000` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1f98407aab862cddef78ed252d6f557aa5b0f00d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-260541 | `0x1f98431c8ad98523631ae4a59f267346ea31f984` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2e5353426c89f4ecd52d1036da822d47e73376c4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-260546 | `0x42b24a95702b9986e82d421cc3568932790a48ec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-260547 | `0x4752ba5dbc23f44d87826276bf6fd6b1c372ad24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4b2ab38dbf28d31d467aa8993f6c2585981d6804` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5c69bee701ef814a2b6a3edd4b1652cb9cc5aa6f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-260549 | `0x61ffe014ba17989e743c5f6cb21bf9697530b21e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-260550 | `0x68b3465833fb72a70ecdf485e0e4c7bd8665fc45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7a250d5630b4cf539739df2c5dacb4c659f2488d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x838930cfe7502dd36b0b1ebbef8001fbf94f3bfb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8702463e73f74d0b6765abceb314ef07acb92650` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8909dc15e40173ff4699343b6eb8132c65e18ec6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-260553 | `0x91ae842a5ffd8d12023116943e72a606179294f3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-260556 | `0xa51afafe0263b40edaef0df8781ea9aa03e381a3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-260557 | `0xa5644e29708357803b5a882d272c41cc0df92b34` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-260558 | `0xadf885960b47ea2cd9b55e6dac6b42b7cb2806db` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-260559 | `0xb27308f9f90d607463bb33ea1bebb41c27ce5ab6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-260560 | `0xb274d5f4b833b61b340b654d600a864fb604a87c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-260561 | `0xb753548f6e010e7e680ba186f9ca1bdab2e90cf2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbbbcc62853a5fa27b93d6bab3e6f7ce841e25df2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-260562 | `0xbfd8137f7d1516d3ea5ca83523914859ec47f573` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-260564 | `0xc36442b4a4522e871399cd717abdd847ab11fe88` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-260565 | `0xc6ef4c96ee89e48eff1c35545dbeed4ad8dac9d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdf38f24fe153761634be942f9d859f3dba857e95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe2023f3fa515cf070e07fd9d51c1d236e07843f4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-260566 | `0xe34139463ba50bd61336e0c446bd8c0867c6fe65` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-260567 | `0xe592427a0aece92de3edee1f18e0157c05861564` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe783de89a7f0408687f051e3e6d0beb62719ebad` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-260568 | `0xee6a57ec80ea46401049e92587e52f5ec1c24785` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-260569 | `0xf1d7cc64fb4452f05c498126312ebe29f30fbcf9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-260570 | `0x000000000022d473030f116ddee9f6b43ac78ba3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x0198db9696aac48c5edaa7b8a0b0d5d20eb2632c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x03f69652876d45acf168acd7cbece9aaf52887b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x0622fed647b195219f24cbdcb706c6b031dfdfb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x090a1f49522ae52f79d54a3848c48857f44f2663` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x09b17f887721035c2d73b0628c4bdb5666a31cce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x0cc6e134abd23d826d72c1cb9331d1af66ac6a77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x0d988a7f3a7ee80602d8e24295a4dcdbc2f451d2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-260571 | `0x0ec9d3c06bc0a472a80085244d897bb604548824` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x10c24bfe268b66bdf6df30b8df30fc6229af3b7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x12364a15f52b822f12dd858faeedc49f472fba57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x158ed34a68bd7eb5477cf1bc0b347262093fec4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x1690e229c37219f0a10e102232de5e2591de7df5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x204ba494de6a50a116ecd340556be8a15734c9d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x2063b12452c1f3b2ac1137ab9d87f98bca9073d2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-260573 | `0x245d3f47f55c532dbe9340368855be631b162cfd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x280af775337a7203e90d35b5e449ec3a717185aa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-260574 | `0x3c1fcf8d6f3a579e98f4ae75eb0ada6de70f5673` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-260575 | `0x3cfd4d48edfdcc53d3f173f596f621064614c582` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-260576 | `0x3d79edaabc0eab6f08ed885c05fc0b014290d95a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x43f7a0fa30a6bc447c94deaeddd4bbb7def99228` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x444c31990032a34b2141c45cd93b5c6cbd424cae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x4cf604c6251c87d0c83e17f88397dec67ead825f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x4e843ad7e0dcd656bdfe4d3649285e01724678b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x4f1b7221702d22b1935e902f0030927b3d8d5454` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-260577 | `0x505b43c452aa4443e0a6b84bb37771494633fde9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-260578 | `0x5615cdab10dc425a742d643d949a7f474c01abc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x585e1e617dbebdc7b13cf2ec8d11ea85fa3a26c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x59f4ece373e26b39f389887c26b399497d7a4b68` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-260579 | `0x5f115d9113f88e0a0db1b5033d90d4a9690acd3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x61257eaf53497829636383f6c4ac467d575c3fd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x61b7d4c2a630a8690d23ba943d59e08297b7a77f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-260580 | `0x633987602de5c4f337e3dbf265303a1080324204` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-260581 | `0x643770e279d5d0733f21d6dc03a8efbabf3255b4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-260582 | `0x644023b316bb65175c347de903b60a756f6dd554` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-260583 | `0x6586fb35393abf7ff454977a9b3c912d218791c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x672b7ddaf201e5c1a71e5843848035dbccdaf224` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x6c5d141990146bd3d11c877b0dd608167fc5a11d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x6c611aa922e9cfc40500e849d780f0e5708b1287` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x7158689eb1a161f38f5227f5e2a8eef65a3333cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x7488ebda20fc3277f0cc6a1303fc74a35b4d108f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x799c0cefd290bbb7f1bdc1a1dbfdc2f875db47b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x7c68b5647fb5624cb1f83209a5d828111f264969` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x7d89e072046e584c0ba2a6589f76bb308c3f166f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x800b817fd3ee6d90263dd363fc4fd29b8bdb54a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x8205710e2465d17d7cb249bda816704ffa77f4a0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-260585 | `0x82825d0554fa07f7fc52ab63c961f330fdefa8e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x88a3ed7f21a3fcf6adb86b6f878c5b7a02d20e9b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-260587 | `0x8ac47d3e65a3e6ad14596ee7d18ad1d1aa53208f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x8b3842da1304eae0894286021e26cb8283ed37e1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-260589 | `0x8c456f41a3883ba0ba99f810f7a2da54d9ea3ef0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x8dd4f800851db9dc219fdfaeb82f8d69e2b13582` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x969d7b57c869fec5163318753aa27cc896ead654` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x996a8d4af28ec1a13b95b9b4d29829e844b80af2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x9a642a8a77635b5df73eacf8ba389dcbb87bee9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xa6dacd16c9a7d823b7e2701ea0226e20c7debbfc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-260593 | `0xa9fd765d85938d278cb0b108dbe4bf7186831186` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xaa933baf03cfc55b8e4e0d7de479bcc12f189352` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-260594 | `0xafe208a311b21f13ef87e33a90049fc17a7acdec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-260596 | `0xb00b8c3ab078eb0f7dec6ce19c1a1da5bf4f8d7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xb325a8e12344953e8b8b1afbf1d5580d36c26245` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xb42d0c1fa3f714055054c2001d09556761210a22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xb4a94f20937350c38efadc8ea6c361d6bfea82b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xba53ef24579b1b505f823ac6be85e7ae3b0b38e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xba792b43c27299eedd882f2d84b93b6f70067398` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xbd42adbe4904c50827287536635c042f70721bf7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-260600 | `0xc1b262dd7643d4b7ca9e51631bbd900a564bf49a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xc21090ac772a0aeb28472073c976d89dab011e19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xc301efebae9c517ea81f87d2cf2ff0a87caabc83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xc35269b01c873cfd441b35090a83e6aeb307cd30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xc54e26ca615884ae5e6f67d75aeb3bb17648986b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xc7da0b1d7cbceed0921afaa321ce5c913299427d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xd2a7fbc114a135c671e63fdde540d4a471265865` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xd3a6f30326301e864c5fa5a4a7f61026fc726702` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xd533ca259b330c7a88f74e000a3faea2d63b7972` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xd5ea4626b64e7758411bae2a52de210e35ced069` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xd9fc0479bf9300cde2d3ecfa276ec389f4fe95fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xe4c3e3acf4d8ae9a08d52a73086e85b493cbe378` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xec8b0f7ffe3ae75d7ffab09429e3675bb63503e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xefe50f83ba23240a85c39aff429b31e556d2c80f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xf2a347f184b0fef572c7cbd2c392359eccf43f3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xf9de2da9bf81dfab66d09db1b7d71cf11851c3ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xfe6803022191b40256a0c6571e23a6f49b7d64ed` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-260608 | `0x000000000022d473030f116ddee9f6b43ac78ba3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-260614 | `0x00000000a3db63df9078cbf3df88b4cadd5a7f58` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-260620 | `0x27dd7ee7fe723e83bf3612a75a034951fe299e99` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-260622 | `0x44f5f1f5e452ea8d29c890e8f6e893fc0f1f0f97` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-260624 | `0x4752ba5dbc23f44d87826276bf6fd6b1c372ad24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5c69bee701ef814a2b6a3edd4b1652cb9cc5aa6f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-260626 | `0x655c406ebfa14ee2006250925e54ec43ad184f8b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-260628 | `0x740b1c1de25031c31ff4fc9a62f554a55cdc1bad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7a250d5630b4cf539739df2c5dacb4c659f2488d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-260632 | `0x94b75331ae8d42c1b61065089b7d48fe14aa73b7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-260633 | `0x9ada7d7879214073f40183f3410f2b3f088c6381` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-260634 | `0x9e5a52f57b3038f1b8eee45f28b3c1967e22799c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-260636 | `0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-260637 | `0xbb00ff08d01d300023c629e8ffffcb65a5a578ce` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-260638 | `0xbe0f5544ec67e9b3b2d979aaa43f18fd87e6257f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-260640 | `0xca9d0668c600c4dd07ca54be1615fe5cdfd76ac3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-260641 | `0xe1f93a7cb6ffa2db4f9d5a2fd43158a428993c09` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-260642 | `0xe89b7c295d73fcce88ef263f86e7310925daebaf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-260643 | `0xeb9ffc8bf81b4ffd11fb6a63a6b0f098c6e21950` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf1d7cc64fb4452f05c498126312ebe29f30fbcf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x091e99cb1c49331a94dd62755d168e941abd0693` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x0cdee061c75d43c82520ed998c23ac2991c9ac6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x31fafd4889fa1269f7a13a66ee0fb458f27d72a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x3334d83e224af5ef9c2e7dda7c7c98efd9621fa9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x3d4e44eb1374240ce5f1b871ab261cd16335b76a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x42be4d6527829fefa1493e1fb9f3676d2425c3c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x4615c383f85d0a2bbed973d83ccecf5cb7121463` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x4f225937edc33efd6109c4cef7b560b2d6401009` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x59eb58642d7f66517ef357b2d3f515f24bca588d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x63c8527f670d4eb3401c80c5905ceca8727f1e74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x68ed6c1d24a1aa74ef684e958dd6b6e1f1a90c57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x93e253d101519578a8df0bce2a43d8292bfb3a1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x9a27b81b034e585be9d366deb7abad036be50845` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xb3c87710c6ebef04dc3d832c1a91f739948cd29c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xd7c7d7f18dd5388d5217c9696c7e799fcd75c6bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xf9d1077fd35670d4acbd27af82652a8d84577d9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x15ca7043cd84c5d21ae76ba0a1a967d42c40ece0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x2e95185bcdd928a3e984b7e2d6560ab1b17d7274` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x4966deec054245866f2cf452ec20f72da9afc7b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x497089d9450bb58f536c38c1c0d0a37472303508` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x549feb8c9bd4c12ad2ab27022da12492ac452b66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x5ab1b56fb16238db874258fb7847efe248eb8496` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x5c346464d33f90babaf70db6388507cc889c1070` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x6cdcd65e03c1cec3730aeecd45bc140d57a25c77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x792edade80af5fc680d96a2ed80a44247d2cf6fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x7c9caa4ac84c8fad8bd504dbf90e791f91f41705` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xaa32bd3926097fd04d22b4433e9867417ee79333` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xb218e4f7cf0533d4696fdfc419a0023d33345f28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xb22ef02e13b1900ebf10391e57162402c11bff05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xc228c0343ee4d4b3eadf701154f1f1bd9e29d833` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xe463635f6e73c1e595554c3ae216472d0fb929a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xecaf7c276f746170642e97de961f2f0361e1acc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x050e797f3625ec8785265e1d9bdd4799b97528a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x05e73354cfdd6745c338b50bcfdfa3aa6fa03408` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x1411060f44da12017adbb34de5f9238912db2055` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x1689e7b1f10000ae47ebfe339a4f69decd19f602` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x1b4f103ff3fdae81e75ec278256e5b4f4728b2b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x1c1b6f91b6414d132add55fb22ef2db1259e192e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x1c2b764b607934383de98e69bc3bf69c8e6d9a2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x1e2a708040eb6ed08893e27e35d399e8e8e7857e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x2224f77c646fd4322df82c374e935921f6aae19e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x24c731645ee1e35c3219153d370ebd79784d1e91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x27f971cb582bf9e50f397e4d29a5c7a34f11faa2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x2d2d37284a9da0a78527f8f3bf30493c2ad518d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x30654c69b212ad057e817eca26da6c5eda32e2e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x37429cd17cb1454c34e7f50b09725202fd533039` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x39bf2eff94201cfaa471932655404f63315147a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x3a0c2cf7c40a7b417ae9ab6ccbf60e86d8437395` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x3d5e538d212b05bc4b3f70520189aa3dea588b1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x3e0267c1ea01a6e89b01c105a7d235b134fd1df4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-260741 | `0x4200000000000000000000000000000000000006` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x4752ba5dbc23f44d87826276bf6fd6b1c372ad24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x492e6456d9528771018deb9e87ef7750ef184104` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x496cd7097f0bdd32774da3d2f1ef0adf430b7e81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x4e0caff1df1ccd7cf782fdded77f020699b57f1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x50ae8727379b459652d3123317a855faae73c2d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x51bcf71432e25292279b090bfc123e0db62486bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x54720d51c76e0398e99d0168e822c406825a5121` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x5ba874e13d2cf3161f89d1b1d1732d14226dbf16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x5bf9fabb0d56515658b7d5cc4b1f5c4eaed09e49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x5c038ee8ab7bd7699037e277874f1c611ad0c28f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x5cba23e581a5cbee77be4e98df0bcea74c0b5c9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x60abeb98b3b95a0c5786261c1ab830e3d2383f9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x615bcf3371f7daf8e8f7d26db10e12f0f4830c94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x62725f55f50bde240aca3e740d47298cac8d57d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x6550fa0d92b38f52c37d32d71084a7b270226ba5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x6e495fc2ab5c2391703ce58fc1d3d64e5c257544` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x76870debef0be25589a5cddce9b1d99276c73b4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x78e7f1502a9e4115debd6876e0ac4faebdb96880` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x7ae58f10f7849ca6f5fb71b7f45cb416c9204b1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x7b2b5a2c377b34079589ddbcea20427cdb7c8219` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x7da1d65f8b249183667cde74c5cbd46dd38aa829` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x841b5a0b3dbc473c8a057e2391014aa4c4751351` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x84642fef6ef575e3b2f4d7c72022f24ab9c9ffa6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x862fa52d0c8bca8fbcb5213c9febc49c87a52912` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x86622f22e969ef236ecbb2a1cac80773f55a002f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x8b5bcc363dde2614281ad875bad385e0a785d3b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x914cbf23622af2caed09c0f1a230f24e1aa3da19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x927038542746c06f1b2f7f550a3c90aebdda4e85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x94528fa42d6a61f46c961976a634334cf13d3f18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x94cc0aac535ccdb3c01d6787d6413c739ae12bc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x95273d871c8156636e114b63797d78d7e1720d81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x96e3495b712c6589f1d2c50635fde68cf17ac83c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xb602cc585b440e901c8a3a51cab4b4f2a6047681` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xb673ae03413860776497b8c9b3e3f8d4d8745cb3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xb7b74b407e9ba6c070c5b5cc7e6b8e59e4642763` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xba95b1fa219e9c93c391a89194c5ae08c80fe5a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xbac21cdee1c59ccbda4547fc531803bd0d038251` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xbc6fcc3a22d051121454a9fc51906b67e8c4fc68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xbd33fb50626899decac395cf15c29e19695f3030` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xc5290058841028f1614f3a6f0f5816cad0df5e27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xc60c42b04a01c3378f979dcf54efd1fd1bc917f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xc94a4c0a89937e278a0d427bb393134e68d5ec09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xcadd0cb767b3cfe3be8b6c66a13afde85052479f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xcbf8b7f80800bd4888fbc7bf1713b80fe4e23e10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xcfa0a7b03da220b5d68ffa048aacf48daee1915e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xd3581057fac21a734d86d3340854b201a89a6e09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xd7225bbb3e240196eefa8296028d47b0a2bf51f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xd7303474baca835743b54d73799688990f24a79d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xd7c6e867591608d32fe476d0dbdc95d0cf584c8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xd867e273eabd6c853fcd0ca0bfb6a3ae6491d2c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xd962b16f4ec712d705106674e944b04614f077be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xdc0e6b43312b508e431735bc4d97fbbbf3293148` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xe521e3c12d2faaa931ae79602278480c91c50f92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xe5df461803a59292c6c03978c17857479c40bc46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xe959c4a0cc31ba15656fb9e3b17fcb99c6f5db31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xeb1aadac0a10ac2edfcbe496c3bcbc1dea4f994b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xeb4708989b42f0cd327a6bd8f76a931429137fd7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xedf6066a2b290c185783862c7f4776a2c8077ad1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xefd1d4bd4cf1e86da286bb4cb1b8bced9c10ba47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xf3a39c86dbd13c45365e57fb90fe413371f65af8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xfb3e0c6f74eb1a21cc1da29aec80d2dfe6c9a317` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xfc885f37f5a9fa8159c8dbb907fc1b0c2fb31323` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xfdaba2b9c369c25f5834334612c0855497942788` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xff34e285f8ed393e366046153e3c16484a4dd674` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zora | unit-260667 | `0x000000000022d473030f116ddee9f6b43ac78ba3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zora | unit-260668 | `0x048352d8dcf13686982c799da63fa6426a9d0b60` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zora | unit-260669 | `0x0f797dc7efaea995bb916f268d919d0a1950ee3c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zora | unit-260670 | `0x11867e1b3348f3ce4fcc170bc5af3d23e07e64df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zora | unit-260671 | `0x209aada09d74ad3b8d0e92910eaf85d2357e3044` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zora | unit-260673 | `0x3315ef7ca28db74abadc6c44570efdf06b04b020` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zora | unit-260674 | `0x4200000000000000000000000000000000000006` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zora | unit-260679 | `0x5ef5a6923d2f566f65f363b78ef7a88ab1e4206f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zora | unit-260683 | `0x7145f8aeef1f6510e92164038e1b6f8cb2c42cbb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zora | unit-260684 | `0x7de04c96be5159c3b5ceffc82aa176dc81281557` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zora | unit-260685 | `0x843b0b03c3b3b0434b9cb00ad9cd1d9218e7741b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zora | unit-260687 | `0xa00f34a632630efd15223b1968358ba4845beec7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zora | unit-260690 | `0xa51c76bee6746cb487a7e9312e43e2b8f4a37c15` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zora | unit-260692 | `0xbc91e8dfa3ff18de43853372a3d7dfe585137d78` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zora | unit-260695 | `0xd4109824fc80dd41ca6ee8d304ec74b8beded03b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zora | unit-260696 | `0xf15d9e794d39a3b4ea9efc2376b2cd9562996422` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zora | unit-260698 | `0xfff2bffc03474f361b7f92ccff2fd01cfbbdcdd1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-260428 | `0x000000005c84f8fd50b21cac312528a64437030e` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 467
- Live contracts: 0
- Unknown liveness contracts: 467
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=467

Showing first 200 of 467 contracts. The complete deployer expansion list is in `brief.json`.

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1f98407aab862cddef78ed252d6f557aa5b0f00d` | non_address_book | unknown | unknown | unverified | n/a | `0x1b5caa1d3a1582a438e4cd93ee7a7e0e4d5624fb` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x182a927119d56008d921126764bf884221b10f59` | non_address_book | unknown | unknown | unverified | n/a | `0x2179a60856e37dfeaaca0ab043b931fe224b27b6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4b2ab38dbf28d31d467aa8993f6c2585981d6804` | non_address_book | unknown | unknown | unverified | n/a | `0x2179a60856e37dfeaaca0ab043b931fe224b27b6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8702463e73f74d0b6765abceb314ef07acb92650` | non_address_book | unknown | unknown | unverified | n/a | `0x2179a60856e37dfeaaca0ab043b931fe224b27b6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xbbbcc62853a5fa27b93d6bab3e6f7ce841e25df2` | non_address_book | unknown | unknown | unverified | n/a | `0x2179a60856e37dfeaaca0ab043b931fe224b27b6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xdf38f24fe153761634be942f9d859f3dba857e95` | non_address_book | unknown | unknown | unverified | n/a | `0x2179a60856e37dfeaaca0ab043b931fe224b27b6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe2023f3fa515cf070e07fd9d51c1d236e07843f4` | non_address_book | unknown | unknown | unverified | n/a | `0x2179a60856e37dfeaaca0ab043b931fe224b27b6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe783de89a7f0408687f051e3e6d0beb62719ebad` | non_address_book | unknown | unknown | unverified | n/a | `0x2179a60856e37dfeaaca0ab043b931fe224b27b6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x021ceac7e681dbce9b5039d2535ed97590eb395c` | non_address_book | unknown | unknown | unverified | n/a | `0x2ee4bd21803cdb62b1457949450d0753ca84fada` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2e5353426c89f4ecd52d1036da822d47e73376c4` | non_address_book | unknown | unknown | unverified | n/a | `0x2ee4bd21803cdb62b1457949450d0753ca84fada` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x838930cfe7502dd36b0b1ebbef8001fbf94f3bfb` | non_address_book | unknown | unknown | unverified | n/a | `0x2ee4bd21803cdb62b1457949450d0753ca84fada` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5c69bee701ef814a2b6a3edd4b1652cb9cc5aa6f` | non_address_book | unknown | unknown | unverified | n/a | `0x9c33eacc2f50e39940d3afaf2c7b8246b681a374` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7a250d5630b4cf539739df2c5dacb4c659f2488d` | non_address_book | unknown | unknown | unverified | n/a | `0x9c33eacc2f50e39940d3afaf2c7b8246b681a374` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8909dc15e40173ff4699343b6eb8132c65e18ec6` | non_address_book | unknown | unknown | unverified | n/a | `0x9c33eacc2f50e39940d3afaf2c7b8246b681a374` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x5c69bee701ef814a2b6a3edd4b1652cb9cc5aa6f` | non_address_book | unknown | unknown | unverified | n/a | `0x9c33eacc2f50e39940d3afaf2c7b8246b681a374` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x7a250d5630b4cf539739df2c5dacb4c659f2488d` | non_address_book | unknown | unknown | unverified | n/a | `0x9c33eacc2f50e39940d3afaf2c7b8246b681a374` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xf1d7cc64fb4452f05c498126312ebe29f30fbcf9` | non_address_book | unknown | unknown | unverified | n/a | `0x9c33eacc2f50e39940d3afaf2c7b8246b681a374` |
| base | unverified unclassified | UnnamedContract<br>`0x31fafd4889fa1269f7a13a66ee0fb458f27d72a9` | non_address_book | unknown | unknown | unverified | n/a | `0x7ac7499f3754b65cf9089db328ef51151a78ec00` |
| base | unverified unclassified | UnnamedContract<br>`0x0bc2e0cab4ad1dd1398d70bc268c0502e8a6df24` | non_address_book | unknown | unknown | unverified | n/a | `0x8ce84e9fa0101d317d8956d73610ad3e0e219d41` |
| base | unverified unclassified | UnnamedContract<br>`0x32c7d417a8b28a99b7993436eadc3de175a277e0` | non_address_book | unknown | unknown | unverified | n/a | `0x8ce84e9fa0101d317d8956d73610ad3e0e219d41` |
| base | unverified unclassified | UnnamedContract<br>`0x4ba65e367fa6066eb608f02a8c469f1f1c492eaf` | non_address_book | unknown | unknown | unverified | n/a | `0x8ce84e9fa0101d317d8956d73610ad3e0e219d41` |
| base | unverified unclassified | UnnamedContract<br>`0x51aed543997dc8211b513a0e765f3a5eb2fe412f` | non_address_book | unknown | unknown | unverified | n/a | `0x8ce84e9fa0101d317d8956d73610ad3e0e219d41` |
| base | unverified unclassified | UnnamedContract<br>`0x61c57c187557442393a96ba8e6fdfe27610832a5` | non_address_book | unknown | unknown | unverified | n/a | `0x8ce84e9fa0101d317d8956d73610ad3e0e219d41` |
| base | unverified unclassified | UnnamedContract<br>`0x62e7bbb31595424f43103064d0549e69dfbf2a7f` | non_address_book | unknown | unknown | unverified | n/a | `0x8ce84e9fa0101d317d8956d73610ad3e0e219d41` |
| base | unverified unclassified | UnnamedContract<br>`0x6f57fb8d6ea4087da574f9e5f1e272cb6fd44f6d` | non_address_book | unknown | unknown | unverified | n/a | `0x8ce84e9fa0101d317d8956d73610ad3e0e219d41` |
| base | unverified unclassified | UnnamedContract<br>`0x7ccda9d7d7cdf28e5d5e2ef143d950865c302d90` | non_address_book | unknown | unknown | unverified | n/a | `0x8ce84e9fa0101d317d8956d73610ad3e0e219d41` |
| base | unverified unclassified | UnnamedContract<br>`0x99e016d3b384e9b1d22ba560971e3172b40b5e90` | non_address_book | unknown | unknown | unverified | n/a | `0x8ce84e9fa0101d317d8956d73610ad3e0e219d41` |
| base | unverified unclassified | UnnamedContract<br>`0xa1ff2304b87cecf0f36794f2aa2468c5073e1eb2` | non_address_book | unknown | unknown | unverified | n/a | `0x8ce84e9fa0101d317d8956d73610ad3e0e219d41` |
| base | unverified unclassified | UnnamedContract<br>`0xade0c3805328d90085fa784d88ee37a418874bfa` | non_address_book | unknown | unknown | unverified | n/a | `0x8ce84e9fa0101d317d8956d73610ad3e0e219d41` |
| base | unverified unclassified | UnnamedContract<br>`0xb079fa0c53c2da05ea517ffc545cd7e3c180a136` | non_address_book | unknown | unknown | unverified | n/a | `0x8ce84e9fa0101d317d8956d73610ad3e0e219d41` |
| base | unverified unclassified | UnnamedContract<br>`0xbc33b4d48f76d17a1800afcb730e8a6aaada7fe5` | non_address_book | unknown | unknown | unverified | n/a | `0x8ce84e9fa0101d317d8956d73610ad3e0e219d41` |
| base | unverified unclassified | UnnamedContract<br>`0xc02003b4168fa33eae03b9867dd5756596c9f766` | non_address_book | unknown | unknown | unverified | n/a | `0x8ce84e9fa0101d317d8956d73610ad3e0e219d41` |
| base | unverified unclassified | UnnamedContract<br>`0xc3997ff81f2831929499c4ee4ee4e0f08f42d4d8` | non_address_book | unknown | unknown | unverified | n/a | `0x8ce84e9fa0101d317d8956d73610ad3e0e219d41` |
| base | unverified unclassified | UnnamedContract<br>`0xc3b7f39e53333c1a4d977e7b2de192c20321006e` | non_address_book | unknown | unknown | unverified | n/a | `0x8ce84e9fa0101d317d8956d73610ad3e0e219d41` |
| base | unverified unclassified | UnnamedContract<br>`0xc6ea65b6769309a0f01223fb75576c4c3cd1f5f7` | non_address_book | unknown | unknown | unverified | n/a | `0x8ce84e9fa0101d317d8956d73610ad3e0e219d41` |
| base | unverified unclassified | UnnamedContract<br>`0xdc74d75b48bad28866053d1f6479c5b689837a6e` | non_address_book | unknown | unknown | unverified | n/a | `0x8ce84e9fa0101d317d8956d73610ad3e0e219d41` |
| base | unverified unclassified | UnnamedContract<br>`0xe9389cc9253ec313ba56f8c823f92b9f7ce1d04b` | non_address_book | unknown | unknown | unverified | n/a | `0x8ce84e9fa0101d317d8956d73610ad3e0e219d41` |
| base | unverified unclassified | UnnamedContract<br>`0xec7a886ca35de12d7155d6ab5e160190bc6fc6eb` | non_address_book | unknown | unknown | unverified | n/a | `0x8ce84e9fa0101d317d8956d73610ad3e0e219d41` |
| base | unverified unclassified | UnnamedContract<br>`0xf659c15aeb6e41a9edacbbf3faef3902c7f3fe1b` | non_address_book | unknown | unknown | unverified | n/a | `0x8ce84e9fa0101d317d8956d73610ad3e0e219d41` |
| base | unverified unclassified | UnnamedContract<br>`0x5c69bee701ef814a2b6a3edd4b1652cb9cc5aa6f` | non_address_book | unknown | unknown | unverified | n/a | `0x9c33eacc2f50e39940d3afaf2c7b8246b681a374` |
| base | unverified unclassified | UnnamedContract<br>`0x9e5a52f57b3038f1b8eee45f28b3c1967e22799c` | non_address_book | unknown | unknown | unverified | n/a | `0x9c33eacc2f50e39940d3afaf2c7b8246b681a374` |
| base | unverified unclassified | UnnamedContract<br>`0xd6e0bc285be97c75861910f4d2cfd4ac61dd629d` | non_address_book | unknown | unknown | unverified | n/a | `0x9c33eacc2f50e39940d3afaf2c7b8246b681a374` |
| base | unverified unclassified | UnnamedContract<br>`0xf1d7cc64fb4452f05c498126312ebe29f30fbcf9` | non_address_book | unknown | unknown | unverified | n/a | `0x9c33eacc2f50e39940d3afaf2c7b8246b681a374` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0x05e73354cfdd6745c338b50bcfdfa3aa6fa03408` | non_address_book | unknown | unknown | unverified | n/a | `0x7024cc7e60d6560f0b5877da2bb921fcbf1f4375` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0x1411060f44da12017adbb34de5f9238912db2055` | non_address_book | unknown | unknown | unverified | n/a | `0x7024cc7e60d6560f0b5877da2bb921fcbf1f4375` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0x1689e7b1f10000ae47ebfe339a4f69decd19f602` | non_address_book | unknown | unknown | unverified | n/a | `0x7024cc7e60d6560f0b5877da2bb921fcbf1f4375` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0x1b4f103ff3fdae81e75ec278256e5b4f4728b2b2` | non_address_book | unknown | unknown | unverified | n/a | `0x7024cc7e60d6560f0b5877da2bb921fcbf1f4375` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0x1c1b6f91b6414d132add55fb22ef2db1259e192e` | non_address_book | unknown | unknown | unverified | n/a | `0x7024cc7e60d6560f0b5877da2bb921fcbf1f4375` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0x1c2b764b607934383de98e69bc3bf69c8e6d9a2f` | non_address_book | unknown | unknown | unverified | n/a | `0x7024cc7e60d6560f0b5877da2bb921fcbf1f4375` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0x2224f77c646fd4322df82c374e935921f6aae19e` | non_address_book | unknown | unknown | unverified | n/a | `0x7024cc7e60d6560f0b5877da2bb921fcbf1f4375` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0x24c731645ee1e35c3219153d370ebd79784d1e91` | non_address_book | unknown | unknown | unverified | n/a | `0x7024cc7e60d6560f0b5877da2bb921fcbf1f4375` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0x2d2d37284a9da0a78527f8f3bf30493c2ad518d1` | non_address_book | unknown | unknown | unverified | n/a | `0x7024cc7e60d6560f0b5877da2bb921fcbf1f4375` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0x30654c69b212ad057e817eca26da6c5eda32e2e7` | non_address_book | unknown | unknown | unverified | n/a | `0x7024cc7e60d6560f0b5877da2bb921fcbf1f4375` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0x37429cd17cb1454c34e7f50b09725202fd533039` | non_address_book | unknown | unknown | unverified | n/a | `0x7024cc7e60d6560f0b5877da2bb921fcbf1f4375` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0x39bf2eff94201cfaa471932655404f63315147a4` | non_address_book | unknown | unknown | unverified | n/a | `0x7024cc7e60d6560f0b5877da2bb921fcbf1f4375` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0x3a0c2cf7c40a7b417ae9ab6ccbf60e86d8437395` | non_address_book | unknown | unknown | unverified | n/a | `0x7024cc7e60d6560f0b5877da2bb921fcbf1f4375` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0x3d5e538d212b05bc4b3f70520189aa3dea588b1e` | non_address_book | unknown | unknown | unverified | n/a | `0x7024cc7e60d6560f0b5877da2bb921fcbf1f4375` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0x3e0267c1ea01a6e89b01c105a7d235b134fd1df4` | non_address_book | unknown | unknown | unverified | n/a | `0x7024cc7e60d6560f0b5877da2bb921fcbf1f4375` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0x496cd7097f0bdd32774da3d2f1ef0adf430b7e81` | non_address_book | unknown | unknown | unverified | n/a | `0x7024cc7e60d6560f0b5877da2bb921fcbf1f4375` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0x50ae8727379b459652d3123317a855faae73c2d5` | non_address_book | unknown | unknown | unverified | n/a | `0x7024cc7e60d6560f0b5877da2bb921fcbf1f4375` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0x51bcf71432e25292279b090bfc123e0db62486bf` | non_address_book | unknown | unknown | unverified | n/a | `0x7024cc7e60d6560f0b5877da2bb921fcbf1f4375` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0x54720d51c76e0398e99d0168e822c406825a5121` | non_address_book | unknown | unknown | unverified | n/a | `0x7024cc7e60d6560f0b5877da2bb921fcbf1f4375` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0x5ba874e13d2cf3161f89d1b1d1732d14226dbf16` | non_address_book | unknown | unknown | unverified | n/a | `0x7024cc7e60d6560f0b5877da2bb921fcbf1f4375` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0x5bf9fabb0d56515658b7d5cc4b1f5c4eaed09e49` | non_address_book | unknown | unknown | unverified | n/a | `0x7024cc7e60d6560f0b5877da2bb921fcbf1f4375` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0x5c038ee8ab7bd7699037e277874f1c611ad0c28f` | non_address_book | unknown | unknown | unverified | n/a | `0x7024cc7e60d6560f0b5877da2bb921fcbf1f4375` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0x5cba23e581a5cbee77be4e98df0bcea74c0b5c9a` | non_address_book | unknown | unknown | unverified | n/a | `0x7024cc7e60d6560f0b5877da2bb921fcbf1f4375` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0x60abeb98b3b95a0c5786261c1ab830e3d2383f9e` | non_address_book | unknown | unknown | unverified | n/a | `0x7024cc7e60d6560f0b5877da2bb921fcbf1f4375` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0x615bcf3371f7daf8e8f7d26db10e12f0f4830c94` | non_address_book | unknown | unknown | unverified | n/a | `0x7024cc7e60d6560f0b5877da2bb921fcbf1f4375` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0x6550fa0d92b38f52c37d32d71084a7b270226ba5` | non_address_book | unknown | unknown | unverified | n/a | `0x7024cc7e60d6560f0b5877da2bb921fcbf1f4375` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0x6e495fc2ab5c2391703ce58fc1d3d64e5c257544` | non_address_book | unknown | unknown | unverified | n/a | `0x7024cc7e60d6560f0b5877da2bb921fcbf1f4375` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0x76870debef0be25589a5cddce9b1d99276c73b4e` | non_address_book | unknown | unknown | unverified | n/a | `0x7024cc7e60d6560f0b5877da2bb921fcbf1f4375` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0x78e7f1502a9e4115debd6876e0ac4faebdb96880` | non_address_book | unknown | unknown | unverified | n/a | `0x7024cc7e60d6560f0b5877da2bb921fcbf1f4375` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0x7ae58f10f7849ca6f5fb71b7f45cb416c9204b1e` | non_address_book | unknown | unknown | unverified | n/a | `0x7024cc7e60d6560f0b5877da2bb921fcbf1f4375` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0x7b2b5a2c377b34079589ddbcea20427cdb7c8219` | non_address_book | unknown | unknown | unverified | n/a | `0x7024cc7e60d6560f0b5877da2bb921fcbf1f4375` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0x7da1d65f8b249183667cde74c5cbd46dd38aa829` | non_address_book | unknown | unknown | unverified | n/a | `0x7024cc7e60d6560f0b5877da2bb921fcbf1f4375` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0x841b5a0b3dbc473c8a057e2391014aa4c4751351` | non_address_book | unknown | unknown | unverified | n/a | `0x7024cc7e60d6560f0b5877da2bb921fcbf1f4375` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0x84642fef6ef575e3b2f4d7c72022f24ab9c9ffa6` | non_address_book | unknown | unknown | unverified | n/a | `0x7024cc7e60d6560f0b5877da2bb921fcbf1f4375` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0x862fa52d0c8bca8fbcb5213c9febc49c87a52912` | non_address_book | unknown | unknown | unverified | n/a | `0x7024cc7e60d6560f0b5877da2bb921fcbf1f4375` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0x86622f22e969ef236ecbb2a1cac80773f55a002f` | non_address_book | unknown | unknown | unverified | n/a | `0x7024cc7e60d6560f0b5877da2bb921fcbf1f4375` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0x8b5bcc363dde2614281ad875bad385e0a785d3b9` | non_address_book | unknown | unknown | unverified | n/a | `0x7024cc7e60d6560f0b5877da2bb921fcbf1f4375` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0x914cbf23622af2caed09c0f1a230f24e1aa3da19` | non_address_book | unknown | unknown | unverified | n/a | `0x7024cc7e60d6560f0b5877da2bb921fcbf1f4375` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0x927038542746c06f1b2f7f550a3c90aebdda4e85` | non_address_book | unknown | unknown | unverified | n/a | `0x7024cc7e60d6560f0b5877da2bb921fcbf1f4375` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0x94528fa42d6a61f46c961976a634334cf13d3f18` | non_address_book | unknown | unknown | unverified | n/a | `0x7024cc7e60d6560f0b5877da2bb921fcbf1f4375` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0x95273d871c8156636e114b63797d78d7e1720d81` | non_address_book | unknown | unknown | unverified | n/a | `0x7024cc7e60d6560f0b5877da2bb921fcbf1f4375` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0x96e3495b712c6589f1d2c50635fde68cf17ac83c` | non_address_book | unknown | unknown | unverified | n/a | `0x7024cc7e60d6560f0b5877da2bb921fcbf1f4375` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0xb602cc585b440e901c8a3a51cab4b4f2a6047681` | non_address_book | unknown | unknown | unverified | n/a | `0x7024cc7e60d6560f0b5877da2bb921fcbf1f4375` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0xb673ae03413860776497b8c9b3e3f8d4d8745cb3` | non_address_book | unknown | unknown | unverified | n/a | `0x7024cc7e60d6560f0b5877da2bb921fcbf1f4375` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0xb7b74b407e9ba6c070c5b5cc7e6b8e59e4642763` | non_address_book | unknown | unknown | unverified | n/a | `0x7024cc7e60d6560f0b5877da2bb921fcbf1f4375` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0xba95b1fa219e9c93c391a89194c5ae08c80fe5a7` | non_address_book | unknown | unknown | unverified | n/a | `0x7024cc7e60d6560f0b5877da2bb921fcbf1f4375` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0xbac21cdee1c59ccbda4547fc531803bd0d038251` | non_address_book | unknown | unknown | unverified | n/a | `0x7024cc7e60d6560f0b5877da2bb921fcbf1f4375` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0xbc6fcc3a22d051121454a9fc51906b67e8c4fc68` | non_address_book | unknown | unknown | unverified | n/a | `0x7024cc7e60d6560f0b5877da2bb921fcbf1f4375` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0xbd33fb50626899decac395cf15c29e19695f3030` | non_address_book | unknown | unknown | unverified | n/a | `0x7024cc7e60d6560f0b5877da2bb921fcbf1f4375` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0xc60c42b04a01c3378f979dcf54efd1fd1bc917f8` | non_address_book | unknown | unknown | unverified | n/a | `0x7024cc7e60d6560f0b5877da2bb921fcbf1f4375` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0xc94a4c0a89937e278a0d427bb393134e68d5ec09` | non_address_book | unknown | unknown | unverified | n/a | `0x7024cc7e60d6560f0b5877da2bb921fcbf1f4375` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0xcadd0cb767b3cfe3be8b6c66a13afde85052479f` | non_address_book | unknown | unknown | unverified | n/a | `0x7024cc7e60d6560f0b5877da2bb921fcbf1f4375` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0xcfa0a7b03da220b5d68ffa048aacf48daee1915e` | non_address_book | unknown | unknown | unverified | n/a | `0x7024cc7e60d6560f0b5877da2bb921fcbf1f4375` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0xd3581057fac21a734d86d3340854b201a89a6e09` | non_address_book | unknown | unknown | unverified | n/a | `0x7024cc7e60d6560f0b5877da2bb921fcbf1f4375` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0xd7225bbb3e240196eefa8296028d47b0a2bf51f7` | non_address_book | unknown | unknown | unverified | n/a | `0x7024cc7e60d6560f0b5877da2bb921fcbf1f4375` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0xd962b16f4ec712d705106674e944b04614f077be` | non_address_book | unknown | unknown | unverified | n/a | `0x7024cc7e60d6560f0b5877da2bb921fcbf1f4375` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0xdc0e6b43312b508e431735bc4d97fbbbf3293148` | non_address_book | unknown | unknown | unverified | n/a | `0x7024cc7e60d6560f0b5877da2bb921fcbf1f4375` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0xe521e3c12d2faaa931ae79602278480c91c50f92` | non_address_book | unknown | unknown | unverified | n/a | `0x7024cc7e60d6560f0b5877da2bb921fcbf1f4375` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0xe5df461803a59292c6c03978c17857479c40bc46` | non_address_book | unknown | unknown | unverified | n/a | `0x7024cc7e60d6560f0b5877da2bb921fcbf1f4375` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0xe959c4a0cc31ba15656fb9e3b17fcb99c6f5db31` | non_address_book | unknown | unknown | unverified | n/a | `0x7024cc7e60d6560f0b5877da2bb921fcbf1f4375` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0xeb1aadac0a10ac2edfcbe496c3bcbc1dea4f994b` | non_address_book | unknown | unknown | unverified | n/a | `0x7024cc7e60d6560f0b5877da2bb921fcbf1f4375` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0xeb4708989b42f0cd327a6bd8f76a931429137fd7` | non_address_book | unknown | unknown | unverified | n/a | `0x7024cc7e60d6560f0b5877da2bb921fcbf1f4375` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0xefd1d4bd4cf1e86da286bb4cb1b8bced9c10ba47` | non_address_book | unknown | unknown | unverified | n/a | `0x7024cc7e60d6560f0b5877da2bb921fcbf1f4375` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0xf3a39c86dbd13c45365e57fb90fe413371f65af8` | non_address_book | unknown | unknown | unverified | n/a | `0x7024cc7e60d6560f0b5877da2bb921fcbf1f4375` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0xfb3e0c6f74eb1a21cc1da29aec80d2dfe6c9a317` | non_address_book | unknown | unknown | unverified | n/a | `0x7024cc7e60d6560f0b5877da2bb921fcbf1f4375` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0xfc885f37f5a9fa8159c8dbb907fc1b0c2fb31323` | non_address_book | unknown | unknown | unverified | n/a | `0x7024cc7e60d6560f0b5877da2bb921fcbf1f4375` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0xfdaba2b9c369c25f5834334612c0855497942788` | non_address_book | unknown | unknown | unverified | n/a | `0x7024cc7e60d6560f0b5877da2bb921fcbf1f4375` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0xff34e285f8ed393e366046153e3c16484a4dd674` | non_address_book | unknown | unknown | unverified | n/a | `0x7024cc7e60d6560f0b5877da2bb921fcbf1f4375` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0x050e797f3625ec8785265e1d9bdd4799b97528a1` | non_address_book | unknown | unknown | unverified | n/a | `0x9fe9ef57c6f17e3c56bef2dfbfc43f07d4a0e064` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0x62725f55f50bde240aca3e740d47298cac8d57d5` | non_address_book | unknown | unknown | unverified | n/a | `0x9fe9ef57c6f17e3c56bef2dfbfc43f07d4a0e064` |
| blast | unverified unclassified | UnnamedContract<br>`0x15ca7043cd84c5d21ae76ba0a1a967d42c40ece0` | non_address_book | unknown | unknown | unverified | n/a | `0x0f9347b60003436fe54d77bc87419a88c9833bab` |
| blast | unverified unclassified | UnnamedContract<br>`0x2e95185bcdd928a3e984b7e2d6560ab1b17d7274` | non_address_book | unknown | unknown | unverified | n/a | `0x0f9347b60003436fe54d77bc87419a88c9833bab` |
| blast | unverified unclassified | UnnamedContract<br>`0x4966deec054245866f2cf452ec20f72da9afc7b5` | non_address_book | unknown | unknown | unverified | n/a | `0x0f9347b60003436fe54d77bc87419a88c9833bab` |
| blast | unverified unclassified | UnnamedContract<br>`0x497089d9450bb58f536c38c1c0d0a37472303508` | non_address_book | unknown | unknown | unverified | n/a | `0x0f9347b60003436fe54d77bc87419a88c9833bab` |
| blast | unverified unclassified | UnnamedContract<br>`0x549feb8c9bd4c12ad2ab27022da12492ac452b66` | non_address_book | unknown | unknown | unverified | n/a | `0x0f9347b60003436fe54d77bc87419a88c9833bab` |
| blast | unverified unclassified | UnnamedContract<br>`0x5ab1b56fb16238db874258fb7847efe248eb8496` | non_address_book | unknown | unknown | unverified | n/a | `0x0f9347b60003436fe54d77bc87419a88c9833bab` |
| blast | unverified unclassified | UnnamedContract<br>`0x5c346464d33f90babaf70db6388507cc889c1070` | non_address_book | unknown | unknown | unverified | n/a | `0x0f9347b60003436fe54d77bc87419a88c9833bab` |
| blast | unverified unclassified | UnnamedContract<br>`0x6cdcd65e03c1cec3730aeecd45bc140d57a25c77` | non_address_book | unknown | unknown | unverified | n/a | `0x0f9347b60003436fe54d77bc87419a88c9833bab` |
| blast | unverified unclassified | UnnamedContract<br>`0x792edade80af5fc680d96a2ed80a44247d2cf6fd` | non_address_book | unknown | unknown | unverified | n/a | `0x0f9347b60003436fe54d77bc87419a88c9833bab` |
| blast | unverified unclassified | UnnamedContract<br>`0x7c9caa4ac84c8fad8bd504dbf90e791f91f41705` | non_address_book | unknown | unknown | unverified | n/a | `0x0f9347b60003436fe54d77bc87419a88c9833bab` |
| blast | unverified unclassified | UnnamedContract<br>`0xaa32bd3926097fd04d22b4433e9867417ee79333` | non_address_book | unknown | unknown | unverified | n/a | `0x0f9347b60003436fe54d77bc87419a88c9833bab` |
| blast | unverified unclassified | UnnamedContract<br>`0xb218e4f7cf0533d4696fdfc419a0023d33345f28` | non_address_book | unknown | unknown | unverified | n/a | `0x0f9347b60003436fe54d77bc87419a88c9833bab` |
| blast | unverified unclassified | UnnamedContract<br>`0xb22ef02e13b1900ebf10391e57162402c11bff05` | non_address_book | unknown | unknown | unverified | n/a | `0x0f9347b60003436fe54d77bc87419a88c9833bab` |
| blast | unverified unclassified | UnnamedContract<br>`0xc228c0343ee4d4b3eadf701154f1f1bd9e29d833` | non_address_book | unknown | unknown | unverified | n/a | `0x0f9347b60003436fe54d77bc87419a88c9833bab` |
| blast | unverified unclassified | UnnamedContract<br>`0xe463635f6e73c1e595554c3ae216472d0fb929a9` | non_address_book | unknown | unknown | unverified | n/a | `0x0f9347b60003436fe54d77bc87419a88c9833bab` |
| blast | unverified unclassified | UnnamedContract<br>`0xecaf7c276f746170642e97de961f2f0361e1acc8` | non_address_book | unknown | unknown | unverified | n/a | `0x0f9347b60003436fe54d77bc87419a88c9833bab` |
| bsc | unverified unclassified | UnnamedContract<br>`0x128ce3a3d48f27ce35a3f810cf2cddd2f6879b13` | non_address_book | unknown | unknown | unverified | n/a | `0x88bcb4e367efc539f36514913588f3bdda6d6d95` |
| bsc | unverified unclassified | UnnamedContract<br>`0x170265370499b8f388883004fbad9ebde34f3781` | non_address_book | unknown | unknown | unverified | n/a | `0x88bcb4e367efc539f36514913588f3bdda6d6d95` |
| bsc | unverified unclassified | UnnamedContract<br>`0x581e2a6ef5e2032acd1eb0263ac8087fa2aef41f` | non_address_book | unknown | unknown | unverified | n/a | `0x88bcb4e367efc539f36514913588f3bdda6d6d95` |
| bsc | unverified unclassified | UnnamedContract<br>`0x589b4931d426146864f6e3df652316a6d643ed8f` | non_address_book | unknown | unknown | unverified | n/a | `0x88bcb4e367efc539f36514913588f3bdda6d6d95` |
| bsc | unverified unclassified | UnnamedContract<br>`0x70421847195a77586ca46192e6e0337d610b0d7c` | non_address_book | unknown | unknown | unverified | n/a | `0x88bcb4e367efc539f36514913588f3bdda6d6d95` |
| bsc | unverified unclassified | UnnamedContract<br>`0x71479cf279bc2fcf5b8faa8c9eed2ab59127ab95` | non_address_book | unknown | unknown | unverified | n/a | `0x88bcb4e367efc539f36514913588f3bdda6d6d95` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa64dd3a63feed608660226112e748f93b87e650f` | non_address_book | unknown | unknown | unverified | n/a | `0x88bcb4e367efc539f36514913588f3bdda6d6d95` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb3abf5790a6f6706f16cbde1e7de893f3c5746fc` | non_address_book | unknown | unknown | unverified | n/a | `0x88bcb4e367efc539f36514913588f3bdda6d6d95` |
| bsc | unverified unclassified | UnnamedContract<br>`0xcd4855cea813a843002d750da09c2e8d966c945c` | non_address_book | unknown | unknown | unverified | n/a | `0x88bcb4e367efc539f36514913588f3bdda6d6d95` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd00bd441cef3623dc59b5d9b5ef96ee87b42db42` | non_address_book | unknown | unknown | unverified | n/a | `0x88bcb4e367efc539f36514913588f3bdda6d6d95` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd60537988f1fa1f471f94d669c4a3e936c977537` | non_address_book | unknown | unknown | unverified | n/a | `0x88bcb4e367efc539f36514913588f3bdda6d6d95` |
| bsc | unverified unclassified | UnnamedContract<br>`0xf5f4496219f31cdcba6130b5402873624585615a` | non_address_book | unknown | unknown | unverified | n/a | `0x88bcb4e367efc539f36514913588f3bdda6d6d95` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5c69bee701ef814a2b6a3edd4b1652cb9cc5aa6f` | non_address_book | unknown | unknown | unverified | n/a | `0x9c33eacc2f50e39940d3afaf2c7b8246b681a374` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7a250d5630b4cf539739df2c5dacb4c659f2488d` | non_address_book | unknown | unknown | unverified | n/a | `0x9c33eacc2f50e39940d3afaf2c7b8246b681a374` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9e5a52f57b3038f1b8eee45f28b3c1967e22799c` | non_address_book | unknown | unknown | unverified | n/a | `0x9c33eacc2f50e39940d3afaf2c7b8246b681a374` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd6e0bc285be97c75861910f4d2cfd4ac61dd629d` | non_address_book | unknown | unknown | unverified | n/a | `0x9c33eacc2f50e39940d3afaf2c7b8246b681a374` |
| bsc | unverified unclassified | UnnamedContract<br>`0x44f161ae29361e332dea039dfa2f404e0bc5b5cc` | non_address_book | unknown | unknown | unverified | n/a | `0xbb0034e7d417479813026fb6a73890214a31b0da` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6f0037c79d144d5b8e3e6f04e49fbb5f25fd508f` | non_address_book | unknown | unknown | unverified | n/a | `0xbb0034e7d417479813026fb6a73890214a31b0da` |
| bsc | unverified unclassified | UnnamedContract<br>`0x71ed829d15ecb2689af003da49e245b7b333836c` | non_address_book | unknown | unknown | unverified | n/a | `0xbb0034e7d417479813026fb6a73890214a31b0da` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa28b3546ea3407ddd156bf45cfe679cb604aede6` | non_address_book | unknown | unknown | unverified | n/a | `0xbb0034e7d417479813026fb6a73890214a31b0da` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd73cd1117646625ffe23a55860035ac62fa8720d` | non_address_book | unknown | unknown | unverified | n/a | `0xbb0034e7d417479813026fb6a73890214a31b0da` |
| bsc | unverified unclassified | UnnamedContract<br>`0xdb20b456fab061174df34ab80f4d5504ed1d6672` | non_address_book | unknown | unknown | unverified | n/a | `0xbb0034e7d417479813026fb6a73890214a31b0da` |
| bsc | unverified unclassified | UnnamedContract<br>`0xfd31cecdedd7aef6528deab849a39629e7b237b8` | non_address_book | unknown | unknown | unverified | n/a | `0xbb0034e7d417479813026fb6a73890214a31b0da` |
| bsc | unverified unclassified | UnnamedContract<br>`0xfe1a06260b3b68f49862ae5d617686d78f454dea` | non_address_book | unknown | unknown | unverified | n/a | `0xbb0034e7d417479813026fb6a73890214a31b0da` |
| celo | unverified unclassified | UnnamedContract<br>`0x0622fed647b195219f24cbdcb706c6b031dfdfb7` | non_address_book | unknown | unknown | unverified | n/a | `0x13f6b54c5491cd4745ff4cffaa9efee59e628657` |
| celo | unverified unclassified | UnnamedContract<br>`0x090a1f49522ae52f79d54a3848c48857f44f2663` | non_address_book | unknown | unknown | unverified | n/a | `0x13f6b54c5491cd4745ff4cffaa9efee59e628657` |
| celo | unverified unclassified | UnnamedContract<br>`0x0d988a7f3a7ee80602d8e24295a4dcdbc2f451d2` | non_address_book | unknown | unknown | unverified | n/a | `0x13f6b54c5491cd4745ff4cffaa9efee59e628657` |
| celo | unverified unclassified | UnnamedContract<br>`0x10c24bfe268b66bdf6df30b8df30fc6229af3b7f` | non_address_book | unknown | unknown | unverified | n/a | `0x13f6b54c5491cd4745ff4cffaa9efee59e628657` |
| celo | unverified unclassified | UnnamedContract<br>`0x158ed34a68bd7eb5477cf1bc0b347262093fec4a` | non_address_book | unknown | unknown | unverified | n/a | `0x13f6b54c5491cd4745ff4cffaa9efee59e628657` |
| celo | unverified unclassified | UnnamedContract<br>`0x2063b12452c1f3b2ac1137ab9d87f98bca9073d2` | non_address_book | unknown | unknown | unverified | n/a | `0x13f6b54c5491cd4745ff4cffaa9efee59e628657` |
| celo | unverified unclassified | UnnamedContract<br>`0x280af775337a7203e90d35b5e449ec3a717185aa` | non_address_book | unknown | unknown | unverified | n/a | `0x13f6b54c5491cd4745ff4cffaa9efee59e628657` |
| celo | unverified unclassified | UnnamedContract<br>`0x43f7a0fa30a6bc447c94deaeddd4bbb7def99228` | non_address_book | unknown | unknown | unverified | n/a | `0x13f6b54c5491cd4745ff4cffaa9efee59e628657` |
| celo | unverified unclassified | UnnamedContract<br>`0x444c31990032a34b2141c45cd93b5c6cbd424cae` | non_address_book | unknown | unknown | unverified | n/a | `0x13f6b54c5491cd4745ff4cffaa9efee59e628657` |
| celo | unverified unclassified | UnnamedContract<br>`0x4f1b7221702d22b1935e902f0030927b3d8d5454` | non_address_book | unknown | unknown | unverified | n/a | `0x13f6b54c5491cd4745ff4cffaa9efee59e628657` |
| celo | unverified unclassified | UnnamedContract<br>`0x61b7d4c2a630a8690d23ba943d59e08297b7a77f` | non_address_book | unknown | unknown | unverified | n/a | `0x13f6b54c5491cd4745ff4cffaa9efee59e628657` |
| celo | unverified unclassified | UnnamedContract<br>`0x7488ebda20fc3277f0cc6a1303fc74a35b4d108f` | non_address_book | unknown | unknown | unverified | n/a | `0x13f6b54c5491cd4745ff4cffaa9efee59e628657` |
| celo | unverified unclassified | UnnamedContract<br>`0x7d89e072046e584c0ba2a6589f76bb308c3f166f` | non_address_book | unknown | unknown | unverified | n/a | `0x13f6b54c5491cd4745ff4cffaa9efee59e628657` |
| celo | unverified unclassified | UnnamedContract<br>`0x800b817fd3ee6d90263dd363fc4fd29b8bdb54a2` | non_address_book | unknown | unknown | unverified | n/a | `0x13f6b54c5491cd4745ff4cffaa9efee59e628657` |
| celo | unverified unclassified | UnnamedContract<br>`0x8205710e2465d17d7cb249bda816704ffa77f4a0` | non_address_book | unknown | unknown | unverified | n/a | `0x13f6b54c5491cd4745ff4cffaa9efee59e628657` |
| celo | unverified unclassified | UnnamedContract<br>`0x996a8d4af28ec1a13b95b9b4d29829e844b80af2` | non_address_book | unknown | unknown | unverified | n/a | `0x13f6b54c5491cd4745ff4cffaa9efee59e628657` |
| celo | unverified unclassified | UnnamedContract<br>`0xb4a94f20937350c38efadc8ea6c361d6bfea82b4` | non_address_book | unknown | unknown | unverified | n/a | `0x13f6b54c5491cd4745ff4cffaa9efee59e628657` |
| celo | unverified unclassified | UnnamedContract<br>`0xba792b43c27299eedd882f2d84b93b6f70067398` | non_address_book | unknown | unknown | unverified | n/a | `0x13f6b54c5491cd4745ff4cffaa9efee59e628657` |
| celo | unverified unclassified | UnnamedContract<br>`0xc7da0b1d7cbceed0921afaa321ce5c913299427d` | non_address_book | unknown | unknown | unverified | n/a | `0x13f6b54c5491cd4745ff4cffaa9efee59e628657` |
| celo | unverified unclassified | UnnamedContract<br>`0xd5ea4626b64e7758411bae2a52de210e35ced069` | non_address_book | unknown | unknown | unverified | n/a | `0x13f6b54c5491cd4745ff4cffaa9efee59e628657` |
| celo | unverified unclassified | UnnamedContract<br>`0xd9fc0479bf9300cde2d3ecfa276ec389f4fe95fa` | non_address_book | unknown | unknown | unverified | n/a | `0x13f6b54c5491cd4745ff4cffaa9efee59e628657` |
| celo | unverified unclassified | UnnamedContract<br>`0xe4c3e3acf4d8ae9a08d52a73086e85b493cbe378` | non_address_book | unknown | unknown | unverified | n/a | `0x13f6b54c5491cd4745ff4cffaa9efee59e628657` |
| celo | unverified unclassified | UnnamedContract<br>`0x88a3ed7f21a3fcf6adb86b6f878c5b7a02d20e9b` | non_address_book | unknown | unknown | unverified | n/a | `0x18dc1fccea2f4f6dd22ddbf0bed638bc358db625` |
| celo | unverified unclassified | UnnamedContract<br>`0xec8b0f7ffe3ae75d7ffab09429e3675bb63503e4` | non_address_book | unknown | unknown | unverified | n/a | `0x18dc1fccea2f4f6dd22ddbf0bed638bc358db625` |
| celo | unverified unclassified | UnnamedContract<br>`0x0198db9696aac48c5edaa7b8a0b0d5d20eb2632c` | non_address_book | unknown | unknown | unverified | n/a | `0xe23a4c6615669526ab58e9c37088bee4ed2b2dee` |
| celo | unverified unclassified | UnnamedContract<br>`0x03f69652876d45acf168acd7cbece9aaf52887b8` | non_address_book | unknown | unknown | unverified | n/a | `0xe23a4c6615669526ab58e9c37088bee4ed2b2dee` |
| celo | unverified unclassified | UnnamedContract<br>`0x09b17f887721035c2d73b0628c4bdb5666a31cce` | non_address_book | unknown | unknown | unverified | n/a | `0xe23a4c6615669526ab58e9c37088bee4ed2b2dee` |
| celo | unverified unclassified | UnnamedContract<br>`0x0cc6e134abd23d826d72c1cb9331d1af66ac6a77` | non_address_book | unknown | unknown | unverified | n/a | `0xe23a4c6615669526ab58e9c37088bee4ed2b2dee` |
| celo | unverified unclassified | UnnamedContract<br>`0x12364a15f52b822f12dd858faeedc49f472fba57` | non_address_book | unknown | unknown | unverified | n/a | `0xe23a4c6615669526ab58e9c37088bee4ed2b2dee` |
| celo | unverified unclassified | UnnamedContract<br>`0x1690e229c37219f0a10e102232de5e2591de7df5` | non_address_book | unknown | unknown | unverified | n/a | `0xe23a4c6615669526ab58e9c37088bee4ed2b2dee` |
| celo | unverified unclassified | UnnamedContract<br>`0x204ba494de6a50a116ecd340556be8a15734c9d4` | non_address_book | unknown | unknown | unverified | n/a | `0xe23a4c6615669526ab58e9c37088bee4ed2b2dee` |
| celo | unverified unclassified | UnnamedContract<br>`0x4cf604c6251c87d0c83e17f88397dec67ead825f` | non_address_book | unknown | unknown | unverified | n/a | `0xe23a4c6615669526ab58e9c37088bee4ed2b2dee` |
| celo | unverified unclassified | UnnamedContract<br>`0x4e843ad7e0dcd656bdfe4d3649285e01724678b0` | non_address_book | unknown | unknown | unverified | n/a | `0xe23a4c6615669526ab58e9c37088bee4ed2b2dee` |
| celo | unverified unclassified | UnnamedContract<br>`0x585e1e617dbebdc7b13cf2ec8d11ea85fa3a26c6` | non_address_book | unknown | unknown | unverified | n/a | `0xe23a4c6615669526ab58e9c37088bee4ed2b2dee` |
| celo | unverified unclassified | UnnamedContract<br>`0x59f4ece373e26b39f389887c26b399497d7a4b68` | non_address_book | unknown | unknown | unverified | n/a | `0xe23a4c6615669526ab58e9c37088bee4ed2b2dee` |
| celo | unverified unclassified | UnnamedContract<br>`0x61257eaf53497829636383f6c4ac467d575c3fd5` | non_address_book | unknown | unknown | unverified | n/a | `0xe23a4c6615669526ab58e9c37088bee4ed2b2dee` |
| celo | unverified unclassified | UnnamedContract<br>`0x672b7ddaf201e5c1a71e5843848035dbccdaf224` | non_address_book | unknown | unknown | unverified | n/a | `0xe23a4c6615669526ab58e9c37088bee4ed2b2dee` |
| celo | unverified unclassified | UnnamedContract<br>`0x6c5d141990146bd3d11c877b0dd608167fc5a11d` | non_address_book | unknown | unknown | unverified | n/a | `0xe23a4c6615669526ab58e9c37088bee4ed2b2dee` |
| celo | unverified unclassified | UnnamedContract<br>`0x6c611aa922e9cfc40500e849d780f0e5708b1287` | non_address_book | unknown | unknown | unverified | n/a | `0xe23a4c6615669526ab58e9c37088bee4ed2b2dee` |
| celo | unverified unclassified | UnnamedContract<br>`0x7158689eb1a161f38f5227f5e2a8eef65a3333cc` | non_address_book | unknown | unknown | unverified | n/a | `0xe23a4c6615669526ab58e9c37088bee4ed2b2dee` |
| celo | unverified unclassified | UnnamedContract<br>`0x799c0cefd290bbb7f1bdc1a1dbfdc2f875db47b3` | non_address_book | unknown | unknown | unverified | n/a | `0xe23a4c6615669526ab58e9c37088bee4ed2b2dee` |
| celo | unverified unclassified | UnnamedContract<br>`0x7c68b5647fb5624cb1f83209a5d828111f264969` | non_address_book | unknown | unknown | unverified | n/a | `0xe23a4c6615669526ab58e9c37088bee4ed2b2dee` |
| celo | unverified unclassified | UnnamedContract<br>`0x8b3842da1304eae0894286021e26cb8283ed37e1` | non_address_book | unknown | unknown | unverified | n/a | `0xe23a4c6615669526ab58e9c37088bee4ed2b2dee` |
| celo | unverified unclassified | UnnamedContract<br>`0x8dd4f800851db9dc219fdfaeb82f8d69e2b13582` | non_address_book | unknown | unknown | unverified | n/a | `0xe23a4c6615669526ab58e9c37088bee4ed2b2dee` |
| celo | unverified unclassified | UnnamedContract<br>`0x969d7b57c869fec5163318753aa27cc896ead654` | non_address_book | unknown | unknown | unverified | n/a | `0xe23a4c6615669526ab58e9c37088bee4ed2b2dee` |
| celo | unverified unclassified | UnnamedContract<br>`0x9a642a8a77635b5df73eacf8ba389dcbb87bee9b` | non_address_book | unknown | unknown | unverified | n/a | `0xe23a4c6615669526ab58e9c37088bee4ed2b2dee` |
| celo | unverified unclassified | UnnamedContract<br>`0xa6dacd16c9a7d823b7e2701ea0226e20c7debbfc` | non_address_book | unknown | unknown | unverified | n/a | `0xe23a4c6615669526ab58e9c37088bee4ed2b2dee` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [audit.pdf](https://github.com/Uniswap/uniswap-v3-core/blob/main/audits/abdk/audit.pdf) | ABDK | Audit | 2021-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 34 | high |
| [audit.pdf](https://github.com/Uniswap/uniswap-v3-core/blob/main/audits/tob/audit.pdf) | Trail of Bits | Audit | 2021-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 19 | high |
| [audit.pdf](https://github.com/Uniswap/uniswap-v3-periphery/blob/main/audits/abdk/audit.pdf) | ABDK | Audit | 2021-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Uniswap-final.md](https://github.com/ConsenSys/Uniswap-audit-report-2018-12/blob/master/Uniswap-final.md) | ConsenSys | Audit | 2019-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Uniswap-standalone-working.md](https://github.com/ConsenSys/Uniswap-audit-report-2018-12/blob/master/Uniswap-standalone-working.md) | ConsenSys | Audit | 2018-12 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Uniswap-working.md](https://github.com/ConsenSys/Uniswap-audit-report-2018-12/blob/master/Uniswap-working.md) | ConsenSys | Audit | 2019-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [coverage_output.md](https://github.com/ConsenSys/Uniswap-audit-report-2018-12/blob/master/coverage-reports/coverage_output.md) | ConsenSys | Audit | 2018-12 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [mythril_output_exchange.md](https://github.com/ConsenSys/Uniswap-audit-report-2018-12/blob/master/tool-output/mythril/mythril_output_exchange.md) | Mythril | Audit | 2018-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |
| [mythril_output_factory.md](https://github.com/ConsenSys/Uniswap-audit-report-2018-12/blob/master/tool-output/mythril/mythril_output_factory.md) | Mythril | Audit | 2018-12 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [DRAFT_ABDK_audit_core.pdf](https://github.com/Uniswap/v4-core/blob/main/docs/security/audits/DRAFT_ABDK_audit_core.pdf) | ABDK | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 46 | high |
| [DRAFT_Certora_audit_core.pdf](https://github.com/Uniswap/v4-core/blob/main/docs/security/audits/DRAFT_Certora_audit_core.pdf) | Certora | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [DRAFT_Spearbit_audit_core.pdf](https://github.com/Uniswap/v4-core/blob/main/docs/security/audits/DRAFT_Spearbit_audit_core.pdf) | Spearbit | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 23 | high |
| [OpenZeppelin_audit_core.pdf](https://github.com/Uniswap/v4-core/blob/main/docs/security/audits/OpenZeppelin_audit_core.pdf) | OpenZeppelin | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 46 | high |
| [TrailOfBits_audit_core.pdf](https://github.com/Uniswap/v4-core/blob/main/docs/security/audits/TrailOfBits_audit_core.pdf) | Trail of Bits | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |
| [DRAFT_ABDK_audit_periphery_universal_router.pdf](https://github.com/Uniswap/v4-periphery/blob/main/audits/DRAFT_ABDK_audit_periphery_universal_router.pdf) | ABDK | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 41 | high |
| [DRAFT_Spearbit_audit_periphery.pdf](https://github.com/Uniswap/v4-periphery/blob/main/audits/DRAFT_Spearbit_audit_periphery.pdf) | Spearbit | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 30 | high |
| [OpenZeppelin_audit_periphery_universal_router.pdf](https://github.com/Uniswap/v4-periphery/blob/main/audits/OpenZeppelin_audit_periphery_universal_router.pdf) | OpenZeppelin | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 44 | high |
| [- [Audits](): Learn about the audits for Uniswap v2](https://developers.uniswap.org/docs/protocols/v2/audits) | unknown | Audit | 2020-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [- [Resources](): Explore audits, core contracts, and infrastructur…](https://developers.uniswap.org/docs/protocols/the-compact/resources) | unknown | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 3 | low |
| [- [Audits](): Learn about the audits for Uniswap v3](https://developers.uniswap.org/docs/protocols/v3/audits) | unknown | Audit | 2021-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [18444] audit.pdf — no match: All contracts and libraries explicitly listed in the scope section of the audit report.
- [18445] audit.pdf — no match: Extracted 19 contracts from the Coverage section (pages 8-11) and the report date from the cover page.
- [18446] audit.pdf — no match: The report explicitly lists two files audited: NonfungiblePositionManager.sol and SwapRouter.sol. The audit date is given as 26th April 2021.
- [18448] Uniswap-final.md — no match: Scope table explicitly lists two Vyper contracts: uniswap_exchange.vy and uniswap_factory.vy. Audit date is January 11th 2019 from the dashboard.
- [18449] Uniswap-standalone-working.md — no match: The provided text is a template with placeholders and does not contain any actual contract names or audit details.
- [18450] Uniswap-working.md — no match: Scope table explicitly lists two Vyper contracts: uniswap_exchange.vy and uniswap_factory.vy. Audit date is January 11th 2019.
- [18451] coverage_output.md — no match: The provided text is a pytest test output, not an audit report. No contracts or audit date found.
- [18452] mythril_output_exchange.md — no match: Only contract name found is 'MAIN' from Mythril output; no explicit scope section or file paths provided.
- [18453] mythril_output_factory.md — no match: The provided text is a Docker command output for Mythril analysis, not an audit report. No contracts or scope information found.
- [18454] DRAFT_ABDK_audit_core.pdf — no match: Extracted contract names from the 'Project scope' section which lists all files in scope. The audit date is from the changelog: 0.1 05.09.24, interpreted as 2024-09-05.
- [18455] DRAFT_Certora_audit_core.pdf — no match: Scope explicitly lists 'src/*' and formal verification sections name specific contracts: PoolManager, LPFeeLibrary, ProtocolFeeLibrary, SqrtPriceMath, TickBitmap. Audit date inferred from work period May 28 to July 2, 2024.
- [18456] DRAFT_Spearbit_audit_core.pdf — no match: Extracted contract names from findings context and file paths mentioned throughout the report. Audit date from report cover page: September 5, 2024.
- [18457] OpenZeppelin_audit_core.pdf — no match: All contracts listed in the Scope section of the audit report, including both fully audited files and diff-checked files.
- [18458] TrailOfBits_audit_core.pdf — no match: Extracted contract names from scope section, project targets, and detailed findings. Audit date from cover page and project timeline.
- [18459] DRAFT_ABDK_audit_periphery_universal_router.pdf — no match: Extracted contract names from the 'Project scope' section which lists files under 'unirouter/' and 'v4peri/' directories. The audit date is from the changelog and title page: 5th September 2024.
- [18460] DRAFT_Spearbit_audit_periphery.pdf — no match: Extracted from the audit report of Uniswap v4-periphery by Spearbit. The report lists contracts in scope via findings and context references. The audit date is September 5, 2024 from the cover page.
- [18461] OpenZeppelin_audit_periphery_universal_router.pdf — no match: Extracted all contracts and libraries listed in the Scope section of the audit report. The audit date is from the report header: 'September 5, 2024'.
- [18462] - [Audits](): Learn about the audits for Uniswap v2 — no match: The report mentions Uniswap v2 core and periphery smart contracts but does not list specific contract names or file paths. The audit date is inferred from the range 'January to April 2020' as the end date.
- [18463] - [Resources](): Explore audits, core contracts, and infrastructur… — no match: The document is a resource index page, not an audit report. It lists core contracts and peripheral contracts but does not specify which are in scope for an audit. No audit date found.
- [18464] - [Audits](): Learn about the audits for Uniswap v3 — no match: The text mentions audits for Uniswap v3 core and periphery contracts, but does not list specific contract names or file paths. The audit date is inferred from the latest mentioned audit (April 2021).

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| audit.pdf | IUniswapV3FlashCallback | unmatched — not counted | — | listed in scope | no |
| audit.pdf | IUniswapV3MintCallback | unmatched — not counted | — | listed in scope | no |
| audit.pdf | IUniswapV3SwapCallback | unmatched — not counted | — | listed in scope | no |
| audit.pdf | IUniswapV3PoolActions | unmatched — not counted | — | listed in scope | no |
| audit.pdf | IUniswapV3PoolDerivedState | unmatched — not counted | — | listed in scope | no |
| audit.pdf | IUniswapV3PoolEvents | unmatched — not counted | — | listed in scope | no |
| audit.pdf | IUniswapV3PoolImmutables | unmatched — not counted | — | listed in scope | no |
| audit.pdf | IUniswapV3PoolOwnerActions | unmatched — not counted | — | listed in scope | no |
| audit.pdf | IUniswapV3PoolState | unmatched — not counted | — | listed in scope | no |
| audit.pdf | IERC20Minimal | unmatched — not counted | — | listed in scope | no |
| audit.pdf | IUniswapV3Factory | unmatched — not counted | — | listed in scope | no |
| audit.pdf | IUniswapV3Pool | unmatched — not counted | — | listed in scope | no |
| audit.pdf | IUniswapV3PoolDeployer | unmatched — not counted | — | listed in scope | no |
| audit.pdf | BitMath | unmatched — not counted | — | listed in scope | no |
| audit.pdf | FixedPoint128 | unmatched — not counted | — | listed in scope | no |
| audit.pdf | FixedPoint96 | unmatched — not counted | — | listed in scope | no |
| audit.pdf | FullMath | unmatched — not counted | — | listed in scope | no |
| audit.pdf | LiquidityMath | unmatched — not counted | — | listed in scope | no |
| audit.pdf | LowGasSafeMath | unmatched — not counted | — | listed in scope | no |
| audit.pdf | Oracle | unmatched — not counted | — | listed in scope | no |
| audit.pdf | Position | unmatched — not counted | — | listed in scope | no |
| audit.pdf | SafeCast | unmatched — not counted | — | listed in scope | no |
| audit.pdf | SecondsOutside | unmatched — not counted | — | listed in scope | no |
| audit.pdf | SqrtPriceMath | unmatched — not counted | — | listed in scope | no |
| audit.pdf | SwapMath | unmatched — not counted | — | listed in scope | no |
| audit.pdf | Tick | unmatched — not counted | — | listed in scope | no |
| audit.pdf | TickBitmap | unmatched — not counted | — | listed in scope | no |
| audit.pdf | TickMath | unmatched — not counted | — | listed in scope | no |
| audit.pdf | TransferHelper | unmatched — not counted | — | listed in scope | no |
| audit.pdf | UnsafeMath | unmatched — not counted | — | listed in scope | no |
| audit.pdf | NoDelegateCall | unmatched — not counted | — | listed in scope | no |
| audit.pdf | UniswapV3Factory | ambiguous — not counted | 0x1f9843… (alternative) `0x1f98431c8ad98523631ae4a59f267346ea31f984` — deployed 2021-05-04 22:27:00+03 — liveness: live (current_address_book_code)<br>0x7145f8… (alternative) `0x7145f8aeef1f6510e92164038e1b6f8cb2c42cbb` — liveness: live (current_address_book_code)<br>0xdb1d10… (alternative) `0xdb1d10011ad0ff90774d0c6bb92e5c5c8b4461f7` — deployed 2023-03-09 22:53:14+03 — liveness: live (current_address_book_code)<br>0x1f9843… (alternative) `0x1f98431c8ad98523631ae4a59f267346ea31f984` — liveness: live (current_address_book_code)<br>0x1f9843… (alternative) `0x1f98431c8ad98523631ae4a59f267346ea31f984` — deployed 2021-12-20 20:39:48+03 — liveness: live (current_address_book_code)<br>0x33128a… (alternative) `0x33128a8fc17869897dce68ed026d694621f6fdfd` — deployed 2023-07-16 21:38:27+03 — liveness: live (current_address_book_code)<br>0x740b1c… (alternative) `0x740b1c1de25031c31ff4fc9a62f554a55cdc1bad` — deployed 2023-03-24 07:40:28+03 — liveness: live (current_address_book_code)<br>0x8fda5a… (alternative) `0x8fda5a7a8dca67bbcdd10f02fa0649a937215422` — deployed 2023-08-31 12:13:02+03 — liveness: live (current_address_book_code)<br>0x4b2ab3… (alternative) `0x4b2ab38dbf28d31d467aa8993f6c2585981d6804` — liveness: live (current_address_book_code)<br>0x1f9843… (alternative) `0x1f98431c8ad98523631ae4a59f267346ea31f984` — deployed 2021-06-01 17:20:17+03 — liveness: live (current_address_book_code)<br>0xafe208… (alternative) `0xafe208a311b21f13ef87e33a90049fc17a7acdec` — deployed 2022-07-07 05:31:36+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| audit.pdf | UniswapV3Pool | unmatched — not counted | — | listed in scope | no |
| audit.pdf | UniswapV3PoolDeployer | unmatched — not counted | — | listed in scope | no |
| audit.pdf | UniswapV3Factory | ambiguous — not counted | 0x1f9843… (alternative) `0x1f98431c8ad98523631ae4a59f267346ea31f984` — deployed 2021-05-04 22:27:00+03 — liveness: live (current_address_book_code)<br>0x7145f8… (alternative) `0x7145f8aeef1f6510e92164038e1b6f8cb2c42cbb` — liveness: live (current_address_book_code)<br>0xdb1d10… (alternative) `0xdb1d10011ad0ff90774d0c6bb92e5c5c8b4461f7` — deployed 2023-03-09 22:53:14+03 — liveness: live (current_address_book_code)<br>0x1f9843… (alternative) `0x1f98431c8ad98523631ae4a59f267346ea31f984` — liveness: live (current_address_book_code)<br>0x1f9843… (alternative) `0x1f98431c8ad98523631ae4a59f267346ea31f984` — deployed 2021-12-20 20:39:48+03 — liveness: live (current_address_book_code)<br>0x33128a… (alternative) `0x33128a8fc17869897dce68ed026d694621f6fdfd` — deployed 2023-07-16 21:38:27+03 — liveness: live (current_address_book_code)<br>0x740b1c… (alternative) `0x740b1c1de25031c31ff4fc9a62f554a55cdc1bad` — deployed 2023-03-24 07:40:28+03 — liveness: live (current_address_book_code)<br>0x8fda5a… (alternative) `0x8fda5a7a8dca67bbcdd10f02fa0649a937215422` — deployed 2023-08-31 12:13:02+03 — liveness: live (current_address_book_code)<br>0x4b2ab3… (alternative) `0x4b2ab38dbf28d31d467aa8993f6c2585981d6804` — liveness: live (current_address_book_code)<br>0x1f9843… (alternative) `0x1f98431c8ad98523631ae4a59f267346ea31f984` — deployed 2021-06-01 17:20:17+03 — liveness: live (current_address_book_code)<br>0xafe208… (alternative) `0xafe208a311b21f13ef87e33a90049fc17a7acdec` — deployed 2022-07-07 05:31:36+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| audit.pdf | UniswapV3PoolDeployer | unmatched — not counted | — | listed in scope | no |
| audit.pdf | UniswapV3Pool | unmatched — not counted | — | listed in scope | no |
| audit.pdf | BitMath | unmatched — not counted | — | listed in scope | no |
| audit.pdf | FullMath | unmatched — not counted | — | listed in scope | no |
| audit.pdf | UnsafeMath | unmatched — not counted | — | listed in scope | no |
| audit.pdf | SafeCast | unmatched — not counted | — | listed in scope | no |
| audit.pdf | LowGasSafeMath | unmatched — not counted | — | listed in scope | no |
| audit.pdf | TransferHelper | unmatched — not counted | — | listed in scope | no |
| audit.pdf | LiquidityMath | unmatched — not counted | — | listed in scope | no |
| audit.pdf | TickMath | unmatched — not counted | — | listed in scope | no |
| audit.pdf | TickBitmap | unmatched — not counted | — | listed in scope | no |
| audit.pdf | Tick | unmatched — not counted | — | listed in scope | no |
| audit.pdf | Position | unmatched — not counted | — | listed in scope | no |
| audit.pdf | SqrtPriceMath | unmatched — not counted | — | listed in scope | no |
| audit.pdf | SwapMath | unmatched — not counted | — | listed in scope | no |
| audit.pdf | Oracle | unmatched — not counted | — | listed in scope | no |
| audit.pdf | SecondsOutside | unmatched — not counted | — | listed in scope | no |
| audit.pdf | NoDelegateCall | unmatched — not counted | — | listed in scope | no |
| audit.pdf | NonfungiblePositionManager | ambiguous — not counted | 0xc36442… (alternative) `0xc36442b4a4522e871399cd717abdd847ab11fe88` — deployed 2021-12-20 22:26:29+03 — liveness: live (current_address_book_code)<br>0x0616e5… (alternative) `0x0616e5762c1e7dc3723c50663df10a162d690a86` — deployed 2023-08-31 12:13:49+03 — liveness: live (current_address_book_code)<br>0xbc91e8… (alternative) `0xbc91e8dfa3ff18de43853372a3d7dfe585137d78` — liveness: live (current_address_book_code)<br>0x7b8a01… (alternative) `0x7b8a01b39d58278b5de7e48c8449c9f4f5170613` — deployed 2023-03-09 22:54:47+03 — liveness: live (current_address_book_code)<br>NonfungiblePositionManager (proxy) (alternative) `0x03a520b32c04bf3beef7beb72e919cf822ed34f1` — deployed 2023-07-16 21:39:35+03 — liveness: live (current_address_book_code)<br>0x3d79ed… (alternative) `0x3d79edaabc0eab6f08ed885c05fc0b014290d95a` — deployed 2022-07-07 05:33:06+03 — liveness: live (current_address_book_code)<br>0x655c40… (alternative) `0x655c406ebfa14ee2006250925e54ec43ad184f8b` — deployed 2023-03-24 07:42:14+03 — liveness: live (current_address_book_code)<br>0xc36442… (alternative) `0xc36442b4a4522e871399cd717abdd847ab11fe88` — deployed 2021-05-04 22:35:13+03 — liveness: live (current_address_book_code)<br>0x315e41… (alternative) `0x315e413a11ab0df498ef83873012430ca36638ae` — liveness: live (current_address_book_code)<br>0xc36442… (alternative) `0xc36442b4a4522e871399cd717abdd847ab11fe88` — deployed 2021-06-01 17:28:50+03 — liveness: live (current_address_book_code)<br>0xc36442… (alternative) `0xc36442b4a4522e871399cd717abdd847ab11fe88` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| audit.pdf | SwapRouter | ambiguous — not counted | 0xe59242… (alternative) `0xe592427a0aece92de3edee1f18e0157c05861564` — liveness: live (current_address_book_code)<br>0xe59242… (alternative) `0xe592427a0aece92de3edee1f18e0157c05861564` — deployed 2021-12-20 22:25:45+03 — liveness: live (current_address_book_code)<br>SwapRouter (proxy) (alternative) `0xe592427a0aece92de3edee1f18e0157c05861564` — deployed 2021-05-04 22:30:41+03 — liveness: live (current_address_book_code)<br>0xe59242… (alternative) `0xe592427a0aece92de3edee1f18e0157c05861564` — deployed 2021-06-01 17:27:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Uniswap-final.md | uniswap_exchange | unmatched — not counted | — | listed in scope table | no |
| Uniswap-final.md | uniswap_factory | unmatched — not counted | — | listed in scope table | no |
| Uniswap-working.md | uniswap_exchange | unmatched — not counted | — | listed in scope table | no |
| Uniswap-working.md | uniswap_factory | unmatched — not counted | — | listed in scope table | no |
| mythril_output_exchange.md | MAIN | unmatched — not counted | — | Mythril output references contract 'MAIN' in findings | no |
| DRAFT_ABDK_audit_core.pdf | ERC6909 | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | ERC6909Claims | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | Extsload | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | Exttload | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | NoDelegateCall | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | PoolManager | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | ProtocolFees | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | IUnlockCallback | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | IERC20Minimal | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | IERC6909Claims | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | IExtsload | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | IExttload | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | IHooks | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | IPoolManager | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | IProtocolFeeController | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | IProtocolFees | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | BitMath | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | CurrencyDelta | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | CustomRevert | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | UnsafeMath | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | FixedPoint96 | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | FixedPoint128 | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | FullMath | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | Hooks | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | LiquidityMath | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | Lock | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | LPFeeLibrary | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | NonZeroDeltaCount | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | ParseBytes | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | Pool | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | Position | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | ProtocolFeeLibrary | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | Reserves | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | SafeCast | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | SqrtPriceMath | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | StateLibrary | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | SwapMath | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | TickBitmap | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | TickMath | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | TransientStateLibrary | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | BalanceDelta | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | BeforeSwapDelta | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | Currency | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | PoolId | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | PoolKey | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_core.pdf | Slot0 | unmatched — not counted | — | listed in scope | no |
| DRAFT_Certora_audit_core.pdf | PoolManager | unmatched — not counted | — | listed in scope and formal verification section | no |
| DRAFT_Certora_audit_core.pdf | LPFeeLibrary | unmatched — not counted | — | listed in formal verification section | no |
| DRAFT_Certora_audit_core.pdf | ProtocolFeeLibrary | unmatched — not counted | — | listed in formal verification section | no |
| DRAFT_Certora_audit_core.pdf | SqrtPriceMath | unmatched — not counted | — | listed in formal verification section | no |
| DRAFT_Certora_audit_core.pdf | TickBitmap | unmatched — not counted | — | listed in formal verification section | no |
| DRAFT_Spearbit_audit_core.pdf | PoolManager | unmatched — not counted | — | mentioned in findings context | no |
| DRAFT_Spearbit_audit_core.pdf | Pool | unmatched — not counted | — | mentioned in findings context | no |
| DRAFT_Spearbit_audit_core.pdf | TickMath | unmatched — not counted | — | mentioned in findings context | no |
| DRAFT_Spearbit_audit_core.pdf | SqrtPriceMath | unmatched — not counted | — | mentioned in findings context | no |
| DRAFT_Spearbit_audit_core.pdf | SwapMath | unmatched — not counted | — | mentioned in findings context | no |
| DRAFT_Spearbit_audit_core.pdf | BitMath | unmatched — not counted | — | mentioned in findings context | no |
| DRAFT_Spearbit_audit_core.pdf | TickBitmap | unmatched — not counted | — | mentioned in findings context | no |
| DRAFT_Spearbit_audit_core.pdf | CustomRevert | unmatched — not counted | — | mentioned in findings context | no |
| DRAFT_Spearbit_audit_core.pdf | PoolIdLibrary | unmatched — not counted | — | mentioned in findings context | no |
| DRAFT_Spearbit_audit_core.pdf | ProtocolFees | unmatched — not counted | — | mentioned in findings context | no |
| DRAFT_Spearbit_audit_core.pdf | ERC6909 | unmatched — not counted | — | mentioned in findings context | no |
| DRAFT_Spearbit_audit_core.pdf | ERC6909Claims | unmatched — not counted | — | mentioned in findings context | no |
| DRAFT_Spearbit_audit_core.pdf | Currency | unmatched — not counted | — | mentioned in findings context | no |
| DRAFT_Spearbit_audit_core.pdf | CurrencyReserves | unmatched — not counted | — | mentioned in findings context | no |
| DRAFT_Spearbit_audit_core.pdf | IProtocolFees | unmatched — not counted | — | mentioned in findings context | no |
| DRAFT_Spearbit_audit_core.pdf | IPoolManager | unmatched — not counted | — | mentioned in findings context | no |
| DRAFT_Spearbit_audit_core.pdf | IHooks | unmatched — not counted | — | mentioned in findings context | no |
| DRAFT_Spearbit_audit_core.pdf | LPFeeLibrary | unmatched — not counted | — | mentioned in findings context | no |
| DRAFT_Spearbit_audit_core.pdf | TransientStateLibrary | unmatched — not counted | — | mentioned in findings context | no |
| DRAFT_Spearbit_audit_core.pdf | StateLibrary | unmatched — not counted | — | mentioned in findings context | no |
| DRAFT_Spearbit_audit_core.pdf | UnsafeMath | unmatched — not counted | — | mentioned in findings context | no |
| DRAFT_Spearbit_audit_core.pdf | Constants | unmatched — not counted | — | mentioned in findings context | no |
| DRAFT_Spearbit_audit_core.pdf | CurrencyDelta | unmatched — not counted | — | mentioned in findings context | no |
| OpenZeppelin_audit_core.pdf | ERC6909 | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_core.pdf | ERC6909Claims | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_core.pdf | Extsload | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_core.pdf | Exttload | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_core.pdf | NoDelegateCall | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_core.pdf | PoolManager | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_core.pdf | ProtocolFees | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_core.pdf | IHooks | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_core.pdf | IExtsload | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_core.pdf | IExttload | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_core.pdf | IPoolManager | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_core.pdf | IProtocolFeeController | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_core.pdf | IProtocolFees | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_core.pdf | IERC20Minimal | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_core.pdf | IERC6909Claims | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_core.pdf | IUnlockCallback | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_core.pdf | CurrencyDelta | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_core.pdf | CustomRevert | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_core.pdf | FixedPoint128 | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_core.pdf | FixedPoint96 | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_core.pdf | Hooks | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_core.pdf | LPFeeLibrary | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_core.pdf | LiquidityMath | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_core.pdf | Lock | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_core.pdf | NonZeroDeltaCount | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_core.pdf | ParseBytes | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_core.pdf | Pool | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_core.pdf | ProtocolFeeLibrary | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_core.pdf | Reserves | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_core.pdf | SafeCast | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_core.pdf | StateLibrary | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_core.pdf | TransientStateLibrary | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_core.pdf | UnsafeMath | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_core.pdf | BalanceDelta | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_core.pdf | BeforeSwapDelta | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_core.pdf | Currency | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_core.pdf | PoolId | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_core.pdf | PoolKey | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_core.pdf | Slot0 | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_core.pdf | BitMath | unmatched — not counted | — | listed in scope (diff check) | no |
| OpenZeppelin_audit_core.pdf | FullMath | unmatched — not counted | — | listed in scope (diff check) | no |
| OpenZeppelin_audit_core.pdf | Position | unmatched — not counted | — | listed in scope (diff check) | no |
| OpenZeppelin_audit_core.pdf | SqrtPriceMath | unmatched — not counted | — | listed in scope (diff check) | no |
| OpenZeppelin_audit_core.pdf | SwapMath | unmatched — not counted | — | listed in scope (diff check) | no |
| OpenZeppelin_audit_core.pdf | TickBitmap | unmatched — not counted | — | listed in scope (diff check) | no |
| OpenZeppelin_audit_core.pdf | TickMath | unmatched — not counted | — | listed in scope (diff check) | no |
| TrailOfBits_audit_core.pdf | PoolManager | unmatched — not counted | — | listed in scope and detailed findings | no |
| TrailOfBits_audit_core.pdf | Hooks | unmatched — not counted | — | listed in scope and detailed findings | no |
| TrailOfBits_audit_core.pdf | ERC6909 | unmatched — not counted | — | listed in scope | no |
| TrailOfBits_audit_core.pdf | ProtocolFeeController | unmatched — not counted | — | listed in scope | no |
| TrailOfBits_audit_core.pdf | Pool | unmatched — not counted | — | target in findings | no |
| TrailOfBits_audit_core.pdf | LPFeeLibrary | unmatched — not counted | — | target in findings | no |
| TrailOfBits_audit_core.pdf | SwapMath | unmatched — not counted | — | target in findings | no |
| TrailOfBits_audit_core.pdf | ProtocolFeeLibrary | unmatched — not counted | — | target in findings | no |
| TrailOfBits_audit_core.pdf | PoolId | unmatched — not counted | — | target in findings | no |
| TrailOfBits_audit_core.pdf | PoolKey | unmatched — not counted | — | target in findings | no |
| TrailOfBits_audit_core.pdf | PoolIdLibrary | unmatched — not counted | — | mentioned in findings | no |
| TrailOfBits_audit_core.pdf | ActionsRouter | unmatched — not counted | — | mentioned in invariant testing | no |
| TrailOfBits_audit_core.pdf | End2End | unmatched — not counted | — | mentioned in invariant testing | no |
| TrailOfBits_audit_core.pdf | ActionFuzzEntrypoint | unmatched — not counted | — | mentioned in invariant testing | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | Callbacks | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | Dispatcher | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | Lock | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | Locker | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | V4SwapRouter | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | MigratorImmutables | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | V3ToV4Migrator | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | UniversalRouter | ambiguous — not counted | 0x66a989… (alternative) `0x66a9893cc07d91d95644aedd05d03f95e1dba8af` — deployed 2025-01-23 21:49:47+03 — liveness: live (current_address_book_code)<br>0xa51afa… (alternative) `0xa51afafe0263b40edaef0df8781ea9aa03e381a3` — deployed 2025-01-21 22:22:09+03 — liveness: live (current_address_book_code)<br>0x851116… (alternative) `0x851116d9223fabed8e56c0e6b8ad0c31d98b3507` — deployed 2025-01-22 00:15:51+03 — liveness: live (current_address_book_code)<br>0x94b753… (alternative) `0x94b75331ae8d42c1b61065089b7d48fe14aa73b7` — deployed 2025-01-22 18:01:47+03 — liveness: live (current_address_book_code)<br>0x1906c1… (alternative) `0x1906c1d672b88cd1b9ac7593301ca990f94eae07` — deployed 2025-01-21 23:59:02+03 — liveness: live (current_address_book_code)<br>UniversalRouter (alternative) `0x1095692a6237d83c6a72f3f5efedb9a670c49223` — deployed 2025-01-21 23:40:47+03 — liveness: live (current_address_book_code)<br>0x3315ef… (alternative) `0x3315ef7ca28db74abadc6c44570efdf06b04b020` — liveness: live (current_address_book_code)<br>0x643770… (alternative) `0x643770e279d5d0733f21d6dc03a8efbabf3255b4` — deployed 2023-09-14 18:52:11+03 — liveness: live (current_address_book_code)<br>0x6ff569… (alternative) `0x6ff5693b99212da76ad316178a184ab56d299b43` — deployed 2025-01-21 23:29:05+03 — liveness: live (current_address_book_code)<br>0x28731b… (alternative) `0x28731bcc616b5f51dd52cf2e4df0e78dd1136c06` — deployed 2023-08-31 13:20:19+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | BaseActionsRouter | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | DeltaResolver | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | EIP712_v4 | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | ERC721Permit_v4 | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | ImmutableState | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | Multicall_v4 | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | Notifier | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | Permit2Forwarder | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | PoolInitializer | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | ReentrancyLock | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | SafeCallback | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | UnorderedNonce | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | IEIP712_v4 | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | IERC721Permit_v4 | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | IMulticall_v4 | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | INotifier | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | IPositionManager | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | IQuoter | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | ISubscriber | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | IV4Router | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | Quoter | ambiguous — not counted | 0xb27308… (alternative) `0xb27308f9f90d607463bb33ea1bebb41c27ce5ab6` — deployed 2021-05-04 22:29:27+03 — liveness: live (current_address_book_code)<br>0xb27308… (alternative) `0xb27308f9f90d607463bb33ea1bebb41c27ce5ab6` — deployed 2021-12-20 22:25:35+03 — liveness: live (current_address_book_code)<br>0xb27308… (alternative) `0xb27308f9f90d607463bb33ea1bebb41c27ce5ab6` — deployed 2021-06-01 17:27:31+03 — liveness: live (current_address_book_code)<br>0xb27308… (alternative) `0xb27308f9f90d607463bb33ea1bebb41c27ce5ab6` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | ActionConstants | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | Actions | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | BipsLibrary | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | CalldataDecoder | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | ERC721PermitHash | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | PathKey | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | PoolTicksCounter | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | PositionConfig | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | SafeCast | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | SlippageCheck | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | PositionManager | unmatched — not counted | — | listed in scope | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | V4Router | unmatched — not counted | — | listed in scope | no |
| DRAFT_Spearbit_audit_periphery.pdf | PositionManager | unmatched — not counted | — | listed in scope and findings | no |
| DRAFT_Spearbit_audit_periphery.pdf | Notifier | unmatched — not counted | — | listed in scope and findings | no |
| DRAFT_Spearbit_audit_periphery.pdf | PoolTicksCounter | unmatched — not counted | — | listed in scope and findings | no |
| DRAFT_Spearbit_audit_periphery.pdf | Quoter | ambiguous — not counted | 0xb27308… (alternative) `0xb27308f9f90d607463bb33ea1bebb41c27ce5ab6` — deployed 2021-05-04 22:29:27+03 — liveness: live (current_address_book_code)<br>0xb27308… (alternative) `0xb27308f9f90d607463bb33ea1bebb41c27ce5ab6` — deployed 2021-12-20 22:25:35+03 — liveness: live (current_address_book_code)<br>0xb27308… (alternative) `0xb27308f9f90d607463bb33ea1bebb41c27ce5ab6` — deployed 2021-06-01 17:27:31+03 — liveness: live (current_address_book_code)<br>0xb27308… (alternative) `0xb27308f9f90d607463bb33ea1bebb41c27ce5ab6` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| DRAFT_Spearbit_audit_periphery.pdf | V4Router | unmatched — not counted | — | listed in scope and findings | no |
| DRAFT_Spearbit_audit_periphery.pdf | DeltaResolver | unmatched — not counted | — | listed in scope and findings | no |
| DRAFT_Spearbit_audit_periphery.pdf | SlippageCheck | unmatched — not counted | — | listed in scope and findings | no |
| DRAFT_Spearbit_audit_periphery.pdf | CalldataDecoder | unmatched — not counted | — | listed in scope and findings | no |
| DRAFT_Spearbit_audit_periphery.pdf | ERC721Permit_v4 | unmatched — not counted | — | listed in scope and findings | no |
| DRAFT_Spearbit_audit_periphery.pdf | PoolInitializer | unmatched — not counted | — | listed in scope and findings | no |
| DRAFT_Spearbit_audit_periphery.pdf | PositionConfig | unmatched — not counted | — | listed in scope and findings | no |
| DRAFT_Spearbit_audit_periphery.pdf | PositionConfigLibrary | unmatched — not counted | — | listed in scope and findings | no |
| DRAFT_Spearbit_audit_periphery.pdf | ERC721PermitHashLibrary | unmatched — not counted | — | listed in scope and findings | no |
| DRAFT_Spearbit_audit_periphery.pdf | BaseHook | unmatched — not counted | — | listed in scope and findings | no |
| DRAFT_Spearbit_audit_periphery.pdf | Multicall_v4 | unmatched — not counted | — | listed in scope and findings | no |
| DRAFT_Spearbit_audit_periphery.pdf | EIP712_v4 | unmatched — not counted | — | listed in scope and findings | no |
| DRAFT_Spearbit_audit_periphery.pdf | StateView | unmatched — not counted | — | listed in scope and findings | no |
| DRAFT_Spearbit_audit_periphery.pdf | PathKey | unmatched — not counted | — | listed in scope and findings | no |
| DRAFT_Spearbit_audit_periphery.pdf | ActionConstants | unmatched — not counted | — | listed in scope and findings | no |
| DRAFT_Spearbit_audit_periphery.pdf | BipsLibrary | unmatched — not counted | — | listed in scope and findings | no |
| DRAFT_Spearbit_audit_periphery.pdf | ImmutableState | unmatched — not counted | — | listed in scope and findings | no |
| DRAFT_Spearbit_audit_periphery.pdf | IQuoter | unmatched — not counted | — | listed in scope and findings | no |
| DRAFT_Spearbit_audit_periphery.pdf | IV4Router | unmatched — not counted | — | listed in scope and findings | no |
| DRAFT_Spearbit_audit_periphery.pdf | IERC721Permit_v4 | unmatched — not counted | — | listed in scope and findings | no |
| DRAFT_Spearbit_audit_periphery.pdf | IERC20PermitAllowed | unmatched — not counted | — | listed in scope and findings | no |
| DRAFT_Spearbit_audit_periphery.pdf | IMulticall_v4 | unmatched — not counted | — | listed in scope and findings | no |
| DRAFT_Spearbit_audit_periphery.pdf | INotifier | unmatched — not counted | — | listed in scope and findings | no |
| DRAFT_Spearbit_audit_periphery.pdf | Actions | unmatched — not counted | — | listed in scope and findings | no |
| DRAFT_Spearbit_audit_periphery.pdf | UnorderedNonce | unmatched — not counted | — | listed in scope and findings | no |
| DRAFT_Spearbit_audit_periphery.pdf | BaseActionsRouter | unmatched — not counted | — | listed in scope and findings | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | PositionManager | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | V4Router | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | BaseActionsRouter | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | DeltaResolver | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | EIP712_v4 | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | ERC721Permit_v4 | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | ImmutableState | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | Multicall_v4 | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | Notifier | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | Permit2Forwarder | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | PoolInitializer | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | ReentrancyLock | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | SafeCallback | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | UnorderedNonce | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | BaseHook | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | IEIP712_v4 | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | IERC721Permit_v4 | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | IMulticall_v4 | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | INotifier | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | IPositionManager | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | IQuoter | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | ISubscriber | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | IV4Router | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | IERC20PermitAllowed | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | Quoter | ambiguous — not counted | 0xb27308… (alternative) `0xb27308f9f90d607463bb33ea1bebb41c27ce5ab6` — deployed 2021-05-04 22:29:27+03 — liveness: live (current_address_book_code)<br>0xb27308… (alternative) `0xb27308f9f90d607463bb33ea1bebb41c27ce5ab6` — deployed 2021-12-20 22:25:35+03 — liveness: live (current_address_book_code)<br>0xb27308… (alternative) `0xb27308f9f90d607463bb33ea1bebb41c27ce5ab6` — deployed 2021-06-01 17:27:31+03 — liveness: live (current_address_book_code)<br>0xb27308… (alternative) `0xb27308f9f90d607463bb33ea1bebb41c27ce5ab6` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | StateView | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | ActionConstants | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | Actions | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | BipsLibrary | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | CalldataDecoder | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | ERC721PermitHash | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | Locker | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | PathKey | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | PoolTicksCounter | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | PositionConfig | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | SafeCast | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | SlippageCheck | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | UniversalRouter | ambiguous — not counted | 0x66a989… (alternative) `0x66a9893cc07d91d95644aedd05d03f95e1dba8af` — deployed 2025-01-23 21:49:47+03 — liveness: live (current_address_book_code)<br>0xa51afa… (alternative) `0xa51afafe0263b40edaef0df8781ea9aa03e381a3` — deployed 2025-01-21 22:22:09+03 — liveness: live (current_address_book_code)<br>0x851116… (alternative) `0x851116d9223fabed8e56c0e6b8ad0c31d98b3507` — deployed 2025-01-22 00:15:51+03 — liveness: live (current_address_book_code)<br>0x94b753… (alternative) `0x94b75331ae8d42c1b61065089b7d48fe14aa73b7` — deployed 2025-01-22 18:01:47+03 — liveness: live (current_address_book_code)<br>0x1906c1… (alternative) `0x1906c1d672b88cd1b9ac7593301ca990f94eae07` — deployed 2025-01-21 23:59:02+03 — liveness: live (current_address_book_code)<br>UniversalRouter (alternative) `0x1095692a6237d83c6a72f3f5efedb9a670c49223` — deployed 2025-01-21 23:40:47+03 — liveness: live (current_address_book_code)<br>0x3315ef… (alternative) `0x3315ef7ca28db74abadc6c44570efdf06b04b020` — liveness: live (current_address_book_code)<br>0x643770… (alternative) `0x643770e279d5d0733f21d6dc03a8efbabf3255b4` — deployed 2023-09-14 18:52:11+03 — liveness: live (current_address_book_code)<br>0x6ff569… (alternative) `0x6ff5693b99212da76ad316178a184ab56d299b43` — deployed 2025-01-21 23:29:05+03 — liveness: live (current_address_book_code)<br>0x28731b… (alternative) `0x28731bcc616b5f51dd52cf2e4df0e78dd1136c06` — deployed 2023-08-31 13:20:19+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | Callbacks | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | Dispatcher | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | Lock | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | MigratorImmutables | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | V3ToV4Migrator | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | V4SwapRouter | unmatched — not counted | — | listed in scope | no |
| - [Resources](): Explore audits, core contracts, and infrastructur… | TheCompact | unmatched — not counted | — | listed as main protocol implementation in Core Contracts section | no |
| - [Resources](): Explore audits, core contracts, and infrastructur… | ITheCompact | unmatched — not counted | — | listed as core interface definition in Core Contracts section | no |
| - [Resources](): Explore audits, core contracts, and infrastructur… | ITheCompactClaims | unmatched — not counted | — | listed as claims interface in Core Contracts section | no |
| - [Audits](): Learn about the audits for Uniswap v3 | Uniswap v3 core contracts | unmatched — not counted | — | mentioned as audited by ABDK Consulting and Trail of Bits | no |
| - [Audits](): Learn about the audits for Uniswap v3 | Uniswap v3 Periphery contracts | unmatched — not counted | — | mentioned as audited by ABDK Consulting | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x982dc187cbeb4e21431c735b01ecbd8a606129c5` | AdvancedLBPStrategyFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x1f98415757620b543a52e61c46b32eb19261f984` | AlgebraInterfaceMulticall | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0000ccadf55c911a2fbc0bb9d2942aa77c6faa1d` | ContinuousClearingAuctionFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6000da47483062a0d734ba3dc7576ce6a0b645c4` | ExclusiveDutchOrderReactor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48` | FiatTokenProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0d5cd355e2abeb8fb1552f56c965b867346d6721` | Firepit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x39e5eb34dd2c8082ee1e556351ae660f33b04252` | FullRangeLBPStrategyFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0x471ece3750da237f93b8e339c536989b8978a438` | GoldToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x00000008412db3394c91a5cbd01635c6d140637c` | LiquidityLauncher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd3aa12b99892b7d95bbaa27aef222a8e2a038c0c` | MainnetDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x03a520b32c04bf3beef7beb72e919cf822ed34f1` | NonfungiblePositionManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0xe0a780e9105ac10ee304448224eb4a2b11a77eeb` | OptimismBridgedResourceFirepit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x00000000a3db63df9078cbf3df88b4cadd5a7f58` | OrderQuoter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x000000001ec5656dcdb24d90dfa42742738de729` | PriorityOrderReactor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe592427a0aece92de3edee1f18e0157c05861564` | SwapRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0xd576bdf6b560079a4c204f7644e556dbb19140b5` | TokenJar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0cde87c11b959e5eb0924c1abf5250ee3f9bd1b5` | UERC20Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1f9840a85d5af5bf1d1762f925bdaddc4201f984` | Uni | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0xd16c47bf3ae22e0b2bac5925d990b81416f18dea` | UnichainDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x0139141cd4ee88df3cdb65881d411bae271ef0c2` | UniswapInterfaceMulticall | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0x284f11109359a7e1306c3e447ef14d38400063ff` | UniswapV2Router02 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x1095692a6237d83c6a72f3f5efedb9a670c49223` | UniversalRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0x24016ed99a69e9b86d16d84351e1661266b7ac6a` | USUPERC20Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x00000011f84b9aa48e5f8aa8b9897600006289be` | V2DutchOrderReactor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x00000000862ccf095823fc7576fa6c7e6b7385ef` | V3DutchOrderReactor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5e74c9f42eed283bff3744fbd1889d398d40867d` | V3FeeAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x00000010f37b6524617b17e66796058412bbc487` | VirtualLBPStrategyFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c` | WBNB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x4200000000000000000000000000000000000006` | WETH9 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x0d500b1d8e8ef31e21c99d1db9a6444d3adf1270` | WMATIC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 324 |
| upstream | 2 |
| standard_library | 13 |
| needs_review | 696 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 20
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 9 ambiguous, 305 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=13, low=6, medium=1
- Match method counts: n/a

Zero-match audit list:

- [18444] audit.pdf
- [18445] audit.pdf
- [18446] audit.pdf
- [18448] Uniswap-final.md
- [18449] Uniswap-standalone-working.md
- [18450] Uniswap-working.md
- [18451] coverage_output.md
- [18452] mythril_output_exchange.md
- [18453] mythril_output_factory.md
- [18454] DRAFT_ABDK_audit_core.pdf
- [18455] DRAFT_Certora_audit_core.pdf
- [18456] DRAFT_Spearbit_audit_core.pdf
- [18457] OpenZeppelin_audit_core.pdf
- [18458] TrailOfBits_audit_core.pdf
- [18459] DRAFT_ABDK_audit_periphery_universal_router.pdf
- [18460] DRAFT_Spearbit_audit_periphery.pdf
- [18461] OpenZeppelin_audit_periphery_universal_router.pdf
- [18462] - [Audits](): Learn about the audits for Uniswap v2
- [18463] - [Resources](): Explore audits, core contracts, and infrastructur…
- [18464] - [Audits](): Learn about the audits for Uniswap v3

Fork inheritance lineage and inherited audits are included when available.
