# Agentic Audit Brief: Tarot

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Tarot (`tarot`)
- Website: [https://www.tarot.to](https://www.tarot.to)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, bsc, canto, ethereum, fantom, kava, linea, optimism, polygon, scroll, zksync-era
- Contract surface: 109 unique implementations (283 raw deployments)
- Coverage basis: 0/27 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $953,039.12
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Tarot. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 27 contract row(s) across arbitrum, avalanche, base, bsc, canto, ethereum, fantom, kava, linea, optimism, polygon. Structural roles: 21 unclassified, 3 core, 3 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 27
- Structural roles: unclassified (21), core (3), supporting (3)
- Contract kinds: contract (27)
- Detected standards: ownable (2), erc20 (1), erc20permit (1)
- Frameworks: openzeppelin (6)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 27 contracts are derived from known codebases. 27 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- AnyswapV6ERC20 (`0x375488...e736bf`, chain 10)
- BDeployer (`0x54b006...7d5420`, chain 10)
- BDeployer (`0x952e9c...30335a`, chain 10)
- CDeployer (`0x5f90e2...e46401`, chain 10)
- CDeployer (`0xeb5809...dfc12d`, chain 10)
- Factory (`0x1d90fd...d0989e`, chain 10)
- Factory (`0x49df1f...db62bf`, chain 10)
- Factory (`0x8b2e28...9f0723`, chain 10)
- Factory (`0xd7cabe...5fc83c`, chain 10)
- Factory (`0x2217ae...8dba55`, chain 56)
- Factory (`0xc20099...406d3a`, chain 56)
- Factory (`0x2217ae...8dba55`, chain 42161)
- Factory (`0x4b6dae...dd4723`, chain 42161)
- Factory (`0xc20099...406d3a`, chain 42161)
- Router02 (`0x88c81e...06172e`, chain 10)
- Router02 (`0x8a3b1b...f53d8c`, chain 10)
- Router02 (`0xa516b9...84405f`, chain 10)
- Router02 (`0xd4a6a0...e01741`, chain 10)
- Router02 (`0x002235...1d07b4`, chain 42161)
- Router02 (`0x1cafcb...54b653`, chain 42161)
- Router02 (`0x46fcde...301f30`, chain 42161)
- Router03 (`0x8184fa...405990`, chain 56)
- Router03 (`0xb6ed26...a97131`, chain 56)
- VeloStableVaultTokenFactory (`0x66e9b3...9f4859`, chain 10)
- VeloStableVaultTokenFactory (`0xee1ecc...96cf70`, chain 10)
- VeloVaultTokenFactory (`0x19283d...92dc52`, chain 10)
- ZipVaultTokenFactory (`0x54950c...909f57`, chain 10)

## Contract Surface Quality

- Logic-topography rows: 27; live-surface rows included: 27 (27 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 27/27 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/27 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 27 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 82 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 27 of 109 unique; 82 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/67
- Verified + Unaudited implementations: 67
- Verified by bytecode match: 0
- Unverified implementations: 42
- Unique implementations: 109
- Raw deployments: 283
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (67)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AeroDexHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa516b9...84405f` | ⚠️ Unaudited |
| AeroVaultTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x82d973...cdc245` | ⚠️ Unaudited |
| AnyswapV6ERC20 | token | project_anchor | own_supporting | 0 | optimism | unit-258140 | `0x375488...e736bf` | ⚠️ Unaudited |
| BDeployer | unknown | project_anchor | own_supporting | 0 | optimism | unit-258143 | `0x54b006...7d5420` | ⚠️ Unaudited |
| BDeployer | unknown | project_anchor | own_supporting | 0 | optimism | unit-258149 | `0x952e9c...30335a` | ⚠️ Unaudited |
| BDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 20 deployments: ethereum `0x82b341...37da11`; ethereum `0xb092e1...e36ac2`; optimism `0x304069...55dd24`; optimism `0x3cba82...277a7d`; optimism `0xbdb7c9...579252`; optimism `0xcaefa7...2bbc57`; optimism `0xe092a4...2894aa`; optimism `0xecbca7...afdac3`; bsc `0x35c052...3432ea`; bsc `0x6108fe...121834`; polygon `0x1d90fd...d0989e`; base `0x5a8931...933e17`; arbitrum `0x35c052...3432ea`; arbitrum `0x455a76...ab8959`; arbitrum `0x6108fe...121834`; arbitrum `0xb092e1...e36ac2`; arbitrum `0xc5a397...51382a`; arbitrum `0xe1ac0c...c9d452`; avalanche `0x1d90fd...d0989e`; linea `0x36df0a...e38a35` | ⚠️ Unaudited |
| CDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 20 deployments: ethereum `0xb3f352...0b6252`; ethereum `0xc20099...406d3a`; optimism `0x15ff31...e05a66`; optimism `0x17abab...0a147b`; optimism `0x2ddb64...eec67e`; optimism `0x3e6c79...509c12`; optimism `0x5658dc...6fea48`; optimism `0xf32db3...81a2b0`; bsc `0x82b341...37da11`; bsc `0xb6193d...bd1bf2`; polygon `0xd4a6a0...e01741`; base `0x952e9c...30335a`; arbitrum `0x6b8095...7c7227`; arbitrum `0x82b341...37da11`; arbitrum `0x82d973...cdc245`; arbitrum `0xb3f352...0b6252`; arbitrum `0xb6193d...bd1bf2`; arbitrum `0xee618c...6c64bd`; avalanche `0xd4a6a0...e01741`; linea `0x6108fe...121834` | ⚠️ Unaudited |
| CDeployer | unknown | project_anchor | own_supporting | 0 | optimism | unit-258144 | `0x5f90e2...e46401` | ⚠️ Unaudited |
| CDeployer | unknown | project_anchor | own_supporting | 0 | optimism | unit-258153 | `0xeb5809...dfc12d` | ⚠️ Unaudited |
| ClaimAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa782b2...7e6e1d` | ⚠️ Unaudited |
| Factory | unknown | project_anchor | own_supporting | 0 | optimism | unit-258139 | `0x1d90fd...d0989e` | ⚠️ Unaudited |
| Factory | unknown | project_anchor | own_supporting | 0 | optimism | unit-258141 | `0x49df1f...db62bf` | ⚠️ Unaudited |
| Factory | unknown | project_anchor | own_supporting | 0 | optimism | unit-258148 | `0x8b2e28...9f0723` | ⚠️ Unaudited |
| Factory | unknown | project_anchor | own_supporting | 0 | optimism | unit-258152 | `0xd7cabe...5fc83c` | ⚠️ Unaudited |
| Factory | unknown | project_anchor | own_supporting | 0 | bsc | unit-258161 | `0x2217ae...8dba55` | ⚠️ Unaudited |
| Factory | unknown | project_anchor | own_supporting | 0 | bsc | unit-258164 | `0xc20099...406d3a` | ⚠️ Unaudited |
| Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 12 deployments: ethereum `0x1cafcb...54b653`; ethereum `0x4b6dae...dd4723`; optimism `0x9d1a28...7cb88f`; optimism `0xba4731...e4da04`; optimism `0xd7cb84...4fc5a4`; polygon `0x36df0a...e38a35`; base `0xeb5809...dfc12d`; arbitrum `0x1967c7...fe5883`; arbitrum `0x1bbd56...553f80`; arbitrum `0x8cec72...2fe526`; avalanche `0x36df0a...e38a35`; linea `0xb6193d...bd1bf2` | ⚠️ Unaudited |
| Factory | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-258157 | `0x2217ae...8dba55` | ⚠️ Unaudited |
| Factory | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-258159 | `0x4b6dae...dd4723` | ⚠️ Unaudited |
| Factory | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-258160 | `0xc20099...406d3a` | ⚠️ Unaudited |
| FarmingPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 14 deployments: optimism `0x01d7e3...bf661c`; optimism `0x21ee3e...bfcbb8`; optimism `0x378304...0da606`; optimism `0x3c9de6...644865`; optimism `0x4d791a...134a1d`; optimism `0x5751c0...56ea74`; optimism `0x5afbef...59791b`; optimism `0x7c91f5...699d62`; optimism `0x8dbde8...22cc2c`; optimism `0x93dd5d...ae86a4`; optimism `0xc319a1...c7ace2`; optimism `0xd64a1f...cb718d`; optimism `0xd883b9...8f1742`; optimism `0xf465ef...6b9bd7` | ⚠️ Unaudited |
| HappyPuppyClub | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1f3ba8...bf6e4e` | ⚠️ Unaudited |
| MonolithRewardTokenHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36df0a...e38a35` | ⚠️ Unaudited |
| MonolithVaultTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54950c...909f57` | ⚠️ Unaudited |
| OptiSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 8 deployments: ethereum `0xf54425...952691`; optimism `0x6108fe...121834`; bsc `0xf54425...952691`; polygon `0x981bd9...c29af5`; base `0xf6e008...b7d697`; arbitrum `0x981bd9...c29af5`; avalanche `0x981bd9...c29af5`; linea `0x981bd9...c29af5` | ⚠️ Unaudited |
| OwnedDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xadad28...84af55` | ⚠️ Unaudited |
| RamsesVaultTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 2 deployments: arbitrum `0x6eb099...084e24`; linea `0x35c052...3432ea` | ⚠️ Unaudited |
| Router02 | unknown | project_anchor | own_supporting | 0 | optimism | unit-258146 | `0x88c81e...06172e` | ⚠️ Unaudited |
| Router02 | unknown | project_anchor | own_supporting | 0 | optimism | unit-258147 | `0x8a3b1b...f53d8c` | ⚠️ Unaudited |
| Router02 | adapter | project_anchor | own_supporting | 0 | optimism | unit-258150 | `0xa516b9...84405f` | ⚠️ Unaudited |
| Router02 | unknown | project_anchor | own_supporting | 0 | optimism | unit-258151 | `0xd4a6a0...e01741` | ⚠️ Unaudited |
| Router02 | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-258155 | `0x002235...1d07b4` | ⚠️ Unaudited |
| Router02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: optimism `0x5f1f8c...cd719c`; optimism `0xd355c2...86efbe`; bsc `0x1cafcb...54b653`; bsc `0x46fcde...301f30`; arbitrum `0x1850b8...5b84ae`; arbitrum `0x19283d...92dc52` | ⚠️ Unaudited |
| Router02 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-258156 | `0x1cafcb...54b653` | ⚠️ Unaudited |
| Router02 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-258158 | `0x46fcde...301f30` | ⚠️ Unaudited |
| Router03 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x002235...1d07b4`; ethereum `0x3b47f0...e29771`; optimism `0x9761d4...b9a91e`; polygon `0x6108fe...121834`; base `0xd7cabe...5fc83c`; arbitrum `0x11876c...ebf1ac`; avalanche `0x6108fe...121834`; linea `0x2217ae...8dba55` | ⚠️ Unaudited |
| Router03 | adapter | project_anchor | own_supporting | 0 | bsc | unit-258162 | `0x8184fa...405990` | ⚠️ Unaudited |
| Router03 | unknown | project_anchor | own_supporting | 0 | bsc | unit-258163 | `0xb6ed26...a97131` | ⚠️ Unaudited |
| SatinVaultTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x82b341...37da11` | ⚠️ Unaudited |
| SolidLizardStableVaultTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4775aa...ae3bb3` | ⚠️ Unaudited |
| SolidLizardVaultTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x21d1ed...418cd3` | ⚠️ Unaudited |
| SolidlyDexHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 9 deployments: ethereum `0x54b006...7d5420`; optimism `0xc5a397...51382a`; bsc `0x54b006...7d5420`; polygon `0xb6193d...bd1bf2`; base `0x582471...dc92e6`; arbitrum `0x04e97d...310600`; arbitrum `0xf54425...952691`; avalanche `0x2217ae...8dba55`; linea `0xf54425...952691` | ⚠️ Unaudited |
| SolidlyStableVaultTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff5d90...5c3c1c` | ⚠️ Unaudited |
| SolidlyVaultTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0998d0...3c94d9` | ⚠️ Unaudited |
| SoliSnekVaultTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4b6dae...dd4723` | ⚠️ Unaudited |
| SterlingStableVaultTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x416ae1...4830c9` | ⚠️ Unaudited |
| SterlingVaultTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x255f54...28233d` | ⚠️ Unaudited |
| SupplyVaultRouter01 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x539fcd...2b36c9` | ⚠️ Unaudited |
| SupplyVaultStrategyV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1753f9...289fb1` | ⚠️ Unaudited |
| SupplyVaultV2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 4 deployments: optimism `0x4ac8af...8de471`; optimism `0x550d17...a0465d`; optimism `0x811c27...cdd744`; optimism `0x8d3474...cd03f8` | ⚠️ Unaudited |
| TarotMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: ethereum `0x8f80d8...66f690`; optimism `0x24005e...4672a4`; bsc `0x28bd42...e5f862`; polygon `0x5ecfec...160f18`; arbitrum `0x07b414...604602`; avalanche `0xaf20cb...17da87` | ⚠️ Unaudited |
| TarotOFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 7 deployments: ethereum `0xa10bf0...ea56e8`; optimism `0x1f514a...a737f7`; bsc `0x982e60...0690be`; polygon `0xb092e1...e36ac2`; base `0xf54425...952691`; arbitrum `0x13278c...deebf7`; avalanche `0x5ecfec...160f18` | ⚠️ Unaudited |
| TarotPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x981bd9...c29af5`; arbitrum `0xa516b9...84405f` | ⚠️ Unaudited |
| TarotSolidlyPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x5a8931...933e17`; arbitrum `0xd4a6a0...e01741` | ⚠️ Unaudited |
| TarotSolidlyPriceOracleV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 8 deployments: ethereum `0x1d90fd...d0989e`; optimism `0x0a3b93...d0008c`; bsc `0xd4a6a0...e01741`; polygon `0x5f90e2...e46401`; base `0x4b6dae...dd4723`; arbitrum `0x36df0a...e38a35`; avalanche `0x5f90e2...e46401`; linea `0x5f90e2...e46401` | ⚠️ Unaudited |
| ThenaV2VaultTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7c00da...a155e9` | ⚠️ Unaudited |
| TowerLongPoolFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8d92b5...c2ff05` | ⚠️ Unaudited |
| TowerPoolFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: optimism `0x8f5301...7dfe50`; base `0xb0d74d...f57bee`; arbitrum `0x27eef1...ca1b14`; linea `0x46fcde...301f30` | ⚠️ Unaudited |
| VaultTokenFactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfb3017...c898e7` | ⚠️ Unaudited |
| VeloStableVaultTokenFactory | unknown | project_anchor | own_supporting | 0 | optimism | unit-258145 | `0x66e9b3...9f4859` | ⚠️ Unaudited |
| VeloStableVaultTokenFactory | unknown | project_anchor | own_supporting | 0 | optimism | unit-258154 | `0xee1ecc...96cf70` | ⚠️ Unaudited |
| VeloStableVaultTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: optimism `0x987ef1...e089bf`; bsc `0x54950c...909f57` | ⚠️ Unaudited |
| VeloV2VaultTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbcb9da...bc89c5` | ⚠️ Unaudited |
| VeloVaultTokenFactory | unknown | project_anchor | own_supporting | 0 | optimism | unit-258138 | `0x19283d...92dc52` | ⚠️ Unaudited |
| VeloVaultTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: optimism `0x673b77...c477a0`; bsc `0x3b47f0...e29771` | ⚠️ Unaudited |
| VesterSteppedLinear | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8e5f45...905f57` | ⚠️ Unaudited |
| ZipVaultTokenFactory | unknown | project_anchor | own_supporting | 0 | optimism | unit-258142 | `0x54950c...909f57` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (42)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0348e0...59b13c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0b9031...03b0b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x16a0c2...1c2b0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2217ae...8dba55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x232e84...609a66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3b47f0...e29771` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x40e625...f4deea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x46fcde...301f30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4959f8...506ee9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5634c4...c7d061` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5ed664...2f08dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6237b5...7357ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6e4c88...c08d9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x76d553...d0cd01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7c00da...a155e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x82b341...37da11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x875f4e...738bb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8a5226...e97615` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8df7da...568ad7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9ec30a...516863` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc20099...406d3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe03746...dea803` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xfe9cc1...f49fa9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2973c9...58d21c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2e4c7b...92b2e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xda0428...267a0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fantom | n/a | 57 deployments: fantom `0x04d04f...0c565a`; fantom `0x075b7f...96283a`; fantom `0x0defef...5d968e`; fantom `0x17235b...121c35`; fantom `0x1a8c7d...75dd4d`; fantom `0x1f7a54...7420ed`; fantom `0x1f8e60...c5cdb7`; fantom `0x20aa24...f9754d`; fantom `0x2217ae...8dba55`; fantom `0x26b21e...e94572`; fantom `0x283e62...89ad98`; fantom `0x2f7134...b36558`; fantom `0x3303a5...d3622e`; fantom `0x35c052...3432ea`; fantom `0x36df0a...e38a35`; fantom `0x3e9d8f...3341a4`; fantom `0x3e9f34...a10251`; fantom `0x3f7e61...183a7c`; fantom `0x449ead...641561`; fantom `0x44f768...e0d47d`; fantom `0x466ebd...a6e86b`; fantom `0x46fcde...301f30`; fantom `0x4c0931...94ebef`; fantom `0x4f56f5...f8f897`; fantom `0x51d49f...560ba7`; fantom `0x5494b2...2a74df`; fantom `0x5b0390...721765`; fantom `0x63d555...febee6`; fantom `0x68d211...dacdfb`; fantom `0x6caa3e...1c33a8`; fantom `0x74d1d2...df92f4`; fantom `0x7e5f7d...febb9a`; fantom `0x80d741...cf014b`; fantom `0x80fe67...c81c7b`; fantom `0x87d057...b64a35`; fantom `0x9189a6...c595ed`; fantom `0x93d014...35eaac`; fantom `0xa45776...c3d452`; fantom `0xa90092...75d876`; fantom `0xb7c2dd...37a274`; fantom `0xbf76f8...cf7322`; fantom `0xc2218e...c902d1`; fantom `0xc5e2b0...8764cd`; fantom `0xcf8660...564889`; fantom `0xd204e3...c94d1e`; fantom `0xd4fcd1...0979ef`; fantom `0xdcaeee...c2eaed`; fantom `0xe034c8...89f7d8`; fantom `0xe1fe8b...e40e17`; fantom `0xe21ca4...1db6c7`; fantom `0xe62745...83c275`; fantom `0xf62faf...9815a6`; fantom `0xf6d943...dcd01b`; kava `0x54950c...909f57`; kava `0x82b341...37da11`; canto `0x82b341...37da11`; canto `0xb6193d...bd1bf2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0998d0...3c94d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3b47f0...e29771` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x54950c...909f57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5bcd6c...746916` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5bd75e...24e97f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x63f2a1...ae8bbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8184fa...405990` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x991b6b...a2354f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaa70d7...a9ad89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb4b567...40b62e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb6ed26...a97131` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbecbd5...3d10a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcc2587...d856bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd91a46...cad8c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x35c052...3432ea` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [skynet.certik.com/projects/tarot](https://skynet.certik.com/projects/tarot) | CertiK | Audit | 2022-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3202] skynet.certik.com/projects/tarot — no match: Extracted from 'Audited Files' section; only two files explicitly listed. The report mentions 'View 255 Audited Files' but only two are shown. Date from 'Last Audit was delivered on 8/3/2022'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| skynet.certik.com/projects/tarot | InterestRateModel | unmatched — not counted | — | Audited Files/SHA256BInterestRateModel.solA80...A5AC | no |
| skynet.certik.com/projects/tarot | Storage | unmatched — not counted | — | Audited Files/SHA256BStorage.sol0EC...083 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| optimism | `0x54b006...7d5420` | BDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x952e9c...30335a` | BDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x5f90e2...e46401` | CDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xeb5809...dfc12d` | CDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x1d90fd...d0989e` | Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x49df1f...db62bf` | Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x8b2e28...9f0723` | Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xd7cabe...5fc83c` | Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x2217ae...8dba55` | Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xc20099...406d3a` | Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x2217ae...8dba55` | Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x4b6dae...dd4723` | Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xc20099...406d3a` | Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x88c81e...06172e` | Router02 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x8a3b1b...f53d8c` | Router02 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xa516b9...84405f` | Router02 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xd4a6a0...e01741` | Router02 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x002235...1d07b4` | Router02 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x1cafcb...54b653` | Router02 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x46fcde...301f30` | Router02 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x8184fa...405990` | Router03 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xb6ed26...a97131` | Router03 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x66e9b3...9f4859` | VeloStableVaultTokenFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xee1ecc...96cf70` | VeloStableVaultTokenFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x19283d...92dc52` | VeloVaultTokenFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x54950c...909f57` | ZipVaultTokenFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 66 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 42 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 2 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: medium=1
- Match method counts: n/a

Zero-match audit list:

- [3202] skynet.certik.com/projects/tarot

Fork inheritance lineage and inherited audits are included when available.
