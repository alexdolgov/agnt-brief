# Agentic Audit Brief: SingularV

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 27 (0 matched; 27 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: SingularV (`singularv`)
- Website: [https://app.morpho.org/ethereum/curator/singularv](https://app.morpho.org/ethereum/curator/singularv)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, bsc, celo, cronos, ethereum, gnosis, hyperliquid, ink, kaia, linea, mode, optimism, plasma, polygon, scroll, sei, sonic, unichain
- Contract surface: 305 unique implementations (305 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $698,977.59
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for SingularV. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 30 contract row(s) across arbitrum, avalanche, base, bsc, celo, cronos, ethereum, gnosis, hyperliquid, ink, kaia, linea, mode, optimism, plasma, polygon, scroll, sei, sonic, unichain. Structural roles: 22 supporting, 8 core. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 30
- Structural roles: supporting (22), core (8)
- Contract kinds: contract (30)
- Detected standards: multicall (3), erc1967proxy (1), erc20permit (1), ownable (1)
- Frameworks: openzeppelin (18), solmate (6), permit2 (4), openzeppelin-upgradeable (2), chainlink (1), layerzero (1)
- Upgradeable-pattern rows: 2

## Fork Lineage

This project reuses audited code from **Morpho** (`morpho`).
24 audits inherited from `morpho`.

Total inherited audits: 24. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Indexed contracts: 30; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 236 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 69 discovered implementations excluded (6 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All verified address-book-owned implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 305
- Raw deployments: 305
- Audits discovered: 27 (3 direct, 24 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-12 (fresh)
- Audit staleness (calendar age): 9 fresh, 8 aging, 10 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (30)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveV2MigrationAdapter | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-255411 | `0x402888...87961b` | ⚠️ Unaudited |
| AaveV2MigrationBundler | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-255572 | `0xb3dcc7...aa8e76` | ⚠️ Unaudited |
| AaveV3MigrationAdapter | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-255372 | `0x2cc8d5...bdb806` | ⚠️ Unaudited |
| AaveV3MigrationAdapter | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-255410 | `0x4011dc...a59ca3` | ⚠️ Unaudited |
| AaveV3MigrationAdapter | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-255564 | `0xb09e40...07d475` | ⚠️ Unaudited |
| AaveV3OptimizerMigrationAdapter | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-255533 | `0x9e2ea2...5ad972` | ⚠️ Unaudited |
| AdaptiveCurveIrm | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-255496 | `0x870ac1...ba00bc` | ⚠️ Unaudited |
| Bundler3 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-255447 | `0x656619...c90245` | ⚠️ Unaudited |
| CompoundV2MigrationAdapter | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-255529 | `0x9b89c0...8f1101` | ⚠️ Unaudited |
| CompoundV3MigrationAdapter | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-255664 | `0xdba5bd...b26773` | ⚠️ Unaudited |
| ERC20WrapperAdapter | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-255737 | `0xf83d17...87f962` | ⚠️ Unaudited |
| EthereumBundler | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-255548 | `0xa7995f...f55107` | ⚠️ Unaudited |
| EthereumBundlerV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-256289 | `0x4095f0...e30077` | ⚠️ Unaudited |
| EthereumGeneralAdapter1 | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-255422 | `0x4a6c31...be0ae0` | ⚠️ Unaudited |
| MetaMorphoFactory | registry | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-255554 | `0xa9c3d3...c41101` | ⚠️ Unaudited |
| MetaMorphoV1_1Factory | registry | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-255338 | `0x1897a8...535c24` | ⚠️ Unaudited |
| Morpho | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-255592 | `0xbbbbbb...eeffcb` | ⚠️ Unaudited |
| MorphoChainlinkOracleV2Factory | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-255399 | `0x3a7bb3...3ad766` | ⚠️ Unaudited |
| MorphoMarketV1AdapterV2Factory | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-255386 | `0x32bb1c...61ccc1` | ⚠️ Unaudited |
| MorphoOFTAdapter | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-255427 | `0x50d3d6...5649d9` | ⚠️ Unaudited |
| MorphoToken | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-255524 | `0x9994e3...330999` | ⚠️ Unaudited |
| MorphoTokenEthereum | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-256290 | `0x58d97b...69c2b2` | ⚠️ Unaudited |
| MorphoVaultV1AdapterFactory | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-255631 | `0xd1b8e2...f63394` | ⚠️ Unaudited |
| ParaswapAdapter | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-255294 | `0x03b525...c6c38f` | ⚠️ Unaudited |
| PublicAllocator | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-255759 | `0xfd32fa...91c75d` | ⚠️ Unaudited |
| RegistryList | registry | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-255391 | `0x3696c5...d9364e` | ⚠️ Unaudited |
| UniversalRewardsDistributor | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-255387 | `0x330eef...e61ddb` | ⚠️ Unaudited |
| UrdFactory | registry | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-255530 | `0x9baa51...ee7c8d` | ⚠️ Unaudited |
| VaultV2Factory | registry | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-255538 | `0xa1d94f...6c0405` | ⚠️ Unaudited |
| Wrapper | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-255531 | `0x9d03bb...0e5123` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (275)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00a58b...457012` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0af5be...952466` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b84ed...8fceb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0fbad9...9f803c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12fa40...247298` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x155134...5e3c40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x162781...ea06d6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-255329 | `0x16f38d...6d2f9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x189110...eee125` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-255364 | `0x26bf52...8c8647` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28021e...edf0c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c83a2...9b137a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34cd04...af7fcd` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x3585e3...092884` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3716aa...a4a791` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x391a3f...c7653a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-255396 | `0x3a0e2e...479558` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ae18a...5ec95c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b0eef...749f12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ef83a...2237b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f0a37...f8fcc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x553c01...8ba481` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58a421...b759fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5935ff...04aedb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60d318...00b79a` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x627d51...a8bf8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a42f8...7bd52b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c2ff5...ad62cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d6a3b...4bcedc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6fc83e...9d2f42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79370e...2993e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a9122...c2f85e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d8bf8...fe612b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7fc354...98be3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8183d4...f2bead` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x834fa7...c8e8a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x855dbe...319feb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b2f92...b0bb0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e01ed...827498` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9282db...197620` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9730d0...4f64a9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-255522 | `0x98ccb1...2f9bdc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f3c09...6d644a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa00666...340180` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa01d7c...ac28a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa4a4b6...9a3e7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9132a...cc6371` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaea7ef...1431c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7c243...4dd152` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbce736...ca876e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe858d...aadd4b` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xbfc8d6...4f7de8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc13a3c...ed28cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1523b...f21fe5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2b1e0...8ddd90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc85ce8...958b55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8d22b...54caaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca0ccc...4cf044` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd334eb...955c43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd5661d...e3ef97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8237e...f789dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda8d0b...d67a97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdae77f...0c61a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdebc92...528765` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe25581...e95693` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe510e1...cd8403` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe785a2...7c676f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea4f29...05760f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xefb565...1254f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf02615...653f20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf133fa...6dcf5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfcb8b5...2975d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfdc69d...da4daf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-255767 | `0x0d68a9...b40658` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-255768 | `0x1ec408...9dad70` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-255770 | `0x31f539...92adc5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-255773 | `0x3bb6a6...92839a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-255777 | `0x6128b6...0870ef` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-255780 | `0x71b299...2cb434` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-255781 | `0x79481c...f141f0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-255785 | `0x8cd70a...a06ef6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-255790 | `0xce95af...64af92` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-255791 | `0xd1346b...aad32b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-255795 | `0xe41aec...a21498` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-255797 | `0xee9f7c...a00cf3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-255798 | `0xfbcd3c...507c05` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | cronos | unit-255932 | `0x05519a...1ed3b4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | cronos | unit-255933 | `0x1db002...7c0607` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | cronos | unit-255934 | `0x295e0a...e5f0dd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | cronos | unit-255935 | `0x44b2c8...a785de` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | cronos | unit-255936 | `0x8840f9...11746c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | cronos | unit-255940 | `0xb1c59f...4ab6bc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | cronos | unit-255942 | `0xca470c...74d513` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | cronos | unit-255943 | `0xdf9a1d...f7434e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | cronos | unit-255944 | `0xe39f6b...4fa121` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | cronos | unit-255945 | `0xea67e5...2e9d3a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | cronos | unit-255948 | `0xfeabef...ca02d5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-256095 | `0x01b0bd...67a83a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-256097 | `0x16d40b...15bf91` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-256101 | `0x7112d9...81f979` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-256103 | `0x842bec...6d0495` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-256104 | `0x87c936...2ae3a3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-256108 | `0x929836...905d72` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-256112 | `0xbb12b0...852f82` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-256113 | `0xdf2035...135236` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | unit-255800 | `0x2ac3ea...d0997f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | unit-255801 | `0x6f3313...92270a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | unit-255805 | `0x832625...40973b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | unit-255807 | `0x8ffd9e...476c32` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | unit-255808 | `0xae5293...ff05c5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | unit-255809 | `0xb74d4d...351c66` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | unit-255812 | `0xff3623...61bf68` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | unichain | unit-255823 | `0x432695...1f7539` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | unichain | unit-255829 | `0x617f8d...34fa9a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | unichain | unit-255833 | `0x72cc7a...a57cc4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | unichain | unit-255836 | `0x7dd857...b58bc3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | unichain | unit-255840 | `0x8f5ae9...4a140a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | unichain | unit-255844 | `0x9a13bd...f9c58c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | unichain | unit-255845 | `0x9a6061...f53f0e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | unichain | unit-255852 | `0xaa870d...0a59c9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | unichain | unit-255854 | `0xb0c9a1...38c7c9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | unichain | unit-255859 | `0xb9130d...41becb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | unichain | unit-255862 | `0xc11329...7e30a0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | unichain | unit-255864 | `0xc9b34c...04a0c9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | unichain | unit-255874 | `0xe9ede3...10bdc0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | unichain | unit-255878 | `0xf1ab9e...7ad754` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-255893 | `0x1bf0c2...a25f67` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-255894 | `0x1ff789...295215` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-255895 | `0x2d9c3a...8db589` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-255899 | `0x5f2617...24db8d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-255908 | `0xa9c87d...dddc98` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-255909 | `0xb261b5...1b7047` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-255910 | `0xb70a43...8ba564` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-255912 | `0xc0006f...851dd0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-255913 | `0xc11a53...4f97cf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-255919 | `0xe675a2...fbf0b0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-255921 | `0xeb174f...e2888a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-255922 | `0xfac15a...5df0d3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-255923 | `0xfc5be7...0f0ac9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic | unit-255924 | `0x0ce9e3...4f12e8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic | unit-255925 | `0x31d5ae...201eaf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic | unit-255926 | `0x6cef2e...e59b36` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic | unit-255927 | `0x7da59f...feb86d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic | unit-255928 | `0xb06f1a...9a9aff` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic | unit-255929 | `0xd6c916...cfa95f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic | unit-255930 | `0xdefcf2...7c473f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic | unit-255931 | `0xdfa21a...8836ee` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | hyperliquid | unit-256268 | `0x517505...edf4fc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | hyperliquid | unit-256270 | `0x68e37d...0c57cd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | hyperliquid | unit-256275 | `0x857b55...089aee` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | hyperliquid | unit-256277 | `0xa3f504...44fa0e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | hyperliquid | unit-256279 | `0xaeff6e...eb72be` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | hyperliquid | unit-256281 | `0xd4a426...9b7483` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | hyperliquid | unit-256282 | `0xd7217e...967da7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | hyperliquid | unit-256283 | `0xd7f48a...934ae4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | hyperliquid | unit-256286 | `0xdf5202...580cac` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | hyperliquid | unit-256287 | `0xeb476f...6f9af5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | hyperliquid | unit-256288 | `0xec051b...f24e53` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sei | unit-255882 | `0x02e0e7...56f601` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sei | unit-255883 | `0x4bd68c...f23f07` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sei | unit-255884 | `0x6efa8e...ea56c4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sei | unit-255885 | `0x8dea49...118291` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sei | unit-255886 | `0xc9cdac...a9094c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sei | unit-255887 | `0xd87850...159d6b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sei | unit-255888 | `0xf94573...5761ad` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | kaia | unit-256151 | `0x27880b...ffaba9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | kaia | unit-256153 | `0x3e89c1...ad4602` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | kaia | unit-256154 | `0x4d04c3...aebcf4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | kaia | unit-256158 | `0x8e36c2...4a7823` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | kaia | unit-256159 | `0xa4e2ba...bb5cf2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | kaia | unit-256160 | `0xa8beeb...994cd2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | kaia | unit-256162 | `0xf2aecd...bd9144` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | kaia | unit-256163 | `0xfca122...ca03bc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-256166 | `0x123f31...af7223` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-256168 | `0x1f8076...69f7da` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-256170 | `0x230556...200bfb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-256173 | `0x2dc205...aebd3d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-256176 | `0x450112...2b5857` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-256177 | `0x464159...d22687` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-256179 | `0x5400db...ce1333` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-256180 | `0x5c2531...7db10a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-256181 | `0x6abe8a...562f71` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-256182 | `0x6bfd81...3920c4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-256184 | `0x727645...ca25d8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-256186 | `0x85d481...fbbb70` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-256190 | `0x9a1b37...51c0eb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-256191 | `0xa090dd...f90467` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-256199 | `0xa9c3d3...c41101` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-256204 | `0xb27aa2...5b36f5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-256206 | `0xb98c94...ae746a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-256208 | `0xbaa5cc...2a0842` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-256210 | `0xbbbbbb...eeffcb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-256218 | `0xcae292...677108` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-256222 | `0xdeef55...17e9ae` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-256226 | `0xf42d9c...604642` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-256230 | `0xff62a7...bf5918` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | plasma | unit-256232 | `0x171b28...6f9896` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | plasma | unit-256234 | `0x2ff74a...cee249` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | plasma | unit-256236 | `0x42432f...3c624e` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | plasma | unit-256240 | `0x5476ae...525f7a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | plasma | unit-256242 | `0x694104...4f5830` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | plasma | unit-256244 | `0x6a7389...4db0ce` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | plasma | unit-256251 | `0xb24175...c83255` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | plasma | unit-256253 | `0xb41aa3...04ed11` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | plasma | unit-256258 | `0xd7373d...02ab30` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | plasma | unit-256260 | `0xec6f72...3b1e45` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | plasma | unit-256262 | `0xf37f73...cf0f71` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mode | unit-255949 | `0x063a8f...60c481` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mode | unit-255954 | `0xae5b08...d79278` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mode | unit-255957 | `0xd85ce6...840564` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mode | unit-255958 | `0xe3d46a...ae1d1c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mode | unit-255959 | `0xee868b...8f0120` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mode | unit-255960 | `0xf53925...2ee0a4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mode | unit-255961 | `0xf9380f...71f39d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mode | unit-255962 | `0xfea0ed...34305d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-255964 | `0x192367...a40c93` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-255965 | `0x1fa443...b48c13` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-255970 | `0x40bd67...40df48` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-255971 | `0x66f305...fd06da` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-255972 | `0x6b46fa...bf7971` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-255973 | `0x6c247b...518f5e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-255975 | `0x769583...8c355e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-255977 | `0x7b792e...367fbf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-255980 | `0x86ca77...96444b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-255982 | `0x878988...ef0c82` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-255987 | `0x98ce5d...2e41b5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-255989 | `0x9954af...788b88` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-255993 | `0xaa5c30...1e4726` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-255999 | `0xc00eb3...763c65` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-256005 | `0xd8fc8a...086793` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-256008 | `0xef84b1...a9859b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-256010 | `0xfc3329...ccaae0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | celo | unit-256016 | `0x3a4849...be9ffa` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | celo | unit-256018 | `0x3e7544...467230` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | celo | unit-256020 | `0x3fe121...de3188` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | celo | unit-256022 | `0x683caa...1a5ded` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | celo | unit-256024 | `0x6870aa...688275` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | celo | unit-256033 | `0xbd142f...9a67d9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | celo | unit-256035 | `0xd24ecd...66a569` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-256039 | `0x0ed047...a30005` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-256047 | `0x66dc12...b2e9a6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-256057 | `0x708e04...cb3f92` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-256064 | `0x895383...4f982c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-256065 | `0x8bcc01...b29e96` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-256067 | `0x9633d2...769b8b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-256073 | `0xb6ac94...968aa4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-256077 | `0xf0c129...db13f2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-256080 | `0xf7b1d9...ec6a55` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ink | unit-256118 | `0x288473...a83411` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ink | unit-256119 | `0x3fffe2...17b439` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ink | unit-256120 | `0x7db0f1...9bb6bc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ink | unit-256121 | `0x854168...cd3357` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ink | unit-256122 | `0x857f3e...0d3042` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ink | unit-256123 | `0x951540...0ee57b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ink | unit-256124 | `0xb8b2ad...683610` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ink | unit-256125 | `0xd3f395...a9904b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-256126 | `0x122ea8...5d27d5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-256127 | `0x1ee8ec...242625` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-256129 | `0x2d4cf0...c7610b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-256131 | `0x3fff72...8f0105` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-256132 | `0x454dab...68255d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-256133 | `0x5dc11c...52a5d0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-256136 | `0x6b0d71...262c9f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-256137 | `0x6faf26...9eed87` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-256141 | `0x85c2ef...59cdee` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-256142 | `0xa148a8...089ba7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-256144 | `0xcab7c6...75f8ce` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | scroll | unit-256083 | `0x2d012e...df5a55` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | scroll | unit-256084 | `0x56b657...bc9295` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | scroll | unit-256085 | `0x60f915...b60768` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | scroll | unit-256086 | `0x78f44e...a359c1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | scroll | unit-256088 | `0x8a7f67...8a9927` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | scroll | unit-256090 | `0xa5ea75...18cb90` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | scroll | unit-256091 | `0xb59619...a9e24e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | scroll | unit-256093 | `0xd2780f...361525` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2023-11-13-morpho-blue-cantina-managed-review.pdf](https://github.com/morpho-org/morpho-blue/blob/main/audits/2023-11-13-morpho-blue-cantina-managed-review.pdf) | Spearbit | Audit | 2023-11 | stale | Inherited from Morpho | n/a | no match | 0 | 0 | 0 | 22 | n/a |
| [2024-01-05-morpho-blue-cantina-competition.pdf](https://github.com/morpho-org/morpho-blue/blob/main/audits/2024-01-05-morpho-blue-cantina-competition.pdf) | Spearbit | Audit | 2024-01 | stale | Inherited from Morpho | n/a | no match | 0 | 0 | 0 | 5 | n/a |
| [2023-11-14-metamorpho-cantina-managed-review.pdf](https://github.com/morpho-org/metamorpho/blob/main/audits/2023-11-14-metamorpho-cantina-managed-review.pdf) | Spearbit | Audit | 2023-11 | stale | Inherited from Morpho | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [2024-01-05-periphery-cantina-competition.pdf](https://github.com/morpho-org/metamorpho/blob/main/audits/2024-01-05-periphery-cantina-competition.pdf) | Spearbit | Audit | 2024-01 | stale | Inherited from Morpho | n/a | no match | 0 | 0 | 0 | 9 | n/a |
| [ChainSecurity_Morpho_Labs_Morpho_Aave_v3_audit.pdf](https://github.com/morpho-org/morpho-optimizers/blob/main/audits/ChainSecurity_Morpho_Labs_Morpho_Aave_v3_audit.pdf) | ChainSecurity | Audit | 2022-09 | stale | Direct | n/a | no match | 0 | 0 | 0 | 12 | n/a |
| [Spearbit_MorphoV1.pdf](https://github.com/morpho-org/morpho-optimizers/blob/main/audits/Spearbit_MorphoV1.pdf) | Spearbit | Audit | 2023-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 12 | n/a |
| [TrailOfBits_Morpho_Compound.pdf](https://github.com/morpho-org/morpho-optimizers/blob/main/audits/TrailOfBits_Morpho_Compound.pdf) | Trail of Bits | Audit | 2022-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [2025-05-19-spearbit.pdf](https://github.com/morpho-org/vault-v2/blob/main/audits/2025-05-19-spearbit.pdf) | Spearbit | Audit | 2025-05 | aging | Inherited from Morpho | n/a | no match | 0 | 0 | 0 | 20 | n/a |
| [2025-07-15-competition.pdf](https://github.com/morpho-org/vault-v2/blob/main/audits/2025-07-15-competition.pdf) | Competition | Audit | 2025-07 | aging | Inherited from Morpho | n/a | no match | 0 | 0 | 0 | 4 | n/a |
| [2025-07-15-zellic.pdf](https://github.com/morpho-org/vault-v2/blob/main/audits/2025-07-15-zellic.pdf) | Zellic | Audit | 2025-07 | aging | Inherited from Morpho | n/a | no match | 0 | 0 | 0 | 9 | n/a |
| [2025-08-11-spearbit.pdf](https://github.com/morpho-org/vault-v2/blob/main/audits/2025-08-11-spearbit.pdf) | Spearbit | Audit | 2025-08 | fresh | Inherited from Morpho | n/a | no match | 0 | 0 | 0 | 4 | n/a |
| [2025-09-15-blackthorn.pdf](https://github.com/morpho-org/vault-v2/blob/main/audits/2025-09-15-blackthorn.pdf) | Blackthorn | Audit | 2025-09 | fresh | Inherited from Morpho | n/a | no match | 0 | 0 | 0 | 25 | n/a |
| [2025-09-15-chainsecurity.pdf](https://github.com/morpho-org/vault-v2/blob/main/audits/2025-09-15-chainsecurity.pdf) | ChainSecurity | Audit | 2025-09 | fresh | Inherited from Morpho | n/a | no match | 0 | 0 | 0 | 19 | n/a |
| [2025-09-15-spearbit.pdf](https://github.com/morpho-org/vault-v2/blob/main/audits/2025-09-15-spearbit.pdf) | Spearbit | Audit | 2025-09 | fresh | Inherited from Morpho | n/a | no match | 0 | 0 | 0 | 4 | n/a |
| [2025-12-04-market-v1-adapter-v2-blackthorn.pdf](https://github.com/morpho-org/vault-v2/blob/main/audits/2025-12-04-market-v1-adapter-v2-blackthorn.pdf) | Blackthorn | Audit | 2025-12 | fresh | Inherited from Morpho | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [2025-12-04-market-v1-adapter-v2-spearbit.pdf](https://github.com/morpho-org/vault-v2/blob/main/audits/2025-12-04-market-v1-adapter-v2-spearbit.pdf) | Spearbit | Audit | 2025-12 | fresh | Inherited from Morpho | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [2025-12-15-market-v1-adapter-v2-certora.pdf](https://github.com/morpho-org/vault-v2/blob/main/audits/2025-12-15-market-v1-adapter-v2-certora.pdf) | Certora | Audit | 2025-12 | fresh | Inherited from Morpho | n/a | no match | 0 | 0 | 0 | 15 | n/a |
| [2025-09-11-spearbit.pdf](https://github.com/morpho-org/vault-v2-adapter-registries/blob/main/audits/2025-09-11-spearbit.pdf) | Spearbit | Audit | 2025-09 | fresh | Inherited from Morpho | n/a | no match | 0 | 0 | 0 | 3 | n/a |
| [2025-12-04-market-v1-adapter-v2-certora.pdf](https://github.com/morpho-org/vault-v2-adapter-registries/blob/main/audits/2025-12-04-market-v1-adapter-v2-certora.pdf) | Certora | Audit | 2025-12 | fresh | Inherited from Morpho | n/a | no match | 0 | 0 | 0 | 15 | n/a |
| [2024-10-29-pre-liquidation-spearbit.pdf](https://github.com/morpho-org/pre-liquidation/blob/main/audits/2024-10-29-pre-liquidation-spearbit.pdf) | Spearbit | Audit | 2024-10 | aging | Inherited from Morpho | n/a | no match | 0 | 0 | 0 | 2 | n/a |
| [2024-11-01-pre-liquidation-ABDK-consulting.pdf](https://github.com/morpho-org/pre-liquidation/blob/main/audits/2024-11-01-pre-liquidation-ABDK-consulting.pdf) | ABDK | Audit | 2024-11 | aging | Inherited from Morpho | n/a | no match | 0 | 0 | 0 | 8 | n/a |
| [2023-11-16-morpho-blue-periphery-open-zeppelin.pdf](https://github.com/morpho-org/metamorpho-v1.1/blob/main/audits/2023-11-16-morpho-blue-periphery-open-zeppelin.pdf) | OpenZeppelin | Audit | 2023-11 | stale | Inherited from Morpho | n/a | no match | 0 | 0 | 0 | 45 | n/a |
| [2024-09-23-metamorpho-diff-cantina-managed-review.pdf](https://github.com/morpho-org/metamorpho-v1.1/blob/main/audits/2024-09-23-metamorpho-diff-cantina-managed-review.pdf) | Spearbit | Audit | 2024-09 | aging | Inherited from Morpho | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [2025-01-10-metamorpho-v1.1-open-zeppelin.pdf](https://github.com/morpho-org/metamorpho-v1.1/blob/main/audits/2025-01-10-metamorpho-v1.1-open-zeppelin.pdf) | OpenZeppelin | Audit | 2025-01 | aging | Inherited from Morpho | n/a | no match | 0 | 0 | 0 | 5 | n/a |
| [2025-02-20-metamorpho-v1.1-cantina-managed.pdf](https://github.com/morpho-org/metamorpho-v1.1/blob/main/audits/2025-02-20-metamorpho-v1.1-cantina-managed.pdf) | Spearbit | Audit | 2025-02 | aging | Inherited from Morpho | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [2024-03-11-morpho-public-allocator-cantina-managed.pdf](https://github.com/morpho-org/public-allocator/blob/main/audits/2024-03-11-morpho-public-allocator-cantina-managed.pdf) | Spearbit | Audit | 2024-03 | stale | Inherited from Morpho | n/a | no match | 0 | 0 | 0 | 5 | n/a |
| [2023-10-13-morpho-blue-and-speed-jump-irm-open-zeppelin.pdf](https://github.com/morpho-org/morpho-blue/blob/main/audits/2023-10-13-morpho-blue-and-speed-jump-irm-open-zeppelin.pdf) | OpenZeppelin | Audit | 2023-10 | stale | Inherited from Morpho | n/a | no match | 0 | 0 | 0 | 18 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [8732] 2023-11-13-morpho-blue-cantina-managed-review.pdf — no match: No reason recorded
- [8733] 2024-01-05-morpho-blue-cantina-competition.pdf — no match: No reason recorded
- [8734] 2023-11-14-metamorpho-cantina-managed-review.pdf — no match: Extracted contract names from findings context and file references. Audit date from cover page.
- [8736] 2024-01-05-periphery-cantina-competition.pdf — no match: No reason recorded
- [8737] ChainSecurity_Morpho_Labs_Morpho_Aave_v3_audit.pdf — no match: No reason recorded
- [8740] Spearbit_MorphoV1.pdf — no match: No reason recorded
- [8741] TrailOfBits_Morpho_Compound.pdf — no match: Extracted contracts from Project Coverage section and findings. Lens and Aave contracts are out of scope but included for completeness. MorphoToken was not reviewed.
- [14675] 2025-05-19-spearbit.pdf — no match: No reason recorded
- [14676] 2025-07-15-competition.pdf — no match: No reason recorded
- [14677] 2025-07-15-zellic.pdf — no match: No reason recorded
- [14678] 2025-08-11-spearbit.pdf — no match: No reason recorded
- [14679] 2025-09-15-blackthorn.pdf — no match: No reason recorded
- [14680] 2025-09-15-chainsecurity.pdf — no match: No reason recorded
- [14681] 2025-09-15-spearbit.pdf — no match: No reason recorded
- [14682] 2025-12-04-market-v1-adapter-v2-blackthorn.pdf — no match: Scope section lists 5 files from two repositories. Audit date is November 24-27, 2025, so end date is 2025-11-27.
- [14683] 2025-12-04-market-v1-adapter-v2-spearbit.pdf — no match: Extracted 4 contracts from scope section. Audit date from cover page.
- [14684] 2025-12-15-market-v1-adapter-v2-certora.pdf — no match: No reason recorded
- [14685] 2025-09-11-spearbit.pdf — no match: No reason recorded
- [14686] 2025-12-04-market-v1-adapter-v2-certora.pdf — no match: No reason recorded
- [14687] 2024-10-29-pre-liquidation-spearbit.pdf — no match: No reason recorded
- [14688] 2024-11-01-pre-liquidation-ABDK-consulting.pdf — no match: No reason recorded
- [14690] 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf — no match: No reason recorded
- [14692] 2024-09-23-metamorpho-diff-cantina-managed-review.pdf — no match: Only MetaMorpho contract is explicitly mentioned in scope. Other contracts like MorphoChainlinkOracleV2.sol, PendingLib.sol are referenced but not listed as in-scope.
- [14693] 2025-01-10-metamorpho-v1.1-open-zeppelin.pdf — no match: No reason recorded
- [14694] 2025-02-20-metamorpho-v1.1-cantina-managed.pdf — no match: The report does not have a dedicated scope section or table. The only contract name explicitly mentioned as being reviewed is MetaMorpho (metamorpho-v1.1). No file paths or addresses provided.
- [14695] 2024-03-11-morpho-public-allocator-cantina-managed.pdf — no match: No reason recorded
- [14696] 2023-10-13-morpho-blue-and-speed-jump-irm-open-zeppelin.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2023-11-13-morpho-blue-cantina-managed-review.pdf | ConstantsLib | unmatched — not counted | — | — | no |
| 2023-11-13-morpho-blue-cantina-managed-review.pdf | ErrorsLib | unmatched — not counted | — | — | no |
| 2023-11-13-morpho-blue-cantina-managed-review.pdf | EthereumPermitBundler | unmatched — not counted | — | — | no |
| 2023-11-13-morpho-blue-cantina-managed-review.pdf | EventsLib | unmatched — not counted | — | — | no |
| 2023-11-13-morpho-blue-cantina-managed-review.pdf | IIrm | unmatched — not counted | — | — | no |
| 2023-11-13-morpho-blue-cantina-managed-review.pdf | IMorpho | unmatched — not counted | — | — | no |
| 2023-11-13-morpho-blue-cantina-managed-review.pdf | IMorphoBundler | unmatched — not counted | — | — | no |
| 2023-11-13-morpho-blue-cantina-managed-review.pdf | IMorphoCallbacks | unmatched — not counted | — | — | no |
| 2023-11-13-morpho-blue-cantina-managed-review.pdf | IMorphoMarketStruct | unmatched — not counted | — | — | no |
| 2023-11-13-morpho-blue-cantina-managed-review.pdf | IMulticall | unmatched — not counted | — | — | no |
| 2023-11-13-morpho-blue-cantina-managed-review.pdf | IOracle | unmatched — not counted | — | — | no |
| 2023-11-13-morpho-blue-cantina-managed-review.pdf | IrmMock | unmatched — not counted | — | — | no |
| 2023-11-13-morpho-blue-cantina-managed-review.pdf | MarketParamsLib | unmatched — not counted | — | — | no |
| 2023-11-13-morpho-blue-cantina-managed-review.pdf | MathLib | unmatched — not counted | — | — | no |
| 2023-11-13-morpho-blue-cantina-managed-review.pdf | Morpho | unmatched — not counted | — | — | no |
| 2023-11-13-morpho-blue-cantina-managed-review.pdf | MorphoBalancesLib | unmatched — not counted | — | — | no |
| 2023-11-13-morpho-blue-cantina-managed-review.pdf | MorphoLib | unmatched — not counted | — | — | no |
| 2023-11-13-morpho-blue-cantina-managed-review.pdf | MorphoStorageLib | unmatched — not counted | — | — | no |
| 2023-11-13-morpho-blue-cantina-managed-review.pdf | SafeTransferLib | unmatched — not counted | — | — | no |
| 2023-11-13-morpho-blue-cantina-managed-review.pdf | SharesMathLib | unmatched — not counted | — | — | no |
| 2023-11-13-morpho-blue-cantina-managed-review.pdf | SpeedJumpIrm | unmatched — not counted | — | — | no |
| 2023-11-13-morpho-blue-cantina-managed-review.pdf | UtilsLib | unmatched — not counted | — | — | no |
| 2024-01-05-morpho-blue-cantina-competition.pdf | AdaptiveCurveIrm | unmatched — not counted | — | — | no |
| 2024-01-05-morpho-blue-cantina-competition.pdf | ChainlinkOracle | unmatched — not counted | — | — | no |
| 2024-01-05-morpho-blue-cantina-competition.pdf | Morpho | unmatched — not counted | — | — | no |
| 2024-01-05-morpho-blue-cantina-competition.pdf | SafeTransferLib | unmatched — not counted | — | — | no |
| 2024-01-05-morpho-blue-cantina-competition.pdf | SharesMathLib | unmatched — not counted | — | — | no |
| 2023-11-14-metamorpho-cantina-managed-review.pdf | MetaMorpho | unmatched — not counted | — | listed in scope and findings | no |
| 2023-11-14-metamorpho-cantina-managed-review.pdf | IMetaMorpho | unmatched — not counted | — | listed in scope and findings | no |
| 2023-11-14-metamorpho-cantina-managed-review.pdf | ErrorsLib | unmatched — not counted | — | listed in findings | no |
| 2023-11-14-metamorpho-cantina-managed-review.pdf | EventsLib | unmatched — not counted | — | listed in findings | no |
| 2023-11-14-metamorpho-cantina-managed-review.pdf | UtilsLib | unmatched — not counted | — | listed in findings | no |
| 2023-11-14-metamorpho-cantina-managed-review.pdf | MathLib | unmatched — not counted | — | listed in findings | no |
| 2023-11-14-metamorpho-cantina-managed-review.pdf | SharesMathLib | unmatched — not counted | — | listed in findings | no |
| 2023-11-14-metamorpho-cantina-managed-review.pdf | MorphoLib | unmatched — not counted | — | listed in findings | no |
| 2023-11-14-metamorpho-cantina-managed-review.pdf | MorphoBalancesLib | unmatched — not counted | — | listed in findings | no |
| 2023-11-14-metamorpho-cantina-managed-review.pdf | MarketParamsLib | unmatched — not counted | — | listed in findings | no |
| 2023-11-14-metamorpho-cantina-managed-review.pdf | SafeCast | unmatched — not counted | — | listed in findings | no |
| 2023-11-14-metamorpho-cantina-managed-review.pdf | SafeERC20 | unmatched — not counted | — | listed in findings | no |
| 2023-11-14-metamorpho-cantina-managed-review.pdf | ConstantsLib | unmatched — not counted | — | listed in findings | no |
| 2024-01-05-periphery-cantina-competition.pdf | AaveV2MigrationBundler | unmatched — not counted | — | — | no |
| 2024-01-05-periphery-cantina-competition.pdf | AaveV3MigrationBundler | unmatched — not counted | — | — | no |
| 2024-01-05-periphery-cantina-competition.pdf | AaveV3OptimizerMigrationBundler | unmatched — not counted | — | — | no |
| 2024-01-05-periphery-cantina-competition.pdf | CompoundV2MigrationBundler | unmatched — not counted | — | — | no |
| 2024-01-05-periphery-cantina-competition.pdf | CompoundV3MigrationBundler | unmatched — not counted | — | — | no |
| 2024-01-05-periphery-cantina-competition.pdf | ConstantsLib | unmatched — not counted | — | — | no |
| 2024-01-05-periphery-cantina-competition.pdf | ERC20WrapperBundler | unmatched — not counted | — | — | no |
| 2024-01-05-periphery-cantina-competition.pdf | ERC4626Bundler | unmatched — not counted | — | — | no |
| 2024-01-05-periphery-cantina-competition.pdf | MetaMorpho | unmatched — not counted | — | — | no |
| ChainSecurity_Morpho_Labs_Morpho_Aave_v3_audit.pdf | EntryPositionsManager | unmatched — not counted | — | — | no |
| ChainSecurity_Morpho_Labs_Morpho_Aave_v3_audit.pdf | ExitPositionsManager | unmatched — not counted | — | — | no |
| ChainSecurity_Morpho_Labs_Morpho_Aave_v3_audit.pdf | HeapOrdering | unmatched — not counted | — | — | no |
| ChainSecurity_Morpho_Labs_Morpho_Aave_v3_audit.pdf | IncentivesVault | unmatched — not counted | — | — | no |
| ChainSecurity_Morpho_Labs_Morpho_Aave_v3_audit.pdf | InterestRateManager | unmatched — not counted | — | — | no |
| ChainSecurity_Morpho_Labs_Morpho_Aave_v3_audit.pdf | MatchingEngine | unmatched — not counted | — | — | no |
| ChainSecurity_Morpho_Labs_Morpho_Aave_v3_audit.pdf | Morpho | unmatched — not counted | — | — | no |
| ChainSecurity_Morpho_Labs_Morpho_Aave_v3_audit.pdf | MorphoGovernance | unmatched — not counted | — | — | no |
| ChainSecurity_Morpho_Labs_Morpho_Aave_v3_audit.pdf | MorphoUtils | unmatched — not counted | — | — | no |
| ChainSecurity_Morpho_Labs_Morpho_Aave_v3_audit.pdf | PositionsManagerUtils | unmatched — not counted | — | — | no |
| ChainSecurity_Morpho_Labs_Morpho_Aave_v3_audit.pdf | RewardsDistributor | unmatched — not counted | — | — | no |
| ChainSecurity_Morpho_Labs_Morpho_Aave_v3_audit.pdf | RewardsManager | unmatched — not counted | — | — | no |
| Spearbit_MorphoV1.pdf | CompoundMath | unmatched — not counted | — | — | no |
| Spearbit_MorphoV1.pdf | EntryPositionsManager | unmatched — not counted | — | — | no |
| Spearbit_MorphoV1.pdf | ExitPositionsManager | unmatched — not counted | — | — | no |
| Spearbit_MorphoV1.pdf | HeapOrdering | unmatched — not counted | — | — | no |
| Spearbit_MorphoV1.pdf | InterestRatesManager | unmatched — not counted | — | — | no |
| Spearbit_MorphoV1.pdf | InterestRatesModel | unmatched — not counted | — | — | no |
| Spearbit_MorphoV1.pdf | MatchingEngine | unmatched — not counted | — | — | no |
| Spearbit_MorphoV1.pdf | Morpho | unmatched — not counted | — | — | no |
| Spearbit_MorphoV1.pdf | MorphoGovernance | unmatched — not counted | — | — | no |
| Spearbit_MorphoV1.pdf | MorphoUtils | unmatched — not counted | — | — | no |
| Spearbit_MorphoV1.pdf | PositionsManager | unmatched — not counted | — | — | no |
| Spearbit_MorphoV1.pdf | RewardsManager | unmatched — not counted | — | — | no |
| TrailOfBits_Morpho_Compound.pdf | Morpho | unmatched — not counted | — | Listed in Project Coverage as main contract. | no |
| TrailOfBits_Morpho_Compound.pdf | MorphoGovernance | unmatched — not counted | — | Listed in Project Coverage as inherited contract. | no |
| TrailOfBits_Morpho_Compound.pdf | MorphoUtils | unmatched — not counted | — | Listed in Project Coverage as inherited contract. | no |
| TrailOfBits_Morpho_Compound.pdf | MorphoStorage | unmatched — not counted | — | Listed in Project Coverage as inherited contract. | no |
| TrailOfBits_Morpho_Compound.pdf | PositionsManager | unmatched — not counted | — | Listed in Project Coverage. | no |
| TrailOfBits_Morpho_Compound.pdf | MatchingEngine | unmatched — not counted | — | Listed in Project Coverage as inherited contract. | no |
| TrailOfBits_Morpho_Compound.pdf | InterestRatesManager | unmatched — not counted | — | Listed in Project Coverage. | no |
| TrailOfBits_Morpho_Compound.pdf | RewardsManager | unmatched — not counted | — | Listed in Project Coverage. | no |
| TrailOfBits_Morpho_Compound.pdf | IncentivesVault | unmatched — not counted | — | Listed in Project Coverage. | no |
| TrailOfBits_Morpho_Compound.pdf | Lens | unmatched — not counted | — | Explicitly out of scope in Coverage Limitations. | no |
| TrailOfBits_Morpho_Compound.pdf | PositionsManagerForAave | unmatched — not counted | — | Mentioned in finding TOB-MORPHO-6 as also affected. | no |
| TrailOfBits_Morpho_Compound.pdf | PositionsManagerForAaveStorage | unmatched — not counted | — | Mentioned in finding TOB-MORPHO-6 recommendation. | no |
| TrailOfBits_Morpho_Compound.pdf | MorphoToken | unmatched — not counted | — | Mentioned in Coverage Limitations as not yet available. | no |
| 2025-05-19-spearbit.pdf | ErrorsLib | unmatched — not counted | — | — | no |
| 2025-05-19-spearbit.pdf | EventsLib | unmatched — not counted | — | — | no |
| 2025-05-19-spearbit.pdf | IAdapter | unmatched — not counted | — | — | no |
| 2025-05-19-spearbit.pdf | IERC20 | unmatched — not counted | — | — | no |
| 2025-05-19-spearbit.pdf | IERC4626 | unmatched — not counted | — | — | no |
| 2025-05-19-spearbit.pdf | IManualVic | unmatched — not counted | — | — | no |
| 2025-05-19-spearbit.pdf | IMetaMorphoAdapter | unmatched — not counted | — | — | no |
| 2025-05-19-spearbit.pdf | IMorphoBlueAdapter | unmatched — not counted | — | — | no |
| 2025-05-19-spearbit.pdf | IVaultV2 | unmatched — not counted | — | — | no |
| 2025-05-19-spearbit.pdf | IVic | unmatched — not counted | — | — | no |
| 2025-05-19-spearbit.pdf | ManualVic | unmatched — not counted | — | — | no |
| 2025-05-19-spearbit.pdf | MarketParamsLib | unmatched — not counted | — | — | no |
| 2025-05-19-spearbit.pdf | MathLib | unmatched — not counted | — | — | no |
| 2025-05-19-spearbit.pdf | MetaMorphoAdapter | unmatched — not counted | — | — | no |
| 2025-05-19-spearbit.pdf | MetaMorphoAdapterFactory | unmatched — not counted | — | — | no |
| 2025-05-19-spearbit.pdf | MorphoBalancesLib | unmatched — not counted | — | — | no |
| 2025-05-19-spearbit.pdf | MorphoBlueAdapter | unmatched — not counted | — | — | no |
| 2025-05-19-spearbit.pdf | MorphoBlueAdapterFactory | unmatched — not counted | — | — | no |
| 2025-05-19-spearbit.pdf | SafeERC20Lib | unmatched — not counted | — | — | no |
| 2025-05-19-spearbit.pdf | VaultV2 | unmatched — not counted | — | — | no |
| 2025-07-15-competition.pdf | ManualVic | unmatched — not counted | — | — | no |
| 2025-07-15-competition.pdf | MorphoVaultV1Adapter | unmatched — not counted | — | — | no |
| 2025-07-15-competition.pdf | SingleMorphoVaultV1Vic | unmatched — not counted | — | — | no |
| 2025-07-15-competition.pdf | VaultV2 | unmatched — not counted | — | — | no |
| 2025-07-15-zellic.pdf | ConstantsLib | unmatched — not counted | — | — | no |
| 2025-07-15-zellic.pdf | IManualVic | unmatched — not counted | — | — | no |
| 2025-07-15-zellic.pdf | IManualVicFactory | unmatched — not counted | — | — | no |
| 2025-07-15-zellic.pdf | ManualVic | unmatched — not counted | — | — | no |
| 2025-07-15-zellic.pdf | ManualVicFactory | unmatched — not counted | — | — | no |
| 2025-07-15-zellic.pdf | MetaMorphoAdapter | unmatched — not counted | — | — | no |
| 2025-07-15-zellic.pdf | MorphoBlueAdapter | unmatched — not counted | — | — | no |
| 2025-07-15-zellic.pdf | VaultV2 | unmatched — not counted | — | — | no |
| 2025-07-15-zellic.pdf | VaultV2Factory | unmatched — not counted | — | — | no |
| 2025-08-11-spearbit.pdf | MorphoMarketV1Adapter | unmatched — not counted | — | — | no |
| 2025-08-11-spearbit.pdf | MorphoMarketV1AdapterFactory | unmatched — not counted | — | — | no |
| 2025-08-11-spearbit.pdf | MorphoVaultV1Adapter | unmatched — not counted | — | — | no |
| 2025-08-11-spearbit.pdf | VaultV2 | unmatched — not counted | — | — | no |
| 2025-09-15-blackthorn.pdf | ConstantsLib | unmatched — not counted | — | — | no |
| 2025-09-15-blackthorn.pdf | ErrorsLib | unmatched — not counted | — | — | no |
| 2025-09-15-blackthorn.pdf | EventsLib | unmatched — not counted | — | — | no |
| 2025-09-15-blackthorn.pdf | IAdapter | unmatched — not counted | — | — | no |
| 2025-09-15-blackthorn.pdf | IERC20 | unmatched — not counted | — | — | no |
| 2025-09-15-blackthorn.pdf | IERC2612 | unmatched — not counted | — | — | no |
| 2025-09-15-blackthorn.pdf | IERC4626 | unmatched — not counted | — | — | no |
| 2025-09-15-blackthorn.pdf | IGate | unmatched — not counted | — | — | no |
| 2025-09-15-blackthorn.pdf | IMorphoMarketV1Adapter | unmatched — not counted | — | — | no |
| 2025-09-15-blackthorn.pdf | IMorphoMarketV1AdapterFactory | unmatched — not counted | — | — | no |
| 2025-09-15-blackthorn.pdf | IMorphoVaultV1Adapter | unmatched — not counted | — | — | no |
| 2025-09-15-blackthorn.pdf | IMorphoVaultV1AdapterFactory | unmatched — not counted | — | — | no |
| 2025-09-15-blackthorn.pdf | IVaultV2 | unmatched — not counted | — | — | no |
| 2025-09-15-blackthorn.pdf | IVaultV2Factory | unmatched — not counted | — | — | no |
| 2025-09-15-blackthorn.pdf | MathLib | unmatched — not counted | — | — | no |
| 2025-09-15-blackthorn.pdf | MetaMorphoImport | unmatched — not counted | — | — | no |
| 2025-09-15-blackthorn.pdf | MetaMorphoV1_1Import | unmatched — not counted | — | — | no |
| 2025-09-15-blackthorn.pdf | MorphoImport | unmatched — not counted | — | — | no |
| 2025-09-15-blackthorn.pdf | MorphoMarketV1Adapter | unmatched — not counted | — | — | no |
| 2025-09-15-blackthorn.pdf | MorphoMarketV1AdapterFactory | unmatched — not counted | — | — | no |
| 2025-09-15-blackthorn.pdf | MorphoVaultV1Adapter | unmatched — not counted | — | — | no |
| 2025-09-15-blackthorn.pdf | MorphoVaultV1AdapterFactory | unmatched — not counted | — | — | no |
| 2025-09-15-blackthorn.pdf | SafeERC20Lib | unmatched — not counted | — | — | no |
| 2025-09-15-blackthorn.pdf | VaultV2 | unmatched — not counted | — | — | no |
| 2025-09-15-blackthorn.pdf | VaultV2Factory | unmatched — not counted | — | — | no |
| 2025-09-15-chainsecurity.pdf | ConstantsLib | unmatched — not counted | — | — | no |
| 2025-09-15-chainsecurity.pdf | ErrorsLib | unmatched — not counted | — | — | no |
| 2025-09-15-chainsecurity.pdf | EventsLib | unmatched — not counted | — | — | no |
| 2025-09-15-chainsecurity.pdf | ManualVic | unmatched — not counted | — | — | no |
| 2025-09-15-chainsecurity.pdf | ManualVicFactory | unmatched — not counted | — | — | no |
| 2025-09-15-chainsecurity.pdf | MathLib | unmatched — not counted | — | — | no |
| 2025-09-15-chainsecurity.pdf | MetaMorphoAdapter | unmatched — not counted | — | — | no |
| 2025-09-15-chainsecurity.pdf | MetaMorphoAdapterFactory | unmatched — not counted | — | — | no |
| 2025-09-15-chainsecurity.pdf | MorphoBlueAdapter | unmatched — not counted | — | — | no |
| 2025-09-15-chainsecurity.pdf | MorphoBlueAdapterFactory | unmatched — not counted | — | — | no |
| 2025-09-15-chainsecurity.pdf | MorphoImport | unmatched — not counted | — | — | no |
| 2025-09-15-chainsecurity.pdf | MorphoMarketV1Adapter | unmatched — not counted | — | — | no |
| 2025-09-15-chainsecurity.pdf | MorphoMarketV1AdapterFactory | unmatched — not counted | — | — | no |
| 2025-09-15-chainsecurity.pdf | MorphoVaultV1Adapter | unmatched — not counted | — | — | no |
| 2025-09-15-chainsecurity.pdf | MorphoVaultV1AdapterFactory | unmatched — not counted | — | — | no |
| 2025-09-15-chainsecurity.pdf | SafeERC20Lib | unmatched — not counted | — | — | no |
| 2025-09-15-chainsecurity.pdf | VaultV2 | unmatched — not counted | — | — | no |
| 2025-09-15-chainsecurity.pdf | VaultV2AddressLib | unmatched — not counted | — | — | no |
| 2025-09-15-chainsecurity.pdf | VaultV2Factory | unmatched — not counted | — | — | no |
| 2025-09-15-spearbit.pdf | MorphoMarketV1Adapter | unmatched — not counted | — | — | no |
| 2025-09-15-spearbit.pdf | MorphoMarketV1AdapterFactory | unmatched — not counted | — | — | no |
| 2025-09-15-spearbit.pdf | MorphoVaultV1Adapter | unmatched — not counted | — | — | no |
| 2025-09-15-spearbit.pdf | VaultV2 | unmatched — not counted | — | — | no |
| 2025-12-04-market-v1-adapter-v2-blackthorn.pdf | AdaptiveCurveIrmLib | unmatched — not counted | — | listed in scope | no |
| 2025-12-04-market-v1-adapter-v2-blackthorn.pdf | IMorphoMarketV1AdapterFactory | unmatched — not counted | — | listed in scope | no |
| 2025-12-04-market-v1-adapter-v2-blackthorn.pdf | IMorphoMarketV1Adapter | unmatched — not counted | — | listed in scope | no |
| 2025-12-04-market-v1-adapter-v2-blackthorn.pdf | MorphoMarketV1AdapterFactory | unmatched — not counted | — | listed in scope | no |
| 2025-12-04-market-v1-adapter-v2-blackthorn.pdf | MorphoMarketV1Adapter | unmatched — not counted | — | listed in scope | no |
| 2025-12-04-market-v1-adapter-v2-spearbit.pdf | AdaptiveCurveIrmLib | unmatched — not counted | — | listed in scope section | no |
| 2025-12-04-market-v1-adapter-v2-spearbit.pdf | MorphoMarketV1Adapter | unmatched — not counted | — | listed in scope section | no |
| 2025-12-04-market-v1-adapter-v2-spearbit.pdf | MorphoMarketV1AdapterFactory | unmatched — not counted | — | listed in scope section | no |
| 2025-12-04-market-v1-adapter-v2-spearbit.pdf | AdaptiveCurveIrmImport | unmatched — not counted | — | listed in scope section | no |
| 2025-12-15-market-v1-adapter-v2-certora.pdf | AdaptiveCurveIrmLib | unmatched — not counted | — | — | no |
| 2025-12-15-market-v1-adapter-v2-certora.pdf | ErrorsLib | unmatched — not counted | — | — | no |
| 2025-12-15-market-v1-adapter-v2-certora.pdf | IERC4626 | unmatched — not counted | — | — | no |
| 2025-12-15-market-v1-adapter-v2-certora.pdf | IMorphoMarketV1AdapterV2 | unmatched — not counted | — | — | no |
| 2025-12-15-market-v1-adapter-v2-certora.pdf | IMorphoMarketV1AdapterV2Factory | unmatched — not counted | — | — | no |
| 2025-12-15-market-v1-adapter-v2-certora.pdf | IMorphoMarketV1Registry | unmatched — not counted | — | — | no |
| 2025-12-15-market-v1-adapter-v2-certora.pdf | IMorphoMarketV1RegistryV2 | unmatched — not counted | — | — | no |
| 2025-12-15-market-v1-adapter-v2-certora.pdf | IMorphoVaultV1Registry | unmatched — not counted | — | — | no |
| 2025-12-15-market-v1-adapter-v2-certora.pdf | IRegistryList | unmatched — not counted | — | — | no |
| 2025-12-15-market-v1-adapter-v2-certora.pdf | MorphoMarketV1AdapterV2 | unmatched — not counted | — | — | no |
| 2025-12-15-market-v1-adapter-v2-certora.pdf | MorphoMarketV1AdapterV2Factory | unmatched — not counted | — | — | no |
| 2025-12-15-market-v1-adapter-v2-certora.pdf | MorphoMarketV1Registry | unmatched — not counted | — | — | no |
| 2025-12-15-market-v1-adapter-v2-certora.pdf | MorphoMarketV1RegistryV2 | unmatched — not counted | — | — | no |
| 2025-12-15-market-v1-adapter-v2-certora.pdf | MorphoVaultV1Registry | unmatched — not counted | — | — | no |
| 2025-12-15-market-v1-adapter-v2-certora.pdf | RegistryList | unmatched — not counted | — | — | no |
| 2025-09-11-spearbit.pdf | MorphoMarketV1Registry | unmatched — not counted | — | — | no |
| 2025-09-11-spearbit.pdf | MorphoVaultV1Registry | unmatched — not counted | — | — | no |
| 2025-09-11-spearbit.pdf | RegistryList | unmatched — not counted | — | — | no |
| 2025-12-04-market-v1-adapter-v2-certora.pdf | AdaptiveCurveIrmLib | unmatched — not counted | — | — | no |
| 2025-12-04-market-v1-adapter-v2-certora.pdf | ErrorsLib | unmatched — not counted | — | — | no |
| 2025-12-04-market-v1-adapter-v2-certora.pdf | IERC4626 | unmatched — not counted | — | — | no |
| 2025-12-04-market-v1-adapter-v2-certora.pdf | IMorphoMarketV1AdapterV2 | unmatched — not counted | — | — | no |
| 2025-12-04-market-v1-adapter-v2-certora.pdf | IMorphoMarketV1AdapterV2Factory | unmatched — not counted | — | — | no |
| 2025-12-04-market-v1-adapter-v2-certora.pdf | IMorphoMarketV1Registry | unmatched — not counted | — | — | no |
| 2025-12-04-market-v1-adapter-v2-certora.pdf | IMorphoMarketV1RegistryV2 | unmatched — not counted | — | — | no |
| 2025-12-04-market-v1-adapter-v2-certora.pdf | IMorphoVaultV1Registry | unmatched — not counted | — | — | no |
| 2025-12-04-market-v1-adapter-v2-certora.pdf | IRegistryList | unmatched — not counted | — | — | no |
| 2025-12-04-market-v1-adapter-v2-certora.pdf | MorphoMarketV1AdapterV2 | unmatched — not counted | — | — | no |
| 2025-12-04-market-v1-adapter-v2-certora.pdf | MorphoMarketV1AdapterV2Factory | unmatched — not counted | — | — | no |
| 2025-12-04-market-v1-adapter-v2-certora.pdf | MorphoMarketV1Registry | unmatched — not counted | — | — | no |
| 2025-12-04-market-v1-adapter-v2-certora.pdf | MorphoMarketV1RegistryV2 | unmatched — not counted | — | — | no |
| 2025-12-04-market-v1-adapter-v2-certora.pdf | MorphoVaultV1Registry | unmatched — not counted | — | — | no |
| 2025-12-04-market-v1-adapter-v2-certora.pdf | RegistryList | unmatched — not counted | — | — | no |
| 2024-10-29-pre-liquidation-spearbit.pdf | PreLiquidation | unmatched — not counted | — | — | no |
| 2024-10-29-pre-liquidation-spearbit.pdf | PreLiquidationFactory | unmatched — not counted | — | — | no |
| 2024-11-01-pre-liquidation-ABDK-consulting.pdf | ErrorsLib | unmatched — not counted | — | — | no |
| 2024-11-01-pre-liquidation-ABDK-consulting.pdf | EventsLib | unmatched — not counted | — | — | no |
| 2024-11-01-pre-liquidation-ABDK-consulting.pdf | IPreLiquidation | unmatched — not counted | — | — | no |
| 2024-11-01-pre-liquidation-ABDK-consulting.pdf | IPreLiquidationCallback | unmatched — not counted | — | — | no |
| 2024-11-01-pre-liquidation-ABDK-consulting.pdf | IPreLiquidationFactory | unmatched — not counted | — | — | no |
| 2024-11-01-pre-liquidation-ABDK-consulting.pdf | PreLiquidation | unmatched — not counted | — | — | no |
| 2024-11-01-pre-liquidation-ABDK-consulting.pdf | PreLiquidationAddressLib | unmatched — not counted | — | — | no |
| 2024-11-01-pre-liquidation-ABDK-consulting.pdf | PreLiquidationFactory | unmatched — not counted | — | — | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | AaveV2EthereumMigrationBundler | unmatched — not counted | — | — | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | AaveV2MigrationBundler | unmatched — not counted | — | — | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | AaveV3MigrationBundler | unmatched — not counted | — | — | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | AaveV3OptimizerMigrationBundler | unmatched — not counted | — | — | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | AggregatorV3Interface | unmatched — not counted | — | — | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | BaseBundler | unmatched — not counted | — | — | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | ChainlinkDataFeedLib | unmatched — not counted | — | — | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | ChainlinkOracle | unmatched — not counted | — | — | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | CompoundV2MigrationBundler | unmatched — not counted | — | — | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | CompoundV3MigrationBundler | unmatched — not counted | — | — | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | ConstantsLib | unmatched — not counted | — | — | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | ERC4626Bundler | unmatched — not counted | — | — | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | ErrorsLib | unmatched — not counted | — | — | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | EthereumBundler | unmatched — not counted | — | — | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | EthereumPermitBundler | unmatched — not counted | — | — | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | EthereumStEthBundler | unmatched — not counted | — | — | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | EventsLib | unmatched — not counted | — | — | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | ICEth | unmatched — not counted | — | — | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | ICToken | unmatched — not counted | — | — | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | ICompoundV3 | unmatched — not counted | — | — | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | IComptroller | unmatched — not counted | — | — | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | IDaiPermit | unmatched — not counted | — | — | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | IERC4626 | unmatched — not counted | — | — | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | IMetaMorpho | unmatched — not counted | — | — | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | IMorphoBundler | unmatched — not counted | — | — | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | IMorphoMarketParams | unmatched — not counted | — | — | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | IMulticall | unmatched — not counted | — | — | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | IStEth | unmatched — not counted | — | — | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | IUniversalRewardsDistributor | unmatched — not counted | — | — | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | IWNative | unmatched — not counted | — | — | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | IWstEth | unmatched — not counted | — | — | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | MainnetLib | unmatched — not counted | — | — | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | MetaMorpho | unmatched — not counted | — | — | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | MetaMorphoFactory | unmatched — not counted | — | — | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | MigrationBundler | unmatched — not counted | — | — | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | MorphoBundler | unmatched — not counted | — | — | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | Permit2Bundler | unmatched — not counted | — | — | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | PermitBundler | unmatched — not counted | — | — | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | StEthBundler | unmatched — not counted | — | — | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | TransferBundler | unmatched — not counted | — | — | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | UniversalRewardsDistributor | unmatched — not counted | — | — | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | UrdBundler | unmatched — not counted | — | — | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | UrdFactory | unmatched — not counted | — | — | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | VaultLib | unmatched — not counted | — | — | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | WNativeBundler | unmatched — not counted | — | — | no |
| 2024-09-23-metamorpho-diff-cantina-managed-review.pdf | MetaMorpho | unmatched — not counted | — | listed in scope and findings | no |
| 2025-01-10-metamorpho-v1.1-open-zeppelin.pdf | ConstantsLib | unmatched — not counted | — | — | no |
| 2025-01-10-metamorpho-v1.1-open-zeppelin.pdf | EventsLib | unmatched — not counted | — | — | no |
| 2025-01-10-metamorpho-v1.1-open-zeppelin.pdf | IMetaMorpho | unmatched — not counted | — | — | no |
| 2025-01-10-metamorpho-v1.1-open-zeppelin.pdf | MetaMorphoV1_1 | unmatched — not counted | — | — | no |
| 2025-01-10-metamorpho-v1.1-open-zeppelin.pdf | MetaMorphoV1_1Factory | unmatched — not counted | — | — | no |
| 2025-02-20-metamorpho-v1.1-cantina-managed.pdf | MetaMorpho | unmatched — not counted | — | The report is a security review of 'metamorpho-v1.1' and mentions 'MetaMorpho vault' and 'MetaMorpho v1.0'. | no |
| 2024-03-11-morpho-public-allocator-cantina-managed.pdf | EventsLib | unmatched — not counted | — | — | no |
| 2024-03-11-morpho-public-allocator-cantina-managed.pdf | IPublicAllocator | unmatched — not counted | — | — | no |
| 2024-03-11-morpho-public-allocator-cantina-managed.pdf | IrmMock | unmatched — not counted | — | — | no |
| 2024-03-11-morpho-public-allocator-cantina-managed.pdf | MetaMorpho | unmatched — not counted | — | — | no |
| 2024-03-11-morpho-public-allocator-cantina-managed.pdf | PublicAllocator | unmatched — not counted | — | — | no |
| 2023-10-13-morpho-blue-and-speed-jump-irm-open-zeppelin.pdf | ConstantsLib | unmatched — not counted | — | — | no |
| 2023-10-13-morpho-blue-and-speed-jump-irm-open-zeppelin.pdf | ErrorsLib | unmatched — not counted | — | — | no |
| 2023-10-13-morpho-blue-and-speed-jump-irm-open-zeppelin.pdf | EventsLib | unmatched — not counted | — | — | no |
| 2023-10-13-morpho-blue-and-speed-jump-irm-open-zeppelin.pdf | IERC20 | unmatched — not counted | — | — | no |
| 2023-10-13-morpho-blue-and-speed-jump-irm-open-zeppelin.pdf | IIrm | unmatched — not counted | — | — | no |
| 2023-10-13-morpho-blue-and-speed-jump-irm-open-zeppelin.pdf | IMorpho | unmatched — not counted | — | — | no |
| 2023-10-13-morpho-blue-and-speed-jump-irm-open-zeppelin.pdf | IMorphoCallbacks | unmatched — not counted | — | — | no |
| 2023-10-13-morpho-blue-and-speed-jump-irm-open-zeppelin.pdf | IOracle | unmatched — not counted | — | — | no |
| 2023-10-13-morpho-blue-and-speed-jump-irm-open-zeppelin.pdf | Irm | unmatched — not counted | — | — | no |
| 2023-10-13-morpho-blue-and-speed-jump-irm-open-zeppelin.pdf | MarketsParamsLib | unmatched — not counted | — | — | no |
| 2023-10-13-morpho-blue-and-speed-jump-irm-open-zeppelin.pdf | MathLib | unmatched — not counted | — | — | no |
| 2023-10-13-morpho-blue-and-speed-jump-irm-open-zeppelin.pdf | Morpho | unmatched — not counted | — | — | no |
| 2023-10-13-morpho-blue-and-speed-jump-irm-open-zeppelin.pdf | MorphoBalancesLib | unmatched — not counted | — | — | no |
| 2023-10-13-morpho-blue-and-speed-jump-irm-open-zeppelin.pdf | MorphoLib | unmatched — not counted | — | — | no |
| 2023-10-13-morpho-blue-and-speed-jump-irm-open-zeppelin.pdf | MorphoStorageLib | unmatched — not counted | — | — | no |
| 2023-10-13-morpho-blue-and-speed-jump-irm-open-zeppelin.pdf | SafeTransferLib | unmatched — not counted | — | — | no |
| 2023-10-13-morpho-blue-and-speed-jump-irm-open-zeppelin.pdf | SharesMathLib | unmatched — not counted | — | — | no |
| 2023-10-13-morpho-blue-and-speed-jump-irm-open-zeppelin.pdf | UtilsLib | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 22 |
| upstream | 8 |
| standard_library | 0 |
| needs_review | 275 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 27
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 298 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=5, medium=1
- Match method counts: n/a

Zero-match audit list:

- [8732] 2023-11-13-morpho-blue-cantina-managed-review.pdf
- [8733] 2024-01-05-morpho-blue-cantina-competition.pdf
- [8734] 2023-11-14-metamorpho-cantina-managed-review.pdf
- [8736] 2024-01-05-periphery-cantina-competition.pdf
- [8737] ChainSecurity_Morpho_Labs_Morpho_Aave_v3_audit.pdf
- [8740] Spearbit_MorphoV1.pdf
- [8741] TrailOfBits_Morpho_Compound.pdf
- [14675] 2025-05-19-spearbit.pdf
- [14676] 2025-07-15-competition.pdf
- [14677] 2025-07-15-zellic.pdf
- [14678] 2025-08-11-spearbit.pdf
- [14679] 2025-09-15-blackthorn.pdf
- [14680] 2025-09-15-chainsecurity.pdf
- [14681] 2025-09-15-spearbit.pdf
- [14682] 2025-12-04-market-v1-adapter-v2-blackthorn.pdf
- [14683] 2025-12-04-market-v1-adapter-v2-spearbit.pdf
- [14684] 2025-12-15-market-v1-adapter-v2-certora.pdf
- [14685] 2025-09-11-spearbit.pdf
- [14686] 2025-12-04-market-v1-adapter-v2-certora.pdf
- [14687] 2024-10-29-pre-liquidation-spearbit.pdf
- [14688] 2024-11-01-pre-liquidation-ABDK-consulting.pdf
- [14690] 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf
- [14692] 2024-09-23-metamorpho-diff-cantina-managed-review.pdf
- [14693] 2025-01-10-metamorpho-v1.1-open-zeppelin.pdf
- [14694] 2025-02-20-metamorpho-v1.1-cantina-managed.pdf
- [14695] 2024-03-11-morpho-public-allocator-cantina-managed.pdf
- [14696] 2023-10-13-morpho-blue-and-speed-jump-irm-open-zeppelin.pdf

Fork inheritance lineage and inherited audits are included when available.
