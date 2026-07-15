# Agentic Audit Brief: Wan Bridge

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 3 (0 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Wan Bridge (`wan-bridge`)
- Website: [https://bridge.wanchain.org](https://bridge.wanchain.org)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, blast, bsc, celo, ethereum, fantom, linea, metis, moonbeam, moonriver, opbnb, optimism, polygon, polygon-zkevm, zksync-era
- Contract surface: 220 unique implementations (392 raw deployments)
- Coverage basis: 0/12 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $23,452,772.39
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Wan Bridge. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 16 contract row(s) across arbitrum, avalanche, base, blast, bsc, celo, ethereum, fantom, linea, metis, moonbeam, moonriver, opbnb, optimism, polygon, polygon-zkevm, zksync-era. Structural roles: 8 unclassified, 7 core, 1 supporting. 7 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 16
- Structural roles: unclassified (8), core (7), supporting (1)
- Contract kinds: contract (16)
- Detected standards: erc1967proxy (7), ownable (1)
- Frameworks: openzeppelin (8)
- Upgradeable-pattern rows: 7

## Fork Analysis

0 of 17 contracts are derived from known codebases. 17 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xec0d8c...a3d24b`, chain 1)
- UnnamedContract (`0xfceaaa...bc334e`, chain 1)
- UnnamedContract (`0x30b8d9...31e53d`, chain 137)
- UnnamedContract (`0xd6b24d...2689de`, chain 204)
- UnnamedContract (`0x102f0c...8389a1`, chain 324)
- UnnamedContract (`0x012297...c86f86`, chain 8453)
- UnnamedContract (`0xd4b5f1...8a1437`, chain 42161)
- UnnamedContract (`0x0d4d25...7c5a8b`, chain 43114)
- CrossProxy (`0xc3711b...82baee`, chain 56)
- CrossProxy (`0x221607...f201ab`, chain 137)
- CrossProxy (`0x6372ae...6b95b5`, chain 1284)
- CrossProxy (`0xde1ae3...d6671d`, chain 1285)
- CrossProxy (`0xf7ba15...b97613`, chain 42161)
- CrossProxy (`0x14ca89...4d6a1d`, chain 42220)
- CrossProxy (`0x74e121...037c3a`, chain 43114)
- Fee (`0x592de3...02e0b6`, chain 10)
- UnnamedContract (`0xccffe9...d69ee3`, chain 250)

## Contract Surface Quality

- Logic-topography rows: 16; live-surface rows included: 16 (12 live, 4 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 20/21 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/12 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 21 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 199 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 51
- Confirmed-live implementations: 21 of 220 unique; 199 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/93
- Verified + Unaudited implementations: 93
- Verified by bytecode match: 0
- Unverified implementations: 127
- Unique implementations: 220
- Raw deployments: 392
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2019-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (93)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ARBIS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9f20de...b03461` | ⚠️ Unaudited |
| AutoFarmV2_CrossChain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 2 deployments: moonriver `0xfada8c...d4680e`; celo `0xdd11b6...12303f` | ⚠️ Unaudited |
| Bn128SchnorrVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | 12 deployments: optimism `0x8d42d3...3f3fe8`; bsc `0xd3a4bd...41cd53`; polygon `0x86b830...558d0e`; metis `0x8d42d3...3f3fe8`; moonbeam `0x6e228a...16354d`; moonriver `0x0e3f52...c8414d`; base `0x7e0195...e4dfc9`; arbitrum `0x86b830...558d0e`; celo `0x86ec03...9ea4e4`; avalanche `0xe162d7...0887b5`; linea `0x9c17ec...59b85f`; blast `0x5b0b9d...530f6b` | ⚠️ Unaudited |
| CommonProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2055ae...f58a3a` | ⚠️ Unaudited |
| CrossAdminManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe1efc9...cbd269` | ⚠️ Unaudited |
| CrossDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf9f6c9...70bb4a` | ⚠️ Unaudited |
| CrossDelegateV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x75df5d...6f9e85` | ⚠️ Unaudited |
| CrossDelegateV4 | unknown | project_anchor | own_supporting | 1 | optimism | unit-261864 | 2 deployments: optimism `0x00e533...8f5e28`; optimism `0xc6ae1d...bf9dbf` | ⚠️ Unaudited |
| CrossDelegateV4 | unknown | project_anchor | own_supporting | 1 | polygon | unit-261867 | `0x221607...f201ab` | ⚠️ Unaudited |
| CrossDelegateV4 | unknown | project_anchor | own_supporting | 1 | moonbeam | unit-261865 | `0x6372ae...6b95b5` | ⚠️ Unaudited |
| CrossDelegateV4 | unknown | project_anchor | own_supporting | 1 | moonriver | unit-261866 | `0xde1ae3...d6671d` | ⚠️ Unaudited |
| CrossDelegateV4 | unknown | project_anchor | own_supporting | 1 | base | unit-261874 | 2 deployments: base `0x2715aa...60cd04`; base `0x2f676c...2296fb` | ⚠️ Unaudited |
| CrossDelegateV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 9 deployments: optimism `0xc95a4b...55446d`; polygon `0x6a60b5...5a72f6`; metis `0xc02642...383e41`; metis `0xc95a4b...55446d`; base `0x97e088...d3ca7b`; arbitrum `0x011754...5b2a06`; celo `0xee9192...96858e`; linea `0x70114d...491799`; blast `0xc6ae1d...bf9dbf` | ⚠️ Unaudited |
| CrossDelegateV4 | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-261868 | `0xf7ba15...b97613` | ⚠️ Unaudited |
| CrossDelegateV4 | unknown | project_anchor | own_supporting | 1 | celo | unit-261869 | `0x14ca89...4d6a1d` | ⚠️ Unaudited |
| CrossDelegateV4 | unknown | project_anchor | own_supporting | 1 | linea | unit-261872 | 2 deployments: linea `0x65b3ae...5d3bf9`; linea `0xffb876...5f4a65` | ⚠️ Unaudited |
| CrossDelegateV4 | unknown | project_anchor | own_supporting | 1 | blast | unit-261873 | 2 deployments: blast `0x00e533...8f5e28`; blast `0xc21e55...91f603` | ⚠️ Unaudited |
| CrossDelegateV6 | unknown | project_anchor | own_supporting | 1 | bsc | unit-261871 | `0xc3711b...82baee` | ⚠️ Unaudited |
| CrossProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x079ae7...81099e`; avalanche `0xc9ea89...056c9d` | ⚠️ Unaudited |
| CrossProxy | proxy | project_anchor | own_supporting | 1 | avalanche | unit-261870 | `0x74e121...037c3a` | ⚠️ Unaudited |
| CrossProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 2 deployments: metis `0xc6ae1d...bf9dbf`; linea `0xc21e55...91f603` | ⚠️ Unaudited |
| CrossSwapEntrance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: optimism `0x9cf661...3a28c6`; base `0x5bc813...e444d6` | ⚠️ Unaudited |
| Fee | unknown | project_anchor | own_supporting | 0 | optimism | unit-261856 | `0x592de3...02e0b6` | ⚠️ Unaudited |
| FeeHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 2 deployments: optimism `0xeac9c2...574988`; linea `0xb30778...bb2546` | ⚠️ Unaudited |
| GroupApprove | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | 6 deployments: optimism `0x329f16...f1cf83`; metis `0x16b389...3b4c6b`; base `0xd97de6...2ca082`; celo `0x48dbcc...204d38`; linea `0x3cc979...3c1058`; blast `0x131dfc...655132` | ⚠️ Unaudited |
| HTLCDebtLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd2d590...41206d` | ⚠️ Unaudited |
| HTLCDebtLibV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x47be7c...61ba53`; arbitrum `0x47be7c...61ba53` | ⚠️ Unaudited |
| HTLCTxLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x329e17...054e44`; polygon `0x63c5ac...34f18f`; arbitrum `0x63c5ac...34f18f` | ⚠️ Unaudited |
| L2TBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x6c84a8...d0de40` | ⚠️ Unaudited |
| Layer2BridgeDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: polygon `0xbd4191...425e49`; arbitrum `0x382b08...61af7a` | ⚠️ Unaudited |
| Layer2BridgeDelegateV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x011754...5b2a06`; polygon `0xd557cc...fe727e` | ⚠️ Unaudited |
| Layer2BridgeDelegateV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4dee9c...305dfb` | ⚠️ Unaudited |
| Layer2BridgeDelegateV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x599b4d...10c016`; arbitrum `0x783353...00ca6c` | ⚠️ Unaudited |
| MappingTokenV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | 29 deployments: moonbeam `0x283ad8...812d09`; moonbeam `0x30950e...bbbc27`; moonbeam `0x455feb...878d90`; moonbeam `0x533114...c89ef4`; moonbeam `0x5f0061...d52776`; moonbeam `0x935ad1...3a93bb`; moonbeam `0xb43645...7f2c36`; moonbeam `0xcd6f47...b2dedd`; moonriver `0x147dba...57446d`; moonriver `0x15b9ca...b3d445`; moonriver `0x41562a...36b09f`; moonriver `0x53f14c...6925ae`; moonriver `0x576fde...af1111`; moonriver `0x748134...4bdeb3`; moonriver `0x78f811...2897c3`; moonriver `0x9d5bc9...bba2fe`; moonriver `0xa4dd0b...f27862`; moonriver `0xa4fc4a...406cac`; moonriver `0xb668cd...b32804`; moonriver `0xbef008...6e958f`; moonriver `0xc005a7...304993`; moonriver `0xd924f1...6039de`; moonriver `0xdd7f2b...374ae7`; moonriver `0xe936ca...84cda7`; moonriver `0xffef26...b20613`; avalanche `0x8d9dcc...eb70b6`; avalanche `0x9e529b...1448e5`; avalanche `0xd38bfd...21fff9`; avalanche `0xea6887...5cddef` | ⚠️ Unaudited |
| MarinateAutoCompounder | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1922c3...1684ab` | ⚠️ Unaudited |
| Messager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x012297...c86f86` | ⚠️ Unaudited |
| Multicall2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 7 deployments: base `0x1ed353...232fb6`; base `0xbe5187...5000d3`; celo `0x149180...160765`; linea `0x5b0b9d...530f6b`; linea `0x8d42d3...3f3fe8`; linea `0xd4b5f1...8a1437`; blast `0xd4b5f1...8a1437` | ⚠️ Unaudited |
| MulticallV2 | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x0d10a0...22353b` | ⚠️ Unaudited |
| NFTHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa39ee0...3fa01d` | ⚠️ Unaudited |
| NFTHelperERC721T | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd8dde3...54a480` | ⚠️ Unaudited |
| NFTLibV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | 10 deployments: optimism `0x50133f...1f0cf2`; optimism `0xb30778...bb2546`; metis `0x50133f...1f0cf2`; base `0x5b0b9d...530f6b`; base `0xa63a35...7b4f27`; base `0xc95a4b...55446d`; linea `0x2715aa...60cd04`; linea `0x8968cc...a6b5f3`; blast `0x1289f7...ac9f8b`; blast `0xb30778...bb2546` | ⚠️ Unaudited |
| NyanRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x32e559...1aa724`; arbitrum `0x62ff5b...d2da2c` | ⚠️ Unaudited |
| OracleDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0xbe5187...5000d3`; optimism `0xc21e55...91f603` | ⚠️ Unaudited |
| OracleDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xd8fc50...1c3acc`; bsc `0xd94867...b6b990` | ⚠️ Unaudited |
| OracleDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x7f70d0...ea93aa`; polygon `0xbf9076...f47d18` | ⚠️ Unaudited |
| OracleDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 4 deployments: polygon `0x8d5085...1c5858`; metis `0xc21e55...91f603`; moonriver `0x9c9ec2...7d7d79`; linea `0xbe5187...5000d3` | ⚠️ Unaudited |
| OracleDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | moonbeam | n/a | 2 deployments: moonbeam `0x079497...8935ba`; moonbeam `0xcaa36d...3b1748` | ⚠️ Unaudited |
| OracleDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | moonriver | n/a | 2 deployments: moonriver `0x1d920b...27627c`; moonriver `0xffd3e7...dd6e05` | ⚠️ Unaudited |
| OracleDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x290108...78a61b`; base `0x70114d...491799` | ⚠️ Unaudited |
| OracleDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x7f70d0...ea93aa`; arbitrum `0xbf9076...f47d18` | ⚠️ Unaudited |
| OracleDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x4c0cad...04c11a`; celo `0x9c1153...b914c8` | ⚠️ Unaudited |
| OracleDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x69f3cd...3a0fbb`; avalanche `0x716f88...ebd035` | ⚠️ Unaudited |
| OracleDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x7e0195...e4dfc9`; linea `0xdf8af8...85e3fe` | ⚠️ Unaudited |
| OracleDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | blast | n/a | 2 deployments: blast `0x8d42d3...3f3fe8`; blast `0xbe5187...5000d3` | ⚠️ Unaudited |
| OracleProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x75df5d...6f9e85`; metis `0xbe5187...5000d3` | ⚠️ Unaudited |
| PooledMappingToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xae110a...2b7534` | ⚠️ Unaudited |
| QuotaDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x40f829...a2fe89`; bsc `0xade704...c07320` | ⚠️ Unaudited |
| QuotaDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | moonriver | n/a | 2 deployments: moonriver `0x5950e8...ef1969`; moonriver `0x83600c...c51f0d` | ⚠️ Unaudited |
| QuotaDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | moonriver | n/a | 2 deployments: moonriver `0x603be4...d076a5`; moonriver `0x7ee4c2...d5cb4a` | ⚠️ Unaudited |
| QuotaDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x3c84ef...28281b`; avalanche `0x4c4ca7...40c845` | ⚠️ Unaudited |
| RapidityLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x31432b...fadd5a` | ⚠️ Unaudited |
| RapidityLibV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: polygon `0xf7ba15...b97613`; arbitrum `0x8d5085...1c5858` | ⚠️ Unaudited |
| RapidityLibV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 9 deployments: optimism `0x1289f7...ac9f8b`; optimism `0xbe2019...5aa17d`; metis `0x1289f7...ac9f8b`; base `0x4f1ab7...935bad`; base `0x555cf9...9cd6a3`; linea `0x290108...78a61b`; linea `0x3bb870...85e3ee`; blast `0xbe2019...5aa17d`; blast `0xc95a4b...55446d` | ⚠️ Unaudited |
| SignatureVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 12 deployments: optimism `0x09cdfc...82bcd2`; bsc `0x5ff81d...7c7f3e`; polygon `0x8818c7...e62999`; metis `0x09cdfc...82bcd2`; moonbeam `0xe727e8...2b825a`; moonriver `0xc565ed...77702c`; base `0xffb876...5f4a65`; arbitrum `0x8818c7...e62999`; celo `0xe0c8c2...4536ff`; avalanche `0x4f1d3d...12345c`; linea `0x6957e0...4ebfbd`; blast `0x09cdfc...82bcd2` | ⚠️ Unaudited |
| SimpleMultiSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: optimism `0x1e7e46...b4a625`; base `0x0e57db...a9f1df` | ⚠️ Unaudited |
| stARBIS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbf0075...d2db86` | ⚠️ Unaudited |
| TimelockController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | 4 deployments: optimism `0x858df5...462155`; metis `0x7f27b1...319c4b`; celo `0xf865a3...436e24`; blast `0x6584d7...856006` | ⚠️ Unaudited |
| TokenManagerDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x77ecc3...4979af` | ⚠️ Unaudited |
| TokenManagerDelegateV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0x1ed353...232fb6`; optimism `0xd4b5f1...8a1437` | ⚠️ Unaudited |
| TokenManagerDelegateV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x39af91...9017dd` | ⚠️ Unaudited |
| TokenManagerDelegateV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x9b1f4c...5839e7`; polygon `0xc928c8...c6111e` | ⚠️ Unaudited |
| TokenManagerDelegateV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | moonbeam | n/a | `0xc814ff...184169` | ⚠️ Unaudited |
| TokenManagerDelegateV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | moonriver | n/a | `0x32e150...a53b7f` | ⚠️ Unaudited |
| TokenManagerDelegateV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x09cdfc...82bcd2`; base `0x8d42d3...3f3fe8` | ⚠️ Unaudited |
| TokenManagerDelegateV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x5585cb...cbd415`; arbitrum `0xc928c8...c6111e` | ⚠️ Unaudited |
| TokenManagerDelegateV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x77e369...0c7059`; celo `0xd6965a...e7c694` | ⚠️ Unaudited |
| TokenManagerDelegateV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0xf06d72...5e8355` | ⚠️ Unaudited |
| TokenManagerDelegateV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 5 deployments: polygon `0x1bc20d...08e865`; metis `0xd4b5f1...8a1437`; base `0x50133f...1f0cf2`; linea `0x09cdfc...82bcd2`; linea `0x1ed353...232fb6` | ⚠️ Unaudited |
| TokenManagerDelegateV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x4f1ab7...935bad`; linea `0x97e088...d3ca7b` | ⚠️ Unaudited |
| TokenManagerDelegateV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | blast | n/a | 2 deployments: blast `0x1ed353...232fb6`; blast `0x50133f...1f0cf2` | ⚠️ Unaudited |
| TokenManagerProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | moonriver | n/a | 2 deployments: moonriver `0xe136d1...20a78b`; moonriver `0xf8b0d1...af5762` | ⚠️ Unaudited |
| TokenManagerProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: metis `0x1ed353...232fb6`; base `0x1289f7...ac9f8b`; linea `0x50133f...1f0cf2` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xeb986d...373674` | ⚠️ Unaudited |
| WanCctpV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0x555cf9...9cd6a3`; optimism `0xa63a35...7b4f27` | ⚠️ Unaudited |
| WanCctpV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0xf5db31...3b5d43` | ⚠️ Unaudited |
| WanCctpV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: optimism `0x2f676c...2296fb`; base `0x2ab376...38c838` | ⚠️ Unaudited |
| WanCctpV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x40c1aa...4e890d`; base `0x697986...d7ed15` | ⚠️ Unaudited |
| WanCctpV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x441bff...24d859`; base `0x510703...5c72f8` | ⚠️ Unaudited |
| WanCctpV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x76c513...a4610e` | ⚠️ Unaudited |
| WmbGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 4 deployments: optimism `0x9c0e23...478408`; base `0xa67a44...ee252e`; base `0xe15698...7fb272`; linea `0x2e042c...389a3d` | ⚠️ Unaudited |
| WrappedERC1155T1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x990825...984e07` | ⚠️ Unaudited |
| WrappedERC721T1 | token | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0xcfad8a...66c472`; polygon `0xf6b9cd...fdf245` | ⚠️ Unaudited |
| WrappedToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 18 deployments: polygon `0x4d1496...c15588`; polygon `0x599b4d...10c016`; polygon `0x6dc2fc...17f3b6`; polygon `0x789acf...77d1a4`; polygon `0xa07c87...3f7113`; polygon `0xa3f9e7...1a6d89`; base `0x05e030...010282`; base `0x1e7e46...b4a625`; base `0x3bb870...85e3ee`; base `0x4b1690...0fc95e`; base `0x72ccf6...9178ae`; base `0x73d923...62728c`; base `0x7e5fe1...a35aac`; base `0xb1f19e...325b4d`; base `0xb30778...bb2546`; base `0xc5cd7e...3810c2`; base `0xd7466f...a34c69`; base `0xe0cf5a...3a5e01` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (127)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Proxy (impl: 0xc0264277fcca5fcfabd41a8bc01c1fcaf8383e41) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0x7f27b1...319c4b`; optimism `0xc02642...383e41` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-261854 | `0xec0d8c...a3d24b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-261855 | `0xfceaaa...bc334e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3bb870...85e3ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8ba0fb...5656bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc5cd7e...3810c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xdd4b9b...be6e2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe15698...7fb272` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x16b8ca...833c59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1bbc16...d1e9ab` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-261857 | `0x30b8d9...31e53d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3906d8...a7cbec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5585cb...cbd415` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdb9728...1452b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xea0c75...cbee2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xeeaaf9...91b997` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | opbnb | unit-261858 | `0xd6b24d...2689de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fantom | n/a | 5 deployments: fantom `0x76b8c3...34cbaa`; fantom `0x9c30e4...ed894e`; polygon-zkevm `0xb13afe...39a754`; polygon-zkevm `0xbe5187...5000d3`; polygon-zkevm `0xc21e55...91f603` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-261859 | `0xccffe9...d69ee3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-261860 | `0x102f0c...8389a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x691201...5640c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xdd4b9b...be6e2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x0de505...342275` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x247a1b...3f0e3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x2a8bdd...30d3f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x398d96...43939e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x3a6e4f...9c5ce1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x46ebef...b7ec73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x634cd4...fb3c88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x75609d...507924` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x75b12f...433a52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xb2db18...2be6c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xb83410...a024cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xbacaaa...713477` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x04f121...a4d0d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x06ba9f...6cdd09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x0c98e5...7c0931` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x143371...8653bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x16cfb2...2c7d54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x1a40a8...ff0d48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x1fe0c2...ee4b16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x211455...8f630b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x21be48...5b482e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x266b63...99c8ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x2c2c7d...d9fb12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x3e0be2...e3cf76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x438587...a65b11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x4869f2...c99a98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x5662b5...e9d0a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x59bc49...bfe339` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x5b13cc...2adb63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x5b88a1...113681` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x5d3ac9...e8489a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x67cc99...0a4436` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x686efd...2fc501` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x719be3...e231d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x72e54b...2ff515` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x75cef5...925088` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x7a3772...215a81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x7e8503...d35b13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x7f4f00...fa6932` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x835460...332e41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x86178b...ea57ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x864a0b...23f213` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x89d03a...8dee31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x8b854a...be795d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x947934...af2131` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x95ef70...a239ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x9e8d79...325fd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x9f77de...2a6831` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xab1606...5994f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xacc391...e397a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xad1245...2090e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xaea5f4...77e800` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xaf03df...d3c063` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xb4b71f...809da7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xb55b06...68e423` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xb88171...bb106f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xbf19c3...de343a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xbf328d...448627` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xc9a950...39f6d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xce8201...deaa1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xd20ac8...1483c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xd899ee...1005dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xdd5f00...efe423` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xe91893...b647f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xe91dc8...b160bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xea68c1...540ffa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xed2ce4...69a8fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xfdb5e2...58ae59` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-261863 | `0x012297...c86f86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4dcb61...ce50a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x8afac7...ba0d9d`; base `0xeac9c2...574988` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc21e55...91f603` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc6ae1d...bf9dbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdd4b9b...be6e2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4dee9c...305dfb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x71f7f4...ba0824` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb66f96...5cb3a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-261861 | `0xd4b5f1...8a1437` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xea0c75...cbee2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x1faa6f...af7655` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x526a2a...e95913` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0a7cdb...2c6aa7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-261862 | `0x0d4d25...7c5a8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x265fc6...d2c114` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x26834c...d64576` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3a0e43...339d3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4cbce6...8434fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x52f447...fdbcaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x574d44...940dcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6473af...3f0a19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x69e9fb...77c5cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x822c43...c8c379` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x841d89...5183ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa47267...7dfc88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb24999...89d969` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb58078...39aeef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xccf619...818e24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe0866e...03047f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf1ea78...110200` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfe6317...75b249` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfe6b1a...2cd15b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x1289f7...ac9f8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x72ccf6...9178ae`; linea `0xe1efc9...cbd269` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc6ae1d...bf9dbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc95a4b...55446d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Wanchain 1.0.pdf](https://github.com/wanchain/Audits/blob/master/Wanchain%201.0.pdf) | unknown | Audit | 2018-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |
| [Wanchain Open Storeman.pdf](https://github.com/wanchain/Audits/blob/master/Wanchain%20Open%20Storeman.pdf) | unknown | Audit | 2019-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Wanchain PoS.pdf](https://github.com/wanchain/Audits/blob/master/Wanchain%20PoS.pdf) | unknown | Audit | 2019-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3319] Wanchain 1.0.pdf — no match: All contract names extracted from the vulnerability table and evaluation sections. Date from page header.
- [3320] Wanchain Open Storeman.pdf — no match: Audit report explicitly lists three contracts in scope: ImprovedStoremanGroupAdmin.sol, StoremanGroup.sol, StoremanLottery.sol. Audit completion date is 2019.02.23.
- [3321] Wanchain PoS.pdf — no match: Audit report explicitly lists four contracts in scope with file paths. Audit completion date is 2019.07.22.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Wanchain 1.0.pdf | wan-alt.sol | unmatched — not counted | — | listed in scope table and evaluated in section 4.2 | no |
| Wanchain 1.0.pdf | wan-token.sol | unmatched — not counted | — | listed in scope table and evaluated in section 4.3 | no |
| Wanchain 1.0.pdf | ConvertLib.sol | unmatched — not counted | — | listed in scope table and evaluated in section 4.4 | no |
| Wanchain 1.0.pdf | ERC20Protocol.sol | unmatched — not counted | — | listed in scope table and evaluated in section 4.5 | no |
| Wanchain 1.0.pdf | HTLCBase.sol | unmatched — not counted | — | listed in scope table and evaluated in section 4.6 | no |
| Wanchain 1.0.pdf | HTLCETH.sol | unmatched — not counted | — | listed in scope table and evaluated in section 4.7 | no |
| Wanchain 1.0.pdf | HTLCWETH.sol | unmatched — not counted | — | listed in scope table and evaluated in section 4.8 | no |
| Wanchain 1.0.pdf | Halt.sol | unmatched — not counted | — | listed in scope table and evaluated in section 4.9 | no |
| Wanchain 1.0.pdf | Owned.sol | unmatched — not counted | — | listed in scope table and evaluated in section 4.10 | no |
| Wanchain 1.0.pdf | SafeMath.sol | unmatched — not counted | — | listed in scope table and evaluated in section 4.11 | no |
| Wanchain 1.0.pdf | StandardToken.sol | unmatched — not counted | — | listed in scope table and evaluated in section 4.12 | no |
| Wanchain 1.0.pdf | StoremanGroupAdmin.sol | unmatched — not counted | — | listed in scope table and evaluated in section 4.13 | no |
| Wanchain 1.0.pdf | WETH.sol | unmatched — not counted | — | listed in scope table and evaluated in section 4.14 | no |
| Wanchain 1.0.pdf | WETHManager.sol | unmatched — not counted | — | listed in scope table and evaluated in section 4.15 | no |
| Wanchain Open Storeman.pdf | ImprovedStoremanGroupAdmin | unmatched — not counted | — | listed in scope table and audit summary | no |
| Wanchain Open Storeman.pdf | StoremanGroup | unmatched — not counted | — | listed in scope table and audit summary | no |
| Wanchain Open Storeman.pdf | StoremanLottery | unmatched — not counted | — | listed in scope table and audit summary | no |
| Wanchain PoS.pdf | pos_control_contracts | unmatched — not counted | — | listed in scope table and audit report | no |
| Wanchain PoS.pdf | pos_staking_contracts | unmatched — not counted | — | listed in scope table and audit report | no |
| Wanchain PoS.pdf | random_beacon_contract | unmatched — not counted | — | listed in scope table and audit report | no |
| Wanchain PoS.pdf | slot_leader_select_contracts | unmatched — not counted | — | listed in scope table and audit report | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| optimism | `0x00e533...8f5e28` | CrossDelegateV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x221607...f201ab` | CrossDelegateV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | `0x6372ae...6b95b5` | CrossDelegateV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | `0xde1ae3...d6671d` | CrossDelegateV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x2715aa...60cd04` | CrossDelegateV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xf7ba15...b97613` | CrossDelegateV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0x14ca89...4d6a1d` | CrossDelegateV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x65b3ae...5d3bf9` | CrossDelegateV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0x00e533...8f5e28` | CrossDelegateV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xc3711b...82baee` | CrossDelegateV6 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x74e121...037c3a` | CrossProxy | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x592de3...02e0b6` | Fee | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 90 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 127 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 21 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3
- Match method counts: n/a

Zero-match audit list:

- [3319] Wanchain 1.0.pdf
- [3320] Wanchain Open Storeman.pdf
- [3321] Wanchain PoS.pdf

Fork inheritance lineage and inherited audits are included when available.
