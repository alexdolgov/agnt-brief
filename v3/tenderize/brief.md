# Agentic Audit Brief: Tenderize

## Export Authority

- Production state: **published scope**
- Raw selected rows: 4 across 2 audit(s)
- Eligible audit results: 8 (2 matched; 6 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Tenderize (`tenderize`)
- Website: [https://tenderize.me](https://tenderize.me)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, ethereum
- Contract surface: 68 unique implementations (90 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $724,869.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for Tenderize in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 7 contracts are derived from known codebases. 7 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x43c3dbee4d6e884dc2b81e9432ecee29dd8e008d`, chain 1)
- UnnamedContract (`0x8acd955cb1073f018d0737708e258ccf3f6ba824`, chain 1)
- UnnamedContract (`0xa7ca8732be369caeae8c230537fc8ef82a3387ee`, chain 1)
- UnnamedContract (`0xb98c7e67f63d198bd96574073ad5b3427a835796`, chain 1)
- UnnamedContract (`0xc1ae73a0dbc185048d9afe487bdbf1ccf3a513a0`, chain 1)
- UnnamedContract (`0xe88d90f5742dd7e214f978178f63cc961f3d10f0`, chain 1)
- UnnamedContract (`0xf09b219d86ff3b533fc72148a21a948ac48216ca`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 7/7 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 7 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 61 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 24
- Confirmed-live implementations: 7 of 68 unique; 61 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/55
- Verified + Unaudited implementations: 55
- Verified by bytecode match: 0
- Unverified implementations: 13
- Unique implementations: 68
- Raw deployments: 90
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 8 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (55)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AllocationExchange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a53cf3b3eda545dc61dee0ca21ea8996c94385f` | ⚠️ Unaudited |
| AudiusAdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x402aa633b9acfa4c74b7ea38126dd415b9c1118e`; ethereum `0xc509a0702a618cf7bf958e8e95ad1025e02cee72` | ⚠️ Unaudited |
| AudiusToken | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x18aaa7115705e8be94bffebde57af9bfc265b998` | ⚠️ Unaudited |
| AudiusToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22a9ccfdd10382d9cd18ca4437ff375bd7a87bbd` | ⚠️ Unaudited |
| AudiusToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xb6149d648e5616bfbc302b6ecd4584b253ff9fb3`; ethereum `0xc07b7b0f3062fc94992cfdfec3fd35b25565800f` | ⚠️ Unaudited |
| BancorFormula | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0c61e8f15d9def697e1100663ed7da74d3727dc` | ⚠️ Unaudited |
| ClaimsManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x44617f9dced9787c3b06a05b35b4c779a2aa1334` | ⚠️ Unaudited |
| ClaimsManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc41bd365479df890676ea3057a063456c1066bef` | ⚠️ Unaudited |
| Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24ccd4d3ac8529ff08c58f74ff6755036e616117` | ⚠️ Unaudited |
| Curation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d2b24947680fce35d5c9dd6a4e32649f12c176c` | ⚠️ Unaudited |
| Curation | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x8fe00a685bcb3b2cc296ff6ffeab10aca4ce1538` | ⚠️ Unaudited |
| DelegateManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x612b4367a7ae2cf346dc3759623a9c22102ff8d6` | ⚠️ Unaudited |
| DelegateManagerV2 | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4d7968ebfd390d5e7926cb3587c39eff2f9fb225` | ⚠️ Unaudited |
| DelegateManagerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf24aeab628493f82742db68596b532ab8a141057` | ⚠️ Unaudited |
| DisputeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x444c138bf2b151f28a713b0ee320240365a5bfc2`; ethereum `0x97307b963662cca2f7ed50e38dcc555dffc4fb0b` | ⚠️ Unaudited |
| DisputeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c837ac7818d9d2653061579d479cf691056517f` | ⚠️ Unaudited |
| EpochManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3fab259f2392f733c60c19492b5678e5d2d2ee31`; ethereum `0x64f990bf16552a693dcb043bb7bf3866c5e05ddb` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xf3a75e087a92770b4150fff14c6d36fb07796252` | ⚠️ Unaudited |
| ERC20Splitter | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69eaacad9c08bf3a809688395a5f2f0ccac5aa0d` | ⚠️ Unaudited |
| EthRewardsManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc642533cf9756de38831ea6b3d2b0020eaa60d3` | ⚠️ Unaudited |
| EthRewardsManagerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x5aa6b99a2b461ba8e97207740f0a689c5c39c3b0`; ethereum `0xf93bc671e463c61bd2e7f8fe8c8a37dfb633b6f6` | ⚠️ Unaudited |
| GNS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28037b93702335e55fe6319e1c144b8a4d05daeb` | ⚠️ Unaudited |
| Governance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x35dd16dfa4ea1522c29ddd087e8f076cad0ae5e8`; ethereum `0xc3177cb6cb43f95ccce5252f0728397dbf99dd7f` | ⚠️ Unaudited |
| Governance | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4deca517d6817b6510798b7328f2314d3003abac` | ⚠️ Unaudited |
| Governance | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7e2064179ac705a6d0ddc693e1522b221556366b`; ethereum `0x8c9d776200505cf0c57129be66d90e102b882875` | ⚠️ Unaudited |
| Graph | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe66f3ab2f5621fe12ebf37754e1af6d05b329a07` | ⚠️ Unaudited |
| GraphPreToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d96113bac24d0b24f73d4cbb27b65ca7e559e10` | ⚠️ Unaudited |
| GraphProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf3b000a6749259539af4e49f24eec74ea0e71430` | ⚠️ Unaudited |
| GraphSale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x09695a6dff47b0053ef9553fee49d2d833afa68b`; ethereum `0x6533e94d850187a407666dde19fd2829a641a2ee` | ⚠️ Unaudited |
| GraphToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc944e90c64b2c07662a292be6244bdf05cda44a7` | ⚠️ Unaudited |
| GraphTokenLockManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6284042d4da0931cbc64c5aab2d6184403095883`; ethereum `0xfcf78ac094288d7200cfdb367a8cd07108dfa128` | ⚠️ Unaudited |
| GraphTokenLockSimple | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x32ec7a59549b9f114c9d7d8b21891d91ae7f2ca1`; ethereum `0x5785176048beb00dcb6ec84a604d76e30e0666db` | ⚠️ Unaudited |
| GraphTokenLockWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe5e630383b5baecf0db7b15c50d410edd5a2255` | ⚠️ Unaudited |
| L1GNS | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xadca0dd4729c8ba3acf3e99f3a9f471ef37b6825` | ⚠️ Unaudited |
| L1Staking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xf55041e37e12cd407ad00ce2910b8269b01263b9` | ⚠️ Unaudited |
| LibCobbDouglas | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb84828c5978f4539bbda1965f92ea34dc7a649fb` | ⚠️ Unaudited |
| Migrations | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x2bc74881d732763e61a7381f23216d06e352679c`; ethereum `0x41b1de3f6727b5ae4dcc2a1ba5a4f0cae87e5d3f`; ethereum `0x6d8d8b7f3fdc3f12ebcad5b8e25a0f7d5b0ba291` | ⚠️ Unaudited |
| Registry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x6454c485890a2d8eef0e6df9cbf9b82d60093e9d`; ethereum `0x7a85868b022de89accb90d5616b79d2b10c77bbb` | ⚠️ Unaudited |
| Registry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x95e9b57e9341754faa9c664faf708639a8ad3859`; ethereum `0xcbc4145eb97b75622fbf16ce972dc2c2cc541d75` | ⚠️ Unaudited |
| Registry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd976d3b4f4e22a238c1a736b6612d22f17b6f64c` | ⚠️ Unaudited |
| Renderer | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x43c3dbee4d6e884dc2b81e9432ecee29dd8e008d` | ⚠️ Unaudited |
| RewardsManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x842ddfe3f5cadfd45c45421329cddf0af994940e`; ethereum `0xdbafb0d805df2a8017d87e1fb7c474de7a301ceb` | ⚠️ Unaudited |
| RewardsManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x9ac758ab77733b4150a901ebd659cbf8cb93ed66` | ⚠️ Unaudited |
| ServiceProviderFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x684c6f255bdfb64476723cb58deed5bafc96c2e1` | ⚠️ Unaudited |
| ServiceProviderFactory | registry | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd17a9bc90c582249e211a4f4b16721e7f65156c8` | ⚠️ Unaudited |
| ServiceRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x866232ec9a9f918a821eba561cc5fc960ef5b3aa`; ethereum `0xad0c9dacf1e515615b0581c8d7e295e296ec26e6` | ⚠️ Unaudited |
| ServiceTypeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x9efb0f4f38afbb4b0984d00c126e97e21b8417c5` | ⚠️ Unaudited |
| ServiceTypeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd6c2a72a132768fba4ee373503ba676c8ebd1e5` | ⚠️ Unaudited |
| Staking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x296ebf81430ea5561143b4b15b17cc3c549e2a53`; ethereum `0x99660f23daed72b92de9a6431ce3c75c5427c602`; ethereum `0xc3d14a6e96bcbd7915b940504537ab9a4ca1e55c`; ethereum `0xea10fd3536fce6a5d40d55c790b96df33b26702f` | ⚠️ Unaudited |
| Staking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe6d97b2099f142513be7a2a068be040656ae4591` | ⚠️ Unaudited |
| Tenderizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4a3c14d7450c30f712e89659af21f90df56bc9ba` | ⚠️ Unaudited |
| TenderSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x23c24c1253c602106255b357cd3efe260a3a469e`; arbitrum `0x2429fc7082eb517c14946b392b195b181d0b9781` | ⚠️ Unaudited |
| TenderToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x2336c10a1d3100343fa9911a2c57b77c333599a3`; ethereum `0xc29f5611dcd89bc5d3a19762783d3006bc2ad2ac`; arbitrum `0xfac38532829fdd744373fdcd4708ab90fa0c4078` | ⚠️ Unaudited |
| TrustedNotifierManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53e139da2546bcdb533aee3ec1f9222eb5cf4af7` | ⚠️ Unaudited |
| TrustedNotifierManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x6f08105c8ceef2bc5653640fcdbbe1e7bb519d39` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (13)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Proxy (impl: 0x54d6e288065addc74c11d9dfbefb805a73cf58c7) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x388b0faf9de300ffc21e3dc849202544901792cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x144b7c47ec3c7a4e7536a6aa699baef97e4b025a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16dbe8ef3ec92d61bbdbbbed7230906bb98f54fc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393878 | `0x43c3dbee4d6e884dc2b81e9432ecee29dd8e008d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fd49e0c441a9bd0b950e841f6f2d5fb22722568` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393879 | `0x8acd955cb1073f018d0737708e258ccf3f6ba824` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393880 | `0xa7ca8732be369caeae8c230537fc8ef82a3387ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac4814e5f8ddb5d06faff2e402c0efff96f1ed77` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393881 | `0xb98c7e67f63d198bd96574073ad5b3427a835796` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393882 | `0xc1ae73a0dbc185048d9afe487bdbf1ccf3a513a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda0dfcb3464bc7bcbd5e1424463c662c04f8d0d2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393883 | `0xe88d90f5742dd7e214f978178f63cc961f3d10f0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393884 | `0xf09b219d86ff3b533fc72148a21a948ac48216ca` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 64
- Live contracts: 0
- Unknown liveness contracts: 64
- Source-verified contracts: 59
- Currently scope-matched contracts retained as-is: 0
- Classification counts: candidate review=3, contamination review=16, source verified unclassified=40, unverified unclassified=5

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| candidate review | Registry<br>`0x6454c485890a2d8eef0e6df9cbf9b82d60093e9d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xde21d46753633a177223faa6e56e8f6cd24cca04` |
| candidate review | Registry<br>`0x95e9b57e9341754faa9c664faf708639a8ad3859` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xde21d46753633a177223faa6e56e8f6cd24cca04` |
| candidate review | Registry<br>`0xcbc4145eb97b75622fbf16ce972dc2c2cc541d75` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xde21d46753633a177223faa6e56e8f6cd24cca04` |
| contamination review | AllocationExchange<br>`0x4a53cf3b3eda545dc61dee0ca21ea8996c94385f` | non_address_book | unknown | unknown | verified | n/a | `0x06590a641dc3eb43f2cebe435576389f209116da` |
| contamination review | BancorFormula<br>`0xd0c61e8f15d9def697e1100663ed7da74d3727dc` | non_address_book | unknown | unknown | verified | n/a | `0x06590a641dc3eb43f2cebe435576389f209116da` |
| contamination review | Curation<br>`0x6d2b24947680fce35d5c9dd6a4e32649f12c176c` | non_address_book | unknown | unknown | verified | n/a | `0x06590a641dc3eb43f2cebe435576389f209116da` |
| contamination review | DelegateManager<br>`0x612b4367a7ae2cf346dc3759623a9c22102ff8d6` | non_address_book | unknown | unknown | verified | n/a | `0xde21d46753633a177223faa6e56e8f6cd24cca04` |
| contamination review | DisputeManager<br>`0x444c138bf2b151f28a713b0ee320240365a5bfc2` | non_address_book | unknown | unknown | verified | n/a | `0x06590a641dc3eb43f2cebe435576389f209116da` |
| contamination review | EpochManager<br>`0x3fab259f2392f733c60c19492b5678e5d2d2ee31` | non_address_book | unknown | unknown | verified | n/a | `0x06590a641dc3eb43f2cebe435576389f209116da` |
| contamination review | EthRewardsManager<br>`0xfc642533cf9756de38831ea6b3d2b0020eaa60d3` | non_address_book | unknown | unknown | verified | n/a | `0xde21d46753633a177223faa6e56e8f6cd24cca04` |
| contamination review | GNS<br>`0x28037b93702335e55fe6319e1c144b8a4d05daeb` | non_address_book | unknown | unknown | verified | n/a | `0x06590a641dc3eb43f2cebe435576389f209116da` |
| contamination review | Governance<br>`0x35dd16dfa4ea1522c29ddd087e8f076cad0ae5e8` | non_address_book | unknown | unknown | verified | n/a | `0xde21d46753633a177223faa6e56e8f6cd24cca04` |
| contamination review | GraphProxyAdmin<br>`0xf3b000a6749259539af4e49f24eec74ea0e71430` | non_address_book | unknown | unknown | verified | n/a | `0x06590a641dc3eb43f2cebe435576389f209116da` |
| contamination review | Migrations<br>`0x2bc74881d732763e61a7381f23216d06e352679c` | non_address_book | unknown | unknown | verified | n/a | `0xde21d46753633a177223faa6e56e8f6cd24cca04` |
| contamination review | RewardsManager<br>`0x842ddfe3f5cadfd45c45421329cddf0af994940e` | non_address_book | unknown | unknown | verified | n/a | `0x06590a641dc3eb43f2cebe435576389f209116da` |
| contamination review | ServiceProviderFactory<br>`0x684c6f255bdfb64476723cb58deed5bafc96c2e1` | non_address_book | unknown | unknown | verified | n/a | `0xde21d46753633a177223faa6e56e8f6cd24cca04` |
| contamination review | ServiceRegistry<br>`0x866232ec9a9f918a821eba561cc5fc960ef5b3aa` | non_address_book | unknown | unknown | verified | n/a | `0x06590a641dc3eb43f2cebe435576389f209116da` |
| contamination review | Staking<br>`0x296ebf81430ea5561143b4b15b17cc3c549e2a53` | non_address_book | unknown | unknown | verified | n/a | `0x06590a641dc3eb43f2cebe435576389f209116da` |
| contamination review | TrustedNotifierManager<br>`0x53e139da2546bcdb533aee3ec1f9222eb5cf4af7` | non_address_book | unknown | unknown | verified | n/a | `0xde21d46753633a177223faa6e56e8f6cd24cca04` |
| source verified unclassified | AudiusAdminUpgradeabilityProxy<br>`0x402aa633b9acfa4c74b7ea38126dd415b9c1118e` | non_address_book | unknown | unknown | verified | n/a | `0xde21d46753633a177223faa6e56e8f6cd24cca04` |
| source verified unclassified | AudiusAdminUpgradeabilityProxy<br>`0x5aa6b99a2b461ba8e97207740f0a689c5c39c3b0` | non_address_book | unknown | unknown | verified | n/a | `0xde21d46753633a177223faa6e56e8f6cd24cca04` |
| source verified unclassified | AudiusAdminUpgradeabilityProxy<br>`0x6f08105c8ceef2bc5653640fcdbbe1e7bb519d39` | non_address_book | unknown | unknown | verified | n/a | `0xde21d46753633a177223faa6e56e8f6cd24cca04` |
| source verified unclassified | AudiusAdminUpgradeabilityProxy<br>`0x7a85868b022de89accb90d5616b79d2b10c77bbb` | non_address_book | unknown | unknown | verified | n/a | `0xde21d46753633a177223faa6e56e8f6cd24cca04` |
| source verified unclassified | AudiusAdminUpgradeabilityProxy<br>`0x7e2064179ac705a6d0ddc693e1522b221556366b` | non_address_book | unknown | unknown | verified | n/a | `0xde21d46753633a177223faa6e56e8f6cd24cca04` |
| source verified unclassified | AudiusAdminUpgradeabilityProxy<br>`0x9efb0f4f38afbb4b0984d00c126e97e21b8417c5` | non_address_book | unknown | unknown | verified | n/a | `0xde21d46753633a177223faa6e56e8f6cd24cca04` |
| source verified unclassified | AudiusAdminUpgradeabilityProxy<br>`0xc07b7b0f3062fc94992cfdfec3fd35b25565800f` | non_address_book | unknown | unknown | verified | n/a | `0xde21d46753633a177223faa6e56e8f6cd24cca04` |
| source verified unclassified | AudiusAdminUpgradeabilityProxy<br>`0xc509a0702a618cf7bf958e8e95ad1025e02cee72` | non_address_book | unknown | unknown | verified | n/a | `0xde21d46753633a177223faa6e56e8f6cd24cca04` |
| source verified unclassified | AudiusAdminUpgradeabilityProxy<br>`0xd976d3b4f4e22a238c1a736b6612d22f17b6f64c` | non_address_book | unknown | unknown | verified | n/a | `0xde21d46753633a177223faa6e56e8f6cd24cca04` |
| source verified unclassified | AudiusAdminUpgradeabilityProxy<br>`0xe6d97b2099f142513be7a2a068be040656ae4591` | non_address_book | unknown | unknown | verified | n/a | `0xde21d46753633a177223faa6e56e8f6cd24cca04` |
| source verified unclassified | AudiusToken<br>`0x22a9ccfdd10382d9cd18ca4437ff375bd7a87bbd` | non_address_book | unknown | unknown | verified | n/a | `0xde21d46753633a177223faa6e56e8f6cd24cca04` |
| source verified unclassified | AudiusToken<br>`0xb6149d648e5616bfbc302b6ecd4584b253ff9fb3` | non_address_book | unknown | unknown | verified | n/a | `0xde21d46753633a177223faa6e56e8f6cd24cca04` |
| source verified unclassified | ClaimsManager<br>`0xc41bd365479df890676ea3057a063456c1066bef` | non_address_book | unknown | unknown | verified | n/a | `0xde21d46753633a177223faa6e56e8f6cd24cca04` |
| source verified unclassified | Controller<br>`0x24ccd4d3ac8529ff08c58f74ff6755036e616117` | non_address_book | unknown | unknown | verified | n/a | `0x06590a641dc3eb43f2cebe435576389f209116da` |
| source verified unclassified | DelegateManagerV2<br>`0xf24aeab628493f82742db68596b532ab8a141057` | non_address_book | unknown | unknown | verified | n/a | `0xde21d46753633a177223faa6e56e8f6cd24cca04` |
| source verified unclassified | DisputeManager<br>`0x9c837ac7818d9d2653061579d479cf691056517f` | non_address_book | unknown | unknown | verified | n/a | `0x06590a641dc3eb43f2cebe435576389f209116da` |
| source verified unclassified | EthRewardsManagerV2<br>`0xf93bc671e463c61bd2e7f8fe8c8a37dfb633b6f6` | non_address_book | unknown | unknown | verified | n/a | `0xde21d46753633a177223faa6e56e8f6cd24cca04` |
| source verified unclassified | Governance<br>`0x8c9d776200505cf0c57129be66d90e102b882875` | non_address_book | unknown | unknown | verified | n/a | `0xde21d46753633a177223faa6e56e8f6cd24cca04` |
| source verified unclassified | Governance<br>`0xc3177cb6cb43f95ccce5252f0728397dbf99dd7f` | non_address_book | unknown | unknown | verified | n/a | `0xde21d46753633a177223faa6e56e8f6cd24cca04` |
| source verified unclassified | GraphPreToken<br>`0x5d96113bac24d0b24f73d4cbb27b65ca7e559e10` | non_address_book | unknown | unknown | verified | n/a | `0x06590a641dc3eb43f2cebe435576389f209116da` |
| source verified unclassified | GraphProxy<br>`0x64f990bf16552a693dcb043bb7bf3866c5e05ddb` | non_address_book | unknown | unknown | verified | n/a | `0x06590a641dc3eb43f2cebe435576389f209116da` |
| source verified unclassified | GraphProxy<br>`0x8fe00a685bcb3b2cc296ff6ffeab10aca4ce1538` | non_address_book | unknown | unknown | verified | n/a | `0x06590a641dc3eb43f2cebe435576389f209116da` |
| source verified unclassified | GraphProxy<br>`0x97307b963662cca2f7ed50e38dcc555dffc4fb0b` | non_address_book | unknown | unknown | verified | n/a | `0x06590a641dc3eb43f2cebe435576389f209116da` |
| source verified unclassified | GraphProxy<br>`0x9ac758ab77733b4150a901ebd659cbf8cb93ed66` | non_address_book | unknown | unknown | verified | n/a | `0x06590a641dc3eb43f2cebe435576389f209116da` |
| source verified unclassified | GraphProxy<br>`0xad0c9dacf1e515615b0581c8d7e295e296ec26e6` | non_address_book | unknown | unknown | verified | n/a | `0x06590a641dc3eb43f2cebe435576389f209116da` |
| source verified unclassified | GraphSale<br>`0x09695a6dff47b0053ef9553fee49d2d833afa68b` | non_address_book | unknown | unknown | verified | n/a | `0x06590a641dc3eb43f2cebe435576389f209116da` |
| source verified unclassified | GraphSale<br>`0x6533e94d850187a407666dde19fd2829a641a2ee` | non_address_book | unknown | unknown | verified | n/a | `0x06590a641dc3eb43f2cebe435576389f209116da` |
| source verified unclassified | GraphTokenLockManager<br>`0x6284042d4da0931cbc64c5aab2d6184403095883` | non_address_book | unknown | unknown | verified | n/a | `0x06590a641dc3eb43f2cebe435576389f209116da` |
| source verified unclassified | GraphTokenLockManager<br>`0xfcf78ac094288d7200cfdb367a8cd07108dfa128` | non_address_book | unknown | unknown | verified | n/a | `0x06590a641dc3eb43f2cebe435576389f209116da` |
| source verified unclassified | GraphTokenLockSimple<br>`0x32ec7a59549b9f114c9d7d8b21891d91ae7f2ca1` | non_address_book | unknown | unknown | verified | n/a | `0x06590a641dc3eb43f2cebe435576389f209116da` |
| source verified unclassified | GraphTokenLockSimple<br>`0x5785176048beb00dcb6ec84a604d76e30e0666db` | non_address_book | unknown | unknown | verified | n/a | `0x06590a641dc3eb43f2cebe435576389f209116da` |
| source verified unclassified | GraphTokenLockWallet<br>`0xbe5e630383b5baecf0db7b15c50d410edd5a2255` | non_address_book | unknown | unknown | verified | n/a | `0x06590a641dc3eb43f2cebe435576389f209116da` |
| source verified unclassified | LibCobbDouglas<br>`0xb84828c5978f4539bbda1965f92ea34dc7a649fb` | non_address_book | unknown | unknown | verified | n/a | `0x06590a641dc3eb43f2cebe435576389f209116da` |
| source verified unclassified | Migrations<br>`0x41b1de3f6727b5ae4dcc2a1ba5a4f0cae87e5d3f` | non_address_book | unknown | unknown | verified | n/a | `0xde21d46753633a177223faa6e56e8f6cd24cca04` |
| source verified unclassified | Migrations<br>`0x6d8d8b7f3fdc3f12ebcad5b8e25a0f7d5b0ba291` | non_address_book | unknown | unknown | verified | n/a | `0xde21d46753633a177223faa6e56e8f6cd24cca04` |
| source verified unclassified | RewardsManager<br>`0xdbafb0d805df2a8017d87e1fb7c474de7a301ceb` | non_address_book | unknown | unknown | verified | n/a | `0x06590a641dc3eb43f2cebe435576389f209116da` |
| source verified unclassified | ServiceTypeManager<br>`0xdd6c2a72a132768fba4ee373503ba676c8ebd1e5` | non_address_book | unknown | unknown | verified | n/a | `0xde21d46753633a177223faa6e56e8f6cd24cca04` |
| source verified unclassified | Staking<br>`0x99660f23daed72b92de9a6431ce3c75c5427c602` | non_address_book | unknown | unknown | verified | n/a | `0x06590a641dc3eb43f2cebe435576389f209116da` |
| source verified unclassified | Staking<br>`0xc3d14a6e96bcbd7915b940504537ab9a4ca1e55c` | non_address_book | unknown | unknown | verified | n/a | `0x06590a641dc3eb43f2cebe435576389f209116da` |
| source verified unclassified | Staking<br>`0xea10fd3536fce6a5d40d55c790b96df33b26702f` | non_address_book | unknown | unknown | verified | n/a | `0xde21d46753633a177223faa6e56e8f6cd24cca04` |
| unverified unclassified | UnnamedContract<br>`0x144b7c47ec3c7a4e7536a6aa699baef97e4b025a` | non_address_book | unknown | unknown | unverified | n/a | `0x06590a641dc3eb43f2cebe435576389f209116da` |
| unverified unclassified | UnnamedContract<br>`0x16dbe8ef3ec92d61bbdbbbed7230906bb98f54fc` | non_address_book | unknown | unknown | unverified | n/a | `0x06590a641dc3eb43f2cebe435576389f209116da` |
| unverified unclassified | UnnamedContract<br>`0x5fd49e0c441a9bd0b950e841f6f2d5fb22722568` | non_address_book | unknown | unknown | unverified | n/a | `0x06590a641dc3eb43f2cebe435576389f209116da` |
| unverified unclassified | UnnamedContract<br>`0xac4814e5f8ddb5d06faff2e402c0efff96f1ed77` | non_address_book | unknown | unknown | unverified | n/a | `0xde21d46753633a177223faa6e56e8f6cd24cca04` |
| unverified unclassified | UnnamedContract<br>`0xda0dfcb3464bc7bcbd5e1424463c662c04f8d0d2` | non_address_book | unknown | unknown | unverified | n/a | `0x06590a641dc3eb43f2cebe435576389f209116da` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Halborn_Tenderize_Livepeer_Adapter_Smart_Contract_Security_Assessment_Report.pdf](https://github.com/Tenderize/staking/blob/main/audits/Halborn_Tenderize_Livepeer_Adapter_Smart_Contract_Security_Assessment_Report.pdf) | Halborn | Audit | 2023-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Halborn_Tenderize_Polygon_Integration_Smart_Contract_Security_Assessment.pdf](https://github.com/Tenderize/staking/blob/main/audits/Halborn_Tenderize_Polygon_Integration_Smart_Contract_Security_Assessment.pdf) | Halborn | Audit | 2023-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Halborn_Tenderize_The_Graph_Adapter_Smart_Contract_Security_Assessment_Report.pdf](https://github.com/Tenderize/staking/blob/main/audits/Halborn_Tenderize_The_Graph_Adapter_Smart_Contract_Security_Assessment_Report.pdf) | Halborn | Audit | 2023-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Halborn_Tenderize_v2_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf](https://github.com/Tenderize/staking/blob/main/audits/Halborn_Tenderize_v2_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf) | Halborn | Audit | 2023-08 | stale | Direct | n/a | matched | 2 | 0 | 0 | 9 | n/a |
| [Trust_Audits_Tenderize_V4.pdf](https://github.com/Tenderize/staking/blob/main/audits/Trust_Audits_Tenderize_V4.pdf) | Trust Audits | Audit | 2024-02 | stale | Direct | n/a | matched | 2 | 0 | 0 | 12 | n/a |
| [halborn-tenderswap-audit.pdf](https://github.com/Tenderize/tenderswap/blob/main/audits/halborn-tenderswap-audit.pdf) | Halborn | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [LPETH _ SSC.pdf](https://276120184-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F29Sq9aVO6bZwCobNudVH%2Fuploads%2FdjqeafNAZu6NSPWUpFuk%2FLPETH%20_%20SSC.pdf) | SSC | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 23 | high |
| [halborn-tenderswap-audit.pdf](https://276120184-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F29Sq9aVO6bZwCobNudVH%2Fuploads%2F5jOfk2Iskhnxsc8F9knn%2Fhalborn-tenderswap-audit.pdf) | Halborn | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [14863] Halborn_Tenderize_Livepeer_Adapter_Smart_Contract_Security_Assessment_Report.pdf — no match: Only one contract in scope: LivepeerAdapter.sol. Audit date is the end date of engagement (September 13th, 2023).
- [14864] Halborn_Tenderize_Polygon_Integration_Smart_Contract_Security_Assessment.pdf — no match: Only one contract in scope: PolygonAdapter. Audit date is end of engagement period.
- [14865] Halborn_Tenderize_The_Graph_Adapter_Smart_Contract_Security_Assessment_Report.pdf — no match: Only one contract in scope: GraphAdapter.sol. Audit date is the end date of engagement (September 5th, 2023).
- [14866] Halborn_Tenderize_v2_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf — matched: No reason recorded
- [14867] Trust_Audits_Tenderize_V4.pdf — matched: No reason recorded
- [14868] halborn-tenderswap-audit.pdf — no match: Scope section explicitly lists 6 files. Audit date is end of engagement period (March 8, 2024).
- [28249] LPETH _ SSC.pdf — no match: All contracts listed in the Scope section of the report were extracted. The audit date is the end date of the engagement (June 28, 2024).
- [28250] halborn-tenderswap-audit.pdf — no match: Scope section explicitly lists 6 files. Audit date is the end date of engagement: March 8, 2024.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Halborn_Tenderize_Livepeer_Adapter_Smart_Contract_Security_Assessment_Report.pdf | LivepeerAdapter | unmatched — not counted | — | listed in scope section | no |
| Halborn_Tenderize_Polygon_Integration_Smart_Contract_Security_Assessment.pdf | PolygonAdapter | unmatched — not counted | — | listed in scope section | no |
| Halborn_Tenderize_The_Graph_Adapter_Smart_Contract_Security_Assessment_Report.pdf | GraphAdapter | unmatched — not counted | — | listed in scope section | no |
| Halborn_Tenderize_v2_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf | Adapter | unmatched — not counted | — | — | no |
| Halborn_Tenderize_v2_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf | Factory | own contract | 0xf09b21… (selected) `0xf09b219d86ff3b533fc72148a21a948ac48216ca` — deployed 2024-01-30 02:04:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Halborn_Tenderize_v2_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf | ITenderizer | unmatched — not counted | — | — | no |
| Halborn_Tenderize_v2_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf | Registry | unmatched — not counted | — | — | no |
| Halborn_Tenderize_v2_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf | RegistryStorage | unmatched — not counted | — | — | no |
| Halborn_Tenderize_v2_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf | Roles | unmatched — not counted | — | — | no |
| Halborn_Tenderize_v2_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf | TToken | unmatched — not counted | — | — | no |
| Halborn_Tenderize_v2_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf | TTokenStorage | unmatched — not counted | — | — | no |
| Halborn_Tenderize_v2_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf | Tenderizer | unmatched — not counted | — | — | no |
| Halborn_Tenderize_v2_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf | TenderizerBase | unmatched — not counted | — | — | no |
| Halborn_Tenderize_v2_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf | Unlocks | own contract | 0xb98c7e… (selected) `0xb98c7e67f63d198bd96574073ad5b3427a835796` — deployed 2024-01-30 02:04:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Trust_Audits_Tenderize_V4.pdf | Adapter | unmatched — not counted | — | — | no |
| Trust_Audits_Tenderize_V4.pdf | Base64 | unmatched — not counted | — | — | no |
| Trust_Audits_Tenderize_V4.pdf | Factory | own contract | 0xf09b21… (selected) `0xf09b219d86ff3b533fc72148a21a948ac48216ca` — deployed 2024-01-30 02:04:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Trust_Audits_Tenderize_V4.pdf | GraphAdapter | unmatched — not counted | — | — | no |
| Trust_Audits_Tenderize_V4.pdf | ITenderizer | unmatched — not counted | — | — | no |
| Trust_Audits_Tenderize_V4.pdf | Registry | unmatched — not counted | — | — | no |
| Trust_Audits_Tenderize_V4.pdf | RegistryStorage | unmatched — not counted | — | — | no |
| Trust_Audits_Tenderize_V4.pdf | Renderer | unmatched — not counted | — | — | no |
| Trust_Audits_Tenderize_V4.pdf | Roles | unmatched — not counted | — | — | no |
| Trust_Audits_Tenderize_V4.pdf | TToken | unmatched — not counted | — | — | no |
| Trust_Audits_Tenderize_V4.pdf | TTokenStorage | unmatched — not counted | — | — | no |
| Trust_Audits_Tenderize_V4.pdf | Tenderizer | unmatched — not counted | — | — | no |
| Trust_Audits_Tenderize_V4.pdf | TenderizerBase | unmatched — not counted | — | — | no |
| Trust_Audits_Tenderize_V4.pdf | Unlocks | own contract | 0xb98c7e… (selected) `0xb98c7e67f63d198bd96574073ad5b3427a835796` — deployed 2024-01-30 02:04:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| halborn-tenderswap-audit.pdf | LPToken | unmatched — not counted | — | listed in scope | no |
| halborn-tenderswap-audit.pdf | Swap | unmatched — not counted | — | listed in scope | no |
| halborn-tenderswap-audit.pdf | UnlockQueue | unmatched — not counted | — | listed in scope | no |
| halborn-tenderswap-audit.pdf | ERC721Receiver | unmatched — not counted | — | listed in scope | no |
| halborn-tenderswap-audit.pdf | Multicall | unmatched — not counted | — | listed in scope | no |
| halborn-tenderswap-audit.pdf | SelfPermit | unmatched — not counted | — | listed in scope | no |
| LPETH _ SSC.pdf | Registry | unmatched — not counted | — | listed in scope | no |
| LPETH _ SSC.pdf | ERC721Receiver | unmatched — not counted | — | listed in scope | no |
| LPETH _ SSC.pdf | SelfPermit | unmatched — not counted | — | listed in scope | no |
| LPETH _ SSC.pdf | Base64 | unmatched — not counted | — | listed in scope | no |
| LPETH _ SSC.pdf | Renderer | unmatched — not counted | — | listed in scope | no |
| LPETH _ SSC.pdf | UnsETH | unmatched — not counted | — | listed in scope | no |
| LPETH _ SSC.pdf | LPToken | unmatched — not counted | — | listed in scope | no |
| LPETH _ SSC.pdf | LpETH | unmatched — not counted | — | listed in scope | no |
| LPETH _ SSC.pdf | UnsETHQueue | unmatched — not counted | — | listed in scope | no |
| LPETH _ SSC.pdf | WithdrawQueue | unmatched — not counted | — | listed in scope | no |
| LPETH _ SSC.pdf | Adapter | unmatched — not counted | — | listed in scope | no |
| LPETH _ SSC.pdf | ETHxAdapter | unmatched — not counted | — | listed in scope | no |
| LPETH _ SSC.pdf | IStader | unmatched — not counted | — | listed in scope | no |
| LPETH _ SSC.pdf | EETHAdapter | unmatched — not counted | — | listed in scope | no |
| LPETH _ SSC.pdf | IEtherfi | unmatched — not counted | — | listed in scope | no |
| LPETH _ SSC.pdf | ILiquidCollective | unmatched — not counted | — | listed in scope | no |
| LPETH _ SSC.pdf | LsETHAdapter | unmatched — not counted | — | listed in scope | no |
| LPETH _ SSC.pdf | IMantle | unmatched — not counted | — | listed in scope | no |
| LPETH _ SSC.pdf | METHAdapter | unmatched — not counted | — | listed in scope | no |
| LPETH _ SSC.pdf | ILido | unmatched — not counted | — | listed in scope | no |
| LPETH _ SSC.pdf | StETHAdapter | unmatched — not counted | — | listed in scope | no |
| LPETH _ SSC.pdf | ISwell | unmatched — not counted | — | listed in scope | no |
| LPETH _ SSC.pdf | SwETHAdapter | unmatched — not counted | — | listed in scope | no |
| halborn-tenderswap-audit.pdf | LPToken | unmatched — not counted | — | listed in scope | no |
| halborn-tenderswap-audit.pdf | Swap | unmatched — not counted | — | listed in scope | no |
| halborn-tenderswap-audit.pdf | UnlockQueue | unmatched — not counted | — | listed in scope | no |
| halborn-tenderswap-audit.pdf | ERC721Receiver | unmatched — not counted | — | listed in scope | no |
| halborn-tenderswap-audit.pdf | Multicall | unmatched — not counted | — | listed in scope | no |
| halborn-tenderswap-audit.pdf | SelfPermit | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 54 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 13 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Address-book scope dispositions: 4 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 59 unmatched
- Matched-own operational status: 4 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=6
- Match method counts: unique_name=4

Zero-match audit list:

- [14863] Halborn_Tenderize_Livepeer_Adapter_Smart_Contract_Security_Assessment_Report.pdf
- [14864] Halborn_Tenderize_Polygon_Integration_Smart_Contract_Security_Assessment.pdf
- [14865] Halborn_Tenderize_The_Graph_Adapter_Smart_Contract_Security_Assessment_Report.pdf
- [14868] halborn-tenderswap-audit.pdf
- [28249] LPETH _ SSC.pdf
- [28250] halborn-tenderswap-audit.pdf

Fork inheritance lineage and inherited audits are included when available.
