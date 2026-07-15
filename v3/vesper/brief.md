# Agentic Audit Brief: Vesper

## Export Authority

- Production state: **published scope**
- Raw selected rows: 19 across 12 audit(s)
- Eligible audit results: 30 (12 matched; 18 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Vesper (`vesper`)
- Website: [https://vesper.finance/](https://vesper.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: avalanche, base, bsc, ethereum, optimism, polygon
- Contract surface: 226 unique implementations (395 raw deployments)
- Coverage basis: 6/14 confirmed own live verified implementations (42.9%); conservative 42.9% with 0 needs-review implementation(s)
- DeFi Llama TVL: $41,017,483.77
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Vesper. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 45 contract row(s) across avalanche, base, bsc, ethereum, optimism. Structural roles: 31 unclassified, 12 core, 2 supporting. 7 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 45
- Structural roles: unclassified (31), core (12), supporting (2)
- Contract kinds: contract (28), abstract (17)
- Detected standards: erc1967proxy (7), erc20 (7), erc20permit (1), ownable (1)
- Frameworks: openzeppelin (14), openzeppelin-upgradeable (7)
- Upgradeable-pattern rows: 7

## Fork Analysis

0 of 63 contracts are derived from known codebases. 63 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x01e1d4...1c6efd`, chain 1)
- UnnamedContract (`0x1494ca...ba3c2b`, chain 1)
- UnnamedContract (`0x1f9840...01f984`, chain 1)
- UnnamedContract (`0x2260fa...c2c599`, chain 1)
- UnnamedContract (`0x4d2244...594381`, chain 1)
- UnnamedContract (`0x514910...f986ca`, chain 1)
- UnnamedContract (`0x64351f...085160`, chain 1)
- UnnamedContract (`0x6b1754...271d0f`, chain 1)
- UnnamedContract (`0x853d95...75b99e`, chain 1)
- UnnamedContract (`0x956f47...7f87ca`, chain 1)
- UnnamedContract (`0xa0b869...06eb48`, chain 1)
- UnnamedContract (`0xa8b607...a80452`, chain 1)
- UnnamedContract (`0xab5eb1...b9befa`, chain 1)
- UnnamedContract (`0xae7873...fc6393`, chain 1)
- UnnamedContract (`0xae7ab9...d7fe84`, chain 1)
- UnnamedContract (`0xbc6da0...3660e9`, chain 1)
- UnnamedContract (`0xbe9895...a49704`, chain 1)
- UnnamedContract (`0xc02aaa...756cc2`, chain 1)
- UnnamedContract (`0xc14900...157ba5`, chain 1)
- UnnamedContract (`0xd1c117...eb05f2`, chain 1)
- UnnamedContract (`0xdac17f...831ec7`, chain 1)
- UnnamedContract (`0xe2f2a5...5935a5`, chain 1)
- UnnamedContract (`0xef4f46...b475c1`, chain 1)
- UnnamedContract (`0x193827...0febad`, chain 10)
- UnnamedContract (`0x1f32b1...194ebb`, chain 10)
- UnnamedContract (`0x420000...000006`, chain 10)
- UnnamedContract (`0x420000...000042`, chain 10)
- UnnamedContract (`0x539505...df6bc0`, chain 10)
- UnnamedContract (`0x7f5c76...c31607`, chain 10)
- UnnamedContract (`0xccf3d1...f64761`, chain 10)
- UnnamedContract (`0xdd63ae...d0e78d`, chain 10)
- UnnamedContract (`0x1e4123...4e09ef`, chain 8453)
- UnnamedContract (`0x2ae3f1...0dec22`, chain 8453)
- UnnamedContract (`0x3899a6...eeefbe`, chain 8453)
- UnnamedContract (`0x420000...000006`, chain 8453)
- UnnamedContract (`0x46fb68...33e4b4`, chain 8453)
- UnnamedContract (`0x7ba6f0...e98c98`, chain 8453)
- UnnamedContract (`0x825625...7b3d13`, chain 8453)
- UnnamedContract (`0x833589...a02913`, chain 8453)
- UnnamedContract (`0x913ece...0c51b8`, chain 8453)
- UnnamedContract (`0xc1cba3...0ee452`, chain 8453)
- UnnamedContract (`0x49d5c2...c10bab`, chain 43114)
- UnnamedContract (`0x50b754...87b218`, chain 43114)
- UnnamedContract (`0x872943...76c0f5`, chain 43114)
- UnnamedContract (`0xa30e1a...076f30`, chain 43114)
- UnnamedContract (`0xa7d707...a4c664`, chain 43114)
- UnnamedContract (`0xb31f66...fd66c7`, chain 43114)
- UnnamedContract (`0xb97ef9...c48a6e`, chain 43114)
- UnnamedContract (`0xd586e7...9d8d70`, chain 43114)
- UnnamedContract (`0xe70efb...4914a8`, chain 43114)
- Controller (`0xa4f167...bd0217`, chain 1)
- TransparentUpgradeableProxy (`0x4c73f0...f72c22`, chain 1)
- TransparentUpgradeableProxy (`0x4dbe3f...30aa7b`, chain 1)
- TransparentUpgradeableProxy (`0x650cd4...01036a`, chain 1)
- TransparentUpgradeableProxy (`0x6aff18...424b13`, chain 1)
- TransparentUpgradeableProxy (`0xca7c60...6a36c2`, chain 1)
- TransparentUpgradeableProxy (`0xd02d6e...a96f9b`, chain 1)
- TransparentUpgradeableProxy (`0xdd9f61...e6d6dd`, chain 1)
- VETH (`0x103cc1...e54d5e`, chain 1)
- VSP (`0x1b4018...998421`, chain 1)
- VUSD (`0x677ddb...da8619`, chain 1)
- VUSDC (`0x0c4906...bf113d`, chain 1)
- VWBTC (`0x4b2e76...b1a17b`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 45; live-surface rows included: 45 (27 live, 18 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 64/104 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 6/14 (42.9%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 64 own, 40 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 122 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 77
- Confirmed-live implementations: 64 of 226 unique; 162 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 6/147
- Verified + Unaudited implementations: 141
- Verified by bytecode match: 0
- Unverified implementations: 79
- Unique implementations: 226
- Raw deployments: 395
- Audits discovered: 30 (30 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 12
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 30 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 6 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 5 | 3.4% | 2021-09 |
| Bloq | Tier 2 | 4 | 2.7% | 2021-02 |
| Dedaub | Tier 2 | 3 | 2.0% | 2022-04 |
| CertiK | Tier 2 | 2 | 1.4% | 2021-06 |
| Coinspect | Tier 2 | 2 | 1.4% | 2022-03 |
| yAudit | Tier 2 | 2 | 1.4% | 2020-09 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CollateralManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395752 | `0x8d0b8e...f3e899` | ✅ Audited |
| Controller | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395757 | `0xa4f167...bd0217` | ✅ Audited |
| VETH | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395726 | `0x103cc1...e54d5e` | ✅ Audited |
| VPool | unknown | project_anchor | own_supporting | 7 | ethereum | unit-395818 (7 proxies) | 7 deployments: ethereum `0x0538c8...9e36ee`; ethereum `0xb4edce...fd5f7d`; ethereum `0xba680a...f26e47`; ethereum `0xc1efbe...99c335`; ethereum `0xd11d9b...caeac5`; ethereum `0xd25ee8...d7b531`; ethereum `0xff43c3...42c257` | ✅ Audited |
| VSP | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395728 | `0x1b4018...998421` | ✅ Audited |
| VUSDC | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395725 | `0x0c4906...bf113d` | ✅ Audited |

### ⚠️ Verified + Unaudited (141)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Address | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6b9eb0...65e679`; ethereum `0x7d1e43...eee6be` | ⚠️ Unaudited |
| AlphaHomora | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54ce99...9babcc` | ⚠️ Unaudited |
| AlusdTokenMainnetOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6ea1c7...ff5377`; ethereum `0xad8b32...1523cf` | ⚠️ Unaudited |
| BTCPeggedTokenOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x54525f...4946b4`; ethereum `0xe21319...4372d0` | ⚠️ Unaudited |
| CollateralManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x6349e8...82aa83`; ethereum `0x684647...d259df`; ethereum `0xabc648...bf8c18`; ethereum `0xf8ffaa...4f70bc`; ethereum `0xfa3552...a666f5` | ⚠️ Unaudited |
| Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8ea0e...3f6067` | ⚠️ Unaudited |
| CreamStrategyETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3e89f1...4b447d`; ethereum `0x7b2db7...4484ec`; ethereum `0xb92d60...e569e6` | ⚠️ Unaudited |
| CreamStrategyUSDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x5a6aad...5f6314`; ethereum `0x8eacba...89590b`; ethereum `0xc7e98c...5fd6c8` | ⚠️ Unaudited |
| Crv3PoolStrategyDAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x0c712f...e29ce3`; ethereum `0x656636...e1db6f`; ethereum `0xd11e67...b3be75`; ethereum `0xe94046...1dfd1d` | ⚠️ Unaudited |
| Crv4PoolStrategySUSDPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x5708e0...40d9e0`; ethereum `0x6674f7...bd05ce` | ⚠️ Unaudited |
| CTokenOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c3085...57a87e` | ⚠️ Unaudited |
| DebtToken | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x347eac...689847`; ethereum `0x486b92...0ec1bd`; ethereum `0xda0958...b294da` | ⚠️ Unaudited |
| DebtTokenUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc53fe...c8fffe` | ⚠️ Unaudited |
| DepositToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x24f2d1...bcf4ad` | ⚠️ Unaudited |
| DepositToken | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x335e4b...4ea53a`; ethereum `0xc00a39...6ee134`; ethereum `0xe4dfd8...ed31c9` | ⚠️ Unaudited |
| DepositTokenUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf3d0cd...82aec6` | ⚠️ Unaudited |
| EarnPool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x143c8b...164642`; bsc `0x66de07...1796f3` | ⚠️ Unaudited |
| EarnVesperStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d94ce...5d66a5` | ⚠️ Unaudited |
| ESVSP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x02fc85...58623b`; ethereum `0xd18709...2076f5`; ethereum `0xd55d88...3028fa`; ethereum `0xeba312...7d5d05` | ⚠️ Unaudited |
| ESVSP | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xbbc50d...fa1018`; ethereum `0xbcb608...e0fe29` | ⚠️ Unaudited |
| ESVSP | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xc6be0e...8572bf`; ethereum `0xf86472...5bd807` | ⚠️ Unaudited |
| ESVSP | unknown | project_anchor | own_supporting | 1 | ethereum | unit-395821 | `0xd02d6e...a96f9b` | ⚠️ Unaudited |
| ESVSP721 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x676c0a...014363`; ethereum `0xede488...736d27` | ⚠️ Unaudited |
| ESVSP721 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-395820 | `0x6aff18...424b13` | ⚠️ Unaudited |
| ESVSP721 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x927367...0393d4`; ethereum `0x9b62d5...f48428` | ⚠️ Unaudited |
| ESVSP721Upgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0e8c5c...2cbd4e`; ethereum `0xa958a7...837126` | ⚠️ Unaudited |
| ESVSPUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x54ae48...47a307`; ethereum `0xd3bd28...29c85a` | ⚠️ Unaudited |
| Euler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67be85...cc1165` | ⚠️ Unaudited |
| EulerVesperXy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x2b5de5...94b609`; ethereum `0x46667f...db63f5`; ethereum `0xf1886a...0c17ad` | ⚠️ Unaudited |
| GovernorBravoDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1015bd...390a5c`; ethereum `0x3c0439...a6aca1` | ⚠️ Unaudited |
| GovernorBravoDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x161fe0...d08050`; ethereum `0xc2ffbf...50f48c` | ⚠️ Unaudited |
| GovernorBravoDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x27f4de...addaec`; ethereum `0x420ec7...073d44` | ⚠️ Unaudited |
| GovernorBravoDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x8a65a9...6bbf0c`; ethereum `0xe19fa8...a41c3c`; ethereum `0xe69d41...8d6fe4` | ⚠️ Unaudited |
| IbBtcTokenOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3a360a...756346`; ethereum `0xf1010d...62f54d` | ⚠️ Unaudited |
| MakerVesper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd08cfe...a7c078` | ⚠️ Unaudited |
| MakerVesperStETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xc2dda4...8698e1`; ethereum `0xf1543e...fb20f5` | ⚠️ Unaudited |
| MasterOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x80704a...4f46e2`; ethereum `0xf54f2d...0133ce` | ⚠️ Unaudited |
| MerkleBox | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x469c9f...400d2f`; ethereum `0x693c78...2b6cfb`; ethereum `0xe67516...94bf73` | ⚠️ Unaudited |
| MiniArmyKnife | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x583e49...48201a`; ethereum `0x5d72a9...afca80`; ethereum `0xda5e6d...368b2d`; ethereum `0xdab66f...66626c` | ⚠️ Unaudited |
| MiniArmyKnife | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395772 | `0xca5a5b...33b346` | ⚠️ Unaudited |
| Minter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4bc1a2...370599`; ethereum `0x7c1482...f11397` | ⚠️ Unaudited |
| MockOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ff749...b5e984` | ⚠️ Unaudited |
| MockVSP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x5cda65...5e3f97`; ethereum `0x85cbb4...244777` | ⚠️ Unaudited |
| NativeTokenGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f58bb...e5f66c` | ⚠️ Unaudited |
| PaymentSplitter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x097ee0...6dafd7`; ethereum `0x223809...13152c`; ethereum `0xecc4be...7524df` | ⚠️ Unaudited |
| PingPong | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x439780...2badaa` | ⚠️ Unaudited |
| Pool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3f18ab...078bac`; ethereum `0x46b13e...fb08c8` | ⚠️ Unaudited |
| Pool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x530e54...ab151a` | ⚠️ Unaudited |
| PoolAccountant | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 15 deployments: ethereum `0x011881...ca7128`; ethereum `0x042565...760213`; ethereum `0x16cdfe...055659`; ethereum `0x4d71a0...e5d674`; ethereum `0x6cf8b8...bcee2a`; ethereum `0x762ff5...20380d`; ethereum `0x804cd6...7bc7ed`; ethereum `0x8ad5b3...a62e0a`; ethereum `0xa92951...5b2cbb`; ethereum `0xc5bdba...8e5a04`; ethereum `0xc88a0a...93c4b6`; ethereum `0xd01062...b1de7c`; ethereum `0xdd3662...1117b4`; ethereum `0xec8c44...6f0505`; ethereum `0xfb0df6...94561a` | ⚠️ Unaudited |
| PoolAccountant | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0879f1...e89542`; ethereum `0x64a76d...3619b5` | ⚠️ Unaudited |
| PoolAccountant | unknown | non_address_book | non_address_book_inventory (excluded) | 10 | ethereum | n/a | 11 deployments: ethereum `0x0fae21...ff6e56`; ethereum `0x102507...842428`; ethereum `0x13c88a...91b1fd`; ethereum `0x2337c5...c442c0`; ethereum `0x4f746b...cfefe0`; ethereum `0x542ffa...a3d919`; ethereum `0x7c6226...0e639e`; ethereum `0x90b845...d728f6`; ethereum `0x955613...379b95`; ethereum `0xa17f64...a6088c`; ethereum `0xfb7fa7...24eb44` | ⚠️ Unaudited |
| PoolAccountant | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x12fdff...fc89d7`; ethereum `0x552426...833ca7` | ⚠️ Unaudited |
| PoolAccountant | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2a7534...031794`; ethereum `0xbdf903...2474fa` | ⚠️ Unaudited |
| PoolAccountant | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x45aba6...e5e94e`; ethereum `0xd87b3b...25b421` | ⚠️ Unaudited |
| PoolAccountant | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x6218f1...e633da`; ethereum `0xbf2e3f...940c1b` | ⚠️ Unaudited |
| PoolAccountant | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x751e5e...86d23a`; ethereum `0xd66b76...409661` | ⚠️ Unaudited |
| PoolAccountantUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x4889f9...13f9c1`; ethereum `0xacca7c...a4638d`; ethereum `0xb5144e...b585c6`; ethereum `0xce9105...fdf13e` | ⚠️ Unaudited |
| PoolRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xbaf4ea...4e8b44`; ethereum `0xbf5719...570115` | ⚠️ Unaudited |
| PoolRegistryUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5079e2...e8315b` | ⚠️ Unaudited |
| PoolRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x10c72f...761919`; ethereum `0x877d05...d05be9` | ⚠️ Unaudited |
| PoolRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x10fde8...8580fa`; ethereum `0x2cb31d...406046` | ⚠️ Unaudited |
| PoolRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x17eff8...4d417b`; ethereum `0xe2751f...acb121` | ⚠️ Unaudited |
| PoolRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x31d9b0...8ee863`; ethereum `0x479a86...295f8d`; ethereum `0x858a0a...c1bd1c`; ethereum `0x935673...9dc738`; ethereum `0xb412e9...0ba854`; ethereum `0xca9aee...2fdec5`; ethereum `0xd59996...0343b0`; ethereum `0xec5a0f...512a3e` | ⚠️ Unaudited |
| PoolRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3a7644...d16653`; ethereum `0x487f4f...9e9211` | ⚠️ Unaudited |
| PoolRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x4279cc...c01106`; ethereum `0xe82cec...2e7a9f` | ⚠️ Unaudited |
| PoolRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x4a5398...bd5486`; ethereum `0xb8208c...c8906d` | ⚠️ Unaudited |
| PoolRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x4a7ce5...951d5c`; ethereum `0xf9fbc8...cc064c` | ⚠️ Unaudited |
| PoolRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x532342...5f5d83`; ethereum `0x90bb3e...f4307e` | ⚠️ Unaudited |
| PoolRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x6d7746...e64153`; ethereum `0x8a36f2...f6fbb7` | ⚠️ Unaudited |
| PoolRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x6dc347...6def93`; ethereum `0xebf4c7...a2023d` | ⚠️ Unaudited |
| PoolRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xa72054...a0bfaa`; ethereum `0xc1fe9a...d17749` | ⚠️ Unaudited |
| PoolRewardsUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x655845...e03d23`; ethereum `0x667174...881942`; ethereum `0xa6d77c...ab9a29`; ethereum `0xc2228b...37cc7b` | ⚠️ Unaudited |
| PoolUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbf7f3...08b77b` | ⚠️ Unaudited |
| PriceProvidersAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x37ff84...51b92b`; ethereum `0x516f93...e900fd` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19a02f...2798ca` | ⚠️ Unaudited |
| RariFuse8Eth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82f53c...c3458a` | ⚠️ Unaudited |
| Redeemer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7915ce...7fb3e8` | ⚠️ Unaudited |
| Rewards | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0d6d94...e43b97`; ethereum `0x497958...1c51c0` | ⚠️ Unaudited |
| Rewards | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2005e4...a17994`; ethereum `0xfb9b64...1f7d65` | ⚠️ Unaudited |
| RewardsDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x025347...7bcad7`; ethereum `0x1a19a4...02872a` | ⚠️ Unaudited |
| RewardsDistributorUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x618d0b...ad9b2b` | ⚠️ Unaudited |
| RewardsUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2bdba0...7553f2`; ethereum `0xd88e30...68a720` | ⚠️ Unaudited |
| RoutedSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2f8b10...dd1745`; ethereum `0xb9e463...71b8bf` | ⚠️ Unaudited |
| RoutedSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x341c2a...a1e27d`; ethereum `0xea454c...b50038` | ⚠️ Unaudited |
| StableCoinProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x091f06...486cda`; ethereum `0xfd5216...690773` | ⚠️ Unaudited |
| SwapManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc48ea9...010174` | ⚠️ Unaudited |
| SyntheticToken | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x9105a7...843ee9`; ethereum `0x9f71f7...57b8d0`; ethereum `0xb298aa...7a129f` | ⚠️ Unaudited |
| SyntheticTokenUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc097a7...61b3ad` | ⚠️ Unaudited |
| SynthUsdTokenOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00518d...311cd5` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x051e40...5ea7b9`; ethereum `0x122deb...1cf4e3`; ethereum `0x2377e2...d54466`; ethereum `0x4e7b98...23a2c5`; ethereum `0xa7d20c...f9fcda` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x0d858d...cb754f`; ethereum `0x23140f...94db99`; ethereum `0x6cb3b9...727fff`; ethereum `0xbdb0fb...5d93ae` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x11e21c...cc80ed`; ethereum `0x861db1...71a0d4` | ⚠️ Unaudited |
| Treasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x0e2ba4...7faf49`; ethereum `0x813e89...902bd8`; ethereum `0x8b609c...14b9d9`; ethereum `0xe6cffe...76ff12` | ⚠️ Unaudited |
| Treasury | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x312f8f...313764`; ethereum `0xe90c13...7405ef` | ⚠️ Unaudited |
| TreasuryUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa88685...8819b9` | ⚠️ Unaudited |
| USDPeggedTokenOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x278957...3bafb1` | ⚠️ Unaudited |
| VBetaETH | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-395734 | `0x2c3619...b87abf` | ⚠️ Unaudited |
| VBetaUSDC | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-395729 | `0x1e8604...a7097f` | ⚠️ Unaudited |
| VBetaWBTC | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-395744 | `0x74cc5b...88a8af` | ⚠️ Unaudited |
| VBTC | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-395775 | `0xd773ca...af168b` | ⚠️ Unaudited |
| VDAI | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-395771 | `0xca0c34...014d80` | ⚠️ Unaudited |
| VesperBridgeStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x1cbb7b...c2b9b5`; ethereum `0x210e1b...46f585`; ethereum `0x4f1d2b...16b3fe`; ethereum `0x6d7d6d...018578`; ethereum `0x7ff950...ac0969`; ethereum `0x99bfef...37b12e` | ⚠️ Unaudited |
| VesperEarn | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd3783...41f661` | ⚠️ Unaudited |
| VesperEarnDrip | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x285a45...9f6dbb`; ethereum `0x311b51...8cee4d` | ⚠️ Unaudited |
| VesperEarnDrip | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x339b20...6b3b08`; ethereum `0xbc390a...68dff6` | ⚠️ Unaudited |
| VesperEarnDrip | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x60958e...fa3414`; ethereum `0xb76ec4...a641f9` | ⚠️ Unaudited |
| VesperEarnDrip | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7b0729...829eef`; ethereum `0xea6c37...564791` | ⚠️ Unaudited |
| VesperEarnDrip | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xf5ae30...36acca`; ethereum `0xfc667c...820ace` | ⚠️ Unaudited |
| VesperEarnSaddleLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15911b...703f8a` | ⚠️ Unaudited |
| VesperIronBankXYStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79d198...63828a` | ⚠️ Unaudited |
| VesperMakerStrategyETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x980e76...c8e697` | ⚠️ Unaudited |
| VesperMakerStrategyLINK | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x59543a...ad29c0`; ethereum `0x636a02...f54409` | ⚠️ Unaudited |
| VesperV3StrategyDAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e2ddf...4d3db4` | ⚠️ Unaudited |
| VETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x804f33...c82ea3` | ⚠️ Unaudited |
| VETH | unknown | project_anchor | own_supporting | 2 | ethereum | unit-395825 (2 proxies) | 2 deployments: ethereum `0x951397...3cca8c`; ethereum `0xa89566...07d2b3` | ⚠️ Unaudited |
| VETH | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-395778 | `0xe4e3da...f39a29` | ⚠️ Unaudited |
| VirtualDollar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb791a8...a47c7d` | ⚠️ Unaudited |
| VLINK | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-395723 | `0x0a27e9...93d40c` | ⚠️ Unaudited |
| VPool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x05b143...c8b4b6`; ethereum `0xad680b...f440b5` | ⚠️ Unaudited |
| VPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x43ef34...34f841`; ethereum `0x479dfa...2778ca`; ethereum `0x4da20a...bbcf29`; ethereum `0x7f0088...9d5c0f`; ethereum `0x8c657a...c48770`; ethereum `0xb7cec2...6d27bf`; ethereum `0xda92f9...42cf04` | ⚠️ Unaudited |
| VPool | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | ethereum | unit-395819 | 2 deployments: ethereum `0x4b8a42...d807fe`; ethereum `0x8b3c86...8e3639` | ⚠️ Unaudited |
| VPool | core_logic | project_anchor | own_supporting | 3 | ethereum | unit-395822 (3 proxies) | 4 deployments: ethereum `0x4c73f0...f72c22`; ethereum `0x650cd4...01036a`; ethereum `0x91f92f...8ede4a`; ethereum `0xca7c60...6a36c2` | ⚠️ Unaudited |
| VPool | core_logic | project_anchor | own_supporting | 3 | ethereum | unit-395824 (3 proxies) | 4 deployments: ethereum `0x4dbe3f...30aa7b`; ethereum `0xd948ba...9fd9b8`; ethereum `0xdd9f61...e6d6dd`; ethereum `0xecd779...f23234` | ⚠️ Unaudited |
| VPool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7e198a...5c5dd7`; ethereum `0x8c2d8b...8ec6f3` | ⚠️ Unaudited |
| VPool | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | ethereum | unit-395823 | 2 deployments: ethereum `0xa7c21f...c32719`; ethereum `0xc88231...8433cc` | ⚠️ Unaudited |
| VPoolTokenOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6a57e...16cd2e` | ⚠️ Unaudited |
| VPoolUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x582ebf...9e0446`; ethereum `0xa1d704...9aa3ee`; ethereum `0xa924b6...86c5b0`; ethereum `0xe64795...561624` | ⚠️ Unaudited |
| VspMainnetOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x5ed276...d84527`; ethereum `0xa889d4...126dee` | ⚠️ Unaudited |
| VspMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf10c3...303e1e` | ⚠️ Unaudited |
| VSPStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x2a1b6f...bc94f4`; ethereum `0x94c7c5...334e7e`; ethereum `0xd5579a...e32aa2`; ethereum `0xfd61f9...5794b6` | ⚠️ Unaudited |
| VSPT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaff40f...f1a736` | ⚠️ Unaudited |
| VUNI | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-395782 | `0xf858a3...fb40ae` | ⚠️ Unaudited |
| VUSD | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395741 | `0x677ddb...da8619` | ⚠️ Unaudited |
| VUSDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x0648e5...7957cf`; ethereum `0x56ee98...2e581b`; ethereum `0x85c786...547a46` | ⚠️ Unaudited |
| VUSDC | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-395736 | `0x4a4a54...411101` | ⚠️ Unaudited |
| VUSDC | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-395745 | `0x777a78...49cf85` | ⚠️ Unaudited |
| VUSDC | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-395764 | `0xb1c0d6...3bcde5` | ⚠️ Unaudited |
| VUSDT | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-395754 | `0x95c0b3...13bdff` | ⚠️ Unaudited |
| VVSP | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-395766 | `0xba4cfe...ecf8fc` | ⚠️ Unaudited |
| VWBTC | token | project_anchor | own_supporting | 0 | ethereum | unit-395737 | `0x4b2e76...b1a17b` | ⚠️ Unaudited |
| VWBTC | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-395773 | `0xcc9be1...ac0605` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (79)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395722 | `0x01e1d4...1c6efd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-395724 | `0x0b1e5e...e86dc5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395727 | `0x1494ca...ba3c2b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395730 | `0x1f9840...01f984` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395731 | `0x2260fa...c2c599` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-395732 | `0x252c80...aadff2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-395733 | `0x2b6c40...a3e324` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x334fa9...4cabd7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-395735 | `0x35b225...7d516e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37b54f...60bb8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3bc3ae...415e36` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395738 | `0x4d2244...594381` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395739 | `0x514910...f986ca` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395740 | `0x64351f...085160` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395742 | `0x6b1754...271d0f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-395743 | `0x6f8d5f...53488c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-395746 | `0x7a74b6...6a2ebf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-395747 | `0x8209f3...d5b402` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-395748 | `0x83a99d...a0fecf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-395749 | `0x83c608...2d4495` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395750 | `0x853d95...75b99e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-395751 | `0x8bcdd6...98db25` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395753 | `0x956f47...7f87ca` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-395755 | `0x9b91ab...795663` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395756 | `0xa0b869...06eb48` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-395758 | `0xa5bc6e...ac52ad` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395759 | `0xa8b607...a80452` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395760 | `0xab5eb1...b9befa` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-395761 | `0xabff8f...859ef0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395762 | `0xae7873...fc6393` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395763 | `0xae7ab9...d7fe84` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-395765 | `0xb4c912...7bb115` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395767 | `0xbc6da0...3660e9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395768 | `0xbe9895...a49704` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395769 | `0xc02aaa...756cc2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395770 | `0xc14900...157ba5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395774 | `0xd1c117...eb05f2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395776 | `0xdac17f...831ec7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0222d...4a1e16` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395777 | `0xe2f2a5...5935a5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-395779 | `0xe4fe64...805d93` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-395780 | `0xebcf77...d75f49` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395781 | `0xef4f46...b475c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf502d1...4602ce` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-395783 | `0x193827...0febad` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-395784 | `0x1f32b1...194ebb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-395785 | `0x420000...000006` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-395786 | `0x420000...000042` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-395787 | `0x539505...df6bc0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-395788 | `0x7f5c76...c31607` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-395789 | `0xccf3d1...f64761` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-395790 | `0xdd63ae...d0e78d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-395808 | `0x1e4123...4e09ef` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-395809 | `0x2ae3f1...0dec22` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-395810 | `0x3899a6...eeefbe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-395811 | `0x420000...000006` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-395812 | `0x46fb68...33e4b4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-395813 | `0x7ba6f0...e98c98` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-395814 | `0x825625...7b3d13` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-395815 | `0x833589...a02913` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-395816 | `0x913ece...0c51b8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-395817 | `0xc1cba3...0ee452` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | avalanche | unit-395791 | `0x13aecc...2d6f1e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | avalanche | unit-395792 | `0x148a82...6f1736` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | avalanche | unit-395793 | `0x2b6c40...a3e324` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | avalanche | unit-395794 | `0x437804...0db631` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-395795 | `0x49d5c2...c10bab` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | avalanche | unit-395796 | `0x4b915e...75e5f6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-395797 | `0x50b754...87b218` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | avalanche | unit-395798 | `0x5323f4...8f5706` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-395799 | `0x872943...76c0f5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-395800 | `0xa30e1a...076f30` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-395801 | `0xa7d707...a4c664` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-395802 | `0xb31f66...fd66c7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-395803 | `0xb97ef9...c48a6e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | avalanche | unit-395804 | `0xba3fb2...43b13d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-395805 | `0xd586e7...9d8d70` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-395806 | `0xe70efb...4914a8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | avalanche | unit-395807 | `0xea94eb...ed1047` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [REP-Bloq-11_11_20.pdf](https://github.com/vesperfi/doc/blob/main/audit/v1/REP-Bloq-11_11_20.pdf) | Bloq | Audit | 2020-11 | stale | Direct | contract_name | matched | 3 | 0 | 0 | 11 | high |
| [REP-Bloq-VesperPools-20_01_2021.pdf](https://github.com/vesperfi/doc/blob/main/audit/v2/REP-Bloq-VesperPools-20_01_2021.pdf) | Bloq | Audit | 2021-01 | stale | Direct | n/a | matched | 1 | 0 | 0 | 7 | n/a |
| [REP-Bloq_15_02_2021.pdf](https://github.com/vesperfi/doc/blob/main/audit/v2/REP-Bloq_15_02_2021.pdf) | Bloq | Audit | 2021-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Vesper Pools Security - Fourth Audit v210119.pdf](https://github.com/vesperfi/doc/blob/main/audit/v2/Vesper%20Pools%20Security%20-%20Fourth%20Audit%20v210119.pdf) | unknown | Audit | 2021-01 | stale | Direct | n/a | matched | 1 | 0 | 0 | 7 | n/a |
| [Vesper Pools Security - PaymentSplitter Audit v210210.pdf](https://github.com/vesperfi/doc/blob/main/audit/v2/Vesper%20Pools%20Security%20-%20PaymentSplitter%20Audit%20v210210.pdf) | unknown | Audit | 2021-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Vesper Pools Security - Second Audit v201230.pdf](https://github.com/vesperfi/doc/blob/main/audit/v2/Vesper%20Pools%20Security%20-%20Second%20Audit%20v201230.pdf) | unknown | Audit | 2020-11 | stale | Direct | contract_name | matched | 3 | 0 | 0 | 21 | high |
| [Vesper Pools Security - Third Audit v201230.pdf](https://github.com/vesperfi/doc/blob/main/audit/v2/Vesper%20Pools%20Security%20-%20Third%20Audit%20v201230.pdf) | unknown | Audit | 2020-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [Vesper Pools Security Audit v201230.pdf](https://github.com/vesperfi/doc/blob/main/audit/v2/Vesper%20Pools%20Security%20Audit%20v201230.pdf) | yAudit | Audit | 2020-09 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 20 | high |
| [Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Coinspect%20-%20Smart%20Contract%20Audit%20-%20Vesper%20-%20Nov%202021.pdf) | Coinspect | Audit | 2021-11 | stale | Direct | n/a | no match | 0 | 0 | 0 | 51 | n/a |
| [Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Coinspect%20-%20Smart%20Contract%20Audit%20-%20Vesper%20Earn%20-%20September%202021.pdf) | Coinspect | Audit | 2021-09 | stale | Direct | n/a | no match | 0 | 0 | 0 | 43 | n/a |
| [Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Coinspect%20-%20Smart%20Contract%20Audit%20-%20Vesper%20Pools%20February%202022.pdf) | Coinspect | Audit | 2022-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 49 | high |
| [Coinspect - Smart Contract Audit - Vesper Pools January 2022.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Coinspect%20-%20Smart%20Contract%20Audit%20-%20Vesper%20Pools%20January%202022.pdf) | Coinspect | Audit | 2022-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | n/a |
| [PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/PRE-Bloq_%20Vesper%20Pools%20V3-2021-06-26-certik.pdf) | CertiK | Audit | 2021-06 | stale | Direct | contract_name | matched | 2 | 1 | 0 | 65 | high |
| [Vesper Pools audit-poolv2-dedaub-April-2021.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper%20Pools%20audit-poolv2-dedaub-April-2021.pdf) | Dedaub | Audit | 2021-04 | stale | Direct | n/a | matched | 2 | 0 | 0 | 10 | n/a |
| [Vesper Pools v3 audit-dedaub-May-2021.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper%20Pools%20v3%20audit-dedaub-May-2021.pdf) | Dedaub | Audit | 2021-05 | stale | Direct | n/a | matched | 1 | 0 | 0 | 10 | n/a |
| [Vesper Pools v3 audit-dedaub.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper%20Pools%20v3%20audit-dedaub.pdf) | Dedaub | Audit | 2021-05 | stale | Direct | n/a | matched | 1 | 0 | 0 | 10 | n/a |
| [Vesper Pools+Strategies September-2021.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper%20Pools%2BStrategies%20September-2021.pdf) | unknown | Audit | 2021-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [Vesper Pools-Dedaub-Nov-2021.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper%20Pools-Dedaub-Nov-2021.pdf) | Dedaub | Audit | 2021-11 | stale | Direct | n/a | no match | 0 | 0 | 0 | 5 | n/a |
| [Vesper Strategies - April v210428.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper%20Strategies%20-%20April%20v210428.pdf) | unknown | Audit | 2021-04 | stale | Direct | n/a | matched | 1 | 1 | 0 | 11 | n/a |
| [Vesper V3 - 2nd Review - v2-may-2021.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper%20V3%20-%202nd%20Review%20-%20v2-may-2021.pdf) | unknown | Audit | 2021-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | medium |
| [Vesper V3 - 2nd Review - v210519 (1).pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper%20V3%20-%202nd%20Review%20-%20v210519%20(1).pdf) | unknown | Audit | 2021-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | medium |
| [Vesper-Pools-Audit-Coinspect-Jan21.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper-Pools-Audit-Coinspect-Jan21.pdf) | Coinspect | Audit | 2021-01 | stale | Direct | n/a | matched | 1 | 0 | 0 | 7 | n/a |
| [Vesper-Pools-Audit-Coinspect-March21.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper-Pools-Audit-Coinspect-March21.pdf) | Coinspect | Audit | 2021-03 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 13 | high |
| [Vesper-Pools-Audit-Coinspect-March22.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper-Pools-Audit-Coinspect-March22.pdf) | Coinspect | Audit | 2022-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 19 | high |
| [Vesper-Pools-Audit-Coinspect-Nov21.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper-Pools-Audit-Coinspect-Nov21.pdf) | Coinspect | Audit | 2021-11 | stale | Direct | n/a | no match | 0 | 0 | 0 | 51 | n/a |
| [Vesper-Pools-Audit-Coinspect-Sept21.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper-Pools-Audit-Coinspect-Sept21.pdf) | Coinspect | Audit | 2021-09 | stale | Direct | n/a | no match | 0 | 0 | 0 | 43 | n/a |
| [Vesper-Pools-Audit-Dedaub-April 22.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper-Pools-Audit-Dedaub-April%2022.pdf) | Dedaub | Audit | 2022-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | medium |
| [Vesper-Pools-Audit-Dedaub-Oct21.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper-Pools-Audit-Dedaub-Oct21.pdf) | Dedaub | Audit | 2021-10 | stale | Direct | n/a | no match | 0 | 0 | 0 | 11 | n/a |
| [Vesper-Pools-Strategies-Audit-Halborn-Aug-22.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper-Pools-Strategies-Audit-Halborn-Aug-22.pdf) | Halborn | Audit | 2022-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [Vesper-Pools-Synth-VUSD-Deltas-Dedaub-March22.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper-Pools-Synth-VUSD-Deltas-Dedaub-March22.pdf) | Dedaub | Audit | 2022-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [4861] REP-Bloq-11_11_20.pdf — matched: No explicit scope section; contracts extracted from findings and report metadata. Audit date from delivery date.
- [4862] REP-Bloq-VesperPools-20_01_2021.pdf — matched: No reason recorded
- [4863] REP-Bloq_15_02_2021.pdf — no match: Only one contract in scope: PaymentSplitter.sol
- [4864] Vesper Pools Security - Fourth Audit v210119.pdf — matched: No reason recorded
- [4865] Vesper Pools Security - PaymentSplitter Audit v210210.pdf — no match: Only one contract in scope: PaymentSplitter from strategies/PaymentSplitter.sol
- [4866] Vesper Pools Security - Second Audit v201230.pdf — matched: Extracted 24 contract names from the scope section listing Solidity source files with sha256 hashes. Audit date inferred from 'November 2020' on cover page, using last day of month.
- [4867] Vesper Pools Security - Third Audit v201230.pdf — no match: Extracted 9 contracts from the scope section listing Solidity source files with sha256 hashes. Audit date inferred from 'December 2020' in the executive summary and cover page; using last day of month.
- [4868] Vesper Pools Security Audit v201230.pdf — matched: Scope section explicitly lists 22 Solidity source files with sha256 hashes. Audit date inferred from 'September 2020' on cover page; using last day of month.
- [4869] Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf — no match: No reason recorded
- [4870] Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf — no match: No reason recorded
- [4871] Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf — no match: Extracted 49 contract names from the scope section listing files with sha256 hashes. Audit date inferred from document title 'V220421' (April 21, 2022) and the April 20, 2022 status updates.
- [4872] Coinspect - Smart Contract Audit - Vesper Pools January 2022.pdf — no match: ambiguous_frozen_extraction_cache
- [4873] PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf — matched: All contracts listed in the Audit Scope section of the report are extracted. The audit date is explicitly stated as 'Jun 26, 2021' in the Audit Summary.
- [4874] Vesper Pools audit-poolv2-dedaub-April-2021.pdf — matched: No reason recorded
- [4875] Vesper Pools v3 audit-dedaub-May-2021.pdf — matched: No reason recorded
- [4876] Vesper Pools v3 audit-dedaub.pdf — matched: No reason recorded
- [4877] Vesper Pools+Strategies September-2021.pdf — no match: Extracted contract names from scope listing and findings. Audit date from cover page.
- [4878] Vesper Pools-Dedaub-Nov-2021.pdf — no match: No reason recorded
- [4879] Vesper Strategies - April v210428.pdf — matched: No reason recorded
- [4880] Vesper V3 - 2nd Review - v2-may-2021.pdf — no match: Audit report does not have a dedicated scope section; contracts were inferred from sections describing changes. Date is May 2021, last day of month used.
- [4881] Vesper V3 - 2nd Review - v210519 (1).pdf — no match: No explicit scope table; contracts inferred from assessment sections and findings. Date is May 2021, last day of month used.
- [4882] Vesper-Pools-Audit-Coinspect-Jan21.pdf — matched: No reason recorded
- [4883] Vesper-Pools-Audit-Coinspect-March21.pdf — matched: All 14 Solidity files listed in the scope section with sha256 hashes. Audit date inferred from 'March 2021' on cover page, using last day of month.
- [4884] Vesper-Pools-Audit-Coinspect-March22.pdf — no match: All contracts listed in the scope section with file paths and hashes. Audit date inferred from 'March 2022' in title and executive summary.
- [4885] Vesper-Pools-Audit-Coinspect-Nov21.pdf — no match: No reason recorded
- [4886] Vesper-Pools-Audit-Coinspect-Sept21.pdf — no match: No reason recorded
- [4887] Vesper-Pools-Audit-Dedaub-April 22.pdf — no match: No explicit scope table; contracts inferred from findings. Audit date from cover page.
- [4888] Vesper-Pools-Audit-Dedaub-Oct21.pdf — no match: No reason recorded
- [4889] Vesper-Pools-Strategies-Audit-Halborn-Aug-22.pdf — no match: All 11 contracts listed in scope section 1.4. Audit date is end date of engagement (September 5, 2022).
- [4890] Vesper-Pools-Synth-VUSD-Deltas-Dedaub-March22.pdf — no match: Extracted contract names from findings sections; scope described as deltas in three repos but specific files not listed; date from cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| REP-Bloq-11_11_20.pdf | AaveStrategy | unmatched — not counted | — | mentioned in findings BLQ-01, BLQ-03, BLQ-05, BLQ-06 | no |
| REP-Bloq-11_11_20.pdf | AaveMakerStrategy | unmatched — not counted | — | mentioned in findings BLQ-01, BLQ-06 | no |
| REP-Bloq-11_11_20.pdf | Controller | own contract | Controller (selected) `0xa4f167...bd0217` — deployed 2020-12-18 00:17:55+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| REP-Bloq-11_11_20.pdf | IVesperpool | unmatched — not counted | — | mentioned in finding BLQ-01 as interface | no |
| REP-Bloq-11_11_20.pdf | IStrategy | unmatched — not counted | — | mentioned in finding BLQ-01 as interface | no |
| REP-Bloq-11_11_20.pdf | PoolRewards | unmatched — not counted | — | mentioned in findings BLQ-03, BLQ-05 | no |
| REP-Bloq-11_11_20.pdf | CollateralManager | own contract | CollateralManager (selected) `0x8d0b8e...f3e899` — deployed 2020-12-18 07:54:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| REP-Bloq-11_11_20.pdf | VTokenBase | unmatched — not counted | — | mentioned in findings BLQ-03, BLQ-05 | no |
| REP-Bloq-11_11_20.pdf | IMakerDAO | unmatched — not counted | — | mentioned in finding BLQ-04 | no |
| REP-Bloq-11_11_20.pdf | IToken | unmatched — not counted | — | mentioned in finding BLQ-04 | no |
| REP-Bloq-11_11_20.pdf | Timelock | unmatched — not counted | — | mentioned in finding BLQ-05 | no |
| REP-Bloq-11_11_20.pdf | Pausable | unmatched — not counted | — | mentioned in finding BLQ-05 | no |
| REP-Bloq-11_11_20.pdf | PoolShareToken | unmatched — not counted | — | mentioned in finding BLQ-08 | no |
| REP-Bloq-11_11_20.pdf | VETH | own contract | TransparentUpgradeableProxy (proxy) (alternative) `0x951397...3cca8c` — deployed 2022-07-06 10:21:56+03 — liveness: live (current_address_book_code)<br>VETH (selected) `0x103cc1...e54d5e` — deployed 2020-12-18 07:59:23+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2020-12-18 was 37d from audit; next candidate 602d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| REP-Bloq-VesperPools-20_01_2021.pdf | AaveMakerStrategy | unmatched — not counted | — | — | no |
| REP-Bloq-VesperPools-20_01_2021.pdf | AaveV2MakerStrategy | unmatched — not counted | — | — | no |
| REP-Bloq-VesperPools-20_01_2021.pdf | AaveV2Strategy | unmatched — not counted | — | — | no |
| REP-Bloq-VesperPools-20_01_2021.pdf | CompoundStrategy | unmatched — not counted | — | — | no |
| REP-Bloq-VesperPools-20_01_2021.pdf | GovernanceToken | unmatched — not counted | — | — | no |
| REP-Bloq-VesperPools-20_01_2021.pdf | GovernorAlpha | unmatched — not counted | — | — | no |
| REP-Bloq-VesperPools-20_01_2021.pdf | VSP | own contract | VSP (selected) `0x1b4018...998421` — deployed 2021-02-11 16:50:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| REP-Bloq-VesperPools-20_01_2021.pdf | VVSP | unmatched — not counted | — | — | no |
| REP-Bloq_15_02_2021.pdf | PaymentSplitter | unmatched — not counted | — | listed in scope table and findings | no |
| Vesper Pools Security - Fourth Audit v210119.pdf | AaveMakerStrategy | unmatched — not counted | — | — | no |
| Vesper Pools Security - Fourth Audit v210119.pdf | AaveV2MakerStrategy | unmatched — not counted | — | — | no |
| Vesper Pools Security - Fourth Audit v210119.pdf | CompoundStrategy | unmatched — not counted | — | — | no |
| Vesper Pools Security - Fourth Audit v210119.pdf | GovernanceToken | unmatched — not counted | — | — | no |
| Vesper Pools Security - Fourth Audit v210119.pdf | GovernorAlpha | unmatched — not counted | — | — | no |
| Vesper Pools Security - Fourth Audit v210119.pdf | VSP | own contract | VSP (selected) `0x1b4018...998421` — deployed 2021-02-11 16:50:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Vesper Pools Security - Fourth Audit v210119.pdf | VSPStrategy | unmatched — not counted | — | — | no |
| Vesper Pools Security - Fourth Audit v210119.pdf | VVSP | unmatched — not counted | — | — | no |
| Vesper Pools Security - PaymentSplitter Audit v210210.pdf | PaymentSplitter | unmatched — not counted | — | listed in scope section | no |
| Vesper Pools Security - Second Audit v201230.pdf | Owned | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security - Second Audit v201230.pdf | Pausable | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security - Second Audit v201230.pdf | ICollateralManager | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security - Second Audit v201230.pdf | IController | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security - Second Audit v201230.pdf | IVPool | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security - Second Audit v201230.pdf | IStrategy | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security - Second Audit v201230.pdf | IAddressListExt | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security - Second Audit v201230.pdf | IMakerDAO | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security - Second Audit v201230.pdf | IUniswapV2Router01 | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security - Second Audit v201230.pdf | IUniswapV2Router02 | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security - Second Audit v201230.pdf | IToken | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security - Second Audit v201230.pdf | IAave | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security - Second Audit v201230.pdf | Timelock | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security - Second Audit v201230.pdf | VSPR | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security - Second Audit v201230.pdf | VETH | own contract | TransparentUpgradeableProxy (proxy) (alternative) `0x951397...3cca8c` — deployed 2022-07-06 10:21:56+03 — liveness: live (current_address_book_code)<br>VETH (selected) `0x103cc1...e54d5e` — deployed 2020-12-18 07:59:23+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2020-12-18 was 18d from audit; next candidate 583d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Vesper Pools Security - Second Audit v201230.pdf | VTokenBase | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security - Second Audit v201230.pdf | PoolShareToken | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security - Second Audit v201230.pdf | PoolRewards | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security - Second Audit v201230.pdf | Controller | own contract | Controller (selected) `0xa4f167...bd0217` — deployed 2020-12-18 00:17:55+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Vesper Pools Security - Second Audit v201230.pdf | AaveStrategy | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security - Second Audit v201230.pdf | AaveMakerStrategyETH | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security - Second Audit v201230.pdf | AaveMakerStrategy | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security - Second Audit v201230.pdf | CollateralManager | own contract | CollateralManager (selected) `0x8d0b8e...f3e899` — deployed 2020-12-18 07:54:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Vesper Pools Security - Second Audit v201230.pdf | Migrations | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security - Third Audit v201230.pdf | YearnEarnStrategyEthDai | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security - Third Audit v201230.pdf | YearnVaultStrategyEthDai | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security - Third Audit v201230.pdf | YearnMakerStrategy | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security - Third Audit v201230.pdf | CompoundStrategy | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security - Third Audit v201230.pdf | CompoundStrategyUSDC | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security - Third Audit v201230.pdf | CompoundStrategyETH | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security - Third Audit v201230.pdf | VSPRStrategy | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security - Third Audit v201230.pdf | VSPR | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security - Third Audit v201230.pdf | VVSPR | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security Audit v201230.pdf | VETH | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x951397...3cca8c` — deployed 2022-07-06 10:21:56+03 — liveness: live (current_address_book_code)<br>VETH (alternative) `0x103cc1...e54d5e` — deployed 2020-12-18 07:59:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Vesper Pools Security Audit v201230.pdf | VSPR | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security Audit v201230.pdf | VMANA | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security Audit v201230.pdf | Pausable | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security Audit v201230.pdf | VTokenBase | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security Audit v201230.pdf | ICollateralManager | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security Audit v201230.pdf | IStrategyManager | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security Audit v201230.pdf | IVPool | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security Audit v201230.pdf | IUniswapV2Router01 | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security Audit v201230.pdf | IAave | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security Audit v201230.pdf | IToken | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security Audit v201230.pdf | IMakerDAO | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security Audit v201230.pdf | IUniswapV2Router02 | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security Audit v201230.pdf | AddressProvider | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security Audit v201230.pdf | AaveStrategy | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security Audit v201230.pdf | PoolShareToken | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security Audit v201230.pdf | VVSPR | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security Audit v201230.pdf | VSPRStrategy | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security Audit v201230.pdf | Controller | own contract | Controller (selected) `0xa4f167...bd0217` — deployed 2020-12-18 00:17:55+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Vesper Pools Security Audit v201230.pdf | VBTC | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security Audit v201230.pdf | Migrations | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security Audit v201230.pdf | CollateralManager | own contract | CollateralManager (selected) `0x8d0b8e...f3e899` — deployed 2020-12-18 07:54:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | AaveStrategyPolygon | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | CompoundLeverageStrategy | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | CompoundLeverageStrategyUNI | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | CompoundStrategy | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | CompoundStrategyWBTC | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | CompoundXYStrategy | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | ConvexSBTCStrategyWBTC | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | ConvexStrategy | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | Crv3PoolStrategyBase | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | CrvsBTCPoolStrategy | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | Earn | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | EarnAaveMakerStrategy | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | EarnAaveMakerStrategyETH | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | EarnCompoundMakerStrategy | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | EarnCompoundMakerStrategyETH | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | EarnCompoundStrategyWBTC | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | EarnCrvsBTCStrategy | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | EarnCrvsBTCStrategyWBTC | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | EarnDrip | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | EarnVesperMakerStrategy | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | EarnVesperMakerStrategyETH | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | EarnVesperMakerStrategyWBTC | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | EarnVesperStrategy | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | EarnVesperStrategyDAIWBTC | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | EarnVesperStrategyDAIWETH | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | EarnYearnStrategy | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | FlashLoanHelper | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | GovernorAlpha | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | IAave | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | IAddressList | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | IConvexToken | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | ISoloMargin | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | IStrategy | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | IUniswapV3Oracle | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | MakerStrategy | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | OraclesBase | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | PaymentSplitter | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | PoolAccountant | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | PoolRewards | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | PoolRewardsUpgrader | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | PoolShareToken | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | Strategy | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | Timelock | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | VFR | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | VFRStablePool | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | VPoolBase | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | VSPStrategy | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | VesperMakerStrategy | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | VesperMakerStrategyETH | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | VesperMakerStrategyWBTC | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | VesperV3Strategy | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | CompoundCoverageStrategy | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | CompoundCoverageStrategyDAI | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | CompoundLeverageStrategy | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | CompoundLeverageStrategyETH | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | CompoundStableStrategy | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | CompoundStableStrategyDAI | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | CompoundXYStrategy | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | CompoundXYStrategyETH | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | ConvexCoverageStrategy | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | ConvexCoverageStrategyDAI | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | ConvexSBTCStrategyWBTC | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | ConvexStableStrategy | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | ConvexStableStrategyDAI | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | ConvexStrategy | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | ConvexStrategyDAI | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | Earn | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | EarnAaveMakerStrategy | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | EarnAaveMakerStrategyETH | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | EarnAaveStrategy | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | EarnAaveStrategyWETH | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | EarnAlphaLendStrategy | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | EarnAlphaLendStrategyETH | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | EarnCompoundMakerStrategy | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | EarnCompoundMakerStrategyETH | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | EarnCompoundStrategy | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | EarnCompoundStrategyETH | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | EarnCreamStrategy | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | EarnCreamStrategyETH | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | EarnDrip | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | EarnRariFuseStrategy | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | EarnRariFuseStrategyETH | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | EarnVesperMakerStrategy | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | EarnVesperMakerStrategyETH | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | EarnYearnStrategy | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | EarnYearnStrategyETH | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | OraclesBase | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | PoolRewards | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | VFR | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | VFRBuffer | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | VFRCoveragePool | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | VFRPool | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | VFRStablePool | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | VSPStrategy | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | ILiquidityGauge | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | PoolAccountant | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | PoolRewards | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | VPool | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x4dbe3f...30aa7b` — deployed 2022-07-26 21:49:21+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xca7c60...6a36c2` — deployed 2024-10-04 05:53:59+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xd11d9b...caeac5` — deployed 2022-06-24 21:53:46+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x4c73f0...f72c22` — deployed 2024-11-14 15:30:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x0538c8...9e36ee` — deployed 2021-07-08 00:53:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xd25ee8...d7b531` — deployed 2022-07-06 10:29:40+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xc1efbe...99c335` — deployed 2022-07-06 10:13:42+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xdd9f61...e6d6dd` — deployed 2023-02-02 17:17:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xb4edce...fd5f7d` — deployed 2021-08-03 19:19:17+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x650cd4...01036a` — deployed 2023-02-15 14:18:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | VPoolBase | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | VFRStablePool | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | Earn | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | Strategy | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | AaveStrategy | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | AaveStrategyAvalanche | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | AaveStrategyPolygon | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | AaveV1Strategy | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | AlphaLendStrategy | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | CompoundLeverageStrategyETH | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | CompoundLeverageStrategyLINK | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | CompoundLeverageStrategyUNI | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | CompoundStrategy | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | CompoundStrategyETH | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | CompoundXYStrategyETH | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | EarnCompoundStrategy | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | EarnCompoundStrategyETH | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | CompoundCoverageStrategy | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | CompoundStableStrategy | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | Convex2PoolStrategy | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | Convex2PoolStrategyMIMUSTPool | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | Convex4MetaPoolStrategy | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | Convex4MetaPoolStrategyMIMPool | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | Convex4PoolStrategy | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | Convex4PoolStrategySUSDPool | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | ConvexStrategy | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | ConvexStrategyBase | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | ConvexCoverage3PoolStrategy | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | ConvexCoverageStrategy | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | ConvexStableStrategy | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | Crv2PoolStrategy | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | Crv2PoolStrategyArbitrumUSDCUSDTPool | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | CrvSBTCPoolStrategy | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | EarnCrvSBTCPoolStrategy | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | Crv4MetaPoolStrategy | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | Crv4PoolStrategy | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | CrvBase | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | CrvPoolStrategyBase | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | CrvA3PoolStrategy | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | MakerStrategy | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | RariFuseStrategy | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | EarnRariFuseStrategy | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | VesperStrategy | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | YearnStrategy | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | VPoolUpgrader | unmatched — not counted | — | listed in scope | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | Governed | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | Pausable | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | IAave | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | IAaveV1 | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | IAddressList | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | IAddressListFactory | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | ISwapManager | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | IAggregatorV3 | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | ICompound | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | ILiquidityGaugeV2 | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | IStableSwap3Pool | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | ITokenMinter | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | IMakerDAO | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | IToken | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | IUniswapV2Factory | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | IUniswapV2Router01 | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | IUniswapV2Router02 | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | ICollateralManager | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | IPoolRewards | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | IStrategy | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | IVesperPool | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | IYToken | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | Errors | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | PoolERC20 | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | PoolERC20Permit | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | PoolRewards | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | PoolShareToken | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | PoolStorage | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | VETH | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x951397...3cca8c` — deployed 2022-07-06 10:21:56+03 — liveness: live (current_address_book_code)<br>VETH (alternative) `0x103cc1...e54d5e` — deployed 2020-12-18 07:59:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | VPool | own proxy deployment | TransparentUpgradeableProxy (proxy) (alternative) `0x4dbe3f...30aa7b` — deployed 2022-07-26 21:49:21+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xca7c60...6a36c2` — deployed 2024-10-04 05:53:59+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xd11d9b...caeac5` — deployed 2022-06-24 21:53:46+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x4c73f0...f72c22` — deployed 2024-11-14 15:30:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (selected) `0x0538c8...9e36ee` — deployed 2021-07-08 00:53:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xd25ee8...d7b531` — deployed 2022-07-06 10:29:40+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xc1efbe...99c335` — deployed 2022-07-06 10:13:42+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xdd9f61...e6d6dd` — deployed 2023-02-02 17:17:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xb4edce...fd5f7d` — deployed 2021-08-03 19:19:17+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x650cd4...01036a` — deployed 2023-02-15 14:18:23+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2021-07-08 was 12d from audit; next candidate 38d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | VPoolBase | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | Strategy | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | AaveCore | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | AaveStrategy | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | AaveStrategyDAI | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | AaveStrategyUSDC | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | AaveV1Strategy | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | AaveV1StrategyUSDC | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | CompoundStrategy | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | CompoundStrategyDAI | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | CompoundStrategyETH | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | CompoundStrategyUNI | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | CompoundStrategyUSDC | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | CompoundStrategyUSDT | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | CompoundStrategyWBTC | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | CreamStrategy | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | CreamStrategyDAI | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | CreamStrategyETH | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | CreamStrategyLINK | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | CreamStrategyUSDC | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | CreamStrategyWBTC | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | Crv3PoolMgr | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | Crv3PoolStrategy | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | Crv3PoolStrategyDAI | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | Crv3PoolStrategyUSDC | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | CrvPoolMgrBase | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | AaveMakerStrategy | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | AaveMakerStrategyETH | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | CollateralManager | own contract | CollateralManager (selected) `0x8d0b8e...f3e899` — deployed 2020-12-18 07:54:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | CompoundMakerStrategy | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | CompoundMakerStrategyETH | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | MakerStrategy | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | VesperMakerStrategy | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | VesperMakerStrategyETH | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | YearnStrategy | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | YearnStrategyDAI | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | YearnStrategyUSDC | unmatched — not counted | — | listed in scope table | no |
| Vesper Pools audit-poolv2-dedaub-April-2021.pdf | AaveMakerStrategy | unmatched — not counted | — | — | no |
| Vesper Pools audit-poolv2-dedaub-April-2021.pdf | AaveStrategy | unmatched — not counted | — | — | no |
| Vesper Pools audit-poolv2-dedaub-April-2021.pdf | AaveV2MakerStrategy | unmatched — not counted | — | — | no |
| Vesper Pools audit-poolv2-dedaub-April-2021.pdf | CompoundStrategy | unmatched — not counted | — | — | no |
| Vesper Pools audit-poolv2-dedaub-April-2021.pdf | Controller | own contract | Controller (selected) `0xa4f167...bd0217` — deployed 2020-12-18 00:17:55+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Vesper Pools audit-poolv2-dedaub-April-2021.pdf | IVesperPool | unmatched — not counted | — | — | no |
| Vesper Pools audit-poolv2-dedaub-April-2021.pdf | MakerStrategy | unmatched — not counted | — | — | no |
| Vesper Pools audit-poolv2-dedaub-April-2021.pdf | PoolShareToken | unmatched — not counted | — | — | no |
| Vesper Pools audit-poolv2-dedaub-April-2021.pdf | VSP | own contract | VSP (selected) `0x1b4018...998421` — deployed 2021-02-11 16:50:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Vesper Pools audit-poolv2-dedaub-April-2021.pdf | VSPStrategy | unmatched — not counted | — | — | no |
| Vesper Pools audit-poolv2-dedaub-April-2021.pdf | VTokenBase | unmatched — not counted | — | — | no |
| Vesper Pools audit-poolv2-dedaub-April-2021.pdf | VVSP | unmatched — not counted | — | — | no |
| Vesper Pools v3 audit-dedaub-May-2021.pdf | AaveCore | unmatched — not counted | — | — | no |
| Vesper Pools v3 audit-dedaub-May-2021.pdf | AaveStrategy | unmatched — not counted | — | — | no |
| Vesper Pools v3 audit-dedaub-May-2021.pdf | AaveStrategyUSDC | unmatched — not counted | — | — | no |
| Vesper Pools v3 audit-dedaub-May-2021.pdf | Governed | unmatched — not counted | — | — | no |
| Vesper Pools v3 audit-dedaub-May-2021.pdf | Owned | unmatched — not counted | — | — | no |
| Vesper Pools v3 audit-dedaub-May-2021.pdf | Pausable | unmatched — not counted | — | — | no |
| Vesper Pools v3 audit-dedaub-May-2021.pdf | PoolShareToken | unmatched — not counted | — | — | no |
| Vesper Pools v3 audit-dedaub-May-2021.pdf | Strategy | unmatched — not counted | — | — | no |
| Vesper Pools v3 audit-dedaub-May-2021.pdf | UniswapManager | unmatched — not counted | — | — | no |
| Vesper Pools v3 audit-dedaub-May-2021.pdf | VTokenBase | unmatched — not counted | — | — | no |
| Vesper Pools v3 audit-dedaub-May-2021.pdf | VUSDC | own contract | VUSDC (selected) `0x0c4906...bf113d` — deployed 2020-12-18 08:32:13+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xc1efbe...99c335` — deployed 2022-07-06 10:13:42+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2020-12-18 was 134d from audit; next candidate 431d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Vesper Pools v3 audit-dedaub.pdf | AaveCore | unmatched — not counted | — | — | no |
| Vesper Pools v3 audit-dedaub.pdf | AaveStrategy | unmatched — not counted | — | — | no |
| Vesper Pools v3 audit-dedaub.pdf | AaveStrategyUSDC | unmatched — not counted | — | — | no |
| Vesper Pools v3 audit-dedaub.pdf | Governed | unmatched — not counted | — | — | no |
| Vesper Pools v3 audit-dedaub.pdf | Owned | unmatched — not counted | — | — | no |
| Vesper Pools v3 audit-dedaub.pdf | Pausable | unmatched — not counted | — | — | no |
| Vesper Pools v3 audit-dedaub.pdf | PoolShareToken | unmatched — not counted | — | — | no |
| Vesper Pools v3 audit-dedaub.pdf | Strategy | unmatched — not counted | — | — | no |
| Vesper Pools v3 audit-dedaub.pdf | UniswapManager | unmatched — not counted | — | — | no |
| Vesper Pools v3 audit-dedaub.pdf | VTokenBase | unmatched — not counted | — | — | no |
| Vesper Pools v3 audit-dedaub.pdf | VUSDC | own contract | VUSDC (selected) `0x0c4906...bf113d` — deployed 2020-12-18 08:32:13+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xc1efbe...99c335` — deployed 2022-07-06 10:13:42+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2020-12-18 was 134d from audit; next candidate 431d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Vesper Pools+Strategies September-2021.pdf | CompoundXYStrategy | unmatched — not counted | — | listed in scope: 'The CompoundXYStrategy and CompoundLeverageStrategy strategies' | no |
| Vesper Pools+Strategies September-2021.pdf | CompoundLeverageStrategy | unmatched — not counted | — | listed in scope: 'The CompoundXYStrategy and CompoundLeverageStrategy strategies' | no |
| Vesper Pools+Strategies September-2021.pdf | VFRBuffer | unmatched — not counted | — | mentioned in finding H2: 'VFRBuffer: non-standard ERC20 Tokens can be stuck inside the VFRBuffer' | no |
| Vesper Pools+Strategies September-2021.pdf | VFRStablePool | unmatched — not counted | — | mentioned in finding M4: 'VFRStablePool: The checkpoint method only considers profiting strategies' | no |
| Vesper Pools+Strategies September-2021.pdf | AlphaLendStrategy | unmatched — not counted | — | mentioned in finding L1: 'AlphaLendStrategy: ALPHA rewards are not claimed on-chain' | no |
| Vesper Pools+Strategies September-2021.pdf | VFRCoveragePool | unmatched — not counted | — | mentioned in finding A1: 'VFRCoveragePool contract seems to serve no purpose' | no |
| Vesper Pools+Strategies September-2021.pdf | VFR | unmatched — not counted | — | mentioned in finding A2: 'VFR contract is there only for code reuse' | no |
| Vesper Pools+Strategies September-2021.pdf | RariFuseStrategy | unmatched — not counted | — | mentioned in finding A6: 'RariFuseStrategy: looser checks are performed on construction than on migrateFusePool()' | no |
| Vesper Pools-Dedaub-Nov-2021.pdf | ConvexStrategy | unmatched — not counted | — | — | no |
| Vesper Pools-Dedaub-Nov-2021.pdf | PaymentStream | unmatched — not counted | — | — | no |
| Vesper Pools-Dedaub-Nov-2021.pdf | PaymentStreamFactory | unmatched — not counted | — | — | no |
| Vesper Pools-Dedaub-Nov-2021.pdf | PoolRewards | unmatched — not counted | — | — | no |
| Vesper Pools-Dedaub-Nov-2021.pdf | PoolRewardsUpgrader | unmatched — not counted | — | — | no |
| Vesper Strategies - April v210428.pdf | AaveV2Strategy | unmatched — not counted | — | — | no |
| Vesper Strategies - April v210428.pdf | AaveV2StrategyLINK | unmatched — not counted | — | — | no |
| Vesper Strategies - April v210428.pdf | CompoundMakerStrategy | unmatched — not counted | — | — | no |
| Vesper Strategies - April v210428.pdf | MakerStrategy | unmatched — not counted | — | — | no |
| Vesper Strategies - April v210428.pdf | Strategy | unmatched — not counted | — | — | no |
| Vesper Strategies - April v210428.pdf | SwapManager | unmatched — not counted | — | — | no |
| Vesper Strategies - April v210428.pdf | UniswapManager | unmatched — not counted | — | — | no |
| Vesper Strategies - April v210428.pdf | VLINK | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xd11d9b...caeac5` — deployed 2022-06-24 21:53:46+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Vesper Strategies - April v210428.pdf | VSPStrategy | unmatched — not counted | — | — | no |
| Vesper Strategies - April v210428.pdf | VTokenBase | unmatched — not counted | — | — | no |
| Vesper Strategies - April v210428.pdf | VesperMakerStrategy | unmatched — not counted | — | — | no |
| Vesper Strategies - April v210428.pdf | VesperMakerStrategyLINK | unmatched — not counted | — | — | no |
| Vesper V3 - 2nd Review - v2-may-2021.pdf | VTokenBase | unmatched — not counted | — | mentioned in sections 3.5, 3.6, and finding VSP-035 | no |
| Vesper V3 - 2nd Review - v2-may-2021.pdf | PoolShareToken | unmatched — not counted | — | mentioned in section 3.4 | no |
| Vesper V3 - 2nd Review - v2-may-2021.pdf | AaveStrategy | unmatched — not counted | — | mentioned in section 3.8 | no |
| Vesper V3 - 2nd Review - v2-may-2021.pdf | Crv3PoolMgr | unmatched — not counted | — | mentioned in section 3.9 | no |
| Vesper V3 - 2nd Review - v2-may-2021.pdf | Crv3PoolStrategy | unmatched — not counted | — | mentioned in section 3.9 | no |
| Vesper V3 - 2nd Review - v2-may-2021.pdf | SwapManager | unmatched — not counted | — | mentioned in section 3.10 | no |
| Vesper V3 - 2nd Review - v2-may-2021.pdf | OracleSimple | unmatched — not counted | — | mentioned in section 3.10 | no |
| Vesper V3 - 2nd Review - v2-may-2021.pdf | UniswapManager | unmatched — not counted | — | mentioned in section 3.10 as removed and replaced | no |
| Vesper V3 - 2nd Review - v210519 (1).pdf | VTokenBase | unmatched — not counted | — | mentioned in findings and assessment sections | no |
| Vesper V3 - 2nd Review - v210519 (1).pdf | PoolShareToken | unmatched — not counted | — | mentioned in section 3.4 | no |
| Vesper V3 - 2nd Review - v210519 (1).pdf | AaveStrategy | unmatched — not counted | — | mentioned in section 3.8 | no |
| Vesper V3 - 2nd Review - v210519 (1).pdf | Crv3PoolMgr | unmatched — not counted | — | mentioned in section 3.9 | no |
| Vesper V3 - 2nd Review - v210519 (1).pdf | Crv3PoolStrategy | unmatched — not counted | — | mentioned in section 3.9 | no |
| Vesper V3 - 2nd Review - v210519 (1).pdf | SwapManager | unmatched — not counted | — | mentioned in section 3.10 | no |
| Vesper V3 - 2nd Review - v210519 (1).pdf | OracleSimple | unmatched — not counted | — | mentioned in section 3.10 | no |
| Vesper V3 - 2nd Review - v210519 (1).pdf | Strategy | unmatched — not counted | — | mentioned in section 3.8 as base contract | no |
| Vesper-Pools-Audit-Coinspect-Jan21.pdf | AaveMakerStrategy | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Jan21.pdf | AaveV2MakerStrategy | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Jan21.pdf | CompoundStrategy | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Jan21.pdf | GovernanceToken | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Jan21.pdf | GovernorAlpha | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Jan21.pdf | VSP | own contract | VSP (selected) `0x1b4018...998421` — deployed 2021-02-11 16:50:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Vesper-Pools-Audit-Coinspect-Jan21.pdf | VSPStrategy | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Jan21.pdf | VVSP | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-March21.pdf | AaveMakerStrategy | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper-Pools-Audit-Coinspect-March21.pdf | AaveV2Strategy | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper-Pools-Audit-Coinspect-March21.pdf | AaveV2MakerStrategy | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper-Pools-Audit-Coinspect-March21.pdf | CompoundStrategy | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper-Pools-Audit-Coinspect-March21.pdf | CompoundMakerStrategyETH | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper-Pools-Audit-Coinspect-March21.pdf | CompoundMakerStrategy | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper-Pools-Audit-Coinspect-March21.pdf | AaveStrategy | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper-Pools-Audit-Coinspect-March21.pdf | MakerStrategy | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper-Pools-Audit-Coinspect-March21.pdf | Strategy | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper-Pools-Audit-Coinspect-March21.pdf | VSPStrategy | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper-Pools-Audit-Coinspect-March21.pdf | VesperMakerStrategy | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper-Pools-Audit-Coinspect-March21.pdf | VesperMakerStrategyETH | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper-Pools-Audit-Coinspect-March21.pdf | CollateralManager | own contract | CollateralManager (selected) `0x8d0b8e...f3e899` — deployed 2020-12-18 07:54:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Vesper-Pools-Audit-Coinspect-March21.pdf | UniswapManager | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper-Pools-Audit-Coinspect-March22.pdf | FlashLoanHelper | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper-Pools-Audit-Coinspect-March22.pdf | IComptrollerMultiReward | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper-Pools-Audit-Coinspect-March22.pdf | IComptroller | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper-Pools-Audit-Coinspect-March22.pdf | BenqiCompoundLeverageAvalancheStrategyAVAX | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper-Pools-Audit-Coinspect-March22.pdf | BenqiCompoundMultiRewardAvalancheStrategyAVAX | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper-Pools-Audit-Coinspect-March22.pdf | CompoundLeverageAvalancheStrategy | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper-Pools-Audit-Coinspect-March22.pdf | CompoundLeverageStrategy | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper-Pools-Audit-Coinspect-March22.pdf | CompoundLeverageStrategyETH | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper-Pools-Audit-Coinspect-March22.pdf | CompoundMultiRewardAvalancheStrategy | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper-Pools-Audit-Coinspect-March22.pdf | CompoundStrategy | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper-Pools-Audit-Coinspect-March22.pdf | CompoundXYStrategy | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper-Pools-Audit-Coinspect-March22.pdf | CompoundXYStrategyETH | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper-Pools-Audit-Coinspect-March22.pdf | VesperCompoundXYStrategy | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper-Pools-Audit-Coinspect-March22.pdf | RariCore | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper-Pools-Audit-Coinspect-March22.pdf | RariFuseLeverageStrategy | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper-Pools-Audit-Coinspect-March22.pdf | RariFuseStrategy | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper-Pools-Audit-Coinspect-March22.pdf | RariFuseStrategyETH | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper-Pools-Audit-Coinspect-March22.pdf | EarnRariFuseStrategy | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper-Pools-Audit-Coinspect-March22.pdf | EarnRariFuseStrategyETH | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | AaveStrategyPolygon | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | CompoundLeverageStrategy | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | CompoundLeverageStrategyUNI | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | CompoundStrategy | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | CompoundStrategyWBTC | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | CompoundXYStrategy | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | ConvexSBTCStrategyWBTC | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | ConvexStrategy | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | Crv3PoolStrategyBase | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | CrvsBTCPoolStrategy | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | Earn | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | EarnAaveMakerStrategy | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | EarnAaveMakerStrategyETH | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | EarnCompoundMakerStrategy | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | EarnCompoundMakerStrategyETH | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | EarnCompoundStrategyWBTC | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | EarnCrvsBTCStrategy | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | EarnCrvsBTCStrategyWBTC | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | EarnDrip | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | EarnVesperMakerStrategy | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | EarnVesperMakerStrategyETH | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | EarnVesperMakerStrategyWBTC | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | EarnVesperStrategy | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | EarnVesperStrategyDAIWBTC | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | EarnVesperStrategyDAIWETH | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | EarnYearnStrategy | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | FlashLoanHelper | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | GovernorAlpha | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | IAave | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | IAddressList | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | IConvexToken | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | ISoloMargin | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | IStrategy | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | IUniswapV3Oracle | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | MakerStrategy | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | OraclesBase | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | PaymentSplitter | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | PoolAccountant | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | PoolRewards | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | PoolRewardsUpgrader | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | PoolShareToken | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | Strategy | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | Timelock | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | VFR | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | VFRStablePool | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | VPoolBase | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | VSPStrategy | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | VesperMakerStrategy | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | VesperMakerStrategyETH | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | VesperMakerStrategyWBTC | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | VesperV3Strategy | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | CompoundCoverageStrategy | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | CompoundCoverageStrategyDAI | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | CompoundLeverageStrategy | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | CompoundLeverageStrategyETH | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | CompoundStableStrategy | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | CompoundStableStrategyDAI | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | CompoundXYStrategy | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | CompoundXYStrategyETH | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | ConvexCoverageStrategy | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | ConvexCoverageStrategyDAI | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | ConvexSBTCStrategyWBTC | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | ConvexStableStrategy | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | ConvexStableStrategyDAI | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | ConvexStrategy | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | ConvexStrategyDAI | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | Earn | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | EarnAaveMakerStrategy | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | EarnAaveMakerStrategyETH | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | EarnAaveStrategy | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | EarnAaveStrategyWETH | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | EarnAlphaLendStrategy | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | EarnAlphaLendStrategyETH | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | EarnCompoundMakerStrategy | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | EarnCompoundMakerStrategyETH | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | EarnCompoundStrategy | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | EarnCompoundStrategyETH | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | EarnCreamStrategy | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | EarnCreamStrategyETH | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | EarnDrip | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | EarnRariFuseStrategy | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | EarnRariFuseStrategyETH | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | EarnVesperMakerStrategy | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | EarnVesperMakerStrategyETH | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | EarnYearnStrategy | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | EarnYearnStrategyETH | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | OraclesBase | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | PoolRewards | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | VFR | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | VFRBuffer | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | VFRCoveragePool | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | VFRPool | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | VFRStablePool | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | VSPStrategy | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Dedaub-April 22.pdf | EarnAaveMakerStrategy | unmatched — not counted | — | mentioned in L1 finding | no |
| Vesper-Pools-Audit-Dedaub-April 22.pdf | EarnCompoundMakerStrategy | unmatched — not counted | — | mentioned in L1 finding | no |
| Vesper-Pools-Audit-Dedaub-April 22.pdf | AaveLeverageStrategy | unmatched — not counted | — | mentioned in A1 finding | no |
| Vesper-Pools-Audit-Dedaub-April 22.pdf | CompoundLeverageStrategy | unmatched — not counted | — | mentioned in A1 finding | no |
| Vesper-Pools-Audit-Dedaub-April 22.pdf | EarnVesperMakerStrategy | unmatched — not counted | — | mentioned in A2 finding | no |
| Vesper-Pools-Audit-Dedaub-Oct21.pdf | CompoundXYStrategy | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Dedaub-Oct21.pdf | ConvexSBTCStrategyWBTC | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Dedaub-Oct21.pdf | ConvexStrategy | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Dedaub-Oct21.pdf | EarnRariFuseStrategyETH | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Dedaub-Oct21.pdf | EarnYearnStrategy | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Dedaub-Oct21.pdf | FlashLoanHelper | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Dedaub-Oct21.pdf | PaymentStream | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Dedaub-Oct21.pdf | PaymentStreamFactory | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Dedaub-Oct21.pdf | PoolRewards | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Dedaub-Oct21.pdf | PoolRewardsUpgrader | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Dedaub-Oct21.pdf | YearnStrategy | unmatched — not counted | — | — | no |
| Vesper-Pools-Strategies-Audit-Halborn-Aug-22.pdf | VesperMakerStrategy | unmatched — not counted | — | listed in scope section 1.4 | no |
| Vesper-Pools-Strategies-Audit-Halborn-Aug-22.pdf | AaveV3 | unmatched — not counted | — | listed in scope section 1.4 | no |
| Vesper-Pools-Strategies-Audit-Halborn-Aug-22.pdf | AaveV3VesperXy | unmatched — not counted | — | listed in scope section 1.4 | no |
| Vesper-Pools-Strategies-Audit-Halborn-Aug-22.pdf | Convex2PlainPool | unmatched — not counted | — | listed in scope section 1.4 | no |
| Vesper-Pools-Strategies-Audit-Halborn-Aug-22.pdf | Convex3PlainPool | unmatched — not counted | — | listed in scope section 1.4 | no |
| Vesper-Pools-Strategies-Audit-Halborn-Aug-22.pdf | Convex4FactoryMetaPool | unmatched — not counted | — | listed in scope section 1.4 | no |
| Vesper-Pools-Strategies-Audit-Halborn-Aug-22.pdf | Convex4MetaPool | unmatched — not counted | — | listed in scope section 1.4 | no |
| Vesper-Pools-Strategies-Audit-Halborn-Aug-22.pdf | Curve2LendingPool | unmatched — not counted | — | listed in scope section 1.4 | no |
| Vesper-Pools-Strategies-Audit-Halborn-Aug-22.pdf | Curve3LendingPoolAave | unmatched — not counted | — | listed in scope section 1.4 | no |
| Vesper-Pools-Strategies-Audit-Halborn-Aug-22.pdf | Curve4FactoryMetaPool | unmatched — not counted | — | listed in scope section 1.4 | no |
| Vesper-Pools-Strategies-Audit-Halborn-Aug-22.pdf | Curve4PlainOr4MetaPool | unmatched — not counted | — | listed in scope section 1.4 | no |
| Vesper-Pools-Synth-VUSD-Deltas-Dedaub-March22.pdf | Convex4PoolStrategyMUSDPool | unmatched — not counted | — | Listed in findings H1, L2 | no |
| Vesper-Pools-Synth-VUSD-Deltas-Dedaub-March22.pdf | RariFuseStrategy | unmatched — not counted | — | Listed in finding M1 | no |
| Vesper-Pools-Synth-VUSD-Deltas-Dedaub-March22.pdf | RariFuseStrategyETH | unmatched — not counted | — | Listed in finding M1 | no |
| Vesper-Pools-Synth-VUSD-Deltas-Dedaub-March22.pdf | RariFusePool | unmatched — not counted | — | Listed in finding M2 | no |
| Vesper-Pools-Synth-VUSD-Deltas-Dedaub-March22.pdf | CompoundLegerageAvancheStrategy | unmatched — not counted | — | Listed in finding M3 | no |
| Vesper-Pools-Synth-VUSD-Deltas-Dedaub-March22.pdf | VesperCompoundXYStrategy | unmatched — not counted | — | Listed in findings M3, L1, A2 | no |
| Vesper-Pools-Synth-VUSD-Deltas-Dedaub-March22.pdf | CompoundStrategy | unmatched — not counted | — | Listed in finding L1 | no |
| Vesper-Pools-Synth-VUSD-Deltas-Dedaub-March22.pdf | CrvPoolStrategyBase | unmatched — not counted | — | Listed in finding L3 | no |
| Vesper-Pools-Synth-VUSD-Deltas-Dedaub-March22.pdf | EarnCrvSBTCPoolStrategy | unmatched — not counted | — | Listed in finding L3 | no |
| Vesper-Pools-Synth-VUSD-Deltas-Dedaub-March22.pdf | RariCore | unmatched — not counted | — | Listed in finding A1 | no |
| Vesper-Pools-Synth-VUSD-Deltas-Dedaub-March22.pdf | Minter | unmatched — not counted | — | Listed in finding A3 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xd02d6e...a96f9b` | ESVSP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6aff18...424b13` | ESVSP721 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xca5a5b...33b346` | MiniArmyKnife | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x951397...3cca8c` | VETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4c73f0...f72c22` | VPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4dbe3f...30aa7b` | VPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x677ddb...da8619` | VUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4b2e76...b1a17b` | VWBTC | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 144 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 79 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 18
- Inherited remapped matches: 0
- Address-book scope dispositions: 19 own (2 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 3 ambiguous, 523 unmatched
- Matched-own operational status: 19 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=13, medium=3
- Match method counts: temporal_name=5, unique_name=14

Zero-match audit list:

- [4863] REP-Bloq_15_02_2021.pdf
- [4865] Vesper Pools Security - PaymentSplitter Audit v210210.pdf
- [4867] Vesper Pools Security - Third Audit v201230.pdf
- [4869] Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf
- [4870] Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf
- [4871] Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf
- [4872] Coinspect - Smart Contract Audit - Vesper Pools January 2022.pdf
- [4877] Vesper Pools+Strategies September-2021.pdf
- [4878] Vesper Pools-Dedaub-Nov-2021.pdf
- [4880] Vesper V3 - 2nd Review - v2-may-2021.pdf
- [4881] Vesper V3 - 2nd Review - v210519 (1).pdf
- [4884] Vesper-Pools-Audit-Coinspect-March22.pdf
- [4885] Vesper-Pools-Audit-Coinspect-Nov21.pdf
- [4886] Vesper-Pools-Audit-Coinspect-Sept21.pdf
- [4887] Vesper-Pools-Audit-Dedaub-April 22.pdf
- [4888] Vesper-Pools-Audit-Dedaub-Oct21.pdf
- [4889] Vesper-Pools-Strategies-Audit-Halborn-Aug-22.pdf
- [4890] Vesper-Pools-Synth-VUSD-Deltas-Dedaub-March22.pdf

Fork inheritance lineage and inherited audits are included when available.
