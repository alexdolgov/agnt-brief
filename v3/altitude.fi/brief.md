# Agentic Audit Brief: Altitude.Fi

## Export Authority

- Production state: **published scope**
- Raw selected rows: 3 across 3 audit(s)
- Eligible audit results: 7 (3 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

⚠️ Lifecycle status: DECLINING - TVL dropped 58.5% over 90 days

## Project Overview

- Project: Altitude.Fi (`altitude.fi`)
- Website: [https://www.altitude.fi/](https://www.altitude.fi/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 141 unique implementations (196 raw deployments)
- Coverage basis: 1/10 confirmed own live verified implementations (10.0%); conservative 10.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $7,082,102.69
- On-chain TVL (included contracts): $8,494,223.58
- TVL by chain: Ethereum $8,494,223.58

## Project Description

This brief describes the observed EVM deployment and audit surface for Altitude.Fi. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 19 contract row(s) across ethereum. Structural roles: 10 unclassified, 7 core, 2 supporting. 9 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 19
- Structural roles: unclassified (10), core (7), supporting (2)
- Contract kinds: contract (19)
- Detected standards: erc1967proxy (6), ownable (2), accesscontrol (1), erc165 (1)
- Frameworks: openzeppelin (9), openzeppelin-upgradeable (3)
- Upgradeable-pattern rows: 9

## Fork Analysis

0 of 20 contracts are derived from known codebases. 20 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x15c2fb...6b94a6`, chain 1)
- UnnamedContract (`0x1f7d58...c759b9`, chain 1)
- UnnamedContract (`0x4f8048...692936`, chain 1)
- UnnamedContract (`0x602d79...4eb15d`, chain 1)
- UnnamedContract (`0x84910b...6eab58`, chain 1)
- UnnamedContract (`0x874566...4e6b1d`, chain 1)
- UnnamedContract (`0xb4165b...b565f2`, chain 1)
- UnnamedContract (`0xd130a9...6ab29b`, chain 1)
- FarmBufferDispatcher (`0x17bd4c...87fa25`, chain 1)
- Ingress (`0xbde7b9...ec7f95`, chain 1)
- Ingress (`0xc2e2f4...029e14`, chain 1)
- ProxyInitializable (`0x2ddd6d...333169`, chain 1)
- ProxyInitializable (`0x550f8a...496a6b`, chain 1)
- ProxyInitializable (`0x5717f3...5b0056`, chain 1)
- ProxyInitializable (`0x5c58df...9c1f06`, chain 1)
- ProxyInitializable (`0xaf6062...e5ee8d`, chain 1)
- ProxyInitializable (`0xdf612b...827e66`, chain 1)
- RebalanceIncentivesController (`0x560357...ae768d`, chain 1)
- RebalanceIncentivesController (`0x8f18b3...dc4d52`, chain 1)
- VaultERC20 (`0x5481d5...0595d5`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 19; live-surface rows included: 19 (19 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 17/17 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/10 (10.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 17 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 124 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 20
- Confirmed-live implementations: 17 of 141 unique; 124 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/41
- Verified + Unaudited implementations: 40
- Verified by bytecode match: 0
- Unverified implementations: 100
- Unique implementations: 141
- Raw deployments: 196
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): $8,493,598.92
- Latest audit: 2025-05 (aging)
- Audit staleness (calendar age): 0 fresh, 5 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $8,493,598.92 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Oxorio | Tier 2 | 1 | 2.4% | 2025-05 |
| Team Omega | Tier 2 | 1 | 2.4% | 2025-05 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| TokensFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378775 | `0x3c456b...7a11f9` | ✅ Audited |

### ⚠️ Verified + Unaudited (40)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| SupplyToken | token | project_anchor | own_supporting | 2 | ethereum | unit-378804 (2 proxies) | 3 deployments: ethereum `0x2ddd6d...333169`; ethereum `0x5c58df...9c1f06`; ethereum `0x5f1294...a447d6` | ⚠️ Unaudited |
| DebtToken | token | project_anchor | own_supporting | 2 | ethereum | unit-378807 (2 proxies) | 3 deployments: ethereum `0x5717f3...5b0056`; ethereum `0xdf612b...827e66`; ethereum `0xeb7a2c...c7e198` | ⚠️ Unaudited |
| PoolInstance | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x87870b...4fa4e2` | ⚠️ Unaudited |
| VaultERC20 | unknown | project_anchor | own_supporting | 2 | ethereum | unit-378802 (2 proxies) | 3 deployments: ethereum `0x5481d5...0595d5`; ethereum `0x550f8a...496a6b`; ethereum `0xaf6062...e5ee8d` | ⚠️ Unaudited |
| BorrowVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x13a50b...cd0ee3`; ethereum `0x4f7aeb...bc97f3`; ethereum `0xbdd8bd...dae3cc`; ethereum `0xe5c0a4...1f01e7` | ⚠️ Unaudited |
| ChainlinkPrice | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2dee6...05b61b` | ⚠️ Unaudited |
| ConfigurableManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x00d408...cba023`; ethereum `0xcb712c...059f68`; ethereum `0xff75e7...9ee8d6` | ⚠️ Unaudited |
| CurveV2Strategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe08011...1936a5` | ⚠️ Unaudited |
| DebtToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6a0cc5...2eb355`; ethereum `0x8d280c...66d06c` | ⚠️ Unaudited |
| FarmBufferDispatcher | unknown | project_anchor | own_supporting | 2 | ethereum | unit-378800 (2 proxies) | 3 deployments: ethereum `0x17bd4c...87fa25`; ethereum `0x45f08c...578932`; ethereum `0xd812bb...97a8fd` | ⚠️ Unaudited |
| FarmBufferDispatcher | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x367b70...d5b70b`; ethereum `0x5acc3a...05e3ea` | ⚠️ Unaudited |
| FarmBufferDispatcher | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x5b96e5...d418c0`; ethereum `0xdd4896...a20777` | ⚠️ Unaudited |
| FlashloanHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8797a8...be02e8` | ⚠️ Unaudited |
| GroomableManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x297f32...d328db`; ethereum `0x35bb44...83be58`; ethereum `0xa9bdf5...17a646` | ⚠️ Unaudited |
| Ingress | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x9e0e30...84a772`; ethereum `0xc39c58...5a34aa` | ⚠️ Unaudited |
| Ingress | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378792 | `0xbde7b9...ec7f95` | ⚠️ Unaudited |
| Ingress | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378794 | `0xc2e2f4...029e14` | ⚠️ Unaudited |
| LiquidatableManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3ddd3c...f92f4a`; ethereum `0x701390...14b1de`; ethereum `0xc06e0a...5d0813` | ⚠️ Unaudited |
| LiquidationBot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x925ab2...f26ee4` | ⚠️ Unaudited |
| Morpho | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbbbbb...eeffcb` | ⚠️ Unaudited |
| MorphoFlashLoanStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2cf52...580b02` | ⚠️ Unaudited |
| MorphoVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0xb649d1...0cef44`; ethereum `0xb68d82...bb9005`; ethereum `0xb73737...98cb56`; ethereum `0xc1d41a...8393dc`; ethereum `0xc89cfa...925300`; ethereum `0xcd91fa...cb1068` | ⚠️ Unaudited |
| MorphoVaultV2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd36d47...c1f48e` | ⚠️ Unaudited |
| RebalanceAutomation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3c732...15faaa` | ⚠️ Unaudited |
| RebalanceIncentivesController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x052f21...5c6f16`; ethereum `0x299cd3...006e62`; ethereum `0x438661...79119e`; ethereum `0x5e55df...fc5f04`; ethereum `0xbe7924...5e3d26`; ethereum `0xdfc7c8...d5cd90` | ⚠️ Unaudited |
| RebalanceIncentivesController | governance | project_anchor | own_supporting | 0 | ethereum | unit-378778 | `0x560357...ae768d` | ⚠️ Unaudited |
| RebalanceIncentivesController | governance | project_anchor | own_supporting | 0 | ethereum | unit-378788 | `0x8f18b3...dc4d52` | ⚠️ Unaudited |
| SnapshotableManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x090056...2e84d8`; ethereum `0xaf8aa5...ee4ea4`; ethereum `0xd19ac9...7d995d` | ⚠️ Unaudited |
| StrategyAaveV3 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbaeb17...852bdc` | ⚠️ Unaudited |
| StrategyMorphoV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf2e05...14a35e` | ⚠️ Unaudited |
| StrategyPendlePT | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0xb4b973...8be9f8`; ethereum `0xbd1e64...44a407`; ethereum `0xf3a574...85a87b`; ethereum `0xf3d73e...92ec13`; ethereum `0xf43986...952e0d`; ethereum `0xf9de0e...5dd606` | ⚠️ Unaudited |
| SupplyToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xe1a846...1971b2`; ethereum `0xe30afe...e8152e` | ⚠️ Unaudited |
| TokensFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x5c792d...885dc6`; ethereum `0xf10b37...d0bcb0` | ⚠️ Unaudited |
| UniswapV3Strategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xc392d6...f4d611`; ethereum `0xfde703...476848` | ⚠️ Unaudited |
| UserLiquidationHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b8566...5249c2` | ⚠️ Unaudited |
| VaultCoreV1Initializer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x4b875a...b26231`; ethereum `0x501923...a4ac9c`; ethereum `0xdd2ad2...d6c0e7` | ⚠️ Unaudited |
| VaultERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x50659b...7eec8c`; ethereum `0x57192e...af1536`; ethereum `0x994a41...2f0f36`; ethereum `0xe59247...7d4cec` | ⚠️ Unaudited |
| VaultRegistryV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x37f310...b6e7b9`; ethereum `0x999543...7d5387` | ⚠️ Unaudited |
| VaultRegistryV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3dbe2d...c9b9cd`; ethereum `0x62c80d...33ef64` | ⚠️ Unaudited |
| VaultRegistryV1 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-378806 | 2 deployments: ethereum `0x89cfee...af17ba`; ethereum `0x8c66df...f12ba8` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (100)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Proxy (impl: 0x6317d0ebf4d37528c927019ab5b18329ff2542ce) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x5bb85d...e28750`; ethereum `0x6317d0...2542ce` | ❓ Unverified |
| Proxy (impl: 0xe1af3b82e18b09ab13a49a085e26b68f336e7314) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xdd39b8...61f73e`; ethereum `0xe1af3b...6e7314` | ❓ Unverified |
| Proxy (impl: 0xf14a62a5b78e93760bc97fad34704024c6cf02b9) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xb381df...55b6d8`; ethereum `0xf14a62...cf02b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x048d58...361b9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x075275...777c60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x07f61d...e7a24a`; ethereum `0x1c1627...044268` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08bd49...8e19ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a6191...03ec70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b708b...5ef9d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c3d8f...841e46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ebe43...c45234` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13ee63...8c72c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1476f0...7a3997` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1487e1...e51098` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 1 | ethereum | unit-378798 | 2 deployments: ethereum `0x15c2fb...6b94a6`; ethereum `0x1f7d58...c759b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1bd6c9...d30770` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1da11e...1696b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1da520...00a82d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27825e...4d1fa0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28d7fa...61c67e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2aeba9...1f4672` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b7d4e...9342a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d2918...d4888b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d3518...a7d459` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ebbe0...1337fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39a993...98c0af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b1f0a...03616c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c9e45...093e74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e5777...fb3563` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3fc8cd...dc68a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x432391...7385da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43eb3e...b16bdd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45c9d9...3f09e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b17b0...15380d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378776 | `0x4f8048...692936` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ff6e3...fecf36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x505b5c...335027` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x505bc1...b1a39e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54b816...9db0d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55d010...a54203` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5715e6...cae155` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a9298...31707b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b7ac0...9a706d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378780 | `0x602d79...4eb15d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x687aef...edcb9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6abe6b...72521a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x711138...cded63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x775826...01dd5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78003d...5b9fe2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7aaa94...66f040` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x840449...a0c928` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x847274...360c2e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378783 | `0x84910b...6eab58` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378785 | `0x874566...4e6b1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x88db8d...b6c081` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89f8c9...fdbbeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f3ea9...a9428f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x901f06...22492f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92a352...bc01f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96dfad...6978f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98bf71...cd120c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ec90c...cfd9d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f1339...228020` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1a717...85aac5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2327f...54929d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2c814...1abeda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa69dd0...74b399` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa75018...6804f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab769b...637061` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1a3f6...01fdd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2ba12...f700b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2c41d...67364f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378790 | `0xb4165b...b565f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb445db...8c121e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb510cd...e15174` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbed2c...0bfbd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbea847...78f1bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0631e...c90447` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc29841...bf9bba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6c87c...8368ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca9fec...056f0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc96c5...7c0094` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd731d...8ff9a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1254a...192917` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378795 | `0xd130a9...6ab29b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd168b6...742fd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd55f01...11cce8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xd74e56...6002b3`; ethereum `0xed74fd...ace296` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8c515...2c045b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda71b4...6326bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd2e73...c35f26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd8fdf...116ded` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf70a6...4bbf1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0dd03...6da29d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4752e...97d8d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4a19f...a4a45f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf60824...1618d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf73ac7...42f2f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd2f78...dd30d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe4b09...7668d8` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [202505-Altitude.pdf](https://github.com/OmegaAudits/audits/blob/main/202505-Altitude.pdf) | Team Omega | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 12 | high |
| [Altitude-v2-Audit-Report.pdf](https://oxor-io.github.io/public_audits/Altitude/Altitude-v2-Audit-Report.pdf) | Oxorio | Audit | 2025-05 | aging | Direct | n/a | matched | 0 | 0 | 0 | 0 | n/a |
| [202501-Altitude-parallel-farming.pdf](https://github.com/OmegaAudits/audits/blob/main/202501-Altitude-parallel-farming.pdf) | Team Omega | Audit | 2025-05 | aging | Direct | n/a | matched | 1 | 0 | 0 | 8 | n/a |
| [202408-Altitude-morpho-integration.pdf](https://github.com/OmegaAudits/audits/blob/main/202408-Altitude-morpho-integration.pdf) | Team Omega | Audit | 2025-01 | aging | Direct | n/a | no match | 0 | 0 | 0 | 2 | n/a |
| [Altitude-Audit-Report.pdf](https://oxor-io.github.io/public_audits/Altitude/Altitude-Audit-Report.pdf) | Oxorio | Audit | 2024-08 | aging | Direct | n/a | matched | 0 | 0 | 0 | 0 | n/a |
| [202207-Altitude-v1.0.pdf](https://github.com/OmegaAudits/audits/blob/main/202207-Altitude-v1.0.pdf) | Team Omega | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 24 | high |
| [202310-Altitude-v1.1.pdf](https://github.com/OmegaAudits/audits/blob/main/202310-Altitude-v1.1.pdf) | Team Omega | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [1988] 202505-Altitude.pdf — no match: Extracted contract names from findings and scope description. The report covers changes since last audit, including new contracts (StrategyPendleBase, StrategyPendlePT, StrategyPendleLP, RebalanceIncentivesController) and existing contracts (Ingress, BorrowVerifier, VaultCore, VaultETH, VaultERC20, MorphoVault, StrategyMorphoV1, FarmStrategy).
- [1989] Altitude-v2-Audit-Report.pdf — matched: ambiguous_frozen_extraction_cache
- [1990] 202501-Altitude-parallel-farming.pdf — matched: No reason recorded
- [1991] 202408-Altitude-morpho-integration.pdf — no match: No reason recorded
- [1992] Altitude-Audit-Report.pdf — matched: ambiguous_frozen_extraction_cache
- [1993] 202207-Altitude-v1.0.pdf — no match: Extracted 24 contract names from the scope section and findings headers. The audit report date is September 6, 2023 (the final update date).
- [1994] 202310-Altitude-v1.1.pdf — no match: Extracted 14 contract names from the audit report's scope section and findings. The audit date is the final update date (March 21, 2024).

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 202505-Altitude.pdf | Ingress | ambiguous — not counted | Ingress (alternative) `0xbde7b9...ec7f95` — deployed 2025-05-22 00:30:23+03 — liveness: live (current_address_book_code)<br>Ingress (alternative) `0xc2e2f4...029e14` — deployed 2025-05-29 13:13:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 202505-Altitude.pdf | BorrowVerifier | unmatched — not counted | — | Finding BV1: 'An attacker can DoS borrowOnBehalfOf' in BorrowVerifier contract | no |
| 202505-Altitude.pdf | StrategyPendleBase | unmatched — not counted | — | Findings SPB1, SPB2, SBP3 in StrategyPendleBase | no |
| 202505-Altitude.pdf | StrategyPendlePT | unmatched — not counted | — | Findings SPP1, SPP2 in StrategyPendlePT | no |
| 202505-Altitude.pdf | StrategyPendleLP | unmatched — not counted | — | Finding SPL1 in StrategyPendleLP | no |
| 202505-Altitude.pdf | RebalanceIncentivesController | ambiguous — not counted | RebalanceIncentivesController (alternative) `0x8f18b3...dc4d52` — deployed 2025-09-26 18:29:23+03 — liveness: live (current_address_book_code)<br>RebalanceIncentivesController (alternative) `0x560357...ae768d` — deployed 2025-09-26 18:28:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 202505-Altitude.pdf | VaultCore | unmatched — not counted | — | Mentioned in BV1 resolution: 'include it in VaultCore' | no |
| 202505-Altitude.pdf | VaultETH | unmatched — not counted | — | Finding VV1: 'lock() modifier not applied consistently' in VaultETH | no |
| 202505-Altitude.pdf | VaultERC20 | ambiguous — not counted | ProxyInitializable (proxy) (alternative) `0x550f8a...496a6b` — deployed 2025-05-22 00:33:11+03 — liveness: live (code_present_context)<br>ProxyInitializable (proxy) (alternative) `0xaf6062...e5ee8d` — deployed 2025-05-29 13:45:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 202505-Altitude.pdf | MorphoVault | unmatched — not counted | — | Finding G1 (skim) in MorphoVault | no |
| 202505-Altitude.pdf | StrategyMorphoV1 | unmatched — not counted | — | Finding G1 (skim) in StrategyMorphoV1 | no |
| 202505-Altitude.pdf | FarmStrategy | unmatched — not counted | — | Mentioned in SBP3 resolution: 'moved to the FarmStrategy base contract' | no |
| 202501-Altitude-parallel-farming.pdf | CurveV2Dispatcher | unmatched — not counted | — | — | no |
| 202501-Altitude-parallel-farming.pdf | FarmDispatcher | unmatched — not counted | — | — | no |
| 202501-Altitude-parallel-farming.pdf | FarmDropStrategy | unmatched — not counted | — | — | no |
| 202501-Altitude-parallel-farming.pdf | FarmStrategy | unmatched — not counted | — | — | no |
| 202501-Altitude-parallel-farming.pdf | HarvestableManager | unmatched — not counted | — | — | no |
| 202501-Altitude-parallel-farming.pdf | InterestToken | unmatched — not counted | — | — | no |
| 202501-Altitude-parallel-farming.pdf | StrategyMorphoV1 | unmatched — not counted | — | — | no |
| 202501-Altitude-parallel-farming.pdf | SwapStrategy | unmatched — not counted | — | — | no |
| 202501-Altitude-parallel-farming.pdf | TokensFactory | own contract | TokensFactory (selected) `0x3c456b...7a11f9` — deployed 2025-05-22 00:21:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 202408-Altitude-morpho-integration.pdf | MorphoVault | unmatched — not counted | — | — | no |
| 202408-Altitude-morpho-integration.pdf | StrategyMorphoV1 | unmatched — not counted | — | — | no |
| 202207-Altitude-v1.0.pdf | RolesManageable | unmatched — not counted | — | listed in scope under common directory | no |
| 202207-Altitude-v1.0.pdf | MigrationDecisionMaker | unmatched — not counted | — | listed in scope under decision-makers directory | no |
| 202207-Altitude-v1.0.pdf | RebalanceDecisionMaker | unmatched — not counted | — | listed in scope under decision-makers directory | no |
| 202207-Altitude-v1.0.pdf | SafetyDecisionMaker | unmatched — not counted | — | listed in scope under decision-makers directory; also renamed to FarmModeDecisionMaker | no |
| 202207-Altitude-v1.0.pdf | FarmModeDecisionMaker | unmatched — not counted | — | renamed from SafetyDecisionMaker, mentioned in findings | no |
| 202207-Altitude-v1.0.pdf | HarvestHelper | unmatched — not counted | — | listed in scope under libraries directory | no |
| 202207-Altitude-v1.0.pdf | GroomableManager | unmatched — not counted | — | listed in scope under vaults/v1/extensions/groomable | no |
| 202207-Altitude-v1.0.pdf | HarvestableManager | unmatched — not counted | — | listed in scope under vaults/v1/extensions/harvestable | no |
| 202207-Altitude-v1.0.pdf | HarvestableVault | unmatched — not counted | — | listed in scope under vaults/v1/extensions/harvestable | no |
| 202207-Altitude-v1.0.pdf | InterestToken | unmatched — not counted | — | listed in scope under tokens directory | no |
| 202207-Altitude-v1.0.pdf | rToken | unmatched — not counted | — | listed in scope under tokens directory | no |
| 202207-Altitude-v1.0.pdf | LiquidatableManager | unmatched — not counted | — | listed in scope under vaults/v1/extensions/liquidatable | no |
| 202207-Altitude-v1.0.pdf | VaultConfiguration | unmatched — not counted | — | listed in scope under vaults/v1 | no |
| 202207-Altitude-v1.0.pdf | VaultCore | unmatched — not counted | — | listed in scope under vaults/v1 | no |
| 202207-Altitude-v1.0.pdf | VaultEth | unmatched — not counted | — | listed in scope under vaults/v1/ETH | no |
| 202207-Altitude-v1.0.pdf | VaultERC20 | ambiguous — not counted | ProxyInitializable (proxy) (alternative) `0x550f8a...496a6b` — deployed 2025-05-22 00:33:11+03 — liveness: live (code_present_context)<br>ProxyInitializable (proxy) (alternative) `0xaf6062...e5ee8d` — deployed 2025-05-29 13:45:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 202207-Altitude-v1.0.pdf | VaultRegistry | unmatched — not counted | — | listed in scope under vaults/v1 | no |
| 202207-Altitude-v1.0.pdf | ChainlinkPrice | unmatched — not counted | — | listed in scope under oracles directory | no |
| 202207-Altitude-v1.0.pdf | UniswapV3Twap | unmatched — not counted | — | listed in scope under oracles directory | no |
| 202207-Altitude-v1.0.pdf | StrategyGenericPool | unmatched — not counted | — | listed in scope under strategies directory | no |
| 202207-Altitude-v1.0.pdf | Aavev2FlashLoanStrategy | unmatched — not counted | — | listed in scope under strategies directory | no |
| 202207-Altitude-v1.0.pdf | StrategyAave | unmatched — not counted | — | listed in scope under strategies directory | no |
| 202207-Altitude-v1.0.pdf | StrategyCompoundBase | unmatched — not counted | — | listed in scope under strategies directory | no |
| 202207-Altitude-v1.0.pdf | UniswapV3Strategy | unmatched — not counted | — | listed in scope under strategies directory | no |
| 202310-Altitude-v1.1.pdf | AccessControl | unmatched — not counted | — | listed in scope and findings | no |
| 202310-Altitude-v1.1.pdf | CommitMath | unmatched — not counted | — | listed in scope and findings | no |
| 202310-Altitude-v1.1.pdf | ChainlinkPrice | unmatched — not counted | — | listed in scope and findings | no |
| 202310-Altitude-v1.1.pdf | DebtToken | ambiguous — not counted | ProxyInitializable (proxy) (alternative) `0x5717f3...5b0056` — deployed 2025-05-29 13:45:47+03 — liveness: live (current_address_book_code)<br>ProxyInitializable (proxy) (alternative) `0xdf612b...827e66` — deployed 2025-05-22 00:33:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 202310-Altitude-v1.1.pdf | HarvestableManager | unmatched — not counted | — | listed in scope and findings | no |
| 202310-Altitude-v1.1.pdf | HarvestTypes | unmatched — not counted | — | listed in scope and findings | no |
| 202310-Altitude-v1.1.pdf | LiquidationManager | unmatched — not counted | — | listed in scope and findings | no |
| 202310-Altitude-v1.1.pdf | StrategyCompoundBase | unmatched — not counted | — | listed in scope and findings | no |
| 202310-Altitude-v1.1.pdf | StrategyAaveV2 | unmatched — not counted | — | listed in scope and findings | no |
| 202310-Altitude-v1.1.pdf | StrategyCompoundV3 | unmatched — not counted | — | listed in scope and findings | no |
| 202310-Altitude-v1.1.pdf | StrategyGenericPool | unmatched — not counted | — | listed in scope and findings | no |
| 202310-Altitude-v1.1.pdf | UniswapV3Strategy | unmatched — not counted | — | listed in scope and findings | no |
| 202310-Altitude-v1.1.pdf | VaultCore | unmatched — not counted | — | listed in scope and findings | no |
| 202310-Altitude-v1.1.pdf | VaultRegistry | unmatched — not counted | — | listed in scope and findings | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x2ddd6d...333169` | SupplyToken | token | $5,310,820.15 | Verified native implementation with $5,310,820.15 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5717f3...5b0056` | DebtToken | token | $3,182,778.76 | Verified native implementation with $3,182,778.76 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5481d5...0595d5` | VaultERC20 | unknown | $0.01 | Verified native implementation with $0.01 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x17bd4c...87fa25` | FarmBufferDispatcher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xbde7b9...ec7f95` | Ingress | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc2e2f4...029e14` | Ingress | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x560357...ae768d` | RebalanceIncentivesController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8f18b3...dc4d52` | RebalanceIncentivesController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x89cfee...af17ba` | VaultRegistryV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 43 |
| upstream | 8 |
| standard_library | 0 |
| needs_review | 90 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 5 ambiguous, 55 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3
- Match method counts: unique_name=3

Zero-match audit list:

- [1988] 202505-Altitude.pdf
- [1991] 202408-Altitude-morpho-integration.pdf
- [1993] 202207-Altitude-v1.0.pdf
- [1994] 202310-Altitude-v1.1.pdf

Fork inheritance lineage and inherited audits are included when available.
