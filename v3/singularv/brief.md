# Agentic Audit Brief: SingularV

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 27 (0 matched; 27 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: SingularV (`singularv`)
- Website: [https://app.morpho.org/ethereum/curator/singularv](https://app.morpho.org/ethereum/curator/singularv)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, bsc, celo, cronos, ethereum, gnosis, hyperliquid, ink, kaia, linea, mode, optimism, plasma, polygon, scroll, sei, sonic, unichain
- Contract surface: 990 unique implementations (1060 raw deployments)
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
- Logic-topography rows: 30; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 236 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 754 discovered implementations shown in the inventory but excluded from coverage (6 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 14
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/51
- Verified + Unaudited implementations: 51
- Verified by bytecode match: 0
- Unverified implementations: 939
- Unique implementations: 990
- Raw deployments: 1060
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

### ⚠️ Verified + Unaudited (51)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveV2MigrationAdapter | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-255411 | `0x402888...87961b` | ⚠️ Unaudited |
| AaveV2MigrationBundler | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-255572 | `0xb3dcc7...aa8e76` | ⚠️ Unaudited |
| AaveV3MigrationAdapter | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-255372 | `0x2cc8d5...bdb806` | ⚠️ Unaudited |
| AaveV3MigrationAdapter | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-255410 | `0x4011dc...a59ca3` | ⚠️ Unaudited |
| AaveV3MigrationAdapter | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-255564 | `0xb09e40...07d475` | ⚠️ Unaudited |
| AaveV3OptimizerMigrationAdapter | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-255533 | `0x9e2ea2...5ad972` | ⚠️ Unaudited |
| AccessControlledOffchainAggregator | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 49 deployments: ethereum `0x015ed4...86a93f`; ethereum `0x065968...e5a119`; ethereum `0x126fc6...9ad2dd`; ethereum `0x179e97...bd616e`; ethereum `0x1a6e19...210025`; ethereum `0x2878f0...ecb957`; ethereum `0x31a53a...09189e`; ethereum `0x366082...9e405c`; ethereum `0x37bbd8...fe0eb4`; ethereum `0x3a79e9...86f148`; ethereum `0x3d9b67...d13145`; ethereum `0x3dba84...9f0973`; ethereum `0x46dad8...2d9eac`; ethereum `0x484c56...76e3a0`; ethereum `0x587bb3...10e299`; ethereum `0x64d0d7...b95adc`; ethereum `0x6a2525...e0e553`; ethereum `0x6c383b...f45baa`; ethereum `0x6eedbc...27d72e`; ethereum `0x76ef59...de7b60`; ethereum `0x76f130...24dc63`; ethereum `0x838a42...2f73d4`; ethereum `0x861920...7cfd47`; ethereum `0x89b26d...85688c`; ethereum `0x8a9925...565edb`; ethereum `0x8ba1dd...6ab7cb`; ethereum `0x8d8677...58a7ee`; ethereum `0x98ef9b...93d505`; ethereum `0x9efa37...fe50ff`; ethereum `0xa616f4...d31fb5`; ethereum `0xaa7593...0c6a2c`; ethereum `0xad5097...e1ab58`; ethereum `0xb33706...0e8e91`; ethereum `0xbba888...513766`; ethereum `0xbbf68c...ea13fb`; ethereum `0xc134b0...97bcab`; ethereum `0xc4b772...5ef67f`; ethereum `0xc53bc4...3c587c`; ethereum `0xc53cc2...ffc415`; ethereum `0xcaa453...4ffa20`; ethereum `0xcbba3f...e9b683`; ethereum `0xd5b220...0143fa`; ethereum `0xdc6311...7692ae`; ethereum `0xe00cac...3571a4`; ethereum `0xefd14b...cd4a58`; ethereum `0xf650f2...1f77f8`; ethereum `0xfceeea...a0cf05`; ethereum `0xfe24ad...d6498d`; ethereum `0xfec831...1af7d3` | ⚠️ Unaudited |
| AdaptiveCurveIrm | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-255496 | `0x870ac1...ba00bc` | ⚠️ Unaudited |
| Bundler3 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-255447 | `0x656619...c90245` | ⚠️ Unaudited |
| CompoundV2MigrationAdapter | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-255529 | `0x9b89c0...8f1101` | ⚠️ Unaudited |
| CompoundV3MigrationAdapter | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-255664 | `0xdba5bd...b26773` | ⚠️ Unaudited |
| DelayedERC4626Oracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x363fff...c52321` | ⚠️ Unaudited |
| DummyFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3866d...88973d` | ⚠️ Unaudited |
| EACAggregatorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fffff...6818f6` | ⚠️ Unaudited |
| ERC20WrapperAdapter | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-255737 | `0xf83d17...87f962` | ⚠️ Unaudited |
| EthereumBundler | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-255548 | `0xa7995f...f55107` | ⚠️ Unaudited |
| EthereumBundlerV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-256289 | `0x4095f0...e30077` | ⚠️ Unaudited |
| EthereumGeneralAdapter1 | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-255422 | `0x4a6c31...be0ae0` | ⚠️ Unaudited |
| Lens | periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x507fa3...a91ff4` | ⚠️ Unaudited |
| Lens | periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x930f1b...51ef67` | ⚠️ Unaudited |
| MetaMorphoFactory | registry | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-255554 | `0xa9c3d3...c41101` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x739d8a...092237`; ethereum `0xbdd485...8a1372`; ethereum `0xd34687...bddf43` | ⚠️ Unaudited |
| MetaMorphoV1_1Factory | registry | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-255338 | `0x1897a8...535c24` | ⚠️ Unaudited |
| MetaOracleDeviationTimelockFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44d049...17a9f4` | ⚠️ Unaudited |
| Morpho | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x33333a...b33333` | ⚠️ Unaudited |
| Morpho | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x777777...f5f3e0` | ⚠️ Unaudited |
| Morpho | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x888888...b58888` | ⚠️ Unaudited |
| Morpho | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-255592 | `0xbbbbbb...eeffcb` | ⚠️ Unaudited |
| MorphoChainlinkOracleV2 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95e85f...24bd87` | ⚠️ Unaudited |
| MorphoChainlinkOracleV2Factory | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-255399 | `0x3a7bb3...3ad766` | ⚠️ Unaudited |
| MorphoMarketV1AdapterV2Factory | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-255386 | `0x32bb1c...61ccc1` | ⚠️ Unaudited |
| MorphoOFTAdapter | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-255427 | `0x50d3d6...5649d9` | ⚠️ Unaudited |
| MorphoToken | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-255524 | `0x9994e3...330999` | ⚠️ Unaudited |
| MorphoTokenEthereum | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-256290 | `0x58d97b...69c2b2` | ⚠️ Unaudited |
| MorphoVaultV1AdapterFactory | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-255631 | `0xd1b8e2...f63394` | ⚠️ Unaudited |
| ParaswapAdapter | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-255294 | `0x03b525...c6c38f` | ⚠️ Unaudited |
| PreLiquidationFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ff336...f83476` | ⚠️ Unaudited |
| PublicAllocator | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-255759 | `0xfd32fa...91c75d` | ⚠️ Unaudited |
| RegistryList | registry | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-255391 | `0x3696c5...d9364e` | ⚠️ Unaudited |
| SavingsDai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83f20f...42beea` | ⚠️ Unaudited |
| SupplyVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 6 | ethereum | n/a | 6 deployments: ethereum `0x36f8d0...44cab6`; ethereum `0x490bbb...26aba4`; ethereum `0x9dc709...8a190c`; ethereum `0xa5269a...db0529`; ethereum `0xafe713...4aac2f`; ethereum `0xd508f8...188dc7` | ⚠️ Unaudited |
| Swapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd0066...48ab77` | ⚠️ Unaudited |
| SwapperERC4626 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8458ea...31c9bf` | ⚠️ Unaudited |
| SwapperSimpleUniV3 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45241b...33d54a` | ⚠️ Unaudited |
| UniversalRewardsDistributor | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-255387 | `0x330eef...e61ddb` | ⚠️ Unaudited |
| UrdFactory | registry | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-255530 | `0x9baa51...ee7c8d` | ⚠️ Unaudited |
| VaultV2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 15 deployments: ethereum `0x0bf016...eaa334`; ethereum `0x23f5e9...8e1e11`; ethereum `0x6dc58a...80e6bf`; ethereum `0x8c106e...afa3d0`; ethereum `0x91600e...1be7d8`; ethereum `0xa2eaad...7d68cd`; ethereum `0xb57676...559fb2`; ethereum `0xbeef08...ef0f51`; ethereum `0xbeeff0...b96210`; ethereum `0xbeeff0...4aa98a`; ethereum `0xbeeff2...fca757`; ethereum `0xc21b08...b38bbd`; ethereum `0xe15fcc...4e11e0`; ethereum `0xf39ac0...56256b`; ethereum `0xf7c83e...441de6` | ⚠️ Unaudited |
| VaultV2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xbeef0c...5ddb2f` | ⚠️ Unaudited |
| VaultV2Factory | registry | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-255538 | `0xa1d94f...6c0405` | ⚠️ Unaudited |
| Vester | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x21aef9...a16e60`; ethereum `0x229ad3...770bfc` | ⚠️ Unaudited |
| Wrapper | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-255531 | `0x9d03bb...0e5123` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (939)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00260d...a6cd78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0076af...a41254` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00a58b...457012` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00a773...9d7c29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00cb80...eae050` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x010b33...6c0a67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x014356...c1d0f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01b87e...9e3bea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01ce12...d7e26c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x022790...2b8e86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x022ea9...77709e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x029849...5760e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02d4eb...f254a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x045b19...d1b285` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x047eb4...02fe13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x050c04...cec58f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x056f86...50815c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05b83a...b1dd27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05d0b8...93727d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06812a...22cee7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06e416...a62eb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x080874...f9f3a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0816bf...8a0cc1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0959da...060721` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09619d...2bd644` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0981af...5aca99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x099c95...0c46a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a4759...5fb065` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a8baf...72ca01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0af5be...952466` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b0935...b28255` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b84ed...8fceb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b8b84...eeae4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0bc779...f0c64f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0bdb05...958274` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c4f3a...4036d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ca05b...0fe235` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0cf321...e74539` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d60a2...04189e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e57bb...4d85be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ebdc6...adb475` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f2cea...2880f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f3d55...3d883c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f486f...8a50f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f6b59...c87df4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0fbad9...9f803c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x102fe4...225ae9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x104cd0...f104d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10e791...9b9be8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10ec2c...6c69ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x116657...c6a8e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11786f...371c83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11832c...03a956` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x118727...ecc593` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x119388...080e26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12fa40...247298` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x134fe0...b4fb82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x139c85...d43587` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13b357...e9f455` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x150da4...dfeb02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x152e19...8aa197` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x155134...5e3c40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15c8ea...144352` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x162781...ea06d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x162aa5...0a58db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x163099...7f89c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1692c6...fb64d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16a73e...40a867` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-255329 | `0x16f38d...6d2f9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x178f92...33f007` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17d054...09f1c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x184168...4e5990` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x189110...eee125` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18ef1e...45c25e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1964b1...847816` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19be85...8770a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19c22c...c1c506` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19dfc7...e5bcc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a2418...2df601` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a4620...7c9c45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a4b59...112b81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ac49d...0884fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b0f8c...9a6159` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b58b6...a36ac5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b61ba...70bb1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b988a...c21b3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c0a06...6c037e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c6e43...bf5791` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cedaa...576a4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d2446...0d0dfd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d3afb...cdb4ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d9bfd...c309fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1da561...a97c16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1dec99...ca7a10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ec437...448eb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ecf81...8063cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f2461...c244a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f9eb0...39334a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fae3f...b7c6fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2006d5...8cfa49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20134c...1e96ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20df77...9198e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x213f30...9ffb23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21cbd7...a1e072` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x232c59...db2b5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x241c59...2e55f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2425fb...4e89c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x242db4...9dacee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24340e...dc56dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2465ce...e2a028` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24bf21...ab5770` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x253974...f2a70f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2540ff...e73b3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x256b6e...5eb765` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2659db...fc9789` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2662e5...c52989` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26929b...a10fb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26b40e...004fc6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-255364 | `0x26bf52...8c8647` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2715d1...4456ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2729f4...b4bb05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x278833...80e143` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27aeef...de7a4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27b97a...aad056` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28021e...edf0c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2885d1...6c6023` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28cc70...e832f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x299e74...59034b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29a5cb...c54af2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29d9ce...098ac8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a29ec...07c63d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2abfc5...614df1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b448f...b4ed77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c83a2...9b137a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c9a8c...f601c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ca42d...5b1275` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d5057...29ffd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e3bc7...16fd00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e4a8a...3719d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ecaf2...0cbb59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f2bc5...8217c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f2ea2...b32d63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x302ce0...e6cbce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3089db...f970cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x308b6e...4f77ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30ece5...a721c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x310ceb...4d4819` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x313bb1...3a6f8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31afd6...5ddfdf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31c1ed...44d176` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31e0a8...296ee9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32a54c...7eb9da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33cca8...46352d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x341d3b...18dce6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x341e42...565f4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x343fe9...3776de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3497a3...60f4b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34cd04...af7fcd` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x3585e3...092884` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35e3f7...36ec56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35f08e...457484` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x363eed...66a6e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x365796...6b22a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36d399...070219` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36fdcd...e4dba5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3716aa...a4a791` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x373bee...67d573` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3771be...38caaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3783ff...843061` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37bc74...f6a9e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37d0ab...11bdfa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x383090...e502d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x385826...4728ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x389316...bbd767` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38c5ae...b4699b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38f709...1382c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3907ed...b3892a` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x391a3f...c7653a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39422f...98b50f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39a389...91631f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-255396 | `0x3a0e2e...479558` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a4bde...83207f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a9ef5...b21ad6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ae18a...5ec95c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ae20f...5b324d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3affc4...6dc74a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b0eef...749f12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b15a9...45217d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b41d5...f02dc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b9cf7...951eb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3bc60e...67661c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c5291...aa2c30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d1fdf...77fb3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d47ef...453766` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d7ae7...aba3a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d7fd1...71a639` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d9032...be7edc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d970a...6b3474` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3dd66d...0d1183` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e33c1...900c03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e59bc...2b6914` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e7d1e...64e32d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e9a41...9e7f14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ee9e5...98fe16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x404be4...b32055` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40b91a...bf3646` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40b960...3ec1c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41358f...5cd7c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x418a6c...8b1685` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42a3b0...2b8dda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x439ea8...e8fc89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43cbd8...0c5075` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43cc04...5680e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x440c81...c64d9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x445139...d50140` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x447454...290f1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44b1f8...25ef94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x458483...f0a2df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x46848f...da944f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x470aa5...4a6724` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x477716...8acf59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x478909...4ade0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x483d36...a69fbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x495d2f...6740e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x497bac...cf784c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49f3c5...b80527` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a31bd...0d5ae0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b5fab...b7e00b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d2574...b10eba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d76ae...abb33e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e58ab...785848` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e8644...0d592e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e8eab...f600ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ea6ec...618c0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ef83a...2237b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f0a37...f8fcc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f4f85...b7cb39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f7595...dd08c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ffa9a...6d27eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ffc43...f01507` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50b723...46e8b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x510ba5...4c6310` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5200f8...a02857` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5276c2...96a629` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5299aa...812936` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x536218...54c2d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x543624...034206` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5443bf...d86c22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x545f61...de8eb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x553c01...8ba481` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5586bf...80189c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57560e...b57d08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57c9ab...ba06a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57d4fb...a5e590` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x586524...4a636b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x587738...fd2a93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58921a...4a2379` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58a421...b759fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58c4b0...9f1773` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5935ff...04aedb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5957c8...90f9bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59ccf6...6c59d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59f24f...2de8ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a4081...f9e00d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ae8f5...77463f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c3d13...b39d22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d7d68...c7bc89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f3d02...4ce346` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f683b...ba04ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fb391...5a5745` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x605d5c...9bc360` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x608d47...f85b00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60cbe8...11fea1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60d318...00b79a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60eefe...b8873d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x611465...977850` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x611850...828b85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x611e0d...015921` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61b579...f67e1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61d614...81a5db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x625cd5...23a5f2` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x627d51...a8bf8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x630163...9c5cb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6369fd...a1b2a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63bba8...a477d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64d1bb...dee98d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64db7b...a515ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64ff36...a8d0d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x650a61...1dc49c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x653870...0c34f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x657fe4...8ce6ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65a773...dbc232` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x663040...3e093b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x674ecf...75944a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67ab75...5b2046` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67c2e6...605dde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x681c0b...192cce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68577f...84fd38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68aa37...c1593f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68cb58...385afa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68ff67...d8c4ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6907f9...2dc06d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6940ef...ebf0de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x698e02...1a434a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69b42d...2fa868` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a42f8...7bd52b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b54e8...2167b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6bd37c...1f2849` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c2ff5...ad62cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c8e01...35e6c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6cea38...1bc0c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6cec54...f71e36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d3273...89891f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d6a3b...4bcedc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e4508...99a852` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6eac85...69e6d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ebc52...c2233f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ec687...5a7385` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f941e...e99b72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f9d4d...e79aac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6fc83e...9d2f42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6fca29...d3b61c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x715614...ab863e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x716bb7...0e1573` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x717a27...521d7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71aafd...b078c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71c8d4...53bf44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x721aae...78423b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x724d08...0f3a05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72d227...5e6938` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72da6d...45a27a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72fc55...547e2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7327f3...fdd082` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x736e09...c4d5d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x737795...33f4fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73a11e...09fb75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73dc1b...e6af07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73f4b4...ca0f8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73fcce...49fbda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x74e1fb...ad5bd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x755748...93e78a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x759639...b81e00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x759bbc...976d02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75d22b...7204d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75d9e4...d87581` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75db8b...fa1ff5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75e7c3...814de8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x763625...9a250a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x764fb9...cc5c52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7694fa...a69200` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76e5c2...733e6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x772d25...8028d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x785433...4530d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7866a5...edeed6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x789190...42a26c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79370e...2993e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a9122...c2f85e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b507f...1d1e50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b5a9c...74e8de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b9276...2b9a42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7bf3ad...1c548b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d096e...a3a1c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d77fd...c55fa0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d8bd7...876bc1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d8bf8...fe612b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ece4e...726797` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7eed37...cc21ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f3022...bda9a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7fc354...98be3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80b4ca...b6c52d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x812436...626674` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8183d4...f2bead` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82597c...759607` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82cf29...3e0672` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82e723...c3a864` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x833d8e...60965a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83441c...7e6fa7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x834fa7...c8e8a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83ee2e...a945d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84e51a...5efcb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x851ec5...b0fe02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x855407...8a2281` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x855dbe...319feb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x861dcd...9837f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x862d7e...d04549` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86392d...c52812` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86979c...616f4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86cf33...65a5d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86e345...7da6ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x875d60...91b97e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8797ab...35e3d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8814ef...be8e17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x883ba6...540201` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x891780...050622` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x899411...57d9fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89c792...b578f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89f520...d845eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a25a7...3168c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a4320...ca323a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a5f90...f2bddf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b1139...cef3b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b11ce...b6e206` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b2f92...b0bb0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b86cd...63c87e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c318f...060d5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8cf88b...ebf537` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d213c...a043d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8dd1cd...a97c61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8df9de...9b43d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e01ed...827498` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e0ae6...fd333e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e7ae4...f67b4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8eaf61...d8a132` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f226f...8ddcaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fa444...9dc868` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fd7b5...59e47e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fe5f6...10c4b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8feccb...4b1342` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9056d4...4696d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x908edc...7d83ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90f6f7...834ce5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x910bd3...ee1321` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91401c...33e998` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x919c77...2dd19f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x926a93...313363` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x927f78...5e9b75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9282db...197620` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92877b...855236` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9288c1...b29254` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x935939...b30d3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9364a7...16abd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x939624...2da064` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x939f37...469588` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x953da5...310f6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95cdcf...9434b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x960cf9...ccf602` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9613a5...448739` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x963fe1...baccde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96450a...c47d77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x966a8c...2bec6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96c455...10f4e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x971e8f...5eee0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9730d0...4f64a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97bb0e...b2e21e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97e4f2...f944e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98334b...d69c00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x989b83...400ad7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-255522 | `0x98ccb1...2f9bdc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98da11...226d4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99c111...4ee6ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99ce8d...29c873` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9adf01...481ae5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ae961...9e543e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b41ad...f25bfe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9bb96b...b1571c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9bbcd5...5abfb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c34f0...72bb3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c3cf5...e9da9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ca359...8ababf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9cb248...a71fe0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d7809...652559` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9dcbea...fae0bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9de3b3...176a0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ed0d1...bce383` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f0052...9c6718` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f075e...1121ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f3aec...e3c9dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f3c09...6d644a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9fccf4...4b5751` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9fe84f...d1f38c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa00666...340180` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa01d7c...ac28a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa05dbc...f69a2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1b2e8...d5754b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa20623...a5a03a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa27cfd...07cdd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2960b...fbf172` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa34317...981c8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3603c...270985` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa39b67...0d0f69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3a4c4...667884` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa4a4b6...9a3e7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa51b67...e0a793` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa549bc...6839b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5814c...fd6394` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5f1a4...f459d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa60227...358db3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa61495...ea4727` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6bcac...d989ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6d9d3...524310` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6fa15...7187b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa767f7...985627` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7becd...c81698` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7cc7f...f43e5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7f36c...8ec75c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8156e...44184a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa86ae3...6c77fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa89369...8bfe41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8f16c...71df4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8f4e5...29964e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9069b...146034` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9132a...cc6371` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa96427...6e8f93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9b7bb...e6aacc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9ca15...e39cfc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9cdfd...813852` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9f3fc...3ac92b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa5aa8...203f70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa69d9...74db6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaab2f6...557756` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab137e...16f893` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab8046...46c71a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaba1ea...3b70e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac099d...f030b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac6f42...ae8ba2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaca3f1...75f560` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xacd301...0a929f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xacd365...b9d441` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad35bd...f9ad94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad940e...f11b9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xadcd1b...7c13ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae13f0...9bbf05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae2ebe...cd816e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae60ec...d384e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae74fa...a34da7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaea7ef...1431c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf5e8d...1588a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb06115...b45bb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb09fc5...f477b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1362f...d5cba1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1959a...5b15bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2556f...697de7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb27102...b77e8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb28b46...90d1c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2ab82...803670` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2ad16...935865` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2dde9...16874e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2ed43...16d57a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2f68c...63411e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3a074...256c51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3a474...9fb959` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4bfba...271a20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6f944...475c63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7c243...4dd152` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8169f...b036a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb83aac...405e34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb864d9...d0d1fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb89519...4c783e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8cc37...38b50c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9583c...b92216` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba0b7f...46c3c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbc9ab...879633` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbce736...ca876e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbcf115...564e85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbcf579...902539` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe456f...cb75d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe858d...aadd4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf1296...25dbfa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf86e7...566b06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbfa807...70b441` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbfc189...b75534` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xbfc8d6...4f7de8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc04126...960fa1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc043cf...b8c1b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc111d8...622bba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc13a3c...ed28cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1523b...f21fe5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1d1d0...13a1f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1da2e...914029` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2b1e0...8ddd90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2d777...3efe00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2e47b...92df9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc330d2...fdcc73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3c547...c83ded` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3dc04...672bc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc40ec8...a37ff2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc44b2b...72ba2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc47bca...c37205` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4aa0d...524489` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5c8c9...c6f603` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc68fc1...ff5585` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc697fc...1a17d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc73a74...7ebf97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc741f6...935e3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7bb32...ca2dfc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8002b...1bbc22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc85ce8...958b55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8679d...1abaf0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc86834...a4add7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc88058...79dd4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8d22b...54caaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8dcca...feba96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc94608...17aff9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc96129...60305b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca0ccc...4cf044` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb3b43...90a83e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbe555...083e2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc20c0...e4785a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc2c81...8e0959` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc3387...f6ee5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc5786...686e67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd0770...53b29a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce1051...657a7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcef0cc...3298c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcfc5de...bd285d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcfe54b...cab4a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd009e5...cb5dcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0ac37...607c66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0b34c...527f36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd208ba...4d010c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd334eb...955c43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3cdf3...d152dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3f3a8...0c138c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd41390...ce75ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd423c9...a4f329` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd48b96...bc6e3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd54b03...848501` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd5661d...e3ef97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd59199...a92a13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd5df4f...48dad8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd663f0...a4c635` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6a3a9...3af3d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6cc08...91c7a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7e517...52a8a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8237e...f789dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd88b87...ae7c06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd90ca9...7a47e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda31bc...7ba196` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda8d0b...d67a97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdae77f...0c61a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdaeb40...c7f009` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb299d...f92f5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc0a51...78d75a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc270a...e43316` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc4bdb...2edc75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd722a...648d2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xddf5e7...018e5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xddff74...456243` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdeaa42...20fc36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdebc51...92009a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdebc92...528765` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdec0a1...f90b82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdee402...e450ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf14ce...3208f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf3024...7fbd23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf627a...3b10ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf9a9d...3f9eac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf9f75...0f7606` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdfd03b...42d0fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdfd652...e931c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe04b9c...7518ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe04cdc...0a405b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe1bcc8...3e2c2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe20ca8...f57706` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe25177...12c0fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe25277...1f3e13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe25581...e95693` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe28371...8e5629` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe2d6d8...389017` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe2f408...9e5b85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe44175...4f15f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe48498...87fec6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe49ca2...6503bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe510e1...cd8403` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6a7b5...50a01c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6a899...f5a39a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6dcf0...b8ea48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7015c...ac3741` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe785a2...7c676f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7abf9...0e577b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7b01f...29de33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe87f1a...44a862` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe93dae...7c5922` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9f18f...4601e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea286b...890596` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea4f29...05760f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeaf04b...9e747d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeafd23...d5882a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb8c63...84281b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb988b...2d3cab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xebbb2b...0e0e55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xebc5cc...fbd250` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec0bc4...665024` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec180e...6ec4c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec1b14...e8db9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec1d1b...9484aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xedd4dc...966efc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee636e...39d40d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeef344...2b39fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef0a74...c52336` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef8a4a...a7759a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef9fd1...9f62a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xefb565...1254f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xefb6af...663cd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xefcbea...a70fef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf02615...653f20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf05d9b...a13deb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0985f...382efe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf133fa...6dcf5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf14278...1c1890` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf14dc5...ebd16b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2329d...9afb02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2c80a...ea6045` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf322fb...68c49f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf36b87...73d441` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf3bc73...20e845` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf3ccb2...255b28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf493f4...c200f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4a57f...f43115` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf52b4f...8e7479` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5ed5a...c2386b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5ef31...7b98eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf62356...47505c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7660f...44d860` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf86878...933eaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8d0ea...1b097f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf91321...36e814` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf9fcc6...6eee67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfaaa74...2e6ad6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb1a28...b4a8e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb2646...7dda2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb576b...ee973c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc2307...81f4ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc42d1...426aa1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfcb8b5...2975d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfcf181...246385` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd73ab...04a6e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfdc69d...da4daf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfdfa69...c02237` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe549d...8a2e7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe6720...e958df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe8367...a40d5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe9fae...8d8d3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff330e...0a8ee7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff5e54...baa57c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xffdb50...a100ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xffe4b3...3c08fa` | ❓ Unverified |
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
| native | 38 |
| upstream | 13 |
| standard_library | 0 |
| needs_review | 939 |

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
