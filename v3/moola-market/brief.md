# Agentic Audit Brief: Moola Market

## Export Authority

- Production state: **published scope**
- Raw selected rows: 13 across 3 audit(s)
- Eligible audit results: 3 (3 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Moola Market (`moola-market`)
- Website: [https://moola.market](https://moola.market)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: celo
- Contract surface: 20 unique implementations (20 raw deployments)
- Coverage basis: 6/15 confirmed own live verified implementations (40.0%); conservative 40.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,139,898.66
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Moola Market. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 15 contract row(s) across celo. Structural roles: 6 core, 6 unclassified, 3 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 15
- Structural roles: core (6), unclassified (6), supporting (3)
- Contract kinds: contract (13), unclassified (2)
- Detected standards: erc20 (3), ownable (3)
- Frameworks: openzeppelin (8), foundry (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 15 contracts are derived from known codebases. 15 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x313bc8...943e5c`, chain 42220)
- UnnamedContract (`0x801443...ece2df`, chain 42220)
- UnnamedContract (`0x866fb3...36bac7`, chain 42220)
- UnnamedContract (`0x923182...28d3c3`, chain 42220)
- UnnamedContract (`0xd7f771...7b25ed`, chain 42220)
- ATokensAndRatesHelper (`0x22060a...4c26f1`, chain 42220)
- LendingPoolAddressesProviderRegistry (`0xf03982...ab7491`, chain 42220)
- LendingPoolCollateralManager (`0xe99ef3...df399e`, chain 42220)
- LendingRateOracle (`0xaa6e0f...54ee9b`, chain 42220)
- MooToken (`0x177002...8c131e`, chain 42220)
- ReserveLogic (`0x8e6779...fd4f51`, chain 42220)
- StableAndVariableTokensHelper (`0xec9817...0fda87`, chain 42220)
- StableDebtToken (`0xacdb7b...b689da`, chain 42220)
- ValidationLogic (`0x2b9d16...13151a`, chain 42220)
- VariableDebtToken (`0x0301cf...445c2c`, chain 42220)

## Contract Surface Quality

- Indexed contracts: 15; live-surface contracts included: 15 (15 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 20/21 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 6/15 (40.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 20 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 20 of 20 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 6/15
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 20
- Raw deployments: 20
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 6 match-unverified
- Tier 1 coverage: 26.7% (OpenZeppelin)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 6 | 40.0% | 2021-02 |
| OpenZeppelin | Tier 1 | 4 | 26.7% | 2020-01 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AToken | unknown | project_anchor | own_supporting | 0 | celo | unit-247950 | `0x55bfce...1141e6` | ✅ Audited |
| DefaultReserveInterestRateStrategy | unknown | project_anchor | own_supporting | 0 | celo | unit-247964 | `0xb3072f...ea0018` | ✅ Audited |
| LendingPoolAddressesProvider | unknown | project_anchor | own_supporting | 0 | celo | unit-247966 | `0xd10880...88b332` | ✅ Audited |
| LendingPoolConfigurator | unknown | project_anchor | own_supporting | 0 | celo | unit-247948 | `0x2cca74...1b1f1c` | ✅ Audited |
| LendingRateOracle | unknown | project_anchor | own_supporting | 0 | celo | unit-247959 | `0xaa6e0f...54ee9b` | ✅ Audited |
| WalletBalanceProvider | unknown | project_anchor | own_supporting | 0 | celo | unit-247957 | `0x931cbb...62cb49` | ✅ Audited |

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ATokensAndRatesHelper | unknown | project_anchor | own_supporting | 0 | celo | unit-247946 | `0x22060a...4c26f1` | ⚠️ Unaudited |
| LendingPoolAddressesProviderRegistry | unknown | project_anchor | own_supporting | 0 | celo | unit-247974 | `0xf03982...ab7491` | ⚠️ Unaudited |
| LendingPoolCollateralManager | unknown | project_anchor | own_supporting | 0 | celo | unit-247970 | `0xe99ef3...df399e` | ⚠️ Unaudited |
| MooToken | token | project_anchor | own_supporting | 0 | celo | unit-247945 | `0x177002...8c131e` | ⚠️ Unaudited |
| ReserveLogic | unknown | project_anchor | own_supporting | 0 | celo | unit-247954 | `0x8e6779...fd4f51` | ⚠️ Unaudited |
| StableAndVariableTokensHelper | unknown | project_anchor | own_supporting | 0 | celo | unit-247972 | `0xec9817...0fda87` | ⚠️ Unaudited |
| StableDebtToken | unknown | project_anchor | own_supporting | 0 | celo | unit-247961 | `0xacdb7b...b689da` | ⚠️ Unaudited |
| ValidationLogic | unknown | project_anchor | own_supporting | 0 | celo | unit-247947 | `0x2b9d16...13151a` | ⚠️ Unaudited |
| VariableDebtToken | unknown | project_anchor | own_supporting | 0 | celo | unit-247944 | `0x0301cf...445c2c` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-247949 | `0x313bc8...943e5c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-247952 | `0x801443...ece2df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-247953 | `0x866fb3...36bac7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-247955 | `0x923182...28d3c3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-247968 | `0xd7f771...7b25ed` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view](https://drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view) | unknown | Audit | 2021-02 | stale | Direct | contract_name | matched | 6 | 0 | 0 | 69 | high |
| [ToB_aave_protocol_final_report.pdf](https://github.com/moolamarket/moola/blob/main/aave-protocol/docs/ToB_aave_protocol_final_report.pdf) | OpenZeppelin | Audit | 2019-09 | stale | Direct | contract_name | matched | 3 | 0 | 0 | 10 | high |
| [www.openzeppelin.com/news/aave-protocol-audit](https://www.openzeppelin.com/news/aave-protocol-audit) | OpenZeppelin | Audit | 2020-01 | stale | Direct | contract_name | matched | 4 | 0 | 0 | 13 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3163] drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view — matched: All Solidity files listed in the Directory Structure section are considered in scope. The audit date is the report delivery date: February 21st, 2021.
- [11822] ToB_aave_protocol_final_report.pdf — matched: Extracted contracts from scope description, findings targets, and code quality recommendations. Audit date from cover page and changelog.
- [11823] www.openzeppelin.com/news/aave-protocol-audit — matched: All Solidity contracts in the aave-tech/dlp/contracts/contracts folder were in scope. The report lists many contracts by name. Audit date is January 15, 2020 from the title.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | AddressStorage | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | LendingPoolAddressesProvider | own contract | LendingPoolAddressesProvider (selected) `0xd10880...88b332` — deployed 2021-09-23 02:41:09+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | LendingPoolParametersProvider | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | UintStorage | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | FeeProvider | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | TokenDistributor | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | FlashLoanReceiverBase | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | IFlashLoanReceiver | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | IChainlinkAggregator | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | IFeeProvider | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | IKyberNetworkProxyInterface | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | ILendingPoolAddressesProvider | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | ILendingRateOracle | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | IPriceOracle | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | IPriceOracleGetter | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | IReserveInterestRateStrategy | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | DefaultReserveInterestRateStrategy | own contract | DefaultReserveInterestRateStrategy (selected) `0xb3072f...ea0018` — deployed 2021-09-23 02:47:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | LendingPool | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | LendingPoolConfigurator | own contract | LendingPoolConfigurator (selected) `0x2cca74...1b1f1c` — deployed 2021-09-23 02:43:39+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | LendingPoolCore | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | LendingPoolDataProvider | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | LendingPoolLiquidationManager | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | OptimizedReserveInterestRateStrategy | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | CoreLibrary | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | EthAddressLib | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | WadRayMath | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | AdminUpgradeabilityProxy | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | BaseAdminUpgradeabilityProxy | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | BaseUpgradeabilityProxy | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | Initializable | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | InitializableAdminUpgradeabilityProxy | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | InitializableUpgradeabilityProxy | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | Proxy | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | UpgradeabilityProxy | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | VersionedInitializable | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | CeloProxyPriceProvider | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | ChainlinkProxyPriceProvider | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | IERC20DetailedBytes | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | WalletBalanceProvider | own contract | WalletBalanceProvider (selected) `0x931cbb...62cb49` — deployed 2021-09-23 02:49:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | MockFlashLoanReceiver | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | MockAggregatorBAT | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | MockAggregatorBase | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | MockAggregatorDAI | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | MockAggregatorKNC | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | MockAggregatorLEND | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | MockAggregatorLINK | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | MockAggregatorMANA | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | MockAggregatorMKR | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | MockAggregatorREP | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | MockAggregatorSUSD | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | MockAggregatorTUSD | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | MockAggregatorUSDC | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | MockAggregatorUSDT | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | MockAggregatorWBTC | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | MockAggregatorZRX | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | GenericOracleI | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | LendingRateOracle | own contract | LendingRateOracle (selected) `0xaa6e0f...54ee9b` — deployed 2021-09-23 02:44:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | PriceOracle | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | MintableERC20 | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | MockBAT | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | MockDAI | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | MockKNC | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | MockLEND | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | MockLINK | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | MockMANA | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | MockMKR | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | MockREP | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | MockSUSD | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | MockTUSD | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | MockUSDC | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | MockUSDT | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | MockWBTC | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | MockZRX | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | MockLendingPoolCore | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | AToken | own contract | AToken (selected) `0x55bfce...1141e6` — deployed 2021-09-23 02:47:14+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ToB_aave_protocol_final_report.pdf | LendingPoolCore | unmatched — not counted | — | listed in scope and findings | no |
| ToB_aave_protocol_final_report.pdf | LendingPoolAddressesProvider | own contract | LendingPoolAddressesProvider (selected) `0xd10880...88b332` — deployed 2021-09-23 02:41:09+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ToB_aave_protocol_final_report.pdf | NetworkMetadataProvider | unmatched — not counted | — | listed in scope and findings | no |
| ToB_aave_protocol_final_report.pdf | FeeProvider | unmatched — not counted | — | listed in scope and findings | no |
| ToB_aave_protocol_final_report.pdf | LendingPool | unmatched — not counted | — | listed in scope and findings | no |
| ToB_aave_protocol_final_report.pdf | DefaultReserveInterestRateStrategy | own contract | DefaultReserveInterestRateStrategy (selected) `0xb3072f...ea0018` — deployed 2021-09-23 02:47:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ToB_aave_protocol_final_report.pdf | AToken | own contract | AToken (selected) `0x55bfce...1141e6` — deployed 2021-09-23 02:47:14+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ToB_aave_protocol_final_report.pdf | CoreLibrary | unmatched — not counted | — | mentioned in findings and code quality | no |
| ToB_aave_protocol_final_report.pdf | AddressStorage | unmatched — not counted | — | mentioned in finding 3 | no |
| ToB_aave_protocol_final_report.pdf | UintStorage | unmatched — not counted | — | mentioned in finding 3 | no |
| ToB_aave_protocol_final_report.pdf | IReserveInterestRateStrategy | unmatched — not counted | — | mentioned in finding 10 | no |
| ToB_aave_protocol_final_report.pdf | ILendingRateOracle | unmatched — not counted | — | mentioned in finding 10 | no |
| ToB_aave_protocol_final_report.pdf | INetworkMetadataProvider | unmatched — not counted | — | mentioned in code quality | no |
| www.openzeppelin.com/news/aave-protocol-audit | LendingPool | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/aave-protocol-audit | LendingPoolCore | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/aave-protocol-audit | LendingPoolAddressesProvider | own contract | LendingPoolAddressesProvider (selected) `0xd10880...88b332` — deployed 2021-09-23 02:41:09+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.openzeppelin.com/news/aave-protocol-audit | LendingPoolConfigurator | own contract | LendingPoolConfigurator (selected) `0x2cca74...1b1f1c` — deployed 2021-09-23 02:43:39+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.openzeppelin.com/news/aave-protocol-audit | LendingPoolLiquidationManager | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/aave-protocol-audit | LendingPoolDataProvider | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/aave-protocol-audit | LendingPoolParametersProvider | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/aave-protocol-audit | FeeProvider | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/aave-protocol-audit | NetworkMetadataProvider | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/aave-protocol-audit | DefaultReserveInterestRateStrategy | own contract | DefaultReserveInterestRateStrategy (selected) `0xb3072f...ea0018` — deployed 2021-09-23 02:47:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.openzeppelin.com/news/aave-protocol-audit | AToken | own contract | AToken (selected) `0x55bfce...1141e6` — deployed 2021-09-23 02:47:14+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.openzeppelin.com/news/aave-protocol-audit | FlashLoanReceiverBase | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/aave-protocol-audit | CoreLibrary | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/aave-protocol-audit | WadRayMath | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/aave-protocol-audit | IFlashLoanReceiver | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/aave-protocol-audit | ILendingRateOracle | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/aave-protocol-audit | IPriceOracle | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| celo | `0x22060a...4c26f1` | ATokensAndRatesHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0xf03982...ab7491` | LendingPoolAddressesProviderRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0xe99ef3...df399e` | LendingPoolCollateralManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0x177002...8c131e` | MooToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0x8e6779...fd4f51` | ReserveLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0xec9817...0fda87` | StableAndVariableTokensHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0xacdb7b...b689da` | StableDebtToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0x2b9d16...13151a` | ValidationLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0x0301cf...445c2c` | VariableDebtToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 15 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 13 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 92 unmatched
- Matched-own operational status: 13 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3
- Match method counts: unique_name=13

Fork inheritance lineage and inherited audits are included when available.
