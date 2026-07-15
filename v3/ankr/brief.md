# Agentic Audit Brief: Ankr

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 14 (0 matched; 14 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Ankr (`ankr`)
- Website: [https://www.ankr.com/](https://www.ankr.com/)
- Lifecycle: active (Tier 0, 93.1% below peak)
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, blast, bsc, ethereum, fantom, gnosis, goerli, linea, mode, optimism, polygon, scroll
- Contract surface: 256 unique implementations (455 raw deployments)
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
- Address-book implementation classification: 0 own, 46 exact-address-book context/dependencies excluded, 2 exact-address-book entries needing review
- Outside the address book: 208 discovered implementations shown in the inventory but excluded from coverage (11 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 136
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/188
- Verified + Unaudited implementations: 188
- Verified by bytecode match: 0
- Unverified implementations: 68
- Unique implementations: 256
- Raw deployments: 455
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
| ANKRToken | token | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x38a03b...a6d4b5`; ethereum `0x829033...f3edd4`; ethereum `0xb5f406...5d895c`; ethereum `0xe7c0b5...c1994e` | ⚠️ Unaudited |
| AvalanchePool_R6 | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | avalanche | unit-226702 | 2 deployments: avalanche `0x7baa1e...0a836d`; avalanche `0xfad2d6...b45874` | ⚠️ Unaudited |
| ANKRTokenVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x1d40c0...1d9da6`; ethereum `0x4c95e6...0db158`; ethereum `0x9c2578...54cbdd` | ⚠️ Unaudited |
| SwapPool | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-226705 | 2 deployments: bsc `0x39126e...5e1cb6`; bsc `0x49b85a...d98642` | ⚠️ Unaudited |
| BNBStakingPool_R4 | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-226707 | 2 deployments: bsc `0x9e347a...afe86e`; bsc `0xbbbc99...88a9ac` | ⚠️ Unaudited |
| SwapPool | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | polygon | unit-226698 | 2 deployments: polygon `0x62a509...eddb2a`; polygon `0xbd00f0...60dbff` | ⚠️ Unaudited |
| GlobalPool_R46 | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-226690 | 2 deployments: ethereum `0x84db6e...936670`; ethereum `0xecce87...f5bc4a` | ⚠️ Unaudited |
| aBNBb | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | bsc | n/a | 5 deployments: bsc `0x00f8e6...9d6abc`; bsc `0x2b6f9b...380496`; bsc `0xbacd62...456b07`; bsc `0xd315b7...77e411`; bsc `0xe380b0...652ecf` | ⚠️ Unaudited |
| aBNBb_R1 | unknown | unclassified_address_book | needs_review (excluded) | 1 | bsc | n/a | 4 deployments: bsc `0x8121a7...3cd0cd`; bsc `0x8c22d0...695855`; bsc `0x952398...7759f5`; bsc `0xfe3998...e00c0e` | ⚠️ Unaudited |
| aBNBb_R8 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1503d1...c6c725` | ⚠️ Unaudited |
| aBNBc | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x2c93bd...250c9e`; bsc `0x88bc9a...23fe81`; bsc `0xa2d1aa...c5cc8b` | ⚠️ Unaudited |
| aBNBc | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x50be7a...aff49c`; bsc `0x964592...db5874` | ⚠️ Unaudited |
| aBNBc_R1 | unknown | unclassified_address_book | needs_review (excluded) | 1 | bsc | unit-226704 | 3 deployments: bsc `0x2c00ce...81c26e`; bsc `0x52f24a...178827`; bsc `0x82af70...2adf3d` | ⚠️ Unaudited |
| aBNBc_R4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfc8d81...ded0b5` | ⚠️ Unaudited |
| AETH_R17 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89632e...7e020f` | ⚠️ Unaudited |
| AETH_R18 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ed1df...f95a48` | ⚠️ Unaudited |
| AETH_R21 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73eadc...1bd9da` | ⚠️ Unaudited |
| AETH_R21 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-226689 | 2 deployments: ethereum `0xe672e0...1fda64`; ethereum `0xe95a20...c2c3cb` | ⚠️ Unaudited |
| aMATICb_R7 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc56c74...2d7f80` | ⚠️ Unaudited |
| aMATICb_R8 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c3d92...352cf8` | ⚠️ Unaudited |
| aMATICc_R3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50be7a...aff49c` | ⚠️ Unaudited |
| aMATICc_R4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c00ce...81c26e` | ⚠️ Unaudited |
| AnkrBEP20Token | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | n/a | `0xf30791...1b08e3` | ⚠️ Unaudited |
| AnkrETHRateProvider | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-226677 | `0x00f8e6...9d6abc` | ⚠️ Unaudited |
| AnkrETHRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1f87f0...f06d02`; ethereum `0x32c1cd...c3ffeb` | ⚠️ Unaudited |
| AnkrTokenStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x029bfc...ea4f1a`; ethereum `0x702ffb...de49e3`; ethereum `0xa274cf...8cf06d`; ethereum `0xd315b7...77e411` | ⚠️ Unaudited |
| AnkrTokenStaking | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-226679 | `0xfe8189...d4287a` | ⚠️ Unaudited |
| AuctionProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x87b3c7...f0a5a9` | ⚠️ Unaudited |
| AvalanchePool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8a2f83...2ce27a` | ⚠️ Unaudited |
| AvalanchePool_R2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x4755c0...caba60`; avalanche `0xf3a274...817d14` | ⚠️ Unaudited |
| AvalanchePool_R3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd53a4d...26a8d3` | ⚠️ Unaudited |
| AvalanchePool_R4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4e178d...b4b4f3` | ⚠️ Unaudited |
| AvalanchePool_R5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x40d6fc...dad0a5` | ⚠️ Unaudited |
| BinancePool_R10 | core_logic | non_address_book | non_address_book_inventory (excluded) | 3 | bsc | n/a | 5 deployments: bsc `0x21bbff...806f48`; bsc `0x64081e...2294af`; bsc `0x809ef4...dbe97a`; bsc `0xa274cf...8cf06d`; bsc `0xfe8189...d4287a` | ⚠️ Unaudited |
| BinancePool_R11 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc56c74...2d7f80` | ⚠️ Unaudited |
| BinancePool_R13 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3aa5b5...680310` | ⚠️ Unaudited |
| BinancePool_R14 | core_logic | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | bsc | unit-226708 | 2 deployments: bsc `0xa0c92e...907bcd`; bsc `0xe778cc...cdfffd` | ⚠️ Unaudited |
| BNBStakingPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 4 deployments: bsc `0x053ecf...ce14a4`; bsc `0x2aa271...35fa0e`; bsc `0xd6c414...d64664`; bsc `0xe5632c...9659be` | ⚠️ Unaudited |
| BNBStakingPool_R1 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x92fdcf...04fa3f` | ⚠️ Unaudited |
| BNBStakingPool_R2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x013f2a...a91d00` | ⚠️ Unaudited |
| BNBStakingPool_R3 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x20c1b4...636e98` | ⚠️ Unaudited |
| BridgeRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0xcb0006...ed7eba`; avalanche `0xcb0006...ed7eba` | ⚠️ Unaudited |
| CerosRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x141105...be3c76`; polygon `0xe254f8...31cbdc` | ⚠️ Unaudited |
| CerosRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x7c0e01...e3fb6c`; polygon `0xbb4e7e...553b1c` | ⚠️ Unaudited |
| CerosRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x8d575d...c31858`; polygon `0xb5a3f3...62b39e` | ⚠️ Unaudited |
| CerosRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe84d30...0118bc` | ⚠️ Unaudited |
| CerosYieldConverterStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x27f970...1d1fd1`; polygon `0x41ca2b...6f10c8` | ⚠️ Unaudited |
| CerosYieldConverterStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x29ded4...46a65d`; polygon `0x8855d3...833f2d` | ⚠️ Unaudited |
| CerosYieldConverterStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x3d78f4...b8c922`; polygon `0x55c9dd...6a29ae` | ⚠️ Unaudited |
| CerosYieldConverterStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 5 deployments: polygon `0x4a019c...ccc7bb`; polygon `0x64fc77...6bd25f`; polygon `0x6def45...851c99`; polygon `0xc91bd0...2fe9f6`; polygon `0xd0c4a5...ef76f9` | ⚠️ Unaudited |
| CeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x8ec187...258988`; polygon `0xf2393e...f34e1e` | ⚠️ Unaudited |
| CeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | polygon | n/a | 4 deployments: polygon `0xa6ae8f...e34464`; polygon `0xb1b374...982ff8`; polygon `0xb44a25...c43eb3`; polygon `0xd8a045...57117a` | ⚠️ Unaudited |
| CeVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x2bde5a...167d62`; polygon `0x5e851d...71c345` | ⚠️ Unaudited |
| CeVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x50a180...efb6aa`; polygon `0x943806...a2d613` | ⚠️ Unaudited |
| CeVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x92e77b...72ad7e`; polygon `0xa82644...572342` | ⚠️ Unaudited |
| Clipper | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | polygon | n/a | 3 deployments: polygon `0x3b87b2...f604c4`; polygon `0xbd38b7...015faa`; polygon `0xe148c9...8ed9bb` | ⚠️ Unaudited |
| Clipper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0xb563ef...287831`; polygon `0xc4c016...989c4b` | ⚠️ Unaudited |
| CrossChainBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x31be0f...0887f5`; polygon `0x6dcc8a...5be8cb`; avalanche `0x6dcc8a...5be8cb` | ⚠️ Unaudited |
| CrossChainBridge_R1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: polygon `0x4b695f...71fe2a`; avalanche `0x3743d1...5c0fc3` | ⚠️ Unaudited |
| CrossChainBridge_R2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-226685 | 2 deployments: ethereum `0x85ea08...e4e16c`; ethereum `0xc437df...0e7181` | ⚠️ Unaudited |
| CrossChainBridge_R2 | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | polygon | unit-226697 | 2 deployments: polygon `0x31be0f...0887f5`; polygon `0xa0ea35...77b9be` | ⚠️ Unaudited |
| CrossChainBridge_R2 | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | avalanche | unit-226700 | 2 deployments: avalanche `0x31be0f...0887f5`; avalanche `0xb902b8...5c10f2` | ⚠️ Unaudited |
| CrossChainBridge_R3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd00b96...3a4d0a` | ⚠️ Unaudited |
| Davos | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x0fb82d...15066d`; polygon `0xec3862...ba5320` | ⚠️ Unaudited |
| Davos | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe7cc54...db6a1c` | ⚠️ Unaudited |
| DavosBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x5e9765...7e7a02`; polygon `0xf0d9ce...1abf72` | ⚠️ Unaudited |
| DavosBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x78be04...52256b`; polygon `0xa7508b...274dd3` | ⚠️ Unaudited |
| DavosJoin | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x0633ea...f2e591`; polygon `0x8fcd95...3da6df` | ⚠️ Unaudited |
| DavosProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x046b71...6123cf`; polygon `0x924094...3e068a` | ⚠️ Unaudited |
| DavosProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x92afc5...31ee03` | ⚠️ Unaudited |
| DavosProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x9b81eb...3f2374`; polygon `0xe2023c...91fd6a` | ⚠️ Unaudited |
| dCOL | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x4f1b83...bce9ac`; polygon `0xd67189...4de9a7` | ⚠️ Unaudited |
| DepositWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba9df7...47fd29` | ⚠️ Unaudited |
| DGTRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | polygon | n/a | 3 deployments: polygon `0x049012...a0c484`; polygon `0x54809f...727158`; polygon `0x624d6a...3c0b49` | ⚠️ Unaudited |
| dMATIC | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | polygon | n/a | 3 deployments: polygon `0x08abfd...0b71c8`; polygon `0x0ace0e...5b7f7e`; polygon `0x87ad5a...702563` | ⚠️ Unaudited |
| Dog | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | polygon | n/a | 3 deployments: polygon `0x062752...36b9fc`; polygon `0x122897...540118`; polygon `0x94b4fe...2920b2` | ⚠️ Unaudited |
| Dog | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x9b26a5...a9accd`; polygon `0xbfd158...d6efb4` | ⚠️ Unaudited |
| EarnConfig | governance | non_address_book | non_address_book_inventory (excluded) | 8 | bsc | n/a | 10 deployments: bsc `0x171643...743252`; bsc `0x219a4e...68b26b`; bsc `0x258361...20dd56`; bsc `0x39af7e...1f4305`; bsc `0x487424...15960b`; bsc `0x67428d...719348`; bsc `0x674d1f...ed546f`; bsc `0xc416da...9061d1`; bsc `0xd812ab...2cb4e4`; bsc `0xe8396c...c20036` | ⚠️ Unaudited |
| FeeRecipient | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97c863...bdce05` | ⚠️ Unaudited |
| FeeRecipient_R1 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-226682 | 2 deployments: ethereum `0x219a4e...68b26b`; ethereum `0x90b0c8...3eab08` | ⚠️ Unaudited |
| FETH_R17 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ca86a...9645cb` | ⚠️ Unaudited |
| FETH_R18 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5de57c...85756d` | ⚠️ Unaudited |
| FETH_R20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x518d26...8f8125`; ethereum `0xf56bc6...69ef01` | ⚠️ Unaudited |
| FETH_R21 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2aa271...35fa0e` | ⚠️ Unaudited |
| FutureBondAVAX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x11e6ec...df6618` | ⚠️ Unaudited |
| FutureBondAVAX_R1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xde78c1...789934` | ⚠️ Unaudited |
| FutureBondAVAX_R2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x66044a...fbc9bd` | ⚠️ Unaudited |
| FutureBondAVAX_R3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7840a8...6ca643` | ⚠️ Unaudited |
| FutureBondAVAX_R4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5d7e1c...ac0a83` | ⚠️ Unaudited |
| FutureBondAVAX_R5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x315654...18a069` | ⚠️ Unaudited |
| FutureBondAVAX_R6 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3488e7...09b39a` | ⚠️ Unaudited |
| FutureBondAVAX_R7 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf094b4...b13b93` | ⚠️ Unaudited |
| FutureBondAVAX_R8 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | avalanche | unit-226699 | 2 deployments: avalanche `0x0f74bf...0a9be3`; avalanche `0x6c6f91...843929` | ⚠️ Unaudited |
| FutureCertAVAX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x96152d...9aa90e` | ⚠️ Unaudited |
| FutureCertAVAX_R1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x632ad3...f84e6b` | ⚠️ Unaudited |
| FutureCertAVAX_R2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc040b8...25683e` | ⚠️ Unaudited |
| FutureCertAVAX_R3 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | avalanche | unit-226703 | `0xc33448...c727f6` | ⚠️ Unaudited |
| GemJoin | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x477c1a...d7173e`; polygon `0x6a6450...3ec55e` | ⚠️ Unaudited |
| GemJoin | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0xa534e0...3abde0`; polygon `0xf0bb4e...abf9c9` | ⚠️ Unaudited |
| GemJoin | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0xaf22a9...14c978`; polygon `0xf3e97a...5e6e0e` | ⚠️ Unaudited |
| GlobalPool_R40 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x213a15...f1f5a6` | ⚠️ Unaudited |
| GlobalPool_R41 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37ac34...c140d3` | ⚠️ Unaudited |
| GlobalPool_R42 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52f24a...178827` | ⚠️ Unaudited |
| GlobalPool_R43 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7885d0...76c964` | ⚠️ Unaudited |
| GlobalPool_R44 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14ec53...eeb2bc` | ⚠️ Unaudited |
| GlobalPool_R45 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1701ad...e0a3f1` | ⚠️ Unaudited |
| GlobalPool_R47 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x053ecf...ce14a4` | ⚠️ Unaudited |
| IkkaRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x1a80b0...bd5d88`; polygon `0x41bbd9...c3083d` | ⚠️ Unaudited |
| InsurancePool_R1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x7e28bf...ad6ecd` | ⚠️ Unaudited |
| InsurancePool_R2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | gnosis | unit-226692 | `0xb42bf1...8d0fa2` | ⚠️ Unaudited |
| Interaction | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x17a902...096c9b`; polygon `0xdd0bdf...c0db72` | ⚠️ Unaudited |
| Interaction | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x3f5f1b...90dbef`; polygon `0xc73452...26d402` | ⚠️ Unaudited |
| Interaction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdd62bc...5e4b73` | ⚠️ Unaudited |
| InternetBondFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4bb672...fbaa57` | ⚠️ Unaudited |
| InternetBondFactory_R1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c7f10...cc78b0` | ⚠️ Unaudited |
| InternetBondRatioFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xe0810e...40cfa3`; ethereum `0xef3c16...54050f` | ⚠️ Unaudited |
| InternetBondRatioFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0xe0810e...40cfa3`; avalanche `0xe0810e...40cfa3` | ⚠️ Unaudited |
| InternetBondRatioFeed_R1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 4 deployments: ethereum `0x2f798f...056a5c`; polygon `0x280cc3...b2f400`; polygon `0xb902b8...5c10f2`; avalanche `0x5e5beb...bcdce7` | ⚠️ Unaudited |
| InternetBondRatioFeed_R2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x106e88...eb4656`; avalanche `0x6870ed...8b36fe` | ⚠️ Unaudited |
| InternetBondRatioFeed_R2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | polygon | unit-226695 | 2 deployments: polygon `0x4f3872...8bbd07`; polygon `0xef3c16...54050f` | ⚠️ Unaudited |
| InternetBondRatioFeed_R3 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-226687 | 2 deployments: ethereum `0x8ff4fb...523f81`; ethereum `0xcb0006...ed7eba` | ⚠️ Unaudited |
| InternetBondRatioFeed_R3 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | avalanche | unit-226701 | 2 deployments: avalanche `0xd00b96...3a4d0a`; avalanche `0xef3c16...54050f` | ⚠️ Unaudited |
| Jar | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x36417e...341758`; polygon `0x4a20fe...54c03f` | ⚠️ Unaudited |
| Jar | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x97f0bd...5056cf`; polygon `0xe69a18...d2165c` | ⚠️ Unaudited |
| Jug | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x5eb89d...7f892f`; polygon `0xc37f6a...156f22` | ⚠️ Unaudited |
| Jug | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | polygon | n/a | 3 deployments: polygon `0x85d05c...e2aba4`; polygon `0xc5a734...a02ebd`; polygon `0xfa9d18...bd0f8a` | ⚠️ Unaudited |
| LinearDecrease | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x604a34...692ec7`; polygon `0xa48f32...dd1298` | ⚠️ Unaudited |
| LinearDecrease | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | polygon | n/a | 3 deployments: polygon `0x78d152...bc10e9`; polygon `0xd12b8b...685bd5`; polygon `0xe309c0...077418` | ⚠️ Unaudited |
| LP | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x5d04c6...d67f43`; ethereum `0xc465a8...bde5c6` | ⚠️ Unaudited |
| LP | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x757834...3da807`; bsc `0xf047f2...4267af` | ⚠️ Unaudited |
| LP | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | polygon | n/a | 4 deployments: polygon `0x77bf59...b2d556`; polygon `0x817166...bbd6ad`; polygon `0x86e956...e390b1`; polygon `0xc38581...36d2c0` | ⚠️ Unaudited |
| LP | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0xa88b54...a953f4`; polygon `0xd52ad5...d43026` | ⚠️ Unaudited |
| MasterVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x0730ba...92e800`; polygon `0xec1d6a...c2668c` | ⚠️ Unaudited |
| MasterVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x20642a...e56525`; polygon `0x764ae6...c46554` | ⚠️ Unaudited |
| MasterVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 8 deployments: polygon `0x3d2c62...6d3cef`; polygon `0x664da0...c71d58`; polygon `0x759718...382a1d`; polygon `0x879f6d...4a23d2`; polygon `0x99a5bc...042e63`; polygon `0xa0cf62...d61c33`; polygon `0xc8afcc...db7db7`; polygon `0xd4e426...51cf25` | ⚠️ Unaudited |
| MasterVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x77f4c8...648a8e`; polygon `0xfa3fa8...1aea3f` | ⚠️ Unaudited |
| MasterVault_V2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x9a1275...53f30a`; polygon `0xd9dbd6...51f783` | ⚠️ Unaudited |
| MaticOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x314348...b0919e`; polygon `0xec3488...12acff` | ⚠️ Unaudited |
| MaticOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: polygon `0x369398...3ed0b7`; polygon `0x86440f...478e06`; polygon `0xae6eeb...de8bd3` | ⚠️ Unaudited |
| MaticOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 6 | polygon | n/a | 7 deployments: polygon `0x4f1747...5e9363`; polygon `0x67423e...c0fe09`; polygon `0x72112d...6dc8a1`; polygon `0x8464bc...388576`; polygon `0xb87d1c...b987f8`; polygon `0xc5da8f...cd826a`; polygon `0xf7f638...502c3e` | ⚠️ Unaudited |
| MaticToken | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x7d1afa...cfebb0` | ⚠️ Unaudited |
| Migrations | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x14628b...882448`; ethereum `0x24a4f4...012633`; ethereum `0x64081e...2294af`; ethereum `0xa99978...a57e97`; ethereum `0xbacd62...456b07`; ethereum `0xc6bc62...461f6b`; bsc `0x1b9710...314bdb`; bsc `0xa2923d...0f031b`; avalanche `0x14628b...882448` | ⚠️ Unaudited |
| MrpcDeposit | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x5e1e6d...008c8f`; ethereum `0x764737...6b97a9` | ⚠️ Unaudited |
| MrpcDeposit | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x8ff4fb...523f81`; polygon `0xf8be84...e25ae3` | ⚠️ Unaudited |
| Partners_R1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe9af6d...0bc4b6` | ⚠️ Unaudited |
| PolkadotPool_R1 | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-226686 | `0x59f767...0f208e` | ⚠️ Unaudited |
| PolygonPool_R7 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x586ba2...572d00` | ⚠️ Unaudited |
| PolygonPool_R8 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8121a7...3cd0cd` | ⚠️ Unaudited |
| PolygonPool_R8 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-226684 | 2 deployments: ethereum `0x82af70...2adf3d`; ethereum `0xcfd4b4...b3ce89` | ⚠️ Unaudited |
| PriceGetter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 5 deployments: polygon `0x676f12...1cfe57`; polygon `0x6d870b...8d99c7`; polygon `0xce48b8...e2bb05`; polygon `0xd1e45e...b7bbd7`; polygon `0xe69fe3...bf8afa` | ⚠️ Unaudited |
| ProviderRegistry | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | gnosis | unit-226693 | 2 deployments: gnosis `0x6c6f91...843929`; gnosis `0x8a2f83...2ce27a` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 17 deployments: ethereum `0x39af7e...1f4305`; ethereum `0x595987...ed9c5d`; ethereum `0x6a4ae7...448ad9`; bsc `0x32015e...1de38f`; bsc `0x32c1cd...c3ffeb`; bsc `0xdc8df5...689fd2`; gnosis `0xcc4e08...2cb392`; polygon `0x2304ce...0b1890`; polygon `0x24189c...755599`; polygon `0x619b44...31b8fa`; polygon `0x6a4ae7...448ad9`; polygon `0x859cb9...a50954`; polygon `0xc83226...5d83cd`; avalanche `0x3bfce3...d18c4f`; avalanche `0x6a4ae7...448ad9`; avalanche `0xb13cec...26138b`; avalanche `0xcc4e08...2cb392` | ⚠️ Unaudited |
| RatioAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x2b6fe7...c3c863`; polygon `0xb24583...d88e0a` | ⚠️ Unaudited |
| RewardPoolTemplate_R2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd4cefb...0a2cca` | ⚠️ Unaudited |
| Sikka | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x00658f...fedbc2`; polygon `0x491579...bacd0d` | ⚠️ Unaudited |
| SikkaJoin | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x84cd2e...77c3c1`; polygon `0xb2565e...0352bb` | ⚠️ Unaudited |
| SikkaProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x2f2e74...bc944d`; polygon `0x9edc0e...e59d2b` | ⚠️ Unaudited |
| SimpleTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x347c48...6a360e` | ⚠️ Unaudited |
| SimpleTokenFactory_R1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xc51c78...048e21`; ethereum `0xe4fb4b...0da931` | ⚠️ Unaudited |
| SimpleTokenProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | optimism | n/a | 4 deployments: optimism `0xaeaeed...6ae861`; mode `0xdf474b...1136b2`; arbitrum `0xaeaeed...6ae861`; scroll `0xdf474b...1136b2` | ⚠️ Unaudited |
| sMATIC | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x30faab...279536`; polygon `0xb396b3...86ee1d` | ⚠️ Unaudited |
| Spotter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x7e426f...564b0f`; polygon `0xf97680...f97a62` | ⚠️ Unaudited |
| Spotter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0xbbf35c...4079fe`; polygon `0xd659ae...740509` | ⚠️ Unaudited |
| StakingConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x11e6ec...df6618` | ⚠️ Unaudited |
| StakingConfig_R2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | `0x3bfce3...d18c4f` | ⚠️ Unaudited |
| StakingPool_R1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xb6fcfc...70db0f` | ⚠️ Unaudited |
| StakingPool_R3 | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | gnosis | unit-226694 | `0xfd0f61...6c34d6` | ⚠️ Unaudited |
| StMaticOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x092fd7...b19734`; polygon `0x4be55a...700fee` | ⚠️ Unaudited |
| SwapPool | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-226688 | 2 deployments: ethereum `0xdc8df5...689fd2`; ethereum `0xf047f2...4267af` | ⚠️ Unaudited |
| SwapPool | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | polygon | n/a | 4 deployments: polygon `0x2fa187...d7af78`; polygon `0x93ca89...a6339d`; polygon `0x9ddc99...a4357f`; polygon `0xe345c6...97a6e6` | ⚠️ Unaudited |
| SwapPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: bsc `0xc465a8...bde5c6`; polygon `0x819d1d...a17b8e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x02934a...a8ff2e`; polygon `0x5763b3...e6c6bd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x24027b...740393`; polygon `0x442dc9...fe9c56` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x6a3b5b...8abe2d`; avalanche `0x7e28bf...ad6ecd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | avalanche | n/a | `0xdf474b...1136b2` | ⚠️ Unaudited |
| UChildERC20 | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | polygon | n/a | `0x101a02...a79c35` | ⚠️ Unaudited |
| ValidatorManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x7baa1e...0a836d` | ⚠️ Unaudited |
| ValidatorManager_R1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x1af808...112765` | ⚠️ Unaudited |
| ValidatorManager_R3 | governance | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | gnosis | unit-226691 | `0xe95a20...c2c3cb` | ⚠️ Unaudited |
| Vat | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x083725...051995`; polygon `0xa983f4...06f639` | ⚠️ Unaudited |
| Vat | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0xbdf1dc...4a67a3`; polygon `0xfc9755...e5b38b` | ⚠️ Unaudited |
| Vow | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | polygon | n/a | 3 deployments: polygon `0x58cf68...271429`; polygon `0xb29c98...3f2ed2`; polygon `0xf22099...9116ee` | ⚠️ Unaudited |
| Vow | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x6cfca0...2c240f`; polygon `0xe437e4...b7091d` | ⚠️ Unaudited |
| WaitingPool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x02048c...b7c5db`; polygon `0x1c539e...1981f9` | ⚠️ Unaudited |
| WaitingPool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x02237a...ec7738`; polygon `0xd25b3d...69bc4f` | ⚠️ Unaudited |
| WaitingPool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x02c742...87363b`; polygon `0xfedf35...b7672c` | ⚠️ Unaudited |
| WaitingPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x74fb5a...6f0c96` | ⚠️ Unaudited |
| WithdrawalPool | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-226683 | 2 deployments: ethereum `0x258361...20dd56`; ethereum `0x67428d...719348` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (68)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| MaticPool | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | polygon | unit-226696 | `0xad0dcc...adb4b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09b1fb...36d1ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x347c48...6a360e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4069d8...5e7362` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4bb672...fbaa57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64de04...f88ad1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c67e3...7beb58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c6f91...843929` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6dcc8a...5be8cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a2f83...2ce27a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa08299...b59558` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7646a...be3f76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6fcfc...70db0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf30791...1b08e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfcc270...0bf79a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd0f61...6c34d6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | n/a | `0x148bf8...2a80df` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | goerli | n/a | `0x19569a...76ac8f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | n/a | `0x2bbc91...56990f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | n/a | `0x2d36a1...507750` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | goerli | n/a | `0x7fed49...7661d8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | n/a | `0x8f4ac2...49501b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | n/a | `0xac3220...1e64ad` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | n/a | `0xf89429...93ac3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x39ab7a...bdc2a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xba30b3...3371c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xecce87...f5bc4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x4c5995...185b3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x84db6e...936670` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xce4315...2f66ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xde78c1...789934` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x014c32...57f2b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x018998...16c60c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x05bb18...79d1d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x08da6a...442dbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x14628b...882448` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x19ab38...b91ff1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x23dbd1...3c6b86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2f798f...056a5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x347c48...6a360e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4bb672...fbaa57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5a6910...5a668e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x601ab2...462c69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x61da67...391233` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x62f08e...5d4e04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6d1229...6cc286` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x728afe...94c5a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x819079...bf976c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9fac90...173e43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbbbcfd...b7d497` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc9cfcb...6b0fe9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd084bf...8a5a90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdfedbe...0404e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf27065...9f380d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fantom | n/a | `0x26dcfb...c5480c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fantom | n/a | `0x829033...f3edd4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-226680 | `0xcfc785...ef5179` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | fantom | n/a | `0xdf474b...1136b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1becfb...aa3846` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x280cc3...b2f400` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x38446a...953321` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x755797...01be08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9df460...bbfd55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb6fcfc...70db0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xce4315...2f66ed` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | linea | n/a | `0xa8ae63...c5ef8c` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | blast | n/a | `0x3580ac...301241` | ❓ Unverified |
| ValidatorStorage | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-226681 | `0xa2d1aa...c5cc8b` | ❓ Unverified |

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
| needs_review | 73 |

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
