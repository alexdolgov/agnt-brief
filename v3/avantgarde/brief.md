# Agentic Audit Brief: Avantgarde

## Export Authority

- Production state: **published scope**
- Raw selected rows: 12 across 3 audit(s)
- Eligible audit results: 3 (3 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Avantgarde (`avantgarde`)
- Website: [https://app.morpho.org/ethereum/curator/avantgarde](https://app.morpho.org/ethereum/curator/avantgarde)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, ethereum
- Contract surface: 85 unique implementations (85 raw deployments)
- Coverage basis: 4/6 confirmed own live verified implementations (66.7%); conservative 66.7% with 0 needs-review implementation(s)
- DeFi Llama TVL: $399,864.72
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Avantgarde. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across base, ethereum. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: erc20 (1), erc20permit (1), erc4626 (1), multicall (1)
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Lineage

This project reuses audited code from **Morpho** (`morpho`) in the VaultV2 subsystem.
3 audits inherited from `morpho`, scoped to that subsystem.

Total inherited audits: 3. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Fork Analysis

0 of 6 contracts are derived from known codebases. 6 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- MetaMorphoV1_1 (`0x5b56f9...154fe6`, chain 1)
- MetaMorphoV1_1 (`0xf79f51...6d53eb`, chain 1)
- VaultV2 (`0x132fe2...05c1ad`, chain 1)
- VaultV2 (`0x8e56cb...7cdb4d`, chain 1)
- VaultV2 (`0xebbae8...24ddcd`, chain 1)
- VaultV2 (`0xe34d43...6a492f`, chain 8453)

## Contract Surface Quality

- Indexed contracts: 1; live-surface contracts included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 6/6 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 4/6 (66.7%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 6 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 79 discovered implementations excluded (8 third-party/infra; 4 standard proxy/library)
- Proxy deployments represented within implementation groups: 6
- Deployed-live implementations: 6 of 85 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 4/6
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 85
- Raw deployments: 85
- Audits discovered: 3 (0 direct, 3 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-09 (fresh)
- Audit staleness (calendar age): 3 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 4 match-unverified
- Tier 1 coverage: 66.7% (ChainSecurity, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Blackthorn | Tier 2 | 4 | 66.7% | 2025-09 |
| ChainSecurity | Tier 1 | 4 | 66.7% | 2025-09 |
| Spearbit | Tier 1 | 4 | 66.7% | 2025-09 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| VaultV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379840 | `0x132fe2...05c1ad` | ✅ Audited |
| VaultV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379842 | `0x8e56cb...7cdb4d` | ✅ Audited |
| VaultV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379843 | `0xebbae8...24ddcd` | ✅ Audited |
| VaultV2 | unknown | project_anchor | own_supporting | 0 | base | unit-379845 | `0xe34d43...6a492f` | ✅ Audited |

### ⚠️ Verified + Unaudited (80)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveV2MigrationAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x402888...87961b` | ⚠️ Unaudited |
| AaveV2MigrationBundler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3dcc7...aa8e76` | ⚠️ Unaudited |
| AaveV3MigrationAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2cc8d5...bdb806` | ⚠️ Unaudited |
| AaveV3MigrationBundler | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x98ccb1...2f9bdc` | ⚠️ Unaudited |
| AaveV3OptimizerMigrationAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e2ea2...5ad972` | ⚠️ Unaudited |
| AaveV3OptimizerMigrationBundler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16f38d...6d2f9c` | ⚠️ Unaudited |
| AccessControlledAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00c7a3...275446` | ⚠️ Unaudited |
| AccessControlledOffchainAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00260d...a6cd78` | ⚠️ Unaudited |
| AdaptiveCurveIrm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x870ac1...ba00bc` | ⚠️ Unaudited |
| Aggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b8b84...eeae4d` | ⚠️ Unaudited |
| AggregatorFacade | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x010b33...6c0a67` | ⚠️ Unaudited |
| ArbitrumValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31982c...c38ac1` | ⚠️ Unaudited |
| BulkerGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf99e37...82c168` | ⚠️ Unaudited |
| Bundler3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x656619...c90245` | ⚠️ Unaudited |
| CompoundV2MigrationAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b89c0...8f1101` | ⚠️ Unaudited |
| CompoundV2MigrationBundler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26bf52...8c8647` | ⚠️ Unaudited |
| CompoundV3MigrationAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdba5bd...b26773` | ⚠️ Unaudited |
| CompoundV3MigrationBundler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a0e2e...479558` | ⚠️ Unaudited |
| ConfirmedTransactionModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e1b5a...d67f6b` | ⚠️ Unaudited |
| CPoR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x575a16...f28c51` | ⚠️ Unaudited |
| DelayedERC4626Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x363fff...c52321` | ⚠️ Unaudited |
| DualBot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f2cea...2880f4` | ⚠️ Unaudited |
| DummyFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3866d...88973d` | ⚠️ Unaudited |
| EACAggregatorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00a773...9d7c29` | ⚠️ Unaudited |
| ERC20WrapperAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf83d17...87f962` | ⚠️ Unaudited |
| ERC4626Feed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d3273...89891f` | ⚠️ Unaudited |
| EthereumBundler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7995f...f55107` | ⚠️ Unaudited |
| EthereumBundlerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4095f0...e30077` | ⚠️ Unaudited |
| EthereumGeneralAdapter1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a6c31...be0ae0` | ⚠️ Unaudited |
| Executor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72d227...5e6938` | ⚠️ Unaudited |
| FeedRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47fb25...ceeedf` | ⚠️ Unaudited |
| Firefighter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x213f30...9ffb23` | ⚠️ Unaudited |
| Flags | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24ec84...3bdabf` | ⚠️ Unaudited |
| KeeperRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f7595...dd08c7` | ⚠️ Unaudited |
| Lens | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x507fa3...a91ff4` | ⚠️ Unaudited |
| Liquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc88058...79dd4d` | ⚠️ Unaudited |
| MetaMorphoFactory | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xa9c3d3...c41101` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379841 | `0x5b56f9...154fe6` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379844 | `0xf79f51...6d53eb` | ⚠️ Unaudited |
| MetaMorphoV1_1Factory | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x1897a8...535c24` | ⚠️ Unaudited |
| MetaOracleDeviationTimelockFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44d049...17a9f4` | ⚠️ Unaudited |
| Morpho | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x33333a...b33333` | ⚠️ Unaudited |
| MorphoChainlinkOracleV2 | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x95e85f...24bd87` | ⚠️ Unaudited |
| MorphoChainlinkOracleV2Factory | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x3a7bb3...3ad766` | ⚠️ Unaudited |
| MorphoMarketV1AdapterV2Factory | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x32bb1c...61ccc1` | ⚠️ Unaudited |
| MorphoOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50d3d6...5649d9` | ⚠️ Unaudited |
| MorphoToken | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x9994e3...330999` | ⚠️ Unaudited |
| MorphoTokenEthereum | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x58d97b...69c2b2` | ⚠️ Unaudited |
| MorphoVaultV1AdapterFactory | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xd1b8e2...f63394` | ⚠️ Unaudited |
| Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0fc84a...546ebe` | ⚠️ Unaudited |
| ParaswapAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03b525...c6c38f` | ⚠️ Unaudited |
| PositionsManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4592e4...dac6de` | ⚠️ Unaudited |
| PriceConsumer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f7d99...22f242` | ⚠️ Unaudited |
| ProxyAdmin | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x857ff8...67acc0` | ⚠️ Unaudited |
| PublicAllocator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3df418...ca05c4` | ⚠️ Unaudited |
| RegistryList | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3696c5...d9364e` | ⚠️ Unaudited |
| ReservoirLooper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f6b59...c87df4` | ⚠️ Unaudited |
| SavingsDai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83f20f...42beea` | ⚠️ Unaudited |
| SimpleReadAccessController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a9d21...82700d` | ⚠️ Unaudited |
| SimpleWriteAccessController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x641b69...89dfe6` | ⚠️ Unaudited |
| SupplyVault | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x36f8d0...44cab6` | ⚠️ Unaudited |
| Swapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2540ff...e73b3e` | ⚠️ Unaudited |
| SwapperAngle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e8644...0d592e` | ⚠️ Unaudited |
| SwapperDaiUsds | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99ce8d...29c873` | ⚠️ Unaudited |
| SwapperERC4626 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x119388...080e26` | ⚠️ Unaudited |
| SwapperMakerPSM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0076af...a41254` | ⚠️ Unaudited |
| SwapperRusd | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x242db4...9dacee` | ⚠️ Unaudited |
| SwapperSimpleUniV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45241b...33d54a` | ⚠️ Unaudited |
| SwapperWsteth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fa444...9dc868` | ⚠️ Unaudited |
| UniversalRewardsDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x330eef...e61ddb` | ⚠️ Unaudited |
| UrdFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9baa51...ee7c8d` | ⚠️ Unaudited |
| UsycBot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e33c1...900c03` | ⚠️ Unaudited |
| UsycLiquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x385826...4728ce` | ⚠️ Unaudited |
| ValidatorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x264bdd...d50236` | ⚠️ Unaudited |
| VaultV2Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1d94f...6c0405` | ⚠️ Unaudited |
| Vester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21aef9...a16e60` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe384f1...411a72` | ⚠️ Unaudited |
| Wrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d03bb...0e5123` | ⚠️ Unaudited |
| WstethBot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf14dc5...ebd16b` | ⚠️ Unaudited |
| WstEthStEthExchangeRateChainlinkAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x905b7d...db1421` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe34d43...6a492f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2025-09-15-blackthorn.pdf](https://github.com/morpho-org/vault-v2/blob/main/audits/2025-09-15-blackthorn.pdf) | Blackthorn | Audit | 2025-09 | fresh | Inherited from Morpho — forked code, scoped to VaultV2 | n/a | matched | 0 | 0 | 0 | 0 | n/a |
| [2025-09-15-chainsecurity.pdf](https://github.com/morpho-org/vault-v2/blob/main/audits/2025-09-15-chainsecurity.pdf) | ChainSecurity | Audit | 2025-09 | fresh | Inherited from Morpho — forked code, scoped to VaultV2 | n/a | matched | 0 | 0 | 0 | 0 | n/a |
| [2025-09-15-spearbit.pdf](https://github.com/morpho-org/vault-v2/blob/main/audits/2025-09-15-spearbit.pdf) | Spearbit | Audit | 2025-09 | fresh | Inherited from Morpho — forked code, scoped to VaultV2 | n/a | matched | 0 | 0 | 0 | 0 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [18819] 2025-09-15-blackthorn.pdf — matched: No reason recorded
- [18820] 2025-09-15-chainsecurity.pdf — matched: No reason recorded
- [18821] 2025-09-15-spearbit.pdf — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 66 |
| upstream | 7 |
| standard_library | 5 |
| needs_review | 7 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: normalized_scope_reviewed_exact_source_hash_v1=12

Fork inheritance lineage and inherited audits are included when available.
