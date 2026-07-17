# Agentic Audit Brief: Venus Core Pool

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Venus Core Pool (`venus-finance`)
- Website: [https://venus.io/](https://venus.io/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, arbitrum-sepolia, base, base-sepolia, bsc, bsc-testnet, chain-300, ethereum, opbnb, opbnb-testnet, optimism, optimism-sepolia, sepolia, unichain, unichain-sepolia, zksync-era
- Contract surface: 509 unique implementations (509 raw deployments)
- Coverage basis: 0/258 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Venus Core Pool. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 260 contract row(s) across arbitrum, arbitrum-sepolia, base, base-sepolia, bsc, bsc-testnet, chain-300, ethereum, opbnb, opbnb-testnet, optimism, optimism-sepolia, sepolia, unichain, unichain-sepolia, zksync-era. Structural roles: 260 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 260
- Structural roles: unclassified (260)
- Contract kinds: contract (249), abstract (11)
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 271 contracts are derived from known codebases. 271 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- CheckpointView_From_JumpRateModel_base0bps_slope1000bps_jump20000bps_kink7500bps_bpy10512000_To_bpy21024000_At_1745903100 (`0x747943c45eb782db9e04f6f54ea5f27cc6627e4a`, chain 56)
- CheckpointView_From_JumpRateModel_base0bps_slope1000bps_jump20000bps_kink7500bps_bpy21024000_To_bpy42048000_At_1751250600 (`0xd7079bce4a9ca17a71787928e40252547444c3d3`, chain 56)
- CheckpointView_From_JumpRateModel_base0bps_slope1000bps_jump20000bps_kink7500bps_bpy42048000_To_bpy70080000_At_1768357800 (`0x0c61acdc057e894ec7c282ec779b67ef654addce`, chain 56)
- CheckpointView_From_JumpRateModel_base0bps_slope1000bps_jump25000bps_kink8000bps_bpy10512000_To_bpy21024000_At_1745903100 (`0xf8e641695f89a5919df03edd9ecda3d0dc89aaa9`, chain 56)
- CheckpointView_From_JumpRateModel_base0bps_slope1000bps_jump25000bps_kink8000bps_bpy21024000_To_bpy42048000_At_1751250600 (`0xbb951b0b38ae86cef2f3d642f5ac7591fd5d2f4b`, chain 56)
- CheckpointView_From_JumpRateModel_base0bps_slope1000bps_jump25000bps_kink8000bps_bpy42048000_To_bpy70080000_At_1768357800 (`0x8afae0979c793411648e476388c83e190285c9b1`, chain 56)
- CheckpointView_From_JumpRateModel_base0bps_slope1000bps_jump50000bps_kink8000bps_bpy21024000_To_bpy42048000_At_1751250600 (`0x8d3a052b88acf368da24f5313901e4e63e0e78cf`, chain 56)
- CheckpointView_From_JumpRateModel_base0bps_slope1000bps_jump50000bps_kink8000bps_bpy42048000_To_bpy70080000_At_1768357800 (`0xdba6a250027049c4033970e224e61edcd84ea630`, chain 56)
- CheckpointView_From_JumpRateModel_base0bps_slope1500bps_jump30000bps_kink6000bps_bpy10512000_To_bpy21024000_At_1745903100 (`0x7857738486e813b5bcb6ca62b46f6b2ee029609b`, chain 56)
- CheckpointView_From_JumpRateModel_base0bps_slope1500bps_jump30000bps_kink6000bps_bpy21024000_To_bpy42048000_At_1751250600 (`0x968d2f613f0517eae22f898529c4658db8c578bc`, chain 56)
- CheckpointView_From_JumpRateModel_base0bps_slope1500bps_jump30000bps_kink6000bps_bpy42048000_To_bpy70080000_At_1768357800 (`0xc3723cf801cdbb8c9a79bd67b17d20ca9d5ec3ed`, chain 56)
- CheckpointView_From_JumpRateModel_base0bps_slope1750bps_jump25000bps_kink8000bps_bpy10512000_To_bpy21024000_At_1745903100 (`0x42ef8eccee0782a4e644b3eb39761fb6c696ccf2`, chain 56)
- CheckpointView_From_JumpRateModel_base0bps_slope2000bps_jump30000bps_kink5000bps_bpy10512000_To_bpy21024000_At_1745903100 (`0x83671a928e8d4c34f9f8fad06bd8356fdb524a0f`, chain 56)
- CheckpointView_From_JumpRateModel_base0bps_slope2000bps_jump30000bps_kink5000bps_bpy21024000_To_bpy42048000_At_1751250600 (`0x107f2b97dcd259aa373709bf1021ad120a2fed98`, chain 56)
- CheckpointView_From_JumpRateModel_base0bps_slope2000bps_jump30000bps_kink5000bps_bpy42048000_To_bpy70080000_At_1768357800 (`0x30457d82246512b891dad51ecc1deabfb1870f8c`, chain 56)
- CheckpointView_From_JumpRateModel_base0bps_slope300bps_jump45000bps_kink9000bps_bpy10512000_To_bpy21024000_At_1745903100 (`0xebb072c6336f1d0a7d8bbf1c82d9c9f7d6485fa4`, chain 56)
- CheckpointView_From_JumpRateModel_base0bps_slope300bps_jump45000bps_kink9000bps_bpy21024000_To_bpy42048000_At_1751250600 (`0x38dd273fe7590403f554f350a7c3c592e8227eb7`, chain 56)
- CheckpointView_From_JumpRateModel_base0bps_slope300bps_jump45000bps_kink9000bps_bpy42048000_To_bpy70080000_At_1768357800 (`0x7c164b24b4393fe5cf5b8a1e1ebb6496ec7db4ef`, chain 56)
- CheckpointView_From_JumpRateModel_base0bps_slope750bps_jump50000bps_kink8000bps_bpy10512000_To_bpy21024000_At_1745903100 (`0x717dbabecc502c8712e7646ab6801f802a997c20`, chain 56)
- CheckpointView_From_JumpRateModel_base0bps_slope750bps_jump5000bps_kink8000bps_bpy10512000_To_bpy21024000_At_1745903100 (`0xa91617ba1a6ccf61a70c7e4b0a2a36c7726bb3f6`, chain 56)
- CheckpointView_From_JumpRateModel_base0bps_slope750bps_jump5000bps_kink8000bps_bpy21024000_To_bpy42048000_At_1751250600 (`0xfea1ca128ddbaf830efc4e0d5cd5e152ae504cc7`, chain 56)
- CheckpointView_From_JumpRateModel_base0bps_slope750bps_jump5000bps_kink8000bps_bpy42048000_To_bpy70080000_At_1768357800 (`0x4f0cfa4a97ee2e99d58724ae8cc169f9704d458d`, chain 56)
- CheckpointView_From_JumpRateModel_base0bps_slope900bps_jump20000bps_kink5000bps_bpy10512000_To_bpy21024000_At_1745903100 (`0x3ba66110c585cb4032a0289bf4cd8f983d556b10`, chain 56)
- CheckpointView_From_JumpRateModel_base0bps_slope900bps_jump20000bps_kink5000bps_bpy21024000_To_bpy42048000_At_1751250600 (`0x44a94a5e96bc6e36f4775e6229e2487860d4b7f0`, chain 56)
- CheckpointView_From_JumpRateModel_base0bps_slope900bps_jump20000bps_kink5000bps_bpy42048000_To_bpy70080000_At_1768357800 (`0x1ef3b851ce40b663dbbf91b86a4ee51a4a0999c5`, chain 56)
- CheckpointView_From_JumpRateModel_base0bps_slope900bps_jump20000bps_kink7500bps_bpy10512000_To_bpy21024000_At_1745903100 (`0x4a03abcc888020c779bb362b4c1d2869485bdee4`, chain 56)
- CheckpointView_From_JumpRateModel_base0bps_slope900bps_jump20000bps_kink7500bps_bpy21024000_To_bpy42048000_At_1751250600 (`0xa84189107af59bf132f3e7dd45dd201c0bb25bf4`, chain 56)
- CheckpointView_From_JumpRateModel_base0bps_slope900bps_jump35000bps_kink4500bps_bpy10512000_To_bpy21024000_At_1745903100 (`0xc6cc40ca4e90d151261f6524b97c3d4997479621`, chain 56)
- CheckpointView_From_JumpRateModel_base0bps_slope900bps_jump35000bps_kink4500bps_bpy21024000_To_bpy42048000_At_1751250600 (`0x44c49a0df8bbfa49ed967c65db0e92ba7b40df65`, chain 56)
- CheckpointView_From_JumpRateModel_base0bps_slope900bps_jump35000bps_kink4500bps_bpy42048000_To_bpy70080000_At_1768357800 (`0x6f869480eeebb66b58a930892addc0067fb43b20`, chain 56)
- CheckpointView_From_JumpRateModel_base200bps_slope10000bps_jump30000bps_kink100bps_bpy10512000_To_bpy21024000_At_1745903100 (`0x06da1e5e6ba1e0ca26ac92907b5b30d32789426a`, chain 56)
- CheckpointView_From_JumpRateModel_base200bps_slope10000bps_jump30000bps_kink100bps_bpy21024000_To_bpy42048000_At_1751250600 (`0xb2bd70ed38e928470b5af2f01e799c1d3b4d8796`, chain 56)
- CheckpointView_From_JumpRateModel_base200bps_slope10000bps_jump30000bps_kink100bps_bpy42048000_To_bpy70080000_At_1768357800 (`0x6d967293192e9cc395f4f6d2327c09a1f3f2c920`, chain 56)
- CheckpointView_From_JumpRateModel_base200bps_slope1200bps_jump30000bps_kink6000bps_bpy10512000_To_bpy21024000_At_1745903100 (`0xd574f5186ceef3f4801a9a8c6fe257ef71493371`, chain 56)
- CheckpointView_From_JumpRateModel_base200bps_slope1200bps_jump30000bps_kink6000bps_bpy21024000_To_bpy42048000_At_1751250600 (`0xf7b5f7856e0520d66c03f32d576eecd9156dab29`, chain 56)
- CheckpointView_From_JumpRateModel_base200bps_slope1200bps_jump30000bps_kink6000bps_bpy42048000_To_bpy70080000_At_1768357800 (`0xb0b318816537aa1a63fb30ceca9f5f39f8bb9770`, chain 56)
- CheckpointView_From_JumpRateModel_base200bps_slope1500bps_jump30000bps_kink6000bps_bpy10512000_To_bpy21024000_At_1745903100 (`0x0e6f99766c947f85c242b8328837b39c8bb887c6`, chain 56)
- CheckpointView_From_JumpRateModel_base200bps_slope1500bps_jump30000bps_kink6000bps_bpy21024000_To_bpy42048000_At_1751250600 (`0x1326346bda0bfc3ac7f5bfb0f6ea7f4302a65bcd`, chain 56)
- CheckpointView_From_JumpRateModel_base200bps_slope1500bps_jump30000bps_kink6000bps_bpy42048000_To_bpy70080000_At_1768357800 (`0x6125bc439ee2caa2fd737b14d0f68b364099a19e`, chain 56)
- CheckpointView_From_JumpRateModel_base200bps_slope2000bps_jump30000bps_kink5000bps_bpy10512000_To_bpy21024000_At_1745903100 (`0xed279b5eade8e54175941f188d16067c6341cd1a`, chain 56)
- CheckpointView_From_JumpRateModel_base200bps_slope2000bps_jump30000bps_kink5000bps_bpy21024000_To_bpy42048000_At_1751250600 (`0x7611a9a201524594633b2eb5a8ea42a9418c9811`, chain 56)
- CheckpointView_From_JumpRateModel_base200bps_slope2000bps_jump30000bps_kink5000bps_bpy42048000_To_bpy70080000_At_1768357800 (`0xd6b3a3e73860a5b75c130be1afb9d76c2e572373`, chain 56)
- CheckpointView_From_JumpRateModel_base25bps_slope367bps_jump20000bps_kink7500bps_bpy42048000_To_bpy70080000_At_1768357800 (`0x7d47671514a1b13f0e376d70fcf13b2eb2694c3a`, chain 56)
- CheckpointView_From_JumpRateModel_base5000bps_slope3000bps_jump30000bps_kink6000bps_bpy10512000_To_bpy21024000_At_1745903100 (`0xe508af8fe95d508ef284ddfd76610edbef8cb8e9`, chain 56)
- CheckpointView_From_JumpRateModel_base5000bps_slope3000bps_jump30000bps_kink6000bps_bpy21024000_To_bpy42048000_At_1751250600 (`0xbf6bdb41dbcb5aba54189767d113e7c5155ab70a`, chain 56)
- CheckpointView_From_JumpRateModel_base5000bps_slope3000bps_jump30000bps_kink6000bps_bpy42048000_To_bpy70080000_At_1768357800 (`0x4e1fe613e8ce7d0df1e2f5bc48f50a18ef4d353c`, chain 56)
- CheckpointView_From_TwoKinks_base0bps_slope1000bps_kink8000bps_slope27000bps_base20bps_kink29000bps_jump30000bps_bpy21024000_To_bpy42048000_At_1751250600 (`0x08437b3c0bea58fe6ec696a04c9675e0980b9469`, chain 56)
- CheckpointView_From_TwoKinks_base0bps_slope1500bps_kink8000bps_slope29000bps_base20bps_kink29000bps_jump30000bps_bpy10512000_To_bpy21024000_At_1745903100 (`0x81d6ae3eea177d5d052b329dc74d39b935569359`, chain 56)
- CheckpointView_From_TwoKinks_base0bps_slope312bps_kink8000bps_slope28499bps_base20bps_kink29000bps_jump34000bps_bpy42048000_To_bpy70080000_At_1768357800 (`0x650b2f1dc7f6e6734909ad1df2367537219584b8`, chain 56)
- CheckpointView_From_TwoKinks_base0bps_slope350bps_kink8000bps_slope217500bps_base20bps_kink29000bps_jump30000bps_bpy10512000_To_bpy21024000_At_1745903100 (`0xfcfe909330ff50d2c72715cbec4e54c476c27cec`, chain 56)
- CheckpointView_From_TwoKinks_base0bps_slope450bps_kink7000bps_slope214000bps_base20bps_kink28000bps_jump30000bps_bpy21024000_To_bpy42048000_At_1751250600 (`0xf78db86e58dc1b76569a0b3105ef5186033911a1`, chain 56)
- CheckpointView_From_TwoKinks_base0bps_slope624bps_kink8000bps_slope26001bps_base20bps_kink29000bps_jump34000bps_bpy42048000_To_bpy70080000_At_1768357800 (`0x979566a212460ca7ec767c9bf3deb3d6585a2b38`, chain 56)
- CheckpointView_From_TwoKinks_base0bps_slope625bps_kink8000bps_slope26000bps_base20bps_kink29000bps_jump34000bps_bpy42048000_To_bpy70080000_At_1768357800 (`0x381829dbb51cd74f3172574f4111f2f58d8b0e53`, chain 56)
- CheckpointView_From_TwoKinks_base0bps_slope654bps_kink8400bps_slope22499bps_base20bps_kink29200bps_jump40625bps_bpy42048000_To_bpy70080000_At_1768357800 (`0x2cf0e211c99dfd28892cf80d142aa27a9042dbf4`, chain 56)
- CheckpointView_From_WhitePaperInterestRateModel_base0bps_slope0bps_bpy10512000_To_bpy21024000_At_1745903100 (`0x4088e11df221314896c2aaed72074f89928e5b59`, chain 56)
- CheckpointView_From_WhitePaperInterestRateModel_base0bps_slope0bps_bpy21024000_To_bpy42048000_At_1751250600 (`0x02448c05fdd44c1dccdc54a29fe02e8f43f31bf7`, chain 56)
- CheckpointView_From_WhitePaperInterestRateModel_base0bps_slope0bps_bpy42048000_To_bpy70080000_At_1768357800 (`0xa60b28fddaab87240c3af319892e7a4ad6fbf41f`, chain 56)
- CheckpointView_From_WhitePaperInterestRateModel_base0bps_slope24000bps_bpy10512000_To_bpy21024000_At_1745903100 (`0x9318f66729007281d4c4545c04b046c437bd77e5`, chain 56)
- CheckpointView_From_WhitePaperInterestRateModel_base0bps_slope24000bps_bpy21024000_To_bpy42048000_At_1751250600 (`0x170be58d5c1983f03dc287ab9abffc7da16f862b`, chain 56)
- CheckpointView_From_WhitePaperInterestRateModel_base0bps_slope24000bps_bpy42048000_To_bpy70080000_At_1768357800 (`0x9e3f9a97285e2694ea32c37ebffe427492888edd`, chain 56)
- ComptrollerLens (`0xd5deb631cb6c6a667e926a482aadc95a471b120c`, chain 56)
- DefaultProxyAdmin (`0xeaf9490cbea6ff9ba1d23671c39a799ced0dced2`, chain 10)
- DefaultProxyAdmin (`0x6beb6d2695b67feb73ad4f172e8e2975497187e4`, chain 56)
- DefaultProxyAdmin (`0x78e9fff2ab8daab8559070d897c399e5e1c5074c`, chain 130)
- DefaultProxyAdmin (`0x8ea1a989b036f7ef21bb95ce4e7961522ca00287`, chain 324)
- DefaultProxyAdmin (`0x7b06ef6b68648c61afe0f715740fe3950b90746b`, chain 8453)
- JumpRateModel_base0bps_slope10000bps_jump25000bps_kink8000bps_bpy10512000 (`0x9e8fbacbfbd811fc561af3af7df8e38ded4c52f3`, chain 56)
- JumpRateModel_base0bps_slope10000bps_jump50000bps_kink8000bps_bpy10512000 (`0x958f4c84d3ad523fa9936dc465a123c7ad43d69b`, chain 56)
- JumpRateModel_base0bps_slope1000bps_jump20000bps_kink7500bps_bpy10512000 (`0x871a82082482657b9df62dea21509023f28c147c`, chain 56)
- JumpRateModel_base0bps_slope1000bps_jump20000bps_kink7500bps_bpy21024000 (`0xd1e1f4fc02cae664893a227e7caadc50d655f8f7`, chain 56)
- JumpRateModel_base0bps_slope1000bps_jump20000bps_kink7500bps_bpy42048000 (`0xcc542643521d5e4de63f48682e7f577f805e7651`, chain 56)
- JumpRateModel_base0bps_slope1000bps_jump20000bps_kink7500bps_bpy70080000 (`0xe678399cf9a5964604dd055a4add1982d3f7d23f`, chain 56)
- JumpRateModel_base0bps_slope1000bps_jump25000bps_kink8000bps_bpy10512000 (`0x62a8919c4c413fd4f9aef7348540bc4b1b5cc805`, chain 56)
- JumpRateModel_base0bps_slope1000bps_jump25000bps_kink8000bps_bpy21024000 (`0x4efbf2f6e63ecad12de015e5be2a1094721633ee`, chain 56)
- JumpRateModel_base0bps_slope1000bps_jump25000bps_kink8000bps_bpy42048000 (`0x6d7c746d4a9170f1731f89580414235da47787fc`, chain 56)
- JumpRateModel_base0bps_slope1000bps_jump25000bps_kink8000bps_bpy70080000 (`0xad6aa8bb4829560412a94aa930745f407bf8000b`, chain 56)
- JumpRateModel_base0bps_slope1000bps_jump50000bps_kink8000bps_bpy10512000 (`0x05c68ee7c9c66be3a42476fe3838de65dde968f1`, chain 56)
- JumpRateModel_base0bps_slope1000bps_jump50000bps_kink8000bps_bpy21024000 (`0x76cb08c25ef426f5444c28179d05f77cb1a6abd0`, chain 56)
- JumpRateModel_base0bps_slope1000bps_jump50000bps_kink8000bps_bpy42048000 (`0xe3394c5a871bf893b41196f0aa843c64c2da0a5c`, chain 56)
- JumpRateModel_base0bps_slope1000bps_jump50000bps_kink8000bps_bpy70080000 (`0xf2f2ae5480c4527787fb7cde1ed9a3edfd40a60d`, chain 56)
- JumpRateModel_base0bps_slope1250bps_jump25000bps_kink8000bps_bpy10512000 (`0x1485a27d95d3d2878a6641055dd3a643f296ccf6`, chain 56)
- JumpRateModel_base0bps_slope1250bps_jump50000bps_kink8000bps_bpy10512000 (`0x9fca5d66cc0df990080825051e825a8104a7ffa4`, chain 56)
- JumpRateModel_base0bps_slope1500bps_jump30000bps_kink6000bps_bpy10512000 (`0xea464dfb1b0bb8964c250427bb5b0dd4f315141a`, chain 56)
- JumpRateModel_base0bps_slope1500bps_jump30000bps_kink6000bps_bpy21024000 (`0x927ea36ce0a926b0ed9358a0ed899efce4574fc0`, chain 56)
- JumpRateModel_base0bps_slope1500bps_jump30000bps_kink6000bps_bpy42048000 (`0x7b91a129a4c58c1ea9b805e4d7ef677c290a003a`, chain 56)
- JumpRateModel_base0bps_slope1500bps_jump30000bps_kink6000bps_bpy70080000 (`0xabde9599a4aece4fec59fbf2b8445149bc8b2c70`, chain 56)
- JumpRateModel_base0bps_slope1750bps_jump25000bps_kink8000bps_bpy10512000 (`0x0be3ca99fbbe16b86c3b00e2c4c30c3892f31647`, chain 56)
- JumpRateModel_base0bps_slope1750bps_jump25000bps_kink8000bps_bpy21024000 (`0x16d55426f0439613260e1f4b2a76b493b36f8ba5`, chain 56)
- JumpRateModel_base0bps_slope2000bps_jump30000bps_kink5000bps_bpy10512000 (`0x637e19b6ee87758506d6ea34bf11be8f43ad8d61`, chain 56)
- JumpRateModel_base0bps_slope2000bps_jump30000bps_kink5000bps_bpy21024000 (`0xb831f6ac79121d0a7cf11a452e4254516899ea16`, chain 56)
- JumpRateModel_base0bps_slope2000bps_jump30000bps_kink5000bps_bpy42048000 (`0x06ff3190895aec1656b99acdb3a4d556b4205669`, chain 56)
- JumpRateModel_base0bps_slope2000bps_jump30000bps_kink5000bps_bpy70080000 (`0x1d5f9752ba40cf7047db2e24cb6aa196e3c334da`, chain 56)
- JumpRateModel_base0bps_slope200bps_jump400bps_kink8000bps_bpy70080000 (`0xcdae733d8ab71cdd4d183cd25685500e8f502329`, chain 56)
- JumpRateModel_base0bps_slope300bps_jump45000bps_kink9000bps_bpy10512000 (`0x3aa125788fc6b9f801772baea887aa40328015e9`, chain 56)
- JumpRateModel_base0bps_slope300bps_jump45000bps_kink9000bps_bpy21024000 (`0xffb9d1556cb6323115c0e8658edfb4c090a427e8`, chain 56)
- JumpRateModel_base0bps_slope300bps_jump45000bps_kink9000bps_bpy42048000 (`0x5d1dd238f70854f4914db67035f79f42a38c79c2`, chain 56)
- JumpRateModel_base0bps_slope300bps_jump45000bps_kink9000bps_bpy70080000 (`0xce1a0389767cf155b0f3c475c1283e1951923770`, chain 56)
- JumpRateModel_base0bps_slope667bps_jump62700bps_kink7500bps_bpy70080000 (`0xe589e884f69df3137b43a760c4ec9e55d944439d`, chain 56)
- JumpRateModel_base0bps_slope687bps_jump25000bps_kink8000bps_bpy10512000 (`0xb105f9b511836cc7df9f3dd0ec4873766b5b6660`, chain 56)
- JumpRateModel_base0bps_slope750bps_jump50000bps_kink8000bps_bpy10512000 (`0xdef4b9462223c9a44e61d217a145063c7836fd7b`, chain 56)
- JumpRateModel_base0bps_slope750bps_jump50000bps_kink8000bps_bpy21024000 (`0x76eddefad0c348b0075217ee8d9e5c1eb4bb4fd3`, chain 56)
- JumpRateModel_base0bps_slope750bps_jump5000bps_kink8000bps_bpy10512000 (`0xf874a969d504e0b1b2021d76a2c438b841124715`, chain 56)
- JumpRateModel_base0bps_slope750bps_jump5000bps_kink8000bps_bpy21024000 (`0x8c60091fde10bc44143cb7c306ff954e047e164c`, chain 56)
- JumpRateModel_base0bps_slope750bps_jump5000bps_kink8000bps_bpy42048000 (`0xaf1618c88b1c6304f0f9c76ab722088a4268fd3d`, chain 56)
- JumpRateModel_base0bps_slope750bps_jump5000bps_kink8000bps_bpy70080000 (`0xcf4c75398dad73f16c762026144a1496f6869cd1`, chain 56)
- JumpRateModel_base0bps_slope875bps_jump25000bps_kink8000bps_bpy10512000 (`0xbe4609d972fdebaa9dc870f4a957f40c301beb1d`, chain 56)
- JumpRateModel_base0bps_slope875bps_jump50000bps_kink8000bps_bpy10512000 (`0xe19c14171c2ac6ca63e008133e4b0d8571164ba3`, chain 56)
- JumpRateModel_base0bps_slope900bps_jump20000bps_kink5000bps_bpy10512000 (`0xf092558ed27df036144f6d92cc657bac9682a324`, chain 56)
- JumpRateModel_base0bps_slope900bps_jump20000bps_kink5000bps_bpy21024000 (`0x52f63686d09d92c367c90bcdbf79a562f81bd6bf`, chain 56)
- JumpRateModel_base0bps_slope900bps_jump20000bps_kink5000bps_bpy42048000 (`0x68cb22f8664546e19b7bfcc4f86fd0fcbdd0b02e`, chain 56)
- JumpRateModel_base0bps_slope900bps_jump20000bps_kink5000bps_bpy70080000 (`0x6463ab803ff081616ac4dac31b9b66854cc28bc0`, chain 56)
- JumpRateModel_base0bps_slope900bps_jump20000bps_kink7500bps_bpy10512000 (`0xaa69d9b80b5b303f66227932489669538027783f`, chain 56)
- JumpRateModel_base0bps_slope900bps_jump20000bps_kink7500bps_bpy21024000 (`0xbb32a50fea5ab822a1b52245d1fbea7fc49659fc`, chain 56)
- JumpRateModel_base0bps_slope900bps_jump20000bps_kink7500bps_bpy42048000 (`0x8ad7d983196ceb75dc4b28d0b1fe64f95547692e`, chain 56)
- JumpRateModel_base0bps_slope900bps_jump35000bps_kink4500bps_bpy10512000 (`0x77c50b4d5d8b84511a4787aaf5bc22e5a496b1ef`, chain 56)
- JumpRateModel_base0bps_slope900bps_jump35000bps_kink4500bps_bpy21024000 (`0x4699ba39b8e7da3ef178020b69dcb9e25103d0a3`, chain 56)
- JumpRateModel_base0bps_slope900bps_jump35000bps_kink4500bps_bpy42048000 (`0x2349dece4b56541de2dc7f2c3f433f95095d4b8b`, chain 56)
- JumpRateModel_base0bps_slope900bps_jump35000bps_kink4500bps_bpy70080000 (`0x8ecfd11473c30a508a386bea715f0cd7b9bad7a5`, chain 56)
- JumpRateModel_base200bps_slope10000bps_jump30000bps_kink100bps_bpy10512000 (`0x6b7c3d1ced49604c66e2c8125989e78b1e5356f5`, chain 56)
- JumpRateModel_base200bps_slope10000bps_jump30000bps_kink100bps_bpy21024000 (`0xe42b289b630930edf126ca944c0fc6899a0b249b`, chain 56)
- JumpRateModel_base200bps_slope10000bps_jump30000bps_kink100bps_bpy42048000 (`0xcb7f4fe025ee97c544c8ad367a497b54911f0026`, chain 56)
- JumpRateModel_base200bps_slope10000bps_jump30000bps_kink100bps_bpy70080000 (`0x875535eeeb75c5cd392708796c618cdac787a3cf`, chain 56)
- JumpRateModel_base200bps_slope1200bps_jump30000bps_kink6000bps_bpy10512000 (`0xda6cde1f47ae792fa40aa85c9f6901d5e64a6769`, chain 56)
- JumpRateModel_base200bps_slope1200bps_jump30000bps_kink6000bps_bpy21024000 (`0x02555201356b063cf2ff83d02d91af6529a69627`, chain 56)
- JumpRateModel_base200bps_slope1200bps_jump30000bps_kink6000bps_bpy42048000 (`0xd26ffba546e0447668f8c7b86811f31f010c7803`, chain 56)
- JumpRateModel_base200bps_slope1200bps_jump30000bps_kink6000bps_bpy70080000 (`0xbca3d5e7a66d97e0415662c2394ed2605944b614`, chain 56)
- JumpRateModel_base200bps_slope1500bps_jump30000bps_kink6000bps_bpy10512000 (`0x32450305d6c692269b3cbf9730d99104f80fce23`, chain 56)
- JumpRateModel_base200bps_slope1500bps_jump30000bps_kink6000bps_bpy21024000 (`0xfda9274718c1c64f0631396eb8cac12625309bfe`, chain 56)
- JumpRateModel_base200bps_slope1500bps_jump30000bps_kink6000bps_bpy42048000 (`0x5ef791b3b73cbb1b961cd0136d0ebc3f9309710e`, chain 56)
- JumpRateModel_base200bps_slope1500bps_jump30000bps_kink6000bps_bpy70080000 (`0xdb1869ca9e008e102350f2e0c356500503a4d043`, chain 56)
- JumpRateModel_base200bps_slope2000bps_jump30000bps_kink5000bps_bpy10512000 (`0x2de4739a9c68b02b54c0d8323752551d724b3cc2`, chain 56)
- JumpRateModel_base200bps_slope2000bps_jump30000bps_kink5000bps_bpy21024000 (`0x1063a02e500ae1448ddd6767ead97368feecafe7`, chain 56)
- JumpRateModel_base200bps_slope2000bps_jump30000bps_kink5000bps_bpy42048000 (`0x6bbb4faae927df5a299892217dfb354e5f5000a2`, chain 56)
- JumpRateModel_base200bps_slope2000bps_jump30000bps_kink5000bps_bpy70080000 (`0x905006dcd5dbaa9b67359bcb341a0c49afc8d0a6`, chain 56)
- JumpRateModel_base25bps_slope367bps_jump20000bps_kink7500bps_bpy42048000 (`0xe74fe49e07c8f0cc4398a481206e2d835b88b8f4`, chain 56)
- JumpRateModel_base25bps_slope367bps_jump20000bps_kink7500bps_bpy70080000 (`0xae5a30d694dff2268c864834deda745b784c48bd`, chain 56)
- JumpRateModel_base30000bps_slope0bps_jump36364bps_kink4500bps_bpy70080000 (`0xc255352947ef3594c45b0fe8bcb690e51c3d744a`, chain 56)
- JumpRateModel_base5000bps_slope3000bps_jump30000bps_kink6000bps_bpy10512000 (`0x91475a3f288841bce074ec7edf27ec3fe58e18d1`, chain 56)
- JumpRateModel_base5000bps_slope3000bps_jump30000bps_kink6000bps_bpy21024000 (`0xf34afa5b6a9f828da41f146321221b60977f20e0`, chain 56)
- JumpRateModel_base5000bps_slope3000bps_jump30000bps_kink6000bps_bpy42048000 (`0x3dc78fe78fd3084caad0dc881b4eb98b6151a5f3`, chain 56)
- JumpRateModel_base5000bps_slope3000bps_jump30000bps_kink6000bps_bpy70080000 (`0xe1ac99e486ebecd40ab4c9ff29fe4d28be244d33`, chain 56)
- Liquidator / Liquidator_Proxy (`0x0870793286aada55d39ce7f82fb2766e8004cf43`, chain 56)
- Liquidator_Implementation (`0xc8c6f55debb47f724761920b79dc3ab5399dbc62`, chain 56)
- PegStability_USDT / PegStability_USDT_Proxy (`0xc138aa4e424d1a8539e8f38af5a754a2b7c3cc36`, chain 56)
- PegStability_USDT_Implementation (`0x9664568e5131e85f67d87fcd55b249f5d25fa43e`, chain 56)
- Prime / Prime_Proxy (`0x14c4525f47a7f7c984474979c57a2dccb8eacb39`, chain 1)
- Prime / Prime_Proxy (`0xe76d2173546be97fa6e18358027bde9742a649f7`, chain 10)
- Prime / Prime_Proxy (`0xbbcd063efe506c3d42a0fa2db5c08430288c71fc`, chain 56)
- Prime / Prime_Proxy (`0x600aff613d40d87c8fe90cb2e78e8e6667c0c872`, chain 130)
- Prime / Prime_Proxy (`0xdfe62dcba3ce0a827439390d7d45af8bae599978`, chain 324)
- Prime / Prime_Proxy (`0xd2e84244f1e9fca03ff024af35b8f9612d5d7a30`, chain 8453)
- Prime / Prime_Proxy (`0xfe69720424c954a2da05648a0fac84f9bf11ef49`, chain 42161)
- Prime_Implementation (`0xf039d6cf87e5d0315f3eb286bbeb39a7b3fe30df`, chain 1)
- Prime_Implementation (`0x7dcf81746ffa44c4469eba2f6db86ae3d5f92b10`, chain 10)
- Prime_Implementation (`0x1a6660059e61e88402bd34fc96c2332c5eeaf195`, chain 56)
- Prime_Implementation (`0xb0f8c39d9157243d3afd30be005459f0b8c61e95`, chain 130)
- Prime_Implementation (`0x9ac8abca1442ca53347e9f06851abfa2826ca972`, chain 324)
- Prime_Implementation (`0xdfcdd96a355991c313503afc0291b74f133d30b6`, chain 8453)
- Prime_Implementation (`0x62822989f8de6b2eb8d972e1b0e77e8a3286dbbc`, chain 42161)
- PrimeLeaderboard / PrimeLeaderboard_Proxy (`0x55e2ccf68b7a276dc28afa107997b8b1be932c0b`, chain 56)
- PrimeLeaderboard_Implementation (`0xd80de9ecb6596df95dd67af73b67122054c2d1a1`, chain 56)
- PrimeLens (`0x2f8c5e4562e22db7908c56bf99961c053436473c`, chain 56)
- PrimeLiquidityProvider / PrimeLiquidityProvider_Proxy (`0x8ba6affd0e7bcd0028d1639225c84ddcf53d8872`, chain 1)
- PrimeLiquidityProvider / PrimeLiquidityProvider_Proxy (`0x6412f6cd58d0182ae150b90b5a99e285b91c1a12`, chain 10)
- PrimeLiquidityProvider / PrimeLiquidityProvider_Proxy (`0x23c4f844ffddc6161174eb32c770d4d8c07833f2`, chain 56)
- PrimeLiquidityProvider / PrimeLiquidityProvider_Proxy (`0x045a45603e1b073f444fe3be7d5c7e0a5035afb7`, chain 130)
- PrimeLiquidityProvider / PrimeLiquidityProvider_Proxy (`0x0ede6d7fb474614c5d3d5a16581628bb96cb5dff`, chain 324)
- PrimeLiquidityProvider / PrimeLiquidityProvider_Proxy (`0xcb293eb385deff2cdeda4e7060974bb90ee0b208`, chain 8453)
- PrimeLiquidityProvider / PrimeLiquidityProvider_Proxy (`0x86bf21db200f29f21253080942be8af61046ec29`, chain 42161)
- PrimeLiquidityProvider_Implementation (`0xb41ff563c043f9e7825b6ed6d9233995ad65f3fd`, chain 1)
- PrimeLiquidityProvider_Implementation (`0xf3b8d6b1778548f975d6ebebd8a8e515832cfb0a`, chain 10)
- PrimeLiquidityProvider_Implementation (`0x46bed43b29d73835ff075bba1a0002a1ed1e4de8`, chain 56)
- PrimeLiquidityProvider_Implementation (`0xe20e19e37e240d5a19a3899e988c474a922bb8fc`, chain 130)
- PrimeLiquidityProvider_Implementation (`0x51b0368406e534dcbd353009492b11e8d359513e`, chain 324)
- PrimeLiquidityProvider_Implementation (`0x646df53c39e9220ddeb4a72f2c3a8bd50fbefa11`, chain 8453)
- PrimeLiquidityProvider_Implementation (`0x920079ffedbcc627a9d690c34c9206555e903dd6`, chain 42161)
- PrimeV2 / PrimeV2_Proxy (`0x059eaba8676b03e4e8f009efb7f587c28450f50f`, chain 56)
- PrimeV2_Implementation (`0x18cb7198cbb6d6e94001458cf3cf47c106d83a1b`, chain 56)
- PSMProxyAdmin (`0x3f918ba9446552ab184c6ffd2e2fcb1fa5ee1e59`, chain 56)
- SwapRouterCorePool (`0x8938e6da30b59c1e27d5f70a94688a89f7c815a4`, chain 56)
- Unitroller / Unitroller_Proxy (`0xfd36e2c2a6789db23113685031d7f16329158384`, chain 56)
- Unitroller_Implementation (`0xa66b2b5d50ce68a125bbad6b2265b637868c6e66`, chain 56)
- vAAVE (`0x26da28954763b92139ed49283625cecaf52c6f94`, chain 56)
- vADA (`0x9a0af7fdb2065ce470d72664de73cae409da28ec`, chain 56)
- VAI (`0x4bd17003473389a42daf6a0a729f6fdb328bbbd7`, chain 56)
- VAIVault (`0x0b4d7776b87ded4a0958e32d5155598057d2620d`, chain 56)
- VAIVaultProxy / VAIVaultProxy_Proxy (`0x0667eed0a0aab930af74a3dfedd263a73994f216`, chain 56)
- VAIVaultProxy_Implementation (`0xa52f2a56abb7cbdd378bc36c6088fafeaf9ac423`, chain 56)
- vBCH (`0x5f0388ebc2b94fa8e123f404b79ccf5f40b29176`, chain 56)
- vBETH (`0x972207a639cc1b374b893cc33fa251b55ceb7c07`, chain 56)
- vBNB (`0xa07c5b74c9b40447a954e1466938b865b6bbea36`, chain 56)
- vBTC (`0x882c173bc7ff3b7786ca16dfed3dfffb9ee7847b`, chain 56)
- vBUSD (`0x95c78222b3d6e262426483d42cfa53685a67ab9d`, chain 56)
- vCAKE (`0x86ac3974e2bd0d60825230fa6f355ff11409df5c`, chain 56)
- vDAI (`0x334b3ecb4dca3593bccc3c7ebd1a1c1d1780fbf1`, chain 56)
- vDOGE (`0xec3422ef92b2fb59e84c8b02ba73f1fe84ed8d71`, chain 56)
- vDOT (`0x1610bc33319e9398de5f57b33a5b184c806ad217`, chain 56)
- VenusChainlinkOracle (`0x7fabdd617200c9cb4dcf3dd2c41273e60552068a`, chain 56)
- VenusLens (`0xe797804c5d4410777c70ef8769c4eb9c39bef662`, chain 56)
- vETH (`0xf508fcd89b8bd15579dc79a6827cb4686a3592c8`, chain 56)
- vFDUSD (`0xc4ef4229fec74ccfe17b2bdef7715fac740ba0ba`, chain 56)
- vFIL (`0xf91d58b5ae142dacc749f58a49fcbac340cb0343`, chain 56)
- vLINK (`0x650b940a1033b8a1b1873f78730fcfc73ec11f1f`, chain 56)
- vLTC (`0x57a5297f2cb2c0aac9d554660acd6d385ab50c6b`, chain 56)
- vLUNA (`0xb91a659e88b51474767cd97ef3196a3e7cedd2c8`, chain 56)
- vMATIC (`0x5c9476fcd6a4f9a3654139721c949c2233bbbbc8`, chain 56)
- vNVDAB (`0xeb8ca841cbe1bc4832a10b15c7dab1081edad371`, chain 56)
- vPT-clisBNB-25JUN2026 (`0x6d3bd68e90b42615cb5abf4b8de92b154adc435e`, chain 56)
- vPT-sUSDE-26JUN2025 (`0x9e4e5fed5ac5b9f732d0d850a615206330bf1866`, chain 56)
- vPT-USDe-30OCT2025 (`0x6d0cdb3355c93a0cd20071abbb3622731a95c73e`, chain 56)
- VRTConverterProxy / VRTConverterProxy_Proxy (`0x92572fb60f4874d37917c53599cae5b085b9facd`, chain 56)
- VRTConverterProxy_Implementation (`0x3192d0fb11c15629c403a6416abfcd7587b180b7`, chain 56)
- vSOL (`0xbf515ba4d1b52ffdceabf20d31d705ce789f2cec`, chain 56)
- vSolvBTC (`0xf841cb62c19fcd4ff5cd0aab5939f3140baac3ea`, chain 56)
- vSPCXB (`0xc36dfacc7a125859c106f29b9f2d874ccf29a55a`, chain 56)
- vSXP (`0x2ff3d0f6990a40261c66e1ff2017acbc282eb6d0`, chain 56)
- vTHE (`0x86e06eafa6a1ea631eab51de500e3d474933739f`, chain 56)
- vTRX (`0xc5d3466aa484b040ee977073fcf337f2c00071c1`, chain 56)
- vTRXOLD (`0x61edcfe8dd6ba3c891cb9bec2dc7657b3b422e93`, chain 56)
- vTSLAB (`0x97421799419eb782628e73e7220d8e0a207469a3`, chain 56)
- vTUSD (`0xbf762cd5991ca1dcddac9ae5c638f5b5dc3bee6e`, chain 56)
- vTUSDOLD (`0x08ceb3f4a7ed3500ca0982bcd0fc7816688084c3`, chain 56)
- vTWT (`0x4d41a36d04d97785bcea57b057c412b278e6edcc`, chain 56)
- vU (`0x3d5e269787d562b74acc55f18bd26c5d09fa245e`, chain 56)
- vUNI (`0x27ff564707786720c71a2e5c1490a63266683612`, chain 56)
- vUSD1 (`0x0c1da220d301155b87318b90692da8dc43b67340`, chain 56)
- vUSDC (`0xeca88125a5adbe82614ffc12d0db554e2e2867c8`, chain 56)
- vUSDe (`0x74ca6930108f775cc667894eea33843e691680d7`, chain 56)
- vUSDT (`0xfd5840cd36d94d7229439859c0112a4185bc0255`, chain 56)
- vUST (`0x78366446547d062f45b4c0f320cdaa6d710d87bb`, chain 56)
- vWBETH (`0x6cfdec747f37daf3b87a35a1d9c8ad3063a1a8a0`, chain 56)
- vWBNB (`0x6bca74586218db34cdb402295796b79663d816e9`, chain 56)
- vXAUM (`0x92e6ea74a1a3047dabf4186405a21c7d63a0612a`, chain 56)
- vXRP (`0xb248a295732e0225acd3337607cc01068e3b9c10`, chain 56)
- vXVS (`0x151b1e2635a717bcdc836ecd6fbb62b674fe3e1d`, chain 56)
- WhitePaperInterestRateModel_base0bps_slope0bps_bpy10512000 (`0x93fbc248e83bc8931141ffc7f457ec882595135a`, chain 56)
- WhitePaperInterestRateModel_base0bps_slope0bps_bpy21024000 (`0xada65304dddc86d2873cfc018486b7f4f53edb7e`, chain 56)
- WhitePaperInterestRateModel_base0bps_slope0bps_bpy42048000 (`0xb66d19e4bff26eae1c5c14e1daab418b9573b875`, chain 56)
- WhitePaperInterestRateModel_base0bps_slope0bps_bpy70080000 (`0x42ec3eb6f23460dfdfa3ae5688f3415cdfe0c6ad`, chain 56)
- WhitePaperInterestRateModel_base0bps_slope24000bps_bpy10512000 (`0xa166ca91a570747708a318a771f0c9ab84dd984b`, chain 56)
- WhitePaperInterestRateModel_base0bps_slope24000bps_bpy21024000 (`0x2d0a2955c3321743ea3b63109ce2d7e388bb35db`, chain 56)
- WhitePaperInterestRateModel_base0bps_slope24000bps_bpy42048000 (`0x92cdf922902440fdcdd1c987f984bf86eed10397`, chain 56)
- WhitePaperInterestRateModel_base0bps_slope24000bps_bpy70080000 (`0xf83362af1722b1762e21369225901b90d9b980d9`, chain 56)
- WhitePaperInterestRateModel_base2629bps_slope30000bps_bpy10512000 (`0xb53504cb74e395ec10b9bcec7089bdaef1cca042`, chain 56)
- XVS (`0xcf6bb5389c92bdda8a3747ddb454cb7a64626c63`, chain 56)
- XVSStore (`0x1db646e1ab05571af99e47e8f909801e5c99d37b`, chain 1)
- XVSStore (`0xfe548630954129923f63113923ef5373e10589d3`, chain 10)
- XVSStore (`0x1e25cf968f12850003db17e0dba32108509c4359`, chain 56)
- XVSStore (`0x0ee4b35c2ceab19856bf35505f81608d12b2a7bb`, chain 130)
- XVSStore (`0xc3279442a5acacf0a2ecb015d1cddbb3e0f3f775`, chain 204)
- XVSStore (`0x84266f552756cbed893b1ffa85248cd99501e3ce`, chain 324)
- XVSStore (`0x11b084cfa559a82aac0ccd159dbea27899c7955a`, chain 8453)
- XVSStore (`0x507d9923c954aad8ec530ed8dedb75bfc893ec5e`, chain 42161)
- XVSVaultProxy (`0xa0882c2d5df29233a092d2887a258c2b90e9b994`, chain 1)
- XVSVaultProxy (`0x133120607c018c949e91ae333785519f6d947e01`, chain 10)
- XVSVaultProxy (`0x5eca0fbbc5e7bf49dbfb1953a92784f8e4248ef6`, chain 130)
- XVSVaultProxy (`0x7dc969122450749a8b0777c0e324522d67737988`, chain 204)
- XVSVaultProxy (`0xbbb3c88192a5b0db759229bef49dcd1f168f326f`, chain 324)
- XVSVaultProxy (`0x708b54f2c3f3606ea48a8d94dab88d9ab22d7fcd`, chain 8453)
- XVSVaultProxy (`0x8b79692aab2822be30a6382eb04763a74752d5b4`, chain 42161)
- XVSVaultProxy / XVSVaultProxy_Proxy (`0x051100480289e704d20e9db4804837068f3f9204`, chain 56)
- XVSVaultProxy_Implementation (`0x437042777255a1f25be60ed25c814dea6e43bc28`, chain 1)
- XVSVaultProxy_Implementation (`0x8b8651eeb002a7991f2287500b17a395e8cfe7d9`, chain 10)
- XVSVaultProxy_Implementation (`0x74c8a97be672db3e9a224648be566ada5f43b378`, chain 56)
- XVSVaultProxy_Implementation (`0x2ba0f45f7368d2a56d0c9e5a29af363987be1d02`, chain 130)
- XVSVaultProxy_Implementation (`0x785bef8b6db40e86fa3749b44cd67c14945e2a71`, chain 204)
- XVSVaultProxy_Implementation (`0x513323f8bd847bd4c7c73dd69098b38789ae0590`, chain 324)
- XVSVaultProxy_Implementation (`0x322f1a2e03f089f8ce510855e793970d6f0efcf9`, chain 8453)
- XVSVaultProxy_Implementation (`0x4c4bedc003e4e2f3a057dec35aef26f64cb07384`, chain 42161)
- XVSVesting / XVSVestingProxy_Implementation (`0xa9dd0536ab0699d60c28ce369ff366a1e621bff1`, chain 56)
- XVSVestingProxy / XVSVestingProxy_Proxy (`0xb28dec7c7ac80f4d0b6a1b711c39e444cde8b2ce`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 260; live-surface rows included: 260 (260 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 271/509 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/258 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 269 own, 240 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations shown in the inventory but excluded from coverage (4 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 271 of 509 unique; 238 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/260
- Verified + Unaudited implementations: 260
- Verified by bytecode match: 0
- Unverified implementations: 249
- Unique implementations: 509
- Raw deployments: 509
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (260)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CheckpointView_From_JumpRateModel_base0bps_slope1000bps_jump20000bps_kink7500bps_bpy10512000_To_bpy21024000_At_1745903100 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396004 | `0x747943c45eb782db9e04f6f54ea5f27cc6627e4a` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base0bps_slope1000bps_jump20000bps_kink7500bps_bpy21024000_To_bpy42048000_At_1751250600 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396100 | `0xd7079bce4a9ca17a71787928e40252547444c3d3` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base0bps_slope1000bps_jump20000bps_kink7500bps_bpy42048000_To_bpy70080000_At_1768357800 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395930 | `0x0c61acdc057e894ec7c282ec779b67ef654addce` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base0bps_slope1000bps_jump25000bps_kink8000bps_bpy10512000_To_bpy21024000_At_1745903100 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396131 | `0xf8e641695f89a5919df03edd9ecda3d0dc89aaa9` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base0bps_slope1000bps_jump25000bps_kink8000bps_bpy21024000_To_bpy42048000_At_1751250600 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396074 | `0xbb951b0b38ae86cef2f3d642f5ac7591fd5d2f4b` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base0bps_slope1000bps_jump25000bps_kink8000bps_bpy42048000_To_bpy70080000_At_1768357800 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396026 | `0x8afae0979c793411648e476388c83e190285c9b1` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base0bps_slope1000bps_jump50000bps_kink8000bps_bpy21024000_To_bpy42048000_At_1751250600 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396028 | `0x8d3a052b88acf368da24f5313901e4e63e0e78cf` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base0bps_slope1000bps_jump50000bps_kink8000bps_bpy42048000_To_bpy70080000_At_1768357800 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396104 | `0xdba6a250027049c4033970e224e61edcd84ea630` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base0bps_slope1500bps_jump30000bps_kink6000bps_bpy10512000_To_bpy21024000_At_1745903100 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396012 | `0x7857738486e813b5bcb6ca62b46f6b2ee029609b` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base0bps_slope1500bps_jump30000bps_kink6000bps_bpy21024000_To_bpy42048000_At_1751250600 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396041 | `0x968d2f613f0517eae22f898529c4658db8c578bc` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base0bps_slope1500bps_jump30000bps_kink6000bps_bpy42048000_To_bpy70080000_At_1768357800 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396084 | `0xc3723cf801cdbb8c9a79bd67b17d20ca9d5ec3ed` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base0bps_slope1750bps_jump25000bps_kink8000bps_bpy10512000_To_bpy21024000_At_1745903100 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395967 | `0x42ef8eccee0782a4e644b3eb39761fb6c696ccf2` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base0bps_slope2000bps_jump30000bps_kink5000bps_bpy10512000_To_bpy21024000_At_1745903100 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396018 | `0x83671a928e8d4c34f9f8fad06bd8356fdb524a0f` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base0bps_slope2000bps_jump30000bps_kink5000bps_bpy21024000_To_bpy42048000_At_1751250600 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395933 | `0x107f2b97dcd259aa373709bf1021ad120a2fed98` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base0bps_slope2000bps_jump30000bps_kink5000bps_bpy42048000_To_bpy70080000_At_1768357800 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395954 | `0x30457d82246512b891dad51ecc1deabfb1870f8c` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base0bps_slope300bps_jump45000bps_kink9000bps_bpy10512000_To_bpy21024000_At_1745903100 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396117 | `0xebb072c6336f1d0a7d8bbf1c82d9c9f7d6485fa4` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base0bps_slope300bps_jump45000bps_kink9000bps_bpy21024000_To_bpy42048000_At_1751250600 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395959 | `0x38dd273fe7590403f554f350a7c3c592e8227eb7` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base0bps_slope300bps_jump45000bps_kink9000bps_bpy42048000_To_bpy70080000_At_1768357800 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396014 | `0x7c164b24b4393fe5cf5b8a1e1ebb6496ec7db4ef` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base0bps_slope750bps_jump50000bps_kink8000bps_bpy10512000_To_bpy21024000_At_1745903100 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396003 | `0x717dbabecc502c8712e7646ab6801f802a997c20` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base0bps_slope750bps_jump5000bps_kink8000bps_bpy10512000_To_bpy21024000_At_1745903100 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396056 | `0xa91617ba1a6ccf61a70c7e4b0a2a36c7726bb3f6` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base0bps_slope750bps_jump5000bps_kink8000bps_bpy21024000_To_bpy42048000_At_1751250600 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396137 | `0xfea1ca128ddbaf830efc4e0d5cd5e152ae504cc7` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base0bps_slope750bps_jump5000bps_kink8000bps_bpy42048000_To_bpy70080000_At_1768357800 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395977 | `0x4f0cfa4a97ee2e99d58724ae8cc169f9704d458d` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base0bps_slope900bps_jump20000bps_kink5000bps_bpy10512000_To_bpy21024000_At_1745903100 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395961 | `0x3ba66110c585cb4032a0289bf4cd8f983d556b10` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base0bps_slope900bps_jump20000bps_kink5000bps_bpy21024000_To_bpy42048000_At_1751250600 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395968 | `0x44a94a5e96bc6e36f4775e6229e2487860d4b7f0` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base0bps_slope900bps_jump20000bps_kink5000bps_bpy42048000_To_bpy70080000_At_1768357800 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395944 | `0x1ef3b851ce40b663dbbf91b86a4ee51a4a0999c5` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base0bps_slope900bps_jump20000bps_kink7500bps_bpy10512000_To_bpy21024000_At_1745903100 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395972 | `0x4a03abcc888020c779bb362b4c1d2869485bdee4` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base0bps_slope900bps_jump20000bps_kink7500bps_bpy21024000_To_bpy42048000_At_1751250600 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396055 | `0xa84189107af59bf132f3e7dd45dd201c0bb25bf4` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base0bps_slope900bps_jump35000bps_kink4500bps_bpy10512000_To_bpy21024000_At_1745903100 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396087 | `0xc6cc40ca4e90d151261f6524b97c3d4997479621` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base0bps_slope900bps_jump35000bps_kink4500bps_bpy21024000_To_bpy42048000_At_1751250600 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395969 | `0x44c49a0df8bbfa49ed967c65db0e92ba7b40df65` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base0bps_slope900bps_jump35000bps_kink4500bps_bpy42048000_To_bpy70080000_At_1768357800 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396002 | `0x6f869480eeebb66b58a930892addc0067fb43b20` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base200bps_slope10000bps_jump30000bps_kink100bps_bpy10512000_To_bpy21024000_At_1745903100 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395922 | `0x06da1e5e6ba1e0ca26ac92907b5b30d32789426a` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base200bps_slope10000bps_jump30000bps_kink100bps_bpy21024000_To_bpy42048000_At_1751250600 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396068 | `0xb2bd70ed38e928470b5af2f01e799c1d3b4d8796` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base200bps_slope10000bps_jump30000bps_kink100bps_bpy42048000_To_bpy70080000_At_1768357800 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396001 | `0x6d967293192e9cc395f4f6d2327c09a1f3f2c920` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base200bps_slope1200bps_jump30000bps_kink6000bps_bpy10512000_To_bpy21024000_At_1745903100 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396097 | `0xd574f5186ceef3f4801a9a8c6fe257ef71493371` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base200bps_slope1200bps_jump30000bps_kink6000bps_bpy21024000_To_bpy42048000_At_1751250600 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396127 | `0xf7b5f7856e0520d66c03f32d576eecd9156dab29` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base200bps_slope1200bps_jump30000bps_kink6000bps_bpy42048000_To_bpy70080000_At_1768357800 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396064 | `0xb0b318816537aa1a63fb30ceca9f5f39f8bb9770` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base200bps_slope1500bps_jump30000bps_kink6000bps_bpy10512000_To_bpy21024000_At_1745903100 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395931 | `0x0e6f99766c947f85c242b8328837b39c8bb887c6` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base200bps_slope1500bps_jump30000bps_kink6000bps_bpy21024000_To_bpy42048000_At_1751250600 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395934 | `0x1326346bda0bfc3ac7f5bfb0f6ea7f4302a65bcd` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base200bps_slope1500bps_jump30000bps_kink6000bps_bpy42048000_To_bpy70080000_At_1768357800 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395985 | `0x6125bc439ee2caa2fd737b14d0f68b364099a19e` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base200bps_slope2000bps_jump30000bps_kink5000bps_bpy10512000_To_bpy21024000_At_1745903100 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396120 | `0xed279b5eade8e54175941f188d16067c6341cd1a` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base200bps_slope2000bps_jump30000bps_kink5000bps_bpy21024000_To_bpy42048000_At_1751250600 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396007 | `0x7611a9a201524594633b2eb5a8ea42a9418c9811` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base200bps_slope2000bps_jump30000bps_kink5000bps_bpy42048000_To_bpy70080000_At_1768357800 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396099 | `0xd6b3a3e73860a5b75c130be1afb9d76c2e572373` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base25bps_slope367bps_jump20000bps_kink7500bps_bpy42048000_To_bpy70080000_At_1768357800 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396015 | `0x7d47671514a1b13f0e376d70fcf13b2eb2694c3a` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base5000bps_slope3000bps_jump30000bps_kink6000bps_bpy10512000_To_bpy21024000_At_1745903100 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396110 | `0xe508af8fe95d508ef284ddfd76610edbef8cb8e9` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base5000bps_slope3000bps_jump30000bps_kink6000bps_bpy21024000_To_bpy42048000_At_1751250600 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396079 | `0xbf6bdb41dbcb5aba54189767d113e7c5155ab70a` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base5000bps_slope3000bps_jump30000bps_kink6000bps_bpy42048000_To_bpy70080000_At_1768357800 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395975 | `0x4e1fe613e8ce7d0df1e2f5bc48f50a18ef4d353c` | ⚠️ Unaudited |
| CheckpointView_From_TwoKinks_base0bps_slope1000bps_kink8000bps_slope27000bps_base20bps_kink29000bps_jump30000bps_bpy21024000_To_bpy42048000_At_1751250600 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395924 | `0x08437b3c0bea58fe6ec696a04c9675e0980b9469` | ⚠️ Unaudited |
| CheckpointView_From_TwoKinks_base0bps_slope1500bps_kink8000bps_slope29000bps_base20bps_kink29000bps_jump30000bps_bpy10512000_To_bpy21024000_At_1745903100 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396017 | `0x81d6ae3eea177d5d052b329dc74d39b935569359` | ⚠️ Unaudited |
| CheckpointView_From_TwoKinks_base0bps_slope312bps_kink8000bps_slope28499bps_base20bps_kink29000bps_jump34000bps_bpy42048000_To_bpy70080000_At_1768357800 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395990 | `0x650b2f1dc7f6e6734909ad1df2367537219584b8` | ⚠️ Unaudited |
| CheckpointView_From_TwoKinks_base0bps_slope350bps_kink8000bps_slope217500bps_base20bps_kink29000bps_jump30000bps_bpy10512000_To_bpy21024000_At_1745903100 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396133 | `0xfcfe909330ff50d2c72715cbec4e54c476c27cec` | ⚠️ Unaudited |
| CheckpointView_From_TwoKinks_base0bps_slope450bps_kink7000bps_slope214000bps_base20bps_kink28000bps_jump30000bps_bpy21024000_To_bpy42048000_At_1751250600 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396126 | `0xf78db86e58dc1b76569a0b3105ef5186033911a1` | ⚠️ Unaudited |
| CheckpointView_From_TwoKinks_base0bps_slope624bps_kink8000bps_slope26001bps_base20bps_kink29000bps_jump34000bps_bpy42048000_To_bpy70080000_At_1768357800 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396044 | `0x979566a212460ca7ec767c9bf3deb3d6585a2b38` | ⚠️ Unaudited |
| CheckpointView_From_TwoKinks_base0bps_slope625bps_kink8000bps_slope26000bps_base20bps_kink29000bps_jump34000bps_bpy42048000_To_bpy70080000_At_1768357800 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395958 | `0x381829dbb51cd74f3172574f4111f2f58d8b0e53` | ⚠️ Unaudited |
| CheckpointView_From_TwoKinks_base0bps_slope654bps_kink8400bps_slope22499bps_base20bps_kink29200bps_jump40625bps_bpy42048000_To_bpy70080000_At_1768357800 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395949 | `0x2cf0e211c99dfd28892cf80d142aa27a9042dbf4` | ⚠️ Unaudited |
| CheckpointView_From_WhitePaperInterestRateModel_base0bps_slope0bps_bpy10512000_To_bpy21024000_At_1745903100 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395965 | `0x4088e11df221314896c2aaed72074f89928e5b59` | ⚠️ Unaudited |
| CheckpointView_From_WhitePaperInterestRateModel_base0bps_slope0bps_bpy21024000_To_bpy42048000_At_1751250600 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395916 | `0x02448c05fdd44c1dccdc54a29fe02e8f43f31bf7` | ⚠️ Unaudited |
| CheckpointView_From_WhitePaperInterestRateModel_base0bps_slope0bps_bpy42048000_To_bpy70080000_At_1768357800 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396053 | `0xa60b28fddaab87240c3af319892e7a4ad6fbf41f` | ⚠️ Unaudited |
| CheckpointView_From_WhitePaperInterestRateModel_base0bps_slope24000bps_bpy10512000_To_bpy21024000_At_1745903100 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396036 | `0x9318f66729007281d4c4545c04b046c437bd77e5` | ⚠️ Unaudited |
| CheckpointView_From_WhitePaperInterestRateModel_base0bps_slope24000bps_bpy21024000_To_bpy42048000_At_1751250600 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395939 | `0x170be58d5c1983f03dc287ab9abffc7da16f862b` | ⚠️ Unaudited |
| CheckpointView_From_WhitePaperInterestRateModel_base0bps_slope24000bps_bpy42048000_To_bpy70080000_At_1768357800 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396046 | `0x9e3f9a97285e2694ea32c37ebffe427492888edd` | ⚠️ Unaudited |
| ComptrollerLens | unknown | project_anchor | own_supporting | 0 | bsc | unit-396098 | `0xd5deb631cb6c6a667e926a482aadc95a471b120c` | ⚠️ Unaudited |
| DefaultProxyAdmin | unknown | project_anchor | own_supporting | 0 | optimism | unit-395840 | `0xeaf9490cbea6ff9ba1d23671c39a799ced0dced2` | ⚠️ Unaudited |
| DefaultProxyAdmin | unknown | project_anchor | own_supporting | 0 | bsc | unit-395996 | `0x6beb6d2695b67feb73ad4f172e8e2975497187e4` | ⚠️ Unaudited |
| DefaultProxyAdmin | unknown | project_anchor | own_supporting | 0 | unichain | unit-395865 | `0x78e9fff2ab8daab8559070d897c399e5e1c5074c` | ⚠️ Unaudited |
| DefaultProxyAdmin | unknown | project_anchor | own_supporting | 0 | base | unit-396147 | `0x7b06ef6b68648c61afe0f715740fe3950b90746b` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope10000bps_jump25000bps_kink8000bps_bpy10512000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396048 | `0x9e8fbacbfbd811fc561af3af7df8e38ded4c52f3` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope10000bps_jump50000bps_kink8000bps_bpy10512000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396038 | `0x958f4c84d3ad523fa9936dc465a123c7ad43d69b` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope1000bps_jump20000bps_kink7500bps_bpy10512000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396021 | `0x871a82082482657b9df62dea21509023f28c147c` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope1000bps_jump20000bps_kink7500bps_bpy21024000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396095 | `0xd1e1f4fc02cae664893a227e7caadc50d655f8f7` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope1000bps_jump20000bps_kink7500bps_bpy42048000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396090 | `0xcc542643521d5e4de63f48682e7f577f805e7651` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope1000bps_jump20000bps_kink7500bps_bpy70080000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396112 | `0xe678399cf9a5964604dd055a4add1982d3f7d23f` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope1000bps_jump25000bps_kink8000bps_bpy10512000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395987 | `0x62a8919c4c413fd4f9aef7348540bc4b1b5cc805` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope1000bps_jump25000bps_kink8000bps_bpy21024000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395976 | `0x4efbf2f6e63ecad12de015e5be2a1094721633ee` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope1000bps_jump25000bps_kink8000bps_bpy42048000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396000 | `0x6d7c746d4a9170f1731f89580414235da47787fc` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope1000bps_jump25000bps_kink8000bps_bpy70080000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396060 | `0xad6aa8bb4829560412a94aa930745f407bf8000b` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope1000bps_jump50000bps_kink8000bps_bpy10512000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395920 | `0x05c68ee7c9c66be3a42476fe3838de65dde968f1` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope1000bps_jump50000bps_kink8000bps_bpy21024000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396008 | `0x76cb08c25ef426f5444c28179d05f77cb1a6abd0` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope1000bps_jump50000bps_kink8000bps_bpy42048000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396108 | `0xe3394c5a871bf893b41196f0aa843c64c2da0a5c` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope1000bps_jump50000bps_kink8000bps_bpy70080000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396122 | `0xf2f2ae5480c4527787fb7cde1ed9a3edfd40a60d` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope1250bps_jump25000bps_kink8000bps_bpy10512000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395935 | `0x1485a27d95d3d2878a6641055dd3a643f296ccf6` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope1250bps_jump50000bps_kink8000bps_bpy10512000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396049 | `0x9fca5d66cc0df990080825051e825a8104a7ffa4` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope1500bps_jump30000bps_kink6000bps_bpy10512000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396115 | `0xea464dfb1b0bb8964c250427bb5b0dd4f315141a` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope1500bps_jump30000bps_kink6000bps_bpy21024000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396033 | `0x927ea36ce0a926b0ed9358a0ed899efce4574fc0` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope1500bps_jump30000bps_kink6000bps_bpy42048000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396013 | `0x7b91a129a4c58c1ea9b805e4d7ef677c290a003a` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope1500bps_jump30000bps_kink6000bps_bpy70080000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396059 | `0xabde9599a4aece4fec59fbf2b8445149bc8b2c70` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope1750bps_jump25000bps_kink8000bps_bpy10512000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395928 | `0x0be3ca99fbbe16b86c3b00e2c4c30c3892f31647` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope1750bps_jump25000bps_kink8000bps_bpy21024000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395938 | `0x16d55426f0439613260e1f4b2a76b493b36f8ba5` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope2000bps_jump30000bps_kink5000bps_bpy10512000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395988 | `0x637e19b6ee87758506d6ea34bf11be8f43ad8d61` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope2000bps_jump30000bps_kink5000bps_bpy21024000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396071 | `0xb831f6ac79121d0a7cf11a452e4254516899ea16` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope2000bps_jump30000bps_kink5000bps_bpy42048000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395923 | `0x06ff3190895aec1656b99acdb3a4d556b4205669` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope2000bps_jump30000bps_kink5000bps_bpy70080000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395942 | `0x1d5f9752ba40cf7047db2e24cb6aa196e3c334da` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope200bps_jump400bps_kink8000bps_bpy70080000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396091 | `0xcdae733d8ab71cdd4d183cd25685500e8f502329` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope300bps_jump45000bps_kink9000bps_bpy10512000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395960 | `0x3aa125788fc6b9f801772baea887aa40328015e9` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope300bps_jump45000bps_kink9000bps_bpy21024000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396138 | `0xffb9d1556cb6323115c0e8658edfb4c090a427e8` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope300bps_jump45000bps_kink9000bps_bpy42048000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395982 | `0x5d1dd238f70854f4914db67035f79f42a38c79c2` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope300bps_jump45000bps_kink9000bps_bpy70080000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396092 | `0xce1a0389767cf155b0f3c475c1283e1951923770` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope667bps_jump62700bps_kink7500bps_bpy70080000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396111 | `0xe589e884f69df3137b43a760c4ec9e55d944439d` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope687bps_jump25000bps_kink8000bps_bpy10512000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396065 | `0xb105f9b511836cc7df9f3dd0ec4873766b5b6660` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope750bps_jump50000bps_kink8000bps_bpy10512000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396105 | `0xdef4b9462223c9a44e61d217a145063c7836fd7b` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope750bps_jump50000bps_kink8000bps_bpy21024000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396009 | `0x76eddefad0c348b0075217ee8d9e5c1eb4bb4fd3` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope750bps_jump5000bps_kink8000bps_bpy10512000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396130 | `0xf874a969d504e0b1b2021d76a2c438b841124715` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope750bps_jump5000bps_kink8000bps_bpy21024000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396027 | `0x8c60091fde10bc44143cb7c306ff954e047e164c` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope750bps_jump5000bps_kink8000bps_bpy42048000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396063 | `0xaf1618c88b1c6304f0f9c76ab722088a4268fd3d` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope750bps_jump5000bps_kink8000bps_bpy70080000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396093 | `0xcf4c75398dad73f16c762026144a1496f6869cd1` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope875bps_jump25000bps_kink8000bps_bpy10512000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396077 | `0xbe4609d972fdebaa9dc870f4a957f40c301beb1d` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope875bps_jump50000bps_kink8000bps_bpy10512000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396106 | `0xe19c14171c2ac6ca63e008133e4b0d8571164ba3` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope900bps_jump20000bps_kink5000bps_bpy10512000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396121 | `0xf092558ed27df036144f6d92cc657bac9682a324` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope900bps_jump20000bps_kink5000bps_bpy21024000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395978 | `0x52f63686d09d92c367c90bcdbf79a562f81bd6bf` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope900bps_jump20000bps_kink5000bps_bpy42048000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395992 | `0x68cb22f8664546e19b7bfcc4f86fd0fcbdd0b02e` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope900bps_jump20000bps_kink5000bps_bpy70080000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395989 | `0x6463ab803ff081616ac4dac31b9b66854cc28bc0` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope900bps_jump20000bps_kink7500bps_bpy10512000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396058 | `0xaa69d9b80b5b303f66227932489669538027783f` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope900bps_jump20000bps_kink7500bps_bpy21024000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396073 | `0xbb32a50fea5ab822a1b52245d1fbea7fc49659fc` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope900bps_jump20000bps_kink7500bps_bpy42048000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396025 | `0x8ad7d983196ceb75dc4b28d0b1fe64f95547692e` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope900bps_jump35000bps_kink4500bps_bpy10512000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396010 | `0x77c50b4d5d8b84511a4787aaf5bc22e5a496b1ef` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope900bps_jump35000bps_kink4500bps_bpy21024000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395970 | `0x4699ba39b8e7da3ef178020b69dcb9e25103d0a3` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope900bps_jump35000bps_kink4500bps_bpy42048000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395945 | `0x2349dece4b56541de2dc7f2c3f433f95095d4b8b` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope900bps_jump35000bps_kink4500bps_bpy70080000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396029 | `0x8ecfd11473c30a508a386bea715f0cd7b9bad7a5` | ⚠️ Unaudited |
| JumpRateModel_base200bps_slope10000bps_jump30000bps_kink100bps_bpy10512000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395993 | `0x6b7c3d1ced49604c66e2c8125989e78b1e5356f5` | ⚠️ Unaudited |
| JumpRateModel_base200bps_slope10000bps_jump30000bps_kink100bps_bpy21024000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396109 | `0xe42b289b630930edf126ca944c0fc6899a0b249b` | ⚠️ Unaudited |
| JumpRateModel_base200bps_slope10000bps_jump30000bps_kink100bps_bpy42048000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396089 | `0xcb7f4fe025ee97c544c8ad367a497b54911f0026` | ⚠️ Unaudited |
| JumpRateModel_base200bps_slope10000bps_jump30000bps_kink100bps_bpy70080000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396022 | `0x875535eeeb75c5cd392708796c618cdac787a3cf` | ⚠️ Unaudited |
| JumpRateModel_base200bps_slope1200bps_jump30000bps_kink6000bps_bpy10512000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396102 | `0xda6cde1f47ae792fa40aa85c9f6901d5e64a6769` | ⚠️ Unaudited |
| JumpRateModel_base200bps_slope1200bps_jump30000bps_kink6000bps_bpy21024000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395917 | `0x02555201356b063cf2ff83d02d91af6529a69627` | ⚠️ Unaudited |
| JumpRateModel_base200bps_slope1200bps_jump30000bps_kink6000bps_bpy42048000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396096 | `0xd26ffba546e0447668f8c7b86811f31f010c7803` | ⚠️ Unaudited |
| JumpRateModel_base200bps_slope1200bps_jump30000bps_kink6000bps_bpy70080000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396076 | `0xbca3d5e7a66d97e0415662c2394ed2605944b614` | ⚠️ Unaudited |
| JumpRateModel_base200bps_slope1500bps_jump30000bps_kink6000bps_bpy10512000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395956 | `0x32450305d6c692269b3cbf9730d99104f80fce23` | ⚠️ Unaudited |
| JumpRateModel_base200bps_slope1500bps_jump30000bps_kink6000bps_bpy21024000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396136 | `0xfda9274718c1c64f0631396eb8cac12625309bfe` | ⚠️ Unaudited |
| JumpRateModel_base200bps_slope1500bps_jump30000bps_kink6000bps_bpy42048000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395983 | `0x5ef791b3b73cbb1b961cd0136d0ebc3f9309710e` | ⚠️ Unaudited |
| JumpRateModel_base200bps_slope1500bps_jump30000bps_kink6000bps_bpy70080000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396103 | `0xdb1869ca9e008e102350f2e0c356500503a4d043` | ⚠️ Unaudited |
| JumpRateModel_base200bps_slope2000bps_jump30000bps_kink5000bps_bpy10512000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395951 | `0x2de4739a9c68b02b54c0d8323752551d724b3cc2` | ⚠️ Unaudited |
| JumpRateModel_base200bps_slope2000bps_jump30000bps_kink5000bps_bpy21024000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395932 | `0x1063a02e500ae1448ddd6767ead97368feecafe7` | ⚠️ Unaudited |
| JumpRateModel_base200bps_slope2000bps_jump30000bps_kink5000bps_bpy42048000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395994 | `0x6bbb4faae927df5a299892217dfb354e5f5000a2` | ⚠️ Unaudited |
| JumpRateModel_base200bps_slope2000bps_jump30000bps_kink5000bps_bpy70080000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396030 | `0x905006dcd5dbaa9b67359bcb341a0c49afc8d0a6` | ⚠️ Unaudited |
| JumpRateModel_base25bps_slope367bps_jump20000bps_kink7500bps_bpy42048000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396113 | `0xe74fe49e07c8f0cc4398a481206e2d835b88b8f4` | ⚠️ Unaudited |
| JumpRateModel_base25bps_slope367bps_jump20000bps_kink7500bps_bpy70080000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396062 | `0xae5a30d694dff2268c864834deda745b784c48bd` | ⚠️ Unaudited |
| JumpRateModel_base30000bps_slope0bps_jump36364bps_kink4500bps_bpy70080000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396082 | `0xc255352947ef3594c45b0fe8bcb690e51c3d744a` | ⚠️ Unaudited |
| JumpRateModel_base5000bps_slope3000bps_jump30000bps_kink6000bps_bpy10512000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396031 | `0x91475a3f288841bce074ec7edf27ec3fe58e18d1` | ⚠️ Unaudited |
| JumpRateModel_base5000bps_slope3000bps_jump30000bps_kink6000bps_bpy21024000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396124 | `0xf34afa5b6a9f828da41f146321221b60977f20e0` | ⚠️ Unaudited |
| JumpRateModel_base5000bps_slope3000bps_jump30000bps_kink6000bps_bpy42048000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395963 | `0x3dc78fe78fd3084caad0dc881b4eb98b6151a5f3` | ⚠️ Unaudited |
| JumpRateModel_base5000bps_slope3000bps_jump30000bps_kink6000bps_bpy70080000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396107 | `0xe1ac99e486ebecd40ab4c9ff29fe4d28be244d33` | ⚠️ Unaudited |
| Liquidator / Liquidator_Proxy | unknown | project_anchor | own_supporting | 0 | bsc | unit-395925 | `0x0870793286aada55d39ce7f82fb2766e8004cf43` | ⚠️ Unaudited |
| Liquidator_Implementation | unknown | project_anchor | own_supporting | 0 | bsc | unit-396088 | `0xc8c6f55debb47f724761920b79dc3ab5399dbc62` | ⚠️ Unaudited |
| PegStability_USDT / PegStability_USDT_Proxy | unknown | project_anchor | own_supporting | 0 | bsc | unit-396081 | `0xc138aa4e424d1a8539e8f38af5a754a2b7c3cc36` | ⚠️ Unaudited |
| PegStability_USDT_Implementation | unknown | project_anchor | own_supporting | 0 | bsc | unit-396040 | `0x9664568e5131e85f67d87fcd55b249f5d25fa43e` | ⚠️ Unaudited |
| Prime / Prime_Proxy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395826 | `0x14c4525f47a7f7c984474979c57a2dccb8eacb39` | ⚠️ Unaudited |
| Prime / Prime_Proxy | unknown | project_anchor | own_supporting | 0 | optimism | unit-395839 | `0xe76d2173546be97fa6e18358027bde9742a649f7` | ⚠️ Unaudited |
| Prime / Prime_Proxy | unknown | project_anchor | own_supporting | 0 | bsc | unit-396075 | `0xbbcd063efe506c3d42a0fa2db5c08430288c71fc` | ⚠️ Unaudited |
| Prime / Prime_Proxy | unknown | project_anchor | own_supporting | 0 | unichain | unit-395864 | `0x600aff613d40d87c8fe90cb2e78e8e6667c0c872` | ⚠️ Unaudited |
| Prime / Prime_Proxy | unknown | project_anchor | own_supporting | 0 | base | unit-396150 | `0xd2e84244f1e9fca03ff024af35b8f9612d5d7a30` | ⚠️ Unaudited |
| Prime / Prime_Proxy | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395907 | `0xfe69720424c954a2da05648a0fac84f9bf11ef49` | ⚠️ Unaudited |
| Prime_Implementation | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395832 | `0xf039d6cf87e5d0315f3eb286bbeb39a7b3fe30df` | ⚠️ Unaudited |
| Prime_Implementation | unknown | project_anchor | own_supporting | 0 | optimism | unit-395837 | `0x7dcf81746ffa44c4469eba2f6db86ae3d5f92b10` | ⚠️ Unaudited |
| Prime_Implementation | unknown | project_anchor | own_supporting | 0 | bsc | unit-395941 | `0x1a6660059e61e88402bd34fc96c2332c5eeaf195` | ⚠️ Unaudited |
| Prime_Implementation | unknown | project_anchor | own_supporting | 0 | unichain | unit-395867 | `0xb0f8c39d9157243d3afd30be005459f0b8c61e95` | ⚠️ Unaudited |
| Prime_Implementation | unknown | project_anchor | own_supporting | 0 | base | unit-396151 | `0xdfcdd96a355991c313503afc0291b74f133d30b6` | ⚠️ Unaudited |
| Prime_Implementation | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395902 | `0x62822989f8de6b2eb8d972e1b0e77e8a3286dbbc` | ⚠️ Unaudited |
| PrimeLeaderboard / PrimeLeaderboard_Proxy | unknown | project_anchor | own_supporting | 0 | bsc | unit-395979 | `0x55e2ccf68b7a276dc28afa107997b8b1be932c0b` | ⚠️ Unaudited |
| PrimeLeaderboard_Implementation | unknown | project_anchor | own_supporting | 0 | bsc | unit-396101 | `0xd80de9ecb6596df95dd67af73b67122054c2d1a1` | ⚠️ Unaudited |
| PrimeLens | unknown | project_anchor | own_supporting | 0 | bsc | unit-395952 | `0x2f8c5e4562e22db7908c56bf99961c053436473c` | ⚠️ Unaudited |
| PrimeLiquidityProvider / PrimeLiquidityProvider_Proxy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395829 | `0x8ba6affd0e7bcd0028d1639225c84ddcf53d8872` | ⚠️ Unaudited |
| PrimeLiquidityProvider / PrimeLiquidityProvider_Proxy | unknown | project_anchor | own_supporting | 0 | optimism | unit-395836 | `0x6412f6cd58d0182ae150b90b5a99e285b91c1a12` | ⚠️ Unaudited |
| PrimeLiquidityProvider / PrimeLiquidityProvider_Proxy | unknown | project_anchor | own_supporting | 0 | bsc | unit-395946 | `0x23c4f844ffddc6161174eb32c770d4d8c07833f2` | ⚠️ Unaudited |
| PrimeLiquidityProvider / PrimeLiquidityProvider_Proxy | unknown | project_anchor | own_supporting | 0 | unichain | unit-395860 | `0x045a45603e1b073f444fe3be7d5c7e0a5035afb7` | ⚠️ Unaudited |
| PrimeLiquidityProvider / PrimeLiquidityProvider_Proxy | unknown | project_anchor | own_supporting | 0 | base | unit-396149 | `0xcb293eb385deff2cdeda4e7060974bb90ee0b208` | ⚠️ Unaudited |
| PrimeLiquidityProvider / PrimeLiquidityProvider_Proxy | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395903 | `0x86bf21db200f29f21253080942be8af61046ec29` | ⚠️ Unaudited |
| PrimeLiquidityProvider_Implementation | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395831 | `0xb41ff563c043f9e7825b6ed6d9233995ad65f3fd` | ⚠️ Unaudited |
| PrimeLiquidityProvider_Implementation | unknown | project_anchor | own_supporting | 0 | optimism | unit-395841 | `0xf3b8d6b1778548f975d6ebebd8a8e515832cfb0a` | ⚠️ Unaudited |
| PrimeLiquidityProvider_Implementation | unknown | project_anchor | own_supporting | 0 | bsc | unit-395971 | `0x46bed43b29d73835ff075bba1a0002a1ed1e4de8` | ⚠️ Unaudited |
| PrimeLiquidityProvider_Implementation | unknown | project_anchor | own_supporting | 0 | unichain | unit-395868 | `0xe20e19e37e240d5a19a3899e988c474a922bb8fc` | ⚠️ Unaudited |
| PrimeLiquidityProvider_Implementation | unknown | project_anchor | own_supporting | 0 | base | unit-396145 | `0x646df53c39e9220ddeb4a72f2c3a8bd50fbefa11` | ⚠️ Unaudited |
| PrimeLiquidityProvider_Implementation | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395906 | `0x920079ffedbcc627a9d690c34c9206555e903dd6` | ⚠️ Unaudited |
| PrimeV2 / PrimeV2_Proxy | unknown | project_anchor | own_supporting | 0 | bsc | unit-395919 | `0x059eaba8676b03e4e8f009efb7f587c28450f50f` | ⚠️ Unaudited |
| PrimeV2_Implementation | unknown | project_anchor | own_supporting | 0 | bsc | unit-395940 | `0x18cb7198cbb6d6e94001458cf3cf47c106d83a1b` | ⚠️ Unaudited |
| PSMProxyAdmin | unknown | project_anchor | own_supporting | 0 | bsc | unit-395964 | `0x3f918ba9446552ab184c6ffd2e2fcb1fa5ee1e59` | ⚠️ Unaudited |
| SwapRouterCorePool | unknown | project_anchor | own_supporting | 0 | bsc | unit-396024 | `0x8938e6da30b59c1e27d5f70a94688a89f7c815a4` | ⚠️ Unaudited |
| Unitroller / Unitroller_Proxy | unknown | project_anchor | own_supporting | 0 | bsc | unit-396134 | `0xfd36e2c2a6789db23113685031d7f16329158384` | ⚠️ Unaudited |
| Unitroller_Implementation | unknown | project_anchor | own_supporting | 0 | bsc | unit-396054 | `0xa66b2b5d50ce68a125bbad6b2265b637868c6e66` | ⚠️ Unaudited |
| vAAVE | unknown | project_anchor | own_supporting | 0 | bsc | unit-395947 | `0x26da28954763b92139ed49283625cecaf52c6f94` | ⚠️ Unaudited |
| vADA | unknown | project_anchor | own_supporting | 0 | bsc | unit-396045 | `0x9a0af7fdb2065ce470d72664de73cae409da28ec` | ⚠️ Unaudited |
| VAI | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | unit-395973 | `0x4bd17003473389a42daf6a0a729f6fdb328bbbd7` | ⚠️ Unaudited |
| VAIVault | unknown | project_anchor | own_supporting | 0 | bsc | unit-395927 | `0x0b4d7776b87ded4a0958e32d5155598057d2620d` | ⚠️ Unaudited |
| VAIVaultProxy / VAIVaultProxy_Proxy | unknown | project_anchor | own_supporting | 0 | bsc | unit-395921 | `0x0667eed0a0aab930af74a3dfedd263a73994f216` | ⚠️ Unaudited |
| VAIVaultProxy_Implementation | unknown | project_anchor | own_supporting | 0 | bsc | unit-396052 | `0xa52f2a56abb7cbdd378bc36c6088fafeaf9ac423` | ⚠️ Unaudited |
| vBCH | unknown | project_anchor | own_supporting | 0 | bsc | unit-395984 | `0x5f0388ebc2b94fa8e123f404b79ccf5f40b29176` | ⚠️ Unaudited |
| vBETH | unknown | project_anchor | own_supporting | 0 | bsc | unit-396042 | `0x972207a639cc1b374b893cc33fa251b55ceb7c07` | ⚠️ Unaudited |
| vBNB | unknown | project_anchor | own_supporting | 0 | bsc | unit-396050 | `0xa07c5b74c9b40447a954e1466938b865b6bbea36` | ⚠️ Unaudited |
| vBTC | unknown | project_anchor | own_supporting | 0 | bsc | unit-396023 | `0x882c173bc7ff3b7786ca16dfed3dfffb9ee7847b` | ⚠️ Unaudited |
| vBUSD | unknown | project_anchor | own_supporting | 0 | bsc | unit-396039 | `0x95c78222b3d6e262426483d42cfa53685a67ab9d` | ⚠️ Unaudited |
| vCAKE | unknown | project_anchor | own_supporting | 0 | bsc | unit-396019 | `0x86ac3974e2bd0d60825230fa6f355ff11409df5c` | ⚠️ Unaudited |
| vDAI | unknown | project_anchor | own_supporting | 0 | bsc | unit-395957 | `0x334b3ecb4dca3593bccc3c7ebd1a1c1d1780fbf1` | ⚠️ Unaudited |
| vDOGE | unknown | project_anchor | own_supporting | 0 | bsc | unit-396118 | `0xec3422ef92b2fb59e84c8b02ba73f1fe84ed8d71` | ⚠️ Unaudited |
| vDOT | unknown | project_anchor | own_supporting | 0 | bsc | unit-395937 | `0x1610bc33319e9398de5f57b33a5b184c806ad217` | ⚠️ Unaudited |
| VenusChainlinkOracle | unknown | project_anchor | own_supporting | 0 | bsc | unit-396016 | `0x7fabdd617200c9cb4dcf3dd2c41273e60552068a` | ⚠️ Unaudited |
| VenusLens | unknown | project_anchor | own_supporting | 0 | bsc | unit-396114 | `0xe797804c5d4410777c70ef8769c4eb9c39bef662` | ⚠️ Unaudited |
| vETH | unknown | project_anchor | own_supporting | 0 | bsc | unit-396125 | `0xf508fcd89b8bd15579dc79a6827cb4686a3592c8` | ⚠️ Unaudited |
| vFDUSD | unknown | project_anchor | own_supporting | 0 | bsc | unit-396085 | `0xc4ef4229fec74ccfe17b2bdef7715fac740ba0ba` | ⚠️ Unaudited |
| vFIL | unknown | project_anchor | own_supporting | 0 | bsc | unit-396132 | `0xf91d58b5ae142dacc749f58a49fcbac340cb0343` | ⚠️ Unaudited |
| vLINK | unknown | project_anchor | own_supporting | 0 | bsc | unit-395991 | `0x650b940a1033b8a1b1873f78730fcfc73ec11f1f` | ⚠️ Unaudited |
| vLTC | unknown | project_anchor | own_supporting | 0 | bsc | unit-395980 | `0x57a5297f2cb2c0aac9d554660acd6d385ab50c6b` | ⚠️ Unaudited |
| vLUNA | unknown | project_anchor | own_supporting | 0 | bsc | unit-396072 | `0xb91a659e88b51474767cd97ef3196a3e7cedd2c8` | ⚠️ Unaudited |
| vMATIC | unknown | project_anchor | own_supporting | 0 | bsc | unit-395981 | `0x5c9476fcd6a4f9a3654139721c949c2233bbbbc8` | ⚠️ Unaudited |
| vNVDAB | unknown | project_anchor | own_supporting | 0 | bsc | unit-396116 | `0xeb8ca841cbe1bc4832a10b15c7dab1081edad371` | ⚠️ Unaudited |
| vPT-clisBNB-25JUN2026 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395999 | `0x6d3bd68e90b42615cb5abf4b8de92b154adc435e` | ⚠️ Unaudited |
| vPT-sUSDE-26JUN2025 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396047 | `0x9e4e5fed5ac5b9f732d0d850a615206330bf1866` | ⚠️ Unaudited |
| vPT-USDe-30OCT2025 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395998 | `0x6d0cdb3355c93a0cd20071abbb3622731a95c73e` | ⚠️ Unaudited |
| VRTConverterProxy / VRTConverterProxy_Proxy | unknown | project_anchor | own_supporting | 0 | bsc | unit-396032 | `0x92572fb60f4874d37917c53599cae5b085b9facd` | ⚠️ Unaudited |
| VRTConverterProxy_Implementation | unknown | project_anchor | own_supporting | 0 | bsc | unit-395955 | `0x3192d0fb11c15629c403a6416abfcd7587b180b7` | ⚠️ Unaudited |
| vSOL | unknown | project_anchor | own_supporting | 0 | bsc | unit-396078 | `0xbf515ba4d1b52ffdceabf20d31d705ce789f2cec` | ⚠️ Unaudited |
| vSolvBTC | unknown | project_anchor | own_supporting | 0 | bsc | unit-396129 | `0xf841cb62c19fcd4ff5cd0aab5939f3140baac3ea` | ⚠️ Unaudited |
| vSPCXB | unknown | project_anchor | own_supporting | 0 | bsc | unit-396083 | `0xc36dfacc7a125859c106f29b9f2d874ccf29a55a` | ⚠️ Unaudited |
| vSXP | unknown | project_anchor | own_supporting | 0 | bsc | unit-395953 | `0x2ff3d0f6990a40261c66e1ff2017acbc282eb6d0` | ⚠️ Unaudited |
| vTHE | unknown | project_anchor | own_supporting | 0 | bsc | unit-396020 | `0x86e06eafa6a1ea631eab51de500e3d474933739f` | ⚠️ Unaudited |
| vTRX | unknown | project_anchor | own_supporting | 0 | bsc | unit-396086 | `0xc5d3466aa484b040ee977073fcf337f2c00071c1` | ⚠️ Unaudited |
| vTRXOLD | unknown | project_anchor | own_supporting | 0 | bsc | unit-395986 | `0x61edcfe8dd6ba3c891cb9bec2dc7657b3b422e93` | ⚠️ Unaudited |
| vTSLAB | unknown | project_anchor | own_supporting | 0 | bsc | unit-396043 | `0x97421799419eb782628e73e7220d8e0a207469a3` | ⚠️ Unaudited |
| vTUSD | unknown | project_anchor | own_supporting | 0 | bsc | unit-396080 | `0xbf762cd5991ca1dcddac9ae5c638f5b5dc3bee6e` | ⚠️ Unaudited |
| vTUSDOLD | unknown | project_anchor | own_supporting | 0 | bsc | unit-395926 | `0x08ceb3f4a7ed3500ca0982bcd0fc7816688084c3` | ⚠️ Unaudited |
| vTWT | unknown | project_anchor | own_supporting | 0 | bsc | unit-395974 | `0x4d41a36d04d97785bcea57b057c412b278e6edcc` | ⚠️ Unaudited |
| vU | unknown | project_anchor | own_supporting | 0 | bsc | unit-395962 | `0x3d5e269787d562b74acc55f18bd26c5d09fa245e` | ⚠️ Unaudited |
| vUNI | unknown | project_anchor | own_supporting | 0 | bsc | unit-395948 | `0x27ff564707786720c71a2e5c1490a63266683612` | ⚠️ Unaudited |
| vUSD1 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395929 | `0x0c1da220d301155b87318b90692da8dc43b67340` | ⚠️ Unaudited |
| vUSDC | unknown | project_anchor | own_supporting | 0 | bsc | unit-396119 | `0xeca88125a5adbe82614ffc12d0db554e2e2867c8` | ⚠️ Unaudited |
| vUSDe | unknown | project_anchor | own_supporting | 0 | bsc | unit-396006 | `0x74ca6930108f775cc667894eea33843e691680d7` | ⚠️ Unaudited |
| vUSDT | unknown | project_anchor | own_supporting | 0 | bsc | unit-396135 | `0xfd5840cd36d94d7229439859c0112a4185bc0255` | ⚠️ Unaudited |
| vUST | unknown | project_anchor | own_supporting | 0 | bsc | unit-396011 | `0x78366446547d062f45b4c0f320cdaa6d710d87bb` | ⚠️ Unaudited |
| vWBETH | unknown | project_anchor | own_supporting | 0 | bsc | unit-395997 | `0x6cfdec747f37daf3b87a35a1d9c8ad3063a1a8a0` | ⚠️ Unaudited |
| vWBNB | unknown | project_anchor | own_supporting | 0 | bsc | unit-395995 | `0x6bca74586218db34cdb402295796b79663d816e9` | ⚠️ Unaudited |
| vXAUM | unknown | project_anchor | own_supporting | 0 | bsc | unit-396035 | `0x92e6ea74a1a3047dabf4186405a21c7d63a0612a` | ⚠️ Unaudited |
| vXRP | unknown | project_anchor | own_supporting | 0 | bsc | unit-396066 | `0xb248a295732e0225acd3337607cc01068e3b9c10` | ⚠️ Unaudited |
| vXVS | unknown | project_anchor | own_supporting | 0 | bsc | unit-395936 | `0x151b1e2635a717bcdc836ecd6fbb62b674fe3e1d` | ⚠️ Unaudited |
| WhitePaperInterestRateModel_base0bps_slope0bps_bpy10512000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396037 | `0x93fbc248e83bc8931141ffc7f457ec882595135a` | ⚠️ Unaudited |
| WhitePaperInterestRateModel_base0bps_slope0bps_bpy21024000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396061 | `0xada65304dddc86d2873cfc018486b7f4f53edb7e` | ⚠️ Unaudited |
| WhitePaperInterestRateModel_base0bps_slope0bps_bpy42048000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396070 | `0xb66d19e4bff26eae1c5c14e1daab418b9573b875` | ⚠️ Unaudited |
| WhitePaperInterestRateModel_base0bps_slope0bps_bpy70080000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395966 | `0x42ec3eb6f23460dfdfa3ae5688f3415cdfe0c6ad` | ⚠️ Unaudited |
| WhitePaperInterestRateModel_base0bps_slope24000bps_bpy10512000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396051 | `0xa166ca91a570747708a318a771f0c9ab84dd984b` | ⚠️ Unaudited |
| WhitePaperInterestRateModel_base0bps_slope24000bps_bpy21024000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395950 | `0x2d0a2955c3321743ea3b63109ce2d7e388bb35db` | ⚠️ Unaudited |
| WhitePaperInterestRateModel_base0bps_slope24000bps_bpy42048000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396034 | `0x92cdf922902440fdcdd1c987f984bf86eed10397` | ⚠️ Unaudited |
| WhitePaperInterestRateModel_base0bps_slope24000bps_bpy70080000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396128 | `0xf83362af1722b1762e21369225901b90d9b980d9` | ⚠️ Unaudited |
| WhitePaperInterestRateModel_base2629bps_slope30000bps_bpy10512000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396069 | `0xb53504cb74e395ec10b9bcec7089bdaef1cca042` | ⚠️ Unaudited |
| XVS | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | unit-396094 | `0xcf6bb5389c92bdda8a3747ddb454cb7a64626c63` | ⚠️ Unaudited |
| XVSStore | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395827 | `0x1db646e1ab05571af99e47e8f909801e5c99d37b` | ⚠️ Unaudited |
| XVSStore | unknown | project_anchor | own_supporting | 0 | optimism | unit-395842 | `0xfe548630954129923f63113923ef5373e10589d3` | ⚠️ Unaudited |
| XVSStore | unknown | project_anchor | own_supporting | 0 | bsc | unit-395943 | `0x1e25cf968f12850003db17e0dba32108509c4359` | ⚠️ Unaudited |
| XVSStore | unknown | project_anchor | own_supporting | 0 | unichain | unit-395861 | `0x0ee4b35c2ceab19856bf35505f81608d12b2a7bb` | ⚠️ Unaudited |
| XVSStore | unknown | project_anchor | own_supporting | 0 | base | unit-396143 | `0x11b084cfa559a82aac0ccd159dbea27899c7955a` | ⚠️ Unaudited |
| XVSStore | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395901 | `0x507d9923c954aad8ec530ed8dedb75bfc893ec5e` | ⚠️ Unaudited |
| XVSVaultProxy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395830 | `0xa0882c2d5df29233a092d2887a258c2b90e9b994` | ⚠️ Unaudited |
| XVSVaultProxy | unknown | project_anchor | own_supporting | 0 | optimism | unit-395835 | `0x133120607c018c949e91ae333785519f6d947e01` | ⚠️ Unaudited |
| XVSVaultProxy | unknown | project_anchor | own_supporting | 0 | unichain | unit-395863 | `0x5eca0fbbc5e7bf49dbfb1953a92784f8e4248ef6` | ⚠️ Unaudited |
| XVSVaultProxy | unknown | project_anchor | own_supporting | 0 | base | unit-396146 | `0x708b54f2c3f3606ea48a8d94dab88d9ab22d7fcd` | ⚠️ Unaudited |
| XVSVaultProxy | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395905 | `0x8b79692aab2822be30a6382eb04763a74752d5b4` | ⚠️ Unaudited |
| XVSVaultProxy / XVSVaultProxy_Proxy | unknown | project_anchor | own_supporting | 0 | bsc | unit-395918 | `0x051100480289e704d20e9db4804837068f3f9204` | ⚠️ Unaudited |
| XVSVaultProxy_Implementation | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395828 | `0x437042777255a1f25be60ed25c814dea6e43bc28` | ⚠️ Unaudited |
| XVSVaultProxy_Implementation | unknown | project_anchor | own_supporting | 0 | optimism | unit-395838 | `0x8b8651eeb002a7991f2287500b17a395e8cfe7d9` | ⚠️ Unaudited |
| XVSVaultProxy_Implementation | unknown | project_anchor | own_supporting | 0 | bsc | unit-396005 | `0x74c8a97be672db3e9a224648be566ada5f43b378` | ⚠️ Unaudited |
| XVSVaultProxy_Implementation | unknown | project_anchor | own_supporting | 0 | unichain | unit-395862 | `0x2ba0f45f7368d2a56d0c9e5a29af363987be1d02` | ⚠️ Unaudited |
| XVSVaultProxy_Implementation | unknown | project_anchor | own_supporting | 0 | base | unit-396144 | `0x322f1a2e03f089f8ce510855e793970d6f0efcf9` | ⚠️ Unaudited |
| XVSVaultProxy_Implementation | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395900 | `0x4c4bedc003e4e2f3a057dec35aef26f64cb07384` | ⚠️ Unaudited |
| XVSVesting / XVSVestingProxy_Implementation | unknown | project_anchor | own_supporting | 0 | bsc | unit-396057 | `0xa9dd0536ab0699d60c28ce369ff366a1e621bff1` | ⚠️ Unaudited |
| XVSVestingProxy / XVSVestingProxy_Proxy | unknown | project_anchor | own_supporting | 0 | bsc | unit-396067 | `0xb28dec7c7ac80f4d0b6a1b711c39e444cde8b2ce` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (249)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| DefaultProxyAdmin | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-395895 | `0x8ea1a989b036f7ef21bb95ce4e7961522ca00287` | ❓ Unverified |
| Prime / Prime_Proxy | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-395899 | `0xdfe62dcba3ce0a827439390d7d45af8bae599978` | ❓ Unverified |
| Prime_Implementation | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-395896 | `0x9ac8abca1442ca53347e9f06851abfa2826ca972` | ❓ Unverified |
| PrimeLiquidityProvider / PrimeLiquidityProvider_Proxy | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-395891 | `0x0ede6d7fb474614c5d3d5a16581628bb96cb5dff` | ❓ Unverified |
| PrimeLiquidityProvider_Implementation | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-395893 | `0x51b0368406e534dcbd353009492b11e8d359513e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-395833 | `0xfd9b071168bc27dbe16406ec3aba050ce8eb22fa` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-395834 | `0x104c01eb7b4664551be6a9bdb26a8c5c6be7d3da` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-396123 | `0xf322942f644a996a617bd29c16bd7d231d9f35e9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396161 | `0x0122b6ae004b90f080587b8921ea32fd1f2afa11` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396162 | `0x04cdb7dc0a6ed631df5e7926622bdbdf2543cd3f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396163 | `0x05b2ec5b7437fb188175bf440e3eb36af79fe319` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396164 | `0x08a2f4387bcae9776243df1f5bffb6ea2be9c7dd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396165 | `0x08e0a5575de71037ae36abfafb516595fe68e5e4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396166 | `0x0acdc336ea232e4c31d91fcb9b93b10921a3fcef` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396167 | `0x0cf272dbf1691271b9f56a3cdb8e574c8b5ad387` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396168 | `0x0dab769617b2d690ddbe8a6d730d9c9b85f26ca0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396169 | `0x0f5f4e273335a605d478f0a4b75af2e16d037b00` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396170 | `0x0f8f7633adbea7025107421a5fbe354219b33faf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396171 | `0x12a1be021756cd66cda146b7485c00baf6ff63f9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396172 | `0x12b88631a2033c0e9afa36b295cdfcf49493e89e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396173 | `0x137352dc1d46746bdea02b29911bfe4144a7391f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396174 | `0x13b3c3442e5fd642bc31d34db43d547e8c4322f7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396175 | `0x162d005f0fff510e54958cfc5cf32a3180a84aab` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396176 | `0x16e0d26d08eeb3cedf7991c5525f2d202becf797` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396177 | `0x171b468b52d7027f12cef90cd065d6776a25e24e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396178 | `0x17a6222fb8b4b6d852ca54f5bc376a6a2c6224bd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396179 | `0x18a31286b462345a21eb467c67e1c6282fa8e852` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396180 | `0x1a4408613eec291f2d338f7a88e9d550fa9cd8dc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396181 | `0x1ac040e357fd9c613d76bafa305b05b998a6a969` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396182 | `0x1ccdaf39085bae4e27c3ba100561b1ad1b5a6b80` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396183 | `0x20da556a8cd887ff3ab1ad84f4645c8f2413d884` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396184 | `0x2182450ec9780f17511feace6fc3ed8f774157b3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396185 | `0x24b5bde69d8e4280a30e1dabb2f8b0152c30228c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396186 | `0x253b09357d5d1cde57db6356cde77cd0bd963a09` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396187 | `0x2612ea702d1d87ca31ef189492c4924ee8174cb9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396188 | `0x274362695401bb1b0468bfcfe448ad7021d97562` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396189 | `0x2afdf0f2377158cd45c12f4a5c70269baf15fcc5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396190 | `0x2b12fe8267b6742dd1cd02a6f91e6f333ee641b6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396191 | `0x2e7222e51c0f6e98610a1543aa3836e092cde62c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396192 | `0x35566ed3af9e537be487c98b1811cdf95ad0c32b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396193 | `0x3619bddc61189f33365cc572df3a68fb3b316516` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396194 | `0x369fea97f6fb7510755dca389088d9e2e2819278` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396195 | `0x37bd1afb1e9965fb9a229f85f71f8beb5afda91c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396196 | `0x37c28de42ba3d22217995d146fc684b2326ede64` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396197 | `0x3985fd3fa7975bb08c962797640a84297fdbe262` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396198 | `0x39a239f5117bfac7a1b0b3a517c454113323451d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396199 | `0x3a00d9b02781f47d033bad62edc55fbf8d083fb0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396200 | `0x3b7be12be569c8d2f451b441f14b4576f4489d49` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396201 | `0x3b99ce268673e77e59e511f68cd183daec5dffc6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396202 | `0x3c439a567c0f66b3d2ca682327fc303ec3fb82d9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396203 | `0x3d1c435930b52b197a5861e8f9f62509445434fc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396204 | `0x3ed56f6937fc8549f9325405d1e8e650739647fa` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396205 | `0x3f047c3022b35ed59484a4ee12b28849903a8c3b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396206 | `0x3f4869b098e6a781e86475ef5c79888f266ec257` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396207 | `0x4048c69928993023ed5d3fa9da8708ffb4a21fe8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396208 | `0x40e5d89ca4fed67f4c48a4ea5fe40bc1a1af1726` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396209 | `0x429d0a66da5e785155b66842447d0bb4ee6930e8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396210 | `0x4348fc0cbd4ab6e46311ef90ba706169e50fc804` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396211 | `0x447512e07c6aad8d356174adf88645e54480697d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396212 | `0x471a33538d8a73fc7148f8b72a2a8be6ab9e3723` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396213 | `0x488ab2826a154da01cc4cc16a8c83d4720d3ca2c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396214 | `0x4b22c785101401e6eb906f5c10548a6cf6a059f4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396215 | `0x4b7c161640ee88307f6e544f60f7523e6ee1cca9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396216 | `0x4d387015542262057b2ddb3d117ac4efa24ea563` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396217 | `0x4ea05cb383a258212c46d19299d6e7f14d79fdec` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396218 | `0x4fae14f71c3ee15635d7161292ec5f1f09f70ad7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396219 | `0x519e61d2cda04184fb086bbd2322c1bfea0917cf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396220 | `0x51b17dd2df3934a579c59d875bac643e8a72ce74` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396221 | `0x51fd03ad1132e8cb5a5a793528c9f4ec918667d4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396222 | `0x53c22998e06a3bc4dc859ee5e234173f4cc30976` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396223 | `0x55aeaba76ecf144031ef64e222166eb28cb4865f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396224 | `0x562639bbbf595806d910d6bd82d215ac18604a12` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396225 | `0x56e364c3e5a556479e08b671a3d35ef4168d632f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396226 | `0x59a76c684385cf27d0be0e2bcec2012a88622c68` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396227 | `0x5c1c23ac038059c7b4ec1659728c166facab590b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396228 | `0x5c764d2e220c210c872c0d6224b55fbb8287c53c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396229 | `0x5e68358e77673a6e17b1c7de1c519a070033b698` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc-testnet | unit-396230 | `0x5ffbe5302baded40941a403228e6ad03f93752d9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396231 | `0x60386490e654d5529ed1cb6146bfcec08b9a3876` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396232 | `0x66d8ac8ef8c5a46909343be425b3ed1c8b9c9373` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396233 | `0x6af3fdb3282c5bb6926269db10837fa8aec67c04` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396234 | `0x6b31cbd9636496b8fcffac2edbdac28162b35890` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396235 | `0x6ce131c2321e25d7b4c63283b75db160ce3fb710` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396236 | `0x6d6f697e34145bb95c54e77482d97cc261dc237e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396237 | `0x6d95fcd7f086a6ea2e0f1b057c1fbddc1c18c146` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396238 | `0x714db6c38a17883964b68a07d56ce331501d9eb6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396239 | `0x72c341ed005c84446acb280059f44974ba51f39a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396240 | `0x74469281310195a04840daf6edf576f559a3de80` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396241 | `0x76b88ff4579b35d2722b7383b9b9ce831dc89b72` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396242 | `0x7877ffd62649b6a1557b55d4c20fcbab17344c91` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396243 | `0x798ac25e651734781d9ff2816a1e1a8dd1ec5a4e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396244 | `0x7a780fbba026568025a82101de65863a94ccd8f7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396245 | `0x7b4dba3b320e7d421a213e1a73bb9858bb6839f8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396246 | `0x7cba76eb5a9a89e7179bcf3c71875706e0c8af2e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396247 | `0x7db4f5cc3bba3e12ff1f528d2e3417afb0a57118` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396248 | `0x7dcbd10e3479907e0b8c79d01d0572c8cc00227b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396249 | `0x8273779013e74df618faddc28e2ee770a6372874` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396250 | `0x83edf1dee1b730b7e8e13c00ba76027d63a51ac0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396251 | `0x86a94290f2b8295daa3e53ba1286f2ff21199143` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396252 | `0x86f8dfb7ca84455174ee9c3edd94867b51da46bd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396253 | `0x8734dbd8ba959bbc75f2701a022f8d1d47e0722d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396254 | `0x8a637eb581150d1c0d8f8a2036d790c9a94803e6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396255 | `0x8b293600c50d6fbdc6ed4251cc75ece29880276f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396256 | `0x8bfc2afd0b0ac204fd9e06103ef9e1b66c057723` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396257 | `0x8d90adaccc998fa7b0e71f0c03484b47bc5a3121` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396258 | `0x8f63ca20a6f0805f44d56afb4b32520488218540` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396259 | `0x90535b06ddb00453a5e5f2bc094d498f1cc86032` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396260 | `0x92336573c47a55f2e418bf5452b00832b3bf2855` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396261 | `0x93969f17d4c1c7b22000ea26d5c2766e0f616d90` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396262 | `0x93ad9750ca2f89984ee6790a7cecc4aa9c07cfec` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396263 | `0x94d1820b2d1c7c7452a163983dc888cec546b77d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396264 | `0x95829232e71616cc3b595aad47d3674552e88fc0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396265 | `0x95daed37fdd3f557b3a5cceb7d50be65b36721df` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396266 | `0x962edf115d24240930f7b1cf95eaec9e49f06f92` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396267 | `0x9657300eea812f2920f416ce4008713690253716` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396268 | `0x9667b6e438232925525f26cec0acc3a39b9980c8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396269 | `0x9801565be8fe2c9fd12c17992ecdeb510baf677a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396270 | `0x9ab56bad2d7631b2a857ccf36d998232a8b82280` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396271 | `0x9ab9da79df616a4b55b1f9c9994d582d6865ab08` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396272 | `0x9ac449fe41e67e5161c01d9366f655a8a7406a76` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396273 | `0x9c2666e33aee517975d61e573dbf5b829c342c03` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396274 | `0x9e1ecb2671afabe9eaaa2e74cb2318a9b6a2eb5d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396275 | `0xa1d93e797bbf70bd2296b394d21eb4b341cdeca9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396276 | `0xa313f761cc79fb8c27d0f5d35b88db7075a61653` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396277 | `0xa3244e4719b96e8930aaf24d7d98b77a79131454` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396278 | `0xa38110ae4451a86ab754695057d5b5a9bead0387` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396279 | `0xa5f1d44f7d2ea604aaeba6eed438e07c31ee1dd2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396280 | `0xa6ee5513d4bc1f4541e5a98a09ef808f4f9e7477` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396281 | `0xa8694ca042f8038dcd4c6104b8574841226050a2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396282 | `0xab81e79f9607ec4c7b69ab4f7cf6c0af607aa131` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396283 | `0xadeddc73eafcbed174e6c400165b111b0cb80b7e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396284 | `0xae81ca4e6ea7f7e72165dc68dba2a0b1465e3b1f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396285 | `0xafc13bc065abee838540823431055d2ea52eba52` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396286 | `0xb1993aa3e9ee53d37096c58a4b86a8b1b6ed2f8e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396287 | `0xb200dbd23cff696cf2e95c0fbccdd3af7814c00f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396288 | `0xb21e69eef4bc1d64903fa28d9b32491b1c0786f1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396289 | `0xb6e9322c49fd75a367fcb17b0fcd62c5070ebcbe` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396290 | `0xb7526572ffe56ab9d7489838bf2e18e3323b441a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396291 | `0xb83ec5a6994ed5779815c7ac3f9668160a210cae` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396292 | `0xb889f359ab4ed32eea9e4e78d6e9f44655449c95` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396293 | `0xb8db7d937d32c111ddc89af962a8a3e3e2a51ac2` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc-testnet | unit-396294 | `0xb9e0e753630434d7863528cc73cb7ac638a7c8ff` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396295 | `0xbb34bbc161c9dbbe1dbcbc0a03478581f04b0e44` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396296 | `0xbba0dec733d5217a14b934710cf07f070ba6c01e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396297 | `0xbc85d7c9f7bdb348bd31d726ada716d7efaeabfb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396298 | `0xbd99c5f21c457bbe11f79151e949fdbd1990273d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396299 | `0xbd9eb061444665df7282ec0888b72d60ac41eb8c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396300 | `0xc24a551fcea07f53eb9d4a7f95411dd49d8b51d9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396301 | `0xc8dc4a0a29e2423664556a31349da3ff26850e8d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396302 | `0xc93cbf6ca7f3124737f2f4dada8dbbc7be56d125` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396303 | `0xcd5a0037ebfc4a22a755923bb5c983947fabdce7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396304 | `0xcf744ef5472951cda24283348e62ce86b2c53235` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396305 | `0xcfa3a6bc934eca22fa39e854c823cd3de79d9bc8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396306 | `0xd1e35044f9624497b08360cba77a174b148e93ed` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396307 | `0xd32721dff0c69c52c14b14205784c4a4e1f223cc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396308 | `0xd5c4c2e2facbeb59d0216d0595d63fcdc6f9a1a7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396309 | `0xd9e77847ec815e56ae2b9e69596c69b6972b0b1c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396310 | `0xdb49a057ab4a3d402abe31b58a04ee04000025f7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396311 | `0xdda903294fb71141302ad3bf2af37dd6cbd5dbbf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396312 | `0xde06a850d42dcff216e1efca5358cb167da247ca` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396313 | `0xde9bec5102ee897a2c934321309517dd6c0106f4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396314 | `0xe0d3774406296322f42cbf25e96e8388cdaf0a66` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396315 | `0xe3087584ea86dc9eae6dfcfd68bcab69bc0d728a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396316 | `0xe33b7a74db5f6ceb0fb5ca9c03d4e6521b46d0b0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396317 | `0xe840f8ec2dc50e7d22e5e2991975b9f6e34b62ad` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396318 | `0xebb0b3ca7c4095b1392c75e96f8dc565c9047faa` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396319 | `0xec22366d2572e52bcb29b50c905b945ba421b9b2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396320 | `0xedac03d29ff74b5fdc0cc936f6288312e1459bc6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396321 | `0xef4017690ca2ef6831bbba6bebb6e9a116ac332e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396322 | `0xefaacf73ce2d38ed40991f29e72b12c74bd4cf23` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396323 | `0xf06e662a00796c122aaae935ec4f0be3f74f5636` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396324 | `0xf0fcb229031a386c672e291ce183390c1a7705da` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396325 | `0xf1a8b40ca68d08effa31a16a83f4fd9b5c174872` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396326 | `0xf334e44ba510079833ecc8eb00fd5bd26d8048f5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396327 | `0xf40e0e047e24825740d18e435f533d75a4a2e9f9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396328 | `0xf59b7f2733a549dcf82b804d69d9c6a38985b90b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396329 | `0xf621b106020031fda4b8920b26ea82f724a992eb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396330 | `0xf912d3001caf6dc4add366a62cc9115b4303c9a9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396331 | `0xfb14dd85a26e41e4fd62b3b142b17f279c7bb8b0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396332 | `0xfb778f06cafa439825cad4095f31e83740ec7364` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396333 | `0xfc5538bdb73548127b392e9dfa420fdfdaf9438b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396334 | `0xfdebf4530f9c7d352fffe88cd0e96c8bb7391bd9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | unichain | unit-395866 | `0x958f4c84d3ad523fa9936dc465a123c7ad43d69b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | opbnb | unit-395881 | `0xddc9017f3073aa53a4a8535163b0bf7311f72c52` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-300 | unit-395882 | `0x18e44f588a4dcf2f7145d35a5c226e129040b6d3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-300 | unit-395883 | `0x3407c349f80e4e9544c73ca1e9334ceea7266517` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-300 | unit-395884 | `0x42639e7691189f8b87ee0e1d209af763855156c4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-300 | unit-395885 | `0x553d7bd61c4d9e1c23bcdcca49e859a77fe6aa67` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-300 | unit-395886 | `0x72b85930f7f8d00ace5ead10a315c17b8954fbcf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-300 | unit-395887 | `0x825f9ee3b2b1c159a5444a111a70607f3918564e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-300 | unit-395888 | `0x943ebe4460a12f551d60a68f510ea10cd8d564ba` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-300 | unit-395889 | `0xc2897703257c8cb174ed1ec87fa96d1847b4cd5c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-300 | unit-395890 | `0xf0daefe5f5df4170426f88757ecdf45430332d88` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-395897 | `0xb2e9174e23382f7744cebf7e0be54ca001d95599` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | unichain-sepolia | unit-395869 | `0x0c7cb62f2194cd701bce8fd8067b43a3bb76428e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | unichain-sepolia | unit-395870 | `0x256735efdfdf135bd6991854e0065909e57804aa` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | unichain-sepolia | unit-395871 | `0x356e9ef2c7ea3f159b3a176caa00701d4bc138c0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | unichain-sepolia | unit-395872 | `0x3a33d235e23b6b54004e25ff8e622228df16717a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | unichain-sepolia | unit-395873 | `0x59b95bf96d6d5fa1adf1bfd20848a9b25814317a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | unichain-sepolia | unit-395874 | `0xcaa889268dc77ce858401384515902ade351c780` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | unichain-sepolia | unit-395875 | `0xd19d235ee69c60b6978d8685a9f4bad12237ebba` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | unichain-sepolia | unit-395876 | `0xda4dcfbdc06a9947100a757ee0eede88debad586` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | unichain-sepolia | unit-395877 | `0xee012befea825a21b6346ef0f78249740ca2569b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | opbnb-testnet | unit-396139 | `0x06473fb3f7bf11e2e8efecc95ac55abefcb2e0a0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | opbnb-testnet | unit-396140 | `0x3370915301e8a6a6baae6f461af703e2498409f3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | opbnb-testnet | unit-396141 | `0x6e09f32f94b2d5056431710ba3eef75aed40c3b1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | opbnb-testnet | unit-396142 | `0xb14a0e72c5c202139f78963c9e89252c1ad16f01` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-396148 | `0xbefd8d06f403222dd5e8e37d2ba93320a97939d1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-395904 | `0x8a662ceac418daef956bc0e6b2dd417c80cda631` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-396152 | `0x00d346f25bea6d90503314caabbf5d0c53b091d0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-396153 | `0x059f1ea3973738c649d63bf4da18221eca418cdc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-396154 | `0x07e880daa6572829ce8abaaf0f5323a4efc417a6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-396155 | `0x15a1ac7fa14c5900ba93853375d66b6bb6a83b50` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-396156 | `0x926afca8c8ace02858765278ffc94ef4fcd9dd3a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-396157 | `0x9b5d0adfcecc8ed422d714ecbce2ffa436e269b8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-396158 | `0xb5ba66311c5f9a5c9d3cee0183f5426dd694de37` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-396159 | `0xb85dd19112c4bf1240fed0f26e8d0b0576a82546` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-396160 | `0xc88d27e8103688445a0c0850566d9418e61ca0fc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-395908 | `0x134303557e9338c202d5c70603d8758a465b058b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-395909 | `0x255efc81ba715fa7c2c27bdd983a3cef9bb07fef` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-395910 | `0x407507dc2809d3aa31d54eca3bede5c5c4c8a17f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-395911 | `0x4e7ab1fd841e1387df4c91813ae03819c33d5bdb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-395912 | `0x4e909da6693215dc630104715c035b159ddb67dd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-395913 | `0xadb04ac4942683bc41e27d18234c8dc884786e89` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-395914 | `0xb06a9b0432129dacd63f96101c348574d89182c3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-395915 | `0xe82c2c10f55d3268126c29ec813dc6f086904694` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-395843 | `0x03b868c7858f50900fece4ebc851199e957b5d3d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-395844 | `0x1129f882eaa912ae6d4f6d445b2e2b1ecba99fd5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-395845 | `0x15242a55ad1842a1aea09c59cf8366bd2f3ce9b4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-395846 | `0x2ec432f123febb114e6fbf9f4f14baf0b1f14abc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-395847 | `0x3a0e6f7a1927491ff8dac67958d006a02896e9d4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-395848 | `0x4116ca92960df77756aaac3afd91361db657fbf8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-395849 | `0xc48b9a9455e11f9327046e5ccb17e9f63ae3d037` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-395850 | `0xe36f76dc26885ccece97b96f80f4fa58c89772fc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | optimism-sepolia | unit-395851 | `0x4d344e48f02234e82d7d1db84d0a4a18aa43dacc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | optimism-sepolia | unit-395852 | `0x54deb59698c628be5eed5ad41fd825eb3be89704` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | optimism-sepolia | unit-395853 | `0x5a1a12f47fa7007c9e23cf5e025f3f5d3ac7d755` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | optimism-sepolia | unit-395854 | `0x66aaabfb90852d16e419ab739a64bfa3b5b0a16f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | optimism-sepolia | unit-395855 | `0x7a02458c1c1504abf37160401a5020ed003ba347` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | optimism-sepolia | unit-395856 | `0x84cca3c7719d1f9c35b5cff14be05801b8fd69d7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | optimism-sepolia | unit-395857 | `0xa9aaf2a1ccf2c3a87997942abaa740887cc89241` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | optimism-sepolia | unit-395858 | `0xe3ec955b94d197a8e4081844f3f25f81047a9af5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | optimism-sepolia | unit-395859 | `0xe888fa54b32bfad3ce0e3c7d566efe809a6a0143` | ❓ Unverified |
| XVSStore | unknown | project_anchor | own_supporting | 0 | opbnb | unit-395880 | `0xc3279442a5acacf0a2ecb015d1cddbb3e0f3f775` | ❓ Unverified |
| XVSStore | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-395894 | `0x84266f552756cbed893b1ffa85248cd99501e3ce` | ❓ Unverified |
| XVSVaultProxy | unknown | project_anchor | own_supporting | 0 | opbnb | unit-395879 | `0x7dc969122450749a8b0777c0e324522d67737988` | ❓ Unverified |
| XVSVaultProxy | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-395898 | `0xbbb3c88192a5b0db759229bef49dcd1f168f326f` | ❓ Unverified |
| XVSVaultProxy_Implementation | unknown | project_anchor | own_supporting | 0 | opbnb | unit-395878 | `0x785bef8b6db40e86fa3749b44cd67c14945e2a71` | ❓ Unverified |
| XVSVaultProxy_Implementation | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-395892 | `0x513323f8bd847bd4c7c73dd69098b38789ae0590` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 509 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
