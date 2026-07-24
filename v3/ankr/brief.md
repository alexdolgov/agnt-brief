# Agentic Audit Brief: Ankr

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 14 (0 matched; 14 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Ankr (`ankr`)
- Website: [https://www.ankr.com/](https://www.ankr.com/)
- Lifecycle: active (Tier 0, 93.1% below peak)
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, avalanche, blast, bsc, ethereum, fantom, gnosis, goerli, linea, mode, opbnb, optimism, polygon, scroll
- Contract surface: 311 unique implementations (510 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $18,101,801.55
- On-chain TVL (included contracts): $33,425,852.16
- TVL by chain: Ethereum $33,425,696.43 | Polygon $122.19 | Avalanche $32.98 | Bsc $0.56

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Ankr. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 58 contract row(s) across arbitrum, avalanche, blast, bsc, ethereum, fantom, gnosis, goerli, linea, mode, opbnb, optimism, polygon, scroll, sepolia. Structural roles: 34 unclassified, 15 core, 7 supporting, 2 infra. 22 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 58
- Structural roles: unclassified (34), core (15), supporting (7), infra (2)
- Contract kinds: contract (57), abstract (1)
- Detected standards: erc1967proxy (15), ownable (7), erc20 (3), pausable (2)
- Frameworks: openzeppelin (20), openzeppelin-upgradeable (10), foundry (1)
- Upgradeable-pattern rows: 22

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 58; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 94 exact-address-book context/dependencies excluded, 2 exact-address-book entries needing review
- Outside the address book: 215 discovered implementations shown in the inventory but excluded from coverage (11 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 136
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/188
- Verified + Unaudited implementations: 188
- Verified by bytecode match: 0
- Unverified implementations: 123
- Unique implementations: 311
- Raw deployments: 510
- Audits discovered: 14 (14 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-08 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 13 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (188)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ANKRToken | token | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x38a03b35a6662d35b226879e57d499ee26a6d4b5`; ethereum `0x8290333cef9e6d528dd5618fb97a76f268f3edd4`; ethereum `0xb5f406dd1dec522542c8504c4c31b7940f5d895c`; ethereum `0xe7c0b564cf331ffa2b73c4a9597217a9dec1994e` | ⚠️ Unaudited |
| AvalanchePool_R6 | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | avalanche | unit-226702 | 2 deployments: avalanche `0x7baa1e3bfe49db8361680785182b80bb420a836d`; avalanche `0xfad2d6dc790b6a12f7117b2965755cfabbb45874` | ⚠️ Unaudited |
| ANKRTokenVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x1d40c0998131f4a0254468eaf3ce8fc1f21d9da6`; ethereum `0x4c95e68ef087251200138039bbc7ff1c730db158`; ethereum `0x9c2578bf9e37eb1d0ddf45a410723d95e554cbdd` | ⚠️ Unaudited |
| SwapPool | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-226705 | 2 deployments: bsc `0x39126e9b4b0c18ec2e60e3590d0f1f44fc5e1cb6`; bsc `0x49b85a26800ab6c5432e2dc0dda82acb53d98642` | ⚠️ Unaudited |
| BNBStakingPool_R4 | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-226707 | 2 deployments: bsc `0x9e347af362059bf2e55839002c699f7a5bafe86e`; bsc `0xbbbc99198f62e56c20b44d2e6e63a7ebce88a9ac` | ⚠️ Unaudited |
| SwapPool | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | polygon | unit-226698 | 2 deployments: polygon `0x62a509ba95c75cabc7190469025e5abee4eddb2a`; polygon `0xbd00f00ed3c6805cd709998f3064fbc95460dbff` | ⚠️ Unaudited |
| GlobalPool_R46 | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-226690 | 2 deployments: ethereum `0x84db6ee82b7cf3b47e8f19270abde5718b936670`; ethereum `0xecce8778214fd9fe37c141a00cff19853ef5bc4a` | ⚠️ Unaudited |
| aBNBb | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | bsc | n/a | 5 deployments: bsc `0x00f8e64a8651e3479a0b20f46b1d462fe29d6abc`; bsc `0x2b6f9be1c144564162353e91317845f956380496`; bsc `0xbacd623ffc319560e3fe901799f3bec99f456b07`; bsc `0xd315b7664b99e559c3e209628453de182e77e411`; bsc `0xe380b02b16e050c2801cca83461916feca652ecf` | ⚠️ Unaudited |
| aBNBb_R1 | unknown | unclassified_address_book | needs_review (excluded) | 1 | bsc | n/a | 4 deployments: bsc `0x8121a7c1946558cca0c4fd1ec15f455ef03cd0cd`; bsc `0x8c22d09c6ad7bfa070262c1e42a683beec695855`; bsc `0x952398318838b4915ee5e800622a9613887759f5`; bsc `0xfe39985d7eff914c50a06ba0cffcca8361e00c0e` | ⚠️ Unaudited |
| aBNBb_R8 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1503d19bad7930e27bfc054ac1182df684c6c725` | ⚠️ Unaudited |
| aBNBc | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x2c93bd60c7cec4c2ca84f937a2c15e035d250c9e`; bsc `0x88bc9a56db42eae31f3c18d59dd3f28cf023fe81`; bsc `0xa2d1aa68a184d6243d8da9ae885742c635c5cc8b` | ⚠️ Unaudited |
| aBNBc | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x50be7ae35c5bf838d060045f33f93449f9aff49c`; bsc `0x9645920f8e2bbb1f3a2a25bf8e1acb9592db5874` | ⚠️ Unaudited |
| aBNBc_R1 | unknown | unclassified_address_book | needs_review (excluded) | 1 | bsc | unit-226704 | 3 deployments: bsc `0x2c00ce1a935ff8c9e78580533e2e17c36281c26e`; bsc `0x52f24a5e03aee338da5fd9df68d2b6fae1178827`; bsc `0x82af704a46d358b979f64b2e43823097312adf3d` | ⚠️ Unaudited |
| aBNBc_R4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfc8d81a01ded207ad3deb4fe91437cae52ded0b5` | ⚠️ Unaudited |
| AETH_R17 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89632e27427109d64ffe1cdd98027139477e020f` | ⚠️ Unaudited |
| AETH_R18 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ed1dfbccf893b7d2d730ead3e5edbf1f8f95a48` | ⚠️ Unaudited |
| AETH_R21 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73eadc7f8f7fe79f5eca14019beb02c2b21bd9da` | ⚠️ Unaudited |
| AETH_R21 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-226689 | 2 deployments: ethereum `0xe672e0e0101a7f58d728751e2a5e6da5ff1fda64`; ethereum `0xe95a203b1a91a908f9b9ce46459d101078c2c3cb` | ⚠️ Unaudited |
| aMATICb_R7 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc56c7481f610e890e51590c32ce4678a7c2d7f80` | ⚠️ Unaudited |
| aMATICb_R8 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c3d927010a29e9ad06982315274f4ad59352cf8` | ⚠️ Unaudited |
| aMATICc_R3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50be7ae35c5bf838d060045f33f93449f9aff49c` | ⚠️ Unaudited |
| aMATICc_R4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c00ce1a935ff8c9e78580533e2e17c36281c26e` | ⚠️ Unaudited |
| AnkrBEP20Token | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | n/a | `0xf307910a4c7bbc79691fd374889b36d8531b08e3` | ⚠️ Unaudited |
| AnkrETHRateProvider | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-226677 | `0x00f8e64a8651e3479a0b20f46b1d462fe29d6abc` | ⚠️ Unaudited |
| AnkrETHRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1f87f00c24f41a06d8ce81849584079c5df06d02`; ethereum `0x32c1cdaac671126b44a0dad316614a2a48c3ffeb` | ⚠️ Unaudited |
| AnkrTokenStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x029bfc71a0dadfa0f9de26e28312f18ba0ea4f1a`; ethereum `0x702ffbb6a227cdde0b908582b2ad1e3947de49e3`; ethereum `0xa274cfbd1a920a4a19c61de473ac21544a8cf06d`; ethereum `0xd315b7664b99e559c3e209628453de182e77e411` | ⚠️ Unaudited |
| AnkrTokenStaking | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-226679 | `0xfe8189a3016cb6a3668b8ccdac520ce572d4287a` | ⚠️ Unaudited |
| AuctionProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x87b3c773d6dd8fc3a5b8fb96217031f226f0a5a9` | ⚠️ Unaudited |
| AvalanchePool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8a2f83347f0e59faefe2320b7422f8aa432ce27a` | ⚠️ Unaudited |
| AvalanchePool_R2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x4755c0be76536309f40b924781b258faa0caba60`; avalanche `0xf3a2749cd9b0cbde9a1e165e5a8e121146817d14` | ⚠️ Unaudited |
| AvalanchePool_R3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd53a4d620347831e8a4afcb2657f70b7ef26a8d3` | ⚠️ Unaudited |
| AvalanchePool_R4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4e178dc6a86bdbc230761945dafa048f58b4b4f3` | ⚠️ Unaudited |
| AvalanchePool_R5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x40d6fc59fe5c3ecb045f9d7fe0bb5e18e7dad0a5` | ⚠️ Unaudited |
| BinancePool_R10 | core_logic | non_address_book | non_address_book_inventory (excluded) | 3 | bsc | n/a | 5 deployments: bsc `0x21bbff0e92f16b71baa1f93502fccdd2b7806f48`; bsc `0x64081eb9e28f0adb1cb544e524ab5d71422294af`; bsc `0x809ef445aef10e47ab2470b7591c5874f4dbe97a`; bsc `0xa274cfbd1a920a4a19c61de473ac21544a8cf06d`; bsc `0xfe8189a3016cb6a3668b8ccdac520ce572d4287a` | ⚠️ Unaudited |
| BinancePool_R11 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc56c7481f610e890e51590c32ce4678a7c2d7f80` | ⚠️ Unaudited |
| BinancePool_R13 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3aa5b53f10f82474f7b88fa893b3b3bfb0680310` | ⚠️ Unaudited |
| BinancePool_R14 | core_logic | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | bsc | unit-226708 | 2 deployments: bsc `0xa0c92efdcea55ca19396e4850b8d29df6f907bcd`; bsc `0xe778cc0413214c746f0e6e2d2782569d5bcdfffd` | ⚠️ Unaudited |
| BNBStakingPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 4 deployments: bsc `0x053ecf752861b2b2f6d9732ff0dd658f9ece14a4`; bsc `0x2aa271353d8ead0bb10240b5a9ff69d0e835fa0e`; bsc `0xd6c4146d1106f5febbaa87bbd9e0a86a74d64664`; bsc `0xe5632c1a41d9eebee4ab6183e601b5b5e29659be` | ⚠️ Unaudited |
| BNBStakingPool_R1 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x92fdcff007123ca5bad52d88b36bcf2a4204fa3f` | ⚠️ Unaudited |
| BNBStakingPool_R2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x013f2a7586ff1eff40d197c0e55b980a36a91d00` | ⚠️ Unaudited |
| BNBStakingPool_R3 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x20c1b4c0abb7ca5b83f228fc1f3b861075636e98` | ⚠️ Unaudited |
| BridgeRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0xcb0006b31e6b403feeec257a8abee0817bed7eba`; avalanche `0xcb0006b31e6b403feeec257a8abee0817bed7eba` | ⚠️ Unaudited |
| CerosRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x141105fc3b5bf9ec20e0628507ba580646be3c76`; polygon `0xe254f8cc2eec268c9153da733ae6a0eba831cbdc` | ⚠️ Unaudited |
| CerosRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x7c0e0162de86b01705f5e62a90604a3817e3fb6c`; polygon `0xbb4e7e69aa9e918b6ae51710cb6152e685553b1c` | ⚠️ Unaudited |
| CerosRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x8d575d202b7653fb2e076be451b006626cc31858`; polygon `0xb5a3f3a8c3990ad817ea02ee7ebad72ab962b39e` | ⚠️ Unaudited |
| CerosRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe84d3029fedd3cbe3d30c5245679cbd9b30118bc` | ⚠️ Unaudited |
| CerosYieldConverterStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x27f97003a947f82039ccf78873b59d4a001d1fd1`; polygon `0x41ca2bbcaca9c33aba3e96791f89bc42356f10c8` | ⚠️ Unaudited |
| CerosYieldConverterStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x29ded4c99690968562f2d067968aa72b7d46a65d`; polygon `0x8855d3fbcda1dfccf44ac6079d093bcf3a833f2d` | ⚠️ Unaudited |
| CerosYieldConverterStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x3d78f47fc07185db380ea873fe970dd096b8c922`; polygon `0x55c9dd38733fd168d27f1ca68118515b2c6a29ae` | ⚠️ Unaudited |
| CerosYieldConverterStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 5 deployments: polygon `0x4a019c03490b0535052170bb2151dc4552ccc7bb`; polygon `0x64fc77a3cbc8c713bfe96beb06dc3d72d96bd25f`; polygon `0x6def4570251e1f435e121b3ee47174496d851c99`; polygon `0xc91bd015bc9e62fbb14285b4bc246279462fe9f6`; polygon `0xd0c4a5ed2eb731e7942549fa748d0069fcef76f9` | ⚠️ Unaudited |
| CeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x8ec1877698acf262fe8ad8a295ad94d6ea258988`; polygon `0xf2393eeadd67bf68a60f39992113775966f34e1e` | ⚠️ Unaudited |
| CeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | polygon | n/a | 4 deployments: polygon `0xa6ae8f29e0031340ea5dbe11c2da4466cde34464`; polygon `0xb1b374667d600a43dc11587c94d1d40b46982ff8`; polygon `0xb44a251d1c31dd32700e5f2584b4282716c43eb3`; polygon `0xd8a0451811be47cec35afcd5037da4c21e57117a` | ⚠️ Unaudited |
| CeVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x2bde5adb0da369e28c29b8ea7aca997197167d62`; polygon `0x5e851dc1f56a05bb6d3c053fa756304a5171c345` | ⚠️ Unaudited |
| CeVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x50a180635b233a08c0fe98239d05b40f96efb6aa`; polygon `0x943806defe09c5cb0662e0774390081c86a2d613` | ⚠️ Unaudited |
| CeVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x92e77ba6cecb46733ae482ba1d7e011aa872ad7e`; polygon `0xa82644f96391c1f23ff6110a3b14041abf572342` | ⚠️ Unaudited |
| Clipper | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | polygon | n/a | 3 deployments: polygon `0x3b87b26c44971fc0e7e4cead219a1fe4e2f604c4`; polygon `0xbd38b722480e2e3d540cafc44a113d92e1015faa`; polygon `0xe148c9fc6cb7e968bff86ec9a6a881662d8ed9bb` | ⚠️ Unaudited |
| Clipper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0xb563ef00c5f7d8589974fd8d9606dc8376287831`; polygon `0xc4c0162e573504a83c960dd8ea5451e886989c4b` | ⚠️ Unaudited |
| CrossChainBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x31be0fa706e391a88c3a09cc13112bd55e0887f5`; polygon `0x6dcc8adb5bfab15d76ebd3ce27c1a71d835be8cb`; avalanche `0x6dcc8adb5bfab15d76ebd3ce27c1a71d835be8cb` | ⚠️ Unaudited |
| CrossChainBridge_R1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: polygon `0x4b695f0363b58b8d1de40c201c2f85e96771fe2a`; avalanche `0x3743d1fac8addc60ebe2eee8bffd4244645c0fc3` | ⚠️ Unaudited |
| CrossChainBridge_R2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-226685 | 2 deployments: ethereum `0x85ea08796eb66820379039cab034722e69e4e16c`; ethereum `0xc437df90b37c1db6657339e31bfe54627f0e7181` | ⚠️ Unaudited |
| CrossChainBridge_R2 | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | polygon | unit-226697 | 2 deployments: polygon `0x31be0fa706e391a88c3a09cc13112bd55e0887f5`; polygon `0xa0ea35d8b05f31a46937526f88a45c16db77b9be` | ⚠️ Unaudited |
| CrossChainBridge_R2 | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | avalanche | unit-226700 | 2 deployments: avalanche `0x31be0fa706e391a88c3a09cc13112bd55e0887f5`; avalanche `0xb902b8024cab7a17500d9dbab77a4c060d5c10f2` | ⚠️ Unaudited |
| CrossChainBridge_R3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd00b967296b6d8ec266e4ba64594f892d03a4d0a` | ⚠️ Unaudited |
| Davos | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x0fb82db5676330644acd26a21fd00c749715066d`; polygon `0xec38621e72d86775a89c7422746de1f52bba5320` | ⚠️ Unaudited |
| Davos | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe7cc549ea4fd4f3179eff67a35ebe35264db6a1c` | ⚠️ Unaudited |
| DavosBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x5e9765977e6d163cabc0ae76b9e9b3ee687e7a02`; polygon `0xf0d9cecc727f0909383923da716c0c51bd1abf72` | ⚠️ Unaudited |
| DavosBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x78be0423567a85ba677d3aa5b73b45970e52256b`; polygon `0xa7508b5de45ce0a511b3be85e80a2bb8f7274dd3` | ⚠️ Unaudited |
| DavosJoin | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x0633ea3769472bd74f30fad828ffb864d9f2e591`; polygon `0x8fcd9542a6ee0f05f470230da5b8cb41033da6df` | ⚠️ Unaudited |
| DavosProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x046b71694b3b659f491247167eda42e0556123cf`; polygon `0x9240949497265c02fbe8b0055af5d72f4b3e068a` | ⚠️ Unaudited |
| DavosProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x92afc5c40d03155151b2cd76fa0f0c7c6e31ee03` | ⚠️ Unaudited |
| DavosProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x9b81ebcda2d8a3d592cf0e620b0223d92e3f2374`; polygon `0xe2023c00f78a384dd96333590aea1e3a0a91fd6a` | ⚠️ Unaudited |
| dCOL | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x4f1b83ef5009bb4727e4b5efcfaaf5cbf3bce9ac`; polygon `0xd67189ebc295c0f8a99d768ca5b2b905944de9a7` | ⚠️ Unaudited |
| DepositWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba9df7d2e928acc7af5fdb22531f61675147fd29` | ⚠️ Unaudited |
| DGTRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | polygon | n/a | 3 deployments: polygon `0x04901268ee65e989852370c0bad08e1514a0c484`; polygon `0x54809f204999a886839ac46b2fd796282e727158`; polygon `0x624d6a1969cef4ff7b880685e76019509f3c0b49` | ⚠️ Unaudited |
| dMATIC | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | polygon | n/a | 3 deployments: polygon `0x08abfd7ded42cc33900d3457118eab7fc40b71c8`; polygon `0x0ace0e9b9d23bab3bc5c77e97cff2029935b7f7e`; polygon `0x87ad5ab05d7c1e1f904e029783810a2a95702563` | ⚠️ Unaudited |
| Dog | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | polygon | n/a | 3 deployments: polygon `0x0627528cc5e1779ff24e47c74b8e86492436b9fc`; polygon `0x122897d16b2dd5a193efce19a1b4f34d1c540118`; polygon `0x94b4fe36578065685be241d9eabe5c9e6b2920b2` | ⚠️ Unaudited |
| Dog | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x9b26a5e0234aa7eada50020ba0375d3dd7a9accd`; polygon `0xbfd158a63d2f58f7f723939bd492daf111d6efb4` | ⚠️ Unaudited |
| EarnConfig | governance | non_address_book | non_address_book_inventory (excluded) | 8 | bsc | n/a | 10 deployments: bsc `0x171643555a2173fab81bad1837f043f66d743252`; bsc `0x219a4e8f8c73d977f8d69596d434b5961068b26b`; bsc `0x2583619adde454dd1e3afdf4221d25303420dd56`; bsc `0x39af7ee9ad8eb0128795600aeecb72bcd21f4305`; bsc `0x4874247dd5eff278aa8b966f8f4f42314515960b`; bsc `0x67428de0680494e448f1a19d33c2022a51719348`; bsc `0x674d1f5a951778b7ae7badc876b26ac558ed546f`; bsc `0xc416dafff4863d104ee30af57ebbda902c9061d1`; bsc `0xd812ab5eb22425749a972450f5e5cb8bd82cb4e4`; bsc `0xe8396c4abf9e0addf14a051f8cd9dd8a09c20036` | ⚠️ Unaudited |
| FeeRecipient | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97c863ae15df5814d5bcf82b58c5eabee6bdce05` | ⚠️ Unaudited |
| FeeRecipient_R1 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-226682 | 2 deployments: ethereum `0x219a4e8f8c73d977f8d69596d434b5961068b26b`; ethereum `0x90b0c836a19a74195d45fad2d2d3895a7a3eab08` | ⚠️ Unaudited |
| FETH_R17 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ca86af6cb3dc9876705fe1579d281a80a9645cb` | ⚠️ Unaudited |
| FETH_R18 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5de57c3535e1f840ecb3e2a10c9955387685756d` | ⚠️ Unaudited |
| FETH_R20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x518d26405ca06435227bb3e8de567a16fa8f8125`; ethereum `0xf56bc68bd4d6277244ab22877bee7cff0b69ef01` | ⚠️ Unaudited |
| FETH_R21 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2aa271353d8ead0bb10240b5a9ff69d0e835fa0e` | ⚠️ Unaudited |
| FutureBondAVAX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x11e6ecc43f0da52ebd5ad7a6ba3fc925d7df6618` | ⚠️ Unaudited |
| FutureBondAVAX_R1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xde78c1d094ff062b9173cff4142a54971a789934` | ⚠️ Unaudited |
| FutureBondAVAX_R2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x66044a6e3e921e11900372b943061c83ecfbc9bd` | ⚠️ Unaudited |
| FutureBondAVAX_R3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7840a89079290f35390979b4c95b53b2926ca643` | ⚠️ Unaudited |
| FutureBondAVAX_R4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5d7e1c3df5961c9664435da0100d550fb9ac0a83` | ⚠️ Unaudited |
| FutureBondAVAX_R5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3156549752f744e493d57d97ae31fc4aa318a069` | ⚠️ Unaudited |
| FutureBondAVAX_R6 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3488e74267861d2ac354499c8896740fbf09b39a` | ⚠️ Unaudited |
| FutureBondAVAX_R7 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf094b4291c25ee85ed3996a21589fd1d4fb13b93` | ⚠️ Unaudited |
| FutureBondAVAX_R8 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | avalanche | unit-226699 | 2 deployments: avalanche `0x0f74bfd1a33471641d86d9c7d468694e0b0a9be3`; avalanche `0x6c6f910a79639dcc94b4feef59ff507c2e843929` | ⚠️ Unaudited |
| FutureCertAVAX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x96152df28527110c89763efb8f2394d25a9aa90e` | ⚠️ Unaudited |
| FutureCertAVAX_R1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x632ad3226f62b674be28c852233e7a44d4f84e6b` | ⚠️ Unaudited |
| FutureCertAVAX_R2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc040b8365686dc2cb2aefc004849f79a1025683e` | ⚠️ Unaudited |
| FutureCertAVAX_R3 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | avalanche | unit-226703 | `0xc3344870d52688874b06d844e0c36cc39fc727f6` | ⚠️ Unaudited |
| GemJoin | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x477c1a369ea157b42f6584a8a5960f9d34d7173e`; polygon `0x6a6450a6a25f67ad159d4a2c0ea701fc423ec55e` | ⚠️ Unaudited |
| GemJoin | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0xa534e0f7b1c6a4be0490a224bacc83220e3abde0`; polygon `0xf0bb4edf7c777eba1a728403c92df61f9aabf9c9` | ⚠️ Unaudited |
| GemJoin | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0xaf22a9c4713efc52f273c268674bcff6ab14c978`; polygon `0xf3e97ae7431cfc7ec266b3bd793615a16c5e6e0e` | ⚠️ Unaudited |
| GlobalPool_R40 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x213a1525c30b86b9668a0c98fd177b3d3af1f5a6` | ⚠️ Unaudited |
| GlobalPool_R41 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37ac345fa1428e3198b6a0d71deed41d83c140d3` | ⚠️ Unaudited |
| GlobalPool_R42 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52f24a5e03aee338da5fd9df68d2b6fae1178827` | ⚠️ Unaudited |
| GlobalPool_R43 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7885d048e41fb3c5697ce1cdc5eb3aeea276c964` | ⚠️ Unaudited |
| GlobalPool_R44 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14ec5317e5ebc0d1f62a7acf8ddeaf05d8eeb2bc` | ⚠️ Unaudited |
| GlobalPool_R45 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1701ad6a252e24dee1d71dc1cad6da5426e0a3f1` | ⚠️ Unaudited |
| GlobalPool_R47 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x053ecf752861b2b2f6d9732ff0dd658f9ece14a4` | ⚠️ Unaudited |
| IkkaRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x1a80b0512580791dda042fef0083e6ce7cbd5d88`; polygon `0x41bbd9f4359752c2647decb0bb3c7a08a0c3083d` | ⚠️ Unaudited |
| InsurancePool_R1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x7e28bff4c435c48ec20e2a8d975abb3af0ad6ecd` | ⚠️ Unaudited |
| InsurancePool_R2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | gnosis | unit-226692 | `0xb42bf10ab9df82f9a47b86dd76eee4ba848d0fa2` | ⚠️ Unaudited |
| Interaction | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x17a902fdc6860734751e315f0799673673096c9b`; polygon `0xdd0bdf5749e300f946cdb1ddfe1ffa828ec0db72` | ⚠️ Unaudited |
| Interaction | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x3f5f1b733ad75797962434992ee2f5a6b490dbef`; polygon `0xc734528d0525923f29979393f3988168ad26d402` | ⚠️ Unaudited |
| Interaction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdd62bcd052703684dbc4dd5ea533cd366a5e4b73` | ⚠️ Unaudited |
| InternetBondFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4bb67283562b9d698402c6a6e17b5299f0fbaa57` | ⚠️ Unaudited |
| InternetBondFactory_R1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c7f107c17793acf693551ea43b4783087cc78b0` | ⚠️ Unaudited |
| InternetBondRatioFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xe0810e4507cebac8fec3f519205e69c07440cfa3`; ethereum `0xef3c162450e1d08804493aa27be60cdaa054050f` | ⚠️ Unaudited |
| InternetBondRatioFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0xe0810e4507cebac8fec3f519205e69c07440cfa3`; avalanche `0xe0810e4507cebac8fec3f519205e69c07440cfa3` | ⚠️ Unaudited |
| InternetBondRatioFeed_R1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 4 deployments: ethereum `0x2f798f5117addf0bf6bed1bc5df953cbc5056a5c`; polygon `0x280cc37dac11b174560ea288200fafaa55b2f400`; polygon `0xb902b8024cab7a17500d9dbab77a4c060d5c10f2`; avalanche `0x5e5bebb775d701a6d3978f8219c37099cfbcdce7` | ⚠️ Unaudited |
| InternetBondRatioFeed_R2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x106e88bff044f845f13e2130859715acb6eb4656`; avalanche `0x6870edcd297f33ea986d4cf975ee049e668b36fe` | ⚠️ Unaudited |
| InternetBondRatioFeed_R2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | polygon | unit-226695 | 2 deployments: polygon `0x4f3872c6cfab8b39232351b8aab1cbcb958bbd07`; polygon `0xef3c162450e1d08804493aa27be60cdaa054050f` | ⚠️ Unaudited |
| InternetBondRatioFeed_R3 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-226687 | 2 deployments: ethereum `0x8ff4fb91c9fff1f57310de52d52d033c00523f81`; ethereum `0xcb0006b31e6b403feeec257a8abee0817bed7eba` | ⚠️ Unaudited |
| InternetBondRatioFeed_R3 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | avalanche | unit-226701 | 2 deployments: avalanche `0xd00b967296b6d8ec266e4ba64594f892d03a4d0a`; avalanche `0xef3c162450e1d08804493aa27be60cdaa054050f` | ⚠️ Unaudited |
| Jar | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x36417e58b08cef67e32cb80808a6858924341758`; polygon `0x4a20fe93dec6e5b2d66c246eb7e8ab228254c03f` | ⚠️ Unaudited |
| Jar | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x97f0bdadbfaa05a1944ffba862b3336a175056cf`; polygon `0xe69a1876bdacfa7a7a4f6d531be2fde843d2165c` | ⚠️ Unaudited |
| Jug | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x5eb89d7b8e10dec5267727d7ee0f128b557f892f`; polygon `0xc37f6af12c443ba8c749cbfa38944abffc156f22` | ⚠️ Unaudited |
| Jug | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | polygon | n/a | 3 deployments: polygon `0x85d05c7bc4aec86cd77d44dc97751d8ee5e2aba4`; polygon `0xc5a7344461eec05e174aa8ac4e4030b24aa02ebd`; polygon `0xfa9d186af6b34aec173966cc4a73e9e87abd0f8a` | ⚠️ Unaudited |
| LinearDecrease | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x604a34798db956cd78fec52f857c728496692ec7`; polygon `0xa48f322f8b3edff967629af79e027628b9dd1298` | ⚠️ Unaudited |
| LinearDecrease | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | polygon | n/a | 3 deployments: polygon `0x78d1528a8010639870874285a28eea4e30bc10e9`; polygon `0xd12b8bdea270617999ffc3a0dbe4ea49e4685bd5`; polygon `0xe309c0fe37d3696cf8c13a629dc43eaefc077418` | ⚠️ Unaudited |
| LP | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x5d04c6c5cce7e68f2dd13ec11742c35792d67f43`; ethereum `0xc465a8ce038ce4f2481f5abdeb0db73462bde5c6` | ⚠️ Unaudited |
| LP | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x757834c812d2fd95a6f8bd5ad15f59dc5f3da807`; bsc `0xf047f23acfdb1315cf63ad8ab5146d5fda4267af` | ⚠️ Unaudited |
| LP | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | polygon | n/a | 4 deployments: polygon `0x77bf5996b93c8d747c541e47105c5f7d05b2d556`; polygon `0x817166910ae0032462d0345dea80ca1ed3bbd6ad`; polygon `0x86e956154df2cd9495b6d92d9b0c2b00f8e390b1`; polygon `0xc3858135ea4f060029e1a22d468793464936d2c0` | ⚠️ Unaudited |
| LP | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0xa88b54e6b76fb97cdb8ecae868f1458e18a953f4`; polygon `0xd52ad5fd7cceb314676fa53f27339f5d3ed43026` | ⚠️ Unaudited |
| MasterVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x0730ba2252670cd71580dadf471f3e137592e800`; polygon `0xec1d6ad712ce29f9d395a1cef160c34170c2668c` | ⚠️ Unaudited |
| MasterVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x20642aca160e38eeb8dcf34b2cf15f0581e56525`; polygon `0x764ae6682deb212a66f754dee176901663c46554` | ⚠️ Unaudited |
| MasterVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 8 deployments: polygon `0x3d2c623fc32bff59606cdb11e6086f44206d3cef`; polygon `0x664da0068d1ab7044fc943971437e272a4c71d58`; polygon `0x759718e89c425a648a4ab48f5aecd52ab4382a1d`; polygon `0x879f6dd71ba71d08a06af863a91b2d8de54a23d2`; polygon `0x99a5bc1524e1ceb75a205c3f02be9ac3ed042e63`; polygon `0xa0cf627d429f35411820590d72ebad183fd61c33`; polygon `0xc8afcc8262023be0ff5063b74057fb74afdb7db7`; polygon `0xd4e426aba74ece196d375e01b53a70ebea51cf25` | ⚠️ Unaudited |
| MasterVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x77f4c841cb87fdfa43ab909cf56f7710af648a8e`; polygon `0xfa3fa862d91b9b264d062024cf81cc6c531aea3f` | ⚠️ Unaudited |
| MasterVault_V2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x9a1275304960dbc6a8d4a5795832823a7d53f30a`; polygon `0xd9dbd69974733481eecd0125898c8bb63c51f783` | ⚠️ Unaudited |
| MaticOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x31434814587a51b581495e0506056f18a4b0919e`; polygon `0xec348813a94c2873e4d2372ae40955392a12acff` | ⚠️ Unaudited |
| MaticOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: polygon `0x3693980607bc6d1b7384e3f484685c02be3ed0b7`; polygon `0x86440f01a197e232690c9694280a867f32478e06`; polygon `0xae6eebaa28d08ba60d2e39f92c8a85a8f7de8bd3` | ⚠️ Unaudited |
| MaticOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 6 | polygon | n/a | 7 deployments: polygon `0x4f174701c68c4b92d531e37258b8c705585e9363`; polygon `0x67423e8a06f1a35556e56b8214cda9a248c0fe09`; polygon `0x72112deeb7f68b5a2629adfb7b5830d8c06dc8a1`; polygon `0x8464bcab4bb9b086bff0150753d9451cf6388576`; polygon `0xb87d1cf2771e5f8aaabafc92f70b78c779b987f8`; polygon `0xc5da8f2dbf5982fc95c980f51606f72b4dcd826a`; polygon `0xf7f638b25b14922c888478ada13e4b1f03502c3e` | ⚠️ Unaudited |
| MaticToken | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x7d1afa7b718fb893db30a3abc0cfc608aacfebb0` | ⚠️ Unaudited |
| Migrations | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x14628bff22974c83ded120dfbb02de3a3b882448`; ethereum `0x24a4f427179c4661f1d350d8bb595bf071012633`; ethereum `0x64081eb9e28f0adb1cb544e524ab5d71422294af`; ethereum `0xa999784c394b051d5f65586ba6d9a40044a57e97`; ethereum `0xbacd623ffc319560e3fe901799f3bec99f456b07`; ethereum `0xc6bc626441351ab158e363aa1ac99abf67461f6b`; bsc `0x1b97100ea1d7126c4d60027e231ea4cb25314bdb`; bsc `0xa2923dd41897e463c8d789e3b37c1c63050f031b`; avalanche `0x14628bff22974c83ded120dfbb02de3a3b882448` | ⚠️ Unaudited |
| MrpcDeposit | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x5e1e6dcf05fb49568aa66f40b9e3834c86008c8f`; ethereum `0x764737fb03f2443798eb317677d253ff226b97a9` | ⚠️ Unaudited |
| MrpcDeposit | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x8ff4fb91c9fff1f57310de52d52d033c00523f81`; polygon `0xf8be84b27c594318590593e60e3f7ea7f8e25ae3` | ⚠️ Unaudited |
| Partners_R1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe9af6d4759a6700bc4c91aa59fd3288c670bc4b6` | ⚠️ Unaudited |
| PolkadotPool_R1 | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-226686 | `0x59f767ec659e9fe01ebcf930465e2ad4cc0f208e` | ⚠️ Unaudited |
| PolygonPool_R7 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x586ba28c4f892823e60d708f66f99c3192572d00` | ⚠️ Unaudited |
| PolygonPool_R8 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8121a7c1946558cca0c4fd1ec15f455ef03cd0cd` | ⚠️ Unaudited |
| PolygonPool_R8 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-226684 | 2 deployments: ethereum `0x82af704a46d358b979f64b2e43823097312adf3d`; ethereum `0xcfd4b4bc15c8bf0fd820b0d4558c725727b3ce89` | ⚠️ Unaudited |
| PriceGetter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 5 deployments: polygon `0x676f1279bda6e442839c71e9ccff07500e1cfe57`; polygon `0x6d870b8cfb261d3fa50e517662e5a18ddc8d99c7`; polygon `0xce48b880127c7de24246bdae5b66e26c44e2bb05`; polygon `0xd1e45eb93195cc72ddfd510cdfdbdc2a92b7bbd7`; polygon `0xe69fe31a139b49c4835297e2424fca5db7bf8afa` | ⚠️ Unaudited |
| ProviderRegistry | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | gnosis | unit-226693 | 2 deployments: gnosis `0x6c6f910a79639dcc94b4feef59ff507c2e843929`; gnosis `0x8a2f83347f0e59faefe2320b7422f8aa432ce27a` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 17 deployments: ethereum `0x39af7ee9ad8eb0128795600aeecb72bcd21f4305`; ethereum `0x595987a11656e6d7bc8779e8261e228e0ced9c5d`; ethereum `0x6a4ae724394147117832879f5f5c88608f448ad9`; bsc `0x32015e1bd4baac9b959b100b0ca253bd131de38f`; bsc `0x32c1cdaac671126b44a0dad316614a2a48c3ffeb`; bsc `0xdc8df5ee5072f726dc633dd8e7a6b19695689fd2`; gnosis `0xcc4e08a5bfa887621ad68826a0d5913d7a2cb392`; polygon `0x2304ce6b42d505141a286b7382d4d515950b1890`; polygon `0x24189c941406400c21f32b18894223ce6d755599`; polygon `0x619b44cfe07a9038034aecc11b995ac28d31b8fa`; polygon `0x6a4ae724394147117832879f5f5c88608f448ad9`; polygon `0x859cb9c272ae31faec8bb319568c1f84d2a50954`; polygon `0xc832261228412a381ef7664b7ad1a1f8445d83cd`; avalanche `0x3bfce37b5401bef13c78830d3a9fb14294d18c4f`; avalanche `0x6a4ae724394147117832879f5f5c88608f448ad9`; avalanche `0xb13ceca4f3809b49658cd1472c917a584626138b`; avalanche `0xcc4e08a5bfa887621ad68826a0d5913d7a2cb392` | ⚠️ Unaudited |
| RatioAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x2b6fe7d2b9ac97bf5411d1c71c9521f51ac3c863`; polygon `0xb2458394c47daa99048ae12883e87b5eaed88e0a` | ⚠️ Unaudited |
| RewardPoolTemplate_R2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd4cefbb09308b92610977eda6ade2163f50a2cca` | ⚠️ Unaudited |
| Sikka | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x00658fc8ec685727f3f59d381b8ad8f5e0fedbc2`; polygon `0x491579bed0862fd1f691a8eab2f614ec48bacd0d` | ⚠️ Unaudited |
| SikkaJoin | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x84cd2e9e46fb44e9f775a5fd08edcdaf2377c3c1`; polygon `0xb2565e05816963cfd957d8baeab95033470352bb` | ⚠️ Unaudited |
| SikkaProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x2f2e746b2e9ef33c2ac6348985f100af8dbc944d`; polygon `0x9edc0ea75e6023b93bbb41c16818e314cfe59d2b` | ⚠️ Unaudited |
| SimpleTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x347c488293915661df93d1eeb57ba8ea266a360e` | ⚠️ Unaudited |
| SimpleTokenFactory_R1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xc51c787b68bfa569ac237b6bfdebab2c1e048e21`; ethereum `0xe4fb4be78f2f1114d0933e4f587b6ba26a0da931` | ⚠️ Unaudited |
| SimpleTokenProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | optimism | n/a | 4 deployments: optimism `0xaeaeed23478c3a4b798e4ed40d8b7f41366ae861`; mode `0xdf474b7109b73b7d57926d43598d5934131136b2`; arbitrum `0xaeaeed23478c3a4b798e4ed40d8b7f41366ae861`; scroll `0xdf474b7109b73b7d57926d43598d5934131136b2` | ⚠️ Unaudited |
| sMATIC | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x30faab28c1af8f90574db759243888c8bd279536`; polygon `0xb396b31599333739a97951b74652c117be86ee1d` | ⚠️ Unaudited |
| Spotter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x7e426f367c40fc6e1ec919e0a7e51fcb9a564b0f`; polygon `0xf97680e99be42daccea9fe6f9f9aa385ccf97a62` | ⚠️ Unaudited |
| Spotter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0xbbf35c9dcb16ea3cb64a0fce51c51f9ca34079fe`; polygon `0xd659ae8b53f5733532ce6a2e881420d0c0740509` | ⚠️ Unaudited |
| StakingConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x11e6ecc43f0da52ebd5ad7a6ba3fc925d7df6618` | ⚠️ Unaudited |
| StakingConfig_R2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | `0x3bfce37b5401bef13c78830d3a9fb14294d18c4f` | ⚠️ Unaudited |
| StakingPool_R1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xb6fcfcc497271d837c050ec912004bca0d70db0f` | ⚠️ Unaudited |
| StakingPool_R3 | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | gnosis | unit-226694 | `0xfd0f61255913825da1c194b985f04982966c34d6` | ⚠️ Unaudited |
| StMaticOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x092fd701c7c082b2e4dd91f4e139bb3749b19734`; polygon `0x4be55a1b9f2aaf98b7b67ce26ad0958142700fee` | ⚠️ Unaudited |
| SwapPool | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-226688 | 2 deployments: ethereum `0xdc8df5ee5072f726dc633dd8e7a6b19695689fd2`; ethereum `0xf047f23acfdb1315cf63ad8ab5146d5fda4267af` | ⚠️ Unaudited |
| SwapPool | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | polygon | n/a | 4 deployments: polygon `0x2fa1879c6c5d058dd363cf99020689836bd7af78`; polygon `0x93ca89036dbe611efbef1d3600a00e856aa6339d`; polygon `0x9ddc997eae3eebd48154e58761879d6fbaa4357f`; polygon `0xe345c626846772d2e037007dbbca8d4c8d97a6e6` | ⚠️ Unaudited |
| SwapPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: bsc `0xc465a8ce038ce4f2481f5abdeb0db73462bde5c6`; polygon `0x819d1daa794c1c46b841981b61cc978d95a17b8e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x02934a1eaf91504429422ed9fcea78cfa4a8ff2e`; polygon `0x5763b321c9d47b106603d81e6465c76322e6c6bd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x24027bf7268b7617837213d0badba4553d740393`; polygon `0x442dc9e8a0370adc4a1d250da0d04803edfe9c56` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x6a3b5bad3f3937ef15ee3ec385397f4a9a8abe2d`; avalanche `0x7e28bff4c435c48ec20e2a8d975abb3af0ad6ecd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | avalanche | n/a | `0xdf474b7109b73b7d57926d43598d5934131136b2` | ⚠️ Unaudited |
| UChildERC20 | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | polygon | n/a | `0x101a023270368c0d50bffb62780f4afd4ea79c35` | ⚠️ Unaudited |
| ValidatorManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x7baa1e3bfe49db8361680785182b80bb420a836d` | ⚠️ Unaudited |
| ValidatorManager_R1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x1af8081989bfde63c3e7ac5868a9caa8f6112765` | ⚠️ Unaudited |
| ValidatorManager_R3 | governance | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | gnosis | unit-226691 | `0xe95a203b1a91a908f9b9ce46459d101078c2c3cb` | ⚠️ Unaudited |
| Vat | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x0837253af481db0a9b5ea17f9f983e7606051995`; polygon `0xa983f4b5137b89f82b2eb5dac415e6490f06f639` | ⚠️ Unaudited |
| Vat | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0xbdf1dcec3cd02a5230672fa4bd779bdb2e4a67a3`; polygon `0xfc9755d51bc4577f63886cd43debdd3c70e5b38b` | ⚠️ Unaudited |
| Vow | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | polygon | n/a | 3 deployments: polygon `0x58cf68493bc178a17b43b270ddbb8d4c1a271429`; polygon `0xb29c988b10d8c8731197997c958f7ecd703f2ed2`; polygon `0xf2209993fed25c82d83b61579caa55e8af9116ee` | ⚠️ Unaudited |
| Vow | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x6cfca08a8535a1029f906b1d7aceb421372c240f`; polygon `0xe437e43d7e5f2bae4a565a02b054dc15aeb7091d` | ⚠️ Unaudited |
| WaitingPool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x02048cb6be76db99bec28553edd1184dd7b7c5db`; polygon `0x1c539e755a1bdabb168aa9ad60b31548991981f9` | ⚠️ Unaudited |
| WaitingPool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x02237aaf5b62dbcdeac287e76f9ac1d5deec7738`; polygon `0xd25b3dbb79888f548ccfb3ffcf530fb0cb69bc4f` | ⚠️ Unaudited |
| WaitingPool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x02c7420407a6439d49e9816399a5d5b03187363b`; polygon `0xfedf355430be38c298c0515e804a0a5932b7672c` | ⚠️ Unaudited |
| WaitingPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x74fb5adf4eba704c42f5974b83e53bbda46f0c96` | ⚠️ Unaudited |
| WithdrawalPool | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-226683 | 2 deployments: ethereum `0x2583619adde454dd1e3afdf4221d25303420dd56`; ethereum `0x67428de0680494e448f1a19d33c2022a51719348` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (123)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| MaticPool | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | polygon | unit-226696 | `0xad0dcc6635a5c38be6b87007210797ad94adb4b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09b1fbbaa67269a3ec9573fab1cbf2021736d1ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x164255531e730788cb1e68a93c81edb585419f5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x185486869e615f5a5644991a491212582caa08fb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x26dcfbfa8bc267b250432c01c982eaf81cc5480c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x2d3f893c7c45c2be3ec63cf5385deafd7ece6aae` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x30176cecb6dbf0869d59493142925a0287b12216` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x347c488293915661df93d1eeb57ba8ea266a360e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x3ef6b6f4b67b8ed7564962abd7be09fbaee462d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4015ccad9218b109d3339b356392c6ee8438e5d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4069d8a3de3a72eca86ca5e0a4b94619085e7362` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40730f34668afcb3884f050cbc3d376a444bbe44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a5020dc88541c4e0ed19fd7e1da2f6722012c56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4bb67283562b9d698402c6a6e17b5299f0fbaa57` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x5cc56c266143f29a5054b9ae07f3ac3513a7965e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64de04b950d6413282cbf156092bf5e9b1f88ad1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c67e3f52c98c80a496a96f5e2f17dff797beb58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c6f910a79639dcc94b4feef59ff507c2e843929` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6dcc8adb5bfab15d76ebd3ce27c1a71d835be8cb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x7622e8510cf29e804be4987fffbca06968226498` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x84da8e731172827fcb233b911678e2a82e27baf2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a2f83347f0e59faefe2320b7422f8aa432ce27a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa08299614cee49737eee3d78ecac412a01b59558` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7646aafd681fccbb1c9d9761c84e14b4bbe3f76` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xab15b0bddc012092cb23f53953149a7f8c1f9e7f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xad0dcc6635a5c38be6b87007210797ad94adb4b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6fcfcc497271d837c050ec912004bca0d70db0f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xc6164272365951bd824a24502d26556526044eac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbfe11b78c2e6cb25c6eda2c6ff46cd4755c8fca` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xd01ef7c0a5d8c432fc2d1a85c66cf2327362e5c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe85f3b0773d614755f7668fe43b5339876d91171` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf307910a4c7bbc79691fd374889b36d8531b08e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfcc270d46f0ffc242c14f563cd4a16c8690bf79a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd0f61255913825da1c194b985f04982966c34d6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | n/a | `0x148bf822cae6a61b2f278801ef4369fddd2a80df` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | goerli | n/a | `0x19569acf063480a4498e3f06374e6ebe1276ac8f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | n/a | `0x2bbc91e1990f0dc5e5bad04aae000ca97f56990f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | n/a | `0x2d36a16198602554e34ef5fd5bd2481ef2507750` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | goerli | n/a | `0x7fed49f5b0497a060cdcff50bdbd22e5d07661d8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | n/a | `0x8f4ac23956aeef41984704768bde1032ed49501b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | n/a | `0xac32206a73c8406d74eb21cf7bd060bf841e64ad` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | n/a | `0xf8942990985cb8e3196b24b7f9c584945493ac3a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0xc437df90b37c1db6657339e31bfe54627f0e7181` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0xcb0006b31e6b403feeec257a8abee0817bed7eba` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0xe05a08226c49b636acf99c40da8dc6af83ce5bb3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x1075bea848451a13fd6f696b5d0fda52743e6439` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x39ab7acf8ffce773c415490a2bc31c5e8abdc2a2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x738d96caf7096659db4c1afbf1e1bdfd281f388c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x973616ff3b9d8f88411c5b4e6f928ee541e4d01f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xba30b345a3aa95e797c67d3031c17619453371c7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xc437df90b37c1db6657339e31bfe54627f0e7181` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xcb0006b31e6b403feeec257a8abee0817bed7eba` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xcb63ae9aa9886495f4e16d14c87de2c5ced43a35` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xe05a08226c49b636acf99c40da8dc6af83ce5bb3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xecce8778214fd9fe37c141a00cff19853ef5bc4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x4c5995fb5c3f82186ec4706cbba6e6e786185b3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x84db6ee82b7cf3b47e8f19270abde5718b936670` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xce4315ad1ea2ff811c47c3c1137bdd15212f66ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xde78c1d094ff062b9173cff4142a54971a789934` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x014c3237c119a9f6cb840b7254cf7c1dbc57f2b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x018998c3839dd15a150428890dc1b4676d16c60c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x05bb18cfcf85eadd17b35e94a5c2903c4b79d1d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x08da6af77947f5b63ed9c4fbad58741c9e442dbf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x0e9b89007eee9c958c0eda24ef70723c2c93dd58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x14628bff22974c83ded120dfbb02de3a3b882448` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x19ab3888ba27aa3239c140f785b7044c34b91ff1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x23dbd17d3975cc7e3c145171e4fcc104ba3c6b86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2f798f5117addf0bf6bed1bc5df953cbc5056a5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x347c488293915661df93d1eeb57ba8ea266a360e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4bb67283562b9d698402c6a6e17b5299f0fbaa57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5a691001bf7065a17e150681f5bfbd7bc45a668e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x601ab2230c2f7b8e719a0111febdfa94bb462c69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x61da67a4c7d7e2a5a43e9023aad5abf5d0391233` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x62f08e2479fe6dd32b7c04229b13c107bd5d4e04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6d122961bde916faf8a333bffd5355c6456cc286` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x728afebf516d818fcc0f3870d08bcb012094c5a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8190799786cff757f5ab5d1d21b81fb342bf976c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9fac904561d140cc62efacb8ce11ed3a27173e43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbbbcfd74459f9bd1cb59136c2dbc67b161b7d497` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc9cfcbe08c263a593019abf154bad18c5e6b0fe9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd084bf9fd7832e879fd53dfeb9966466658a5a90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdfedbefa91df4294b4f0c522997f8ea65c0404e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf2706543ccfc087842cdf625b40a96dc559f380d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | opbnb | n/a | `0x0c0efea731e3e9810c2b4822d5497eac107808ab` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | opbnb | n/a | `0xc51c787b68bfa569ac237b6bfdebab2c1e048e21` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x0615dbba33fe61a31c7ed131bda6655ed76748b1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x12d8ce035c5de3ce39b1fdd4c1d5a745eaba3b8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fantom | n/a | `0x26dcfbfa8bc267b250432c01c982eaf81cc5480c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x31be0fa706e391a88c3a09cc13112bd55e0887f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fantom | n/a | `0x8290333cef9e6d528dd5618fb97a76f268f3edd4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x84db6ee82b7cf3b47e8f19270abde5718b936670` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0xb42bf10ab9df82f9a47b86dd76eee4ba848d0fa2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-226680 | `0xcfc785741dc0e98ad4c9f6394bb9d43cd1ef5179` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | fantom | n/a | `0xdf474b7109b73b7d57926d43598d5934131136b2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0xef3c162450e1d08804493aa27be60cdaa054050f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mode | n/a | `0x12d8ce035c5de3ce39b1fdd4c1d5a745eaba3b8c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mode | n/a | `0x31be0fa706e391a88c3a09cc13112bd55e0887f5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x46f74778b265df3a15ec9695ccd2fd3869ca848c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xc437df90b37c1db6657339e31bfe54627f0e7181` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xcb0006b31e6b403feeec257a8abee0817bed7eba` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xe05a08226c49b636acf99c40da8dc6af83ce5bb3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xfc8d81a01ded207ad3deb4fe91437cae52ded0b5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x12d8ce035c5de3ce39b1fdd4c1d5a745eaba3b8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1becfb622db4812119e307068b36c49124aa3846` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x20cf1b6e9d856321ed4686877cf4538f2c84b4de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x280cc37dac11b174560ea288200fafaa55b2f400` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x38446adfd79e4285097ff7455d9e319888953321` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7557976de4a620bec1fc9e210a9c87190f01be08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9df460eb26cbe3aa673a6d58909067d4d8bbfd55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb6fcfcc497271d837c050ec912004bca0d70db0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xce4315ad1ea2ff811c47c3c1137bdd15212f66ed` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xd6fd021662b83bb1aabc2006583a62ad2efb8d4a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xd70c8aac058e6dafe3446f78091325f9e29bcee4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | n/a | `0x11d8680c7f8f82f623e840130eb06c33d9f90c89` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | n/a | `0x3743d1fac8addc60ebe2eee8bffd4244645c0fc3` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | linea | n/a | `0xa8ae6365383eb907e6b4b1b7e82a35752cc5ef8c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | blast | n/a | `0x049e6a52e2c9b7814c8178908f3630726c134c92` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | blast | n/a | `0x3580ac35bed2981d6bdd671a5982c2467d301241` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | blast | n/a | `0x8886d04007871becbffbde6e4b8a66090956e1b1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | scroll | n/a | `0x12d8ce035c5de3ce39b1fdd4c1d5a745eaba3b8c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | scroll | n/a | `0x31be0fa706e391a88c3a09cc13112bd55e0887f5` | ❓ Unverified |
| ValidatorStorage | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-226681 | `0xa2d1aa68a184d6243d8da9ae885742c635c5cc8b` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 418
- Live contracts: 0
- Unknown liveness contracts: 418
- Source-verified contracts: 360
- Currently scope-matched contracts retained as-is: 0
- Classification counts: candidate review=140, contamination review=17, exact address book overlap=1, source verified unclassified=203, unverified unclassified=57

Showing first 200 of 418 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| candidate review | AdminUpgradeabilityProxy<br>`0x67428de0680494e448f1a19d33c2022a51719348` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x99eeca7a7a18081161c43124b46d70c6c8945f4c` |
| candidate review | AnkrTokenStaking<br>`0x029bfc71a0dadfa0f9de26e28312f18ba0ea4f1a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x99eeca7a7a18081161c43124b46d70c6c8945f4c` |
| candidate review | AnkrTokenStaking<br>`0x702ffbb6a227cdde0b908582b2ad1e3947de49e3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x99eeca7a7a18081161c43124b46d70c6c8945f4c` |
| candidate review | AnkrTokenStaking<br>`0xa274cfbd1a920a4a19c61de473ac21544a8cf06d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x99eeca7a7a18081161c43124b46d70c6c8945f4c` |
| candidate review | AnkrTokenStaking<br>`0xd315b7664b99e559c3e209628453de182e77e411` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x99eeca7a7a18081161c43124b46d70c6c8945f4c` |
| candidate review | AnkrTokenStaking<br>`0xfe8189a3016cb6a3668b8ccdac520ce572d4287a` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x99eeca7a7a18081161c43124b46d70c6c8945f4c` |
| candidate review | ProxyAdmin<br>`0x39af7ee9ad8eb0128795600aeecb72bcd21f4305` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x99eeca7a7a18081161c43124b46d70c6c8945f4c` |
| candidate review | ProxyAdmin<br>`0x595987a11656e6d7bc8779e8261e228e0ced9c5d` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x99eeca7a7a18081161c43124b46d70c6c8945f4c` |
| candidate review | ProxyAdmin<br>`0x6a4ae724394147117832879f5f5c88608f448ad9` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xa1e8d0016482e9dd421b8f35d4cb0eb8a7b9ea6f` |
| candidate review | TransparentUpgradeableProxy<br>`0x32c1cdaac671126b44a0dad316614a2a48c3ffeb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x99eeca7a7a18081161c43124b46d70c6c8945f4c` |
| candidate review | TransparentUpgradeableProxy<br>`0x5d04c6c5cce7e68f2dd13ec11742c35792d67f43` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x99eeca7a7a18081161c43124b46d70c6c8945f4c` |
| candidate review | TransparentUpgradeableProxy<br>`0x764737fb03f2443798eb317677d253ff226b97a9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa1e8d0016482e9dd421b8f35d4cb0eb8a7b9ea6f` |
| candidate review | TransparentUpgradeableProxy<br>`0xcb0006b31e6b403feeec257a8abee0817bed7eba` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0xa1e8d0016482e9dd421b8f35d4cb0eb8a7b9ea6f` |
| candidate review | TransparentUpgradeableProxy<br>`0xef3c162450e1d08804493aa27be60cdaa054050f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa1e8d0016482e9dd421b8f35d4cb0eb8a7b9ea6f` |
| candidate review | TransparentUpgradeableProxy<br>`0xf047f23acfdb1315cf63ad8ab5146d5fda4267af` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x99eeca7a7a18081161c43124b46d70c6c8945f4c` |
| candidate review | ProxyAdmin<br>`0x32015e1bd4baac9b959b100b0ca253bd131de38f` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0x99eeca7a7a18081161c43124b46d70c6c8945f4c` |
| candidate review | ProxyAdmin<br>`0x32c1cdaac671126b44a0dad316614a2a48c3ffeb` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0x99eeca7a7a18081161c43124b46d70c6c8945f4c` |
| candidate review | ProxyAdmin<br>`0xdc8df5ee5072f726dc633dd8e7a6b19695689fd2` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0x99eeca7a7a18081161c43124b46d70c6c8945f4c` |
| candidate review | TransparentUpgradeableProxy<br>`0x00f8e64a8651e3479a0b20f46b1d462fe29d6abc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x99eeca7a7a18081161c43124b46d70c6c8945f4c` |
| candidate review | TransparentUpgradeableProxy<br>`0x171643555a2173fab81bad1837f043f66d743252` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0x99eeca7a7a18081161c43124b46d70c6c8945f4c` |
| candidate review | TransparentUpgradeableProxy<br>`0x219a4e8f8c73d977f8d69596d434b5961068b26b` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0x99eeca7a7a18081161c43124b46d70c6c8945f4c` |
| candidate review | TransparentUpgradeableProxy<br>`0x21bbff0e92f16b71baa1f93502fccdd2b7806f48` | non_address_book | core_logic | unknown | verified | review: no_fresh_structural_match | `0x99eeca7a7a18081161c43124b46d70c6c8945f4c` |
| candidate review | TransparentUpgradeableProxy<br>`0x2583619adde454dd1e3afdf4221d25303420dd56` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0x99eeca7a7a18081161c43124b46d70c6c8945f4c` |
| candidate review | TransparentUpgradeableProxy<br>`0x2aa271353d8ead0bb10240b5a9ff69d0e835fa0e` | non_address_book | core_logic | unknown | verified | review: no_fresh_structural_match | `0x99eeca7a7a18081161c43124b46d70c6c8945f4c` |
| candidate review | TransparentUpgradeableProxy<br>`0x2c93bd60c7cec4c2ca84f937a2c15e035d250c9e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x99eeca7a7a18081161c43124b46d70c6c8945f4c` |
| candidate review | TransparentUpgradeableProxy<br>`0x49b85a26800ab6c5432e2dc0dda82acb53d98642` | retained_scope_excluded_inventory | core_logic | unknown | verified | review: no_fresh_structural_match | `0x99eeca7a7a18081161c43124b46d70c6c8945f4c` |
| candidate review | TransparentUpgradeableProxy<br>`0x50be7ae35c5bf838d060045f33f93449f9aff49c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x99eeca7a7a18081161c43124b46d70c6c8945f4c` |
| candidate review | TransparentUpgradeableProxy<br>`0x67428de0680494e448f1a19d33c2022a51719348` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0x99eeca7a7a18081161c43124b46d70c6c8945f4c` |
| candidate review | TransparentUpgradeableProxy<br>`0x674d1f5a951778b7ae7badc876b26ac558ed546f` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0x99eeca7a7a18081161c43124b46d70c6c8945f4c` |
| candidate review | TransparentUpgradeableProxy<br>`0x757834c812d2fd95a6f8bd5ad15f59dc5f3da807` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x99eeca7a7a18081161c43124b46d70c6c8945f4c` |
| candidate review | TransparentUpgradeableProxy<br>`0x809ef445aef10e47ab2470b7591c5874f4dbe97a` | non_address_book | core_logic | unknown | verified | review: no_fresh_structural_match | `0x99eeca7a7a18081161c43124b46d70c6c8945f4c` |
| candidate review | TransparentUpgradeableProxy<br>`0x88bc9a56db42eae31f3c18d59dd3f28cf023fe81` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x99eeca7a7a18081161c43124b46d70c6c8945f4c` |
| candidate review | TransparentUpgradeableProxy<br>`0x9e347af362059bf2e55839002c699f7a5bafe86e` | retained_scope_excluded_inventory | core_logic | unknown | verified | review: no_fresh_structural_match | `0x99eeca7a7a18081161c43124b46d70c6c8945f4c` |
| candidate review | TransparentUpgradeableProxy<br>`0xa0c92efdcea55ca19396e4850b8d29df6f907bcd` | retained_scope_excluded_inventory | core_logic | unknown | verified | review: no_fresh_structural_match | `0x99eeca7a7a18081161c43124b46d70c6c8945f4c` |
| candidate review | TransparentUpgradeableProxy<br>`0xa274cfbd1a920a4a19c61de473ac21544a8cf06d` | non_address_book | core_logic | unknown | verified | review: no_fresh_structural_match | `0x99eeca7a7a18081161c43124b46d70c6c8945f4c` |
| candidate review | TransparentUpgradeableProxy<br>`0xbacd623ffc319560e3fe901799f3bec99f456b07` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x99eeca7a7a18081161c43124b46d70c6c8945f4c` |
| candidate review | TransparentUpgradeableProxy<br>`0xc416dafff4863d104ee30af57ebbda902c9061d1` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0x99eeca7a7a18081161c43124b46d70c6c8945f4c` |
| candidate review | TransparentUpgradeableProxy<br>`0xd315b7664b99e559c3e209628453de182e77e411` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x99eeca7a7a18081161c43124b46d70c6c8945f4c` |
| candidate review | TransparentUpgradeableProxy<br>`0xd812ab5eb22425749a972450f5e5cb8bd82cb4e4` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0x99eeca7a7a18081161c43124b46d70c6c8945f4c` |
| candidate review | TransparentUpgradeableProxy<br>`0xe5632c1a41d9eebee4ab6183e601b5b5e29659be` | non_address_book | core_logic | unknown | verified | review: no_fresh_structural_match | `0x99eeca7a7a18081161c43124b46d70c6c8945f4c` |
| candidate review | TransparentUpgradeableProxy<br>`0xe8396c4abf9e0addf14a051f8cd9dd8a09c20036` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0x99eeca7a7a18081161c43124b46d70c6c8945f4c` |
| candidate review | TransparentUpgradeableProxy<br>`0xfe39985d7eff914c50a06ba0cffcca8361e00c0e` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x99eeca7a7a18081161c43124b46d70c6c8945f4c` |
| candidate review | ProxyAdmin<br>`0xcc4e08a5bfa887621ad68826a0d5913d7a2cb392` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2ffc59d32a524611bb891cab759112a51f9e33c0` |
| candidate review | StakingConfig<br>`0x11e6ecc43f0da52ebd5ad7a6ba3fc925d7df6618` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2ffc59d32a524611bb891cab759112a51f9e33c0` |
| candidate review | TransparentUpgradeableProxy<br>`0x3bfce37b5401bef13c78830d3a9fb14294d18c4f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2ffc59d32a524611bb891cab759112a51f9e33c0` |
| candidate review | TransparentUpgradeableProxy<br>`0x8a2f83347f0e59faefe2320b7422f8aa432ce27a` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x2ffc59d32a524611bb891cab759112a51f9e33c0` |
| candidate review | TransparentUpgradeableProxy<br>`0xb42bf10ab9df82f9a47b86dd76eee4ba848d0fa2` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x2ffc59d32a524611bb891cab759112a51f9e33c0` |
| candidate review | ProxyAdmin<br>`0x2304ce6b42d505141a286b7382d4d515950b1890` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| candidate review | ProxyAdmin<br>`0x24189c941406400c21f32b18894223ce6d755599` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| candidate review | ProxyAdmin<br>`0x619b44cfe07a9038034aecc11b995ac28d31b8fa` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| candidate review | ProxyAdmin<br>`0x6a4ae724394147117832879f5f5c88608f448ad9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa1e8d0016482e9dd421b8f35d4cb0eb8a7b9ea6f` |
| candidate review | ProxyAdmin<br>`0x859cb9c272ae31faec8bb319568c1f84d2a50954` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| candidate review | ProxyAdmin<br>`0xc832261228412a381ef7664b7ad1a1f8445d83cd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| candidate review | TransparentUpgradeableProxy<br>`0x00658fc8ec685727f3f59d381b8ad8f5e0fedbc2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| candidate review | TransparentUpgradeableProxy<br>`0x02934a1eaf91504429422ed9fcea78cfa4a8ff2e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| candidate review | TransparentUpgradeableProxy<br>`0x02c7420407a6439d49e9816399a5d5b03187363b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| candidate review | TransparentUpgradeableProxy<br>`0x046b71694b3b659f491247167eda42e0556123cf` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| candidate review | TransparentUpgradeableProxy<br>`0x08abfd7ded42cc33900d3457118eab7fc40b71c8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| candidate review | TransparentUpgradeableProxy<br>`0x092fd701c7c082b2e4dd91f4e139bb3749b19734` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| candidate review | TransparentUpgradeableProxy<br>`0x0ace0e9b9d23bab3bc5c77e97cff2029935b7f7e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| candidate review | TransparentUpgradeableProxy<br>`0x122897d16b2dd5a193efce19a1b4f34d1c540118` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| candidate review | TransparentUpgradeableProxy<br>`0x1a80b0512580791dda042fef0083e6ce7cbd5d88` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| candidate review | TransparentUpgradeableProxy<br>`0x1c539e755a1bdabb168aa9ad60b31548991981f9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| candidate review | TransparentUpgradeableProxy<br>`0x27f97003a947f82039ccf78873b59d4a001d1fd1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| candidate review | TransparentUpgradeableProxy<br>`0x29ded4c99690968562f2d067968aa72b7d46a65d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| candidate review | TransparentUpgradeableProxy<br>`0x2b6fe7d2b9ac97bf5411d1c71c9521f51ac3c863` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| candidate review | TransparentUpgradeableProxy<br>`0x2fa1879c6c5d058dd363cf99020689836bd7af78` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| candidate review | TransparentUpgradeableProxy<br>`0x30faab28c1af8f90574db759243888c8bd279536` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| candidate review | TransparentUpgradeableProxy<br>`0x3b87b26c44971fc0e7e4cead219a1fe4e2f604c4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| candidate review | TransparentUpgradeableProxy<br>`0x3f5f1b733ad75797962434992ee2f5a6b490dbef` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| candidate review | TransparentUpgradeableProxy<br>`0x442dc9e8a0370adc4a1d250da0d04803edfe9c56` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| candidate review | TransparentUpgradeableProxy<br>`0x477c1a369ea157b42f6584a8a5960f9d34d7173e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| candidate review | TransparentUpgradeableProxy<br>`0x4a20fe93dec6e5b2d66c246eb7e8ab228254c03f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| candidate review | TransparentUpgradeableProxy<br>`0x4f174701c68c4b92d531e37258b8c705585e9363` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| candidate review | TransparentUpgradeableProxy<br>`0x4f1b83ef5009bb4727e4b5efcfaaf5cbf3bce9ac` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| candidate review | TransparentUpgradeableProxy<br>`0x54809f204999a886839ac46b2fd796282e727158` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| candidate review | TransparentUpgradeableProxy<br>`0x55c9dd38733fd168d27f1ca68118515b2c6a29ae` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| candidate review | TransparentUpgradeableProxy<br>`0x58cf68493bc178a17b43b270ddbb8d4c1a271429` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| candidate review | TransparentUpgradeableProxy<br>`0x5e851dc1f56a05bb6d3c053fa756304a5171c345` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| candidate review | TransparentUpgradeableProxy<br>`0x624d6a1969cef4ff7b880685e76019509f3c0b49` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| candidate review | TransparentUpgradeableProxy<br>`0x67423e8a06f1a35556e56b8214cda9a248c0fe09` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| candidate review | TransparentUpgradeableProxy<br>`0x764ae6682deb212a66f754dee176901663c46554` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| candidate review | TransparentUpgradeableProxy<br>`0x77bf5996b93c8d747c541e47105c5f7d05b2d556` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| candidate review | TransparentUpgradeableProxy<br>`0x77f4c841cb87fdfa43ab909cf56f7710af648a8e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| candidate review | TransparentUpgradeableProxy<br>`0x78be0423567a85ba677d3aa5b73b45970e52256b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| candidate review | TransparentUpgradeableProxy<br>`0x8464bcab4bb9b086bff0150753d9451cf6388576` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| candidate review | TransparentUpgradeableProxy<br>`0x84cd2e9e46fb44e9f775a5fd08edcdaf2377c3c1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| candidate review | TransparentUpgradeableProxy<br>`0x86e956154df2cd9495b6d92d9b0c2b00f8e390b1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| candidate review | TransparentUpgradeableProxy<br>`0x8d575d202b7653fb2e076be451b006626cc31858` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| candidate review | TransparentUpgradeableProxy<br>`0x8fcd9542a6ee0f05f470230da5b8cb41033da6df` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| candidate review | TransparentUpgradeableProxy<br>`0x943806defe09c5cb0662e0774390081c86a2d613` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| candidate review | TransparentUpgradeableProxy<br>`0x94b4fe36578065685be241d9eabe5c9e6b2920b2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| candidate review | TransparentUpgradeableProxy<br>`0x9a1275304960dbc6a8d4a5795832823a7d53f30a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| candidate review | TransparentUpgradeableProxy<br>`0x9b26a5e0234aa7eada50020ba0375d3dd7a9accd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| candidate review | TransparentUpgradeableProxy<br>`0x9ddc997eae3eebd48154e58761879d6fbaa4357f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| candidate review | TransparentUpgradeableProxy<br>`0x9edc0ea75e6023b93bbb41c16818e314cfe59d2b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| candidate review | TransparentUpgradeableProxy<br>`0xa48f322f8b3edff967629af79e027628b9dd1298` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| candidate review | TransparentUpgradeableProxy<br>`0xa6ae8f29e0031340ea5dbe11c2da4466cde34464` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| candidate review | TransparentUpgradeableProxy<br>`0xa82644f96391c1f23ff6110a3b14041abf572342` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| candidate review | TransparentUpgradeableProxy<br>`0xa983f4b5137b89f82b2eb5dac415e6490f06f639` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| candidate review | TransparentUpgradeableProxy<br>`0xb29c988b10d8c8731197997c958f7ecd703f2ed2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| candidate review | TransparentUpgradeableProxy<br>`0xb44a251d1c31dd32700e5f2584b4282716c43eb3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| candidate review | TransparentUpgradeableProxy<br>`0xb563ef00c5f7d8589974fd8d9606dc8376287831` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| candidate review | TransparentUpgradeableProxy<br>`0xb87d1cf2771e5f8aaabafc92f70b78c779b987f8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| candidate review | TransparentUpgradeableProxy<br>`0xbb4e7e69aa9e918b6ae51710cb6152e685553b1c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| candidate review | TransparentUpgradeableProxy<br>`0xbbf35c9dcb16ea3cb64a0fce51c51f9ca34079fe` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| candidate review | TransparentUpgradeableProxy<br>`0xbd38b722480e2e3d540cafc44a113d92e1015faa` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| candidate review | TransparentUpgradeableProxy<br>`0xbdf1dcec3cd02a5230672fa4bd779bdb2e4a67a3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| candidate review | TransparentUpgradeableProxy<br>`0xc37f6af12c443ba8c749cbfa38944abffc156f22` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| candidate review | TransparentUpgradeableProxy<br>`0xc3858135ea4f060029e1a22d468793464936d2c0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| candidate review | TransparentUpgradeableProxy<br>`0xc5a7344461eec05e174aa8ac4e4030b24aa02ebd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| candidate review | TransparentUpgradeableProxy<br>`0xc5da8f2dbf5982fc95c980f51606f72b4dcd826a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| candidate review | TransparentUpgradeableProxy<br>`0xd12b8bdea270617999ffc3a0dbe4ea49e4685bd5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| candidate review | TransparentUpgradeableProxy<br>`0xd25b3dbb79888f548ccfb3ffcf530fb0cb69bc4f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| candidate review | TransparentUpgradeableProxy<br>`0xd52ad5fd7cceb314676fa53f27339f5d3ed43026` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| candidate review | TransparentUpgradeableProxy<br>`0xd8a0451811be47cec35afcd5037da4c21e57117a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| candidate review | TransparentUpgradeableProxy<br>`0xdd0bdf5749e300f946cdb1ddfe1ffa828ec0db72` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| candidate review | TransparentUpgradeableProxy<br>`0xe2023c00f78a384dd96333590aea1e3a0a91fd6a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| candidate review | TransparentUpgradeableProxy<br>`0xe254f8cc2eec268c9153da733ae6a0eba831cbdc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| candidate review | TransparentUpgradeableProxy<br>`0xe309c0fe37d3696cf8c13a629dc43eaefc077418` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| candidate review | TransparentUpgradeableProxy<br>`0xe345c626846772d2e037007dbbca8d4c8d97a6e6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| candidate review | TransparentUpgradeableProxy<br>`0xe437e43d7e5f2bae4a565a02b054dc15aeb7091d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| candidate review | TransparentUpgradeableProxy<br>`0xe69a1876bdacfa7a7a4f6d531be2fde843d2165c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| candidate review | TransparentUpgradeableProxy<br>`0xec1d6ad712ce29f9d395a1cef160c34170c2668c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| candidate review | TransparentUpgradeableProxy<br>`0xec348813a94c2873e4d2372ae40955392a12acff` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| candidate review | TransparentUpgradeableProxy<br>`0xec38621e72d86775a89c7422746de1f52bba5320` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| candidate review | TransparentUpgradeableProxy<br>`0xef3c162450e1d08804493aa27be60cdaa054050f` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0xa1e8d0016482e9dd421b8f35d4cb0eb8a7b9ea6f` |
| candidate review | TransparentUpgradeableProxy<br>`0xf0bb4edf7c777eba1a728403c92df61f9aabf9c9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| candidate review | TransparentUpgradeableProxy<br>`0xf2393eeadd67bf68a60f39992113775966f34e1e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| candidate review | TransparentUpgradeableProxy<br>`0xf3e97ae7431cfc7ec266b3bd793615a16c5e6e0e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| candidate review | TransparentUpgradeableProxy<br>`0xf7f638b25b14922c888478ada13e4b1f03502c3e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| candidate review | TransparentUpgradeableProxy<br>`0xf8be84b27c594318590593e60e3f7ea7f8e25ae3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa1e8d0016482e9dd421b8f35d4cb0eb8a7b9ea6f` |
| candidate review | TransparentUpgradeableProxy<br>`0xf97680e99be42daccea9fe6f9f9aa385ccf97a62` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| candidate review | TransparentUpgradeableProxy<br>`0xfa9d186af6b34aec173966cc4a73e9e87abd0f8a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| candidate review | ProxyAdmin<br>`0x3bfce37b5401bef13c78830d3a9fb14294d18c4f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2ffc59d32a524611bb891cab759112a51f9e33c0` |
| candidate review | ProxyAdmin<br>`0x6a4ae724394147117832879f5f5c88608f448ad9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa1e8d0016482e9dd421b8f35d4cb0eb8a7b9ea6f` |
| candidate review | ProxyAdmin<br>`0xb13ceca4f3809b49658cd1472c917a584626138b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2ffc59d32a524611bb891cab759112a51f9e33c0` |
| candidate review | ProxyAdmin<br>`0xcc4e08a5bfa887621ad68826a0d5913d7a2cb392` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2ffc59d32a524611bb891cab759112a51f9e33c0` |
| candidate review | TransparentUpgradeableProxy<br>`0x6c6f910a79639dcc94b4feef59ff507c2e843929` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x2ffc59d32a524611bb891cab759112a51f9e33c0` |
| candidate review | TransparentUpgradeableProxy<br>`0x7e28bff4c435c48ec20e2a8d975abb3af0ad6ecd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2ffc59d32a524611bb891cab759112a51f9e33c0` |
| contamination review | AnkrETHRateProvider<br>`0x00f8e64a8651e3479a0b20f46b1d462fe29d6abc` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x99eeca7a7a18081161c43124b46d70c6c8945f4c` |
| contamination review | ANKRTokenVault<br>`0x1d40c0998131f4a0254468eaf3ce8fc1f21d9da6` | non_address_book | core_logic | unknown | verified | n/a | `0x146ee71e057e6b10efb93aedf631fde6cbaed5e2` |
| contamination review | DepositWrapper<br>`0xba9df7d2e928acc7af5fdb22531f61675147fd29` | non_address_book | unknown | unknown | verified | n/a | `0x99eeca7a7a18081161c43124b46d70c6c8945f4c` |
| contamination review | Migrations<br>`0x14628bff22974c83ded120dfbb02de3a3b882448` | non_address_book | unknown | unknown | verified | n/a | `0xa1e8d0016482e9dd421b8f35d4cb0eb8a7b9ea6f` |
| contamination review | Migrations<br>`0x1b97100ea1d7126c4d60027e231ea4cb25314bdb` | non_address_book | operational_periphery | unknown | verified | n/a | `0x99eeca7a7a18081161c43124b46d70c6c8945f4c` |
| contamination review | DavosJoin<br>`0x0633ea3769472bd74f30fad828ffb864d9f2e591` | non_address_book | unknown | unknown | verified | n/a | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| contamination review | DGTRewards<br>`0x04901268ee65e989852370c0bad08e1514a0c484` | non_address_book | unknown | unknown | verified | n/a | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| contamination review | Dog<br>`0x0627528cc5e1779ff24e47c74b8e86492436b9fc` | non_address_book | unknown | unknown | verified | n/a | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| contamination review | Interaction<br>`0x17a902fdc6860734751e315f0799673673096c9b` | non_address_book | unknown | unknown | verified | n/a | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| contamination review | Jar<br>`0x36417e58b08cef67e32cb80808a6858924341758` | non_address_book | unknown | unknown | verified | n/a | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| contamination review | Jug<br>`0x5eb89d7b8e10dec5267727d7ee0f128b557f892f` | non_address_book | unknown | unknown | verified | n/a | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| contamination review | LinearDecrease<br>`0x604a34798db956cd78fec52f857c728496692ec7` | non_address_book | unknown | unknown | verified | n/a | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| contamination review | MaticOracle<br>`0x31434814587a51b581495e0506056f18a4b0919e` | non_address_book | unknown | unknown | verified | n/a | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| contamination review | PriceGetter<br>`0x676f1279bda6e442839c71e9ccff07500e1cfe57` | non_address_book | unknown | unknown | verified | n/a | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| contamination review | Spotter<br>`0x7e426f367c40fc6e1ec919e0a7e51fcb9a564b0f` | non_address_book | unknown | unknown | verified | n/a | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| contamination review | Vat<br>`0x0837253af481db0a9b5ea17f9f983e7606051995` | non_address_book | unknown | unknown | verified | n/a | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| contamination review | WaitingPool<br>`0x02048cb6be76db99bec28553edd1184dd7b7c5db` | non_address_book | unknown | unknown | verified | n/a | `0xa8979df21b6dc13935a17f9c13ec6c82942eb9f5` |
| exact address book overlap | ValidatorStorage<br>`0xa2d1aa68a184d6243d8da9ae885742c635c5cc8b` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x99eeca7a7a18081161c43124b46d70c6c8945f4c` |
| source verified unclassified | AETH_R17<br>`0x89632e27427109d64ffe1cdd98027139477e020f` | non_address_book | unknown | unknown | verified | n/a | `0x99eeca7a7a18081161c43124b46d70c6c8945f4c` |
| source verified unclassified | AETH_R18<br>`0x3ed1dfbccf893b7d2d730ead3e5edbf1f8f95a48` | non_address_book | unknown | unknown | verified | n/a | `0x99eeca7a7a18081161c43124b46d70c6c8945f4c` |
| source verified unclassified | AETH_R21<br>`0x73eadc7f8f7fe79f5eca14019beb02c2b21bd9da` | non_address_book | unknown | unknown | verified | n/a | `0x99eeca7a7a18081161c43124b46d70c6c8945f4c` |
| source verified unclassified | AETH_R21<br>`0xe672e0e0101a7f58d728751e2a5e6da5ff1fda64` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x99eeca7a7a18081161c43124b46d70c6c8945f4c` |
| source verified unclassified | aMATICb_R7<br>`0xc56c7481f610e890e51590c32ce4678a7c2d7f80` | non_address_book | unknown | unknown | verified | n/a | `0x99eeca7a7a18081161c43124b46d70c6c8945f4c` |
| source verified unclassified | aMATICb_R8<br>`0x4c3d927010a29e9ad06982315274f4ad59352cf8` | non_address_book | unknown | unknown | verified | n/a | `0x99eeca7a7a18081161c43124b46d70c6c8945f4c` |
| source verified unclassified | aMATICc_R3<br>`0x50be7ae35c5bf838d060045f33f93449f9aff49c` | non_address_book | unknown | unknown | verified | n/a | `0x99eeca7a7a18081161c43124b46d70c6c8945f4c` |
| source verified unclassified | aMATICc_R4<br>`0x2c00ce1a935ff8c9e78580533e2e17c36281c26e` | non_address_book | unknown | unknown | verified | n/a | `0x99eeca7a7a18081161c43124b46d70c6c8945f4c` |
| source verified unclassified | AnkrETHRateProvider<br>`0x1f87f00c24f41a06d8ce81849584079c5df06d02` | non_address_book | unknown | unknown | verified | n/a | `0x99eeca7a7a18081161c43124b46d70c6c8945f4c` |
| source verified unclassified | ANKRToken<br>`0x38a03b35a6662d35b226879e57d499ee26a6d4b5` | non_address_book | token | unknown | verified | n/a | `0x146ee71e057e6b10efb93aedf631fde6cbaed5e2` |
| source verified unclassified | ANKRToken<br>`0xb5f406dd1dec522542c8504c4c31b7940f5d895c` | non_address_book | token | unknown | verified | n/a | `0x146ee71e057e6b10efb93aedf631fde6cbaed5e2` |
| source verified unclassified | ANKRToken<br>`0xe7c0b564cf331ffa2b73c4a9597217a9dec1994e` | non_address_book | token | unknown | verified | n/a | `0x146ee71e057e6b10efb93aedf631fde6cbaed5e2` |
| source verified unclassified | ANKRTokenVault<br>`0x4c95e68ef087251200138039bbc7ff1c730db158` | non_address_book | core_logic | unknown | verified | n/a | `0x146ee71e057e6b10efb93aedf631fde6cbaed5e2` |
| source verified unclassified | ANKRTokenVault<br>`0x9c2578bf9e37eb1d0ddf45a410723d95e554cbdd` | non_address_book | core_logic | unknown | verified | n/a | `0x146ee71e057e6b10efb93aedf631fde6cbaed5e2` |
| source verified unclassified | CrossChainBridge<br>`0x31be0fa706e391a88c3a09cc13112bd55e0887f5` | non_address_book | unknown | unknown | verified | n/a | `0xa1e8d0016482e9dd421b8f35d4cb0eb8a7b9ea6f` |
| source verified unclassified | CrossChainBridge_R2<br>`0x85ea08796eb66820379039cab034722e69e4e16c` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xa1e8d0016482e9dd421b8f35d4cb0eb8a7b9ea6f` |
| source verified unclassified | CrossChainBridge_R3<br>`0xd00b967296b6d8ec266e4ba64594f892d03a4d0a` | non_address_book | unknown | unknown | verified | n/a | `0xa1e8d0016482e9dd421b8f35d4cb0eb8a7b9ea6f` |
| source verified unclassified | FeeRecipient<br>`0x97c863ae15df5814d5bcf82b58c5eabee6bdce05` | non_address_book | unknown | unknown | verified | n/a | `0x99eeca7a7a18081161c43124b46d70c6c8945f4c` |
| source verified unclassified | FeeRecipient_R1<br>`0x219a4e8f8c73d977f8d69596d434b5961068b26b` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x99eeca7a7a18081161c43124b46d70c6c8945f4c` |
| source verified unclassified | FETH_R17<br>`0x7ca86af6cb3dc9876705fe1579d281a80a9645cb` | non_address_book | unknown | unknown | verified | n/a | `0x99eeca7a7a18081161c43124b46d70c6c8945f4c` |
| source verified unclassified | FETH_R18<br>`0x5de57c3535e1f840ecb3e2a10c9955387685756d` | non_address_book | unknown | unknown | verified | n/a | `0x99eeca7a7a18081161c43124b46d70c6c8945f4c` |
| source verified unclassified | FETH_R20<br>`0x518d26405ca06435227bb3e8de567a16fa8f8125` | non_address_book | unknown | unknown | verified | n/a | `0x99eeca7a7a18081161c43124b46d70c6c8945f4c` |
| source verified unclassified | FETH_R20<br>`0xf56bc68bd4d6277244ab22877bee7cff0b69ef01` | non_address_book | unknown | unknown | verified | n/a | `0x99eeca7a7a18081161c43124b46d70c6c8945f4c` |
| source verified unclassified | FETH_R21<br>`0x2aa271353d8ead0bb10240b5a9ff69d0e835fa0e` | non_address_book | unknown | unknown | verified | n/a | `0x99eeca7a7a18081161c43124b46d70c6c8945f4c` |
| source verified unclassified | GlobalPool_R40<br>`0x213a1525c30b86b9668a0c98fd177b3d3af1f5a6` | non_address_book | unknown | unknown | verified | n/a | `0x99eeca7a7a18081161c43124b46d70c6c8945f4c` |
| source verified unclassified | GlobalPool_R41<br>`0x37ac345fa1428e3198b6a0d71deed41d83c140d3` | non_address_book | unknown | unknown | verified | n/a | `0x99eeca7a7a18081161c43124b46d70c6c8945f4c` |
| source verified unclassified | GlobalPool_R42<br>`0x52f24a5e03aee338da5fd9df68d2b6fae1178827` | non_address_book | unknown | unknown | verified | n/a | `0x99eeca7a7a18081161c43124b46d70c6c8945f4c` |
| source verified unclassified | GlobalPool_R43<br>`0x7885d048e41fb3c5697ce1cdc5eb3aeea276c964` | non_address_book | unknown | unknown | verified | n/a | `0x99eeca7a7a18081161c43124b46d70c6c8945f4c` |
| source verified unclassified | GlobalPool_R44<br>`0x14ec5317e5ebc0d1f62a7acf8ddeaf05d8eeb2bc` | non_address_book | unknown | unknown | verified | n/a | `0x99eeca7a7a18081161c43124b46d70c6c8945f4c` |
| source verified unclassified | GlobalPool_R45<br>`0x1701ad6a252e24dee1d71dc1cad6da5426e0a3f1` | non_address_book | unknown | unknown | verified | n/a | `0x99eeca7a7a18081161c43124b46d70c6c8945f4c` |
| source verified unclassified | GlobalPool_R46<br>`0xecce8778214fd9fe37c141a00cff19853ef5bc4a` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x99eeca7a7a18081161c43124b46d70c6c8945f4c` |
| source verified unclassified | GlobalPool_R47<br>`0x053ecf752861b2b2f6d9732ff0dd658f9ece14a4` | non_address_book | unknown | unknown | verified | n/a | `0x99eeca7a7a18081161c43124b46d70c6c8945f4c` |
| source verified unclassified | InternetBondFactory_R1<br>`0x1c7f107c17793acf693551ea43b4783087cc78b0` | non_address_book | unknown | unknown | verified | n/a | `0xa1e8d0016482e9dd421b8f35d4cb0eb8a7b9ea6f` |
| source verified unclassified | InternetBondRatioFeed<br>`0xe0810e4507cebac8fec3f519205e69c07440cfa3` | non_address_book | unknown | unknown | verified | n/a | `0xa1e8d0016482e9dd421b8f35d4cb0eb8a7b9ea6f` |
| source verified unclassified | InternetBondRatioFeed_R1<br>`0x2f798f5117addf0bf6bed1bc5df953cbc5056a5c` | non_address_book | unknown | unknown | verified | n/a | `0xa1e8d0016482e9dd421b8f35d4cb0eb8a7b9ea6f` |
| source verified unclassified | InternetBondRatioFeed_R2<br>`0x106e88bff044f845f13e2130859715acb6eb4656` | non_address_book | unknown | unknown | verified | n/a | `0xa1e8d0016482e9dd421b8f35d4cb0eb8a7b9ea6f` |
| source verified unclassified | InternetBondRatioFeed_R3<br>`0x8ff4fb91c9fff1f57310de52d52d033c00523f81` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xa1e8d0016482e9dd421b8f35d4cb0eb8a7b9ea6f` |
| source verified unclassified | LP<br>`0xc465a8ce038ce4f2481f5abdeb0db73462bde5c6` | non_address_book | unknown | unknown | verified | n/a | `0x99eeca7a7a18081161c43124b46d70c6c8945f4c` |
| source verified unclassified | Migrations<br>`0x24a4f427179c4661f1d350d8bb595bf071012633` | non_address_book | unknown | unknown | verified | n/a | `0x99eeca7a7a18081161c43124b46d70c6c8945f4c` |
| source verified unclassified | Migrations<br>`0x64081eb9e28f0adb1cb544e524ab5d71422294af` | non_address_book | unknown | unknown | verified | n/a | `0x99eeca7a7a18081161c43124b46d70c6c8945f4c` |
| source verified unclassified | Migrations<br>`0xa999784c394b051d5f65586ba6d9a40044a57e97` | non_address_book | unknown | unknown | verified | n/a | `0x99eeca7a7a18081161c43124b46d70c6c8945f4c` |
| source verified unclassified | Migrations<br>`0xbacd623ffc319560e3fe901799f3bec99f456b07` | non_address_book | unknown | unknown | verified | n/a | `0x99eeca7a7a18081161c43124b46d70c6c8945f4c` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [system_smart_contracts_security_audit.pdf](https://www.ankr.com/docs/pdf/system_smart_contracts_security_audit.pdf) | ChainSecurity | Audit | 2022-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [stkr_smart_contract_auditing_report.pdf](https://assets.ankr.com/files/stkr_smart_contract_auditing_report.pdf) | unknown | Audit | 2020-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [ankr_bridge_security_audit.pdf](https://www.ankr.com/docs/pdf/ankr_bridge_security_audit.pdf) | Beosin | Audit | 2022-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [smart_contract_security_audit.pdf](https://www.ankr.com/docs/pdf/smart_contract_security_audit.pdf) | Beosin | Audit | 2022-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [ankr_delegated_staking_audit_veridise.pdf](https://www.ankr.com/docs/pdf/ankr_delegated_staking_audit_veridise.pdf) | Veridise | Audit | 2023-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [smart_contract_security_audit_avax_beosin.pdf](https://www.ankr.com/docs/pdf/smart_contract_security_audit_avax_beosin.pdf) | Beosin | Audit | 2022-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [smart_contract_security_audit_bnb.pdf](https://www.ankr.com/docs/pdf/smart_contract_security_audit_bnb.pdf) | Beosin | Audit | 2022-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [smart_contract_security_audit_bnb_peckshield.pdf](https://www.ankr.com/docs/pdf/smart_contract_security_audit_bnb_peckshield.pdf) | PeckShield | Audit | 2022-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [smart_contract_security_audit_ankrbnb_veridise_feb_2023.pdf](https://www.ankr.com/docs/pdf/smart_contract_security_audit_ankrbnb_veridise_feb_2023.pdf) | Veridise | Audit | 2023-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 15 | high |
| [smart_contract_security_audit_aeth_beosin.pdf](https://www.ankr.com/docs/pdf/smart_contract_security_audit_aeth_beosin.pdf) | Beosin | Audit | 2022-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [smart_contract_security_audit_ankreth_salus.pdf](https://www.ankr.com/docs/pdf/smart_contract_security_audit_ankreth_salus.pdf) | Salus | Audit | 2023-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 24 | high |
| [smart_contract_security_audit_flow_halborn.pdf](https://www.ankr.com/docs/pdf/smart_contract_security_audit_flow_halborn.pdf) | Halborn | Audit | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [smart_contract_security_audit_ftm.pdf](https://www.ankr.com/docs/pdf/smart_contract_security_audit_ftm.pdf) | Beosin | Audit | 2022-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [smart_contract_security_audit_matic.pdf](https://www.ankr.com/docs/pdf/smart_contract_security_audit_matic.pdf) | Beosin | Audit | 2022-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [1860] system_smart_contracts_security_audit.pdf — no match: Contracts listed in scope with file hashes on page 2 of the report.
- [3459] stkr_smart_contract_auditing_report.pdf — no match: The report explicitly audits two contracts: AETH_R1 and GlobalPool_R17. No file paths provided. Audit completion date is 2020.11.25.
- [3461] ankr_bridge_security_audit.pdf — no match: Scope table lists 11 contracts with SHA256 hashes. Audit completion date is 2022.03.09.
- [3462] smart_contract_security_audit.pdf — no match: Extracted contract names from findings sections and file paths. Audit date from cover page.
- [3463] ankr_delegated_staking_audit_veridise.pdf — no match: All contracts listed in scope section 3.2. Audit date from cover page.
- [3464] smart_contract_security_audit_avax_beosin.pdf — no match: Scope table lists four contracts: FutureBondAVAX.sol, ERC20Bond.sol, AvalanchePool.sol, FutureCertAVAX.sol. Audit date is July 12, 2022 from cover page.
- [3465] smart_contract_security_audit_bnb.pdf — no match: Scope table lists ABNBb_R1.sol, ABNBb_R2.sol, BinancePool_R2.sol, BinancePool_R4.sol. BinancePool_R3.sol is referenced in findings but not in scope table; however it is audited as part of the project.
- [3466] smart_contract_security_audit_bnb_peckshield.pdf — no match: No explicit scope section; contracts inferred from findings targets.
- [3467] smart_contract_security_audit_ankrbnb_veridise_feb_2023.pdf — no match: All contracts listed in the scope section of the audit report.
- [3469] smart_contract_security_audit_aeth_beosin.pdf — no match: Scope table lists 5 contracts with file hashes. Additional files mentioned (ANRK.sol, depositContract.sol, Governance_R3.sol, AETHF.sol, unisawpinteractLib.sol, AnkrDeposit_R3.sol) are deprecated/not in scope. Audit date from cover page: Nov 15th, 2022.
- [3470] smart_contract_security_audit_ankreth_salus.pdf — no match: Extracted contracts from Appendix 1 and additional contracts mentioned in findings that are part of the audited codebase.
- [3471] smart_contract_security_audit_flow_halborn.pdf — no match: Extracted contract names from the Scope section. Audit date is the end date of the engagement period (July 30 - August 12, 2024).
- [3472] smart_contract_security_audit_ftm.pdf — no match: Four contracts in scope: aFTMb, aFTMc, FantomPool, FantomStub. Audit date from cover page.
- [3473] smart_contract_security_audit_matic.pdf — no match: Three contracts explicitly listed in scope table on page 3: aMATICb.sol, aMATICc.sol, PolygonPool.sol. Audit date from cover page: Jun 15th, 2022.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| system_smart_contracts_security_audit.pdf | Staking | unmatched — not counted | — | listed in scope with file hash | no |
| system_smart_contracts_security_audit.pdf | StakingPool | unmatched — not counted | — | listed in scope with file hash | no |
| system_smart_contracts_security_audit.pdf | Injector | unmatched — not counted | — | listed in scope with file hash | no |
| system_smart_contracts_security_audit.pdf | RuntimeUpgrade | unmatched — not counted | — | listed in scope with file hash | no |
| system_smart_contracts_security_audit.pdf | Governance | unmatched — not counted | — | listed in scope with file hash | no |
| stkr_smart_contract_auditing_report.pdf | AETH_R1 | unmatched — not counted | — | Section 3.1: AETH_R1 Contract Audit | no |
| stkr_smart_contract_auditing_report.pdf | GlobalPool_R17 | unmatched — not counted | — | Section 3.2: GlobalPool_R17 Contract Audit | no |
| ankr_bridge_security_audit.pdf | BridgeRouter | unmatched — not counted | — | listed in scope table | no |
| ankr_bridge_security_audit.pdf | CrossChainBridge | unmatched — not counted | — | listed in scope table | no |
| ankr_bridge_security_audit.pdf | InternetBond | unmatched — not counted | — | listed in scope table | no |
| ankr_bridge_security_audit.pdf | InternetBondProxy | unmatched — not counted | — | listed in scope table | no |
| ankr_bridge_security_audit.pdf | InternetBondRatioFeed | unmatched — not counted | — | listed in scope table | no |
| ankr_bridge_security_audit.pdf | SimpleToken | unmatched — not counted | — | listed in scope table | no |
| ankr_bridge_security_audit.pdf | SimpleTokenProxy | unmatched — not counted | — | listed in scope table | no |
| ankr_bridge_security_audit.pdf | CallDataRLPReader | unmatched — not counted | — | listed in scope table | no |
| ankr_bridge_security_audit.pdf | EthereumVerifier | unmatched — not counted | — | listed in scope table | no |
| ankr_bridge_security_audit.pdf | ProofParser | unmatched — not counted | — | listed in scope table | no |
| ankr_bridge_security_audit.pdf | Utils | unmatched — not counted | — | listed in scope table | no |
| smart_contract_security_audit.pdf | TokenStaking | unmatched — not counted | — | mentioned in findings [Ankr-staking-1] and [Ankr-staking-12] | no |
| smart_contract_security_audit.pdf | LiquidStakingPool | unmatched — not counted | — | mentioned in findings [Ankr-staking-2], [Ankr-staking-6], [Ankr-staking-8] | no |
| smart_contract_security_audit.pdf | Staking | unmatched — not counted | — | mentioned in findings [Ankr-staking-3], [Ankr-staking-4], [Ankr-staking-5], [Ankr-staking-7], [Ankr-staking-9], [Ankr-staking-10], [Ankr-staking-11] | no |
| smart_contract_security_audit.pdf | TokenLiquidStakingPool | unmatched — not counted | — | mentioned in finding [Ankr-staking-12] | no |
| smart_contract_security_audit.pdf | AnkrProtocol | unmatched — not counted | — | mentioned in findings [AnkrProtocol-1] through [AnkrProtocol-6] | no |
| smart_contract_security_audit.pdf | PayAsYouGo | unmatched — not counted | — | mentioned in findings [PayAsYouGo-1] through [PayAsYouGo-4] | no |
| ankr_delegated_staking_audit_veridise.pdf | AnkrTokenStaking | unmatched — not counted | — | listed in scope | no |
| ankr_delegated_staking_audit_veridise.pdf | BaseStaking | unmatched — not counted | — | listed in scope | no |
| ankr_delegated_staking_audit_veridise.pdf | Staking | unmatched — not counted | — | listed in scope | no |
| ankr_delegated_staking_audit_veridise.pdf | StakingConfig | unmatched — not counted | — | listed in scope | no |
| ankr_delegated_staking_audit_veridise.pdf | ValidatorRegistry | unmatched — not counted | — | listed in scope | no |
| ankr_delegated_staking_audit_veridise.pdf | ValidatorStorage | unmatched — not counted | — | listed in scope | no |
| ankr_delegated_staking_audit_veridise.pdf | TokenStaking | unmatched — not counted | — | listed in scope | no |
| ankr_delegated_staking_audit_veridise.pdf | SnapshotUtil | unmatched — not counted | — | listed in scope | no |
| ankr_delegated_staking_audit_veridise.pdf | ValidatorUtil | unmatched — not counted | — | listed in scope | no |
| ankr_delegated_staking_audit_veridise.pdf | DelegationUtil | unmatched — not counted | — | listed in scope | no |
| ankr_delegated_staking_audit_veridise.pdf | Multicall | unmatched — not counted | — | listed in scope | no |
| smart_contract_security_audit_avax_beosin.pdf | FutureBondAVAX | unmatched — not counted | — | listed in scope table with file hash | no |
| smart_contract_security_audit_avax_beosin.pdf | ERC20Bond | unmatched — not counted | — | listed in scope table with file hash | no |
| smart_contract_security_audit_avax_beosin.pdf | AvalanchePool | unmatched — not counted | — | listed in scope table with file hash | no |
| smart_contract_security_audit_avax_beosin.pdf | FutureCertAVAX | unmatched — not counted | — | listed in scope table with file hash | no |
| smart_contract_security_audit_bnb.pdf | ABNBb_R1 | unmatched — not counted | — | listed in scope table and findings | no |
| smart_contract_security_audit_bnb.pdf | ABNBb_R2 | unmatched — not counted | — | listed in scope table and findings | no |
| smart_contract_security_audit_bnb.pdf | BinancePool_R2 | unmatched — not counted | — | listed in scope table and findings | no |
| smart_contract_security_audit_bnb.pdf | BinancePool_R3 | unmatched — not counted | — | mentioned in findings BNB-1, BNB-6, BNB-8 | no |
| smart_contract_security_audit_bnb.pdf | BinancePool_R4 | unmatched — not counted | — | listed in scope table and findings | no |
| smart_contract_security_audit_bnb_peckshield.pdf | aBNBb_R2 | unmatched — not counted | — | Target in finding PVE-001 and PVE-003 | no |
| smart_contract_security_audit_bnb_peckshield.pdf | BinancePool_R2 | unmatched — not counted | — | Target in findings PVE-001, PVE-002, PVE-003 | no |
| smart_contract_security_audit_ankrbnb_veridise_feb_2023.pdf | BearingToken | unmatched — not counted | — | listed in scope | no |
| smart_contract_security_audit_ankrbnb_veridise_feb_2023.pdf | CertificateToken | unmatched — not counted | — | listed in scope | no |
| smart_contract_security_audit_ankrbnb_veridise_feb_2023.pdf | EarnConfig | unmatched — not counted | — | listed in scope | no |
| smart_contract_security_audit_ankrbnb_veridise_feb_2023.pdf | LiquidTokenStakingPool | unmatched — not counted | — | listed in scope | no |
| smart_contract_security_audit_ankrbnb_veridise_feb_2023.pdf | ERC20LiquidTokenStakingPool | unmatched — not counted | — | listed in scope | no |
| smart_contract_security_audit_ankrbnb_veridise_feb_2023.pdf | ImmediateLiquidTokenStakingPool | unmatched — not counted | — | listed in scope | no |
| smart_contract_security_audit_ankrbnb_veridise_feb_2023.pdf | ManualClaimLiquidTokenStakingPool | unmatched — not counted | — | listed in scope | no |
| smart_contract_security_audit_ankrbnb_veridise_feb_2023.pdf | MixedLiquidTokenStakingPool | unmatched — not counted | — | listed in scope | no |
| smart_contract_security_audit_ankrbnb_veridise_feb_2023.pdf | QueueLiquidTokenStakingPool | unmatched — not counted | — | listed in scope | no |
| smart_contract_security_audit_ankrbnb_veridise_feb_2023.pdf | ReferralLiquidTokenStakingPool | unmatched — not counted | — | listed in scope | no |
| smart_contract_security_audit_ankrbnb_veridise_feb_2023.pdf | BNBStakingPool | unmatched — not counted | — | listed in scope | no |
| smart_contract_security_audit_ankrbnb_veridise_feb_2023.pdf | aBNBb | unmatched — not counted | — | listed in scope | no |
| smart_contract_security_audit_ankrbnb_veridise_feb_2023.pdf | aBNBc | unmatched — not counted | — | listed in scope | no |
| smart_contract_security_audit_ankrbnb_veridise_feb_2023.pdf | aBNBb_R1 | unmatched — not counted | — | listed in scope | no |
| smart_contract_security_audit_ankrbnb_veridise_feb_2023.pdf | aBNBc_R1 | unmatched — not counted | — | listed in scope | no |
| smart_contract_security_audit_aeth_beosin.pdf | AETH_R16 | unmatched — not counted | — | listed in scope table with file hash | no |
| smart_contract_security_audit_aeth_beosin.pdf | FETH_R16 | unmatched — not counted | — | listed in scope table with file hash | no |
| smart_contract_security_audit_aeth_beosin.pdf | GlobalPool_R39 | unmatched — not counted | — | listed in scope table with file hash | no |
| smart_contract_security_audit_aeth_beosin.pdf | Config | unmatched — not counted | — | listed in scope table with file hash | no |
| smart_contract_security_audit_aeth_beosin.pdf | AnkrDeposit | unmatched — not counted | — | listed in scope table with file hash | no |
| smart_contract_security_audit_ankreth_salus.pdf | DepositWrapper | unmatched — not counted | — | listed in Appendix 1 | no |
| smart_contract_security_audit_ankreth_salus.pdf | AnkrTimeLock | unmatched — not counted | — | listed in Appendix 1 | no |
| smart_contract_security_audit_ankreth_salus.pdf | Config | unmatched — not counted | — | listed in Appendix 1 | no |
| smart_contract_security_audit_ankreth_salus.pdf | Governable | unmatched — not counted | — | listed in Appendix 1 | no |
| smart_contract_security_audit_ankreth_salus.pdf | SystemParameters | unmatched — not counted | — | listed in Appendix 1 | no |
| smart_contract_security_audit_ankreth_salus.pdf | WithdrawalPool | unmatched — not counted | — | listed in Appendix 1 | no |
| smart_contract_security_audit_ankreth_salus.pdf | Lockable | unmatched — not counted | — | listed in Appendix 1 | no |
| smart_contract_security_audit_ankreth_salus.pdf | MathUtils | unmatched — not counted | — | listed in Appendix 1 | no |
| smart_contract_security_audit_ankreth_salus.pdf | Ownable_R1 | unmatched — not counted | — | listed in Appendix 1 | no |
| smart_contract_security_audit_ankreth_salus.pdf | Pausable | unmatched — not counted | — | listed in Appendix 1 | no |
| smart_contract_security_audit_ankreth_salus.pdf | IAETH | unmatched — not counted | — | listed in Appendix 1 | no |
| smart_contract_security_audit_ankreth_salus.pdf | IConfig | unmatched — not counted | — | listed in Appendix 1 | no |
| smart_contract_security_audit_ankreth_salus.pdf | IDepositContract | unmatched — not counted | — | listed in Appendix 1 | no |
| smart_contract_security_audit_ankreth_salus.pdf | IFETH | unmatched — not counted | — | listed in Appendix 1 | no |
| smart_contract_security_audit_ankreth_salus.pdf | IFeeRecipient | unmatched — not counted | — | listed in Appendix 1 | no |
| smart_contract_security_audit_ankreth_salus.pdf | IGlobalPool | unmatched — not counted | — | listed in Appendix 1 | no |
| smart_contract_security_audit_ankreth_salus.pdf | IWithdrawalPool | unmatched — not counted | — | listed in Appendix 1 | no |
| smart_contract_security_audit_ankreth_salus.pdf | ERC20UpgradeSafe | unmatched — not counted | — | listed in Appendix 1 | no |
| smart_contract_security_audit_ankreth_salus.pdf | AETH_R18 | unmatched — not counted | — | listed in Appendix 1 | no |
| smart_contract_security_audit_ankreth_salus.pdf | FETH_R18 | unmatched — not counted | — | listed in Appendix 1 | no |
| smart_contract_security_audit_ankreth_salus.pdf | GlobalPool_R42 | unmatched — not counted | — | listed in Appendix 1 | no |
| smart_contract_security_audit_ankreth_salus.pdf | FeeRecipient | unmatched — not counted | — | listed in Appendix 1 | no |
| smart_contract_security_audit_ankreth_salus.pdf | AnkrDeposit_R3 | unmatched — not counted | — | mentioned in finding 3 | no |
| smart_contract_security_audit_ankreth_salus.pdf | FeeRecipient_R1 | unmatched — not counted | — | mentioned in finding 6 | no |
| smart_contract_security_audit_flow_halborn.pdf | StakingManager | unmatched — not counted | — | listed in scope | no |
| smart_contract_security_audit_flow_halborn.pdf | FlowStakingPool | unmatched — not counted | — | listed in scope | no |
| smart_contract_security_audit_flow_halborn.pdf | AnkrRatioFeed | unmatched — not counted | — | listed in scope | no |
| smart_contract_security_audit_ftm.pdf | aFTMb | unmatched — not counted | — | listed in scope with file hash | no |
| smart_contract_security_audit_ftm.pdf | aFTMc | unmatched — not counted | — | listed in scope with file hash | no |
| smart_contract_security_audit_ftm.pdf | FantomPool | unmatched — not counted | — | listed in scope with file hash | no |
| smart_contract_security_audit_ftm.pdf | FantomStub | unmatched — not counted | — | listed in scope with file hash | no |
| smart_contract_security_audit_matic.pdf | aMATICb | unmatched — not counted | — | listed in scope table with file hash | no |
| smart_contract_security_audit_matic.pdf | aMATICc | unmatched — not counted | — | listed in scope table with file hash | no |
| smart_contract_security_audit_matic.pdf | PolygonPool | unmatched — not counted | — | listed in scope table with file hash | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 172 |
| upstream | 0 |
| standard_library | 11 |
| needs_review | 128 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 14
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 100 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=13, medium=1
- Match method counts: n/a

Zero-match audit list:

- [1860] system_smart_contracts_security_audit.pdf
- [3459] stkr_smart_contract_auditing_report.pdf
- [3461] ankr_bridge_security_audit.pdf
- [3462] smart_contract_security_audit.pdf
- [3463] ankr_delegated_staking_audit_veridise.pdf
- [3464] smart_contract_security_audit_avax_beosin.pdf
- [3465] smart_contract_security_audit_bnb.pdf
- [3466] smart_contract_security_audit_bnb_peckshield.pdf
- [3467] smart_contract_security_audit_ankrbnb_veridise_feb_2023.pdf
- [3469] smart_contract_security_audit_aeth_beosin.pdf
- [3470] smart_contract_security_audit_ankreth_salus.pdf
- [3471] smart_contract_security_audit_flow_halborn.pdf
- [3472] smart_contract_security_audit_ftm.pdf
- [3473] smart_contract_security_audit_matic.pdf

Fork inheritance lineage and inherited audits are included when available.
