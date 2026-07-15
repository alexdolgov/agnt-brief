# Agentic Audit Brief: Aave

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 108 (0 matched; 108 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Aave (`aave`)
- Website: [https://aave.com](https://aave.com)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: avalanche, ethereum, polygon
- Contract surface: 89 unique implementations (89 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $32,671,718,249.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Aave. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across avalanche, ethereum, polygon. Structural roles: 1 supporting. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: supporting (1)
- Contract kinds: contract (1)
- Detected standards: erc1967proxy (1)
- Frameworks: openzeppelin (1), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 37 contracts are derived from known codebases. 37 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x008342...90b80c`, chain 1)
- UnnamedContract (`0x08ae3b...7fdf01`, chain 1)
- UnnamedContract (`0x17a54b...51d11e`, chain 1)
- UnnamedContract (`0x198cac...e21d3d`, chain 1)
- UnnamedContract (`0x1f0753...525c3d`, chain 1)
- UnnamedContract (`0x312806...96af48`, chain 1)
- UnnamedContract (`0x3131fe...95b9a4`, chain 1)
- UnnamedContract (`0x37c316...3271ac`, chain 1)
- UnnamedContract (`0x513058...2d575c`, chain 1)
- UnnamedContract (`0x58131e...6b9649`, chain 1)
- UnnamedContract (`0x62d631...e90368`, chain 1)
- UnnamedContract (`0x65407b...2984dc`, chain 1)
- UnnamedContract (`0x664d73...8824f5`, chain 1)
- UnnamedContract (`0x6c044c...18e9f7`, chain 1)
- UnnamedContract (`0x7ec68b...a7753d`, chain 1)
- UnnamedContract (`0x943827...f9f931`, chain 1)
- UnnamedContract (`0x94e7a5...56c485`, chain 1)
- UnnamedContract (`0x956d8e...67a7f9`, chain 1)
- UnnamedContract (`0x973a02...d85a08`, chain 1)
- UnnamedContract (`0x99b2b6...2a6127`, chain 1)
- UnnamedContract (`0x9b91a0...f85f01`, chain 1)
- UnnamedContract (`0x9bfff4...a5389a`, chain 1)
- UnnamedContract (`0xad8879...53fe2f`, chain 1)
- UnnamedContract (`0xb3ce6e...fb3a9d`, chain 1)
- UnnamedContract (`0xb9b0b8...723155`, chain 1)
- UnnamedContract (`0xba1b3d...7508af`, chain 1)
- UnnamedContract (`0xbf10bd...386219`, chain 1)
- UnnamedContract (`0xc390db...c33c90`, chain 1)
- UnnamedContract (`0xcca852...e826c9`, chain 1)
- UnnamedContract (`0xd8b153...e48792`, chain 1)
- UnnamedContract (`0xd8b936...cd9da1`, chain 1)
- UnnamedContract (`0xda1266...505bb8`, chain 1)
- UnnamedContract (`0xdcd924...ad276d`, chain 1)
- UnnamedContract (`0xe19004...2f35cd`, chain 1)
- UnnamedContract (`0xe68ab4...be42be`, chain 1)
- UnnamedContract (`0xfbc184...af9c3d`, chain 1)
- TransparentUpgradeableProxy (`0x06002e...1e536a`, chain 1)

## Contract Surface Quality

- Indexed contracts: 1; live-surface contracts included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 37/37 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 37 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 52 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 12
- Deployed-live implementations: 37 of 89 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/1
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 36
- Unique implementations: 89
- Raw deployments: 89
- Audits discovered: 107 (107 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-07 (fresh)
- Audit staleness (calendar age): 33 fresh, 43 aging, 31 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (53)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfc9f44...0a091c` | ⚠️ Unaudited |
| AaveEcosystemReserveV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x25f222...286491` | ⚠️ Unaudited |
| AaveGenesisExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x797ae6...686b53` | ⚠️ Unaudited |
| AaveGenesisProposalPayload | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36ec8f...a62e94` | ⚠️ Unaudited |
| AaveIncentivesVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x238fcb...d6f76d` | ⚠️ Unaudited |
| AaveMigrationCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0x467b92...ba8a36` | ⚠️ Unaudited |
| AaveOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0229f7...db6f2d` | ⚠️ Unaudited |
| AavePropositionPower | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72bbcf...746631` | ⚠️ Unaudited |
| AaveProtocolDataProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x057835...78fc6d` | ⚠️ Unaudited |
| AaveProtoGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda8ad4...168a9d` | ⚠️ Unaudited |
| AaveToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x9c0435...74c8ba` | ⚠️ Unaudited |
| AaveTokenV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x7fc665...2ddae9` | ⚠️ Unaudited |
| AaveVoteStrategyToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5e83c...e3a391` | ⚠️ Unaudited |
| AIP9 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd08e12...50709b` | ⚠️ Unaudited |
| AssetListingProposalGenericExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62121b...549d97` | ⚠️ Unaudited |
| AssetVotingWeightProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ac493...5574aa` | ⚠️ Unaudited |
| AToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0e6442...262112` | ⚠️ Unaudited |
| ATokensAndRatesHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x286393...4c42fa` | ⚠️ Unaudited |
| ChainlinkSourcesRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x195bd5...f68669` | ⚠️ Unaudited |
| ConfigurableRightsPool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x41a086...f84f84` | ⚠️ Unaudited |
| CRPFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1156c3...52f10c` | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x161c64...112a99` | ⚠️ Unaudited |
| DelegationAwareAToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93b8cd...0ff126` | ⚠️ Unaudited |
| GenericLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe648ab...3c0c20` | ⚠️ Unaudited |
| GovernanceParamsProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf3b2c2...443a06` | ⚠️ Unaudited |
| HubInstance | unknown | project_anchor | own_supporting | 1 | ethereum | unit-378389 | `0x06002e...1e536a` | ⚠️ Unaudited |
| InitializableAdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1012cf...c17e25` | ⚠️ Unaudited |
| LendingPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x01ae7d...91f342` | ⚠️ Unaudited |
| LendingPoolAddressesProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5b7d5f...88bbac` | ⚠️ Unaudited |
| LendingPoolAddressesProviderRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x06f311...b0feb0` | ⚠️ Unaudited |
| LendingPoolCollateralManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x105c55...42c4e3` | ⚠️ Unaudited |
| LendingPoolConfigurator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a95ee...4d7521` | ⚠️ Unaudited |
| LendingPoolCore | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x3dfd23...a076d3` | ⚠️ Unaudited |
| LendingRateOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x17f73a...960dfb` | ⚠️ Unaudited |
| LendToAaveMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x317625...291de4` | ⚠️ Unaudited |
| LendVoteStrategyToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0671ca...b3ffdf` | ⚠️ Unaudited |
| OracleAnchor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x594543...d28261` | ⚠️ Unaudited |
| ParaSwapLiquiditySwapAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf7fc20...dd327f` | ⚠️ Unaudited |
| PendlePrincipalToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3de0ff...f80f49` | ⚠️ Unaudited |
| ReserveLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f892d...615b39` | ⚠️ Unaudited |
| StableAndVariableTokensHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x06c9d0...6478b2` | ⚠️ Unaudited |
| StableDebtToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6ff122...d6dfc6` | ⚠️ Unaudited |
| StakedAave | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x481484...0d03a1` | ⚠️ Unaudited |
| StakedAaveV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4da27a...e870f5` | ⚠️ Unaudited |
| StakedTokenV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1438f4...f09e67` | ⚠️ Unaudited |
| StakedTokenV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa11169...95fb47` | ⚠️ Unaudited |
| StakeUIHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06abcc...76ae68` | ⚠️ Unaudited |
| UiPoolDataProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x51c4ec...41d36d` | ⚠️ Unaudited |
| UiPoolDataProviderV2V3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa7da24...3c9182` | ⚠️ Unaudited |
| ValidationLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1967a3...126110` | ⚠️ Unaudited |
| VariableDebtToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1104c2...221c63` | ⚠️ Unaudited |
| WalletBalanceProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x34aa03...63d43e` | ⚠️ Unaudited |
| WETHGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8a47f7...1d27c8` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (36)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378353 | `0x008342...90b80c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378354 | `0x08ae3b...7fdf01` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378355 | `0x17a54b...51d11e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378356 | `0x198cac...e21d3d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378357 | `0x1f0753...525c3d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378358 | `0x312806...96af48` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378359 | `0x3131fe...95b9a4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378360 | `0x37c316...3271ac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378361 | `0x513058...2d575c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378362 | `0x58131e...6b9649` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378363 | `0x62d631...e90368` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378364 | `0x65407b...2984dc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378365 | `0x664d73...8824f5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378366 | `0x6c044c...18e9f7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378367 | `0x7ec68b...a7753d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378368 | `0x943827...f9f931` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378369 | `0x94e7a5...56c485` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378370 | `0x956d8e...67a7f9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378371 | `0x973a02...d85a08` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378372 | `0x99b2b6...2a6127` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378373 | `0x9b91a0...f85f01` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378374 | `0x9bfff4...a5389a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378375 | `0xad8879...53fe2f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378376 | `0xb3ce6e...fb3a9d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378377 | `0xb9b0b8...723155` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378378 | `0xba1b3d...7508af` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378379 | `0xbf10bd...386219` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378380 | `0xc390db...c33c90` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378381 | `0xcca852...e826c9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378382 | `0xd8b153...e48792` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378383 | `0xd8b936...cd9da1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378384 | `0xda1266...505bb8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378385 | `0xdcd924...ad276d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378386 | `0xe19004...2f35cd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378387 | `0xe68ab4...be42be` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378388 | `0xfbc184...af9c3d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Collaborative Audit ReportMay 14 2026](https://github.com/sherlock-protocol/sherlock-reports/blob/f5b20449ff1a769af108c2b2fa6ee928a0c77232/audits/2026.05.14%20-%20Final%20-%20Aave%20Labs%20Collaborative%20Audit%20Report%201778767107.pdf) | yAudit | Audit | 2026-02 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 56 | high |
| [Security AuditFeb 19 2026](https://github.com/aave/aave-v4/blob/e2fb6320d28ed9c6bba66d47f70fed59aef2f64c/audits/2026-01-28_Aave-V4_ChainSecurity.pdf) | ChainSecurity | Audit | 2026-01 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 29 | high |
| [Security Audit - Tokenization SpokeFeb 10 2026](https://github.com/aave/aave-v4/blob/main/audits/2026-02-10_TokenizationSpoke_ChainSecurity.pdf) | ChainSecurity | Audit | 2026-02 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Security ReviewFeb 10 2026](https://github.com/aave/aave-v4/blob/e2fb6320d28ed9c6bba66d47f70fed59aef2f64c/audits/2025-11-06_Aave-V4_TrailOfBits.pdf) | Trail of Bits | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |
| [Collaborative Audit ReportFeb 05 2026](https://github.com/sherlock-protocol/sherlock-reports/blob/e80cb8551d5ab212d4eb0b6f04bff813d11dab03/audits/2026.02.05%20-%20Final%20-%20Aave%20Labs%20Collaborative%20Audit%20Report%201770295450.pdf) | yAudit | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 39 | high |
| [Security ReviewMar 31 2026](https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2026-03-31_Enigma_Aave-v3.7.pdf) | Enigma Ventures | Audit | 2026-03 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [Supervised Security ReviewMar 30 2026savant](https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2026-03-30_Savant_Aave-v3.7.pdf) | yAudit | Audit | 2026-03 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 17 | high |
| [Security Assessment & Formal Verification ReportMar 29 2026](https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2026-03-29_Certora_Aave-v3.7.pdf) | yAudit | Audit | 2026-03 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Security ReviewMar 27 2026](https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2026-03-27_Pashov_Aave-v3.7.pdf) | Pashov Audit Group | Audit | 2026-03 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 24 | high |
| [Security Audit ReportMar 26 2026](https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2026-03-26_MixBytes_Aave-v3.7.pdf) | MixBytes | Audit | 2026-03 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 25 | high |
| [Audit Contest ReportMar 26 2026](https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2026-03-26_Sherlock_Aave-v3.7.pdf) | Sherlock | Contest | 2026-03 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | medium |
| [Security ReviewNov 29 2025 (also discovered via alternate URL)](https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2025-11-29_Pashov_Aave-v3.6.pdf) | Pashov Audit Group | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 26 | high |
| [Security Assessment & Formal Verification ReportNov 18 2025](https://github.com/aave-dao/aave-v3-origin/blob/9f69c714350635787439608b52fb6064ce991bba/audits/2025-11-18_Certora_Aave-v3.6.pdf) | yAudit | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [Security Audit ReportNov 18 2025](https://github.com/aave-dao/aave-v3-origin/blob/9f69c714350635787439608b52fb6064ce991bba/audits/2025-11-18_MixBytes_Aave-v3.6.pdf) | MixBytes | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [Supervised Security ReviewNov 18 2025savant](https://github.com/aave-dao/aave-v3-origin/blob/9f69c714350635787439608b52fb6064ce991bba/audits/2025-11-18_Savant_Aave-v3.6.pdf) | yAudit | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 16 | high |
| [Security ReviewNov 16 2025.st0{clip-path:url(#SVGID_00000012464508073868947960000011070647625777785502_);}](https://github.com/aave-dao/aave-v3-origin/blob/9f69c714350635787439608b52fb6064ce991bba/audits/2025-11-16_Blackthorn_Aave-v3.6.pdf) | yAudit | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [Security Audit ReportJul 18 2025](https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2025-07-18_MixBytes_AaveV3.5.pdf) | MixBytes | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 21 | high |
| [Security ReviewJul 17 2025stermi](https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2025-07-17_StErMi_Aave-v3.5.md) | yAudit | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 23 | high |
| [Smart Contract AuditJul 17 2025](https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2025-07-17_ABDK_Aave-v3.5.pdf) | ABDK | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 27 | high |
| [Security AssessmentJul 14 2025](https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2025-07-14_Certora_AaveV3.5.pdf) | yAudit | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [Security ReviewJun 12 2025.st0{clip-path:url(#SVGID_00000012464508073868947960000011070647625777785502_);}](https://github.com/aave-dao/aave-v3-origin/blob/74412e2b6e0b1973fac6837b6a488f8eaaeac4b1/audits/2025-06-12_Blackthorn-v3.4_Report.pdf) | yAudit | Audit | 2025-06 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 50 | high |
| [Security AssessmentJun 11 2025](https://github.com/aave-dao/aave-v3-origin/blob/74412e2b6e0b1973fac6837b6a488f8eaaeac4b1/audits/2025-06-11_Certora_Aave-v3.4_Report.pdf) | yAudit | Audit | 2025-06 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |
| [Smart Contract Security Audit ReportJun 11 2025stermi](https://github.com/aave-dao/aave-v3-origin/blob/74412e2b6e0b1973fac6837b6a488f8eaaeac4b1/audits/2025-06-11_Stermi_Aave-v3.4_Report.md) | yAudit | Audit | 2025-06 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 35 | medium |
| [Security ReviewMay 13 2025](https://github.com/aave-dao/aave-v3-origin/blob/74412e2b6e0b1973fac6837b6a488f8eaaeac4b1/audits/2025-05-13_Enigma_Aave-v3.4.pdf) | Enigma Ventures | Audit | 2025-05 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Security Audit Report - V3.1-V3.3Aug 8 2025ottersec](https://github.com/aave/aptos-aave-v3/blob/main/audits/Ottersec%20Aave%20Aptos%20V3.1-V3.3%20Report.pdf) | yAudit | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [Security Audit Report - Core V3.0.2Jun 18 2025spearbit](https://github.com/aave/aptos-aave-v3/blob/main/audits/Spearbit%20Aave%20Aptos%20Core%20V3.0.2%20Report.pdf) | Spearbit | Audit | 2025-06 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 31 | high |
| [Security Audit Report - Core V3.1-V3.3Jun 18 2025spearbit](https://github.com/aave/aptos-aave-v3/blob/main/audits/Spearbit%20Aave%20Aptos%20Core%20V3.1-V3.3%20Report.pdf) | Spearbit | Audit | 2025-06 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 15 | high |
| [Security Audit Report - Periphery V3.0.2Jun 18 2025spearbit](https://github.com/aave/aptos-aave-v3/blob/main/audits/Spearbit%20Aave%20Aptos%20Periphery%20V3.0.2%20Report.pdf) | Spearbit | Audit | 2025-06 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 12 | high |
| [Security Assessment & Formal Verification Report - Core V3.0.2Apr 2025](https://github.com/aave/aptos-aave-v3/blob/main/audits/Certora%20Aave%20Aptos%20Core%20V3.0.2%20Report.pdf) | yAudit | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [Security Assessment & Formal Verification Report - Core V3.1-V3.3Apr 2025](https://github.com/aave/aptos-aave-v3/blob/main/audits/Certora%20Aave%20Aptos%20Core%20V3.1-V3.3%20Report.pdf) | yAudit | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [Security Assessment & Formal Verification Report - Periphery V3.0.2Apr 2025](https://github.com/aave/aptos-aave-v3/blob/main/audits/Certora%20Aave%20Aptos%20Periphery%20V3.0.2%20Report.pdf) | yAudit | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [Smart Contract Security Audit ReportMay 19 2025](https://github.com/aave-dao/aave-umbrella/blob/main/audits/MixBytes/Aave%20Umbrella%20Security%20Audit%20Report.pdf) | yAudit | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [Smart Contract Security Audit ReportMay 19 2025ackee](https://github.com/aave-dao/aave-umbrella/blob/main/audits/Ackee/ackee-blockchain-aave-umbrella-report.pdf) | Ackee Blockchain | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 20 | high |
| [Audit Contest ReportJan 22 2025](https://github.com/aave-dao/aave-v3-origin/blob/v3.3.0/audits/2025-01-22_Sherlock_Aave-v3.3.0.pdf) | Sherlock | Contest | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [Security ReviewSep 30 2024](https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2024-09-30_Enigma_Aave-v3.2.pdf) | Enigma Ventures | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | medium |
| [Security Assessment & Formal Verification Report - Liquid eModesSep 19 2024](https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2024-09-19_Certora_Aave-v3.2_Liquid_eModes.pdf) | yAudit | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 15 | high |
| [Security ReviewSep 15 2024](https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2024-09-15_Pashov_Aave-v3.2.pdf) | Pashov Audit Group | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [Security Audit Report - Liquid eModesSep 12 2024](https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2024-09-12_Oxorio_Aav3-v3.2.pdf) | yAudit | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [Security Assessment & Formal Verification Report - Stable Rate RemovalSep 10 2024](https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2024-09-10_Certora_Aave-v3.2_Stable_Rate_Removal.pdf) | yAudit | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [GHO Stability Module Contract ReviewOct 23 2023](https://github.com/aave/gho-core/blob/main/audits/2023-10-23_GSM_SigmaPrime.pdf) | Sigma Prime | Audit | 2023-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [GHO Smart Contract Security Assessment ReportJul 06 2023](https://github.com/aave/gho-core/blob/main/audits/2023-07-06_SigmaPrime.pdf) | Sigma Prime | Audit | 2023-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [GHO Steward Contract ReviewJun 13 2023](https://github.com/aave/gho-core/blob/main/audits/2023-06-13_GhoSteward_SigmaPrime.pdf) | Sigma Prime | Audit | 2023-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [GHO Steward Security Assessment & Formal Verification ReportMar 14 2023](https://github.com/aave/gho-core/blob/main/audits/2024-03-14_GhoStewardV2_Certora.pdf) | Certora | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [GHO Smart Contract AuditMar 01 2023](https://github.com/aave/gho-core/blob/main/audits/2023-03-01_ABDK.pdf) | ABDK | Audit | 2023-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 17 | high |
| [GHO Audit V2Nov 10 2022](https://github.com/aave/gho-core/blob/main/audits/2022-11-10_Openzeppelin-v2.pdf) | OpenZeppelin | Audit | 2022-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [GHO AuditAug 12 2022](https://github.com/aave/gho-core/blob/main/audits/2022-08-12_Openzeppelin-v1.pdf) | OpenZeppelin | Audit | 2022-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 18 | high |
| [Formal Verification of Aave V3 upgrade to V3.0.1Nov 17 2022 - Dec 15 2022](https://github.com/aave/aave-v3-core/blob/master/certora/Aave_V3.0.1_Formal_Verification_Report_Dec2022.pdf) | Certora | Audit | 2022-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [Formal Verification of Aave Protocol V3Nov 12 2021 - Jan 24 2022](https://github.com/aave/aave-v3-core/blob/master/certora/Aave_V3_Formal_Verification_Report_Jan2022.pdf) | Certora | Audit | 2022-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [Light Deployment Smart Contract Audit ReportMar 16 2021](https://github.com/aave/protocol-v2/blob/feat/light-deployments/audits/Peckshield-aave-v2-light-16-03-2021.pdf) | PeckShield | Audit | 2021-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | medium |
| [Smart Contract Security AssessmentJan 2021](https://github.com/aave/protocol-v2/blob/master/audits/SigmaPrime-aave-v2-01-2021.pdf) | Sigma Prime | Audit | 2021-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 26 | high |
| [Smart Contract Audit ReportSep 2020](https://diligence.security/audits/2020/09/aave-protocol-v2) | ConsenSys Diligence | Audit | 2020-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 40 | high |
| [Smart Contract Security AssessmentSep 2020](https://github.com/aave/protocol-v2/blob/master/audits/Certik-aave-v2-03-12-2020.pdf) | CertiK | Audit | 2020-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 45 | high |
| [Smart Contract Audit ReportSep 2020](https://github.com/aave/protocol-v2/blob/master/audits/Peckshield-aave-v2-03-12-2020-EN.pdf) | PeckShield | Audit | 2020-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [Smart Contract Audit ReportSep 2020](https://github.com/aave/protocol-v2/blob/master/audits/Mixbytes-aave-v2-03-12-2020.pdf) | MixBytes | Audit | 2020-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 43 | high |
| [2026-02-24_Aave-V4_Blackthorn.pdf](https://github.com/aave/aave-v4/blob/main/audits/2026-02-24_Aave-V4_Blackthorn.pdf) | Blackthorn | Audit | 2026-02 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 56 | high |
| [2021-11-01_OpenZeppelin_AaveV3.pdf](https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2021-11-01_OpenZeppelin_AaveV3.pdf) | OpenZeppelin | Audit | 2021-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 32 | high |
| [2022-01-07_TrailOfBits_AaveV3.pdf](https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2022-01-07_TrailOfBits_AaveV3.pdf) | Trail of Bits | Audit | 2022-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 25 | high |
| [2022-01-14_PeckShield_AaveV3.pdf](https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2022-01-14_PeckShield_AaveV3.pdf) | PeckShield | Audit | 2022-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [2022-01-27_ABDK_AaveV3.pdf](https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2022-01-27_ABDK_AaveV3.pdf) | ABDK | Audit | 2022-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 60 | high |
| [2022-01-27_SigmaPrime_AaveV3.pdf](https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2022-01-27_SigmaPrime_AaveV3.pdf) | Sigma Prime | Audit | 2022-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 18 | high |
| [2022-12-09_PeckShield_AaveV3-0-1.pdf](https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2022-12-09_PeckShield_AaveV3-0-1.pdf) | PeckShield | Audit | 2022-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [2022-12-23_SigmaPrime_AaveV3-0-1.pdf](https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2022-12-23_SigmaPrime_AaveV3-0-1.pdf) | Sigma Prime | Audit | 2022-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | medium |
| [2023-03_Certora_AaveV3-0-2.pdf](https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2023-03_Certora_AaveV3-0-2.pdf) | Certora | Audit | 2023-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [2023-04-19_SigmaPrime_AaveV3-0-2.pdf](https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2023-04-19_SigmaPrime_AaveV3-0-2.pdf) | Sigma Prime | Audit | 2023-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [2024-04-30_Certora_AaveV3.1.pdf](https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2024-04-30_Certora_AaveV3.1.pdf) | Certora | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [2024-05-02_MixBytes_AaveV3.1.pdf](https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2024-05-02_MixBytes_AaveV3.1.pdf) | MixBytes | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 28 | high |
| [2024-06-02_Cantina-contest-AaveV3.1.pdf](https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2024-06-02_Cantina-contest-AaveV3.1.pdf) | Spearbit | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 11 | medium |
| [2024-09-11_Certora_StataTokenV2.pdf](https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2024-09-11_Certora_StataTokenV2.pdf) | Certora | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [2024-10-22_StErMi_Aave-v3.3.md](https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2024-10-22_StErMi_Aave-v3.3.md) | StErMi | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 16 | high |
| [2024-10-22_StErMi_Aave-v3.3.pdf](https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2024-10-22_StErMi_Aave-v3.3.pdf) | StErMi | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 15 | high |
| [2024-11-07_Certora_Aave-v3.3.0.pdf](https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2024-11-07_Certora_Aave-v3.3.0.pdf) | Certora | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 26 | high |
| [2024-12-05_MixBytes_AaveStataToken(watoken)SecurityAuditReport.pdf](https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2024-12-05_MixBytes_AaveStataToken(watoken)SecurityAuditReport.pdf) | yAudit | Audit | 2024-12 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [2025-01-20_Certora_CollectorRev6.pdf](https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2025-01-20_Certora_CollectorRev6.pdf) | Certora | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [2025-01-29_Oxorio_Aave-v3.3.0.pdf](https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2025-01-29_Oxorio_Aave-v3.3.0.pdf) | Oxorio | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 15 | high |
| [2025-06-11_Certora_Aave-v3.4_AIP_Report.pdf](https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2025-06-11_Certora_Aave-v3.4_AIP_Report.pdf) | Certora | Audit | 2025-06 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [2025-06-11_Stermi_Aave-v3.4_AIP_Report.md](https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2025-06-11_Stermi_Aave-v3.4_AIP_Report.md) | StErMi | Audit | 2025-06 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 6 | medium |
| [2025-07-17_StErMi_Aave-v3.5.pdf](https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2025-07-17_StErMi_Aave-v3.5.pdf) | StErMi | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 32 | high |
| [RewardsController.pdf](https://github.com/aave-dao/aave-umbrella/blob/main/audits/Certora/RewardsController.pdf) | Certora | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [StakeToken.pdf](https://github.com/aave-dao/aave-umbrella/blob/main/audits/Certora/StakeToken.pdf) | Certora | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [Umbrella.pdf](https://github.com/aave-dao/aave-umbrella/blob/main/audits/Certora/Umbrella.pdf) | Certora | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [UmbrellaBatchHelper.pdf](https://github.com/aave-dao/aave-umbrella/blob/main/audits/Certora/UmbrellaBatchHelper.pdf) | Certora | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [REPORT Aave RewardsController.md](https://github.com/aave-dao/aave-umbrella/blob/main/audits/Stermi/REPORT%20Aave%20RewardsController.md) | Stermi | Audit | 2025-06 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 12 | high |
| [REPORT Aave StakeToken.md](https://github.com/aave-dao/aave-umbrella/blob/main/audits/Stermi/REPORT%20Aave%20StakeToken.md) | Stermi | Audit | 2025-06 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [REPORT Aave Umbrella.md](https://github.com/aave-dao/aave-umbrella/blob/main/audits/Stermi/REPORT%20Aave%20Umbrella.md) | Stermi | Audit | 2025-06 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [REPORT Aave UmbrellaBatchHelper.md](https://github.com/aave-dao/aave-umbrella/blob/main/audits/Stermi/REPORT%20Aave%20UmbrellaBatchHelper.md) | Stermi | Audit | 2025-06 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [2023-09-20_GSM_Stermi.pdf](https://github.com/aave/gho-core/blob/main/audits/2023-09-20_GSM_Stermi.pdf) | Stermi | Audit | 2023-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [2024-06-11_UpgradeableGHO_Certora.pdf](https://github.com/aave/gho-core/blob/main/audits/2024-06-11_UpgradeableGHO_Certora.pdf) | Certora | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [2024-09-15_ModularGhoStewards_Certora.pdf](https://github.com/aave/gho-core/blob/main/audits/2024-09-15_ModularGhoStewards_Certora.pdf) | Certora | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [Certora-FV-aave-v2-03-12-2020.pdf](https://github.com/aave/protocol-v2/blob/master/audits/Certora-FV-aave-v2-03-12-2020.pdf) | Certora | Audit | 2020-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [PeckShield-aave-v2-03-12-2020-CN.pdf](https://github.com/aave/protocol-v2/blob/master/audits/PeckShield-aave-v2-03-12-2020-CN.pdf) | PeckShield | Audit | 2020-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 27 | high |
| [2025-05-30_Certora_Aave_Horizon-v3.3.0.pdf](https://github.com/aave/aave-v3-horizon/blob/main/audits/2025-05-30_Certora_Aave_Horizon-v3.3.0.pdf) | Certora | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [2025-06-25_StErMi_Aave_Horizon-v3.3.0.pdf](https://github.com/aave/aave-v3-horizon/blob/main/audits/2025-06-25_StErMi_Aave_Horizon-v3.3.0.pdf) | StErMi | Audit | 2025-06 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | low |
| [Formal Verification - Tokenization SpokeCertora Apr 13 2026](https://github.com/aave/aave-v4/blob/main/audits/2026-04-13_TokenizationSpoke-Fomal-Verification_Certora.pdf) | Sherlock | Contest | 2026-04 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Formal Verification - HubCertora Mar 09 2026](https://github.com/aave/aave-v4/blob/main/audits/2026-03-09_Hub-Fomal-Verification_Certora.pdf) | Sherlock | Contest | 2026-03 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [Formal Verification - LibrariesCertora Mar 09 2026](https://github.com/aave/aave-v4/blob/main/audits/2026-03-09_Libraries-Fomal-Verification_Certora.pdf) | Sherlock | Contest | 2026-03 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [Formal Verification - SpokeCertora Mar 09 2026](https://github.com/aave/aave-v4/blob/main/audits/2026-03-09_Spoke-Fomal-Verification_Certora.pdf) | Sherlock | Contest | 2026-03 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [Stable Vault ReportJosselin Feist Jul 2026Josselin Feist](https://github.com/aave-dao/stable-vault/blob/master/audits/%5BJ.%20Feist%5D%2007-26%20-%20Stable%20Vaults.pdf) | Josselin Feist | Audit | 2026-07 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [Stable Vault Report - Extension 1Josselin Feist Jul 2026Josselin Feist](https://github.com/aave-dao/stable-vault/blob/master/audits/%5BJ.%20Feist%5D%2007-26%20-%20Stable%20Vaults%20-%20Extension%201.pdf) | Josselin Feist | Audit | 2026-07 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Stable Vault Report - Extension 2Josselin Feist Jul 2026Josselin Feist](https://github.com/aave-dao/stable-vault/blob/master/audits/%5BJ.%20Feist%5D%2007-26%20-%20Stable%20Vaults%20-%20Extension%202.pdf) | Josselin Feist | Audit | 2026-07 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [Stable Vault Report - Extension 3Josselin Feist Jul 2026Josselin Feist](https://github.com/aave-dao/stable-vault/blob/master/audits/%5BJ.%20Feist%5D%2007-26%20-%20Stable%20Vaults%20-%20Extension%203.pdf) | Josselin Feist | Audit | 2026-07 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 7 | medium |
| [Security Assessment - a.DICertora Jun 2026](https://github.com/aave-dao/stable-vault/blob/master/audits/%5BCertora%5D%2006-26%20-%20Aave%20a.DI.pdf) | Certora | Audit | 2026-06 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 31 | high |
| [Code Assessment - Stable VaultsChainSecurity May 2026](https://github.com/aave-dao/stable-vault/blob/master/audits/%5BChainSecurity%5D%2005-26%20-%20Stable%20Vaults.pdf) | ChainSecurity | Audit | 2026-05 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 74 | high |
| [Security Assessment - Stable VaultsCertora May 2026](https://github.com/aave-dao/stable-vault/blob/master/audits/%5BCertora%5D%2005-26%20-%20Aave%20Stable%20Vaults.pdf) | Certora | Audit | 2026-05 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 41 | high |
| [Security Assessment - Stable VaultsCertora Apr 2026](https://github.com/aave-dao/stable-vault/blob/master/audits/%5BCertora%5D%2004-26%20-%20Aave%20Stable%20Vaults.pdf) | Certora | Audit | 2026-04 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 34 | high |
| [Code Assessment - Stable VaultsChainSecurity Mar 2026](https://github.com/aave-dao/stable-vault/blob/master/audits/%5BChainSecurity%5D%2003-26%20-%20Stable%20Vaults.pdf) | ChainSecurity | Audit | 2026-03 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 60 | high |
| [Security Assessment - Stable VaultsCertora Jan 2026](https://github.com/aave-dao/stable-vault/blob/master/audits/%5BCertora%5D%2001-26%20-%20Aave%20Stable%20Vaults.pdf) | Certora | Audit | 2026-01 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 27 | high |
| [Security Audit - ERC-6900 ModulesQuantstamp Apr 17 2026](https://aave.com/files/aave-erc-6900-modules-audit-report-2026.pdf) | yAudit | Audit | 2026-04 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [16941] Collaborative Audit ReportMay 14 2026 — no match: All contracts listed in the scope section of the audit report. Date range February 10-24, 2026, end date used.
- [16942] Security AuditFeb 19 2026 — no match: Extracted 29 contract names from the scope section (page 5) of the audit report. The audit date is explicitly stated on the cover page as 'February 19th, 2026'.
- [16943] Security Audit - Tokenization SpokeFeb 10 2026 — no match: Two contracts in scope: TokenizationSpoke and TokenizationSpokeInstance. Audit date from cover page.
- [16944] Security ReviewFeb 10 2026 — no match: Extracted contract names from Project Targets, Project Coverage, and Detailed Findings sections. Audit date from cover page and delivery date.
- [16945] Collaborative Audit ReportFeb 05 2026 — no match: Extracted all contract names from the scope file listing. Audit date is the end date of the audit period (October 6-20, 2025).
- [16947] Security ReviewMar 31 2026 — no match: Scope defined as core contracts in src/contracts/interfaces/* and src/contracts/protocol/*. Extracted contract names from findings context and file paths.
- [16948] Supervised Security ReviewMar 30 2026savant — no match: All 17 files listed in the Scope section are extracted. No audit date found in the report.
- [16949] Security Assessment & Formal Verification ReportMar 29 2026 — no match: Scope includes src/contracts/interfaces/* and src/contracts/protocol/*. Only two specific contracts are named in findings: PoolConfigurator and BorrowLogic. Audit date is March 13, 2026 (end date of audit period).
- [16950] Security ReviewMar 27 2026 — no match: Scope section lists 24 contract files. Audit date is March 11th 2026 (end date of timeline).
- [16951] Security Audit ReportMar 26 2026 — no match: Extracted contract names from the 'Scope of Audit' table and additional files mentioned in findings. Audit date from cover page 'MARCH 30, 2026'.
- [16952] Audit Contest ReportMar 26 2026 — no match: Scope section not explicitly provided; contracts inferred from findings. Audit date range March 5 - March 26, 2026, using end date.
- [16953] Security ReviewNov 29 2025 — no match: Scope section lists 24 contract files. Audit date is March 11th 2026 (end date of timeline).
- [16955] Security Assessment & Formal Verification ReportNov 18 2025 — no match: Audit report for Aave v3.6, November 2025. Scope section lists 11 Solidity files. Audit date inferred from 'November-2025' in title and 'November 3' end date of work period.
- [16956] Security Audit ReportNov 18 2025 — no match: Scope table explicitly lists 11 files with contract names extracted from filenames. Audit date is December 09, 2025 from the title.
- [16957] Supervised Security ReviewNov 18 2025savant — no match: Scope explicitly listed 11 files; additional contracts referenced in findings are included as they are part of the audited codebase.
- [16958] Security ReviewNov 16 2025.st0{clip-path:url(#SVGID_00000012464508073868947960000011070647625777785502_);} — no match: All 11 contracts listed in the scope section of the audit report.
- [16959] Security Audit ReportJul 18 2025 — no match: All contracts listed in the 'Scope of Audit' table on page 4-5 are extracted. The audit date is the last re-audit commit date (17.07.2025) which is the completion date.
- [16960] Security ReviewJul 17 2025stermi — no match: Extracted contract names from the audit report's scope section and findings. The report covers Aave v3.5 smart contracts. The audit date is the latest snapshot date (Jul 17, 2025).
- [16961] Smart Contract AuditJul 17 2025 — no match: Extracted contract names from the 'Project scope' section listing files and from findings referencing specific contracts. DataTypes.sol is not in the scope file list but is referenced in a finding (CVF-13) as a source file, so it is included. The audit date is 18th July 2025 from the cover page.
- [16962] Security AssessmentJul 14 2025 — no match: Extracted contracts from scope section and findings. Audit date from work period end date (July 3, 2025).
- [16963] Security ReviewJun 12 2025.st0{clip-path:url(#SVGID_00000012464508073868947960000011070647625777785502_);} — no match: Extracted all contract names from the two file listings in the Scope section. The audit date is the end date of the range May 27 - June 8, 2025.
- [16964] Security AssessmentJun 11 2025 — no match: Scope section lists 'src/contracts/*' and mentions specific contracts in findings and coverage. Audit date from 'February 27 to June 11, 2025'.
- [16965] Smart Contract Security Audit ReportJun 11 2025stermi — no match: The report does not contain a dedicated 'Scope' section or table listing contracts in scope. Contract names were extracted from the report title, description, and findings sections. The audit date is not explicitly stated; the report mentions a commit hash but no date.
- [16966] Security ReviewMay 13 2025 — no match: The report does not list specific contracts in scope; only mentions files like FlashLoanLogic.sol, LiquidationLogic.sol, ReserveLogic.sol in findings, but these are not explicitly stated as scope targets.
- [16967] Security Audit Report - V3.1-V3.3Aug 8 2025ottersec — no match: The scope section only mentions the repository and program name 'aave-aptos-v3' without listing individual contracts or modules. No specific contract names are provided in the scope. The audit date is from the cover page: 'August 8th, 2025'.
- [16968] Security Audit Report - Core V3.0.2Jun 18 2025spearbit — no match: Extracted contract names from findings context and file paths. Audit date from cover page.
- [16969] Security Audit Report - Core V3.1-V3.3Jun 18 2025spearbit — no match: Extracted contract/module names from findings context and file paths. Audit date from report header.
- [16970] Security Audit Report - Periphery V3.0.2Jun 18 2025spearbit — no match: Extracted contract names from the audit report's findings and context. The report covers Aave Aptos V3.0.2 Periphery modules. The audit date is from the report header.
- [16971] Security Assessment & Formal Verification Report - Core V3.0.2Apr 2025 — no match: Extracted contract names from findings and scope listing. Audit date inferred from 'April 2025' in header and work period ending Apr 7, 2025.
- [16972] Security Assessment & Formal Verification Report - Core V3.1-V3.3Apr 2025 — no match: Scope includes directories aave-acl, aave-config, aave-math, aave-oracle, aave-rates, and sources (aave-pool). Specific modules liquidation_logic and pool_logic are mentioned in findings. Audit date inferred from 'April 2025' in title.
- [16973] Security Assessment & Formal Verification Report - Periphery V3.0.2Apr 2025 — no match: Scope is a directory of Move modules, not individual contract files. Date range given; end date used.
- [16974] Smart Contract Security Audit ReportMay 19 2025 — no match: Extracted 13 contract names from the scope table and file paths. Audit date from cover page.
- [16975] Smart Contract Security Audit ReportMay 19 2025ackee — no match: All contracts listed in Appendix B: Scope are extracted. Audit date from cover page and appendix A: 19.5.2025.
- [16977] Audit Contest ReportJan 22 2025 — no match: Extracted 11 contract names from the scope section of the audit report. Audit date is January 13-January 22, 2025, using end date.
- [16978] Security ReviewSep 30 2024 — no match: The report does not have a dedicated scope section listing all contracts. The extracted names come from findings that reference specific files. The audit date is inferred from the report date 'September, 2024' (end of month).
- [16979] Security Assessment & Formal Verification Report - Liquid eModesSep 19 2024 — no match: All contracts listed in the scope section of the report.
- [16980] Security ReviewSep 15 2024 — no match: Scope section lists 13 smart contracts. Audit date from report header: September 5th - September 15th, using end date.
- [16981] Security Audit Report - Liquid eModesSep 12 2024 — no match: All 13 files listed in the 'Audited Files' section are in scope. The audit date is September 12, 2024, as stated in the title and timeline.
- [16982] Security Assessment & Formal Verification Report - Stable Rate RemovalSep 10 2024 — no match: Only one contract (Pool) is explicitly listed in scope. The report also mentions PoolConfigurator in findings but it is not listed in scope.
- [16983] GHO Stability Module Contract ReviewOct 23 2023 — no match: Extracted 9 contracts from the scope section. Audit date is October 2023, mapped to last day of month.
- [16984] GHO Smart Contract Security Assessment ReportJul 06 2023 — no match: Extracted from the report header 'July, 2023' and the report version '5.0'. The scope includes GhoToken, GhoAToken, GhoVariableDebtToken, GhoFlashMinter, GhoInterestRateStrategy, and IGhoToken. OpenZeppelin libraries and dependencies were excluded.
- [16985] GHO Steward Contract ReviewJun 13 2023 — no match: Only one contract, GhoSteward, is in scope. The date is June 2023, interpreted as end of month.
- [16986] GHO Steward Security Assessment & Formal Verification ReportMar 14 2023 — no match: Scope explicitly lists GhoStewardV2 and IGhoStewardV2. Audit period ends 14 March 2024.
- [16987] GHO Smart Contract AuditMar 01 2023 — no match: Extracted 17 contract names from the project scope section on page 7. Audit date derived from document title '1stMarch2023'.
- [16988] GHO Audit V2Nov 10 2022 — no match: Extracted 8 contracts from the scope section of the audit report. The audit date is explicitly stated as 'November 10th, 2022' in the header.
- [16989] GHO AuditAug 12 2022 — no match: Extracted 19 contract names from the scope section of the audit report. The audit date is from the header: 'security August 12th, 2022'.
- [16990] Formal Verification of Aave V3 upgrade to V3.0.1Nov 17 2022 - Dec 15 2022 — no match: Scope explicitly lists StableDebtToken, VariableDebtToken, AToken, ReserveConfiguration, UserConfiguration, and Pool (partial). Audit date from work period end date.
- [16991] Formal Verification of Aave Protocol V3Nov 12 2021 - Jan 24 2022 — no match: Scope explicitly lists StableDebtToken.sol, VariableDebtToken.sol, AToken.sol, ReserveConfiguration.sol, UserConfiguration.sol, and partial verification of Pool.sol. Audit date is Jan. 24, 2022.
- [16992] Light Deployment Smart Contract Audit ReportMar 16 2021 — no match: No explicit scope table; contracts inferred from findings and mentions. Audit date from cover page.
- [16993] Smart Contract Security AssessmentJan 2021 — no match: Extracted from Aave Protocol v2.0 audit report by Sigma Prime, dated January 2021. Scope includes all contracts in the protocol-v2 repository at commit 16e67c0, excluding OpenZeppelin libraries. Contracts identified from findings and test suite.
- [16994] Smart Contract Audit ReportSep 2020 — no match: All contracts listed in Appendix 2 - Files in Scope table. Audit date inferred from review period end date (October 9th, 2020).
- [16995] Smart Contract Security AssessmentSep 2020 — no match: Extracted 45 contract names from the 'Files In Scope' table in the audit report. The audit date is explicitly stated as 'December 2nd, 2020' on the cover page and delivery date.
- [16996] Smart Contract Audit ReportSep 2020 — no match: Audit report for Aave V2. Scope includes all contracts mentioned as targets in findings. The report does not have a dedicated scope table but lists contracts in the findings section. The audit date is explicitly stated as December 3, 2020 on the cover page and in the document properties.
- [16997] Smart Contract Audit ReportSep 2020 — no match: Scope section lists all contracts explicitly. Date from cover page: December 3, 2020.
- [17000] 2026-02-24_Aave-V4_Blackthorn.pdf — no match: Extracted all contract names from the scope file listing and the narrative summary. Audit date is the end of the date range 'February10-February24,2026'.
- [17001] 2021-11-01_OpenZeppelin_AaveV3.pdf — no match: Scope includes all files in protocol and interfaces directories of aave-v3-core repository at commit 14f6148e21b477d78347db6a1603039c9559e275. Extracted contract names from scope description and findings.
- [17002] 2022-01-07_TrailOfBits_AaveV3.pdf — no match: Extracted contracts from the 'Coverage' section and file paths mentioned in findings. Audit date is the date of the fix log (January 21, 2022) as the latest prominent date.
- [17003] 2022-01-14_PeckShield_AaveV3.pdf — no match: Extracted contract names from findings sections where they are explicitly listed as targets. The audit report covers Aave V3 core contracts. No file paths were provided, so file_path is null for all references.
- [17005] 2022-01-27_ABDK_AaveV3.pdf — no match: The audit report explicitly lists 59 files in scope in the Introduction section (pages 25-27). The date is clearly stated on the cover page as '26th January 2022'.
- [17006] 2022-01-27_SigmaPrime_AaveV3.pdf — no match: Extracted contract names from findings and scope description. Audit date inferred from cover page 'April, 2023'.
- [17007] 2022-12-09_PeckShield_AaveV3-0-1.pdf — no match: No explicit scope section; contracts extracted from findings targets.
- [17008] 2022-12-23_SigmaPrime_AaveV3-0-1.pdf — no match: The report does not list specific files in a scope table; contracts are inferred from findings and general references. The date is given as 'December, 2022' so last day of month used.
- [17010] 2023-03_Certora_AaveV3-0-2.pdf — no match: Scope section explicitly lists five contracts: Pool.sol, BridgeLogic.sol, LiquidationLogic.sol, SupplyLogic.sol, ValidationLogic.sol.
- [17011] 2023-04-19_SigmaPrime_AaveV3-0-2.pdf — no match: The report does not list specific contract names in scope; it only references the aave-v3-core repository and PRs. The date is inferred from 'April, 2023' as the last day of the month.
- [17012] 2024-04-30_Certora_AaveV3.1.pdf — no match: Scope section states 'All contracts of Aave V3.1' but only two specific contracts are named in the report. Audit date inferred from work period end date.
- [17013] 2024-05-02_MixBytes_AaveV3.1.pdf — no match: All contracts listed in the Project Scope table on pages 7-9. Audit date from cover page.
- [17014] 2024-06-02_Cantina-contest-AaveV3.1.pdf — no match: No explicit scope section found; contract names extracted from findings context and file paths mentioned in the report. Date extracted from cover page: 'June 2, 2024'.
- [17015] 2024-09-11_Certora_StataTokenV2.pdf — no match: Scope section explicitly lists four contracts. Audit date is September 2024, mapped to last day of month.
- [17016] 2024-10-22_StErMi_Aave-v3.3.md — no match: Extracted from the audit report of Aave v3.3. The report includes a scope section with commit hashes and references to specific files. The audit date is derived from the 'UPDATE 1 January 31, 2025' section, which is the latest date mentioned for additional commits reviewed.
- [17017] 2024-10-22_StErMi_Aave-v3.3.pdf — no match: Extracted contract names from findings and scope description. Audit date from 'UPDATE 1 January 31, 2025' and commit dates.
- [17018] 2024-11-07_Certora_Aave-v3.3.0.pdf — no match: Scope section lists 26 Solidity files. Audit date is December 2024, mapped to last day of month.
- [17019] 2024-12-05_MixBytes_AaveStataToken(watoken)SecurityAuditReport.pdf — no match: Scope section lists three Solidity files; IERC20AaveLM is an interface referenced in findings.
- [17020] 2025-01-20_Certora_CollectorRev6.pdf — no match: Audit report for Collector operational upgrade, dated Jan-2025. Scope explicitly lists four contracts.
- [17022] 2025-01-29_Oxorio_Aave-v3.3.0.pdf — no match: Extracted 15 contract names from audited files table and findings breakdown by file. Audit date from report submission date.
- [17024] 2025-06-11_Certora_Aave-v3.4_AIP_Report.pdf — no match: All 8 contracts listed in the scope section of the report.
- [17026] 2025-06-11_Stermi_Aave-v3.4_AIP_Report.md — no match: No explicit scope section found; contracts extracted from findings and file paths. Audit date not found in the provided text.
- [17029] 2025-07-17_StErMi_Aave-v3.5.pdf — no match: Extracted from the report's summary and findings sections. The report reviews Aave v3.5 smart contracts. The audit date is inferred from the latest snapshot date mentioned: 'Review of snapshot f76f00773016f35dc1a134f090afc5923c6bcbe1 (Dated Jul 17, 2025)'.
- [17034] RewardsController.pdf — no match: Audit report for Umbrella Rewards Controller. Scope explicitly lists four contracts: RewardsController.sol, RewardsDistributor.sol, EmissionMath.sol, InternalStructs.sol. Audit date inferred from work period end date (2 March 2025).
- [17035] StakeToken.pdf — no match: Scope table lists three contracts; coverage section mentions two additional contracts (ERC4626Upgradeable and ERC20Upgradeable) as reviewed. Audit date is end date of engagement (23 January 2025).
- [17036] Umbrella.pdf — no match: Scope section explicitly lists three contracts: Umbrella.sol, UmbrellaStkManager.sol, UmbrellaConfiguration.sol. Audit date is the end date of the engagement (13th March 2025).
- [17037] UmbrellaBatchHelper.pdf — no match: Three contracts explicitly listed in scope section. Audit date inferred from 'March-2025' in title and work period ending March 4, 2025.
- [17038] REPORT Aave RewardsController.md — no match: Extracted from the report's scope section and validation diff. The audit date is inferred from the diff timestamps (2025-06-01) as the report does not provide an explicit completion date.
- [17039] REPORT Aave StakeToken.md — no match: Extracted from report summary, scope sections, and diff validation. Audit date inferred from diff timestamps (2025-06-01) as the most prominent date.
- [17040] REPORT Aave Umbrella.md — no match: Extracted contracts from scope sections and file paths. Audit date inferred from diff timestamps (2025-06-01) in the validation section.
- [17041] REPORT Aave UmbrellaBatchHelper.md — no match: Extracted from the report's scope and validation sections. The audit date is inferred from the diff timestamps in the validation section (2025-06-01).
- [17042] 2023-09-20_GSM_Stermi.pdf — no match: All contracts listed in the Scope section of the audit report were extracted. The audit date is the end date of the review period (Sept 11 to Sept 20, 2023).
- [17043] 2024-06-11_UpgradeableGHO_Certora.pdf — no match: Scope explicitly lists UpgradeableGhoToken and UpgradeableERC20. Audit period ends 11 June 2024.
- [17044] 2024-09-15_ModularGhoStewards_Certora.pdf — no match: Scope section explicitly lists 6 contracts. Audit date is September 2024, interpreted as last day of month.
- [17046] Certora-FV-aave-v2-03-12-2020.pdf — no match: The report explicitly states the main contracts considered: LendingPool, AToken, StableDebtToken, VariableDebtToken, and UserConfiguration library.
- [17047] PeckShield-aave-v2-03-12-2020-CN.pdf — no match: Audit report for Aave V2 by PeckShield. Scope includes all contracts in the protocol-v2 repository. The report lists findings for multiple contracts and interfaces. Audit completion date is December 3, 2020.
- [17077] 2025-05-30_Certora_Aave_Horizon-v3.3.0.pdf — no match: Extracted 7 contracts from the scope section listing file paths. Audit date is the end date of the engagement: May 26, 2025.
- [17078] 2025-06-25_StErMi_Aave_Horizon-v3.3.0.pdf — no match: No explicit scope section found; contract names extracted from findings and references. Audit date not found in the provided text.
- [26865] Formal Verification - Tokenization SpokeCertora Apr 13 2026 — no match: Two contracts in scope: TokenizationSpoke and TokenizationSpokeInstance. Audit date from 'April 13th, 2026'.
- [26866] Formal Verification - HubCertora Mar 09 2026 — no match: Extracted from Project Scope section listing files and from findings referencing specific contracts.
- [26867] Formal Verification - LibrariesCertora Mar 09 2026 — no match: Extracted 9 library contracts from the scope section on page 3. Audit date inferred from 'March 2026' in the title and project summary.
- [26868] Formal Verification - SpokeCertora Mar 09 2026 — no match: Scope explicitly lists Spoke.sol and five library files. Audit date from project timeline: July 28, 2025 to March 09, 2026.
- [26874] Stable Vault ReportJosselin Feist Jul 2026Josselin Feist — no match: Extracted from the report header and executive summary. The report covers Stable Vault, Funds Handler, Gateways, CCIP binding, Merkl Reward Claiming, and ERC6900 (deprioritized).
- [26875] Stable Vault Report - Extension 1Josselin Feist Jul 2026Josselin Feist — no match: No explicit scope section or contract listing found. The report mentions 'Stable Vault contracts' generically but does not name specific contracts, files, or modules in scope.
- [26876] Stable Vault Report - Extension 2Josselin Feist Jul 2026Josselin Feist — no match: Extracted from report title page and scope description. The report covers Stable Vault contracts and specifically mentions OwnedMulticall in findings. Appendix E lists additional contracts.
- [26877] Stable Vault Report - Extension 3Josselin Feist Jul 2026Josselin Feist — no match: No explicit scope table; contracts inferred from findings and appendix mentions. Audit date from cover page.
- [26878] Security Assessment - a.DICertora Jun 2026 — no match: Extracted contract names from the scope section and findings. Audit date inferred from 'June 2026' in the title and 'June 1st, 2026' in the project overview.
- [26879] Code Assessment - Stable VaultsChainSecurity May 2026 — no match: Extracted all contracts listed in the Scope section (2.1) and the additional script files mentioned for role configuration. Audit date from cover page: July 03, 2026.
- [26880] Security Assessment - Stable VaultsCertora May 2026 — no match: All contracts listed in the Project Scope section were extracted. The audit date is the end date of the engagement (May 22th, 2026).
- [26881] Security Assessment - Stable VaultsCertora Apr 2026 — no match: All contracts listed in the Project Scope section of the report. Audit date derived from 'May 5th, 2026' in Project Overview.
- [26882] Code Assessment - Stable VaultsChainSecurity Mar 2026 — no match: Extracted all contracts from the scope section (pages 5-6) and the additional script files from version 2 scope expansion. Audit date from cover page: 'July 03, 2026'.
- [26883] Security Assessment - Stable VaultsCertora Jan 2026 — no match: All contracts listed in the Project Scope section were extracted. The audit date is the end date of the engagement (January 30, 2026).
- [26884] Security Audit - ERC-6900 ModulesQuantstamp Apr 17 2026 — no match: Extracted contracts from scope files and findings. Audit date from changelog: 2026-04-17 (updated final report).

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Collaborative Audit ReportMay 14 2026 | AccessManagerEnumerable | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportMay 14 2026 | IAccessManagerEnumerable | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportMay 14 2026 | AssetInterestRateStrategy | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportMay 14 2026 | HubConfigurator | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportMay 14 2026 | Hub | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportMay 14 2026 | IAssetInterestRateStrategy | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportMay 14 2026 | IBasicInterestRateStrategy | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportMay 14 2026 | IHubBase | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportMay 14 2026 | IHubConfigurator | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportMay 14 2026 | IHub | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportMay 14 2026 | AssetLogic | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportMay 14 2026 | Premium | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportMay 14 2026 | SharesMath | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportMay 14 2026 | IExtSload | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportMay 14 2026 | IIntentConsumer | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportMay 14 2026 | IMulticall | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportMay 14 2026 | INoncesKeyed | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportMay 14 2026 | IRescuable | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportMay 14 2026 | MathUtils | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportMay 14 2026 | PercentageMath | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportMay 14 2026 | WadRayMath | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportMay 14 2026 | Roles | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportMay 14 2026 | UnitPriceFeed | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportMay 14 2026 | GatewayBase | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportMay 14 2026 | IGatewayBase | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportMay 14 2026 | INativeTokenGateway | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportMay 14 2026 | INativeWrapper | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportMay 14 2026 | ISignatureGateway | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportMay 14 2026 | EIP712Hash | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportMay 14 2026 | NativeTokenGateway | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportMay 14 2026 | SignatureGateway | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportMay 14 2026 | AaveOracle | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportMay 14 2026 | SpokeInstance | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportMay 14 2026 | TokenizationSpokeInstance | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportMay 14 2026 | IAaveOracle | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportMay 14 2026 | IPriceOracle | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportMay 14 2026 | ISpokeBase | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportMay 14 2026 | ISpokeConfigurator | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportMay 14 2026 | ISpoke | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportMay 14 2026 | ITokenizationSpoke | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportMay 14 2026 | ITreasurySpoke | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportMay 14 2026 | KeyValueList | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportMay 14 2026 | LiquidationLogic | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportMay 14 2026 | PositionStatusMap | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportMay 14 2026 | ReserveFlagsMap | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportMay 14 2026 | SpokeUtils | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportMay 14 2026 | UserPositionDebt | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportMay 14 2026 | UserPositionUtils | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportMay 14 2026 | SpokeConfigurator | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportMay 14 2026 | Spoke | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportMay 14 2026 | SpokeStorage | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportMay 14 2026 | TokenizationSpoke | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportMay 14 2026 | TreasurySpoke | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportMay 14 2026 | Multicall | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportMay 14 2026 | NoncesKeyed | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportMay 14 2026 | Rescuable | unmatched — not counted | — | listed in scope | no |
| Security AuditFeb 19 2026 | AssetInterestRateStrategy | unmatched — not counted | — | listed in scope | no |
| Security AuditFeb 19 2026 | Hub | unmatched — not counted | — | listed in scope | no |
| Security AuditFeb 19 2026 | HubConfigurator | unmatched — not counted | — | listed in scope | no |
| Security AuditFeb 19 2026 | AssetLogic | unmatched — not counted | — | listed in scope | no |
| Security AuditFeb 19 2026 | Premium | unmatched — not counted | — | listed in scope | no |
| Security AuditFeb 19 2026 | SharesMath | unmatched — not counted | — | listed in scope | no |
| Security AuditFeb 19 2026 | MathUtils | unmatched — not counted | — | listed in scope | no |
| Security AuditFeb 19 2026 | PercentageMath | unmatched — not counted | — | listed in scope | no |
| Security AuditFeb 19 2026 | WadRayMath | unmatched — not counted | — | listed in scope | no |
| Security AuditFeb 19 2026 | EIP712Types | unmatched — not counted | — | listed in scope | no |
| Security AuditFeb 19 2026 | Roles | unmatched — not counted | — | listed in scope | no |
| Security AuditFeb 19 2026 | UnitPriceFeed | unmatched — not counted | — | listed in scope | no |
| Security AuditFeb 19 2026 | GatewayBase | unmatched — not counted | — | listed in scope | no |
| Security AuditFeb 19 2026 | NativeTokenGateway | unmatched — not counted | — | listed in scope | no |
| Security AuditFeb 19 2026 | SignatureGateway | unmatched — not counted | — | listed in scope | no |
| Security AuditFeb 19 2026 | EIP712Hash | unmatched — not counted | — | listed in scope | no |
| Security AuditFeb 19 2026 | AaveOracle | unmatched — not counted | — | listed in scope | no |
| Security AuditFeb 19 2026 | Spoke | unmatched — not counted | — | listed in scope | no |
| Security AuditFeb 19 2026 | SpokeConfigurator | unmatched — not counted | — | listed in scope | no |
| Security AuditFeb 19 2026 | TreasurySpoke | unmatched — not counted | — | listed in scope | no |
| Security AuditFeb 19 2026 | SpokeInstance | unmatched — not counted | — | listed in scope | no |
| Security AuditFeb 19 2026 | KeyValueList | unmatched — not counted | — | listed in scope | no |
| Security AuditFeb 19 2026 | LiquidationLogic | unmatched — not counted | — | listed in scope | no |
| Security AuditFeb 19 2026 | PositionStatusMap | unmatched — not counted | — | listed in scope | no |
| Security AuditFeb 19 2026 | ReserveFlagsMap | unmatched — not counted | — | listed in scope | no |
| Security AuditFeb 19 2026 | UserPositionDebt | unmatched — not counted | — | listed in scope | no |
| Security AuditFeb 19 2026 | Multicall | unmatched — not counted | — | listed in scope | no |
| Security AuditFeb 19 2026 | NoncesKeyed | unmatched — not counted | — | listed in scope | no |
| Security AuditFeb 19 2026 | Rescuable | unmatched — not counted | — | listed in scope | no |
| Security Audit - Tokenization SpokeFeb 10 2026 | TokenizationSpoke | unmatched — not counted | — | listed in scope | no |
| Security Audit - Tokenization SpokeFeb 10 2026 | TokenizationSpokeInstance | unmatched — not counted | — | listed in scope | no |
| Security ReviewFeb 10 2026 | Hub | unmatched — not counted | — | listed in Project Coverage section | no |
| Security ReviewFeb 10 2026 | HubConfigurator | unmatched — not counted | — | listed in Project Coverage section | no |
| Security ReviewFeb 10 2026 | AssetInterestRateStrategy | unmatched — not counted | — | listed in Project Coverage section | no |
| Security ReviewFeb 10 2026 | Spoke | unmatched — not counted | — | listed in Project Coverage section | no |
| Security ReviewFeb 10 2026 | SpokeConfigurator | unmatched — not counted | — | listed in Project Coverage section | no |
| Security ReviewFeb 10 2026 | NativeTokenGateway | unmatched — not counted | — | listed in Project Coverage section | no |
| Security ReviewFeb 10 2026 | SignatureGateway | unmatched — not counted | — | listed in Project Coverage section and finding TOB-AAVE-6 target | no |
| Security ReviewFeb 10 2026 | SpokeInstance | unmatched — not counted | — | mentioned in finding TOB-AAVE-2 as inheriting Spoke | no |
| Security ReviewFeb 10 2026 | Multicall | unmatched — not counted | — | mentioned in finding TOB-AAVE-2 as inherited by Spoke | no |
| Security ReviewFeb 10 2026 | NoncesKeyed | unmatched — not counted | — | mentioned in finding TOB-AAVE-2 as inherited by Spoke | no |
| Security ReviewFeb 10 2026 | AccessManagedUpgradeable | unmatched — not counted | — | mentioned in finding TOB-AAVE-2 as inherited by Spoke | no |
| Security ReviewFeb 10 2026 | EIP712 | unmatched — not counted | — | mentioned in finding TOB-AAVE-2 as inherited by Spoke | no |
| Security ReviewFeb 10 2026 | LiquidationLogic | unmatched — not counted | — | target of finding TOB-AAVE-1 and TOB-AAVE-7 | no |
| Security ReviewFeb 10 2026 | PositionStatusMap | unmatched — not counted | — | mentioned in code quality recommendations appendix | no |
| Collaborative Audit ReportFeb 05 2026 | AssetInterestRateStrategy | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportFeb 05 2026 | HubConfigurator | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportFeb 05 2026 | Hub | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportFeb 05 2026 | IAssetInterestRateStrategy | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportFeb 05 2026 | IBasicInterestRateStrategy | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportFeb 05 2026 | IHubBase | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportFeb 05 2026 | IHubConfigurator | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportFeb 05 2026 | IHub | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportFeb 05 2026 | AssetLogic | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportFeb 05 2026 | SharesMath | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportFeb 05 2026 | IMulticall | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportFeb 05 2026 | IRescuable | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportFeb 05 2026 | MathUtils | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportFeb 05 2026 | PercentageMath | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportFeb 05 2026 | WadRayMath | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportFeb 05 2026 | EIP712Types | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportFeb 05 2026 | Roles | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportFeb 05 2026 | UnitPriceFeed | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportFeb 05 2026 | INativeTokenGateway | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportFeb 05 2026 | INativeWrapper | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportFeb 05 2026 | ISignatureGateway | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportFeb 05 2026 | NativeTokenGateway | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportFeb 05 2026 | SignatureGateway | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportFeb 05 2026 | AaveOracle | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportFeb 05 2026 | SpokeInstance | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportFeb 05 2026 | IAaveOracle | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportFeb 05 2026 | IPriceOracle | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportFeb 05 2026 | ISpokeBase | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportFeb 05 2026 | ISpokeConfigurator | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportFeb 05 2026 | ISpoke | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportFeb 05 2026 | ITreasurySpoke | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportFeb 05 2026 | KeyValueList | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportFeb 05 2026 | LiquidationLogic | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportFeb 05 2026 | PositionStatusMap | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportFeb 05 2026 | SpokeConfigurator | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportFeb 05 2026 | Spoke | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportFeb 05 2026 | TreasurySpoke | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportFeb 05 2026 | Multicall | unmatched — not counted | — | listed in scope | no |
| Collaborative Audit ReportFeb 05 2026 | Rescuable | unmatched — not counted | — | listed in scope | no |
| Security ReviewMar 31 2026 | IPoolConfigurator | unmatched — not counted | — | mentioned in findings I-01 context | no |
| Security ReviewMar 31 2026 | ReserveConfiguration | unmatched — not counted | — | mentioned in findings I-01 context | no |
| Security ReviewMar 31 2026 | IAaveV3ConfigEngine | unmatched — not counted | — | mentioned in findings I-01 context | no |
| Security ReviewMar 31 2026 | IPool | unmatched — not counted | — | mentioned in findings I-01 context | no |
| Security ReviewMar 31 2026 | IDefaultInterestRateStrategyV2 | unmatched — not counted | — | mentioned in findings I-01 context | no |
| Security ReviewMar 31 2026 | ValidationLogic | unmatched — not counted | — | mentioned in findings I-01 context | no |
| Security ReviewMar 31 2026 | LiquidationLogic | unmatched — not counted | — | mentioned in finding L-01 context | no |
| Supervised Security ReviewMar 30 2026savant | IPool | unmatched — not counted | — | listed in scope | no |
| Supervised Security ReviewMar 30 2026savant | IPoolConfigurator | unmatched — not counted | — | listed in scope | no |
| Supervised Security ReviewMar 30 2026savant | IPoolDataProvider | unmatched — not counted | — | listed in scope | no |
| Supervised Security ReviewMar 30 2026savant | ReserveConfiguration | unmatched — not counted | — | listed in scope | no |
| Supervised Security ReviewMar 30 2026savant | UserConfiguration | unmatched — not counted | — | listed in scope | no |
| Supervised Security ReviewMar 30 2026savant | Errors | unmatched — not counted | — | listed in scope | no |
| Supervised Security ReviewMar 30 2026savant | BorrowLogic | unmatched — not counted | — | listed in scope | no |
| Supervised Security ReviewMar 30 2026savant | ConfiguratorLogic | unmatched — not counted | — | listed in scope | no |
| Supervised Security ReviewMar 30 2026savant | GenericLogic | unmatched — not counted | — | listed in scope | no |
| Supervised Security ReviewMar 30 2026savant | LiquidationLogic | unmatched — not counted | — | listed in scope | no |
| Supervised Security ReviewMar 30 2026savant | PoolLogic | unmatched — not counted | — | listed in scope | no |
| Supervised Security ReviewMar 30 2026savant | SupplyLogic | unmatched — not counted | — | listed in scope | no |
| Supervised Security ReviewMar 30 2026savant | ValidationLogic | unmatched — not counted | — | listed in scope | no |
| Supervised Security ReviewMar 30 2026savant | PercentageMath | unmatched — not counted | — | listed in scope | no |
| Supervised Security ReviewMar 30 2026savant | DataTypes | unmatched — not counted | — | listed in scope | no |
| Supervised Security ReviewMar 30 2026savant | Pool | unmatched — not counted | — | listed in scope | no |
| Supervised Security ReviewMar 30 2026savant | PoolConfigurator | unmatched — not counted | — | listed in scope | no |
| Security Assessment & Formal Verification ReportMar 29 2026 | PoolConfigurator | unmatched — not counted | — | listed in findings I-01 | no |
| Security Assessment & Formal Verification ReportMar 29 2026 | BorrowLogic | unmatched — not counted | — | listed in findings I-02 | no |
| Security ReviewMar 27 2026 | IAToken | unmatched — not counted | — | listed in scope | no |
| Security ReviewMar 27 2026 | IERC20WithPermit | unmatched — not counted | — | listed in scope | no |
| Security ReviewMar 27 2026 | IInitializableAToken | unmatched — not counted | — | listed in scope | no |
| Security ReviewMar 27 2026 | IInitializableDebtToken | unmatched — not counted | — | listed in scope | no |
| Security ReviewMar 27 2026 | IPoolConfigurator | unmatched — not counted | — | listed in scope | no |
| Security ReviewMar 27 2026 | EModeConfiguration | unmatched — not counted | — | listed in scope | no |
| Security ReviewMar 27 2026 | UserConfiguration | unmatched — not counted | — | listed in scope | no |
| Security ReviewMar 27 2026 | BorrowLogic | unmatched — not counted | — | listed in scope | no |
| Security ReviewMar 27 2026 | ConfiguratorLogic | unmatched — not counted | — | listed in scope | no |
| Security ReviewMar 27 2026 | FlashLoanLogic | unmatched — not counted | — | listed in scope | no |
| Security ReviewMar 27 2026 | GenericLogic | unmatched — not counted | — | listed in scope | no |
| Security ReviewMar 27 2026 | LiquidationLogic | unmatched — not counted | — | listed in scope | no |
| Security ReviewMar 27 2026 | PoolLogic | unmatched — not counted | — | listed in scope | no |
| Security ReviewMar 27 2026 | ReserveLogic | unmatched — not counted | — | listed in scope | no |
| Security ReviewMar 27 2026 | SupplyLogic | unmatched — not counted | — | listed in scope | no |
| Security ReviewMar 27 2026 | ValidationLogic | unmatched — not counted | — | listed in scope | no |
| Security ReviewMar 27 2026 | Pool | unmatched — not counted | — | listed in scope | no |
| Security ReviewMar 27 2026 | PoolConfigurator | unmatched — not counted | — | listed in scope | no |
| Security ReviewMar 27 2026 | AToken | unmatched — not counted | — | listed in scope | no |
| Security ReviewMar 27 2026 | ATokenWithDelegation | unmatched — not counted | — | listed in scope | no |
| Security ReviewMar 27 2026 | VariableDebtToken | unmatched — not counted | — | listed in scope | no |
| Security ReviewMar 27 2026 | IncentivizedERC20 | unmatched — not counted | — | listed in scope | no |
| Security ReviewMar 27 2026 | MintableIncentivizedERC20 | unmatched — not counted | — | listed in scope | no |
| Security ReviewMar 27 2026 | BaseDelegation | unmatched — not counted | — | listed in scope | no |
| Security Audit ReportMar 26 2026 | EModeConfiguration | unmatched — not counted | — | listed in scope table | no |
| Security Audit ReportMar 26 2026 | ReserveConfiguration | unmatched — not counted | — | listed in scope table | no |
| Security Audit ReportMar 26 2026 | UserConfiguration | unmatched — not counted | — | listed in scope table | no |
| Security Audit ReportMar 26 2026 | BorrowLogic | unmatched — not counted | — | listed in scope table | no |
| Security Audit ReportMar 26 2026 | ConfiguratorLogic | unmatched — not counted | — | listed in scope table | no |
| Security Audit ReportMar 26 2026 | FlashLoanLogic | unmatched — not counted | — | listed in scope table | no |
| Security Audit ReportMar 26 2026 | GenericLogic | unmatched — not counted | — | listed in scope table | no |
| Security Audit ReportMar 26 2026 | LiquidationLogic | unmatched — not counted | — | listed in scope table | no |
| Security Audit ReportMar 26 2026 | PoolLogic | unmatched — not counted | — | listed in scope table | no |
| Security Audit ReportMar 26 2026 | ReserveLogic | unmatched — not counted | — | listed in scope table | no |
| Security Audit ReportMar 26 2026 | SupplyLogic | unmatched — not counted | — | listed in scope table | no |
| Security Audit ReportMar 26 2026 | ValidationLogic | unmatched — not counted | — | listed in scope table | no |
| Security Audit ReportMar 26 2026 | DataTypes | unmatched — not counted | — | listed in scope table | no |
| Security Audit ReportMar 26 2026 | Errors | unmatched — not counted | — | listed in scope table | no |
| Security Audit ReportMar 26 2026 | PercentageMath | unmatched — not counted | — | listed in scope table | no |
| Security Audit ReportMar 26 2026 | Pool | unmatched — not counted | — | listed in scope table | no |
| Security Audit ReportMar 26 2026 | PoolConfigurator | unmatched — not counted | — | listed in scope table | no |
| Security Audit ReportMar 26 2026 | AToken | unmatched — not counted | — | listed in scope table | no |
| Security Audit ReportMar 26 2026 | ATokenWithDelegation | unmatched — not counted | — | listed in scope table | no |
| Security Audit ReportMar 26 2026 | VariableDebtToken | unmatched — not counted | — | listed in scope table | no |
| Security Audit ReportMar 26 2026 | IncentivizedERC20 | unmatched — not counted | — | listed in scope table | no |
| Security Audit ReportMar 26 2026 | MintableIncentivizedERC20 | unmatched — not counted | — | listed in scope table | no |
| Security Audit ReportMar 26 2026 | BaseDelegation | unmatched — not counted | — | listed in scope table | no |
| Security Audit ReportMar 26 2026 | PoolStorage | unmatched — not counted | — | mentioned in findings as scoped file | no |
| Security Audit ReportMar 26 2026 | ScaledBalanceTokenBase | unmatched — not counted | — | mentioned in findings as scoped file | no |
| Audit Contest ReportMar 26 2026 | LiquidationLogic | unmatched — not counted | — | mentioned in findings L-1 and L-3 | no |
| Audit Contest ReportMar 26 2026 | EModeEngine | unmatched — not counted | — | mentioned in finding L-2 | no |
| Audit Contest ReportMar 26 2026 | ReserveConfiguration | unmatched — not counted | — | mentioned in finding L-4 | no |
| Security ReviewNov 29 2025 | IAToken | unmatched — not counted | — | listed in scope | no |
| Security ReviewNov 29 2025 | IERC20WithPermit | unmatched — not counted | — | listed in scope | no |
| Security ReviewNov 29 2025 | IInitializableAToken | unmatched — not counted | — | listed in scope | no |
| Security ReviewNov 29 2025 | IInitializableDebtToken | unmatched — not counted | — | listed in scope | no |
| Security ReviewNov 29 2025 | IPoolConfigurator | unmatched — not counted | — | listed in scope | no |
| Security ReviewNov 29 2025 | EModeConfiguration | unmatched — not counted | — | listed in scope | no |
| Security ReviewNov 29 2025 | UserConfiguration | unmatched — not counted | — | listed in scope | no |
| Security ReviewNov 29 2025 | BorrowLogic | unmatched — not counted | — | listed in scope | no |
| Security ReviewNov 29 2025 | ConfiguratorLogic | unmatched — not counted | — | listed in scope | no |
| Security ReviewNov 29 2025 | FlashLoanLogic | unmatched — not counted | — | listed in scope | no |
| Security ReviewNov 29 2025 | GenericLogic | unmatched — not counted | — | listed in scope section | no |
| Security ReviewNov 29 2025 | LiquidationLogic | unmatched — not counted | — | listed in scope section | no |
| Security ReviewNov 29 2025 | PoolLogic | unmatched — not counted | — | listed in scope | no |
| Security ReviewNov 29 2025 | ReserveLogic | unmatched — not counted | — | listed in scope | no |
| Security ReviewNov 29 2025 | SupplyLogic | unmatched — not counted | — | listed in scope section | no |
| Security ReviewNov 29 2025 | ValidationLogic | unmatched — not counted | — | listed in scope section | no |
| Security ReviewNov 29 2025 | Pool | unmatched — not counted | — | listed in scope section | no |
| Security ReviewNov 29 2025 | PoolConfigurator | unmatched — not counted | — | listed in scope section | no |
| Security ReviewNov 29 2025 | AToken | unmatched — not counted | — | listed in scope section | no |
| Security ReviewNov 29 2025 | ATokenWithDelegation | unmatched — not counted | — | listed in scope | no |
| Security ReviewNov 29 2025 | VariableDebtToken | unmatched — not counted | — | listed in scope section | no |
| Security ReviewNov 29 2025 | IncentivizedERC20 | unmatched — not counted | — | listed in scope section | no |
| Security ReviewNov 29 2025 | MintableIncentivizedERC20 | unmatched — not counted | — | listed in scope | no |
| Security ReviewNov 29 2025 | BaseDelegation | unmatched — not counted | — | listed in scope | no |
| Security ReviewNov 29 2025 | DataTypes | unmatched — not counted | — | listed in scope section | no |
| Security ReviewNov 29 2025 | DebtTokenBase | unmatched — not counted | — | listed in scope section | no |
| Security Assessment & Formal Verification ReportNov 18 2025 | GenericLogic | unmatched — not counted | — | listed in scope | no |
| Security Assessment & Formal Verification ReportNov 18 2025 | LiquidationLogic | unmatched — not counted | — | listed in scope | no |
| Security Assessment & Formal Verification ReportNov 18 2025 | SupplyLogic | unmatched — not counted | — | listed in scope | no |
| Security Assessment & Formal Verification ReportNov 18 2025 | ValidationLogic | unmatched — not counted | — | listed in scope | no |
| Security Assessment & Formal Verification ReportNov 18 2025 | DataTypes | unmatched — not counted | — | listed in scope | no |
| Security Assessment & Formal Verification ReportNov 18 2025 | Pool | unmatched — not counted | — | listed in scope | no |
| Security Assessment & Formal Verification ReportNov 18 2025 | PoolConfigurator | unmatched — not counted | — | listed in scope | no |
| Security Assessment & Formal Verification ReportNov 18 2025 | AToken | unmatched — not counted | — | listed in scope | no |
| Security Assessment & Formal Verification ReportNov 18 2025 | VariableDebtToken | unmatched — not counted | — | listed in scope | no |
| Security Assessment & Formal Verification ReportNov 18 2025 | DebtTokenBase | unmatched — not counted | — | listed in scope | no |
| Security Assessment & Formal Verification ReportNov 18 2025 | IncentivizedERC20 | unmatched — not counted | — | listed in scope | no |
| Security Audit ReportNov 18 2025 | GenericLogic | unmatched — not counted | — | listed in scope table | no |
| Security Audit ReportNov 18 2025 | LiquidationLogic | unmatched — not counted | — | listed in scope table | no |
| Security Audit ReportNov 18 2025 | SupplyLogic | unmatched — not counted | — | listed in scope table | no |
| Security Audit ReportNov 18 2025 | ValidationLogic | unmatched — not counted | — | listed in scope table | no |
| Security Audit ReportNov 18 2025 | DataTypes | unmatched — not counted | — | listed in scope table | no |
| Security Audit ReportNov 18 2025 | Pool | unmatched — not counted | — | listed in scope table | no |
| Security Audit ReportNov 18 2025 | PoolConfigurator | unmatched — not counted | — | listed in scope table | no |
| Security Audit ReportNov 18 2025 | AToken | unmatched — not counted | — | listed in scope table | no |
| Security Audit ReportNov 18 2025 | VariableDebtToken | unmatched — not counted | — | listed in scope table | no |
| Security Audit ReportNov 18 2025 | DebtTokenBase | unmatched — not counted | — | listed in scope table | no |
| Security Audit ReportNov 18 2025 | IncentivizedERC20 | unmatched — not counted | — | listed in scope table | no |
| Supervised Security ReviewNov 18 2025savant | GenericLogic | unmatched — not counted | — | listed in scope | no |
| Supervised Security ReviewNov 18 2025savant | LiquidationLogic | unmatched — not counted | — | listed in scope | no |
| Supervised Security ReviewNov 18 2025savant | SupplyLogic | unmatched — not counted | — | listed in scope | no |
| Supervised Security ReviewNov 18 2025savant | ValidationLogic | unmatched — not counted | — | listed in scope | no |
| Supervised Security ReviewNov 18 2025savant | DataTypes | unmatched — not counted | — | listed in scope | no |
| Supervised Security ReviewNov 18 2025savant | Pool | unmatched — not counted | — | listed in scope | no |
| Supervised Security ReviewNov 18 2025savant | PoolConfigurator | unmatched — not counted | — | listed in scope | no |
| Supervised Security ReviewNov 18 2025savant | AToken | unmatched — not counted | — | listed in scope | no |
| Supervised Security ReviewNov 18 2025savant | VariableDebtToken | unmatched — not counted | — | listed in scope | no |
| Supervised Security ReviewNov 18 2025savant | DebtTokenBase | unmatched — not counted | — | listed in scope | no |
| Supervised Security ReviewNov 18 2025savant | IncentivizedERC20 | unmatched — not counted | — | listed in scope | no |
| Supervised Security ReviewNov 18 2025savant | UserConfiguration | unmatched — not counted | — | referenced in findings | no |
| Supervised Security ReviewNov 18 2025savant | ReserveConfiguration | unmatched — not counted | — | referenced in findings | no |
| Supervised Security ReviewNov 18 2025savant | IsolationModeLogic | unmatched — not counted | — | referenced in findings | no |
| Supervised Security ReviewNov 18 2025savant | BorrowLogic | unmatched — not counted | — | referenced in findings | no |
| Supervised Security ReviewNov 18 2025savant | IPoolConfigurator | unmatched — not counted | — | referenced in findings | no |
| Security ReviewNov 16 2025.st0{clip-path:url(#SVGID_00000012464508073868947960000011070647625777785502_);} | GenericLogic | unmatched — not counted | — | listed in scope | no |
| Security ReviewNov 16 2025.st0{clip-path:url(#SVGID_00000012464508073868947960000011070647625777785502_);} | LiquidationLogic | unmatched — not counted | — | listed in scope | no |
| Security ReviewNov 16 2025.st0{clip-path:url(#SVGID_00000012464508073868947960000011070647625777785502_);} | SupplyLogic | unmatched — not counted | — | listed in scope | no |
| Security ReviewNov 16 2025.st0{clip-path:url(#SVGID_00000012464508073868947960000011070647625777785502_);} | ValidationLogic | unmatched — not counted | — | listed in scope | no |
| Security ReviewNov 16 2025.st0{clip-path:url(#SVGID_00000012464508073868947960000011070647625777785502_);} | DataTypes | unmatched — not counted | — | listed in scope | no |
| Security ReviewNov 16 2025.st0{clip-path:url(#SVGID_00000012464508073868947960000011070647625777785502_);} | PoolConfigurator | unmatched — not counted | — | listed in scope | no |
| Security ReviewNov 16 2025.st0{clip-path:url(#SVGID_00000012464508073868947960000011070647625777785502_);} | Pool | unmatched — not counted | — | listed in scope | no |
| Security ReviewNov 16 2025.st0{clip-path:url(#SVGID_00000012464508073868947960000011070647625777785502_);} | AToken | unmatched — not counted | — | listed in scope | no |
| Security ReviewNov 16 2025.st0{clip-path:url(#SVGID_00000012464508073868947960000011070647625777785502_);} | DebtTokenBase | unmatched — not counted | — | listed in scope | no |
| Security ReviewNov 16 2025.st0{clip-path:url(#SVGID_00000012464508073868947960000011070647625777785502_);} | IncentivizedERC20 | unmatched — not counted | — | listed in scope | no |
| Security ReviewNov 16 2025.st0{clip-path:url(#SVGID_00000012464508073868947960000011070647625777785502_);} | VariableDebtToken | unmatched — not counted | — | listed in scope | no |
| Security Audit ReportJul 18 2025 | GenericLogic | unmatched — not counted | — | listed in scope table | no |
| Security Audit ReportJul 18 2025 | ReserveLogic | unmatched — not counted | — | listed in scope table | no |
| Security Audit ReportJul 18 2025 | PoolLogic | unmatched — not counted | — | listed in scope table | no |
| Security Audit ReportJul 18 2025 | EModeLogic | unmatched — not counted | — | listed in scope table | no |
| Security Audit ReportJul 18 2025 | LiquidationLogic | unmatched — not counted | — | listed in scope table | no |
| Security Audit ReportJul 18 2025 | SupplyLogic | unmatched — not counted | — | listed in scope table | no |
| Security Audit ReportJul 18 2025 | ValidationLogic | unmatched — not counted | — | listed in scope table | no |
| Security Audit ReportJul 18 2025 | FlashLoanLogic | unmatched — not counted | — | listed in scope table | no |
| Security Audit ReportJul 18 2025 | BorrowLogic | unmatched — not counted | — | listed in scope table | no |
| Security Audit ReportJul 18 2025 | PercentageMath | unmatched — not counted | — | listed in scope table | no |
| Security Audit ReportJul 18 2025 | WadRayMath | unmatched — not counted | — | listed in scope table | no |
| Security Audit ReportJul 18 2025 | MathUtils | unmatched — not counted | — | listed in scope table | no |
| Security Audit ReportJul 18 2025 | ATokenWithDelegation | unmatched — not counted | — | listed in scope table | no |
| Security Audit ReportJul 18 2025 | AToken | unmatched — not counted | — | listed in scope table | no |
| Security Audit ReportJul 18 2025 | VariableDebtToken | unmatched — not counted | — | listed in scope table | no |
| Security Audit ReportJul 18 2025 | ScaledBalanceTokenBase | unmatched — not counted | — | listed in scope table | no |
| Security Audit ReportJul 18 2025 | IncentivizedERC20 | unmatched — not counted | — | listed in scope table | no |
| Security Audit ReportJul 18 2025 | DataTypes | unmatched — not counted | — | listed in scope table | no |
| Security Audit ReportJul 18 2025 | Pool | unmatched — not counted | — | listed in scope table | no |
| Security Audit ReportJul 18 2025 | LiquidationDataProvider | unmatched — not counted | — | listed in scope table | no |
| Security Audit ReportJul 18 2025 | TokenMath | unmatched — not counted | — | listed in scope table | no |
| Security ReviewJul 17 2025stermi | LiquidationLogic | unmatched — not counted | — | listed in scope and findings | no |
| Security ReviewJul 17 2025stermi | ReserveLogic | unmatched — not counted | — | listed in scope and findings | no |
| Security ReviewJul 17 2025stermi | ValidationLogic | unmatched — not counted | — | listed in scope and findings | no |
| Security ReviewJul 17 2025stermi | PoolConfigurator | unmatched — not counted | — | listed in scope and findings | no |
| Security ReviewJul 17 2025stermi | BorrowLogic | unmatched — not counted | — | listed in scope and findings | no |
| Security ReviewJul 17 2025stermi | IsolationModeLogic | unmatched — not counted | — | listed in scope and findings | no |
| Security ReviewJul 17 2025stermi | GenericLogic | unmatched — not counted | — | listed in scope and findings | no |
| Security ReviewJul 17 2025stermi | PoolLogic | unmatched — not counted | — | listed in scope and findings | no |
| Security ReviewJul 17 2025stermi | FlashLoanLogic | unmatched — not counted | — | listed in scope and findings | no |
| Security ReviewJul 17 2025stermi | SupplyLogic | unmatched — not counted | — | listed in scope and findings | no |
| Security ReviewJul 17 2025stermi | MathUtils | unmatched — not counted | — | listed in scope and findings | no |
| Security ReviewJul 17 2025stermi | AToken | unmatched — not counted | — | listed in scope and findings | no |
| Security ReviewJul 17 2025stermi | VariableDebtToken | unmatched — not counted | — | listed in scope and findings | no |
| Security ReviewJul 17 2025stermi | ScaledBalanceTokenBase | unmatched — not counted | — | listed in scope and findings | no |
| Security ReviewJul 17 2025stermi | IncentivizedERC20 | unmatched — not counted | — | listed in scope and findings | no |
| Security ReviewJul 17 2025stermi | DebtTokenBase | unmatched — not counted | — | listed in scope and findings | no |
| Security ReviewJul 17 2025stermi | Pool | unmatched — not counted | — | listed in scope and findings | no |
| Security ReviewJul 17 2025stermi | PriceOracleSentinel | unmatched — not counted | — | listed in scope and findings | no |
| Security ReviewJul 17 2025stermi | SequencerOracle | unmatched — not counted | — | listed in scope and findings | no |
| Security ReviewJul 17 2025stermi | LiquidationDataProvider | unmatched — not counted | — | listed in scope and findings | no |
| Security ReviewJul 17 2025stermi | TestnetERC20 | unmatched — not counted | — | listed in scope and findings | no |
| Security ReviewJul 17 2025stermi | TestnetProcedures | unmatched — not counted | — | listed in scope and findings | no |
| Security ReviewJul 17 2025stermi | SPoolTest | unmatched — not counted | — | listed in scope and findings | no |
| Smart Contract AuditJul 17 2025 | ATokenInstance | unmatched — not counted | — | listed in scope | no |
| Smart Contract AuditJul 17 2025 | PoolInstance | unmatched — not counted | — | listed in scope | no |
| Smart Contract AuditJul 17 2025 | VariableDebtTokenInstance | unmatched — not counted | — | listed in scope | no |
| Smart Contract AuditJul 17 2025 | VariableDebtTokenMainnetInstanceGHO | unmatched — not counted | — | listed in scope | no |
| Smart Contract AuditJul 17 2025 | IAToken | unmatched — not counted | — | listed in scope | no |
| Smart Contract AuditJul 17 2025 | ICreditDelegationToken | unmatched — not counted | — | listed in scope | no |
| Smart Contract AuditJul 17 2025 | IPool | unmatched — not counted | — | listed in scope | no |
| Smart Contract AuditJul 17 2025 | IVariableDebtToken | unmatched — not counted | — | listed in scope | no |
| Smart Contract AuditJul 17 2025 | TokenMath | unmatched — not counted | — | listed in scope | no |
| Smart Contract AuditJul 17 2025 | FlashLoanLogic | unmatched — not counted | — | listed in scope | no |
| Smart Contract AuditJul 17 2025 | BorrowLogic | unmatched — not counted | — | listed in scope | no |
| Smart Contract AuditJul 17 2025 | GenericLogic | unmatched — not counted | — | listed in scope | no |
| Smart Contract AuditJul 17 2025 | LiquidationLogic | unmatched — not counted | — | listed in scope | no |
| Smart Contract AuditJul 17 2025 | PoolLogic | unmatched — not counted | — | listed in scope | no |
| Smart Contract AuditJul 17 2025 | ReserveLogic | unmatched — not counted | — | listed in scope | no |
| Smart Contract AuditJul 17 2025 | SupplyLogic | unmatched — not counted | — | listed in scope | no |
| Smart Contract AuditJul 17 2025 | ValidationLogic | unmatched — not counted | — | listed in scope | no |
| Smart Contract AuditJul 17 2025 | MathUtils | unmatched — not counted | — | listed in scope | no |
| Smart Contract AuditJul 17 2025 | PercentageMath | unmatched — not counted | — | listed in scope | no |
| Smart Contract AuditJul 17 2025 | WadRayMath | unmatched — not counted | — | listed in scope | no |
| Smart Contract AuditJul 17 2025 | Pool | unmatched — not counted | — | listed in scope | no |
| Smart Contract AuditJul 17 2025 | IncentivizedERC20 | unmatched — not counted | — | listed in scope | no |
| Smart Contract AuditJul 17 2025 | ScaledBalanceTokenBase | unmatched — not counted | — | listed in scope | no |
| Smart Contract AuditJul 17 2025 | AToken | unmatched — not counted | — | listed in scope | no |
| Smart Contract AuditJul 17 2025 | ATokenWithDelegation | unmatched — not counted | — | listed in scope | no |
| Smart Contract AuditJul 17 2025 | VariableDebtToken | unmatched — not counted | — | listed in scope | no |
| Smart Contract AuditJul 17 2025 | DataTypes | unmatched — not counted | — | mentioned in finding CVF-13 | no |
| Security AssessmentJul 14 2025 | LiquidationLogic | unmatched — not counted | — | listed in scope and finding M-01 | no |
| Security AssessmentJul 14 2025 | VariableDebtToken | unmatched — not counted | — | listed in scope and finding M-02 | no |
| Security AssessmentJul 14 2025 | Pool | unmatched — not counted | — | listed in scope and finding L-01 | no |
| Security AssessmentJul 14 2025 | GenericLogic | unmatched — not counted | — | listed in scope and finding L-02 | no |
| Security AssessmentJul 14 2025 | WadRayMath | unmatched — not counted | — | mentioned in finding I-04 as containing ceil/floor math variants | no |
| Security AssessmentJul 14 2025 | PercentageMath | unmatched — not counted | — | mentioned in finding I-04 as containing ceil/floor math variants | no |
| Security ReviewJun 12 2025.st0{clip-path:url(#SVGID_00000012464508073868947960000011070647625777785502_);} | AaveProtocolDataProvider | unmatched — not counted | — | listed in scope | no |
| Security ReviewJun 12 2025.st0{clip-path:url(#SVGID_00000012464508073868947960000011070647625777785502_);} | L2Encoder | unmatched — not counted | — | listed in scope | no |
| Security ReviewJun 12 2025.st0{clip-path:url(#SVGID_00000012464508073868947960000011070647625777785502_);} | ATokenInstance | unmatched — not counted | — | listed in scope | no |
| Security ReviewJun 12 2025.st0{clip-path:url(#SVGID_00000012464508073868947960000011070647625777785502_);} | ATokenWithDelegationInstance | unmatched — not counted | — | listed in scope | no |
| Security ReviewJun 12 2025.st0{clip-path:url(#SVGID_00000012464508073868947960000011070647625777785502_);} | L2PoolInstance | unmatched — not counted | — | listed in scope | no |
| Security ReviewJun 12 2025.st0{clip-path:url(#SVGID_00000012464508073868947960000011070647625777785502_);} | VariableDebtTokenInstance | unmatched — not counted | — | listed in scope | no |
| Security ReviewJun 12 2025.st0{clip-path:url(#SVGID_00000012464508073868947960000011070647625777785502_);} | DefaultReserveInterestRateStrategyV2 | unmatched — not counted | — | listed in scope | no |
| Security ReviewJun 12 2025.st0{clip-path:url(#SVGID_00000012464508073868947960000011070647625777785502_);} | VersionedInitializable | unmatched — not counted | — | listed in scope | no |
| Security ReviewJun 12 2025.st0{clip-path:url(#SVGID_00000012464508073868947960000011070647625777785502_);} | ACLManager | unmatched — not counted | — | listed in scope | no |
| Security ReviewJun 12 2025.st0{clip-path:url(#SVGID_00000012464508073868947960000011070647625777785502_);} | PoolAddressesProviderRegistry | unmatched — not counted | — | listed in scope | no |
| Security ReviewJun 12 2025.st0{clip-path:url(#SVGID_00000012464508073868947960000011070647625777785502_);} | EModeConfiguration | unmatched — not counted | — | listed in scope | no |
| Security ReviewJun 12 2025.st0{clip-path:url(#SVGID_00000012464508073868947960000011070647625777785502_);} | ReserveConfiguration | unmatched — not counted | — | listed in scope | no |
| Security ReviewJun 12 2025.st0{clip-path:url(#SVGID_00000012464508073868947960000011070647625777785502_);} | UserConfiguration | unmatched — not counted | — | listed in scope | no |
| Security ReviewJun 12 2025.st0{clip-path:url(#SVGID_00000012464508073868947960000011070647625777785502_);} | Errors | unmatched — not counted | — | listed in scope | no |
| Security ReviewJun 12 2025.st0{clip-path:url(#SVGID_00000012464508073868947960000011070647625777785502_);} | BorrowLogic | unmatched — not counted | — | listed in scope | no |
| Security ReviewJun 12 2025.st0{clip-path:url(#SVGID_00000012464508073868947960000011070647625777785502_);} | ConfiguratorLogic | unmatched — not counted | — | listed in scope | no |
| Security ReviewJun 12 2025.st0{clip-path:url(#SVGID_00000012464508073868947960000011070647625777785502_);} | EModeLogic | unmatched — not counted | — | listed in scope | no |
| Security ReviewJun 12 2025.st0{clip-path:url(#SVGID_00000012464508073868947960000011070647625777785502_);} | FlashLoanLogic | unmatched — not counted | — | listed in scope | no |
| Security ReviewJun 12 2025.st0{clip-path:url(#SVGID_00000012464508073868947960000011070647625777785502_);} | GenericLogic | unmatched — not counted | — | listed in scope | no |
| Security ReviewJun 12 2025.st0{clip-path:url(#SVGID_00000012464508073868947960000011070647625777785502_);} | IsolationModeLogic | unmatched — not counted | — | listed in scope | no |
| Security ReviewJun 12 2025.st0{clip-path:url(#SVGID_00000012464508073868947960000011070647625777785502_);} | LiquidationLogic | unmatched — not counted | — | listed in scope | no |
| Security ReviewJun 12 2025.st0{clip-path:url(#SVGID_00000012464508073868947960000011070647625777785502_);} | PoolLogic | unmatched — not counted | — | listed in scope | no |
| Security ReviewJun 12 2025.st0{clip-path:url(#SVGID_00000012464508073868947960000011070647625777785502_);} | ReserveLogic | unmatched — not counted | — | listed in scope | no |
| Security ReviewJun 12 2025.st0{clip-path:url(#SVGID_00000012464508073868947960000011070647625777785502_);} | SupplyLogic | unmatched — not counted | — | listed in scope | no |
| Security ReviewJun 12 2025.st0{clip-path:url(#SVGID_00000012464508073868947960000011070647625777785502_);} | ValidationLogic | unmatched — not counted | — | listed in scope | no |
| Security ReviewJun 12 2025.st0{clip-path:url(#SVGID_00000012464508073868947960000011070647625777785502_);} | MathUtils | unmatched — not counted | — | listed in scope | no |
| Security ReviewJun 12 2025.st0{clip-path:url(#SVGID_00000012464508073868947960000011070647625777785502_);} | ConfiguratorInputTypes | unmatched — not counted | — | listed in scope | no |
| Security ReviewJun 12 2025.st0{clip-path:url(#SVGID_00000012464508073868947960000011070647625777785502_);} | DataTypes | unmatched — not counted | — | listed in scope | no |
| Security ReviewJun 12 2025.st0{clip-path:url(#SVGID_00000012464508073868947960000011070647625777785502_);} | L2Pool | unmatched — not counted | — | listed in scope | no |
| Security ReviewJun 12 2025.st0{clip-path:url(#SVGID_00000012464508073868947960000011070647625777785502_);} | Pool | unmatched — not counted | — | listed in scope | no |
| Security ReviewJun 12 2025.st0{clip-path:url(#SVGID_00000012464508073868947960000011070647625777785502_);} | PoolConfigurator | unmatched — not counted | — | listed in scope | no |
| Security ReviewJun 12 2025.st0{clip-path:url(#SVGID_00000012464508073868947960000011070647625777785502_);} | PoolStorage | unmatched — not counted | — | listed in scope | no |
| Security ReviewJun 12 2025.st0{clip-path:url(#SVGID_00000012464508073868947960000011070647625777785502_);} | AToken | unmatched — not counted | — | listed in scope | no |
| Security ReviewJun 12 2025.st0{clip-path:url(#SVGID_00000012464508073868947960000011070647625777785502_);} | ATokenWithDelegation | unmatched — not counted | — | listed in scope | no |
| Security ReviewJun 12 2025.st0{clip-path:url(#SVGID_00000012464508073868947960000011070647625777785502_);} | VariableDebtToken | unmatched — not counted | — | listed in scope | no |
| Security ReviewJun 12 2025.st0{clip-path:url(#SVGID_00000012464508073868947960000011070647625777785502_);} | DebtTokenBase | unmatched — not counted | — | listed in scope | no |
| Security ReviewJun 12 2025.st0{clip-path:url(#SVGID_00000012464508073868947960000011070647625777785502_);} | DelegationMode | unmatched — not counted | — | listed in scope | no |
| Security ReviewJun 12 2025.st0{clip-path:url(#SVGID_00000012464508073868947960000011070647625777785502_);} | IncentivizedERC20 | unmatched — not counted | — | listed in scope | no |
| Security ReviewJun 12 2025.st0{clip-path:url(#SVGID_00000012464508073868947960000011070647625777785502_);} | MintableIncentivizedERC20 | unmatched — not counted | — | listed in scope | no |
| Security ReviewJun 12 2025.st0{clip-path:url(#SVGID_00000012464508073868947960000011070647625777785502_);} | ScaledBalanceTokenBase | unmatched — not counted | — | listed in scope | no |
| Security ReviewJun 12 2025.st0{clip-path:url(#SVGID_00000012464508073868947960000011070647625777785502_);} | BaseDelegation | unmatched — not counted | — | listed in scope | no |
| Security ReviewJun 12 2025.st0{clip-path:url(#SVGID_00000012464508073868947960000011070647625777785502_);} | ATokenMainnetInstanceGHO | unmatched — not counted | — | listed in scope | no |
| Security ReviewJun 12 2025.st0{clip-path:url(#SVGID_00000012464508073868947960000011070647625777785502_);} | CustomInitialize | unmatched — not counted | — | listed in scope | no |
| Security ReviewJun 12 2025.st0{clip-path:url(#SVGID_00000012464508073868947960000011070647625777785502_);} | L2PoolInstanceWithCustomInitialize | unmatched — not counted | — | listed in scope | no |
| Security ReviewJun 12 2025.st0{clip-path:url(#SVGID_00000012464508073868947960000011070647625777785502_);} | MainnetCorePoolInstanceWithCustomInitialize | unmatched — not counted | — | listed in scope | no |
| Security ReviewJun 12 2025.st0{clip-path:url(#SVGID_00000012464508073868947960000011070647625777785502_);} | PoolConfiguratorWithCustomInitialize | unmatched — not counted | — | listed in scope | no |
| Security ReviewJun 12 2025.st0{clip-path:url(#SVGID_00000012464508073868947960000011070647625777785502_);} | PoolInstanceWithCustomInitialize | unmatched — not counted | — | listed in scope | no |
| Security ReviewJun 12 2025.st0{clip-path:url(#SVGID_00000012464508073868947960000011070647625777785502_);} | UpgradePayload | unmatched — not counted | — | listed in scope | no |
| Security ReviewJun 12 2025.st0{clip-path:url(#SVGID_00000012464508073868947960000011070647625777785502_);} | UpgradePayloadMainnet | unmatched — not counted | — | listed in scope | no |
| Security ReviewJun 12 2025.st0{clip-path:url(#SVGID_00000012464508073868947960000011070647625777785502_);} | VariableDebtTokenMainnetInstanceGHO | unmatched — not counted | — | listed in scope | no |
| Security AssessmentJun 11 2025 | BorrowLogic | unmatched — not counted | — | mentioned in findings and coverage sections | no |
| Security AssessmentJun 11 2025 | LiquidationLogic | unmatched — not counted | — | mentioned in findings and coverage sections | no |
| Security AssessmentJun 11 2025 | FlashLoanLogic | unmatched — not counted | — | mentioned in findings and coverage sections | no |
| Security AssessmentJun 11 2025 | GenericLogic | unmatched — not counted | — | mentioned in coverage section | no |
| Security AssessmentJun 11 2025 | ValidationLogic | unmatched — not counted | — | mentioned in findings section | no |
| Security AssessmentJun 11 2025 | IncentivizedERC20 | unmatched — not counted | — | mentioned in findings section | no |
| Security AssessmentJun 11 2025 | AaveProtocolDataProvider | unmatched — not counted | — | mentioned in coverage section | no |
| Security AssessmentJun 11 2025 | Pool | unmatched — not counted | — | mentioned in scope and coverage sections | no |
| Security AssessmentJun 11 2025 | PoolAddressProvider | unmatched — not counted | — | mentioned in coverage section | no |
| Security AssessmentJun 11 2025 | aToken | unmatched — not counted | — | mentioned in findings and coverage sections | no |
| Security AssessmentJun 11 2025 | vToken | unmatched — not counted | — | mentioned in findings and coverage sections | no |
| Security AssessmentJun 11 2025 | aAAVE | unmatched — not counted | — | mentioned in findings section | no |
| Security AssessmentJun 11 2025 | vGHO | unmatched — not counted | — | mentioned in protocol overview | no |
| Security AssessmentJun 11 2025 | aGHO | unmatched — not counted | — | mentioned in protocol overview | no |
| Smart Contract Security Audit ReportJun 11 2025stermi | Pool | unmatched — not counted | — | listed in scope and findings | no |
| Smart Contract Security Audit ReportJun 11 2025stermi | PoolInstance | unmatched — not counted | — | listed in scope and findings | no |
| Smart Contract Security Audit ReportJun 11 2025stermi | PoolConfigurator | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security Audit ReportJun 11 2025stermi | PoolConfiguratorInstance | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security Audit ReportJun 11 2025stermi | L2PoolInstance | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security Audit ReportJun 11 2025stermi | AToken | unmatched — not counted | — | listed in scope and findings | no |
| Smart Contract Security Audit ReportJun 11 2025stermi | ATokenInstance | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security Audit ReportJun 11 2025stermi | ATokenWithDelegationInstance | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security Audit ReportJun 11 2025stermi | VariableDebtToken | unmatched — not counted | — | listed in scope and findings | no |
| Smart Contract Security Audit ReportJun 11 2025stermi | VariableDebtTokenInstance | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security Audit ReportJun 11 2025stermi | VariableDebtTokenMainnetInstanceGHO | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security Audit ReportJun 11 2025stermi | IncentivizedERC20 | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security Audit ReportJun 11 2025stermi | BaseDelegation | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security Audit ReportJun 11 2025stermi | DebtTokenBase | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security Audit ReportJun 11 2025stermi | FlashLoanLogic | unmatched — not counted | — | listed in scope and findings | no |
| Smart Contract Security Audit ReportJun 11 2025stermi | LiquidationLogic | unmatched — not counted | — | listed in scope and findings | no |
| Smart Contract Security Audit ReportJun 11 2025stermi | BorrowLogic | unmatched — not counted | — | listed in scope and findings | no |
| Smart Contract Security Audit ReportJun 11 2025stermi | SupplyLogic | unmatched — not counted | — | listed in scope and findings | no |
| Smart Contract Security Audit ReportJun 11 2025stermi | PoolLogic | unmatched — not counted | — | listed in scope and findings | no |
| Smart Contract Security Audit ReportJun 11 2025stermi | EModeLogic | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security Audit ReportJun 11 2025stermi | ValidationLogic | unmatched — not counted | — | listed in scope and findings | no |
| Smart Contract Security Audit ReportJun 11 2025stermi | ReserveLogic | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security Audit ReportJun 11 2025stermi | ReserveConfiguration | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security Audit ReportJun 11 2025stermi | DataTypes | unmatched — not counted | — | listed in scope and findings | no |
| Smart Contract Security Audit ReportJun 11 2025stermi | Errors | unmatched — not counted | — | listed in scope and findings | no |
| Smart Contract Security Audit ReportJun 11 2025stermi | AaveProtocolDataProvider | unmatched — not counted | — | listed in scope and findings | no |
| Smart Contract Security Audit ReportJun 11 2025stermi | IPool | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security Audit ReportJun 11 2025stermi | IPoolDataProvider | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security Audit ReportJun 11 2025stermi | IAToken | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security Audit ReportJun 11 2025stermi | IVariableDebtToken | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security Audit ReportJun 11 2025stermi | IScaledBalanceToken | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security Audit ReportJun 11 2025stermi | IAaveIncentivesController | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security Audit ReportJun 11 2025stermi | IDefaultInterestRateStrategyV2 | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security Audit ReportJun 11 2025stermi | DefaultReserveInterestRateStrategyV2 | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security Audit ReportJun 11 2025stermi | FlashLoanSimpleReceiverBase | unmatched — not counted | — | listed in scope | no |
| Security Audit Report - V3.1-V3.3Aug 8 2025ottersec | aave-aptos-v3 | unmatched — not counted | — | Scope section: 'The source code was delivered to us in a Git repository at https://github.com/aave/aptos-v3. This audit was performed against commit a8f9c40. A brief description of the program is as follows: Name: aave-aptos-v3' | no |
| Security Audit Report - Core V3.0.2Jun 18 2025spearbit | token_base | unmatched — not counted | — | mentioned in findings context | no |
| Security Audit Report - Core V3.0.2Jun 18 2025spearbit | liquidation_logic | unmatched — not counted | — | mentioned in findings context | no |
| Security Audit Report - Core V3.0.2Jun 18 2025spearbit | pool_configurator | unmatched — not counted | — | mentioned in findings context | no |
| Security Audit Report - Core V3.0.2Jun 18 2025spearbit | emode_logic | unmatched — not counted | — | mentioned in findings context | no |
| Security Audit Report - Core V3.0.2Jun 18 2025spearbit | validation_logic | unmatched — not counted | — | mentioned in findings context | no |
| Security Audit Report - Core V3.0.2Jun 18 2025spearbit | oracle | unmatched — not counted | — | mentioned in findings context | no |
| Security Audit Report - Core V3.0.2Jun 18 2025spearbit | oracle_base | unmatched — not counted | — | mentioned in findings context | no |
| Security Audit Report - Core V3.0.2Jun 18 2025spearbit | price_cap_stable_adapter | unmatched — not counted | — | mentioned in findings context | no |
| Security Audit Report - Core V3.0.2Jun 18 2025spearbit | pool_logic | unmatched — not counted | — | mentioned in findings context | no |
| Security Audit Report - Core V3.0.2Jun 18 2025spearbit | default_reserve_interest_rate_strategy | unmatched — not counted | — | mentioned in findings context | no |
| Security Audit Report - Core V3.0.2Jun 18 2025spearbit | pool_token_logic | unmatched — not counted | — | mentioned in findings context | no |
| Security Audit Report - Core V3.0.2Jun 18 2025spearbit | math_utils | unmatched — not counted | — | mentioned in findings context | no |
| Security Audit Report - Core V3.0.2Jun 18 2025spearbit | wad_ray_math | unmatched — not counted | — | mentioned in findings context | no |
| Security Audit Report - Core V3.0.2Jun 18 2025spearbit | borrow_logic | unmatched — not counted | — | mentioned in findings context | no |
| Security Audit Report - Core V3.0.2Jun 18 2025spearbit | supply_logic | unmatched — not counted | — | mentioned in findings context | no |
| Security Audit Report - Core V3.0.2Jun 18 2025spearbit | generic_logic | unmatched — not counted | — | mentioned in findings context | no |
| Security Audit Report - Core V3.0.2Jun 18 2025spearbit | flashloan_logic | unmatched — not counted | — | mentioned in findings context | no |
| Security Audit Report - Core V3.0.2Jun 18 2025spearbit | acl_manage | unmatched — not counted | — | mentioned in findings context | no |
| Security Audit Report - Core V3.0.2Jun 18 2025spearbit | error_config | unmatched — not counted | — | mentioned in findings context | no |
| Security Audit Report - Core V3.0.2Jun 18 2025spearbit | reserve_config | unmatched — not counted | — | mentioned in findings context | no |
| Security Audit Report - Core V3.0.2Jun 18 2025spearbit | user_config | unmatched — not counted | — | mentioned in findings context | no |
| Security Audit Report - Core V3.0.2Jun 18 2025spearbit | emission_manager | unmatched — not counted | — | mentioned in findings context | no |
| Security Audit Report - Core V3.0.2Jun 18 2025spearbit | rewards_controller | unmatched — not counted | — | mentioned in findings context | no |
| Security Audit Report - Core V3.0.2Jun 18 2025spearbit | pool | unmatched — not counted | — | mentioned in findings context | no |
| Security Audit Report - Core V3.0.2Jun 18 2025spearbit | a_token_factory | unmatched — not counted | — | mentioned in findings context | no |
| Security Audit Report - Core V3.0.2Jun 18 2025spearbit | variable_debt_token_factory | unmatched — not counted | — | mentioned in findings context | no |
| Security Audit Report - Core V3.0.2Jun 18 2025spearbit | pool_addresses_provider | unmatched — not counted | — | mentioned in findings context | no |
| Security Audit Report - Core V3.0.2Jun 18 2025spearbit | ui_pool_data_provider_v3 | unmatched — not counted | — | mentioned in findings context | no |
| Security Audit Report - Core V3.0.2Jun 18 2025spearbit | coin_migrator | unmatched — not counted | — | mentioned in findings context | no |
| Security Audit Report - Core V3.0.2Jun 18 2025spearbit | gho_interest_rate_strategy | unmatched — not counted | — | mentioned in findings context | no |
| Security Audit Report - Core V3.0.2Jun 18 2025spearbit | isolation_mode_logic | unmatched — not counted | — | mentioned in findings context | no |
| Security Audit Report - Core V3.1-V3.3Jun 18 2025spearbit | liquidation_logic | unmatched — not counted | — | mentioned in findings context | no |
| Security Audit Report - Core V3.1-V3.3Jun 18 2025spearbit | pool_logic | unmatched — not counted | — | mentioned in findings context | no |
| Security Audit Report - Core V3.1-V3.3Jun 18 2025spearbit | pool_configurator | unmatched — not counted | — | mentioned in findings context | no |
| Security Audit Report - Core V3.1-V3.3Jun 18 2025spearbit | validation_logic | unmatched — not counted | — | mentioned in findings context | no |
| Security Audit Report - Core V3.1-V3.3Jun 18 2025spearbit | aave_rate | unmatched — not counted | — | mentioned in findings context | no |
| Security Audit Report - Core V3.1-V3.3Jun 18 2025spearbit | gho_interest_rate_strategy | unmatched — not counted | — | mentioned in findings context | no |
| Security Audit Report - Core V3.1-V3.3Jun 18 2025spearbit | interest_rate_strategy | unmatched — not counted | — | mentioned in findings context | no |
| Security Audit Report - Core V3.1-V3.3Jun 18 2025spearbit | default_reserve_interest_rate_strategy | unmatched — not counted | — | mentioned in findings context | no |
| Security Audit Report - Core V3.1-V3.3Jun 18 2025spearbit | aave_pool | unmatched — not counted | — | mentioned in findings context | no |
| Security Audit Report - Core V3.1-V3.3Jun 18 2025spearbit | admin_controlled_ecosystem_reserve | unmatched — not counted | — | mentioned in findings context | no |
| Security Audit Report - Core V3.1-V3.3Jun 18 2025spearbit | ui_pool_data_provider_v3 | unmatched — not counted | — | mentioned in findings context | no |
| Security Audit Report - Core V3.1-V3.3Jun 18 2025spearbit | pool_token_logic | unmatched — not counted | — | mentioned in findings context | no |
| Security Audit Report - Core V3.1-V3.3Jun 18 2025spearbit | aave_config | unmatched — not counted | — | mentioned in findings context | no |
| Security Audit Report - Core V3.1-V3.3Jun 18 2025spearbit | reserve_config | unmatched — not counted | — | mentioned in findings context | no |
| Security Audit Report - Core V3.1-V3.3Jun 18 2025spearbit | emode_logic | unmatched — not counted | — | mentioned in findings context | no |
| Security Audit Report - Periphery V3.0.2Jun 18 2025spearbit | admin_controlled_ecosystem_reserve | unmatched — not counted | — | listed in scope and findings | no |
| Security Audit Report - Periphery V3.0.2Jun 18 2025spearbit | emission_manager | unmatched — not counted | — | listed in scope and findings | no |
| Security Audit Report - Periphery V3.0.2Jun 18 2025spearbit | rewards_controller | unmatched — not counted | — | listed in scope and findings | no |
| Security Audit Report - Periphery V3.0.2Jun 18 2025spearbit | collector | unmatched — not counted | — | listed in scope and findings | no |
| Security Audit Report - Periphery V3.0.2Jun 18 2025spearbit | a_token_factory | unmatched — not counted | — | mentioned in findings | no |
| Security Audit Report - Periphery V3.0.2Jun 18 2025spearbit | coin_migrator | unmatched — not counted | — | mentioned in findings | no |
| Security Audit Report - Periphery V3.0.2Jun 18 2025spearbit | transfer_strategy | unmatched — not counted | — | mentioned in findings | no |
| Security Audit Report - Periphery V3.0.2Jun 18 2025spearbit | oracle_base | unmatched — not counted | — | mentioned in findings | no |
| Security Audit Report - Periphery V3.0.2Jun 18 2025spearbit | ui_pool_data_provider_v3 | unmatched — not counted | — | mentioned in findings | no |
| Security Audit Report - Periphery V3.0.2Jun 18 2025spearbit | ui_incentive_data_provider_v3 | unmatched — not counted | — | mentioned in findings | no |
| Security Audit Report - Periphery V3.0.2Jun 18 2025spearbit | variable_debt_token_factory | unmatched — not counted | — | mentioned in findings | no |
| Security Audit Report - Periphery V3.0.2Jun 18 2025spearbit | token_base | unmatched — not counted | — | mentioned in findings | no |
| Security Assessment & Formal Verification Report - Core V3.0.2Apr 2025 | validation_logic | unmatched — not counted | — | M-01 finding references validation_logic.move | no |
| Security Assessment & Formal Verification Report - Core V3.0.2Apr 2025 | pool_token_logic | unmatched — not counted | — | M-02 finding references pool_token_logic.move | no |
| Security Assessment & Formal Verification Report - Core V3.0.2Apr 2025 | pool_configurator | unmatched — not counted | — | L-01 finding references pool_configurator.move | no |
| Security Assessment & Formal Verification Report - Core V3.0.2Apr 2025 | default_reserve_interest_rate_strategy | unmatched — not counted | — | I-01 finding references default_reserve_interest_rate_strategy.move | no |
| Security Assessment & Formal Verification Report - Core V3.0.2Apr 2025 | pool | unmatched — not counted | — | I-02 finding references pool.move | no |
| Security Assessment & Formal Verification Report - Core V3.0.2Apr 2025 | emode_logic | unmatched — not counted | — | I-02 finding references emode_logic.move | no |
| Security Assessment & Formal Verification Report - Core V3.0.2Apr 2025 | token_base | unmatched — not counted | — | I-02 finding references token_base.move | no |
| Security Assessment & Formal Verification Report - Core V3.0.2Apr 2025 | pool_logic | unmatched — not counted | — | I-02 finding references pool_logic.move | no |
| Security Assessment & Formal Verification Report - Core V3.0.2Apr 2025 | generic_logic | unmatched — not counted | — | I-02 finding references generic_logic.move | no |
| Security Assessment & Formal Verification Report - Core V3.1-V3.3Apr 2025 | liquidation_logic | unmatched — not counted | — | listed in scope and findings | no |
| Security Assessment & Formal Verification Report - Core V3.1-V3.3Apr 2025 | pool_logic | unmatched — not counted | — | listed in scope and findings | no |
| Security Assessment & Formal Verification Report - Core V3.1-V3.3Apr 2025 | aave-acl | unmatched — not counted | — | listed in scope | no |
| Security Assessment & Formal Verification Report - Core V3.1-V3.3Apr 2025 | aave-config | unmatched — not counted | — | listed in scope | no |
| Security Assessment & Formal Verification Report - Core V3.1-V3.3Apr 2025 | aave-math | unmatched — not counted | — | listed in scope | no |
| Security Assessment & Formal Verification Report - Core V3.1-V3.3Apr 2025 | aave-oracle | unmatched — not counted | — | listed in scope | no |
| Security Assessment & Formal Verification Report - Core V3.1-V3.3Apr 2025 | aave-rates | unmatched — not counted | — | listed in scope | no |
| Security Assessment & Formal Verification Report - Core V3.1-V3.3Apr 2025 | aave-pool | unmatched — not counted | — | listed in scope | no |
| Security Assessment & Formal Verification Report - Periphery V3.0.2Apr 2025 | aave-periphery | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security Audit ReportMay 19 2025 | Umbrella | unmatched — not counted | — | listed in scope table | no |
| Smart Contract Security Audit ReportMay 19 2025 | UmbrellaConfiguration | unmatched — not counted | — | listed in scope table | no |
| Smart Contract Security Audit ReportMay 19 2025 | UmbrellaStkManager | unmatched — not counted | — | listed in scope table | no |
| Smart Contract Security Audit ReportMay 19 2025 | EmissionMath | unmatched — not counted | — | listed in scope table | no |
| Smart Contract Security Audit ReportMay 19 2025 | InternalStructs | unmatched — not counted | — | listed in scope table | no |
| Smart Contract Security Audit ReportMay 19 2025 | RewardsController | unmatched — not counted | — | listed in scope table | no |
| Smart Contract Security Audit ReportMay 19 2025 | RewardsDistributor | unmatched — not counted | — | listed in scope table | no |
| Smart Contract Security Audit ReportMay 19 2025 | StakeToken | unmatched — not counted | — | listed in scope table | no |
| Smart Contract Security Audit ReportMay 19 2025 | ERC4626StakeTokenUpgradeable | unmatched — not counted | — | listed in scope table | no |
| Smart Contract Security Audit ReportMay 19 2025 | UmbrellaStakeToken | unmatched — not counted | — | listed in scope table | no |
| Smart Contract Security Audit ReportMay 19 2025 | UmbrellaBatchHelper | unmatched — not counted | — | listed in scope table | no |
| Smart Contract Security Audit ReportMay 19 2025 | IUmbrellaBatchHelper | unmatched — not counted | — | listed in scope table | no |
| Smart Contract Security Audit ReportMay 19 2025 | IUniversalToken | unmatched — not counted | — | listed in scope table | no |
| Smart Contract Security Audit ReportMay 19 2025ackee | RewardsController | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security Audit ReportMay 19 2025ackee | RewardsDistributor | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security Audit ReportMay 19 2025ackee | IRewardsController | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security Audit ReportMay 19 2025ackee | IRewardsDistributor | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security Audit ReportMay 19 2025ackee | IRewardsStructs | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security Audit ReportMay 19 2025ackee | EmissionMath | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security Audit ReportMay 19 2025ackee | InternalStructs | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security Audit ReportMay 19 2025ackee | StakeToken | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security Audit ReportMay 19 2025ackee | UmbrellaStakeToken | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security Audit ReportMay 19 2025ackee | ERC4626StakeTokenUpgradeable | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security Audit ReportMay 19 2025ackee | IERC4626StakeToken | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security Audit ReportMay 19 2025ackee | IOracleToken | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security Audit ReportMay 19 2025ackee | IStakeToken | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security Audit ReportMay 19 2025ackee | IUmbrellaStakeToken | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security Audit ReportMay 19 2025ackee | Umbrella | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security Audit ReportMay 19 2025ackee | UmbrellaConfiguration | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security Audit ReportMay 19 2025ackee | UmbrellaStkManager | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security Audit ReportMay 19 2025ackee | IUmbrella | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security Audit ReportMay 19 2025ackee | IUmbrellaConfiguration | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security Audit ReportMay 19 2025ackee | IUmbrellaStkManager | unmatched — not counted | — | listed in scope | no |
| Audit Contest ReportJan 22 2025 | AaveProtocolDataProvider | unmatched — not counted | — | listed in scope | no |
| Audit Contest ReportJan 22 2025 | WrappedTokenGatewayV3 | unmatched — not counted | — | listed in scope | no |
| Audit Contest ReportJan 22 2025 | ReserveConfiguration | unmatched — not counted | — | listed in scope | no |
| Audit Contest ReportJan 22 2025 | BorrowLogic | unmatched — not counted | — | listed in scope | no |
| Audit Contest ReportJan 22 2025 | BridgeLogic | unmatched — not counted | — | listed in scope | no |
| Audit Contest ReportJan 22 2025 | ConfiguratorLogic | unmatched — not counted | — | listed in scope | no |
| Audit Contest ReportJan 22 2025 | LiquidationLogic | unmatched — not counted | — | listed in scope | no |
| Audit Contest ReportJan 22 2025 | ReserveLogic | unmatched — not counted | — | listed in scope | no |
| Audit Contest ReportJan 22 2025 | ValidationLogic | unmatched — not counted | — | listed in scope | no |
| Audit Contest ReportJan 22 2025 | DataTypes | unmatched — not counted | — | listed in scope | no |
| Audit Contest ReportJan 22 2025 | Pool | unmatched — not counted | — | listed in scope | no |
| Security ReviewSep 30 2024 | IUiIncentiveDataProviderV3 | unmatched — not counted | — | mentioned in finding I-01 | no |
| Security ReviewSep 30 2024 | IUiPoolDataProviderV3 | unmatched — not counted | — | mentioned in finding I-01 | no |
| Security ReviewSep 30 2024 | IPool | unmatched — not counted | — | mentioned in finding I-04 | no |
| Security ReviewSep 30 2024 | IAaveV3ConfigEngine | unmatched — not counted | — | mentioned in findings I-04 and I-05 | no |
| Security ReviewSep 30 2024 | ConfiguratorLogic | unmatched — not counted | — | mentioned in finding I-04 | no |
| Security Assessment & Formal Verification Report - Liquid eModesSep 19 2024 | AaveProtocolDataProvider | unmatched — not counted | — | listed in scope | no |
| Security Assessment & Formal Verification Report - Liquid eModesSep 19 2024 | IPoolConfigurator | unmatched — not counted | — | listed in scope | no |
| Security Assessment & Formal Verification Report - Liquid eModesSep 19 2024 | IPool | unmatched — not counted | — | listed in scope | no |
| Security Assessment & Formal Verification Report - Liquid eModesSep 19 2024 | IPoolDataProvider | unmatched — not counted | — | listed in scope | no |
| Security Assessment & Formal Verification Report - Liquid eModesSep 19 2024 | EModeConfiguration | unmatched — not counted | — | listed in scope | no |
| Security Assessment & Formal Verification Report - Liquid eModesSep 19 2024 | ReserveConfiguration | unmatched — not counted | — | listed in scope | no |
| Security Assessment & Formal Verification Report - Liquid eModesSep 19 2024 | Errors | unmatched — not counted | — | listed in scope | no |
| Security Assessment & Formal Verification Report - Liquid eModesSep 19 2024 | ConfiguratorLogic | unmatched — not counted | — | listed in scope | no |
| Security Assessment & Formal Verification Report - Liquid eModesSep 19 2024 | EModeLogic | unmatched — not counted | — | listed in scope | no |
| Security Assessment & Formal Verification Report - Liquid eModesSep 19 2024 | GenericLogic | unmatched — not counted | — | listed in scope | no |
| Security Assessment & Formal Verification Report - Liquid eModesSep 19 2024 | LiquidationLogic | unmatched — not counted | — | listed in scope | no |
| Security Assessment & Formal Verification Report - Liquid eModesSep 19 2024 | ValidationLogic | unmatched — not counted | — | listed in scope | no |
| Security Assessment & Formal Verification Report - Liquid eModesSep 19 2024 | DataTypes | unmatched — not counted | — | listed in scope | no |
| Security Assessment & Formal Verification Report - Liquid eModesSep 19 2024 | PoolConfigurator | unmatched — not counted | — | listed in scope | no |
| Security Assessment & Formal Verification Report - Liquid eModesSep 19 2024 | Pool | unmatched — not counted | — | listed in scope | no |
| Security ReviewSep 15 2024 | AaveProtocolDataProvider | unmatched — not counted | — | listed in scope | no |
| Security ReviewSep 15 2024 | IPoolConfigurator | unmatched — not counted | — | listed in scope | no |
| Security ReviewSep 15 2024 | IPoolDataProvider | unmatched — not counted | — | listed in scope | no |
| Security ReviewSep 15 2024 | EModeConfiguration | unmatched — not counted | — | listed in scope | no |
| Security ReviewSep 15 2024 | ReserveConfiguration | unmatched — not counted | — | listed in scope | no |
| Security ReviewSep 15 2024 | Errors | unmatched — not counted | — | listed in scope | no |
| Security ReviewSep 15 2024 | ConfiguratorLogic | unmatched — not counted | — | listed in scope | no |
| Security ReviewSep 15 2024 | EModeLogic | unmatched — not counted | — | listed in scope | no |
| Security ReviewSep 15 2024 | GenericLogic | unmatched — not counted | — | listed in scope | no |
| Security ReviewSep 15 2024 | LiquidationLogic | unmatched — not counted | — | listed in scope | no |
| Security ReviewSep 15 2024 | ValidationLogic | unmatched — not counted | — | listed in scope | no |
| Security ReviewSep 15 2024 | DataTypes | unmatched — not counted | — | listed in scope | no |
| Security ReviewSep 15 2024 | PoolConfigurator | unmatched — not counted | — | listed in scope | no |
| Security Audit Report - Liquid eModesSep 12 2024 | AaveProtocolDataProvider | unmatched — not counted | — | listed in audited files table | no |
| Security Audit Report - Liquid eModesSep 12 2024 | IPoolConfigurator | unmatched — not counted | — | listed in audited files table | no |
| Security Audit Report - Liquid eModesSep 12 2024 | IPoolDataProvider | unmatched — not counted | — | listed in audited files table | no |
| Security Audit Report - Liquid eModesSep 12 2024 | EModeConfiguration | unmatched — not counted | — | listed in audited files table | no |
| Security Audit Report - Liquid eModesSep 12 2024 | ReserveConfiguration | unmatched — not counted | — | listed in audited files table | no |
| Security Audit Report - Liquid eModesSep 12 2024 | Errors | unmatched — not counted | — | listed in audited files table | no |
| Security Audit Report - Liquid eModesSep 12 2024 | ConfiguratorLogic | unmatched — not counted | — | listed in audited files table | no |
| Security Audit Report - Liquid eModesSep 12 2024 | EModeLogic | unmatched — not counted | — | listed in audited files table | no |
| Security Audit Report - Liquid eModesSep 12 2024 | GenericLogic | unmatched — not counted | — | listed in audited files table | no |
| Security Audit Report - Liquid eModesSep 12 2024 | LiquidationLogic | unmatched — not counted | — | listed in audited files table | no |
| Security Audit Report - Liquid eModesSep 12 2024 | ValidationLogic | unmatched — not counted | — | listed in audited files table | no |
| Security Audit Report - Liquid eModesSep 12 2024 | DataTypes | unmatched — not counted | — | listed in audited files table | no |
| Security Audit Report - Liquid eModesSep 12 2024 | PoolConfigurator | unmatched — not counted | — | listed in audited files table | no |
| Security Assessment & Formal Verification Report - Stable Rate RemovalSep 10 2024 | Pool | unmatched — not counted | — | listed in scope: 'Aave’s Pool' | no |
| GHO Stability Module Contract ReviewOct 23 2023 | Gsm | unmatched — not counted | — | listed in scope | no |
| GHO Stability Module Contract ReviewOct 23 2023 | Gsm4626 | unmatched — not counted | — | listed in scope | no |
| GHO Stability Module Contract ReviewOct 23 2023 | FixedFeeStrategy | unmatched — not counted | — | listed in scope | no |
| GHO Stability Module Contract ReviewOct 23 2023 | GsmRegistry | unmatched — not counted | — | listed in scope | no |
| GHO Stability Module Contract ReviewOct 23 2023 | SampleLiquidator | unmatched — not counted | — | listed in scope | no |
| GHO Stability Module Contract ReviewOct 23 2023 | SampleSwapFreezer | unmatched — not counted | — | listed in scope | no |
| GHO Stability Module Contract ReviewOct 23 2023 | FixedPriceStrategy | unmatched — not counted | — | listed in scope | no |
| GHO Stability Module Contract ReviewOct 23 2023 | FixedPriceStrategy4626 | unmatched — not counted | — | listed in scope | no |
| GHO Stability Module Contract ReviewOct 23 2023 | GsmToken | unmatched — not counted | — | listed in scope | no |
| GHO Smart Contract Security Assessment ReportJul 06 2023 | GhoToken | unmatched — not counted | — | Listed in scope and findings (GHO-03, GHO-06, GHO-10) | no |
| GHO Smart Contract Security Assessment ReportJul 06 2023 | GhoAToken | unmatched — not counted | — | Listed in scope and findings (GHO-01, GHO-02, GHO-04, GHO-10) | no |
| GHO Smart Contract Security Assessment ReportJul 06 2023 | GhoVariableDebtToken | unmatched — not counted | — | Listed in scope and findings (GHO-02, GHO-05, GHO-10) | no |
| GHO Smart Contract Security Assessment ReportJul 06 2023 | GhoFlashMinter | unmatched — not counted | — | Listed in scope and findings (GHO-07, GHO-08, GHO-09) | no |
| GHO Smart Contract Security Assessment ReportJul 06 2023 | GhoInterestRateStrategy | unmatched — not counted | — | Listed in scope and finding GHO-11 | no |
| GHO Smart Contract Security Assessment ReportJul 06 2023 | IGhoToken | unmatched — not counted | — | Mentioned in finding GHO-10 (typo in topic name) | no |
| GHO Steward Contract ReviewJun 13 2023 | GhoSteward | unmatched — not counted | — | The report states: 'This review was conducted on the smart contract GhoSteward.sol hosted on the gho-core repository' and 'The GHOSteward is a smart contract that is capable of adjusting the predefined GhoToken parameters for Aave V3.' | no |
| GHO Steward Security Assessment & Formal Verification ReportMar 14 2023 | GhoStewardV2 | unmatched — not counted | — | listed in scope | no |
| GHO Steward Security Assessment & Formal Verification ReportMar 14 2023 | IGhoStewardV2 | unmatched — not counted | — | listed in scope | no |
| GHO Smart Contract AuditMar 01 2023 | StakedAaveV2Rev4 | unmatched — not counted | — | listed in scope | no |
| GHO Smart Contract AuditMar 01 2023 | GhoAToken | unmatched — not counted | — | listed in scope | no |
| GHO Smart Contract AuditMar 01 2023 | GhoVariableDebtToken | unmatched — not counted | — | listed in scope | no |
| GHO Smart Contract AuditMar 01 2023 | IGhoDiscountRateStrategy | unmatched — not counted | — | listed in scope | no |
| GHO Smart Contract AuditMar 01 2023 | IGhoAToken | unmatched — not counted | — | listed in scope | no |
| GHO Smart Contract AuditMar 01 2023 | IGhoVariableDebtToken | unmatched — not counted | — | listed in scope | no |
| GHO Smart Contract AuditMar 01 2023 | IGhoFlashMinter | unmatched — not counted | — | listed in scope | no |
| GHO Smart Contract AuditMar 01 2023 | GhoFlashMinter | unmatched — not counted | — | listed in scope | no |
| GHO Smart Contract AuditMar 01 2023 | ERC20 | unmatched — not counted | — | listed in scope | no |
| GHO Smart Contract AuditMar 01 2023 | GhoToken | unmatched — not counted | — | listed in scope | no |
| GHO Smart Contract AuditMar 01 2023 | IERC20Burnable | unmatched — not counted | — | listed in scope | no |
| GHO Smart Contract AuditMar 01 2023 | IERC20Mintable | unmatched — not counted | — | listed in scope | no |
| GHO Smart Contract AuditMar 01 2023 | IGhoFacilitator | unmatched — not counted | — | listed in scope | no |
| GHO Smart Contract AuditMar 01 2023 | IGhoToken | unmatched — not counted | — | listed in scope | no |
| GHO Smart Contract AuditMar 01 2023 | GhoDiscountRateStrategy | unmatched — not counted | — | listed in scope | no |
| GHO Smart Contract AuditMar 01 2023 | GhoInterestRateStrategy | unmatched — not counted | — | listed in scope | no |
| GHO Smart Contract AuditMar 01 2023 | GhoOracle | unmatched — not counted | — | listed in scope | no |
| GHO Audit V2Nov 10 2022 | GhoDiscountRateStrategy | unmatched — not counted | — | listed in scope | no |
| GHO Audit V2Nov 10 2022 | GhoInterestRateStrategy | unmatched — not counted | — | listed in scope | no |
| GHO Audit V2Nov 10 2022 | ScaledBalanceTokenBase | unmatched — not counted | — | listed in scope | no |
| GHO Audit V2Nov 10 2022 | IGhoVariableDebtToken | unmatched — not counted | — | listed in scope | no |
| GHO Audit V2Nov 10 2022 | IGhoAToken | unmatched — not counted | — | listed in scope | no |
| GHO Audit V2Nov 10 2022 | GhoVariableDebtToken | unmatched — not counted | — | listed in scope | no |
| GHO Audit V2Nov 10 2022 | GhoAToken | unmatched — not counted | — | listed in scope | no |
| GHO Audit V2Nov 10 2022 | GhoOracle | unmatched — not counted | — | listed in scope | no |
| GHO AuditAug 12 2022 | GhoDiscountRateStrategy | unmatched — not counted | — | listed in scope | no |
| GHO AuditAug 12 2022 | GhoInterestRateStrategy | unmatched — not counted | — | listed in scope | no |
| GHO AuditAug 12 2022 | GhoOracle | unmatched — not counted | — | listed in scope | no |
| GHO AuditAug 12 2022 | StakedAaveV2Rev4 | unmatched — not counted | — | listed in scope | no |
| GHO AuditAug 12 2022 | IGhoVariableDebtToken | unmatched — not counted | — | listed in scope | no |
| GHO AuditAug 12 2022 | GhoAToken | unmatched — not counted | — | listed in scope | no |
| GHO AuditAug 12 2022 | GhoVariableDebtToken | unmatched — not counted | — | listed in scope | no |
| GHO AuditAug 12 2022 | GhoDebtTokenBase | unmatched — not counted | — | listed in scope | no |
| GHO AuditAug 12 2022 | GhoIncentivizedERC20 | unmatched — not counted | — | listed in scope | no |
| GHO AuditAug 12 2022 | IAaveIncentivesController | unmatched — not counted | — | listed in scope | no |
| GHO AuditAug 12 2022 | IGhoAToken | unmatched — not counted | — | listed in scope | no |
| GHO AuditAug 12 2022 | IGhoDiscountRateStrategy | unmatched — not counted | — | listed in scope | no |
| GHO AuditAug 12 2022 | IScaledBalanceToken | unmatched — not counted | — | listed in scope | no |
| GHO AuditAug 12 2022 | IVariableDebtToken | unmatched — not counted | — | listed in scope | no |
| GHO AuditAug 12 2022 | GhoToken | unmatched — not counted | — | listed in scope | no |
| GHO AuditAug 12 2022 | IBurnableERC20 | unmatched — not counted | — | listed in scope | no |
| GHO AuditAug 12 2022 | IGhoToken | unmatched — not counted | — | listed in scope | no |
| GHO AuditAug 12 2022 | IMintableERC20 | unmatched — not counted | — | listed in scope | no |
| Formal Verification of Aave V3 upgrade to V3.0.1Nov 17 2022 - Dec 15 2022 | StableDebtToken | unmatched — not counted | — | listed in scope | no |
| Formal Verification of Aave V3 upgrade to V3.0.1Nov 17 2022 - Dec 15 2022 | VariableDebtToken | unmatched — not counted | — | listed in scope | no |
| Formal Verification of Aave V3 upgrade to V3.0.1Nov 17 2022 - Dec 15 2022 | AToken | unmatched — not counted | — | listed in scope | no |
| Formal Verification of Aave V3 upgrade to V3.0.1Nov 17 2022 - Dec 15 2022 | ReserveConfiguration | unmatched — not counted | — | listed in scope | no |
| Formal Verification of Aave V3 upgrade to V3.0.1Nov 17 2022 - Dec 15 2022 | UserConfiguration | unmatched — not counted | — | listed in scope | no |
| Formal Verification of Aave V3 upgrade to V3.0.1Nov 17 2022 - Dec 15 2022 | Pool | unmatched — not counted | — | listed in scope | no |
| Formal Verification of Aave Protocol V3Nov 12 2021 - Jan 24 2022 | StableDebtToken | unmatched — not counted | — | listed in scope | no |
| Formal Verification of Aave Protocol V3Nov 12 2021 - Jan 24 2022 | VariableDebtToken | unmatched — not counted | — | listed in scope | no |
| Formal Verification of Aave Protocol V3Nov 12 2021 - Jan 24 2022 | AToken | unmatched — not counted | — | listed in scope | no |
| Formal Verification of Aave Protocol V3Nov 12 2021 - Jan 24 2022 | ReserveConfiguration | unmatched — not counted | — | listed in scope | no |
| Formal Verification of Aave Protocol V3Nov 12 2021 - Jan 24 2022 | UserConfiguration | unmatched — not counted | — | listed in scope | no |
| Formal Verification of Aave Protocol V3Nov 12 2021 - Jan 24 2022 | Pool | unmatched — not counted | — | listed in scope | no |
| Light Deployment Smart Contract Audit ReportMar 16 2021 | LendingPoolConfigurator | unmatched — not counted | — | Target in finding PVE-001 | no |
| Light Deployment Smart Contract Audit ReportMar 16 2021 | AToken | unmatched — not counted | — | Mentioned in finding PVE-002 as having new states | no |
| Light Deployment Smart Contract Audit ReportMar 16 2021 | IncentivizedERC20 | unmatched — not counted | — | Mentioned in finding PVE-002 as base contract | no |
| Smart Contract Security AssessmentJan 2021 | ValidationLogic | unmatched — not counted | — | mentioned in findings AAV-01, AAV-07 | no |
| Smart Contract Security AssessmentJan 2021 | LendingPool | unmatched — not counted | — | mentioned in findings AAV-02, AAV-05, AAV-10 | no |
| Smart Contract Security AssessmentJan 2021 | StableDebtToken | unmatched — not counted | — | mentioned in findings AAV-03, AAV-08 | no |
| Smart Contract Security AssessmentJan 2021 | VariableDebtToken | unmatched — not counted | — | mentioned in test suite | no |
| Smart Contract Security AssessmentJan 2021 | AToken | unmatched — not counted | — | mentioned in findings AAV-06 | no |
| Smart Contract Security AssessmentJan 2021 | DelegationAwareAToken | unmatched — not counted | — | mentioned in test suite | no |
| Smart Contract Security AssessmentJan 2021 | DefaultReserveInterestRateStrategy | unmatched — not counted | — | mentioned in findings AAV-06 | no |
| Smart Contract Security AssessmentJan 2021 | LendingPoolConfigurator | unmatched — not counted | — | mentioned in findings AAV-06, AAV-11 | no |
| Smart Contract Security AssessmentJan 2021 | LendingPoolAddressesProvider | unmatched — not counted | — | mentioned in findings AAV-06, AAV-10 | no |
| Smart Contract Security AssessmentJan 2021 | LendingPoolAddressesProviderRegistry | unmatched — not counted | — | mentioned in findings AAV-06, AAV-11 | no |
| Smart Contract Security AssessmentJan 2021 | LendingPoolCollateralManager | unmatched — not counted | — | mentioned in findings AAV-06, AAV-10 | no |
| Smart Contract Security AssessmentJan 2021 | AaveOracle | unmatched — not counted | — | mentioned in test suite | no |
| Smart Contract Security AssessmentJan 2021 | AaveProtocolDataProvider | unmatched — not counted | — | mentioned in test suite | no |
| Smart Contract Security AssessmentJan 2021 | WETHGateway | unmatched — not counted | — | mentioned in test suite | no |
| Smart Contract Security AssessmentJan 2021 | IncentivisedERC20 | unmatched — not counted | — | mentioned in findings AAV-05 | no |
| Smart Contract Security AssessmentJan 2021 | Ownable | unmatched — not counted | — | mentioned in findings AAV-09 | no |
| Smart Contract Security AssessmentJan 2021 | Errors | unmatched — not counted | — | mentioned in findings AAV-11 | no |
| Smart Contract Security AssessmentJan 2021 | ILendingPoolAddressesProvider | unmatched — not counted | — | mentioned in findings AAV-06 | no |
| Smart Contract Security AssessmentJan 2021 | ILendingPool | unmatched — not counted | — | mentioned in findings AAV-06 | no |
| Smart Contract Security AssessmentJan 2021 | ILendingPoolCollateralManager | unmatched — not counted | — | mentioned in findings AAV-06 | no |
| Smart Contract Security AssessmentJan 2021 | IReserveInterestRateStrategy | unmatched — not counted | — | mentioned in findings AAV-06 | no |
| Smart Contract Security AssessmentJan 2021 | IAToken | unmatched — not counted | — | mentioned in findings AAV-06 | no |
| Smart Contract Security AssessmentJan 2021 | IFlashLoanReceiver | unmatched — not counted | — | mentioned in findings AAV-11 | no |
| Smart Contract Security AssessmentJan 2021 | LendingRateOracle | unmatched — not counted | — | mentioned in findings AAV-03 | no |
| Smart Contract Security AssessmentJan 2021 | ReserveLogic | unmatched — not counted | — | mentioned in findings AAV-01 | no |
| Smart Contract Security AssessmentJan 2021 | DataTypes | unmatched — not counted | — | mentioned in findings AAV-01 | no |
| Smart Contract Audit ReportSep 2020 | LendingPoolAddressesProvider | unmatched — not counted | — | listed in scope table | no |
| Smart Contract Audit ReportSep 2020 | LendingPoolAddressesProviderRegistry | unmatched — not counted | — | listed in scope table | no |
| Smart Contract Audit ReportSep 2020 | FlashLoanReceiverBase | unmatched — not counted | — | listed in scope table | no |
| Smart Contract Audit ReportSep 2020 | DefaultReserveInterestRateStrategy | unmatched — not counted | — | listed in scope table | no |
| Smart Contract Audit ReportSep 2020 | LendingPool | unmatched — not counted | — | listed in scope table | no |
| Smart Contract Audit ReportSep 2020 | LendingPoolCollateralManager | unmatched — not counted | — | listed in scope table | no |
| Smart Contract Audit ReportSep 2020 | LendingPoolConfigurator | unmatched — not counted | — | listed in scope table | no |
| Smart Contract Audit ReportSep 2020 | LendingPoolStorage | unmatched — not counted | — | listed in scope table | no |
| Smart Contract Audit ReportSep 2020 | ReserveConfiguration | unmatched — not counted | — | listed in scope table | no |
| Smart Contract Audit ReportSep 2020 | UserConfiguration | unmatched — not counted | — | listed in scope table | no |
| Smart Contract Audit ReportSep 2020 | Errors | unmatched — not counted | — | listed in scope table | no |
| Smart Contract Audit ReportSep 2020 | Helpers | unmatched — not counted | — | listed in scope table | no |
| Smart Contract Audit ReportSep 2020 | GenericLogic | unmatched — not counted | — | listed in scope table | no |
| Smart Contract Audit ReportSep 2020 | ReserveLogic | unmatched — not counted | — | listed in scope table | no |
| Smart Contract Audit ReportSep 2020 | ValidationLogic | unmatched — not counted | — | listed in scope table | no |
| Smart Contract Audit ReportSep 2020 | MathUtils | unmatched — not counted | — | listed in scope table | no |
| Smart Contract Audit ReportSep 2020 | PercentageMath | unmatched — not counted | — | listed in scope table | no |
| Smart Contract Audit ReportSep 2020 | SafeMath | unmatched — not counted | — | listed in scope table | no |
| Smart Contract Audit ReportSep 2020 | WadRayMath | unmatched — not counted | — | listed in scope table | no |
| Smart Contract Audit ReportSep 2020 | AdminUpgradeabilityProxy | unmatched — not counted | — | listed in scope table | no |
| Smart Contract Audit ReportSep 2020 | BaseAdminUpgradeabilityProxy | unmatched — not counted | — | listed in scope table | no |
| Smart Contract Audit ReportSep 2020 | BaseUpgradeabilityProxy | unmatched — not counted | — | listed in scope table | no |
| Smart Contract Audit ReportSep 2020 | Initializable | unmatched — not counted | — | listed in scope table | no |
| Smart Contract Audit ReportSep 2020 | InitializableAdminUpgradeabilityProxy | unmatched — not counted | — | listed in scope table | no |
| Smart Contract Audit ReportSep 2020 | InitializableUpgradeabilityProxy | unmatched — not counted | — | listed in scope table | no |
| Smart Contract Audit ReportSep 2020 | Proxy | unmatched — not counted | — | listed in scope table | no |
| Smart Contract Audit ReportSep 2020 | UpgradeabilityProxy | unmatched — not counted | — | listed in scope table | no |
| Smart Contract Audit ReportSep 2020 | VersionedInitializable | unmatched — not counted | — | listed in scope table | no |
| Smart Contract Audit ReportSep 2020 | AaveProtocolTestHelpers | unmatched — not counted | — | listed in scope table | no |
| Smart Contract Audit ReportSep 2020 | Address | unmatched — not counted | — | listed in scope table | no |
| Smart Contract Audit ReportSep 2020 | ChainlinkProxyPriceProvider | unmatched — not counted | — | listed in scope table | no |
| Smart Contract Audit ReportSep 2020 | Context | unmatched — not counted | — | listed in scope table | no |
| Smart Contract Audit ReportSep 2020 | IERC20DetailedBytes | unmatched — not counted | — | listed in scope table | no |
| Smart Contract Audit ReportSep 2020 | SafeERC20 | unmatched — not counted | — | listed in scope table | no |
| Smart Contract Audit ReportSep 2020 | WalletBalanceProvider | unmatched — not counted | — | listed in scope table | no |
| Smart Contract Audit ReportSep 2020 | AToken | unmatched — not counted | — | listed in scope table | no |
| Smart Contract Audit ReportSep 2020 | IncentivizedERC20 | unmatched — not counted | — | listed in scope table | no |
| Smart Contract Audit ReportSep 2020 | StableDebtToken | unmatched — not counted | — | listed in scope table | no |
| Smart Contract Audit ReportSep 2020 | VariableDebtToken | unmatched — not counted | — | listed in scope table | no |
| Smart Contract Audit ReportSep 2020 | DebtTokenBase | unmatched — not counted | — | listed in scope table | no |
| Smart Contract Security AssessmentSep 2020 | LendingPoolAddressesProvider | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security AssessmentSep 2020 | LendingPoolAddressesProviderRegistry | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security AssessmentSep 2020 | FlashLoanReceiverBase | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security AssessmentSep 2020 | IFlashLoanReceiver | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security AssessmentSep 2020 | IAaveIncentivesController | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security AssessmentSep 2020 | IChainlinkAggregator | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security AssessmentSep 2020 | IExchangeAdapter | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security AssessmentSep 2020 | ILendingPool | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security AssessmentSep 2020 | ILendingPoolAddressesProvider | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security AssessmentSep 2020 | ILendingPoolAddressesProviderRegistry | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security AssessmentSep 2020 | ILendingRateOracle | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security AssessmentSep 2020 | IPriceOracle | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security AssessmentSep 2020 | IPriceOracleGetter | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security AssessmentSep 2020 | IReserveInterestRateStrategy | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security AssessmentSep 2020 | IUniswapExchange | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security AssessmentSep 2020 | DefaultReserveInterestRateStrategy | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security AssessmentSep 2020 | LendingPool | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security AssessmentSep 2020 | LendingPoolCollateralManager | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security AssessmentSep 2020 | LendingPoolConfigurator | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security AssessmentSep 2020 | LendingPoolStorage | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security AssessmentSep 2020 | BaseImmutableAdminUpgradeabilityProxy | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security AssessmentSep 2020 | InitializableImmutableAdminUpgradeabilityProxy | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security AssessmentSep 2020 | VersionedInitializable | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security AssessmentSep 2020 | ReserveConfiguration | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security AssessmentSep 2020 | UserConfiguration | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security AssessmentSep 2020 | Errors | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security AssessmentSep 2020 | Helpers | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security AssessmentSep 2020 | StringLib | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security AssessmentSep 2020 | GenericLogic | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security AssessmentSep 2020 | ReserveLogic | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security AssessmentSep 2020 | ValidationLogic | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security AssessmentSep 2020 | MathUtils | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security AssessmentSep 2020 | PercentageMath | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security AssessmentSep 2020 | WadRayMath | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security AssessmentSep 2020 | AToken | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security AssessmentSep 2020 | DebtTokenBase | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security AssessmentSep 2020 | DelegationAwareAToken | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security AssessmentSep 2020 | IncentivizedERC20 | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security AssessmentSep 2020 | IAToken | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security AssessmentSep 2020 | IScaledBalanceToken | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security AssessmentSep 2020 | IStableDebtToken | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security AssessmentSep 2020 | ITokenConfiguration | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security AssessmentSep 2020 | IVariableDebtToken | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security AssessmentSep 2020 | StableDebtToken | unmatched — not counted | — | listed in scope | no |
| Smart Contract Security AssessmentSep 2020 | VariableDebtToken | unmatched — not counted | — | listed in scope | no |
| Smart Contract Audit ReportSep 2020 | LendingPoolAddressesProviderRegistry | unmatched — not counted | — | Target in finding PVE-001 | no |
| Smart Contract Audit ReportSep 2020 | LendingPool | unmatched — not counted | — | Target in findings PVE-002, PVE-003, PVE-004, PVE-005, PVE-015 | no |
| Smart Contract Audit ReportSep 2020 | DefaultReserveInterestRateStrategy | unmatched — not counted | — | Target in finding PVE-006 | no |
| Smart Contract Audit ReportSep 2020 | ReserveConfiguration | unmatched — not counted | — | Target in finding PVE-007 | no |
| Smart Contract Audit ReportSep 2020 | AToken | unmatched — not counted | — | Target in findings PVE-008, PVE-010 | no |
| Smart Contract Audit ReportSep 2020 | ReserveLogic | unmatched — not counted | — | Target in findings PVE-009, PVE-018, PVE-020 | no |
| Smart Contract Audit ReportSep 2020 | LendingPoolCollateralManager | unmatched — not counted | — | Target in findings PVE-011, PVE-012, PVE-015 | no |
| Smart Contract Audit ReportSep 2020 | GenericLogic | unmatched — not counted | — | Target in findings PVE-014, PVE-019 | no |
| Smart Contract Audit ReportSep 2020 | ValidationLogic | unmatched — not counted | — | Target in findings PVE-016, PVE-019 | no |
| Smart Contract Audit ReportSep 2020 | LendingPoolConfigurator | unmatched — not counted | — | Target in finding PVE-017 | no |
| Smart Contract Audit ReportSep 2020 | WadRayMath | unmatched — not counted | — | Mentioned in finding PVE-010 as a library | no |
| Smart Contract Audit ReportSep 2020 | StableDebtToken | unmatched — not counted | — | Mentioned in findings PVE-013, PVE-020 | no |
| Smart Contract Audit ReportSep 2020 | VariableDebtToken | unmatched — not counted | — | Mentioned in findings PVE-018, PVE-020 | no |
| Smart Contract Audit ReportSep 2020 | LendingPoolAddressesProvider | unmatched — not counted | — | listed in scope | no |
| Smart Contract Audit ReportSep 2020 | LendingPoolAddressesProviderRegistry | unmatched — not counted | — | listed in scope | no |
| Smart Contract Audit ReportSep 2020 | IAaveIncentivesController | unmatched — not counted | — | listed in scope | no |
| Smart Contract Audit ReportSep 2020 | IChainlinkAggregator | unmatched — not counted | — | listed in scope | no |
| Smart Contract Audit ReportSep 2020 | IERC20 | unmatched — not counted | — | listed in scope | no |
| Smart Contract Audit ReportSep 2020 | IERC20Detailed | unmatched — not counted | — | listed in scope | no |
| Smart Contract Audit ReportSep 2020 | IExchangeAdapter | unmatched — not counted | — | listed in scope | no |
| Smart Contract Audit ReportSep 2020 | ILendingPool | unmatched — not counted | — | listed in scope | no |
| Smart Contract Audit ReportSep 2020 | ILendingPoolAddressesProvider | unmatched — not counted | — | listed in scope | no |
| Smart Contract Audit ReportSep 2020 | ILendingPoolAddressesProviderRegistry | unmatched — not counted | — | listed in scope | no |
| Smart Contract Audit ReportSep 2020 | ILendingRateOracle | unmatched — not counted | — | listed in scope | no |
| Smart Contract Audit ReportSep 2020 | IPriceOracle | unmatched — not counted | — | listed in scope | no |
| Smart Contract Audit ReportSep 2020 | IPriceOracleGetter | unmatched — not counted | — | listed in scope | no |
| Smart Contract Audit ReportSep 2020 | IReserveInterestRateStrategy | unmatched — not counted | — | listed in scope | no |
| Smart Contract Audit ReportSep 2020 | ISwapAdapter | unmatched — not counted | — | listed in scope | no |
| Smart Contract Audit ReportSep 2020 | IUniswapExchange | unmatched — not counted | — | listed in scope | no |
| Smart Contract Audit ReportSep 2020 | DefaultReserveInterestRateStrategy | unmatched — not counted | — | listed in scope | no |
| Smart Contract Audit ReportSep 2020 | LendingPool | unmatched — not counted | — | listed in scope | no |
| Smart Contract Audit ReportSep 2020 | LendingPoolCollateralManager | unmatched — not counted | — | listed in scope | no |
| Smart Contract Audit ReportSep 2020 | LendingPoolConfigurator | unmatched — not counted | — | listed in scope | no |
| Smart Contract Audit ReportSep 2020 | LendingPoolStorage | unmatched — not counted | — | listed in scope | no |
| Smart Contract Audit ReportSep 2020 | ReserveConfiguration | unmatched — not counted | — | listed in scope | no |
| Smart Contract Audit ReportSep 2020 | UserConfiguration | unmatched — not counted | — | listed in scope | no |
| Smart Contract Audit ReportSep 2020 | GenericLogic | unmatched — not counted | — | listed in scope | no |
| Smart Contract Audit ReportSep 2020 | ReserveLogic | unmatched — not counted | — | listed in scope | no |
| Smart Contract Audit ReportSep 2020 | ValidationLogic | unmatched — not counted | — | listed in scope | no |
| Smart Contract Audit ReportSep 2020 | Errors | unmatched — not counted | — | listed in scope | no |
| Smart Contract Audit ReportSep 2020 | Helpers | unmatched — not counted | — | listed in scope | no |
| Smart Contract Audit ReportSep 2020 | MathUtils | unmatched — not counted | — | listed in scope | no |
| Smart Contract Audit ReportSep 2020 | PercentageMath | unmatched — not counted | — | listed in scope | no |
| Smart Contract Audit ReportSep 2020 | Context | unmatched — not counted | — | listed in scope | no |
| Smart Contract Audit ReportSep 2020 | IERC20DetailedBytes | unmatched — not counted | — | listed in scope | no |
| Smart Contract Audit ReportSep 2020 | AToken | unmatched — not counted | — | listed in scope | no |
| Smart Contract Audit ReportSep 2020 | IncentivizedERC20 | unmatched — not counted | — | listed in scope | no |
| Smart Contract Audit ReportSep 2020 | StableDebtToken | unmatched — not counted | — | listed in scope | no |
| Smart Contract Audit ReportSep 2020 | VariableDebtToken | unmatched — not counted | — | listed in scope | no |
| Smart Contract Audit ReportSep 2020 | DebtTokenBase | unmatched — not counted | — | listed in scope | no |
| Smart Contract Audit ReportSep 2020 | IAToken | unmatched — not counted | — | listed in scope | no |
| Smart Contract Audit ReportSep 2020 | IScaledBalanceToken | unmatched — not counted | — | listed in scope | no |
| Smart Contract Audit ReportSep 2020 | IStableDebtToken | unmatched — not counted | — | listed in scope | no |
| Smart Contract Audit ReportSep 2020 | IVariableDebtToken | unmatched — not counted | — | listed in scope | no |
| Smart Contract Audit ReportSep 2020 | VersionedInitializable | unmatched — not counted | — | listed in scope | no |
| Smart Contract Audit ReportSep 2020 | DelegationAwareAToken | unmatched — not counted | — | listed in scope | no |
| 2026-02-24_Aave-V4_Blackthorn.pdf | AccessManagerEnumerable | unmatched — not counted | — | listed in scope | no |
| 2026-02-24_Aave-V4_Blackthorn.pdf | IAccessManagerEnumerable | unmatched — not counted | — | listed in scope | no |
| 2026-02-24_Aave-V4_Blackthorn.pdf | AssetInterestRateStrategy | unmatched — not counted | — | listed in scope | no |
| 2026-02-24_Aave-V4_Blackthorn.pdf | HubConfigurator | unmatched — not counted | — | listed in scope | no |
| 2026-02-24_Aave-V4_Blackthorn.pdf | Hub | unmatched — not counted | — | listed in scope | no |
| 2026-02-24_Aave-V4_Blackthorn.pdf | IAssetInterestRateStrategy | unmatched — not counted | — | listed in scope | no |
| 2026-02-24_Aave-V4_Blackthorn.pdf | IBasicInterestRateStrategy | unmatched — not counted | — | listed in scope | no |
| 2026-02-24_Aave-V4_Blackthorn.pdf | IHubBase | unmatched — not counted | — | listed in scope | no |
| 2026-02-24_Aave-V4_Blackthorn.pdf | IHubConfigurator | unmatched — not counted | — | listed in scope | no |
| 2026-02-24_Aave-V4_Blackthorn.pdf | IHub | unmatched — not counted | — | listed in scope | no |
| 2026-02-24_Aave-V4_Blackthorn.pdf | AssetLogic | unmatched — not counted | — | listed in scope | no |
| 2026-02-24_Aave-V4_Blackthorn.pdf | Premium | unmatched — not counted | — | listed in scope | no |
| 2026-02-24_Aave-V4_Blackthorn.pdf | SharesMath | unmatched — not counted | — | listed in scope | no |
| 2026-02-24_Aave-V4_Blackthorn.pdf | IExtSload | unmatched — not counted | — | listed in scope | no |
| 2026-02-24_Aave-V4_Blackthorn.pdf | IIntentConsumer | unmatched — not counted | — | listed in scope | no |
| 2026-02-24_Aave-V4_Blackthorn.pdf | IMulticall | unmatched — not counted | — | listed in scope | no |
| 2026-02-24_Aave-V4_Blackthorn.pdf | INoncesKeyed | unmatched — not counted | — | listed in scope | no |
| 2026-02-24_Aave-V4_Blackthorn.pdf | IRescuable | unmatched — not counted | — | listed in scope | no |
| 2026-02-24_Aave-V4_Blackthorn.pdf | MathUtils | unmatched — not counted | — | listed in scope | no |
| 2026-02-24_Aave-V4_Blackthorn.pdf | PercentageMath | unmatched — not counted | — | listed in scope | no |
| 2026-02-24_Aave-V4_Blackthorn.pdf | WadRayMath | unmatched — not counted | — | listed in scope | no |
| 2026-02-24_Aave-V4_Blackthorn.pdf | Roles | unmatched — not counted | — | listed in scope | no |
| 2026-02-24_Aave-V4_Blackthorn.pdf | UnitPriceFeed | unmatched — not counted | — | listed in scope | no |
| 2026-02-24_Aave-V4_Blackthorn.pdf | GatewayBase | unmatched — not counted | — | listed in scope | no |
| 2026-02-24_Aave-V4_Blackthorn.pdf | IGatewayBase | unmatched — not counted | — | listed in scope | no |
| 2026-02-24_Aave-V4_Blackthorn.pdf | INativeTokenGateway | unmatched — not counted | — | listed in scope | no |
| 2026-02-24_Aave-V4_Blackthorn.pdf | INativeWrapper | unmatched — not counted | — | listed in scope | no |
| 2026-02-24_Aave-V4_Blackthorn.pdf | ISignatureGateway | unmatched — not counted | — | listed in scope | no |
| 2026-02-24_Aave-V4_Blackthorn.pdf | EIP712Hash | unmatched — not counted | — | listed in scope | no |
| 2026-02-24_Aave-V4_Blackthorn.pdf | NativeTokenGateway | unmatched — not counted | — | listed in scope | no |
| 2026-02-24_Aave-V4_Blackthorn.pdf | SignatureGateway | unmatched — not counted | — | listed in scope | no |
| 2026-02-24_Aave-V4_Blackthorn.pdf | AaveOracle | unmatched — not counted | — | listed in scope | no |
| 2026-02-24_Aave-V4_Blackthorn.pdf | SpokeInstance | unmatched — not counted | — | listed in scope | no |
| 2026-02-24_Aave-V4_Blackthorn.pdf | TokenizationSpokeInstance | unmatched — not counted | — | listed in scope | no |
| 2026-02-24_Aave-V4_Blackthorn.pdf | IAaveOracle | unmatched — not counted | — | listed in scope | no |
| 2026-02-24_Aave-V4_Blackthorn.pdf | IPriceOracle | unmatched — not counted | — | listed in scope | no |
| 2026-02-24_Aave-V4_Blackthorn.pdf | ISpokeBase | unmatched — not counted | — | listed in scope | no |
| 2026-02-24_Aave-V4_Blackthorn.pdf | ISpokeConfigurator | unmatched — not counted | — | listed in scope | no |
| 2026-02-24_Aave-V4_Blackthorn.pdf | ISpoke | unmatched — not counted | — | listed in scope | no |
| 2026-02-24_Aave-V4_Blackthorn.pdf | ITokenizationSpoke | unmatched — not counted | — | listed in scope | no |
| 2026-02-24_Aave-V4_Blackthorn.pdf | ITreasurySpoke | unmatched — not counted | — | listed in scope | no |
| 2026-02-24_Aave-V4_Blackthorn.pdf | KeyValueList | unmatched — not counted | — | listed in scope | no |
| 2026-02-24_Aave-V4_Blackthorn.pdf | LiquidationLogic | unmatched — not counted | — | listed in scope | no |
| 2026-02-24_Aave-V4_Blackthorn.pdf | PositionStatusMap | unmatched — not counted | — | listed in scope | no |
| 2026-02-24_Aave-V4_Blackthorn.pdf | ReserveFlagsMap | unmatched — not counted | — | listed in scope | no |
| 2026-02-24_Aave-V4_Blackthorn.pdf | SpokeUtils | unmatched — not counted | — | listed in scope | no |
| 2026-02-24_Aave-V4_Blackthorn.pdf | UserPositionDebt | unmatched — not counted | — | listed in scope | no |
| 2026-02-24_Aave-V4_Blackthorn.pdf | UserPositionUtils | unmatched — not counted | — | listed in scope | no |
| 2026-02-24_Aave-V4_Blackthorn.pdf | SpokeConfigurator | unmatched — not counted | — | listed in scope | no |
| 2026-02-24_Aave-V4_Blackthorn.pdf | Spoke | unmatched — not counted | — | listed in scope | no |
| 2026-02-24_Aave-V4_Blackthorn.pdf | SpokeStorage | unmatched — not counted | — | listed in scope | no |
| 2026-02-24_Aave-V4_Blackthorn.pdf | TokenizationSpoke | unmatched — not counted | — | listed in scope | no |
| 2026-02-24_Aave-V4_Blackthorn.pdf | TreasurySpoke | unmatched — not counted | — | listed in scope | no |
| 2026-02-24_Aave-V4_Blackthorn.pdf | Multicall | unmatched — not counted | — | listed in scope | no |
| 2026-02-24_Aave-V4_Blackthorn.pdf | NoncesKeyed | unmatched — not counted | — | listed in scope | no |
| 2026-02-24_Aave-V4_Blackthorn.pdf | Rescuable | unmatched — not counted | — | listed in scope | no |
| 2021-11-01_OpenZeppelin_AaveV3.pdf | Pool | unmatched — not counted | — | listed as upgradeable contract in scope | no |
| 2021-11-01_OpenZeppelin_AaveV3.pdf | PoolConfigurator | unmatched — not counted | — | listed as upgradeable contract in scope | no |
| 2021-11-01_OpenZeppelin_AaveV3.pdf | AToken | unmatched — not counted | — | listed as upgradeable contract in scope | no |
| 2021-11-01_OpenZeppelin_AaveV3.pdf | StableDebtToken | unmatched — not counted | — | listed as upgradeable contract in scope | no |
| 2021-11-01_OpenZeppelin_AaveV3.pdf | VariableDebtToken | unmatched — not counted | — | listed as upgradeable contract in scope | no |
| 2021-11-01_OpenZeppelin_AaveV3.pdf | PoolAddressesProvider | unmatched — not counted | — | mentioned in findings and scope | no |
| 2021-11-01_OpenZeppelin_AaveV3.pdf | PoolAddressesProviderRegistry | unmatched — not counted | — | mentioned in findings | no |
| 2021-11-01_OpenZeppelin_AaveV3.pdf | ACLManager | unmatched — not counted | — | mentioned in findings | no |
| 2021-11-01_OpenZeppelin_AaveV3.pdf | PriceOracleSentinel | unmatched — not counted | — | mentioned in findings | no |
| 2021-11-01_OpenZeppelin_AaveV3.pdf | BaseImmutableAdminUpgradeabilityProxy | unmatched — not counted | — | mentioned in findings | no |
| 2021-11-01_OpenZeppelin_AaveV3.pdf | InitializableUpgradeabilityProxy | unmatched — not counted | — | mentioned in findings | no |
| 2021-11-01_OpenZeppelin_AaveV3.pdf | FlashLoanLogic | unmatched — not counted | — | mentioned in findings | no |
| 2021-11-01_OpenZeppelin_AaveV3.pdf | BridgeLogic | unmatched — not counted | — | mentioned in findings | no |
| 2021-11-01_OpenZeppelin_AaveV3.pdf | ReserveLogic | unmatched — not counted | — | mentioned in findings | no |
| 2021-11-01_OpenZeppelin_AaveV3.pdf | ValidationLogic | unmatched — not counted | — | mentioned in findings | no |
| 2021-11-01_OpenZeppelin_AaveV3.pdf | GenericLogic | unmatched — not counted | — | mentioned in findings | no |
| 2021-11-01_OpenZeppelin_AaveV3.pdf | SupplyLogic | unmatched — not counted | — | mentioned in findings | no |
| 2021-11-01_OpenZeppelin_AaveV3.pdf | BorrowLogic | unmatched — not counted | — | mentioned in findings | no |
| 2021-11-01_OpenZeppelin_AaveV3.pdf | LiquidationLogic | unmatched — not counted | — | mentioned in findings | no |
| 2021-11-01_OpenZeppelin_AaveV3.pdf | MathUtils | unmatched — not counted | — | mentioned in findings | no |
| 2021-11-01_OpenZeppelin_AaveV3.pdf | UserConfiguration | unmatched — not counted | — | mentioned in findings | no |
| 2021-11-01_OpenZeppelin_AaveV3.pdf | ReserveConfiguration | unmatched — not counted | — | mentioned in findings | no |
| 2021-11-01_OpenZeppelin_AaveV3.pdf | ReserveConfigurationMap | unmatched — not counted | — | mentioned in findings | no |
| 2021-11-01_OpenZeppelin_AaveV3.pdf | DataTypes | unmatched — not counted | — | mentioned in findings | no |
| 2021-11-01_OpenZeppelin_AaveV3.pdf | Errors | unmatched — not counted | — | mentioned in findings | no |
| 2021-11-01_OpenZeppelin_AaveV3.pdf | IPoolAddressesProvider | unmatched — not counted | — | mentioned in findings | no |
| 2021-11-01_OpenZeppelin_AaveV3.pdf | IStableDebtToken | unmatched — not counted | — | mentioned in findings | no |
| 2021-11-01_OpenZeppelin_AaveV3.pdf | IVariableDebtToken | unmatched — not counted | — | mentioned in findings | no |
| 2021-11-01_OpenZeppelin_AaveV3.pdf | IFlashloanReceiver | unmatched — not counted | — | mentioned in findings | no |
| 2021-11-01_OpenZeppelin_AaveV3.pdf | IScaledBalanceToken | unmatched — not counted | — | mentioned in findings | no |
| 2021-11-01_OpenZeppelin_AaveV3.pdf | IncentivizedERC20 | unmatched — not counted | — | mentioned in findings | no |
| 2021-11-01_OpenZeppelin_AaveV3.pdf | PoolStorage | unmatched — not counted | — | mentioned in findings | no |
| 2022-01-07_TrailOfBits_AaveV3.pdf | Pool | unmatched — not counted | — | listed in scope | no |
| 2022-01-07_TrailOfBits_AaveV3.pdf | PoolConfigurator | unmatched — not counted | — | listed in scope | no |
| 2022-01-07_TrailOfBits_AaveV3.pdf | PoolAddressesProviderRegistry | unmatched — not counted | — | listed in scope | no |
| 2022-01-07_TrailOfBits_AaveV3.pdf | PoolAddressesProvider | unmatched — not counted | — | listed in scope | no |
| 2022-01-07_TrailOfBits_AaveV3.pdf | ACLManager | unmatched — not counted | — | listed in scope | no |
| 2022-01-07_TrailOfBits_AaveV3.pdf | DefaultReserveInterestRateStrategy | unmatched — not counted | — | listed in scope | no |
| 2022-01-07_TrailOfBits_AaveV3.pdf | ReserveConfiguration | unmatched — not counted | — | listed in scope | no |
| 2022-01-07_TrailOfBits_AaveV3.pdf | UserConfiguration | unmatched — not counted | — | listed in scope | no |
| 2022-01-07_TrailOfBits_AaveV3.pdf | BorrowLogic | unmatched — not counted | — | listed in scope | no |
| 2022-01-07_TrailOfBits_AaveV3.pdf | BridgeLogic | unmatched — not counted | — | listed in scope | no |
| 2022-01-07_TrailOfBits_AaveV3.pdf | ConfiguratorLogic | unmatched — not counted | — | listed in scope | no |
| 2022-01-07_TrailOfBits_AaveV3.pdf | EModeLogic | unmatched — not counted | — | listed in scope | no |
| 2022-01-07_TrailOfBits_AaveV3.pdf | FlashLoanLogic | unmatched — not counted | — | listed in scope | no |
| 2022-01-07_TrailOfBits_AaveV3.pdf | GenericLogic | unmatched — not counted | — | listed in scope | no |
| 2022-01-07_TrailOfBits_AaveV3.pdf | LiquidationLogic | unmatched — not counted | — | listed in scope | no |
| 2022-01-07_TrailOfBits_AaveV3.pdf | ReserveLogic | unmatched — not counted | — | listed in scope | no |
| 2022-01-07_TrailOfBits_AaveV3.pdf | SupplyLogic | unmatched — not counted | — | listed in scope | no |
| 2022-01-07_TrailOfBits_AaveV3.pdf | ValidationLogic | unmatched — not counted | — | listed in scope | no |
| 2022-01-07_TrailOfBits_AaveV3.pdf | AaveOracle | unmatched — not counted | — | listed in scope | no |
| 2022-01-07_TrailOfBits_AaveV3.pdf | AToken | unmatched — not counted | — | listed in scope | no |
| 2022-01-07_TrailOfBits_AaveV3.pdf | VariableDebtToken | unmatched — not counted | — | listed in scope | no |
| 2022-01-07_TrailOfBits_AaveV3.pdf | StableDebtToken | unmatched — not counted | — | listed in scope | no |
| 2022-01-07_TrailOfBits_AaveV3.pdf | DebtTokenBase | unmatched — not counted | — | listed in scope | no |
| 2022-01-07_TrailOfBits_AaveV3.pdf | IncentivizedERC20 | unmatched — not counted | — | listed in scope | no |
| 2022-01-07_TrailOfBits_AaveV3.pdf | Proxy | unmatched — not counted | — | listed in scope | no |
| 2022-01-14_PeckShield_AaveV3.pdf | PriceOracleSentinel | unmatched — not counted | — | Mentioned in finding PVE-001 as target contract with state variables _addressesProvider, _oracle, _gracePeriod | no |
| 2022-01-14_PeckShield_AaveV3.pdf | AaveOracle | unmatched — not counted | — | Mentioned in finding PVE-001 as target contract with _addressesProvider state | no |
| 2022-01-14_PeckShield_AaveV3.pdf | ACLManager | unmatched — not counted | — | Mentioned in finding PVE-001 as target contract with _addressesProvider state | no |
| 2022-01-14_PeckShield_AaveV3.pdf | Pool | unmatched — not counted | — | Target of findings PVE-002 and PVE-007; includes functions _addReserveToList() and borrow() | no |
| 2022-01-14_PeckShield_AaveV3.pdf | SupplyLogic | unmatched — not counted | — | Target of finding PVE-003; includes executeSupply() function | no |
| 2022-01-14_PeckShield_AaveV3.pdf | BridgeLogic | unmatched — not counted | — | Target of finding PVE-003; includes mintUnbacked() function | no |
| 2022-01-14_PeckShield_AaveV3.pdf | LiquidationLogic | unmatched — not counted | — | Mentioned in finding PVE-003 as one of the libraries with collateral-enabling logic | no |
| 2022-01-14_PeckShield_AaveV3.pdf | UserConfiguration | unmatched — not counted | — | Target of findings PVE-004 and PVE-008; includes _getFirstAssetAsCollateralId() and isUsingAsCollateralOne() | no |
| 2022-01-14_PeckShield_AaveV3.pdf | ReserveLogic | unmatched — not counted | — | Target of finding PVE-005; includes AccrueToTreasuryLocalVars and UpdateInterestRatesLocalVars structures | no |
| 2022-01-14_PeckShield_AaveV3.pdf | GenericLogic | unmatched — not counted | — | Target of finding PVE-006; includes calculateUserAccountData() function | no |
| 2022-01-14_PeckShield_AaveV3.pdf | BorrowLogic | unmatched — not counted | — | Target of findings PVE-008 and PVE-009; includes rebalanceStableBorrowRate() function | no |
| 2022-01-14_PeckShield_AaveV3.pdf | EModeLogic | unmatched — not counted | — | Target of finding PVE-010; includes executeSetUserEMode() function | no |
| 2022-01-14_PeckShield_AaveV3.pdf | FlashLoanLogic | unmatched — not counted | — | Target of finding PVE-011; includes flashLoanSimple() function | no |
| 2022-01-27_ABDK_AaveV3.pdf | IFlashLoanReceiver | unmatched — not counted | — | listed in scope | no |
| 2022-01-27_ABDK_AaveV3.pdf | IFlashLoanSimpleReceiver | unmatched — not counted | — | listed in scope | no |
| 2022-01-27_ABDK_AaveV3.pdf | IAaveIncentivesController | unmatched — not counted | — | listed in scope | no |
| 2022-01-27_ABDK_AaveV3.pdf | IACLManager | unmatched — not counted | — | listed in scope | no |
| 2022-01-27_ABDK_AaveV3.pdf | IAToken | unmatched — not counted | — | listed in scope | no |
| 2022-01-27_ABDK_AaveV3.pdf | IChainlinkAggregator | unmatched — not counted | — | listed in scope | no |
| 2022-01-27_ABDK_AaveV3.pdf | ICreditDelegationToken | unmatched — not counted | — | listed in scope | no |
| 2022-01-27_ABDK_AaveV3.pdf | IDelegationToken | unmatched — not counted | — | listed in scope | no |
| 2022-01-27_ABDK_AaveV3.pdf | IERC20WithPermit | unmatched — not counted | — | listed in scope | no |
| 2022-01-27_ABDK_AaveV3.pdf | IInitializableAToken | unmatched — not counted | — | listed in scope | no |
| 2022-01-27_ABDK_AaveV3.pdf | IInitializableDebtToken | unmatched — not counted | — | listed in scope | no |
| 2022-01-27_ABDK_AaveV3.pdf | IPool | unmatched — not counted | — | listed in scope | no |
| 2022-01-27_ABDK_AaveV3.pdf | IPoolAddressesProvider | unmatched — not counted | — | listed in scope | no |
| 2022-01-27_ABDK_AaveV3.pdf | IPoolAddressesProviderRegistry | unmatched — not counted | — | listed in scope | no |
| 2022-01-27_ABDK_AaveV3.pdf | IPoolConfigurator | unmatched — not counted | — | listed in scope | no |
| 2022-01-27_ABDK_AaveV3.pdf | IPoolDataProvider | unmatched — not counted | — | listed in scope | no |
| 2022-01-27_ABDK_AaveV3.pdf | IPriceOracle | unmatched — not counted | — | listed in scope | no |
| 2022-01-27_ABDK_AaveV3.pdf | IPriceOracleGetter | unmatched — not counted | — | listed in scope | no |
| 2022-01-27_ABDK_AaveV3.pdf | IPriceOracleSentinel | unmatched — not counted | — | listed in scope | no |
| 2022-01-27_ABDK_AaveV3.pdf | IReserveInterestRateStrategy | unmatched — not counted | — | listed in scope | no |
| 2022-01-27_ABDK_AaveV3.pdf | IScaledBalanceToken | unmatched — not counted | — | listed in scope | no |
| 2022-01-27_ABDK_AaveV3.pdf | ISequencerOracle | unmatched — not counted | — | listed in scope | no |
| 2022-01-27_ABDK_AaveV3.pdf | IStableDebtToken | unmatched — not counted | — | listed in scope | no |
| 2022-01-27_ABDK_AaveV3.pdf | IVariableDebtToken | unmatched — not counted | — | listed in scope | no |
| 2022-01-27_ABDK_AaveV3.pdf | ACLManager | unmatched — not counted | — | listed in scope | no |
| 2022-01-27_ABDK_AaveV3.pdf | PoolAddressesProvider | unmatched — not counted | — | listed in scope | no |
| 2022-01-27_ABDK_AaveV3.pdf | PoolAddressesProviderRegistry | unmatched — not counted | — | listed in scope | no |
| 2022-01-27_ABDK_AaveV3.pdf | PriceOracleSentinel | unmatched — not counted | — | listed in scope | no |
| 2022-01-27_ABDK_AaveV3.pdf | BaseImmutableAdminUpgradeabilityProxy | unmatched — not counted | — | listed in scope | no |
| 2022-01-27_ABDK_AaveV3.pdf | InitializableImmutableAdminUpgradeabilityProxy | unmatched — not counted | — | listed in scope | no |
| 2022-01-27_ABDK_AaveV3.pdf | VersionedInitializable | unmatched — not counted | — | listed in scope | no |
| 2022-01-27_ABDK_AaveV3.pdf | ReserveConfiguration | unmatched — not counted | — | listed in scope | no |
| 2022-01-27_ABDK_AaveV3.pdf | UserConfiguration | unmatched — not counted | — | listed in scope | no |
| 2022-01-27_ABDK_AaveV3.pdf | Errors | unmatched — not counted | — | listed in scope | no |
| 2022-01-27_ABDK_AaveV3.pdf | Helpers | unmatched — not counted | — | listed in scope | no |
| 2022-01-27_ABDK_AaveV3.pdf | BorrowLogic | unmatched — not counted | — | listed in scope | no |
| 2022-01-27_ABDK_AaveV3.pdf | BridgeLogic | unmatched — not counted | — | listed in scope | no |
| 2022-01-27_ABDK_AaveV3.pdf | ConfiguratorLogic | unmatched — not counted | — | listed in scope | no |
| 2022-01-27_ABDK_AaveV3.pdf | EModeLogic | unmatched — not counted | — | listed in scope | no |
| 2022-01-27_ABDK_AaveV3.pdf | FlashLoanLogic | unmatched — not counted | — | listed in scope | no |
| 2022-01-27_ABDK_AaveV3.pdf | GenericLogic | unmatched — not counted | — | listed in scope | no |
| 2022-01-27_ABDK_AaveV3.pdf | LiquidationLogic | unmatched — not counted | — | listed in scope | no |
| 2022-01-27_ABDK_AaveV3.pdf | ReserveLogic | unmatched — not counted | — | listed in scope | no |
| 2022-01-27_ABDK_AaveV3.pdf | SupplyLogic | unmatched — not counted | — | listed in scope | no |
| 2022-01-27_ABDK_AaveV3.pdf | ValidationLogic | unmatched — not counted | — | listed in scope | no |
| 2022-01-27_ABDK_AaveV3.pdf | MathUtils | unmatched — not counted | — | listed in scope | no |
| 2022-01-27_ABDK_AaveV3.pdf | PercentageMath | unmatched — not counted | — | listed in scope | no |
| 2022-01-27_ABDK_AaveV3.pdf | WadRayMath | unmatched — not counted | — | listed in scope | no |
| 2022-01-27_ABDK_AaveV3.pdf | ConfiguratorInputTypes | unmatched — not counted | — | listed in scope | no |
| 2022-01-27_ABDK_AaveV3.pdf | DataTypes | unmatched — not counted | — | listed in scope | no |
| 2022-01-27_ABDK_AaveV3.pdf | DefaultReserveInterestRateStrategy | unmatched — not counted | — | listed in scope | no |
| 2022-01-27_ABDK_AaveV3.pdf | Pool | unmatched — not counted | — | listed in scope | no |
| 2022-01-27_ABDK_AaveV3.pdf | PoolConfigurator | unmatched — not counted | — | listed in scope | no |
| 2022-01-27_ABDK_AaveV3.pdf | PoolStorage | unmatched — not counted | — | listed in scope | no |
| 2022-01-27_ABDK_AaveV3.pdf | DebtTokenBase | unmatched — not counted | — | listed in scope | no |
| 2022-01-27_ABDK_AaveV3.pdf | AToken | unmatched — not counted | — | listed in scope | no |
| 2022-01-27_ABDK_AaveV3.pdf | DelegationAwareAToken | unmatched — not counted | — | listed in scope | no |
| 2022-01-27_ABDK_AaveV3.pdf | IncentivizedERC20 | unmatched — not counted | — | listed in scope | no |
| 2022-01-27_ABDK_AaveV3.pdf | StableDebtToken | unmatched — not counted | — | listed in scope | no |
| 2022-01-27_ABDK_AaveV3.pdf | VariableDebtToken | unmatched — not counted | — | listed in scope | no |
| 2022-01-27_SigmaPrime_AaveV3.pdf | PoolConfigurator | unmatched — not counted | — | mentioned in finding AAV3-01 | no |
| 2022-01-27_SigmaPrime_AaveV3.pdf | Pool | unmatched — not counted | — | mentioned in finding AAV3-04 | no |
| 2022-01-27_SigmaPrime_AaveV3.pdf | AToken | unmatched — not counted | — | mentioned in finding AAV3-04 | no |
| 2022-01-27_SigmaPrime_AaveV3.pdf | StableDebtToken | unmatched — not counted | — | mentioned in finding AAV3-04 | no |
| 2022-01-27_SigmaPrime_AaveV3.pdf | VariableDebtToken | unmatched — not counted | — | mentioned in finding AAV3-04 | no |
| 2022-01-27_SigmaPrime_AaveV3.pdf | ValidationLogic | unmatched — not counted | — | mentioned in finding AAV3-07 | no |
| 2022-01-27_SigmaPrime_AaveV3.pdf | DataTypes | unmatched — not counted | — | mentioned in finding AAV3-07 | no |
| 2022-01-27_SigmaPrime_AaveV3.pdf | FlashLoanLogic | unmatched — not counted | — | mentioned in finding AAV3-07 | no |
| 2022-01-27_SigmaPrime_AaveV3.pdf | ConfiguratorInputTypes | unmatched — not counted | — | mentioned in finding AAV3-07 | no |
| 2022-01-27_SigmaPrime_AaveV3.pdf | Errors | unmatched — not counted | — | mentioned in finding AAV3-07 | no |
| 2022-01-27_SigmaPrime_AaveV3.pdf | ConfiguratorLogic | unmatched — not counted | — | mentioned in finding AAV3-08 | no |
| 2022-01-27_SigmaPrime_AaveV3.pdf | DefaultReserveInterestRateStrategy | unmatched — not counted | — | mentioned in finding AAV3-06 | no |
| 2022-01-27_SigmaPrime_AaveV3.pdf | WadRayMath | unmatched — not counted | — | mentioned in finding AAV3-02 | no |
| 2022-01-27_SigmaPrime_AaveV3.pdf | PercentageMath | unmatched — not counted | — | mentioned in finding AAV3-02 | no |
| 2022-01-27_SigmaPrime_AaveV3.pdf | BridgeLogic | unmatched — not counted | — | mentioned in finding AAV3-05 | no |
| 2022-01-27_SigmaPrime_AaveV3.pdf | BorrowLogic | unmatched — not counted | — | mentioned in finding AAV3-11 | no |
| 2022-01-27_SigmaPrime_AaveV3.pdf | LiquidationLogic | unmatched — not counted | — | mentioned in finding AAV3-03 | no |
| 2022-01-27_SigmaPrime_AaveV3.pdf | Helpers | unmatched — not counted | — | mentioned in finding AAV3-11 | no |
| 2022-12-09_PeckShield_AaveV3-0-1.pdf | LiquidationLogic | unmatched — not counted | — | Target in finding PVE-001 | no |
| 2022-12-09_PeckShield_AaveV3-0-1.pdf | ScaledBalanceTokenBase | unmatched — not counted | — | Target in finding PVE-002 | no |
| 2022-12-23_SigmaPrime_AaveV3-0-1.pdf | ScaledBalanceTokenBase | unmatched — not counted | — | mentioned in finding AV301-01 | no |
| 2022-12-23_SigmaPrime_AaveV3-0-1.pdf | ReserveCache | unmatched — not counted | — | mentioned in finding AV301-02 | no |
| 2022-12-23_SigmaPrime_AaveV3-0-1.pdf | ValidationLogic | unmatched — not counted | — | mentioned in finding AV301-02 | no |
| 2022-12-23_SigmaPrime_AaveV3-0-1.pdf | DataTypes | unmatched — not counted | — | mentioned in finding AV301-02 | no |
| 2022-12-23_SigmaPrime_AaveV3-0-1.pdf | Pool | unmatched — not counted | — | mentioned in finding AV301-02 | no |
| 2022-12-23_SigmaPrime_AaveV3-0-1.pdf | IPool | unmatched — not counted | — | mentioned in finding AV301-02 | no |
| 2022-12-23_SigmaPrime_AaveV3-0-1.pdf | IPoolConfigurator | unmatched — not counted | — | mentioned in finding AV301-02 | no |
| 2022-12-23_SigmaPrime_AaveV3-0-1.pdf | PoolConfigurator | unmatched — not counted | — | mentioned in finding AV301-02 | no |
| 2023-03_Certora_AaveV3-0-2.pdf | Pool | unmatched — not counted | — | listed in scope | no |
| 2023-03_Certora_AaveV3-0-2.pdf | BridgeLogic | unmatched — not counted | — | listed in scope | no |
| 2023-03_Certora_AaveV3-0-2.pdf | LiquidationLogic | unmatched — not counted | — | listed in scope | no |
| 2023-03_Certora_AaveV3-0-2.pdf | SupplyLogic | unmatched — not counted | — | listed in scope | no |
| 2023-03_Certora_AaveV3-0-2.pdf | ValidationLogic | unmatched — not counted | — | listed in scope | no |
| 2024-04-30_Certora_AaveV3.1.pdf | DefaultReserveInterestRateStrategyV2 | unmatched — not counted | — | mentioned in audit goals and coverage section | no |
| 2024-04-30_Certora_AaveV3.1.pdf | PoolConfigurator | unmatched — not counted | — | mentioned in finding INFO-1 | no |
| 2024-05-02_MixBytes_AaveV3.1.pdf | AaveProtocolDataProvider | unmatched — not counted | — | listed in scope table | no |
| 2024-05-02_MixBytes_AaveV3.1.pdf | L2Encoder | unmatched — not counted | — | listed in scope table | no |
| 2024-05-02_MixBytes_AaveV3.1.pdf | ReserveConfiguration | unmatched — not counted | — | listed in scope table | no |
| 2024-05-02_MixBytes_AaveV3.1.pdf | Errors | unmatched — not counted | — | listed in scope table | no |
| 2024-05-02_MixBytes_AaveV3.1.pdf | BorrowLogic | unmatched — not counted | — | listed in scope table | no |
| 2024-05-02_MixBytes_AaveV3.1.pdf | BridgeLogic | unmatched — not counted | — | listed in scope table | no |
| 2024-05-02_MixBytes_AaveV3.1.pdf | ConfiguratorLogic | unmatched — not counted | — | listed in scope table | no |
| 2024-05-02_MixBytes_AaveV3.1.pdf | FlashLoanLogic | unmatched — not counted | — | listed in scope table | no |
| 2024-05-02_MixBytes_AaveV3.1.pdf | LiquidationLogic | unmatched — not counted | — | listed in scope table | no |
| 2024-05-02_MixBytes_AaveV3.1.pdf | PoolLogic | unmatched — not counted | — | listed in scope table | no |
| 2024-05-02_MixBytes_AaveV3.1.pdf | ReserveLogic | unmatched — not counted | — | listed in scope table | no |
| 2024-05-02_MixBytes_AaveV3.1.pdf | SupplyLogic | unmatched — not counted | — | listed in scope table | no |
| 2024-05-02_MixBytes_AaveV3.1.pdf | ValidationLogic | unmatched — not counted | — | listed in scope table | no |
| 2024-05-02_MixBytes_AaveV3.1.pdf | ConfiguratorInputTypes | unmatched — not counted | — | listed in scope table | no |
| 2024-05-02_MixBytes_AaveV3.1.pdf | DataTypes | unmatched — not counted | — | listed in scope table | no |
| 2024-05-02_MixBytes_AaveV3.1.pdf | DefaultReserveInterestRateStrategyV2 | unmatched — not counted | — | listed in scope table | no |
| 2024-05-02_MixBytes_AaveV3.1.pdf | L2Pool | unmatched — not counted | — | listed in scope table | no |
| 2024-05-02_MixBytes_AaveV3.1.pdf | PoolConfigurator | unmatched — not counted | — | listed in scope table | no |
| 2024-05-02_MixBytes_AaveV3.1.pdf | Pool | unmatched — not counted | — | listed in scope table | no |
| 2024-05-02_MixBytes_AaveV3.1.pdf | AToken | unmatched — not counted | — | listed in scope table | no |
| 2024-05-02_MixBytes_AaveV3.1.pdf | StableDebtToken | unmatched — not counted | — | listed in scope table | no |
| 2024-05-02_MixBytes_AaveV3.1.pdf | VariableDebtToken | unmatched — not counted | — | listed in scope table | no |
| 2024-05-02_MixBytes_AaveV3.1.pdf | ATokenInstance | unmatched — not counted | — | listed in scope table | no |
| 2024-05-02_MixBytes_AaveV3.1.pdf | L2PoolInstance | unmatched — not counted | — | listed in scope table | no |
| 2024-05-02_MixBytes_AaveV3.1.pdf | PoolConfiguratorInstance | unmatched — not counted | — | listed in scope table | no |
| 2024-05-02_MixBytes_AaveV3.1.pdf | PoolInstance | unmatched — not counted | — | listed in scope table | no |
| 2024-05-02_MixBytes_AaveV3.1.pdf | StableDebtTokenInstance | unmatched — not counted | — | listed in scope table | no |
| 2024-05-02_MixBytes_AaveV3.1.pdf | VariableDebtTokenInstance | unmatched — not counted | — | listed in scope table | no |
| 2024-06-02_Cantina-contest-AaveV3.1.pdf | PoolConfigurator | unmatched — not counted | — | mentioned in findings context | no |
| 2024-06-02_Cantina-contest-AaveV3.1.pdf | PoolLogic | unmatched — not counted | — | mentioned in findings context | no |
| 2024-06-02_Cantina-contest-AaveV3.1.pdf | ValidationLogic | unmatched — not counted | — | mentioned in findings context | no |
| 2024-06-02_Cantina-contest-AaveV3.1.pdf | ConfiguratorLogic | unmatched — not counted | — | mentioned in findings context | no |
| 2024-06-02_Cantina-contest-AaveV3.1.pdf | Pool | unmatched — not counted | — | mentioned in findings context | no |
| 2024-06-02_Cantina-contest-AaveV3.1.pdf | L2Pool | unmatched — not counted | — | mentioned in findings context | no |
| 2024-06-02_Cantina-contest-AaveV3.1.pdf | DefaultInterestRateStrategyV2 | unmatched — not counted | — | mentioned in findings context | no |
| 2024-06-02_Cantina-contest-AaveV3.1.pdf | ReserveConfiguration | unmatched — not counted | — | mentioned in findings context | no |
| 2024-06-02_Cantina-contest-AaveV3.1.pdf | BorrowLogic | unmatched — not counted | — | mentioned in findings context | no |
| 2024-06-02_Cantina-contest-AaveV3.1.pdf | IPool | unmatched — not counted | — | mentioned in findings context | no |
| 2024-06-02_Cantina-contest-AaveV3.1.pdf | IPoolConfigurator | unmatched — not counted | — | mentioned in findings context | no |
| 2024-09-11_Certora_StataTokenV2.pdf | StataTokenV2 | unmatched — not counted | — | listed in scope | no |
| 2024-09-11_Certora_StataTokenV2.pdf | ERC4626StataTokenUpgradeable | unmatched — not counted | — | listed in scope | no |
| 2024-09-11_Certora_StataTokenV2.pdf | ERC20AaveLMUpgradeable | unmatched — not counted | — | listed in scope | no |
| 2024-09-11_Certora_StataTokenV2.pdf | StataTokenFactory | unmatched — not counted | — | listed in scope | no |
| 2024-10-22_StErMi_Aave-v3.3.md | ReserveLogic | unmatched — not counted | — | listed in scope and findings | no |
| 2024-10-22_StErMi_Aave-v3.3.md | LiquidationLogic | unmatched — not counted | — | listed in scope and findings | no |
| 2024-10-22_StErMi_Aave-v3.3.md | ValidationLogic | unmatched — not counted | — | listed in scope and findings | no |
| 2024-10-22_StErMi_Aave-v3.3.md | IsolationModeLogic | unmatched — not counted | — | listed in scope and findings | no |
| 2024-10-22_StErMi_Aave-v3.3.md | BorrowLogic | unmatched — not counted | — | listed in scope and findings | no |
| 2024-10-22_StErMi_Aave-v3.3.md | Pool | unmatched — not counted | — | listed in scope and findings | no |
| 2024-10-22_StErMi_Aave-v3.3.md | PoolConfigurator | unmatched — not counted | — | listed in scope and findings | no |
| 2024-10-22_StErMi_Aave-v3.3.md | DataTypes | unmatched — not counted | — | listed in scope and findings | no |
| 2024-10-22_StErMi_Aave-v3.3.md | Errors | unmatched — not counted | — | listed in scope and findings | no |
| 2024-10-22_StErMi_Aave-v3.3.md | ScaledBalanceTokenBase | unmatched — not counted | — | listed in scope and findings | no |
| 2024-10-22_StErMi_Aave-v3.3.md | GhoAToken | unmatched — not counted | — | listed in scope and findings | no |
| 2024-10-22_StErMi_Aave-v3.3.md | GhoToken | unmatched — not counted | — | listed in scope and findings | no |
| 2024-10-22_StErMi_Aave-v3.3.md | WrappedTokenGatewayV3 | unmatched — not counted | — | listed in scope and findings | no |
| 2024-10-22_StErMi_Aave-v3.3.md | UiPoolDataProviderV3 | unmatched — not counted | — | listed in scope and findings | no |
| 2024-10-22_StErMi_Aave-v3.3.md | IPool | unmatched — not counted | — | listed in scope and findings | no |
| 2024-10-22_StErMi_Aave-v3.3.md | IAccessControl | unmatched — not counted | — | listed in scope and findings | no |
| 2024-10-22_StErMi_Aave-v3.3.pdf | Pool | unmatched — not counted | — | mentioned in findings and scope | no |
| 2024-10-22_StErMi_Aave-v3.3.pdf | ReserveLogic | unmatched — not counted | — | mentioned in findings | no |
| 2024-10-22_StErMi_Aave-v3.3.pdf | LiquidationLogic | unmatched — not counted | — | mentioned in findings | no |
| 2024-10-22_StErMi_Aave-v3.3.pdf | ValidationLogic | unmatched — not counted | — | mentioned in findings | no |
| 2024-10-22_StErMi_Aave-v3.3.pdf | IsolationModeLogic | unmatched — not counted | — | mentioned in findings | no |
| 2024-10-22_StErMi_Aave-v3.3.pdf | BorrowLogic | unmatched — not counted | — | mentioned in findings | no |
| 2024-10-22_StErMi_Aave-v3.3.pdf | DataTypes | unmatched — not counted | — | mentioned in findings | no |
| 2024-10-22_StErMi_Aave-v3.3.pdf | Errors | unmatched — not counted | — | mentioned in findings | no |
| 2024-10-22_StErMi_Aave-v3.3.pdf | IPool | unmatched — not counted | — | mentioned in findings | no |
| 2024-10-22_StErMi_Aave-v3.3.pdf | GhoToken | unmatched — not counted | — | mentioned in findings | no |
| 2024-10-22_StErMi_Aave-v3.3.pdf | GhoAToken | unmatched — not counted | — | mentioned in findings | no |
| 2024-10-22_StErMi_Aave-v3.3.pdf | GhoVariableDebtToken | unmatched — not counted | — | mentioned in findings | no |
| 2024-10-22_StErMi_Aave-v3.3.pdf | WrappedTokenGatewayV3 | unmatched — not counted | — | mentioned in findings | no |
| 2024-10-22_StErMi_Aave-v3.3.pdf | ScaledBalanceTokenBase | unmatched — not counted | — | mentioned in findings | no |
| 2024-10-22_StErMi_Aave-v3.3.pdf | UiPoolDataProviderV3 | unmatched — not counted | — | mentioned in findings | no |
| 2024-11-07_Certora_Aave-v3.3.0.pdf | AggregatorInterface | unmatched — not counted | — | listed in scope | no |
| 2024-11-07_Certora_Aave-v3.3.0.pdf | IEACAggregatorProxy | unmatched — not counted | — | listed in scope | no |
| 2024-11-07_Certora_Aave-v3.3.0.pdf | BaseParaSwapAdapter | unmatched — not counted | — | listed in scope | no |
| 2024-11-07_Certora_Aave-v3.3.0.pdf | ParaSwapLiquiditySwapAdapter | unmatched — not counted | — | listed in scope | no |
| 2024-11-07_Certora_Aave-v3.3.0.pdf | ParaSwapRepayAdapter | unmatched — not counted | — | listed in scope | no |
| 2024-11-07_Certora_Aave-v3.3.0.pdf | ParaSwapWithdrawSwapAdapter | unmatched — not counted | — | listed in scope | no |
| 2024-11-07_Certora_Aave-v3.3.0.pdf | StataTokenFactory | unmatched — not counted | — | listed in scope | no |
| 2024-11-07_Certora_Aave-v3.3.0.pdf | PriceFeedEngine | unmatched — not counted | — | listed in scope | no |
| 2024-11-07_Certora_Aave-v3.3.0.pdf | PoolInstance | unmatched — not counted | — | listed in scope | no |
| 2024-11-07_Certora_Aave-v3.3.0.pdf | IPool | unmatched — not counted | — | listed in scope | no |
| 2024-11-07_Certora_Aave-v3.3.0.pdf | ReserveConfiguration | unmatched — not counted | — | listed in scope | no |
| 2024-11-07_Certora_Aave-v3.3.0.pdf | BorrowLogic | unmatched — not counted | — | listed in scope | no |
| 2024-11-07_Certora_Aave-v3.3.0.pdf | ConfiguratorLogic | unmatched — not counted | — | listed in scope | no |
| 2024-11-07_Certora_Aave-v3.3.0.pdf | Pool | unmatched — not counted | — | listed in scope | no |
| 2024-11-07_Certora_Aave-v3.3.0.pdf | DataTypes | unmatched — not counted | — | listed in scope | no |
| 2024-11-07_Certora_Aave-v3.3.0.pdf | ReserveLogic | unmatched — not counted | — | listed in scope | no |
| 2024-11-07_Certora_Aave-v3.3.0.pdf | LiquidationLogic | unmatched — not counted | — | listed in scope | no |
| 2024-11-07_Certora_Aave-v3.3.0.pdf | EmissionManager | unmatched — not counted | — | listed in scope | no |
| 2024-11-07_Certora_Aave-v3.3.0.pdf | IEmissionManager | unmatched — not counted | — | listed in scope | no |
| 2024-11-07_Certora_Aave-v3.3.0.pdf | RewardsController | unmatched — not counted | — | listed in scope | no |
| 2024-11-07_Certora_Aave-v3.3.0.pdf | IRewardsController | unmatched — not counted | — | listed in scope | no |
| 2024-11-07_Certora_Aave-v3.3.0.pdf | RewardsDataTypes | unmatched — not counted | — | listed in scope | no |
| 2024-11-07_Certora_Aave-v3.3.0.pdf | AaveProtocolDataProvider | unmatched — not counted | — | listed in scope | no |
| 2024-11-07_Certora_Aave-v3.3.0.pdf | IPoolDataProvider | unmatched — not counted | — | listed in scope | no |
| 2024-11-07_Certora_Aave-v3.3.0.pdf | WrappedTokenGatewayV3 | unmatched — not counted | — | listed in scope | no |
| 2024-11-07_Certora_Aave-v3.3.0.pdf | IWrappedTokenGatewayV3 | unmatched — not counted | — | listed in scope | no |
| 2024-12-05_MixBytes_AaveStataToken(watoken)SecurityAuditReport.pdf | StataTokenV2 | unmatched — not counted | — | listed in scope | no |
| 2024-12-05_MixBytes_AaveStataToken(watoken)SecurityAuditReport.pdf | ERC20AaveLMUpgradeable | unmatched — not counted | — | listed in scope | no |
| 2024-12-05_MixBytes_AaveStataToken(watoken)SecurityAuditReport.pdf | ERC4626StataTokenUpgradeable | unmatched — not counted | — | listed in scope | no |
| 2024-12-05_MixBytes_AaveStataToken(watoken)SecurityAuditReport.pdf | IERC20AaveLM | unmatched — not counted | — | mentioned in findings | no |
| 2025-01-20_Certora_CollectorRev6.pdf | Collector | unmatched — not counted | — | listed in scope | no |
| 2025-01-20_Certora_CollectorRev6.pdf | CollectorWithCustomImpl | unmatched — not counted | — | listed in scope | no |
| 2025-01-20_Certora_CollectorRev6.pdf | CollectorWithCustomImplZkSync | unmatched — not counted | — | listed in scope | no |
| 2025-01-20_Certora_CollectorRev6.pdf | UpgradePayload | unmatched — not counted | — | listed in scope | no |
| 2025-01-29_Oxorio_Aave-v3.3.0.pdf | ReserveConfiguration | unmatched — not counted | — | listed in audited files table | no |
| 2025-01-29_Oxorio_Aave-v3.3.0.pdf | Errors | unmatched — not counted | — | listed in audited files table | no |
| 2025-01-29_Oxorio_Aave-v3.3.0.pdf | BorrowLogic | unmatched — not counted | — | listed in audited files table | no |
| 2025-01-29_Oxorio_Aave-v3.3.0.pdf | BridgeLogic | unmatched — not counted | — | listed in audited files table | no |
| 2025-01-29_Oxorio_Aave-v3.3.0.pdf | ConfiguratorLogic | unmatched — not counted | — | listed in audited files table | no |
| 2025-01-29_Oxorio_Aave-v3.3.0.pdf | LiquidationLogic | unmatched — not counted | — | listed in audited files table | no |
| 2025-01-29_Oxorio_Aave-v3.3.0.pdf | ReserveLogic | unmatched — not counted | — | listed in audited files table | no |
| 2025-01-29_Oxorio_Aave-v3.3.0.pdf | ValidationLogic | unmatched — not counted | — | listed in audited files table | no |
| 2025-01-29_Oxorio_Aave-v3.3.0.pdf | DataTypes | unmatched — not counted | — | listed in audited files table | no |
| 2025-01-29_Oxorio_Aave-v3.3.0.pdf | Pool | unmatched — not counted | — | listed in audited files table | no |
| 2025-01-29_Oxorio_Aave-v3.3.0.pdf | EModeConfiguration | unmatched — not counted | — | mentioned in findings breakdown by file | no |
| 2025-01-29_Oxorio_Aave-v3.3.0.pdf | EModeLogic | unmatched — not counted | — | mentioned in findings breakdown by file | no |
| 2025-01-29_Oxorio_Aave-v3.3.0.pdf | GenericLogic | unmatched — not counted | — | mentioned in findings breakdown by file | no |
| 2025-01-29_Oxorio_Aave-v3.3.0.pdf | L2Pool | unmatched — not counted | — | mentioned in findings breakdown by file | no |
| 2025-01-29_Oxorio_Aave-v3.3.0.pdf | PoolConfigurator | unmatched — not counted | — | mentioned in findings breakdown by file | no |
| 2025-06-11_Certora_Aave-v3.4_AIP_Report.pdf | ATokenMainnetInstanceGHO | unmatched — not counted | — | listed in scope | no |
| 2025-06-11_Certora_Aave-v3.4_AIP_Report.pdf | CustomInitialize | unmatched — not counted | — | listed in scope | no |
| 2025-06-11_Certora_Aave-v3.4_AIP_Report.pdf | L2PoolInstanceWithCustomInitialize | unmatched — not counted | — | listed in scope | no |
| 2025-06-11_Certora_Aave-v3.4_AIP_Report.pdf | PoolConfiguratorWithCustomInitialize | unmatched — not counted | — | listed in scope | no |
| 2025-06-11_Certora_Aave-v3.4_AIP_Report.pdf | PoolInstanceWithCustomInitialize | unmatched — not counted | — | listed in scope | no |
| 2025-06-11_Certora_Aave-v3.4_AIP_Report.pdf | UpgradePayload | unmatched — not counted | — | listed in scope | no |
| 2025-06-11_Certora_Aave-v3.4_AIP_Report.pdf | UpgradePayloadMainnet | unmatched — not counted | — | listed in scope | no |
| 2025-06-11_Certora_Aave-v3.4_AIP_Report.pdf | VariableDebtTokenMainnetInstanceGHO | unmatched — not counted | — | listed in scope | no |
| 2025-06-11_Stermi_Aave-v3.4_AIP_Report.md | UpgradePayloadMainnet | unmatched — not counted | — | listed in scope and findings | no |
| 2025-06-11_Stermi_Aave-v3.4_AIP_Report.md | ATokenMainnetInstanceGHO | unmatched — not counted | — | listed in findings | no |
| 2025-06-11_Stermi_Aave-v3.4_AIP_Report.md | VariableDebtTokenMainnetInstanceGHO | unmatched — not counted | — | listed in findings | no |
| 2025-06-11_Stermi_Aave-v3.4_AIP_Report.md | UpgradePayload | unmatched — not counted | — | listed in findings | no |
| 2025-06-11_Stermi_Aave-v3.4_AIP_Report.md | VariableDebtToken | unmatched — not counted | — | listed in findings | no |
| 2025-06-11_Stermi_Aave-v3.4_AIP_Report.md | Deploy | unmatched — not counted | — | listed in findings | no |
| 2025-07-17_StErMi_Aave-v3.5.pdf | Pool | unmatched — not counted | — | listed in scope | no |
| 2025-07-17_StErMi_Aave-v3.5.pdf | PoolConfigurator | unmatched — not counted | — | listed in scope | no |
| 2025-07-17_StErMi_Aave-v3.5.pdf | AToken | unmatched — not counted | — | listed in scope | no |
| 2025-07-17_StErMi_Aave-v3.5.pdf | VariableDebtToken | unmatched — not counted | — | listed in scope | no |
| 2025-07-17_StErMi_Aave-v3.5.pdf | IncentivizedERC20 | unmatched — not counted | — | listed in scope | no |
| 2025-07-17_StErMi_Aave-v3.5.pdf | ScaledBalanceTokenBase | unmatched — not counted | — | listed in scope | no |
| 2025-07-17_StErMi_Aave-v3.5.pdf | DebtTokenBase | unmatched — not counted | — | listed in scope | no |
| 2025-07-17_StErMi_Aave-v3.5.pdf | ReserveLogic | unmatched — not counted | — | listed in scope | no |
| 2025-07-17_StErMi_Aave-v3.5.pdf | GenericLogic | unmatched — not counted | — | listed in scope | no |
| 2025-07-17_StErMi_Aave-v3.5.pdf | ValidationLogic | unmatched — not counted | — | listed in scope | no |
| 2025-07-17_StErMi_Aave-v3.5.pdf | BorrowLogic | unmatched — not counted | — | listed in scope | no |
| 2025-07-17_StErMi_Aave-v3.5.pdf | SupplyLogic | unmatched — not counted | — | listed in scope | no |
| 2025-07-17_StErMi_Aave-v3.5.pdf | LiquidationLogic | unmatched — not counted | — | listed in scope | no |
| 2025-07-17_StErMi_Aave-v3.5.pdf | FlashLoanLogic | unmatched — not counted | — | listed in scope | no |
| 2025-07-17_StErMi_Aave-v3.5.pdf | PoolLogic | unmatched — not counted | — | listed in scope | no |
| 2025-07-17_StErMi_Aave-v3.5.pdf | IsolationModeLogic | unmatched — not counted | — | listed in scope | no |
| 2025-07-17_StErMi_Aave-v3.5.pdf | MathUtils | unmatched — not counted | — | listed in scope | no |
| 2025-07-17_StErMi_Aave-v3.5.pdf | WadRayMath | unmatched — not counted | — | listed in scope | no |
| 2025-07-17_StErMi_Aave-v3.5.pdf | PercentageMath | unmatched — not counted | — | listed in scope | no |
| 2025-07-17_StErMi_Aave-v3.5.pdf | UserConfiguration | unmatched — not counted | — | listed in scope | no |
| 2025-07-17_StErMi_Aave-v3.5.pdf | ReserveConfiguration | unmatched — not counted | — | listed in scope | no |
| 2025-07-17_StErMi_Aave-v3.5.pdf | DataTypes | unmatched — not counted | — | listed in scope | no |
| 2025-07-17_StErMi_Aave-v3.5.pdf | IDefaultInterestRateStrategyV2 | unmatched — not counted | — | listed in scope | no |
| 2025-07-17_StErMi_Aave-v3.5.pdf | IAaveOracle | unmatched — not counted | — | listed in scope | no |
| 2025-07-17_StErMi_Aave-v3.5.pdf | IPoolAddressesProvider | unmatched — not counted | — | listed in scope | no |
| 2025-07-17_StErMi_Aave-v3.5.pdf | IAToken | unmatched — not counted | — | listed in scope | no |
| 2025-07-17_StErMi_Aave-v3.5.pdf | PriceOracleSentinel | unmatched — not counted | — | listed in scope | no |
| 2025-07-17_StErMi_Aave-v3.5.pdf | SequencerOracle | unmatched — not counted | — | listed in scope | no |
| 2025-07-17_StErMi_Aave-v3.5.pdf | LiquidationDataProvider | unmatched — not counted | — | listed in scope | no |
| 2025-07-17_StErMi_Aave-v3.5.pdf | TestnetERC20 | unmatched — not counted | — | listed in scope | no |
| 2025-07-17_StErMi_Aave-v3.5.pdf | TestnetProcedures | unmatched — not counted | — | listed in scope | no |
| 2025-07-17_StErMi_Aave-v3.5.pdf | Errors | unmatched — not counted | — | listed in scope | no |
| RewardsController.pdf | RewardsController | unmatched — not counted | — | listed in scope | no |
| RewardsController.pdf | RewardsDistributor | unmatched — not counted | — | listed in scope | no |
| RewardsController.pdf | EmissionMath | unmatched — not counted | — | listed in scope | no |
| RewardsController.pdf | InternalStructs | unmatched — not counted | — | listed in scope | no |
| StakeToken.pdf | UmbrellaStakeToken | unmatched — not counted | — | listed in scope table | no |
| StakeToken.pdf | StakeToken | unmatched — not counted | — | listed in scope table | no |
| StakeToken.pdf | ERC4626StakeTokenUpgradeable | unmatched — not counted | — | listed in scope table and mentioned in coverage | no |
| StakeToken.pdf | ERC4626Upgradeable | unmatched — not counted | — | mentioned in coverage section | no |
| StakeToken.pdf | ERC20Upgradeable | unmatched — not counted | — | mentioned in coverage section | no |
| Umbrella.pdf | Umbrella | unmatched — not counted | — | listed in scope | no |
| Umbrella.pdf | UmbrellaStkManager | unmatched — not counted | — | listed in scope | no |
| Umbrella.pdf | UmbrellaConfiguration | unmatched — not counted | — | listed in scope | no |
| UmbrellaBatchHelper.pdf | UmbrellaBatchHelper | unmatched — not counted | — | listed in scope | no |
| UmbrellaBatchHelper.pdf | IUmbrellaBatchHelper | unmatched — not counted | — | listed in scope | no |
| UmbrellaBatchHelper.pdf | IUniversalToken | unmatched — not counted | — | listed in scope | no |
| REPORT Aave RewardsController.md | RewardsController | unmatched — not counted | — | listed in scope and findings | no |
| REPORT Aave RewardsController.md | RewardsDistributor | unmatched — not counted | — | listed in scope and findings | no |
| REPORT Aave RewardsController.md | EmissionMath | unmatched — not counted | — | listed in scope and findings | no |
| REPORT Aave RewardsController.md | IRewardsController | unmatched — not counted | — | listed in scope and findings | no |
| REPORT Aave RewardsController.md | IRewardsDistributor | unmatched — not counted | — | listed in scope and findings | no |
| REPORT Aave RewardsController.md | IRewardsStructs | unmatched — not counted | — | listed in scope (implied by imports) | no |
| REPORT Aave RewardsController.md | UmbrellaBatchHelper | unmatched — not counted | — | listed in validation diff | no |
| REPORT Aave RewardsController.md | IUmbrellaBatchHelper | unmatched — not counted | — | listed in validation diff | no |
| REPORT Aave RewardsController.md | IUniversalToken | unmatched — not counted | — | listed in validation diff | no |
| REPORT Aave RewardsController.md | UmbrellaStkManager | unmatched — not counted | — | listed in validation diff | no |
| REPORT Aave RewardsController.md | IUmbrellaConfiguration | unmatched — not counted | — | listed in validation diff | no |
| REPORT Aave RewardsController.md | IUmbrellaStkManager | unmatched — not counted | — | listed in validation diff | no |
| REPORT Aave StakeToken.md | StakeToken | unmatched — not counted | — | Listed in scope and findings | no |
| REPORT Aave StakeToken.md | ERC4626StakeTokenUpgradeable | unmatched — not counted | — | Listed in scope and findings | no |
| REPORT Aave StakeToken.md | RescuableBase | unmatched — not counted | — | Referenced in findings | no |
| REPORT Aave StakeToken.md | IERC4626StakeToken | unmatched — not counted | — | Listed in scope and findings | no |
| REPORT Aave StakeToken.md | UmbrellaStkManager | unmatched — not counted | — | Listed in scope and diff | no |
| REPORT Aave StakeToken.md | IUmbrellaConfiguration | unmatched — not counted | — | Listed in scope and diff | no |
| REPORT Aave StakeToken.md | IUmbrellaStkManager | unmatched — not counted | — | Listed in scope and diff | no |
| REPORT Aave StakeToken.md | UmbrellaBatchHelper | unmatched — not counted | — | Listed in scope and diff | no |
| REPORT Aave StakeToken.md | IUmbrellaBatchHelper | unmatched — not counted | — | Listed in scope and diff | no |
| REPORT Aave StakeToken.md | IUniversalToken | unmatched — not counted | — | Listed in scope and diff | no |
| REPORT Aave Umbrella.md | Umbrella | unmatched — not counted | — | listed in scope | no |
| REPORT Aave Umbrella.md | UmbrellaStakeToken | unmatched — not counted | — | mentioned as core contract | no |
| REPORT Aave Umbrella.md | UmbrellaStkManager | unmatched — not counted | — | listed in scope | no |
| REPORT Aave Umbrella.md | UmbrellaConfiguration | unmatched — not counted | — | listed in scope | no |
| REPORT Aave Umbrella.md | UmbrellaBatchHelper | unmatched — not counted | — | mentioned in diff validation | no |
| REPORT Aave Umbrella.md | IOracleToken | unmatched — not counted | — | mentioned in findings | no |
| REPORT Aave Umbrella.md | IUmbrellaConfiguration | unmatched — not counted | — | mentioned in findings | no |
| REPORT Aave Umbrella.md | IUmbrellaStkManager | unmatched — not counted | — | mentioned in findings | no |
| REPORT Aave Umbrella.md | IUmbrellaBatchHelper | unmatched — not counted | — | mentioned in diff validation | no |
| REPORT Aave Umbrella.md | IUniversalToken | unmatched — not counted | — | mentioned in diff validation | no |
| REPORT Aave UmbrellaBatchHelper.md | UmbrellaBatchHelper | unmatched — not counted | — | listed in scope and findings | no |
| REPORT Aave UmbrellaBatchHelper.md | IUmbrellaBatchHelper | unmatched — not counted | — | listed in scope and findings | no |
| REPORT Aave UmbrellaBatchHelper.md | IUniversalToken | unmatched — not counted | — | listed in scope and findings | no |
| REPORT Aave UmbrellaBatchHelper.md | UmbrellaStkManager | unmatched — not counted | — | listed in scope and findings | no |
| REPORT Aave UmbrellaBatchHelper.md | IUmbrellaConfiguration | unmatched — not counted | — | listed in scope and findings | no |
| REPORT Aave UmbrellaBatchHelper.md | IUmbrellaStkManager | unmatched — not counted | — | listed in scope and findings | no |
| 2023-09-20_GSM_Stermi.pdf | IGsmFeeStrategy | unmatched — not counted | — | listed in scope | no |
| 2023-09-20_GSM_Stermi.pdf | FixedFeeStrategy | unmatched — not counted | — | listed in scope | no |
| 2023-09-20_GSM_Stermi.pdf | IGsm | unmatched — not counted | — | listed in scope | no |
| 2023-09-20_GSM_Stermi.pdf | IGsm4626 | unmatched — not counted | — | listed in scope | no |
| 2023-09-20_GSM_Stermi.pdf | GsmRegistry | unmatched — not counted | — | listed in scope | no |
| 2023-09-20_GSM_Stermi.pdf | IGsmRegistry | unmatched — not counted | — | listed in scope | no |
| 2023-09-20_GSM_Stermi.pdf | SampleLiquidator | unmatched — not counted | — | listed in scope | no |
| 2023-09-20_GSM_Stermi.pdf | SampleSwapFreezer | unmatched — not counted | — | listed in scope | no |
| 2023-09-20_GSM_Stermi.pdf | IGsmPriceStrategy | unmatched — not counted | — | listed in scope | no |
| 2023-09-20_GSM_Stermi.pdf | FixedPriceStrategy | unmatched — not counted | — | listed in scope | no |
| 2023-09-20_GSM_Stermi.pdf | FixedPriceStrategy4626 | unmatched — not counted | — | listed in scope | no |
| 2023-09-20_GSM_Stermi.pdf | Gsm | unmatched — not counted | — | listed in scope | no |
| 2023-09-20_GSM_Stermi.pdf | Gsm4626 | unmatched — not counted | — | listed in scope | no |
| 2024-06-11_UpgradeableGHO_Certora.pdf | UpgradeableGhoToken | unmatched — not counted | — | listed in scope | no |
| 2024-06-11_UpgradeableGHO_Certora.pdf | UpgradeableERC20 | unmatched — not counted | — | listed in scope | no |
| 2024-09-15_ModularGhoStewards_Certora.pdf | GhoAaveSteward | unmatched — not counted | — | listed in scope | no |
| 2024-09-15_ModularGhoStewards_Certora.pdf | GhoBucketSteward | unmatched — not counted | — | listed in scope | no |
| 2024-09-15_ModularGhoStewards_Certora.pdf | GhoCcipSteward | unmatched — not counted | — | listed in scope | no |
| 2024-09-15_ModularGhoStewards_Certora.pdf | GhoGsmSteward | unmatched — not counted | — | listed in scope | no |
| 2024-09-15_ModularGhoStewards_Certora.pdf | RiskCouncilControlled | unmatched — not counted | — | listed in scope | no |
| 2024-09-15_ModularGhoStewards_Certora.pdf | FixedFeeStrategyFactory | unmatched — not counted | — | listed in scope | no |
| Certora-FV-aave-v2-03-12-2020.pdf | LendingPool | unmatched — not counted | — | listed in scope | no |
| Certora-FV-aave-v2-03-12-2020.pdf | AToken | unmatched — not counted | — | listed in scope | no |
| Certora-FV-aave-v2-03-12-2020.pdf | StableDebtToken | unmatched — not counted | — | listed in scope | no |
| Certora-FV-aave-v2-03-12-2020.pdf | VariableDebtToken | unmatched — not counted | — | listed in scope | no |
| Certora-FV-aave-v2-03-12-2020.pdf | UserConfiguration | unmatched — not counted | — | listed in scope | no |
| PeckShield-aave-v2-03-12-2020-CN.pdf | LendingPoolAddressesProviderRegistry | unmatched — not counted | — | Listed in scope and findings (PVE-001) | no |
| PeckShield-aave-v2-03-12-2020-CN.pdf | LendingPool | unmatched — not counted | — | Listed in scope and multiple findings (PVE-002, PVE-003, PVE-004, PVE-005, PVE-015, PVE-021) | no |
| PeckShield-aave-v2-03-12-2020-CN.pdf | DefaultReserveInterestRateStrategy | unmatched — not counted | — | Listed in scope and finding PVE-006 | no |
| PeckShield-aave-v2-03-12-2020-CN.pdf | ReserveConfiguration | unmatched — not counted | — | Listed in scope and finding PVE-007 | no |
| PeckShield-aave-v2-03-12-2020-CN.pdf | AToken | unmatched — not counted | — | Listed in scope and findings (PVE-008, PVE-010) | no |
| PeckShield-aave-v2-03-12-2020-CN.pdf | ReserveLogic | unmatched — not counted | — | Listed in scope and findings (PVE-009, PVE-018, PVE-020) | no |
| PeckShield-aave-v2-03-12-2020-CN.pdf | LendingPoolCollateralManager | unmatched — not counted | — | Listed in scope and findings (PVE-011, PVE-012, PVE-015, PVE-022) | no |
| PeckShield-aave-v2-03-12-2020-CN.pdf | GenericLogic | unmatched — not counted | — | Listed in scope and findings (PVE-014, PVE-019) | no |
| PeckShield-aave-v2-03-12-2020-CN.pdf | ValidationLogic | unmatched — not counted | — | Listed in scope and findings (PVE-016, PVE-019) | no |
| PeckShield-aave-v2-03-12-2020-CN.pdf | LendingPoolConfigurator | unmatched — not counted | — | Listed in scope and finding PVE-017 | no |
| PeckShield-aave-v2-03-12-2020-CN.pdf | WadRayMath | unmatched — not counted | — | Listed in scope (library used in findings) | no |
| PeckShield-aave-v2-03-12-2020-CN.pdf | StableDebtToken | unmatched — not counted | — | Listed in scope (referenced in findings) | no |
| PeckShield-aave-v2-03-12-2020-CN.pdf | VariableDebtToken | unmatched — not counted | — | Listed in scope (referenced in findings) | no |
| PeckShield-aave-v2-03-12-2020-CN.pdf | DebtTokenBase | unmatched — not counted | — | Listed in scope (referenced in finding PVE-009) | no |
| PeckShield-aave-v2-03-12-2020-CN.pdf | LendingPoolAddressesProvider | unmatched — not counted | — | Listed in scope (referenced in findings) | no |
| PeckShield-aave-v2-03-12-2020-CN.pdf | Helpers | unmatched — not counted | — | Listed in scope (library used in findings) | no |
| PeckShield-aave-v2-03-12-2020-CN.pdf | PercentageMath | unmatched — not counted | — | Listed in scope (library used in findings) | no |
| PeckShield-aave-v2-03-12-2020-CN.pdf | UserConfiguration | unmatched — not counted | — | Listed in scope (library used in findings) | no |
| PeckShield-aave-v2-03-12-2020-CN.pdf | MathUtils | unmatched — not counted | — | Listed in scope (library used in findings) | no |
| PeckShield-aave-v2-03-12-2020-CN.pdf | IAToken | unmatched — not counted | — | Listed in scope (interface) | no |
| PeckShield-aave-v2-03-12-2020-CN.pdf | IStableDebtToken | unmatched — not counted | — | Listed in scope (interface) | no |
| PeckShield-aave-v2-03-12-2020-CN.pdf | IVariableDebtToken | unmatched — not counted | — | Listed in scope (interface) | no |
| PeckShield-aave-v2-03-12-2020-CN.pdf | IFlashLoanReceiver | unmatched — not counted | — | Listed in scope (interface) | no |
| PeckShield-aave-v2-03-12-2020-CN.pdf | ISwapAdapter | unmatched — not counted | — | Listed in scope (interface) | no |
| PeckShield-aave-v2-03-12-2020-CN.pdf | IPriceOracleGetter | unmatched — not counted | — | Listed in scope (interface) | no |
| PeckShield-aave-v2-03-12-2020-CN.pdf | ILendingRateOracle | unmatched — not counted | — | Listed in scope (interface) | no |
| PeckShield-aave-v2-03-12-2020-CN.pdf | IReserveInterestRateStrategy | unmatched — not counted | — | Listed in scope (interface) | no |
| 2025-05-30_Certora_Aave_Horizon-v3.3.0.pdf | RwaAToken | unmatched — not counted | — | listed in scope | no |
| 2025-05-30_Certora_Aave_Horizon-v3.3.0.pdf | AToken | unmatched — not counted | — | listed in scope | no |
| 2025-05-30_Certora_Aave_Horizon-v3.3.0.pdf | RwaATokenInstance | unmatched — not counted | — | listed in scope | no |
| 2025-05-30_Certora_Aave_Horizon-v3.3.0.pdf | IRwaAToken | unmatched — not counted | — | listed in scope | no |
| 2025-05-30_Certora_Aave_Horizon-v3.3.0.pdf | IRwaATokenManager | unmatched — not counted | — | listed in scope | no |
| 2025-05-30_Certora_Aave_Horizon-v3.3.0.pdf | RwaATokenManager | unmatched — not counted | — | listed in scope | no |
| 2025-05-30_Certora_Aave_Horizon-v3.3.0.pdf | Errors | unmatched — not counted | — | listed in scope | no |
| 2025-06-25_StErMi_Aave_Horizon-v3.3.0.pdf | RwaAToken | unmatched — not counted | — | mentioned in findings and scope | no |
| 2025-06-25_StErMi_Aave_Horizon-v3.3.0.pdf | RwaATokenManager | unmatched — not counted | — | mentioned in findings and scope | no |
| 2025-06-25_StErMi_Aave_Horizon-v3.3.0.pdf | RewardsController | unmatched — not counted | — | mentioned in finding I-01 | no |
| 2025-06-25_StErMi_Aave_Horizon-v3.3.0.pdf | Pool | unmatched — not counted | — | mentioned in findings and scope | no |
| 2025-06-25_StErMi_Aave_Horizon-v3.3.0.pdf | AToken | unmatched — not counted | — | mentioned in findings and scope | no |
| Formal Verification - Tokenization SpokeCertora Apr 13 2026 | TokenizationSpoke | unmatched — not counted | — | listed in scope | no |
| Formal Verification - Tokenization SpokeCertora Apr 13 2026 | TokenizationSpokeInstance | unmatched — not counted | — | listed in scope | no |
| Formal Verification - HubCertora Mar 09 2026 | Hub | unmatched — not counted | — | primary verification target | no |
| Formal Verification - HubCertora Mar 09 2026 | AssetLogic | unmatched — not counted | — | internal library exercised as part of Hub verification | no |
| Formal Verification - HubCertora Mar 09 2026 | SharesMath | unmatched — not counted | — | internal library exercised as part of Hub verification | no |
| Formal Verification - HubCertora Mar 09 2026 | Premium | unmatched — not counted | — | internal library exercised as part of Hub verification | no |
| Formal Verification - HubCertora Mar 09 2026 | HubConfigurator | unmatched — not counted | — | listed in project scope | no |
| Formal Verification - HubCertora Mar 09 2026 | AssetInterestRateStrategy | unmatched — not counted | — | listed in project scope | no |
| Formal Verification - HubCertora Mar 09 2026 | LiquidityHub | unmatched — not counted | — | referenced in findings M-03 and L-03 | no |
| Formal Verification - LibrariesCertora Mar 09 2026 | LibBit | unmatched — not counted | — | listed in scope | no |
| Formal Verification - LibrariesCertora Mar 09 2026 | LiquidationLogic | unmatched — not counted | — | listed in scope | no |
| Formal Verification - LibrariesCertora Mar 09 2026 | PositionStatusMap | unmatched — not counted | — | listed in scope | no |
| Formal Verification - LibrariesCertora Mar 09 2026 | Premium | unmatched — not counted | — | listed in scope | no |
| Formal Verification - LibrariesCertora Mar 09 2026 | SpokeUtils | unmatched — not counted | — | listed in scope | no |
| Formal Verification - LibrariesCertora Mar 09 2026 | SharesMath | unmatched — not counted | — | listed in scope | no |
| Formal Verification - LibrariesCertora Mar 09 2026 | WadRayMath | unmatched — not counted | — | listed in scope | no |
| Formal Verification - LibrariesCertora Mar 09 2026 | PercentageMath | unmatched — not counted | — | listed in scope | no |
| Formal Verification - LibrariesCertora Mar 09 2026 | MathUtils | unmatched — not counted | — | listed in scope | no |
| Formal Verification - SpokeCertora Mar 09 2026 | Spoke | unmatched — not counted | — | listed in scope | no |
| Formal Verification - SpokeCertora Mar 09 2026 | UserPositionDebt | unmatched — not counted | — | listed in scope | no |
| Formal Verification - SpokeCertora Mar 09 2026 | LiquidationLogic | unmatched — not counted | — | listed in scope | no |
| Formal Verification - SpokeCertora Mar 09 2026 | PositionStatusMap | unmatched — not counted | — | listed in scope | no |
| Formal Verification - SpokeCertora Mar 09 2026 | ReserveFlagsMap | unmatched — not counted | — | listed in scope | no |
| Formal Verification - SpokeCertora Mar 09 2026 | KeyValueList | unmatched — not counted | — | listed in scope | no |
| Stable Vault ReportJosselin Feist Jul 2026Josselin Feist | StableVault | unmatched — not counted | — | mentioned in findings and scope | no |
| Stable Vault ReportJosselin Feist Jul 2026Josselin Feist | CcipAdapter | unmatched — not counted | — | mentioned in findings | no |
| Stable Vault ReportJosselin Feist Jul 2026Josselin Feist | WithdrawalPolicy | unmatched — not counted | — | mentioned in findings | no |
| Stable Vault ReportJosselin Feist Jul 2026Josselin Feist | Allocator | unmatched — not counted | — | mentioned in findings | no |
| Stable Vault ReportJosselin Feist Jul 2026Josselin Feist | FundsHandler | unmatched — not counted | — | mentioned in findings | no |
| Stable Vault ReportJosselin Feist Jul 2026Josselin Feist | ATokenVaultMerklRewardClaimer | unmatched — not counted | — | mentioned in findings | no |
| Stable Vault ReportJosselin Feist Jul 2026Josselin Feist | ChainlinkChainBalanceOracleAdapter | unmatched — not counted | — | mentioned in findings | no |
| Stable Vault ReportJosselin Feist Jul 2026Josselin Feist | ChainBalanceOracle | unmatched — not counted | — | mentioned in findings | no |
| Stable Vault ReportJosselin Feist Jul 2026Josselin Feist | MultiSigValidationModule | unmatched — not counted | — | mentioned in finding 11 | no |
| Stable Vault Report - Extension 2Josselin Feist Jul 2026Josselin Feist | OwnedMulticall | unmatched — not counted | — | listed in scope and findings | no |
| Stable Vault Report - Extension 2Josselin Feist Jul 2026Josselin Feist | StableVault | unmatched — not counted | — | mentioned in scope and appendix | no |
| Stable Vault Report - Extension 2Josselin Feist Jul 2026Josselin Feist | ChainBalance | unmatched — not counted | — | mentioned in appendix | no |
| Stable Vault Report - Extension 2Josselin Feist Jul 2026Josselin Feist | ChainBalanceOracle | unmatched — not counted | — | mentioned in appendix | no |
| Stable Vault Report - Extension 2Josselin Feist Jul 2026Josselin Feist | CCIPAdapter | unmatched — not counted | — | mentioned in appendix | no |
| Stable Vault Report - Extension 2Josselin Feist Jul 2026Josselin Feist | Allocator | unmatched — not counted | — | mentioned in appendix | no |
| Stable Vault Report - Extension 3Josselin Feist Jul 2026Josselin Feist | CcipAdapter | unmatched — not counted | — | mentioned in findings and appendix | no |
| Stable Vault Report - Extension 3Josselin Feist Jul 2026Josselin Feist | AdiAdapter | unmatched — not counted | — | mentioned in findings | no |
| Stable Vault Report - Extension 3Josselin Feist Jul 2026Josselin Feist | IouTokenManager | unmatched — not counted | — | mentioned in findings | no |
| Stable Vault Report - Extension 3Josselin Feist Jul 2026Josselin Feist | PriceOracle | unmatched — not counted | — | mentioned in appendix | no |
| Stable Vault Report - Extension 3Josselin Feist Jul 2026Josselin Feist | SlippageCoverageVault | unmatched — not counted | — | mentioned in appendix | no |
| Stable Vault Report - Extension 3Josselin Feist Jul 2026Josselin Feist | Allocator | unmatched — not counted | — | mentioned in appendix | no |
| Stable Vault Report - Extension 3Josselin Feist Jul 2026Josselin Feist | AssetRegistry | unmatched — not counted | — | mentioned in appendix | no |
| Security Assessment - a.DICertora Jun 2026 | CrossChainForwarder | unmatched — not counted | — | listed in scope | no |
| Security Assessment - a.DICertora Jun 2026 | CrossChainReceiver | unmatched — not counted | — | listed in scope | no |
| Security Assessment - a.DICertora Jun 2026 | IBaseAdapter | unmatched — not counted | — | listed in scope | no |
| Security Assessment - a.DICertora Jun 2026 | IConfigurableAdapter | unmatched — not counted | — | listed in scope | no |
| Security Assessment - a.DICertora Jun 2026 | ArbAdapter | unmatched — not counted | — | listed in scope | no |
| Security Assessment - a.DICertora Jun 2026 | CCIPAdapter | unmatched — not counted | — | listed in scope | no |
| Security Assessment - a.DICertora Jun 2026 | CCIPChainSelectors | unmatched — not counted | — | listed in scope | no |
| Security Assessment - a.DICertora Jun 2026 | Client | unmatched — not counted | — | listed in scope | no |
| Security Assessment - a.DICertora Jun 2026 | GnosisChainAdapter | unmatched — not counted | — | listed in scope | no |
| Security Assessment - a.DICertora Jun 2026 | HyperLaneAdapter | unmatched — not counted | — | listed in scope | no |
| Security Assessment - a.DICertora Jun 2026 | ILayerZeroAdapter | unmatched — not counted | — | listed in scope | no |
| Security Assessment - a.DICertora Jun 2026 | LayerZeroAdapter | unmatched — not counted | — | listed in scope | no |
| Security Assessment - a.DICertora Jun 2026 | ILayerZeroEndpointV2 | unmatched — not counted | — | listed in scope | no |
| Security Assessment - a.DICertora Jun 2026 | LineaAdapter | unmatched — not counted | — | listed in scope | no |
| Security Assessment - a.DICertora Jun 2026 | MetisAdapter | unmatched — not counted | — | listed in scope | no |
| Security Assessment - a.DICertora Jun 2026 | OpAdapter | unmatched — not counted | — | listed in scope | no |
| Security Assessment - a.DICertora Jun 2026 | PolygonAdapterBase | unmatched — not counted | — | listed in scope | no |
| Security Assessment - a.DICertora Jun 2026 | SameChainAdapter | unmatched — not counted | — | listed in scope | no |
| Security Assessment - a.DICertora Jun 2026 | ScrollAdapter | unmatched — not counted | — | listed in scope | no |
| Security Assessment - a.DICertora Jun 2026 | WormholeAdapter | unmatched — not counted | — | listed in scope | no |
| Security Assessment - a.DICertora Jun 2026 | ZkEVMAdapter | unmatched — not counted | — | listed in scope | no |
| Security Assessment - a.DICertora Jun 2026 | ZkSyncAdapter | unmatched — not counted | — | listed in scope | no |
| Security Assessment - a.DICertora Jun 2026 | IBaseReceiverPortal | unmatched — not counted | — | listed in scope | no |
| Security Assessment - a.DICertora Jun 2026 | ICrossChainForwarder | unmatched — not counted | — | listed in scope | no |
| Security Assessment - a.DICertora Jun 2026 | Errors | unmatched — not counted | — | listed in scope | no |
| Security Assessment - a.DICertora Jun 2026 | BobAdapter | unmatched — not counted | — | mentioned in finding I-02 | no |
| Security Assessment - a.DICertora Jun 2026 | InkAdapter | unmatched — not counted | — | mentioned in finding I-02 | no |
| Security Assessment - a.DICertora Jun 2026 | MegaEthAdapter | unmatched — not counted | — | mentioned in finding I-02 | no |
| Security Assessment - a.DICertora Jun 2026 | soneiumAdapter | unmatched — not counted | — | mentioned in finding I-02 | no |
| Security Assessment - a.DICertora Jun 2026 | xLayerAdapter | unmatched — not counted | — | mentioned in finding I-02 | no |
| Security Assessment - a.DICertora Jun 2026 | Utils | unmatched — not counted | — | mentioned in finding I-03 | no |
| Code Assessment - Stable VaultsChainSecurity May 2026 | BaseBridgeAdapter | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity May 2026 | AdiAdapter | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity May 2026 | CcipAdapter | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity May 2026 | Allocator | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity May 2026 | BaseChainGateway | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity May 2026 | LocalBalanceAggregator | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity May 2026 | AccountingChainGateway | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity May 2026 | FundsHandler | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity May 2026 | StableVault | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity May 2026 | EarningChainGateway | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity May 2026 | IouToken | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity May 2026 | IouTokenManager | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity May 2026 | IAccountingChainGateway | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity May 2026 | IAdiBridgeAdapter | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity May 2026 | IAllocator | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity May 2026 | IAssetRegistry | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity May 2026 | IBridgeAdapter | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity May 2026 | ICcipBridgeAdapter | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity May 2026 | IChainBalanceOracle | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity May 2026 | IChainBalanceOracleAdapter | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity May 2026 | IChainGateway | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity May 2026 | IDepositPolicy | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity May 2026 | IEarningChainGateway | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity May 2026 | IEarningChainStateProvider | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity May 2026 | IFundsBridgingPolicy | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity May 2026 | IFundsHandler | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity May 2026 | IIouToken | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity May 2026 | IIouTokenManager | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity May 2026 | IMintableBurnableIERC20 | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity May 2026 | IMulticall | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity May 2026 | IPolicyRegistry | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity May 2026 | IPriceOracle | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity May 2026 | IPriceOracleAdapter | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity May 2026 | IRebalancePolicy | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity May 2026 | IRescuableNative | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity May 2026 | IRescuableToken | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity May 2026 | ISlippageCoverageVault | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity May 2026 | IStableVault | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity May 2026 | ISwapper | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity May 2026 | ITransferHelper | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity May 2026 | IWithdrawalExecutionPolicy | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity May 2026 | IWithdrawalRequestPolicy | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity May 2026 | AssetLib | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity May 2026 | MathLib | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity May 2026 | RateLimitBucketLib | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity May 2026 | Multicall | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity May 2026 | RescuableNative | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity May 2026 | RescuableToken | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity May 2026 | TransferHelperClient | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity May 2026 | ChainBalanceOracle | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity May 2026 | ChainlinkChainBalanceOracleAdapter | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity May 2026 | ChainlinkL2ChainBalanceOracleAdapter | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity May 2026 | L2ChainlinkOracleAdapter | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity May 2026 | ChainlinkL2PriceOracleAdapter | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity May 2026 | ChainlinkPriceOracleAdapter | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity May 2026 | PriceOracle | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity May 2026 | AssetRegistry | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity May 2026 | EarningChainStateProvider | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity May 2026 | EarningChainStateSchemaV1 | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity May 2026 | OwnedMulticall | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity May 2026 | PolicyRegistry | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity May 2026 | SlippageCoverageVault | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity May 2026 | Swapper | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity May 2026 | TransferHelper | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity May 2026 | DepositPolicy | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity May 2026 | FundsBridgingPolicy | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity May 2026 | WithdrawalExecutionPolicy | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity May 2026 | GlobalRateLimitedPolicy | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity May 2026 | Constants | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity May 2026 | Errors | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity May 2026 | RolesConfig | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity May 2026 | AccessManagerBaseSetup | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity May 2026 | AccessManagerAccountingChainSetup | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity May 2026 | AccessManagerEarningChainSetup | unmatched — not counted | — | listed in scope | no |
| Security Assessment - Stable VaultsCertora May 2026 | CcipAdapter | unmatched — not counted | — | listed in scope | no |
| Security Assessment - Stable VaultsCertora May 2026 | BaseBridgeAdapter | unmatched — not counted | — | listed in scope | no |
| Security Assessment - Stable VaultsCertora May 2026 | AdiAdapter | unmatched — not counted | — | listed in scope | no |
| Security Assessment - Stable VaultsCertora May 2026 | AccountingChainGateway | unmatched — not counted | — | listed in scope | no |
| Security Assessment - Stable VaultsCertora May 2026 | StableVault | unmatched — not counted | — | listed in scope | no |
| Security Assessment - Stable VaultsCertora May 2026 | FundsHandler | unmatched — not counted | — | listed in scope | no |
| Security Assessment - Stable VaultsCertora May 2026 | EarningChainGateway | unmatched — not counted | — | listed in scope | no |
| Security Assessment - Stable VaultsCertora May 2026 | IouToken | unmatched — not counted | — | listed in scope | no |
| Security Assessment - Stable VaultsCertora May 2026 | IouTokenManager | unmatched — not counted | — | listed in scope | no |
| Security Assessment - Stable VaultsCertora May 2026 | Allocator | unmatched — not counted | — | listed in scope | no |
| Security Assessment - Stable VaultsCertora May 2026 | BaseChainGateway | unmatched — not counted | — | listed in scope | no |
| Security Assessment - Stable VaultsCertora May 2026 | LocalBalanceAggregator | unmatched — not counted | — | listed in scope | no |
| Security Assessment - Stable VaultsCertora May 2026 | AssetLib | unmatched — not counted | — | listed in scope | no |
| Security Assessment - Stable VaultsCertora May 2026 | MathLib | unmatched — not counted | — | listed in scope | no |
| Security Assessment - Stable VaultsCertora May 2026 | RateLimitBucketLib | unmatched — not counted | — | listed in scope | no |
| Security Assessment - Stable VaultsCertora May 2026 | Multicall | unmatched — not counted | — | listed in scope | no |
| Security Assessment - Stable VaultsCertora May 2026 | RescuableNative | unmatched — not counted | — | listed in scope | no |
| Security Assessment - Stable VaultsCertora May 2026 | RescuableToken | unmatched — not counted | — | listed in scope | no |
| Security Assessment - Stable VaultsCertora May 2026 | TransferHelperClient | unmatched — not counted | — | listed in scope | no |
| Security Assessment - Stable VaultsCertora May 2026 | AssetRegistry | unmatched — not counted | — | listed in scope | no |
| Security Assessment - Stable VaultsCertora May 2026 | Swapper | unmatched — not counted | — | listed in scope | no |
| Security Assessment - Stable VaultsCertora May 2026 | SlippageCoverageVault | unmatched — not counted | — | listed in scope | no |
| Security Assessment - Stable VaultsCertora May 2026 | PolicyRegistry | unmatched — not counted | — | listed in scope | no |
| Security Assessment - Stable VaultsCertora May 2026 | TransferHelper | unmatched — not counted | — | listed in scope | no |
| Security Assessment - Stable VaultsCertora May 2026 | WithdrawalPolicy | unmatched — not counted | — | listed in scope | no |
| Security Assessment - Stable VaultsCertora May 2026 | OwnedMulticall | unmatched — not counted | — | listed in scope | no |
| Security Assessment - Stable VaultsCertora May 2026 | EarningChainStateSchemaV1 | unmatched — not counted | — | listed in scope | no |
| Security Assessment - Stable VaultsCertora May 2026 | EarningChainStateProvider | unmatched — not counted | — | listed in scope | no |
| Security Assessment - Stable VaultsCertora May 2026 | DepositPolicy | unmatched — not counted | — | listed in scope | no |
| Security Assessment - Stable VaultsCertora May 2026 | FundsBridgingPolicy | unmatched — not counted | — | listed in scope | no |
| Security Assessment - Stable VaultsCertora May 2026 | WithdrawalExecutionPolicy | unmatched — not counted | — | listed in scope | no |
| Security Assessment - Stable VaultsCertora May 2026 | GlobalRateLimitedPolicy | unmatched — not counted | — | listed in scope | no |
| Security Assessment - Stable VaultsCertora May 2026 | Constants | unmatched — not counted | — | listed in scope | no |
| Security Assessment - Stable VaultsCertora May 2026 | Errors | unmatched — not counted | — | listed in scope | no |
| Security Assessment - Stable VaultsCertora May 2026 | ChainBalanceOracle | unmatched — not counted | — | listed in scope | no |
| Security Assessment - Stable VaultsCertora May 2026 | ChainlinkChainBalanceOracleAdapter | unmatched — not counted | — | listed in scope | no |
| Security Assessment - Stable VaultsCertora May 2026 | ChainlinkL2ChainBalanceOracleAdapter | unmatched — not counted | — | listed in scope | no |
| Security Assessment - Stable VaultsCertora May 2026 | L2ChainlinkOracleAdapter | unmatched — not counted | — | listed in scope | no |
| Security Assessment - Stable VaultsCertora May 2026 | ChainlinkL2PriceOracleAdapter | unmatched — not counted | — | listed in scope | no |
| Security Assessment - Stable VaultsCertora May 2026 | ChainlinkPriceOracleAdapter | unmatched — not counted | — | listed in scope | no |
| Security Assessment - Stable VaultsCertora May 2026 | PriceOracle | unmatched — not counted | — | listed in scope | no |
| Security Assessment - Stable VaultsCertora Apr 2026 | CcipAdapter | unmatched — not counted | — | listed in scope table | no |
| Security Assessment - Stable VaultsCertora Apr 2026 | BaseBridgeAdapter | unmatched — not counted | — | listed in scope table | no |
| Security Assessment - Stable VaultsCertora Apr 2026 | BridgeParamsCodec | unmatched — not counted | — | listed in scope table | no |
| Security Assessment - Stable VaultsCertora Apr 2026 | AccountingChainGateway | unmatched — not counted | — | listed in scope table | no |
| Security Assessment - Stable VaultsCertora Apr 2026 | StableVault | unmatched — not counted | — | listed in scope table | no |
| Security Assessment - Stable VaultsCertora Apr 2026 | FundsHandler | unmatched — not counted | — | listed in scope table | no |
| Security Assessment - Stable VaultsCertora Apr 2026 | EarningChainGateway | unmatched — not counted | — | listed in scope table | no |
| Security Assessment - Stable VaultsCertora Apr 2026 | IouToken | unmatched — not counted | — | listed in scope table | no |
| Security Assessment - Stable VaultsCertora Apr 2026 | IouTokenManager | unmatched — not counted | — | listed in scope table | no |
| Security Assessment - Stable VaultsCertora Apr 2026 | Allocator | unmatched — not counted | — | listed in scope table | no |
| Security Assessment - Stable VaultsCertora Apr 2026 | BaseChainGateway | unmatched — not counted | — | listed in scope table | no |
| Security Assessment - Stable VaultsCertora Apr 2026 | LocalBalanceAggregator | unmatched — not counted | — | listed in scope table | no |
| Security Assessment - Stable VaultsCertora Apr 2026 | AssetLib | unmatched — not counted | — | listed in scope table | no |
| Security Assessment - Stable VaultsCertora Apr 2026 | MathLib | unmatched — not counted | — | listed in scope table | no |
| Security Assessment - Stable VaultsCertora Apr 2026 | Multicall | unmatched — not counted | — | listed in scope table | no |
| Security Assessment - Stable VaultsCertora Apr 2026 | RescuableNative | unmatched — not counted | — | listed in scope table | no |
| Security Assessment - Stable VaultsCertora Apr 2026 | RescuableToken | unmatched — not counted | — | listed in scope table | no |
| Security Assessment - Stable VaultsCertora Apr 2026 | TransferHelperClient | unmatched — not counted | — | listed in scope table | no |
| Security Assessment - Stable VaultsCertora Apr 2026 | AssetRegistry | unmatched — not counted | — | listed in scope table | no |
| Security Assessment - Stable VaultsCertora Apr 2026 | Swapper | unmatched — not counted | — | listed in scope table | no |
| Security Assessment - Stable VaultsCertora Apr 2026 | TransferHelper | unmatched — not counted | — | listed in scope table | no |
| Security Assessment - Stable VaultsCertora Apr 2026 | WithdrawalPolicy | unmatched — not counted | — | listed in scope table | no |
| Security Assessment - Stable VaultsCertora Apr 2026 | OwnedMulticall | unmatched — not counted | — | listed in scope table | no |
| Security Assessment - Stable VaultsCertora Apr 2026 | EarningChainStateSchemaV1 | unmatched — not counted | — | listed in scope table | no |
| Security Assessment - Stable VaultsCertora Apr 2026 | EarningChainStateProvider | unmatched — not counted | — | listed in scope table | no |
| Security Assessment - Stable VaultsCertora Apr 2026 | Constants | unmatched — not counted | — | listed in scope table | no |
| Security Assessment - Stable VaultsCertora Apr 2026 | Errors | unmatched — not counted | — | listed in scope table | no |
| Security Assessment - Stable VaultsCertora Apr 2026 | ChainBalanceOracle | unmatched — not counted | — | listed in scope table | no |
| Security Assessment - Stable VaultsCertora Apr 2026 | ChainlinkChainBalanceOracleAdapter | unmatched — not counted | — | listed in scope table | no |
| Security Assessment - Stable VaultsCertora Apr 2026 | ChainlinkL2ChainBalanceOracleAdapter | unmatched — not counted | — | listed in scope table | no |
| Security Assessment - Stable VaultsCertora Apr 2026 | L2ChainlinkOracleAdapter | unmatched — not counted | — | listed in scope table | no |
| Security Assessment - Stable VaultsCertora Apr 2026 | ChainlinkL2PriceOracleAdapter | unmatched — not counted | — | listed in scope table | no |
| Security Assessment - Stable VaultsCertora Apr 2026 | ChainlinkPriceOracleAdapter | unmatched — not counted | — | listed in scope table | no |
| Security Assessment - Stable VaultsCertora Apr 2026 | PriceOracle | unmatched — not counted | — | listed in scope table | no |
| Code Assessment - Stable VaultsChainSecurity Mar 2026 | BaseBridgeAdapter | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity Mar 2026 | CcipAdapter | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity Mar 2026 | Allocator | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity Mar 2026 | BaseChainGateway | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity Mar 2026 | LocalBalanceAggregator | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity Mar 2026 | AccountingChainGateway | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity Mar 2026 | FundsHandler | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity Mar 2026 | StableVault | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity Mar 2026 | EarningChainGateway | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity Mar 2026 | IouToken | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity Mar 2026 | IouTokenManager | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity Mar 2026 | IAccountingChainGateway | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity Mar 2026 | IAllocator | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity Mar 2026 | IAssetRegistry | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity Mar 2026 | IBridgeAdapter | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity Mar 2026 | ICcipBridgeAdapter | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity Mar 2026 | IChainBalanceOracle | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity Mar 2026 | IChainBalanceOracleAdapter | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity Mar 2026 | IChainGateway | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity Mar 2026 | IEarningChainGateway | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity Mar 2026 | IEarningChainStateProvider | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity Mar 2026 | IFundsHandler | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity Mar 2026 | IIouToken | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity Mar 2026 | IIouTokenManager | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity Mar 2026 | IMintableBurnableIERC20 | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity Mar 2026 | IMulticall | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity Mar 2026 | IPriceOracle | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity Mar 2026 | IPriceOracleAdapter | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity Mar 2026 | IRescuableNative | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity Mar 2026 | IRescuableToken | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity Mar 2026 | IStableVault | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity Mar 2026 | ISwapper | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity Mar 2026 | ITransferHelper | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity Mar 2026 | IWithdrawalPolicy | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity Mar 2026 | AssetLib | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity Mar 2026 | MathLib | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity Mar 2026 | Multicall | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity Mar 2026 | RescuableNative | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity Mar 2026 | RescuableToken | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity Mar 2026 | TransferHelperClient | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity Mar 2026 | ChainBalanceOracle | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity Mar 2026 | ChainlinkChainBalanceOracleAdapter | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity Mar 2026 | ChainlinkL2ChainBalanceOracleAdapter | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity Mar 2026 | L2ChainlinkOracleAdapter | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity Mar 2026 | ChainlinkL2PriceOracleAdapter | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity Mar 2026 | ChainlinkPriceOracleAdapter | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity Mar 2026 | PriceOracle | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity Mar 2026 | AssetRegistry | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity Mar 2026 | EarningChainStateProvider | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity Mar 2026 | EarningChainStateSchemaV1 | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity Mar 2026 | OwnedMulticall | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity Mar 2026 | Swapper | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity Mar 2026 | TransferHelper | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity Mar 2026 | WithdrawalPolicy | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity Mar 2026 | Constants | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity Mar 2026 | Errors | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity Mar 2026 | RolesConfig | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity Mar 2026 | AccessManagerBaseSetup | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity Mar 2026 | AccessManagerAccountingChainSetup | unmatched — not counted | — | listed in scope | no |
| Code Assessment - Stable VaultsChainSecurity Mar 2026 | AccessManagerEarningChainSetup | unmatched — not counted | — | listed in scope | no |
| Security Assessment - Stable VaultsCertora Jan 2026 | ATokenVaultMerklRewardClaimer | unmatched — not counted | — | listed in scope | no |
| Security Assessment - Stable VaultsCertora Jan 2026 | ATokenVaultStorage | unmatched — not counted | — | listed in scope | no |
| Security Assessment - Stable VaultsCertora Jan 2026 | IATokenVaultMerklRewardClaimer | unmatched — not counted | — | listed in scope | no |
| Security Assessment - Stable VaultsCertora Jan 2026 | DistributorInterface | unmatched — not counted | — | listed in scope | no |
| Security Assessment - Stable VaultsCertora Jan 2026 | IAcrossSpokePoolV3 | unmatched — not counted | — | listed in scope | no |
| Security Assessment - Stable VaultsCertora Jan 2026 | IAcrossV3Receiver | unmatched — not counted | — | listed in scope | no |
| Security Assessment - Stable VaultsCertora Jan 2026 | CcipAdapter | unmatched — not counted | — | listed in scope | no |
| Security Assessment - Stable VaultsCertora Jan 2026 | BaseBridgeAdapter | unmatched — not counted | — | listed in scope | no |
| Security Assessment - Stable VaultsCertora Jan 2026 | AccountingChainGateway | unmatched — not counted | — | listed in scope | no |
| Security Assessment - Stable VaultsCertora Jan 2026 | StableVault | unmatched — not counted | — | listed in scope | no |
| Security Assessment - Stable VaultsCertora Jan 2026 | FundsHandler | unmatched — not counted | — | listed in scope | no |
| Security Assessment - Stable VaultsCertora Jan 2026 | EarningChainGateway | unmatched — not counted | — | listed in scope | no |
| Security Assessment - Stable VaultsCertora Jan 2026 | IouToken | unmatched — not counted | — | listed in scope | no |
| Security Assessment - Stable VaultsCertora Jan 2026 | IouTokenManager | unmatched — not counted | — | listed in scope | no |
| Security Assessment - Stable VaultsCertora Jan 2026 | Allocator | unmatched — not counted | — | listed in scope | no |
| Security Assessment - Stable VaultsCertora Jan 2026 | BaseChainGateway | unmatched — not counted | — | listed in scope | no |
| Security Assessment - Stable VaultsCertora Jan 2026 | AssetLib | unmatched — not counted | — | listed in scope | no |
| Security Assessment - Stable VaultsCertora Jan 2026 | MathLib | unmatched — not counted | — | listed in scope | no |
| Security Assessment - Stable VaultsCertora Jan 2026 | Multicall | unmatched — not counted | — | listed in scope | no |
| Security Assessment - Stable VaultsCertora Jan 2026 | RescuableAssets | unmatched — not counted | — | listed in scope | no |
| Security Assessment - Stable VaultsCertora Jan 2026 | TransferHelperClient | unmatched — not counted | — | listed in scope | no |
| Security Assessment - Stable VaultsCertora Jan 2026 | AssetRegistry | unmatched — not counted | — | listed in scope | no |
| Security Assessment - Stable VaultsCertora Jan 2026 | Swapper | unmatched — not counted | — | listed in scope | no |
| Security Assessment - Stable VaultsCertora Jan 2026 | TransferHelper | unmatched — not counted | — | listed in scope | no |
| Security Assessment - Stable VaultsCertora Jan 2026 | WithdrawalPolicy | unmatched — not counted | — | listed in scope | no |
| Security Assessment - Stable VaultsCertora Jan 2026 | Constants | unmatched — not counted | — | listed in scope | no |
| Security Assessment - Stable VaultsCertora Jan 2026 | Errors | unmatched — not counted | — | listed in scope | no |
| Security Audit - ERC-6900 ModulesQuantstamp Apr 17 2026 | MultiSigValidationModule | unmatched — not counted | — | listed in scope files and findings | no |
| Security Audit - ERC-6900 ModulesQuantstamp Apr 17 2026 | AddressBookModule | unmatched — not counted | — | listed in scope files and findings | no |
| Security Audit - ERC-6900 ModulesQuantstamp Apr 17 2026 | RecipientAddressLib | unmatched — not counted | — | listed in scope files and findings | no |
| Security Audit - ERC-6900 ModulesQuantstamp Apr 17 2026 | BaseModule | unmatched — not counted | — | listed in scope files | no |
| Security Audit - ERC-6900 ModulesQuantstamp Apr 17 2026 | IMultiSigValidationModule | unmatched — not counted | — | listed in scope files | no |
| Security Audit - ERC-6900 ModulesQuantstamp Apr 17 2026 | IAddressBookModule | unmatched — not counted | — | listed in scope files | no |
| Security Audit - ERC-6900 ModulesQuantstamp Apr 17 2026 | Structs | unmatched — not counted | — | listed in scope files | no |
| Security Audit - ERC-6900 ModulesQuantstamp Apr 17 2026 | Constants | unmatched — not counted | — | listed in scope files | no |
| Security Audit - ERC-6900 ModulesQuantstamp Apr 17 2026 | CastLib | unmatched — not counted | — | listed in scope files | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x06002e...1e536a` | HubInstance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 50 |
| upstream | 2 |
| standard_library | 1 |
| needs_review | 36 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 107
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 1710 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=91, low=4, medium=12
- Match method counts: n/a

Zero-match audit list:

- [16941] Collaborative Audit ReportMay 14 2026
- [16942] Security AuditFeb 19 2026
- [16943] Security Audit - Tokenization SpokeFeb 10 2026
- [16944] Security ReviewFeb 10 2026
- [16945] Collaborative Audit ReportFeb 05 2026
- [16947] Security ReviewMar 31 2026
- [16948] Supervised Security ReviewMar 30 2026savant
- [16949] Security Assessment & Formal Verification ReportMar 29 2026
- [16950] Security ReviewMar 27 2026
- [16951] Security Audit ReportMar 26 2026
- [16952] Audit Contest ReportMar 26 2026
- [16953] Security ReviewNov 29 2025
- [16955] Security Assessment & Formal Verification ReportNov 18 2025
- [16956] Security Audit ReportNov 18 2025
- [16957] Supervised Security ReviewNov 18 2025savant
- [16958] Security ReviewNov 16 2025.st0{clip-path:url(#SVGID_00000012464508073868947960000011070647625777785502_);}
- [16959] Security Audit ReportJul 18 2025
- [16960] Security ReviewJul 17 2025stermi
- [16961] Smart Contract AuditJul 17 2025
- [16962] Security AssessmentJul 14 2025
- [16963] Security ReviewJun 12 2025.st0{clip-path:url(#SVGID_00000012464508073868947960000011070647625777785502_);}
- [16964] Security AssessmentJun 11 2025
- [16965] Smart Contract Security Audit ReportJun 11 2025stermi
- [16966] Security ReviewMay 13 2025
- [16967] Security Audit Report - V3.1-V3.3Aug 8 2025ottersec
- [16968] Security Audit Report - Core V3.0.2Jun 18 2025spearbit
- [16969] Security Audit Report - Core V3.1-V3.3Jun 18 2025spearbit
- [16970] Security Audit Report - Periphery V3.0.2Jun 18 2025spearbit
- [16971] Security Assessment & Formal Verification Report - Core V3.0.2Apr 2025
- [16972] Security Assessment & Formal Verification Report - Core V3.1-V3.3Apr 2025
- [16973] Security Assessment & Formal Verification Report - Periphery V3.0.2Apr 2025
- [16974] Smart Contract Security Audit ReportMay 19 2025
- [16975] Smart Contract Security Audit ReportMay 19 2025ackee
- [16977] Audit Contest ReportJan 22 2025
- [16978] Security ReviewSep 30 2024
- [16979] Security Assessment & Formal Verification Report - Liquid eModesSep 19 2024
- [16980] Security ReviewSep 15 2024
- [16981] Security Audit Report - Liquid eModesSep 12 2024
- [16982] Security Assessment & Formal Verification Report - Stable Rate RemovalSep 10 2024
- [16983] GHO Stability Module Contract ReviewOct 23 2023
- [16984] GHO Smart Contract Security Assessment ReportJul 06 2023
- [16985] GHO Steward Contract ReviewJun 13 2023
- [16986] GHO Steward Security Assessment & Formal Verification ReportMar 14 2023
- [16987] GHO Smart Contract AuditMar 01 2023
- [16988] GHO Audit V2Nov 10 2022
- [16989] GHO AuditAug 12 2022
- [16990] Formal Verification of Aave V3 upgrade to V3.0.1Nov 17 2022 - Dec 15 2022
- [16991] Formal Verification of Aave Protocol V3Nov 12 2021 - Jan 24 2022
- [16992] Light Deployment Smart Contract Audit ReportMar 16 2021
- [16993] Smart Contract Security AssessmentJan 2021
- [16994] Smart Contract Audit ReportSep 2020
- [16995] Smart Contract Security AssessmentSep 2020
- [16996] Smart Contract Audit ReportSep 2020
- [16997] Smart Contract Audit ReportSep 2020
- [17000] 2026-02-24_Aave-V4_Blackthorn.pdf
- [17001] 2021-11-01_OpenZeppelin_AaveV3.pdf
- [17002] 2022-01-07_TrailOfBits_AaveV3.pdf
- [17003] 2022-01-14_PeckShield_AaveV3.pdf
- [17005] 2022-01-27_ABDK_AaveV3.pdf
- [17006] 2022-01-27_SigmaPrime_AaveV3.pdf
- [17007] 2022-12-09_PeckShield_AaveV3-0-1.pdf
- [17008] 2022-12-23_SigmaPrime_AaveV3-0-1.pdf
- [17010] 2023-03_Certora_AaveV3-0-2.pdf
- [17011] 2023-04-19_SigmaPrime_AaveV3-0-2.pdf
- [17012] 2024-04-30_Certora_AaveV3.1.pdf
- [17013] 2024-05-02_MixBytes_AaveV3.1.pdf
- [17014] 2024-06-02_Cantina-contest-AaveV3.1.pdf
- [17015] 2024-09-11_Certora_StataTokenV2.pdf
- [17016] 2024-10-22_StErMi_Aave-v3.3.md
- [17017] 2024-10-22_StErMi_Aave-v3.3.pdf
- [17018] 2024-11-07_Certora_Aave-v3.3.0.pdf
- [17019] 2024-12-05_MixBytes_AaveStataToken(watoken)SecurityAuditReport.pdf
- [17020] 2025-01-20_Certora_CollectorRev6.pdf
- [17022] 2025-01-29_Oxorio_Aave-v3.3.0.pdf
- [17024] 2025-06-11_Certora_Aave-v3.4_AIP_Report.pdf
- [17026] 2025-06-11_Stermi_Aave-v3.4_AIP_Report.md
- [17029] 2025-07-17_StErMi_Aave-v3.5.pdf
- [17034] RewardsController.pdf
- [17035] StakeToken.pdf
- [17036] Umbrella.pdf
- [17037] UmbrellaBatchHelper.pdf
- [17038] REPORT Aave RewardsController.md
- [17039] REPORT Aave StakeToken.md
- [17040] REPORT Aave Umbrella.md
- [17041] REPORT Aave UmbrellaBatchHelper.md
- [17042] 2023-09-20_GSM_Stermi.pdf
- [17043] 2024-06-11_UpgradeableGHO_Certora.pdf
- [17044] 2024-09-15_ModularGhoStewards_Certora.pdf
- [17046] Certora-FV-aave-v2-03-12-2020.pdf
- [17047] PeckShield-aave-v2-03-12-2020-CN.pdf
- [17077] 2025-05-30_Certora_Aave_Horizon-v3.3.0.pdf
- [17078] 2025-06-25_StErMi_Aave_Horizon-v3.3.0.pdf
- [26865] Formal Verification - Tokenization SpokeCertora Apr 13 2026
- [26866] Formal Verification - HubCertora Mar 09 2026
- [26867] Formal Verification - LibrariesCertora Mar 09 2026
- [26868] Formal Verification - SpokeCertora Mar 09 2026
- [26874] Stable Vault ReportJosselin Feist Jul 2026Josselin Feist
- [26875] Stable Vault Report - Extension 1Josselin Feist Jul 2026Josselin Feist
- [26876] Stable Vault Report - Extension 2Josselin Feist Jul 2026Josselin Feist
- [26877] Stable Vault Report - Extension 3Josselin Feist Jul 2026Josselin Feist
- [26878] Security Assessment - a.DICertora Jun 2026
- [26879] Code Assessment - Stable VaultsChainSecurity May 2026
- [26880] Security Assessment - Stable VaultsCertora May 2026
- [26881] Security Assessment - Stable VaultsCertora Apr 2026
- [26882] Code Assessment - Stable VaultsChainSecurity Mar 2026
- [26883] Security Assessment - Stable VaultsCertora Jan 2026
- [26884] Security Audit - ERC-6900 ModulesQuantstamp Apr 17 2026

Fork inheritance lineage and inherited audits are included when available.
