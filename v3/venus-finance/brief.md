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

- CheckpointView_From_JumpRateModel_base0bps_slope1000bps_jump20000bps_kink7500bps_bpy10512000_To_bpy21024000_At_1745903100 (`0x747943...627e4a`, chain 56)
- CheckpointView_From_JumpRateModel_base0bps_slope1000bps_jump20000bps_kink7500bps_bpy21024000_To_bpy42048000_At_1751250600 (`0xd7079b...44c3d3`, chain 56)
- CheckpointView_From_JumpRateModel_base0bps_slope1000bps_jump20000bps_kink7500bps_bpy42048000_To_bpy70080000_At_1768357800 (`0x0c61ac...4addce`, chain 56)
- CheckpointView_From_JumpRateModel_base0bps_slope1000bps_jump25000bps_kink8000bps_bpy10512000_To_bpy21024000_At_1745903100 (`0xf8e641...89aaa9`, chain 56)
- CheckpointView_From_JumpRateModel_base0bps_slope1000bps_jump25000bps_kink8000bps_bpy21024000_To_bpy42048000_At_1751250600 (`0xbb951b...5d2f4b`, chain 56)
- CheckpointView_From_JumpRateModel_base0bps_slope1000bps_jump25000bps_kink8000bps_bpy42048000_To_bpy70080000_At_1768357800 (`0x8afae0...85c9b1`, chain 56)
- CheckpointView_From_JumpRateModel_base0bps_slope1000bps_jump50000bps_kink8000bps_bpy21024000_To_bpy42048000_At_1751250600 (`0x8d3a05...0e78cf`, chain 56)
- CheckpointView_From_JumpRateModel_base0bps_slope1000bps_jump50000bps_kink8000bps_bpy42048000_To_bpy70080000_At_1768357800 (`0xdba6a2...4ea630`, chain 56)
- CheckpointView_From_JumpRateModel_base0bps_slope1500bps_jump30000bps_kink6000bps_bpy10512000_To_bpy21024000_At_1745903100 (`0x785773...29609b`, chain 56)
- CheckpointView_From_JumpRateModel_base0bps_slope1500bps_jump30000bps_kink6000bps_bpy21024000_To_bpy42048000_At_1751250600 (`0x968d2f...c578bc`, chain 56)
- CheckpointView_From_JumpRateModel_base0bps_slope1500bps_jump30000bps_kink6000bps_bpy42048000_To_bpy70080000_At_1768357800 (`0xc3723c...5ec3ed`, chain 56)
- CheckpointView_From_JumpRateModel_base0bps_slope1750bps_jump25000bps_kink8000bps_bpy10512000_To_bpy21024000_At_1745903100 (`0x42ef8e...96ccf2`, chain 56)
- CheckpointView_From_JumpRateModel_base0bps_slope2000bps_jump30000bps_kink5000bps_bpy10512000_To_bpy21024000_At_1745903100 (`0x83671a...524a0f`, chain 56)
- CheckpointView_From_JumpRateModel_base0bps_slope2000bps_jump30000bps_kink5000bps_bpy21024000_To_bpy42048000_At_1751250600 (`0x107f2b...2fed98`, chain 56)
- CheckpointView_From_JumpRateModel_base0bps_slope2000bps_jump30000bps_kink5000bps_bpy42048000_To_bpy70080000_At_1768357800 (`0x30457d...870f8c`, chain 56)
- CheckpointView_From_JumpRateModel_base0bps_slope300bps_jump45000bps_kink9000bps_bpy10512000_To_bpy21024000_At_1745903100 (`0xebb072...485fa4`, chain 56)
- CheckpointView_From_JumpRateModel_base0bps_slope300bps_jump45000bps_kink9000bps_bpy21024000_To_bpy42048000_At_1751250600 (`0x38dd27...227eb7`, chain 56)
- CheckpointView_From_JumpRateModel_base0bps_slope300bps_jump45000bps_kink9000bps_bpy42048000_To_bpy70080000_At_1768357800 (`0x7c164b...7db4ef`, chain 56)
- CheckpointView_From_JumpRateModel_base0bps_slope750bps_jump50000bps_kink8000bps_bpy10512000_To_bpy21024000_At_1745903100 (`0x717dba...997c20`, chain 56)
- CheckpointView_From_JumpRateModel_base0bps_slope750bps_jump5000bps_kink8000bps_bpy10512000_To_bpy21024000_At_1745903100 (`0xa91617...6bb3f6`, chain 56)
- CheckpointView_From_JumpRateModel_base0bps_slope750bps_jump5000bps_kink8000bps_bpy21024000_To_bpy42048000_At_1751250600 (`0xfea1ca...504cc7`, chain 56)
- CheckpointView_From_JumpRateModel_base0bps_slope750bps_jump5000bps_kink8000bps_bpy42048000_To_bpy70080000_At_1768357800 (`0x4f0cfa...4d458d`, chain 56)
- CheckpointView_From_JumpRateModel_base0bps_slope900bps_jump20000bps_kink5000bps_bpy10512000_To_bpy21024000_At_1745903100 (`0x3ba661...556b10`, chain 56)
- CheckpointView_From_JumpRateModel_base0bps_slope900bps_jump20000bps_kink5000bps_bpy21024000_To_bpy42048000_At_1751250600 (`0x44a94a...d4b7f0`, chain 56)
- CheckpointView_From_JumpRateModel_base0bps_slope900bps_jump20000bps_kink5000bps_bpy42048000_To_bpy70080000_At_1768357800 (`0x1ef3b8...0999c5`, chain 56)
- CheckpointView_From_JumpRateModel_base0bps_slope900bps_jump20000bps_kink7500bps_bpy10512000_To_bpy21024000_At_1745903100 (`0x4a03ab...5bdee4`, chain 56)
- CheckpointView_From_JumpRateModel_base0bps_slope900bps_jump20000bps_kink7500bps_bpy21024000_To_bpy42048000_At_1751250600 (`0xa84189...b25bf4`, chain 56)
- CheckpointView_From_JumpRateModel_base0bps_slope900bps_jump35000bps_kink4500bps_bpy10512000_To_bpy21024000_At_1745903100 (`0xc6cc40...479621`, chain 56)
- CheckpointView_From_JumpRateModel_base0bps_slope900bps_jump35000bps_kink4500bps_bpy21024000_To_bpy42048000_At_1751250600 (`0x44c49a...40df65`, chain 56)
- CheckpointView_From_JumpRateModel_base0bps_slope900bps_jump35000bps_kink4500bps_bpy42048000_To_bpy70080000_At_1768357800 (`0x6f8694...b43b20`, chain 56)
- CheckpointView_From_JumpRateModel_base200bps_slope10000bps_jump30000bps_kink100bps_bpy10512000_To_bpy21024000_At_1745903100 (`0x06da1e...89426a`, chain 56)
- CheckpointView_From_JumpRateModel_base200bps_slope10000bps_jump30000bps_kink100bps_bpy21024000_To_bpy42048000_At_1751250600 (`0xb2bd70...4d8796`, chain 56)
- CheckpointView_From_JumpRateModel_base200bps_slope10000bps_jump30000bps_kink100bps_bpy42048000_To_bpy70080000_At_1768357800 (`0x6d9672...f2c920`, chain 56)
- CheckpointView_From_JumpRateModel_base200bps_slope1200bps_jump30000bps_kink6000bps_bpy10512000_To_bpy21024000_At_1745903100 (`0xd574f5...493371`, chain 56)
- CheckpointView_From_JumpRateModel_base200bps_slope1200bps_jump30000bps_kink6000bps_bpy21024000_To_bpy42048000_At_1751250600 (`0xf7b5f7...6dab29`, chain 56)
- CheckpointView_From_JumpRateModel_base200bps_slope1200bps_jump30000bps_kink6000bps_bpy42048000_To_bpy70080000_At_1768357800 (`0xb0b318...bb9770`, chain 56)
- CheckpointView_From_JumpRateModel_base200bps_slope1500bps_jump30000bps_kink6000bps_bpy10512000_To_bpy21024000_At_1745903100 (`0x0e6f99...b887c6`, chain 56)
- CheckpointView_From_JumpRateModel_base200bps_slope1500bps_jump30000bps_kink6000bps_bpy21024000_To_bpy42048000_At_1751250600 (`0x132634...a65bcd`, chain 56)
- CheckpointView_From_JumpRateModel_base200bps_slope1500bps_jump30000bps_kink6000bps_bpy42048000_To_bpy70080000_At_1768357800 (`0x6125bc...99a19e`, chain 56)
- CheckpointView_From_JumpRateModel_base200bps_slope2000bps_jump30000bps_kink5000bps_bpy10512000_To_bpy21024000_At_1745903100 (`0xed279b...41cd1a`, chain 56)
- CheckpointView_From_JumpRateModel_base200bps_slope2000bps_jump30000bps_kink5000bps_bpy21024000_To_bpy42048000_At_1751250600 (`0x7611a9...8c9811`, chain 56)
- CheckpointView_From_JumpRateModel_base200bps_slope2000bps_jump30000bps_kink5000bps_bpy42048000_To_bpy70080000_At_1768357800 (`0xd6b3a3...572373`, chain 56)
- CheckpointView_From_JumpRateModel_base25bps_slope367bps_jump20000bps_kink7500bps_bpy42048000_To_bpy70080000_At_1768357800 (`0x7d4767...694c3a`, chain 56)
- CheckpointView_From_JumpRateModel_base5000bps_slope3000bps_jump30000bps_kink6000bps_bpy10512000_To_bpy21024000_At_1745903100 (`0xe508af...8cb8e9`, chain 56)
- CheckpointView_From_JumpRateModel_base5000bps_slope3000bps_jump30000bps_kink6000bps_bpy21024000_To_bpy42048000_At_1751250600 (`0xbf6bdb...5ab70a`, chain 56)
- CheckpointView_From_JumpRateModel_base5000bps_slope3000bps_jump30000bps_kink6000bps_bpy42048000_To_bpy70080000_At_1768357800 (`0x4e1fe6...4d353c`, chain 56)
- CheckpointView_From_TwoKinks_base0bps_slope1000bps_kink8000bps_slope27000bps_base20bps_kink29000bps_jump30000bps_bpy21024000_To_bpy42048000_At_1751250600 (`0x08437b...0b9469`, chain 56)
- CheckpointView_From_TwoKinks_base0bps_slope1500bps_kink8000bps_slope29000bps_base20bps_kink29000bps_jump30000bps_bpy10512000_To_bpy21024000_At_1745903100 (`0x81d6ae...569359`, chain 56)
- CheckpointView_From_TwoKinks_base0bps_slope312bps_kink8000bps_slope28499bps_base20bps_kink29000bps_jump34000bps_bpy42048000_To_bpy70080000_At_1768357800 (`0x650b2f...9584b8`, chain 56)
- CheckpointView_From_TwoKinks_base0bps_slope350bps_kink8000bps_slope217500bps_base20bps_kink29000bps_jump30000bps_bpy10512000_To_bpy21024000_At_1745903100 (`0xfcfe90...c27cec`, chain 56)
- CheckpointView_From_TwoKinks_base0bps_slope450bps_kink7000bps_slope214000bps_base20bps_kink28000bps_jump30000bps_bpy21024000_To_bpy42048000_At_1751250600 (`0xf78db8...3911a1`, chain 56)
- CheckpointView_From_TwoKinks_base0bps_slope624bps_kink8000bps_slope26001bps_base20bps_kink29000bps_jump34000bps_bpy42048000_To_bpy70080000_At_1768357800 (`0x979566...5a2b38`, chain 56)
- CheckpointView_From_TwoKinks_base0bps_slope625bps_kink8000bps_slope26000bps_base20bps_kink29000bps_jump34000bps_bpy42048000_To_bpy70080000_At_1768357800 (`0x381829...8b0e53`, chain 56)
- CheckpointView_From_TwoKinks_base0bps_slope654bps_kink8400bps_slope22499bps_base20bps_kink29200bps_jump40625bps_bpy42048000_To_bpy70080000_At_1768357800 (`0x2cf0e2...42dbf4`, chain 56)
- CheckpointView_From_WhitePaperInterestRateModel_base0bps_slope0bps_bpy10512000_To_bpy21024000_At_1745903100 (`0x4088e1...8e5b59`, chain 56)
- CheckpointView_From_WhitePaperInterestRateModel_base0bps_slope0bps_bpy21024000_To_bpy42048000_At_1751250600 (`0x02448c...f31bf7`, chain 56)
- CheckpointView_From_WhitePaperInterestRateModel_base0bps_slope0bps_bpy42048000_To_bpy70080000_At_1768357800 (`0xa60b28...fbf41f`, chain 56)
- CheckpointView_From_WhitePaperInterestRateModel_base0bps_slope24000bps_bpy10512000_To_bpy21024000_At_1745903100 (`0x9318f6...bd77e5`, chain 56)
- CheckpointView_From_WhitePaperInterestRateModel_base0bps_slope24000bps_bpy21024000_To_bpy42048000_At_1751250600 (`0x170be5...6f862b`, chain 56)
- CheckpointView_From_WhitePaperInterestRateModel_base0bps_slope24000bps_bpy42048000_To_bpy70080000_At_1768357800 (`0x9e3f9a...888edd`, chain 56)
- ComptrollerLens (`0xd5deb6...1b120c`, chain 56)
- DefaultProxyAdmin (`0xeaf949...0dced2`, chain 10)
- DefaultProxyAdmin (`0x6beb6d...7187e4`, chain 56)
- DefaultProxyAdmin (`0x78e9ff...c5074c`, chain 130)
- DefaultProxyAdmin (`0x8ea1a9...a00287`, chain 324)
- DefaultProxyAdmin (`0x7b06ef...90746b`, chain 8453)
- JumpRateModel_base0bps_slope10000bps_jump25000bps_kink8000bps_bpy10512000 (`0x9e8fba...4c52f3`, chain 56)
- JumpRateModel_base0bps_slope10000bps_jump50000bps_kink8000bps_bpy10512000 (`0x958f4c...43d69b`, chain 56)
- JumpRateModel_base0bps_slope1000bps_jump20000bps_kink7500bps_bpy10512000 (`0x871a82...8c147c`, chain 56)
- JumpRateModel_base0bps_slope1000bps_jump20000bps_kink7500bps_bpy21024000 (`0xd1e1f4...55f8f7`, chain 56)
- JumpRateModel_base0bps_slope1000bps_jump20000bps_kink7500bps_bpy42048000 (`0xcc5426...5e7651`, chain 56)
- JumpRateModel_base0bps_slope1000bps_jump20000bps_kink7500bps_bpy70080000 (`0xe67839...f7d23f`, chain 56)
- JumpRateModel_base0bps_slope1000bps_jump25000bps_kink8000bps_bpy10512000 (`0x62a891...5cc805`, chain 56)
- JumpRateModel_base0bps_slope1000bps_jump25000bps_kink8000bps_bpy21024000 (`0x4efbf2...1633ee`, chain 56)
- JumpRateModel_base0bps_slope1000bps_jump25000bps_kink8000bps_bpy42048000 (`0x6d7c74...7787fc`, chain 56)
- JumpRateModel_base0bps_slope1000bps_jump25000bps_kink8000bps_bpy70080000 (`0xad6aa8...f8000b`, chain 56)
- JumpRateModel_base0bps_slope1000bps_jump50000bps_kink8000bps_bpy10512000 (`0x05c68e...e968f1`, chain 56)
- JumpRateModel_base0bps_slope1000bps_jump50000bps_kink8000bps_bpy21024000 (`0x76cb08...a6abd0`, chain 56)
- JumpRateModel_base0bps_slope1000bps_jump50000bps_kink8000bps_bpy42048000 (`0xe3394c...da0a5c`, chain 56)
- JumpRateModel_base0bps_slope1000bps_jump50000bps_kink8000bps_bpy70080000 (`0xf2f2ae...40a60d`, chain 56)
- JumpRateModel_base0bps_slope1250bps_jump25000bps_kink8000bps_bpy10512000 (`0x1485a2...96ccf6`, chain 56)
- JumpRateModel_base0bps_slope1250bps_jump50000bps_kink8000bps_bpy10512000 (`0x9fca5d...a7ffa4`, chain 56)
- JumpRateModel_base0bps_slope1500bps_jump30000bps_kink6000bps_bpy10512000 (`0xea464d...15141a`, chain 56)
- JumpRateModel_base0bps_slope1500bps_jump30000bps_kink6000bps_bpy21024000 (`0x927ea3...574fc0`, chain 56)
- JumpRateModel_base0bps_slope1500bps_jump30000bps_kink6000bps_bpy42048000 (`0x7b91a1...0a003a`, chain 56)
- JumpRateModel_base0bps_slope1500bps_jump30000bps_kink6000bps_bpy70080000 (`0xabde95...8b2c70`, chain 56)
- JumpRateModel_base0bps_slope1750bps_jump25000bps_kink8000bps_bpy10512000 (`0x0be3ca...f31647`, chain 56)
- JumpRateModel_base0bps_slope1750bps_jump25000bps_kink8000bps_bpy21024000 (`0x16d554...6f8ba5`, chain 56)
- JumpRateModel_base0bps_slope2000bps_jump30000bps_kink5000bps_bpy10512000 (`0x637e19...ad8d61`, chain 56)
- JumpRateModel_base0bps_slope2000bps_jump30000bps_kink5000bps_bpy21024000 (`0xb831f6...99ea16`, chain 56)
- JumpRateModel_base0bps_slope2000bps_jump30000bps_kink5000bps_bpy42048000 (`0x06ff31...205669`, chain 56)
- JumpRateModel_base0bps_slope2000bps_jump30000bps_kink5000bps_bpy70080000 (`0x1d5f97...c334da`, chain 56)
- JumpRateModel_base0bps_slope200bps_jump400bps_kink8000bps_bpy70080000 (`0xcdae73...502329`, chain 56)
- JumpRateModel_base0bps_slope300bps_jump45000bps_kink9000bps_bpy10512000 (`0x3aa125...8015e9`, chain 56)
- JumpRateModel_base0bps_slope300bps_jump45000bps_kink9000bps_bpy21024000 (`0xffb9d1...a427e8`, chain 56)
- JumpRateModel_base0bps_slope300bps_jump45000bps_kink9000bps_bpy42048000 (`0x5d1dd2...8c79c2`, chain 56)
- JumpRateModel_base0bps_slope300bps_jump45000bps_kink9000bps_bpy70080000 (`0xce1a03...923770`, chain 56)
- JumpRateModel_base0bps_slope667bps_jump62700bps_kink7500bps_bpy70080000 (`0xe589e8...44439d`, chain 56)
- JumpRateModel_base0bps_slope687bps_jump25000bps_kink8000bps_bpy10512000 (`0xb105f9...5b6660`, chain 56)
- JumpRateModel_base0bps_slope750bps_jump50000bps_kink8000bps_bpy10512000 (`0xdef4b9...36fd7b`, chain 56)
- JumpRateModel_base0bps_slope750bps_jump50000bps_kink8000bps_bpy21024000 (`0x76edde...bb4fd3`, chain 56)
- JumpRateModel_base0bps_slope750bps_jump5000bps_kink8000bps_bpy10512000 (`0xf874a9...124715`, chain 56)
- JumpRateModel_base0bps_slope750bps_jump5000bps_kink8000bps_bpy21024000 (`0x8c6009...7e164c`, chain 56)
- JumpRateModel_base0bps_slope750bps_jump5000bps_kink8000bps_bpy42048000 (`0xaf1618...68fd3d`, chain 56)
- JumpRateModel_base0bps_slope750bps_jump5000bps_kink8000bps_bpy70080000 (`0xcf4c75...869cd1`, chain 56)
- JumpRateModel_base0bps_slope875bps_jump25000bps_kink8000bps_bpy10512000 (`0xbe4609...1beb1d`, chain 56)
- JumpRateModel_base0bps_slope875bps_jump50000bps_kink8000bps_bpy10512000 (`0xe19c14...164ba3`, chain 56)
- JumpRateModel_base0bps_slope900bps_jump20000bps_kink5000bps_bpy10512000 (`0xf09255...82a324`, chain 56)
- JumpRateModel_base0bps_slope900bps_jump20000bps_kink5000bps_bpy21024000 (`0x52f636...1bd6bf`, chain 56)
- JumpRateModel_base0bps_slope900bps_jump20000bps_kink5000bps_bpy42048000 (`0x68cb22...d0b02e`, chain 56)
- JumpRateModel_base0bps_slope900bps_jump20000bps_kink5000bps_bpy70080000 (`0x6463ab...c28bc0`, chain 56)
- JumpRateModel_base0bps_slope900bps_jump20000bps_kink7500bps_bpy10512000 (`0xaa69d9...27783f`, chain 56)
- JumpRateModel_base0bps_slope900bps_jump20000bps_kink7500bps_bpy21024000 (`0xbb32a5...9659fc`, chain 56)
- JumpRateModel_base0bps_slope900bps_jump20000bps_kink7500bps_bpy42048000 (`0x8ad7d9...47692e`, chain 56)
- JumpRateModel_base0bps_slope900bps_jump35000bps_kink4500bps_bpy10512000 (`0x77c50b...96b1ef`, chain 56)
- JumpRateModel_base0bps_slope900bps_jump35000bps_kink4500bps_bpy21024000 (`0x4699ba...03d0a3`, chain 56)
- JumpRateModel_base0bps_slope900bps_jump35000bps_kink4500bps_bpy42048000 (`0x2349de...5d4b8b`, chain 56)
- JumpRateModel_base0bps_slope900bps_jump35000bps_kink4500bps_bpy70080000 (`0x8ecfd1...bad7a5`, chain 56)
- JumpRateModel_base200bps_slope10000bps_jump30000bps_kink100bps_bpy10512000 (`0x6b7c3d...5356f5`, chain 56)
- JumpRateModel_base200bps_slope10000bps_jump30000bps_kink100bps_bpy21024000 (`0xe42b28...0b249b`, chain 56)
- JumpRateModel_base200bps_slope10000bps_jump30000bps_kink100bps_bpy42048000 (`0xcb7f4f...1f0026`, chain 56)
- JumpRateModel_base200bps_slope10000bps_jump30000bps_kink100bps_bpy70080000 (`0x875535...87a3cf`, chain 56)
- JumpRateModel_base200bps_slope1200bps_jump30000bps_kink6000bps_bpy10512000 (`0xda6cde...4a6769`, chain 56)
- JumpRateModel_base200bps_slope1200bps_jump30000bps_kink6000bps_bpy21024000 (`0x025552...a69627`, chain 56)
- JumpRateModel_base200bps_slope1200bps_jump30000bps_kink6000bps_bpy42048000 (`0xd26ffb...0c7803`, chain 56)
- JumpRateModel_base200bps_slope1200bps_jump30000bps_kink6000bps_bpy70080000 (`0xbca3d5...44b614`, chain 56)
- JumpRateModel_base200bps_slope1500bps_jump30000bps_kink6000bps_bpy10512000 (`0x324503...0fce23`, chain 56)
- JumpRateModel_base200bps_slope1500bps_jump30000bps_kink6000bps_bpy21024000 (`0xfda927...309bfe`, chain 56)
- JumpRateModel_base200bps_slope1500bps_jump30000bps_kink6000bps_bpy42048000 (`0x5ef791...09710e`, chain 56)
- JumpRateModel_base200bps_slope1500bps_jump30000bps_kink6000bps_bpy70080000 (`0xdb1869...a4d043`, chain 56)
- JumpRateModel_base200bps_slope2000bps_jump30000bps_kink5000bps_bpy10512000 (`0x2de473...4b3cc2`, chain 56)
- JumpRateModel_base200bps_slope2000bps_jump30000bps_kink5000bps_bpy21024000 (`0x1063a0...ecafe7`, chain 56)
- JumpRateModel_base200bps_slope2000bps_jump30000bps_kink5000bps_bpy42048000 (`0x6bbb4f...5000a2`, chain 56)
- JumpRateModel_base200bps_slope2000bps_jump30000bps_kink5000bps_bpy70080000 (`0x905006...c8d0a6`, chain 56)
- JumpRateModel_base25bps_slope367bps_jump20000bps_kink7500bps_bpy42048000 (`0xe74fe4...88b8f4`, chain 56)
- JumpRateModel_base25bps_slope367bps_jump20000bps_kink7500bps_bpy70080000 (`0xae5a30...4c48bd`, chain 56)
- JumpRateModel_base30000bps_slope0bps_jump36364bps_kink4500bps_bpy70080000 (`0xc25535...3d744a`, chain 56)
- JumpRateModel_base5000bps_slope3000bps_jump30000bps_kink6000bps_bpy10512000 (`0x91475a...8e18d1`, chain 56)
- JumpRateModel_base5000bps_slope3000bps_jump30000bps_kink6000bps_bpy21024000 (`0xf34afa...7f20e0`, chain 56)
- JumpRateModel_base5000bps_slope3000bps_jump30000bps_kink6000bps_bpy42048000 (`0x3dc78f...51a5f3`, chain 56)
- JumpRateModel_base5000bps_slope3000bps_jump30000bps_kink6000bps_bpy70080000 (`0xe1ac99...244d33`, chain 56)
- Liquidator / Liquidator_Proxy (`0x087079...04cf43`, chain 56)
- Liquidator_Implementation (`0xc8c6f5...9dbc62`, chain 56)
- PegStability_USDT / PegStability_USDT_Proxy (`0xc138aa...c3cc36`, chain 56)
- PegStability_USDT_Implementation (`0x966456...5fa43e`, chain 56)
- Prime / Prime_Proxy (`0x14c452...eacb39`, chain 1)
- Prime / Prime_Proxy (`0xe76d21...a649f7`, chain 10)
- Prime / Prime_Proxy (`0xbbcd06...8c71fc`, chain 56)
- Prime / Prime_Proxy (`0x600aff...c0c872`, chain 130)
- Prime / Prime_Proxy (`0xdfe62d...599978`, chain 324)
- Prime / Prime_Proxy (`0xd2e842...5d7a30`, chain 8453)
- Prime / Prime_Proxy (`0xfe6972...11ef49`, chain 42161)
- Prime_Implementation (`0xf039d6...fe30df`, chain 1)
- Prime_Implementation (`0x7dcf81...f92b10`, chain 10)
- Prime_Implementation (`0x1a6660...eaf195`, chain 56)
- Prime_Implementation (`0xb0f8c3...c61e95`, chain 130)
- Prime_Implementation (`0x9ac8ab...6ca972`, chain 324)
- Prime_Implementation (`0xdfcdd9...3d30b6`, chain 8453)
- Prime_Implementation (`0x628229...86dbbc`, chain 42161)
- PrimeLeaderboard / PrimeLeaderboard_Proxy (`0x55e2cc...932c0b`, chain 56)
- PrimeLeaderboard_Implementation (`0xd80de9...c2d1a1`, chain 56)
- PrimeLens (`0x2f8c5e...36473c`, chain 56)
- PrimeLiquidityProvider / PrimeLiquidityProvider_Proxy (`0x8ba6af...3d8872`, chain 1)
- PrimeLiquidityProvider / PrimeLiquidityProvider_Proxy (`0x6412f6...1c1a12`, chain 10)
- PrimeLiquidityProvider / PrimeLiquidityProvider_Proxy (`0x23c4f8...7833f2`, chain 56)
- PrimeLiquidityProvider / PrimeLiquidityProvider_Proxy (`0x045a45...35afb7`, chain 130)
- PrimeLiquidityProvider / PrimeLiquidityProvider_Proxy (`0x0ede6d...cb5dff`, chain 324)
- PrimeLiquidityProvider / PrimeLiquidityProvider_Proxy (`0xcb293e...e0b208`, chain 8453)
- PrimeLiquidityProvider / PrimeLiquidityProvider_Proxy (`0x86bf21...46ec29`, chain 42161)
- PrimeLiquidityProvider_Implementation (`0xb41ff5...65f3fd`, chain 1)
- PrimeLiquidityProvider_Implementation (`0xf3b8d6...2cfb0a`, chain 10)
- PrimeLiquidityProvider_Implementation (`0x46bed4...1e4de8`, chain 56)
- PrimeLiquidityProvider_Implementation (`0xe20e19...2bb8fc`, chain 130)
- PrimeLiquidityProvider_Implementation (`0x51b036...59513e`, chain 324)
- PrimeLiquidityProvider_Implementation (`0x646df5...befa11`, chain 8453)
- PrimeLiquidityProvider_Implementation (`0x920079...903dd6`, chain 42161)
- PrimeV2 / PrimeV2_Proxy (`0x059eab...50f50f`, chain 56)
- PrimeV2_Implementation (`0x18cb71...d83a1b`, chain 56)
- PSMProxyAdmin (`0x3f918b...ee1e59`, chain 56)
- SwapRouterCorePool (`0x8938e6...c815a4`, chain 56)
- Unitroller / Unitroller_Proxy (`0xfd36e2...158384`, chain 56)
- Unitroller_Implementation (`0xa66b2b...8c6e66`, chain 56)
- vAAVE (`0x26da28...2c6f94`, chain 56)
- vADA (`0x9a0af7...da28ec`, chain 56)
- VAI (`0x4bd170...8bbbd7`, chain 56)
- VAIVault (`0x0b4d77...d2620d`, chain 56)
- VAIVaultProxy / VAIVaultProxy_Proxy (`0x0667ee...94f216`, chain 56)
- VAIVaultProxy_Implementation (`0xa52f2a...9ac423`, chain 56)
- vBCH (`0x5f0388...b29176`, chain 56)
- vBETH (`0x972207...eb7c07`, chain 56)
- vBNB (`0xa07c5b...bbea36`, chain 56)
- vBTC (`0x882c17...e7847b`, chain 56)
- vBUSD (`0x95c782...67ab9d`, chain 56)
- vCAKE (`0x86ac39...09df5c`, chain 56)
- vDAI (`0x334b3e...80fbf1`, chain 56)
- vDOGE (`0xec3422...ed8d71`, chain 56)
- vDOT (`0x1610bc...6ad217`, chain 56)
- VenusChainlinkOracle (`0x7fabdd...52068a`, chain 56)
- VenusLens (`0xe79780...bef662`, chain 56)
- vETH (`0xf508fc...3592c8`, chain 56)
- vFDUSD (`0xc4ef42...0ba0ba`, chain 56)
- vFIL (`0xf91d58...cb0343`, chain 56)
- vLINK (`0x650b94...c11f1f`, chain 56)
- vLTC (`0x57a529...b50c6b`, chain 56)
- vLUNA (`0xb91a65...edd2c8`, chain 56)
- vMATIC (`0x5c9476...bbbbc8`, chain 56)
- vNVDAB (`0xeb8ca8...dad371`, chain 56)
- vPT-clisBNB-25JUN2026 (`0x6d3bd6...dc435e`, chain 56)
- vPT-sUSDE-26JUN2025 (`0x9e4e5f...bf1866`, chain 56)
- vPT-USDe-30OCT2025 (`0x6d0cdb...95c73e`, chain 56)
- VRTConverterProxy / VRTConverterProxy_Proxy (`0x92572f...b9facd`, chain 56)
- VRTConverterProxy_Implementation (`0x3192d0...b180b7`, chain 56)
- vSOL (`0xbf515b...9f2cec`, chain 56)
- vSolvBTC (`0xf841cb...aac3ea`, chain 56)
- vSPCXB (`0xc36dfa...29a55a`, chain 56)
- vSXP (`0x2ff3d0...2eb6d0`, chain 56)
- vTHE (`0x86e06e...33739f`, chain 56)
- vTRX (`0xc5d346...0071c1`, chain 56)
- vTRXOLD (`0x61edcf...422e93`, chain 56)
- vTSLAB (`0x974217...7469a3`, chain 56)
- vTUSD (`0xbf762c...3bee6e`, chain 56)
- vTUSDOLD (`0x08ceb3...8084c3`, chain 56)
- vTWT (`0x4d41a3...e6edcc`, chain 56)
- vU (`0x3d5e26...fa245e`, chain 56)
- vUNI (`0x27ff56...683612`, chain 56)
- vUSD1 (`0x0c1da2...b67340`, chain 56)
- vUSDC (`0xeca881...2867c8`, chain 56)
- vUSDe (`0x74ca69...1680d7`, chain 56)
- vUSDT (`0xfd5840...bc0255`, chain 56)
- vUST (`0x783664...0d87bb`, chain 56)
- vWBETH (`0x6cfdec...a1a8a0`, chain 56)
- vWBNB (`0x6bca74...d816e9`, chain 56)
- vXAUM (`0x92e6ea...a0612a`, chain 56)
- vXRP (`0xb248a2...3b9c10`, chain 56)
- vXVS (`0x151b1e...fe3e1d`, chain 56)
- WhitePaperInterestRateModel_base0bps_slope0bps_bpy10512000 (`0x93fbc2...95135a`, chain 56)
- WhitePaperInterestRateModel_base0bps_slope0bps_bpy21024000 (`0xada653...3edb7e`, chain 56)
- WhitePaperInterestRateModel_base0bps_slope0bps_bpy42048000 (`0xb66d19...73b875`, chain 56)
- WhitePaperInterestRateModel_base0bps_slope0bps_bpy70080000 (`0x42ec3e...e0c6ad`, chain 56)
- WhitePaperInterestRateModel_base0bps_slope24000bps_bpy10512000 (`0xa166ca...dd984b`, chain 56)
- WhitePaperInterestRateModel_base0bps_slope24000bps_bpy21024000 (`0x2d0a29...bb35db`, chain 56)
- WhitePaperInterestRateModel_base0bps_slope24000bps_bpy42048000 (`0x92cdf9...d10397`, chain 56)
- WhitePaperInterestRateModel_base0bps_slope24000bps_bpy70080000 (`0xf83362...b980d9`, chain 56)
- WhitePaperInterestRateModel_base2629bps_slope30000bps_bpy10512000 (`0xb53504...cca042`, chain 56)
- XVS (`0xcf6bb5...626c63`, chain 56)
- XVSStore (`0x1db646...99d37b`, chain 1)
- XVSStore (`0xfe5486...0589d3`, chain 10)
- XVSStore (`0x1e25cf...9c4359`, chain 56)
- XVSStore (`0x0ee4b3...b2a7bb`, chain 130)
- XVSStore (`0xc32794...f3f775`, chain 204)
- XVSStore (`0x84266f...01e3ce`, chain 324)
- XVSStore (`0x11b084...c7955a`, chain 8453)
- XVSStore (`0x507d99...93ec5e`, chain 42161)
- XVSVaultProxy (`0xa0882c...e9b994`, chain 1)
- XVSVaultProxy (`0x133120...947e01`, chain 10)
- XVSVaultProxy (`0x5eca0f...248ef6`, chain 130)
- XVSVaultProxy (`0x7dc969...737988`, chain 204)
- XVSVaultProxy (`0xbbb3c8...8f326f`, chain 324)
- XVSVaultProxy (`0x708b54...2d7fcd`, chain 8453)
- XVSVaultProxy (`0x8b7969...52d5b4`, chain 42161)
- XVSVaultProxy / XVSVaultProxy_Proxy (`0x051100...3f9204`, chain 56)
- XVSVaultProxy_Implementation (`0x437042...43bc28`, chain 1)
- XVSVaultProxy_Implementation (`0x8b8651...cfe7d9`, chain 10)
- XVSVaultProxy_Implementation (`0x74c8a9...43b378`, chain 56)
- XVSVaultProxy_Implementation (`0x2ba0f4...be1d02`, chain 130)
- XVSVaultProxy_Implementation (`0x785bef...5e2a71`, chain 204)
- XVSVaultProxy_Implementation (`0x513323...ae0590`, chain 324)
- XVSVaultProxy_Implementation (`0x322f1a...0efcf9`, chain 8453)
- XVSVaultProxy_Implementation (`0x4c4bed...b07384`, chain 42161)
- XVSVesting / XVSVestingProxy_Implementation (`0xa9dd05...21bff1`, chain 56)
- XVSVestingProxy / XVSVestingProxy_Proxy (`0xb28dec...e8b2ce`, chain 56)

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
| CheckpointView_From_JumpRateModel_base0bps_slope1000bps_jump20000bps_kink7500bps_bpy10512000_To_bpy21024000_At_1745903100 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396004 | `0x747943...627e4a` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base0bps_slope1000bps_jump20000bps_kink7500bps_bpy21024000_To_bpy42048000_At_1751250600 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396100 | `0xd7079b...44c3d3` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base0bps_slope1000bps_jump20000bps_kink7500bps_bpy42048000_To_bpy70080000_At_1768357800 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395930 | `0x0c61ac...4addce` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base0bps_slope1000bps_jump25000bps_kink8000bps_bpy10512000_To_bpy21024000_At_1745903100 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396131 | `0xf8e641...89aaa9` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base0bps_slope1000bps_jump25000bps_kink8000bps_bpy21024000_To_bpy42048000_At_1751250600 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396074 | `0xbb951b...5d2f4b` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base0bps_slope1000bps_jump25000bps_kink8000bps_bpy42048000_To_bpy70080000_At_1768357800 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396026 | `0x8afae0...85c9b1` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base0bps_slope1000bps_jump50000bps_kink8000bps_bpy21024000_To_bpy42048000_At_1751250600 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396028 | `0x8d3a05...0e78cf` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base0bps_slope1000bps_jump50000bps_kink8000bps_bpy42048000_To_bpy70080000_At_1768357800 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396104 | `0xdba6a2...4ea630` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base0bps_slope1500bps_jump30000bps_kink6000bps_bpy10512000_To_bpy21024000_At_1745903100 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396012 | `0x785773...29609b` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base0bps_slope1500bps_jump30000bps_kink6000bps_bpy21024000_To_bpy42048000_At_1751250600 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396041 | `0x968d2f...c578bc` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base0bps_slope1500bps_jump30000bps_kink6000bps_bpy42048000_To_bpy70080000_At_1768357800 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396084 | `0xc3723c...5ec3ed` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base0bps_slope1750bps_jump25000bps_kink8000bps_bpy10512000_To_bpy21024000_At_1745903100 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395967 | `0x42ef8e...96ccf2` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base0bps_slope2000bps_jump30000bps_kink5000bps_bpy10512000_To_bpy21024000_At_1745903100 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396018 | `0x83671a...524a0f` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base0bps_slope2000bps_jump30000bps_kink5000bps_bpy21024000_To_bpy42048000_At_1751250600 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395933 | `0x107f2b...2fed98` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base0bps_slope2000bps_jump30000bps_kink5000bps_bpy42048000_To_bpy70080000_At_1768357800 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395954 | `0x30457d...870f8c` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base0bps_slope300bps_jump45000bps_kink9000bps_bpy10512000_To_bpy21024000_At_1745903100 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396117 | `0xebb072...485fa4` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base0bps_slope300bps_jump45000bps_kink9000bps_bpy21024000_To_bpy42048000_At_1751250600 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395959 | `0x38dd27...227eb7` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base0bps_slope300bps_jump45000bps_kink9000bps_bpy42048000_To_bpy70080000_At_1768357800 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396014 | `0x7c164b...7db4ef` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base0bps_slope750bps_jump50000bps_kink8000bps_bpy10512000_To_bpy21024000_At_1745903100 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396003 | `0x717dba...997c20` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base0bps_slope750bps_jump5000bps_kink8000bps_bpy10512000_To_bpy21024000_At_1745903100 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396056 | `0xa91617...6bb3f6` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base0bps_slope750bps_jump5000bps_kink8000bps_bpy21024000_To_bpy42048000_At_1751250600 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396137 | `0xfea1ca...504cc7` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base0bps_slope750bps_jump5000bps_kink8000bps_bpy42048000_To_bpy70080000_At_1768357800 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395977 | `0x4f0cfa...4d458d` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base0bps_slope900bps_jump20000bps_kink5000bps_bpy10512000_To_bpy21024000_At_1745903100 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395961 | `0x3ba661...556b10` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base0bps_slope900bps_jump20000bps_kink5000bps_bpy21024000_To_bpy42048000_At_1751250600 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395968 | `0x44a94a...d4b7f0` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base0bps_slope900bps_jump20000bps_kink5000bps_bpy42048000_To_bpy70080000_At_1768357800 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395944 | `0x1ef3b8...0999c5` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base0bps_slope900bps_jump20000bps_kink7500bps_bpy10512000_To_bpy21024000_At_1745903100 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395972 | `0x4a03ab...5bdee4` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base0bps_slope900bps_jump20000bps_kink7500bps_bpy21024000_To_bpy42048000_At_1751250600 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396055 | `0xa84189...b25bf4` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base0bps_slope900bps_jump35000bps_kink4500bps_bpy10512000_To_bpy21024000_At_1745903100 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396087 | `0xc6cc40...479621` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base0bps_slope900bps_jump35000bps_kink4500bps_bpy21024000_To_bpy42048000_At_1751250600 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395969 | `0x44c49a...40df65` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base0bps_slope900bps_jump35000bps_kink4500bps_bpy42048000_To_bpy70080000_At_1768357800 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396002 | `0x6f8694...b43b20` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base200bps_slope10000bps_jump30000bps_kink100bps_bpy10512000_To_bpy21024000_At_1745903100 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395922 | `0x06da1e...89426a` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base200bps_slope10000bps_jump30000bps_kink100bps_bpy21024000_To_bpy42048000_At_1751250600 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396068 | `0xb2bd70...4d8796` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base200bps_slope10000bps_jump30000bps_kink100bps_bpy42048000_To_bpy70080000_At_1768357800 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396001 | `0x6d9672...f2c920` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base200bps_slope1200bps_jump30000bps_kink6000bps_bpy10512000_To_bpy21024000_At_1745903100 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396097 | `0xd574f5...493371` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base200bps_slope1200bps_jump30000bps_kink6000bps_bpy21024000_To_bpy42048000_At_1751250600 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396127 | `0xf7b5f7...6dab29` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base200bps_slope1200bps_jump30000bps_kink6000bps_bpy42048000_To_bpy70080000_At_1768357800 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396064 | `0xb0b318...bb9770` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base200bps_slope1500bps_jump30000bps_kink6000bps_bpy10512000_To_bpy21024000_At_1745903100 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395931 | `0x0e6f99...b887c6` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base200bps_slope1500bps_jump30000bps_kink6000bps_bpy21024000_To_bpy42048000_At_1751250600 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395934 | `0x132634...a65bcd` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base200bps_slope1500bps_jump30000bps_kink6000bps_bpy42048000_To_bpy70080000_At_1768357800 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395985 | `0x6125bc...99a19e` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base200bps_slope2000bps_jump30000bps_kink5000bps_bpy10512000_To_bpy21024000_At_1745903100 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396120 | `0xed279b...41cd1a` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base200bps_slope2000bps_jump30000bps_kink5000bps_bpy21024000_To_bpy42048000_At_1751250600 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396007 | `0x7611a9...8c9811` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base200bps_slope2000bps_jump30000bps_kink5000bps_bpy42048000_To_bpy70080000_At_1768357800 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396099 | `0xd6b3a3...572373` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base25bps_slope367bps_jump20000bps_kink7500bps_bpy42048000_To_bpy70080000_At_1768357800 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396015 | `0x7d4767...694c3a` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base5000bps_slope3000bps_jump30000bps_kink6000bps_bpy10512000_To_bpy21024000_At_1745903100 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396110 | `0xe508af...8cb8e9` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base5000bps_slope3000bps_jump30000bps_kink6000bps_bpy21024000_To_bpy42048000_At_1751250600 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396079 | `0xbf6bdb...5ab70a` | ⚠️ Unaudited |
| CheckpointView_From_JumpRateModel_base5000bps_slope3000bps_jump30000bps_kink6000bps_bpy42048000_To_bpy70080000_At_1768357800 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395975 | `0x4e1fe6...4d353c` | ⚠️ Unaudited |
| CheckpointView_From_TwoKinks_base0bps_slope1000bps_kink8000bps_slope27000bps_base20bps_kink29000bps_jump30000bps_bpy21024000_To_bpy42048000_At_1751250600 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395924 | `0x08437b...0b9469` | ⚠️ Unaudited |
| CheckpointView_From_TwoKinks_base0bps_slope1500bps_kink8000bps_slope29000bps_base20bps_kink29000bps_jump30000bps_bpy10512000_To_bpy21024000_At_1745903100 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396017 | `0x81d6ae...569359` | ⚠️ Unaudited |
| CheckpointView_From_TwoKinks_base0bps_slope312bps_kink8000bps_slope28499bps_base20bps_kink29000bps_jump34000bps_bpy42048000_To_bpy70080000_At_1768357800 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395990 | `0x650b2f...9584b8` | ⚠️ Unaudited |
| CheckpointView_From_TwoKinks_base0bps_slope350bps_kink8000bps_slope217500bps_base20bps_kink29000bps_jump30000bps_bpy10512000_To_bpy21024000_At_1745903100 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396133 | `0xfcfe90...c27cec` | ⚠️ Unaudited |
| CheckpointView_From_TwoKinks_base0bps_slope450bps_kink7000bps_slope214000bps_base20bps_kink28000bps_jump30000bps_bpy21024000_To_bpy42048000_At_1751250600 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396126 | `0xf78db8...3911a1` | ⚠️ Unaudited |
| CheckpointView_From_TwoKinks_base0bps_slope624bps_kink8000bps_slope26001bps_base20bps_kink29000bps_jump34000bps_bpy42048000_To_bpy70080000_At_1768357800 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396044 | `0x979566...5a2b38` | ⚠️ Unaudited |
| CheckpointView_From_TwoKinks_base0bps_slope625bps_kink8000bps_slope26000bps_base20bps_kink29000bps_jump34000bps_bpy42048000_To_bpy70080000_At_1768357800 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395958 | `0x381829...8b0e53` | ⚠️ Unaudited |
| CheckpointView_From_TwoKinks_base0bps_slope654bps_kink8400bps_slope22499bps_base20bps_kink29200bps_jump40625bps_bpy42048000_To_bpy70080000_At_1768357800 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395949 | `0x2cf0e2...42dbf4` | ⚠️ Unaudited |
| CheckpointView_From_WhitePaperInterestRateModel_base0bps_slope0bps_bpy10512000_To_bpy21024000_At_1745903100 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395965 | `0x4088e1...8e5b59` | ⚠️ Unaudited |
| CheckpointView_From_WhitePaperInterestRateModel_base0bps_slope0bps_bpy21024000_To_bpy42048000_At_1751250600 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395916 | `0x02448c...f31bf7` | ⚠️ Unaudited |
| CheckpointView_From_WhitePaperInterestRateModel_base0bps_slope0bps_bpy42048000_To_bpy70080000_At_1768357800 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396053 | `0xa60b28...fbf41f` | ⚠️ Unaudited |
| CheckpointView_From_WhitePaperInterestRateModel_base0bps_slope24000bps_bpy10512000_To_bpy21024000_At_1745903100 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396036 | `0x9318f6...bd77e5` | ⚠️ Unaudited |
| CheckpointView_From_WhitePaperInterestRateModel_base0bps_slope24000bps_bpy21024000_To_bpy42048000_At_1751250600 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395939 | `0x170be5...6f862b` | ⚠️ Unaudited |
| CheckpointView_From_WhitePaperInterestRateModel_base0bps_slope24000bps_bpy42048000_To_bpy70080000_At_1768357800 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396046 | `0x9e3f9a...888edd` | ⚠️ Unaudited |
| ComptrollerLens | unknown | project_anchor | own_supporting | 0 | bsc | unit-396098 | `0xd5deb6...1b120c` | ⚠️ Unaudited |
| DefaultProxyAdmin | unknown | project_anchor | own_supporting | 0 | optimism | unit-395840 | `0xeaf949...0dced2` | ⚠️ Unaudited |
| DefaultProxyAdmin | unknown | project_anchor | own_supporting | 0 | bsc | unit-395996 | `0x6beb6d...7187e4` | ⚠️ Unaudited |
| DefaultProxyAdmin | unknown | project_anchor | own_supporting | 0 | unichain | unit-395865 | `0x78e9ff...c5074c` | ⚠️ Unaudited |
| DefaultProxyAdmin | unknown | project_anchor | own_supporting | 0 | base | unit-396147 | `0x7b06ef...90746b` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope10000bps_jump25000bps_kink8000bps_bpy10512000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396048 | `0x9e8fba...4c52f3` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope10000bps_jump50000bps_kink8000bps_bpy10512000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396038 | `0x958f4c...43d69b` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope1000bps_jump20000bps_kink7500bps_bpy10512000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396021 | `0x871a82...8c147c` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope1000bps_jump20000bps_kink7500bps_bpy21024000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396095 | `0xd1e1f4...55f8f7` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope1000bps_jump20000bps_kink7500bps_bpy42048000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396090 | `0xcc5426...5e7651` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope1000bps_jump20000bps_kink7500bps_bpy70080000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396112 | `0xe67839...f7d23f` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope1000bps_jump25000bps_kink8000bps_bpy10512000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395987 | `0x62a891...5cc805` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope1000bps_jump25000bps_kink8000bps_bpy21024000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395976 | `0x4efbf2...1633ee` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope1000bps_jump25000bps_kink8000bps_bpy42048000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396000 | `0x6d7c74...7787fc` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope1000bps_jump25000bps_kink8000bps_bpy70080000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396060 | `0xad6aa8...f8000b` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope1000bps_jump50000bps_kink8000bps_bpy10512000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395920 | `0x05c68e...e968f1` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope1000bps_jump50000bps_kink8000bps_bpy21024000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396008 | `0x76cb08...a6abd0` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope1000bps_jump50000bps_kink8000bps_bpy42048000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396108 | `0xe3394c...da0a5c` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope1000bps_jump50000bps_kink8000bps_bpy70080000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396122 | `0xf2f2ae...40a60d` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope1250bps_jump25000bps_kink8000bps_bpy10512000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395935 | `0x1485a2...96ccf6` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope1250bps_jump50000bps_kink8000bps_bpy10512000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396049 | `0x9fca5d...a7ffa4` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope1500bps_jump30000bps_kink6000bps_bpy10512000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396115 | `0xea464d...15141a` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope1500bps_jump30000bps_kink6000bps_bpy21024000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396033 | `0x927ea3...574fc0` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope1500bps_jump30000bps_kink6000bps_bpy42048000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396013 | `0x7b91a1...0a003a` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope1500bps_jump30000bps_kink6000bps_bpy70080000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396059 | `0xabde95...8b2c70` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope1750bps_jump25000bps_kink8000bps_bpy10512000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395928 | `0x0be3ca...f31647` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope1750bps_jump25000bps_kink8000bps_bpy21024000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395938 | `0x16d554...6f8ba5` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope2000bps_jump30000bps_kink5000bps_bpy10512000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395988 | `0x637e19...ad8d61` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope2000bps_jump30000bps_kink5000bps_bpy21024000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396071 | `0xb831f6...99ea16` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope2000bps_jump30000bps_kink5000bps_bpy42048000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395923 | `0x06ff31...205669` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope2000bps_jump30000bps_kink5000bps_bpy70080000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395942 | `0x1d5f97...c334da` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope200bps_jump400bps_kink8000bps_bpy70080000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396091 | `0xcdae73...502329` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope300bps_jump45000bps_kink9000bps_bpy10512000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395960 | `0x3aa125...8015e9` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope300bps_jump45000bps_kink9000bps_bpy21024000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396138 | `0xffb9d1...a427e8` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope300bps_jump45000bps_kink9000bps_bpy42048000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395982 | `0x5d1dd2...8c79c2` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope300bps_jump45000bps_kink9000bps_bpy70080000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396092 | `0xce1a03...923770` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope667bps_jump62700bps_kink7500bps_bpy70080000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396111 | `0xe589e8...44439d` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope687bps_jump25000bps_kink8000bps_bpy10512000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396065 | `0xb105f9...5b6660` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope750bps_jump50000bps_kink8000bps_bpy10512000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396105 | `0xdef4b9...36fd7b` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope750bps_jump50000bps_kink8000bps_bpy21024000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396009 | `0x76edde...bb4fd3` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope750bps_jump5000bps_kink8000bps_bpy10512000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396130 | `0xf874a9...124715` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope750bps_jump5000bps_kink8000bps_bpy21024000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396027 | `0x8c6009...7e164c` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope750bps_jump5000bps_kink8000bps_bpy42048000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396063 | `0xaf1618...68fd3d` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope750bps_jump5000bps_kink8000bps_bpy70080000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396093 | `0xcf4c75...869cd1` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope875bps_jump25000bps_kink8000bps_bpy10512000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396077 | `0xbe4609...1beb1d` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope875bps_jump50000bps_kink8000bps_bpy10512000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396106 | `0xe19c14...164ba3` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope900bps_jump20000bps_kink5000bps_bpy10512000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396121 | `0xf09255...82a324` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope900bps_jump20000bps_kink5000bps_bpy21024000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395978 | `0x52f636...1bd6bf` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope900bps_jump20000bps_kink5000bps_bpy42048000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395992 | `0x68cb22...d0b02e` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope900bps_jump20000bps_kink5000bps_bpy70080000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395989 | `0x6463ab...c28bc0` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope900bps_jump20000bps_kink7500bps_bpy10512000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396058 | `0xaa69d9...27783f` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope900bps_jump20000bps_kink7500bps_bpy21024000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396073 | `0xbb32a5...9659fc` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope900bps_jump20000bps_kink7500bps_bpy42048000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396025 | `0x8ad7d9...47692e` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope900bps_jump35000bps_kink4500bps_bpy10512000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396010 | `0x77c50b...96b1ef` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope900bps_jump35000bps_kink4500bps_bpy21024000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395970 | `0x4699ba...03d0a3` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope900bps_jump35000bps_kink4500bps_bpy42048000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395945 | `0x2349de...5d4b8b` | ⚠️ Unaudited |
| JumpRateModel_base0bps_slope900bps_jump35000bps_kink4500bps_bpy70080000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396029 | `0x8ecfd1...bad7a5` | ⚠️ Unaudited |
| JumpRateModel_base200bps_slope10000bps_jump30000bps_kink100bps_bpy10512000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395993 | `0x6b7c3d...5356f5` | ⚠️ Unaudited |
| JumpRateModel_base200bps_slope10000bps_jump30000bps_kink100bps_bpy21024000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396109 | `0xe42b28...0b249b` | ⚠️ Unaudited |
| JumpRateModel_base200bps_slope10000bps_jump30000bps_kink100bps_bpy42048000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396089 | `0xcb7f4f...1f0026` | ⚠️ Unaudited |
| JumpRateModel_base200bps_slope10000bps_jump30000bps_kink100bps_bpy70080000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396022 | `0x875535...87a3cf` | ⚠️ Unaudited |
| JumpRateModel_base200bps_slope1200bps_jump30000bps_kink6000bps_bpy10512000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396102 | `0xda6cde...4a6769` | ⚠️ Unaudited |
| JumpRateModel_base200bps_slope1200bps_jump30000bps_kink6000bps_bpy21024000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395917 | `0x025552...a69627` | ⚠️ Unaudited |
| JumpRateModel_base200bps_slope1200bps_jump30000bps_kink6000bps_bpy42048000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396096 | `0xd26ffb...0c7803` | ⚠️ Unaudited |
| JumpRateModel_base200bps_slope1200bps_jump30000bps_kink6000bps_bpy70080000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396076 | `0xbca3d5...44b614` | ⚠️ Unaudited |
| JumpRateModel_base200bps_slope1500bps_jump30000bps_kink6000bps_bpy10512000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395956 | `0x324503...0fce23` | ⚠️ Unaudited |
| JumpRateModel_base200bps_slope1500bps_jump30000bps_kink6000bps_bpy21024000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396136 | `0xfda927...309bfe` | ⚠️ Unaudited |
| JumpRateModel_base200bps_slope1500bps_jump30000bps_kink6000bps_bpy42048000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395983 | `0x5ef791...09710e` | ⚠️ Unaudited |
| JumpRateModel_base200bps_slope1500bps_jump30000bps_kink6000bps_bpy70080000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396103 | `0xdb1869...a4d043` | ⚠️ Unaudited |
| JumpRateModel_base200bps_slope2000bps_jump30000bps_kink5000bps_bpy10512000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395951 | `0x2de473...4b3cc2` | ⚠️ Unaudited |
| JumpRateModel_base200bps_slope2000bps_jump30000bps_kink5000bps_bpy21024000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395932 | `0x1063a0...ecafe7` | ⚠️ Unaudited |
| JumpRateModel_base200bps_slope2000bps_jump30000bps_kink5000bps_bpy42048000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395994 | `0x6bbb4f...5000a2` | ⚠️ Unaudited |
| JumpRateModel_base200bps_slope2000bps_jump30000bps_kink5000bps_bpy70080000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396030 | `0x905006...c8d0a6` | ⚠️ Unaudited |
| JumpRateModel_base25bps_slope367bps_jump20000bps_kink7500bps_bpy42048000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396113 | `0xe74fe4...88b8f4` | ⚠️ Unaudited |
| JumpRateModel_base25bps_slope367bps_jump20000bps_kink7500bps_bpy70080000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396062 | `0xae5a30...4c48bd` | ⚠️ Unaudited |
| JumpRateModel_base30000bps_slope0bps_jump36364bps_kink4500bps_bpy70080000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396082 | `0xc25535...3d744a` | ⚠️ Unaudited |
| JumpRateModel_base5000bps_slope3000bps_jump30000bps_kink6000bps_bpy10512000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396031 | `0x91475a...8e18d1` | ⚠️ Unaudited |
| JumpRateModel_base5000bps_slope3000bps_jump30000bps_kink6000bps_bpy21024000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396124 | `0xf34afa...7f20e0` | ⚠️ Unaudited |
| JumpRateModel_base5000bps_slope3000bps_jump30000bps_kink6000bps_bpy42048000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395963 | `0x3dc78f...51a5f3` | ⚠️ Unaudited |
| JumpRateModel_base5000bps_slope3000bps_jump30000bps_kink6000bps_bpy70080000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396107 | `0xe1ac99...244d33` | ⚠️ Unaudited |
| Liquidator / Liquidator_Proxy | unknown | project_anchor | own_supporting | 0 | bsc | unit-395925 | `0x087079...04cf43` | ⚠️ Unaudited |
| Liquidator_Implementation | unknown | project_anchor | own_supporting | 0 | bsc | unit-396088 | `0xc8c6f5...9dbc62` | ⚠️ Unaudited |
| PegStability_USDT / PegStability_USDT_Proxy | unknown | project_anchor | own_supporting | 0 | bsc | unit-396081 | `0xc138aa...c3cc36` | ⚠️ Unaudited |
| PegStability_USDT_Implementation | unknown | project_anchor | own_supporting | 0 | bsc | unit-396040 | `0x966456...5fa43e` | ⚠️ Unaudited |
| Prime / Prime_Proxy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395826 | `0x14c452...eacb39` | ⚠️ Unaudited |
| Prime / Prime_Proxy | unknown | project_anchor | own_supporting | 0 | optimism | unit-395839 | `0xe76d21...a649f7` | ⚠️ Unaudited |
| Prime / Prime_Proxy | unknown | project_anchor | own_supporting | 0 | bsc | unit-396075 | `0xbbcd06...8c71fc` | ⚠️ Unaudited |
| Prime / Prime_Proxy | unknown | project_anchor | own_supporting | 0 | unichain | unit-395864 | `0x600aff...c0c872` | ⚠️ Unaudited |
| Prime / Prime_Proxy | unknown | project_anchor | own_supporting | 0 | base | unit-396150 | `0xd2e842...5d7a30` | ⚠️ Unaudited |
| Prime / Prime_Proxy | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395907 | `0xfe6972...11ef49` | ⚠️ Unaudited |
| Prime_Implementation | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395832 | `0xf039d6...fe30df` | ⚠️ Unaudited |
| Prime_Implementation | unknown | project_anchor | own_supporting | 0 | optimism | unit-395837 | `0x7dcf81...f92b10` | ⚠️ Unaudited |
| Prime_Implementation | unknown | project_anchor | own_supporting | 0 | bsc | unit-395941 | `0x1a6660...eaf195` | ⚠️ Unaudited |
| Prime_Implementation | unknown | project_anchor | own_supporting | 0 | unichain | unit-395867 | `0xb0f8c3...c61e95` | ⚠️ Unaudited |
| Prime_Implementation | unknown | project_anchor | own_supporting | 0 | base | unit-396151 | `0xdfcdd9...3d30b6` | ⚠️ Unaudited |
| Prime_Implementation | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395902 | `0x628229...86dbbc` | ⚠️ Unaudited |
| PrimeLeaderboard / PrimeLeaderboard_Proxy | unknown | project_anchor | own_supporting | 0 | bsc | unit-395979 | `0x55e2cc...932c0b` | ⚠️ Unaudited |
| PrimeLeaderboard_Implementation | unknown | project_anchor | own_supporting | 0 | bsc | unit-396101 | `0xd80de9...c2d1a1` | ⚠️ Unaudited |
| PrimeLens | unknown | project_anchor | own_supporting | 0 | bsc | unit-395952 | `0x2f8c5e...36473c` | ⚠️ Unaudited |
| PrimeLiquidityProvider / PrimeLiquidityProvider_Proxy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395829 | `0x8ba6af...3d8872` | ⚠️ Unaudited |
| PrimeLiquidityProvider / PrimeLiquidityProvider_Proxy | unknown | project_anchor | own_supporting | 0 | optimism | unit-395836 | `0x6412f6...1c1a12` | ⚠️ Unaudited |
| PrimeLiquidityProvider / PrimeLiquidityProvider_Proxy | unknown | project_anchor | own_supporting | 0 | bsc | unit-395946 | `0x23c4f8...7833f2` | ⚠️ Unaudited |
| PrimeLiquidityProvider / PrimeLiquidityProvider_Proxy | unknown | project_anchor | own_supporting | 0 | unichain | unit-395860 | `0x045a45...35afb7` | ⚠️ Unaudited |
| PrimeLiquidityProvider / PrimeLiquidityProvider_Proxy | unknown | project_anchor | own_supporting | 0 | base | unit-396149 | `0xcb293e...e0b208` | ⚠️ Unaudited |
| PrimeLiquidityProvider / PrimeLiquidityProvider_Proxy | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395903 | `0x86bf21...46ec29` | ⚠️ Unaudited |
| PrimeLiquidityProvider_Implementation | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395831 | `0xb41ff5...65f3fd` | ⚠️ Unaudited |
| PrimeLiquidityProvider_Implementation | unknown | project_anchor | own_supporting | 0 | optimism | unit-395841 | `0xf3b8d6...2cfb0a` | ⚠️ Unaudited |
| PrimeLiquidityProvider_Implementation | unknown | project_anchor | own_supporting | 0 | bsc | unit-395971 | `0x46bed4...1e4de8` | ⚠️ Unaudited |
| PrimeLiquidityProvider_Implementation | unknown | project_anchor | own_supporting | 0 | unichain | unit-395868 | `0xe20e19...2bb8fc` | ⚠️ Unaudited |
| PrimeLiquidityProvider_Implementation | unknown | project_anchor | own_supporting | 0 | base | unit-396145 | `0x646df5...befa11` | ⚠️ Unaudited |
| PrimeLiquidityProvider_Implementation | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395906 | `0x920079...903dd6` | ⚠️ Unaudited |
| PrimeV2 / PrimeV2_Proxy | unknown | project_anchor | own_supporting | 0 | bsc | unit-395919 | `0x059eab...50f50f` | ⚠️ Unaudited |
| PrimeV2_Implementation | unknown | project_anchor | own_supporting | 0 | bsc | unit-395940 | `0x18cb71...d83a1b` | ⚠️ Unaudited |
| PSMProxyAdmin | unknown | project_anchor | own_supporting | 0 | bsc | unit-395964 | `0x3f918b...ee1e59` | ⚠️ Unaudited |
| SwapRouterCorePool | unknown | project_anchor | own_supporting | 0 | bsc | unit-396024 | `0x8938e6...c815a4` | ⚠️ Unaudited |
| Unitroller / Unitroller_Proxy | unknown | project_anchor | own_supporting | 0 | bsc | unit-396134 | `0xfd36e2...158384` | ⚠️ Unaudited |
| Unitroller_Implementation | unknown | project_anchor | own_supporting | 0 | bsc | unit-396054 | `0xa66b2b...8c6e66` | ⚠️ Unaudited |
| vAAVE | unknown | project_anchor | own_supporting | 0 | bsc | unit-395947 | `0x26da28...2c6f94` | ⚠️ Unaudited |
| vADA | unknown | project_anchor | own_supporting | 0 | bsc | unit-396045 | `0x9a0af7...da28ec` | ⚠️ Unaudited |
| VAI | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | unit-395973 | `0x4bd170...8bbbd7` | ⚠️ Unaudited |
| VAIVault | unknown | project_anchor | own_supporting | 0 | bsc | unit-395927 | `0x0b4d77...d2620d` | ⚠️ Unaudited |
| VAIVaultProxy / VAIVaultProxy_Proxy | unknown | project_anchor | own_supporting | 0 | bsc | unit-395921 | `0x0667ee...94f216` | ⚠️ Unaudited |
| VAIVaultProxy_Implementation | unknown | project_anchor | own_supporting | 0 | bsc | unit-396052 | `0xa52f2a...9ac423` | ⚠️ Unaudited |
| vBCH | unknown | project_anchor | own_supporting | 0 | bsc | unit-395984 | `0x5f0388...b29176` | ⚠️ Unaudited |
| vBETH | unknown | project_anchor | own_supporting | 0 | bsc | unit-396042 | `0x972207...eb7c07` | ⚠️ Unaudited |
| vBNB | unknown | project_anchor | own_supporting | 0 | bsc | unit-396050 | `0xa07c5b...bbea36` | ⚠️ Unaudited |
| vBTC | unknown | project_anchor | own_supporting | 0 | bsc | unit-396023 | `0x882c17...e7847b` | ⚠️ Unaudited |
| vBUSD | unknown | project_anchor | own_supporting | 0 | bsc | unit-396039 | `0x95c782...67ab9d` | ⚠️ Unaudited |
| vCAKE | unknown | project_anchor | own_supporting | 0 | bsc | unit-396019 | `0x86ac39...09df5c` | ⚠️ Unaudited |
| vDAI | unknown | project_anchor | own_supporting | 0 | bsc | unit-395957 | `0x334b3e...80fbf1` | ⚠️ Unaudited |
| vDOGE | unknown | project_anchor | own_supporting | 0 | bsc | unit-396118 | `0xec3422...ed8d71` | ⚠️ Unaudited |
| vDOT | unknown | project_anchor | own_supporting | 0 | bsc | unit-395937 | `0x1610bc...6ad217` | ⚠️ Unaudited |
| VenusChainlinkOracle | unknown | project_anchor | own_supporting | 0 | bsc | unit-396016 | `0x7fabdd...52068a` | ⚠️ Unaudited |
| VenusLens | unknown | project_anchor | own_supporting | 0 | bsc | unit-396114 | `0xe79780...bef662` | ⚠️ Unaudited |
| vETH | unknown | project_anchor | own_supporting | 0 | bsc | unit-396125 | `0xf508fc...3592c8` | ⚠️ Unaudited |
| vFDUSD | unknown | project_anchor | own_supporting | 0 | bsc | unit-396085 | `0xc4ef42...0ba0ba` | ⚠️ Unaudited |
| vFIL | unknown | project_anchor | own_supporting | 0 | bsc | unit-396132 | `0xf91d58...cb0343` | ⚠️ Unaudited |
| vLINK | unknown | project_anchor | own_supporting | 0 | bsc | unit-395991 | `0x650b94...c11f1f` | ⚠️ Unaudited |
| vLTC | unknown | project_anchor | own_supporting | 0 | bsc | unit-395980 | `0x57a529...b50c6b` | ⚠️ Unaudited |
| vLUNA | unknown | project_anchor | own_supporting | 0 | bsc | unit-396072 | `0xb91a65...edd2c8` | ⚠️ Unaudited |
| vMATIC | unknown | project_anchor | own_supporting | 0 | bsc | unit-395981 | `0x5c9476...bbbbc8` | ⚠️ Unaudited |
| vNVDAB | unknown | project_anchor | own_supporting | 0 | bsc | unit-396116 | `0xeb8ca8...dad371` | ⚠️ Unaudited |
| vPT-clisBNB-25JUN2026 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395999 | `0x6d3bd6...dc435e` | ⚠️ Unaudited |
| vPT-sUSDE-26JUN2025 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396047 | `0x9e4e5f...bf1866` | ⚠️ Unaudited |
| vPT-USDe-30OCT2025 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395998 | `0x6d0cdb...95c73e` | ⚠️ Unaudited |
| VRTConverterProxy / VRTConverterProxy_Proxy | unknown | project_anchor | own_supporting | 0 | bsc | unit-396032 | `0x92572f...b9facd` | ⚠️ Unaudited |
| VRTConverterProxy_Implementation | unknown | project_anchor | own_supporting | 0 | bsc | unit-395955 | `0x3192d0...b180b7` | ⚠️ Unaudited |
| vSOL | unknown | project_anchor | own_supporting | 0 | bsc | unit-396078 | `0xbf515b...9f2cec` | ⚠️ Unaudited |
| vSolvBTC | unknown | project_anchor | own_supporting | 0 | bsc | unit-396129 | `0xf841cb...aac3ea` | ⚠️ Unaudited |
| vSPCXB | unknown | project_anchor | own_supporting | 0 | bsc | unit-396083 | `0xc36dfa...29a55a` | ⚠️ Unaudited |
| vSXP | unknown | project_anchor | own_supporting | 0 | bsc | unit-395953 | `0x2ff3d0...2eb6d0` | ⚠️ Unaudited |
| vTHE | unknown | project_anchor | own_supporting | 0 | bsc | unit-396020 | `0x86e06e...33739f` | ⚠️ Unaudited |
| vTRX | unknown | project_anchor | own_supporting | 0 | bsc | unit-396086 | `0xc5d346...0071c1` | ⚠️ Unaudited |
| vTRXOLD | unknown | project_anchor | own_supporting | 0 | bsc | unit-395986 | `0x61edcf...422e93` | ⚠️ Unaudited |
| vTSLAB | unknown | project_anchor | own_supporting | 0 | bsc | unit-396043 | `0x974217...7469a3` | ⚠️ Unaudited |
| vTUSD | unknown | project_anchor | own_supporting | 0 | bsc | unit-396080 | `0xbf762c...3bee6e` | ⚠️ Unaudited |
| vTUSDOLD | unknown | project_anchor | own_supporting | 0 | bsc | unit-395926 | `0x08ceb3...8084c3` | ⚠️ Unaudited |
| vTWT | unknown | project_anchor | own_supporting | 0 | bsc | unit-395974 | `0x4d41a3...e6edcc` | ⚠️ Unaudited |
| vU | unknown | project_anchor | own_supporting | 0 | bsc | unit-395962 | `0x3d5e26...fa245e` | ⚠️ Unaudited |
| vUNI | unknown | project_anchor | own_supporting | 0 | bsc | unit-395948 | `0x27ff56...683612` | ⚠️ Unaudited |
| vUSD1 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395929 | `0x0c1da2...b67340` | ⚠️ Unaudited |
| vUSDC | unknown | project_anchor | own_supporting | 0 | bsc | unit-396119 | `0xeca881...2867c8` | ⚠️ Unaudited |
| vUSDe | unknown | project_anchor | own_supporting | 0 | bsc | unit-396006 | `0x74ca69...1680d7` | ⚠️ Unaudited |
| vUSDT | unknown | project_anchor | own_supporting | 0 | bsc | unit-396135 | `0xfd5840...bc0255` | ⚠️ Unaudited |
| vUST | unknown | project_anchor | own_supporting | 0 | bsc | unit-396011 | `0x783664...0d87bb` | ⚠️ Unaudited |
| vWBETH | unknown | project_anchor | own_supporting | 0 | bsc | unit-395997 | `0x6cfdec...a1a8a0` | ⚠️ Unaudited |
| vWBNB | unknown | project_anchor | own_supporting | 0 | bsc | unit-395995 | `0x6bca74...d816e9` | ⚠️ Unaudited |
| vXAUM | unknown | project_anchor | own_supporting | 0 | bsc | unit-396035 | `0x92e6ea...a0612a` | ⚠️ Unaudited |
| vXRP | unknown | project_anchor | own_supporting | 0 | bsc | unit-396066 | `0xb248a2...3b9c10` | ⚠️ Unaudited |
| vXVS | unknown | project_anchor | own_supporting | 0 | bsc | unit-395936 | `0x151b1e...fe3e1d` | ⚠️ Unaudited |
| WhitePaperInterestRateModel_base0bps_slope0bps_bpy10512000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396037 | `0x93fbc2...95135a` | ⚠️ Unaudited |
| WhitePaperInterestRateModel_base0bps_slope0bps_bpy21024000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396061 | `0xada653...3edb7e` | ⚠️ Unaudited |
| WhitePaperInterestRateModel_base0bps_slope0bps_bpy42048000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396070 | `0xb66d19...73b875` | ⚠️ Unaudited |
| WhitePaperInterestRateModel_base0bps_slope0bps_bpy70080000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395966 | `0x42ec3e...e0c6ad` | ⚠️ Unaudited |
| WhitePaperInterestRateModel_base0bps_slope24000bps_bpy10512000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396051 | `0xa166ca...dd984b` | ⚠️ Unaudited |
| WhitePaperInterestRateModel_base0bps_slope24000bps_bpy21024000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-395950 | `0x2d0a29...bb35db` | ⚠️ Unaudited |
| WhitePaperInterestRateModel_base0bps_slope24000bps_bpy42048000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396034 | `0x92cdf9...d10397` | ⚠️ Unaudited |
| WhitePaperInterestRateModel_base0bps_slope24000bps_bpy70080000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396128 | `0xf83362...b980d9` | ⚠️ Unaudited |
| WhitePaperInterestRateModel_base2629bps_slope30000bps_bpy10512000 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396069 | `0xb53504...cca042` | ⚠️ Unaudited |
| XVS | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | unit-396094 | `0xcf6bb5...626c63` | ⚠️ Unaudited |
| XVSStore | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395827 | `0x1db646...99d37b` | ⚠️ Unaudited |
| XVSStore | unknown | project_anchor | own_supporting | 0 | optimism | unit-395842 | `0xfe5486...0589d3` | ⚠️ Unaudited |
| XVSStore | unknown | project_anchor | own_supporting | 0 | bsc | unit-395943 | `0x1e25cf...9c4359` | ⚠️ Unaudited |
| XVSStore | unknown | project_anchor | own_supporting | 0 | unichain | unit-395861 | `0x0ee4b3...b2a7bb` | ⚠️ Unaudited |
| XVSStore | unknown | project_anchor | own_supporting | 0 | base | unit-396143 | `0x11b084...c7955a` | ⚠️ Unaudited |
| XVSStore | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395901 | `0x507d99...93ec5e` | ⚠️ Unaudited |
| XVSVaultProxy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395830 | `0xa0882c...e9b994` | ⚠️ Unaudited |
| XVSVaultProxy | unknown | project_anchor | own_supporting | 0 | optimism | unit-395835 | `0x133120...947e01` | ⚠️ Unaudited |
| XVSVaultProxy | unknown | project_anchor | own_supporting | 0 | unichain | unit-395863 | `0x5eca0f...248ef6` | ⚠️ Unaudited |
| XVSVaultProxy | unknown | project_anchor | own_supporting | 0 | base | unit-396146 | `0x708b54...2d7fcd` | ⚠️ Unaudited |
| XVSVaultProxy | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395905 | `0x8b7969...52d5b4` | ⚠️ Unaudited |
| XVSVaultProxy / XVSVaultProxy_Proxy | unknown | project_anchor | own_supporting | 0 | bsc | unit-395918 | `0x051100...3f9204` | ⚠️ Unaudited |
| XVSVaultProxy_Implementation | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395828 | `0x437042...43bc28` | ⚠️ Unaudited |
| XVSVaultProxy_Implementation | unknown | project_anchor | own_supporting | 0 | optimism | unit-395838 | `0x8b8651...cfe7d9` | ⚠️ Unaudited |
| XVSVaultProxy_Implementation | unknown | project_anchor | own_supporting | 0 | bsc | unit-396005 | `0x74c8a9...43b378` | ⚠️ Unaudited |
| XVSVaultProxy_Implementation | unknown | project_anchor | own_supporting | 0 | unichain | unit-395862 | `0x2ba0f4...be1d02` | ⚠️ Unaudited |
| XVSVaultProxy_Implementation | unknown | project_anchor | own_supporting | 0 | base | unit-396144 | `0x322f1a...0efcf9` | ⚠️ Unaudited |
| XVSVaultProxy_Implementation | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395900 | `0x4c4bed...b07384` | ⚠️ Unaudited |
| XVSVesting / XVSVestingProxy_Implementation | unknown | project_anchor | own_supporting | 0 | bsc | unit-396057 | `0xa9dd05...21bff1` | ⚠️ Unaudited |
| XVSVestingProxy / XVSVestingProxy_Proxy | unknown | project_anchor | own_supporting | 0 | bsc | unit-396067 | `0xb28dec...e8b2ce` | ⚠️ Unaudited |

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
| DefaultProxyAdmin | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-395895 | `0x8ea1a9...a00287` | ❓ Unverified |
| Prime / Prime_Proxy | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-395899 | `0xdfe62d...599978` | ❓ Unverified |
| Prime_Implementation | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-395896 | `0x9ac8ab...6ca972` | ❓ Unverified |
| PrimeLiquidityProvider / PrimeLiquidityProvider_Proxy | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-395891 | `0x0ede6d...cb5dff` | ❓ Unverified |
| PrimeLiquidityProvider_Implementation | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-395893 | `0x51b036...59513e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-395833 | `0xfd9b07...eb22fa` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-395834 | `0x104c01...e7d3da` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-396123 | `0xf32294...9f35e9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396161 | `0x0122b6...2afa11` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396162 | `0x04cdb7...43cd3f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396163 | `0x05b2ec...9fe319` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396164 | `0x08a2f4...e9c7dd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396165 | `0x08e0a5...68e5e4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396166 | `0x0acdc3...a3fcef` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396167 | `0x0cf272...5ad387` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396168 | `0x0dab76...f26ca0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396169 | `0x0f5f4e...037b00` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396170 | `0x0f8f76...b33faf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396171 | `0x12a1be...ff63f9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396172 | `0x12b886...93e89e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396173 | `0x137352...a7391f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396174 | `0x13b3c3...4322f7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396175 | `0x162d00...a84aab` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396176 | `0x16e0d2...ecf797` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396177 | `0x171b46...25e24e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396178 | `0x17a622...6224bd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396179 | `0x18a312...a8e852` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396180 | `0x1a4408...9cd8dc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396181 | `0x1ac040...a6a969` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396182 | `0x1ccdaf...5a6b80` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396183 | `0x20da55...13d884` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396184 | `0x218245...4157b3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396185 | `0x24b5bd...30228c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396186 | `0x253b09...963a09` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396187 | `0x2612ea...174cb9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396188 | `0x274362...d97562` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396189 | `0x2afdf0...15fcc5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396190 | `0x2b12fe...e641b6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396191 | `0x2e7222...cde62c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396192 | `0x35566e...d0c32b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396193 | `0x3619bd...316516` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396194 | `0x369fea...819278` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396195 | `0x37bd1a...fda91c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396196 | `0x37c28d...6ede64` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396197 | `0x3985fd...dbe262` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396198 | `0x39a239...23451d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396199 | `0x3a00d9...083fb0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396200 | `0x3b7be1...489d49` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396201 | `0x3b99ce...5dffc6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396202 | `0x3c439a...fb82d9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396203 | `0x3d1c43...5434fc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396204 | `0x3ed56f...9647fa` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396205 | `0x3f047c...3a8c3b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396206 | `0x3f4869...6ec257` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396207 | `0x4048c6...a21fe8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396208 | `0x40e5d8...af1726` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396209 | `0x429d0a...6930e8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396210 | `0x4348fc...0fc804` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396211 | `0x447512...80697d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396212 | `0x471a33...9e3723` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396213 | `0x488ab2...d3ca2c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396214 | `0x4b22c7...a059f4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396215 | `0x4b7c16...e1cca9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396216 | `0x4d3870...4ea563` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396217 | `0x4ea05c...79fdec` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396218 | `0x4fae14...f70ad7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396219 | `0x519e61...0917cf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396220 | `0x51b17d...72ce74` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396221 | `0x51fd03...8667d4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396222 | `0x53c229...c30976` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396223 | `0x55aeab...b4865f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396224 | `0x562639...604a12` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396225 | `0x56e364...8d632f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396226 | `0x59a76c...622c68` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396227 | `0x5c1c23...ab590b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396228 | `0x5c764d...87c53c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396229 | `0x5e6835...33b698` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc-testnet | unit-396230 | `0x5ffbe5...3752d9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396231 | `0x603864...9a3876` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396232 | `0x66d8ac...9c9373` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396233 | `0x6af3fd...c67c04` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396234 | `0x6b31cb...b35890` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396235 | `0x6ce131...3fb710` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396236 | `0x6d6f69...dc237e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396237 | `0x6d95fc...18c146` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396238 | `0x714db6...1d9eb6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396239 | `0x72c341...51f39a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396240 | `0x744692...a3de80` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396241 | `0x76b88f...c89b72` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396242 | `0x7877ff...344c91` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396243 | `0x798ac2...ec5a4e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396244 | `0x7a780f...ccd8f7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396245 | `0x7b4dba...6839f8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396246 | `0x7cba76...c8af2e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396247 | `0x7db4f5...a57118` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396248 | `0x7dcbd1...00227b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396249 | `0x827377...372874` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396250 | `0x83edf1...a51ac0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396251 | `0x86a942...199143` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396252 | `0x86f8df...da46bd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396253 | `0x8734db...e0722d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396254 | `0x8a637e...4803e6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396255 | `0x8b2936...80276f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396256 | `0x8bfc2a...057723` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396257 | `0x8d90ad...5a3121` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396258 | `0x8f63ca...218540` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396259 | `0x90535b...c86032` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396260 | `0x923365...bf2855` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396261 | `0x93969f...616d90` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396262 | `0x93ad97...07cfec` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396263 | `0x94d182...46b77d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396264 | `0x958292...e88fc0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396265 | `0x95daed...6721df` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396266 | `0x962edf...f06f92` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396267 | `0x965730...253716` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396268 | `0x9667b6...9980c8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396269 | `0x980156...af677a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396270 | `0x9ab56b...b82280` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396271 | `0x9ab9da...65ab08` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396272 | `0x9ac449...406a76` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396273 | `0x9c2666...342c03` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396274 | `0x9e1ecb...a2eb5d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396275 | `0xa1d93e...cdeca9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396276 | `0xa313f7...a61653` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396277 | `0xa3244e...131454` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396278 | `0xa38110...ad0387` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396279 | `0xa5f1d4...ee1dd2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396280 | `0xa6ee55...9e7477` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396281 | `0xa8694c...6050a2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396282 | `0xab81e7...7aa131` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396283 | `0xadeddc...b80b7e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396284 | `0xae81ca...5e3b1f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396285 | `0xafc13b...2eba52` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396286 | `0xb1993a...ed2f8e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396287 | `0xb200db...14c00f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396288 | `0xb21e69...0786f1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396289 | `0xb6e932...0ebcbe` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396290 | `0xb75265...3b441a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396291 | `0xb83ec5...210cae` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396292 | `0xb889f3...449c95` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396293 | `0xb8db7d...a51ac2` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc-testnet | unit-396294 | `0xb9e0e7...a7c8ff` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396295 | `0xbb34bb...4b0e44` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396296 | `0xbba0de...a6c01e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396297 | `0xbc85d7...aeabfb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396298 | `0xbd99c5...90273d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396299 | `0xbd9eb0...41eb8c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396300 | `0xc24a55...8b51d9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396301 | `0xc8dc4a...850e8d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396302 | `0xc93cbf...56d125` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396303 | `0xcd5a00...abdce7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396304 | `0xcf744e...c53235` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396305 | `0xcfa3a6...9d9bc8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396306 | `0xd1e350...8e93ed` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396307 | `0xd32721...f223cc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396308 | `0xd5c4c2...f9a1a7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396309 | `0xd9e778...2b0b1c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396310 | `0xdb49a0...0025f7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396311 | `0xdda903...d5dbbf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396312 | `0xde06a8...a247ca` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396313 | `0xde9bec...0106f4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396314 | `0xe0d377...af0a66` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396315 | `0xe30875...0d728a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396316 | `0xe33b7a...46d0b0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396317 | `0xe840f8...4b62ad` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396318 | `0xebb0b3...047faa` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396319 | `0xec2236...21b9b2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396320 | `0xedac03...459bc6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396321 | `0xef4017...ac332e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396322 | `0xefaacf...d4cf23` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396323 | `0xf06e66...4f5636` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396324 | `0xf0fcb2...7705da` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396325 | `0xf1a8b4...174872` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396326 | `0xf334e4...8048f5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396327 | `0xf40e0e...a2e9f9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396328 | `0xf59b7f...85b90b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396329 | `0xf621b1...a992eb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396330 | `0xf912d3...03c9a9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396331 | `0xfb14dd...7bb8b0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396332 | `0xfb778f...ec7364` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396333 | `0xfc5538...f9438b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-396334 | `0xfdebf4...391bd9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | unichain | unit-395866 | `0x958f4c...43d69b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | opbnb | unit-395881 | `0xddc901...f72c52` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-300 | unit-395882 | `0x18e44f...40b6d3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-300 | unit-395883 | `0x3407c3...266517` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-300 | unit-395884 | `0x42639e...5156c4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-300 | unit-395885 | `0x553d7b...e6aa67` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-300 | unit-395886 | `0x72b859...54fbcf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-300 | unit-395887 | `0x825f9e...18564e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-300 | unit-395888 | `0x943ebe...d564ba` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-300 | unit-395889 | `0xc28977...b4cd5c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-300 | unit-395890 | `0xf0daef...332d88` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-395897 | `0xb2e917...d95599` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | unichain-sepolia | unit-395869 | `0x0c7cb6...76428e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | unichain-sepolia | unit-395870 | `0x256735...7804aa` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | unichain-sepolia | unit-395871 | `0x356e9e...c138c0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | unichain-sepolia | unit-395872 | `0x3a33d2...16717a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | unichain-sepolia | unit-395873 | `0x59b95b...14317a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | unichain-sepolia | unit-395874 | `0xcaa889...51c780` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | unichain-sepolia | unit-395875 | `0xd19d23...37ebba` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | unichain-sepolia | unit-395876 | `0xda4dcf...bad586` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | unichain-sepolia | unit-395877 | `0xee012b...a2569b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | opbnb-testnet | unit-396139 | `0x06473f...b2e0a0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | opbnb-testnet | unit-396140 | `0x337091...8409f3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | opbnb-testnet | unit-396141 | `0x6e09f3...40c3b1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | opbnb-testnet | unit-396142 | `0xb14a0e...d16f01` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-396148 | `0xbefd8d...7939d1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-395904 | `0x8a662c...cda631` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-396152 | `0x00d346...b091d0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-396153 | `0x059f1e...418cdc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-396154 | `0x07e880...c417a6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-396155 | `0x15a1ac...a83b50` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-396156 | `0x926afc...d9dd3a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-396157 | `0x9b5d0a...e269b8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-396158 | `0xb5ba66...94de37` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-396159 | `0xb85dd1...a82546` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-396160 | `0xc88d27...1ca0fc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-395908 | `0x134303...5b058b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-395909 | `0x255efc...b07fef` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-395910 | `0x407507...c8a17f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-395911 | `0x4e7ab1...3d5bdb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-395912 | `0x4e909d...db67dd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-395913 | `0xadb04a...786e89` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-395914 | `0xb06a9b...9182c3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-395915 | `0xe82c2c...904694` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-395843 | `0x03b868...7b5d3d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-395844 | `0x1129f8...a99fd5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-395845 | `0x15242a...3ce9b4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-395846 | `0x2ec432...f14abc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-395847 | `0x3a0e6f...96e9d4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-395848 | `0x4116ca...57fbf8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-395849 | `0xc48b9a...e3d037` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-395850 | `0xe36f76...9772fc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | optimism-sepolia | unit-395851 | `0x4d344e...43dacc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | optimism-sepolia | unit-395852 | `0x54deb5...e89704` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | optimism-sepolia | unit-395853 | `0x5a1a12...c7d755` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | optimism-sepolia | unit-395854 | `0x66aaab...b0a16f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | optimism-sepolia | unit-395855 | `0x7a0245...3ba347` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | optimism-sepolia | unit-395856 | `0x84cca3...fd69d7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | optimism-sepolia | unit-395857 | `0xa9aaf2...c89241` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | optimism-sepolia | unit-395858 | `0xe3ec95...7a9af5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | optimism-sepolia | unit-395859 | `0xe888fa...6a0143` | ❓ Unverified |
| XVSStore | unknown | project_anchor | own_supporting | 0 | opbnb | unit-395880 | `0xc32794...f3f775` | ❓ Unverified |
| XVSStore | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-395894 | `0x84266f...01e3ce` | ❓ Unverified |
| XVSVaultProxy | unknown | project_anchor | own_supporting | 0 | opbnb | unit-395879 | `0x7dc969...737988` | ❓ Unverified |
| XVSVaultProxy | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-395898 | `0xbbb3c8...8f326f` | ❓ Unverified |
| XVSVaultProxy_Implementation | unknown | project_anchor | own_supporting | 0 | opbnb | unit-395878 | `0x785bef...5e2a71` | ❓ Unverified |
| XVSVaultProxy_Implementation | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-395892 | `0x513323...ae0590` | ❓ Unverified |

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
