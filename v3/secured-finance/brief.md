# Agentic Audit Brief: Secured Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 12 across 2 audit(s)
- Eligible audit results: 5 (2 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Secured Finance (`secured-finance`)
- Website: [https://secured.finance/](https://secured.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 9 unique implementations (9 raw deployments)
- Coverage basis: 4/6 confirmed own live verified implementations (66.7%); conservative 66.7% with 0 needs-review implementation(s)
- DeFi Llama TVL: $589,511.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Secured Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 9 contract row(s) across ethereum, polygon. Structural roles: 6 core, 2 supporting, 1 unclassified. 7 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 9
- Structural roles: core (6), supporting (2), unclassified (1)
- Contract kinds: contract (5), abstract (3), unclassified (1)
- Detected standards: erc1967proxy (3), ownable (3), accesscontrol (2), erc165 (2), multicall (2), pausable (1)
- Frameworks: openzeppelin (8), openzeppelin-upgradeable (7), chainlink (3)
- Upgradeable-pattern rows: 7

## Fork Analysis

0 of 9 contracts are derived from known codebases. 9 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x35e9d8...779fe2`, chain 1)
- UnnamedContract (`0x581e46...08719f`, chain 1)
- UnnamedContract (`0x7dca6b...2bf2dc`, chain 1)
- ProxyController (`0x1634d2...020ebb`, chain 1)
- Strategy (`0x6f6046...ab8935`, chain 1)
- UpgradeabilityProxy (`0xa2700d...a07f2b`, chain 1)
- UpgradeabilityProxy (`0xb74749...b69393`, chain 1)
- UpgradeabilityProxy (`0xd2683e...d2778e`, chain 1)
- Yearn V3 Vault (`0x7a6e36...028789`, chain 1)

## Contract Surface Quality

- Indexed contracts: 9; live-surface contracts included: 9 (6 live, 3 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 9/16 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 4/6 (66.7%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 9 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 4
- Deployed-live implementations: 9 of 9 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 4/6
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 9
- Raw deployments: 9
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Audit staleness (calendar age): 1 fresh, 2 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 7 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Quantstamp | Tier 2 | 4 | 66.7% | 2024-03 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| GenesisValueVault | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-254271 | `0xa2700d...a07f2b` | ✅ Audited |
| ProxyController | governance | project_anchor | own_supporting | 0 | ethereum | unit-254259 | `0x1634d2...020ebb` | ✅ Audited |
| ReserveFund | unknown | project_anchor | own_supporting | 1 | ethereum | unit-254273 | `0xd2683e...d2778e` | ✅ Audited |
| TokenVault | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-254272 | `0xb74749...b69393` | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| TokenizedStrategy | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-254274 | `0x6f6046...ab8935` | ⚠️ Unaudited |
| Yearn V3 Vault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-254262 | `0x7a6e36...028789` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254260 | `0x35e9d8...779fe2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254261 | `0x581e46...08719f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254263 | `0x7dca6b...2bf2dc` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2025-01-Hexens.pdf](https://github.com/Secured-Finance/stablecoin-contracts/blob/develop/audits/2025-01-Hexens.pdf) | unknown | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [2025-03-Decurity.pdf](https://github.com/Secured-Finance/stablecoin-contracts/blob/develop/audits/2025-03-Decurity.pdf) | Decurity | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [2025-08-Hexens.pdf](https://github.com/Secured-Finance/stablecoin-contracts/blob/develop/audits/2025-08-Hexens.pdf) | Decurity | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [2023-11-Quantstamp.pdf](https://github.com/Secured-Finance/contracts/blob/develop/audits/2023-11-Quantstamp.pdf) | Quantstamp | Audit | 2023-11 | stale | Direct | contract_name | matched | 7 | 3 | 0 | 62 | high |
| [2024-03-Quantstamp.pdf](https://github.com/Secured-Finance/contracts/blob/develop/audits/2024-03-Quantstamp.pdf) | Quantstamp | Audit | 2024-03 | stale | Direct | n/a | matched | 5 | 2 | 0 | 8 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13817] 2025-01-Hexens.pdf — no match: Extracted contract names from scope section and findings. Audit date from 'delivered 20.01.2025'.
- [13818] 2025-03-Decurity.pdf — no match: Extracted contract names from scope section and findings. Audit period end date used as audit date.
- [13819] 2025-08-Hexens.pdf — no match: Contracts extracted from findings and scope section; audit date from final report date.
- [13820] 2023-11-Quantstamp.pdf — matched: All files listed in the 'Files Included' section under 'Scope' are considered in scope. The audit date is the end date of the timeline (2023-10-16 through 2023-11-30).
- [13821] 2024-03-Quantstamp.pdf — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2025-01-Hexens.pdf | LockupContractFactory | unmatched — not counted | — | listed in scope and findings | no |
| 2025-01-Hexens.pdf | ProtocolToken | unmatched — not counted | — | listed in scope and findings | no |
| 2025-01-Hexens.pdf | PriceFeed | unmatched — not counted | — | listed in scope and findings | no |
| 2025-01-Hexens.pdf | TellorCaller | unmatched — not counted | — | listed in scope and findings | no |
| 2025-01-Hexens.pdf | CommunityIssuance | unmatched — not counted | — | listed in scope and findings | no |
| 2025-01-Hexens.pdf | ActivePool | unmatched — not counted | — | mentioned in finding SECFIN1-2 | no |
| 2025-01-Hexens.pdf | MultiTroveGetter | unmatched — not counted | — | mentioned in finding SECFIN1-17 | no |
| 2025-01-Hexens.pdf | IPyth | unmatched — not counted | — | mentioned in finding SECFIN1-17 | no |
| 2025-01-Hexens.pdf | PythCaller | unmatched — not counted | — | mentioned in finding SECFIN1-17 | no |
| 2025-01-Hexens.pdf | SortedTroves | unmatched — not counted | — | mentioned in finding SECFIN1-4 | no |
| 2025-01-Hexens.pdf | TroveBase | unmatched — not counted | — | mentioned in finding SECFIN1-4 | no |
| 2025-01-Hexens.pdf | DebtToken | unmatched — not counted | — | mentioned in finding SECFIN1-18 | no |
| 2025-01-Hexens.pdf | IPool | unmatched — not counted | — | mentioned in finding SECFIN1-6 | no |
| 2025-03-Decurity.pdf | TellorCaller | unmatched — not counted | — | listed in scope and findings | no |
| 2025-03-Decurity.pdf | TroveBase | unmatched — not counted | — | listed in scope and findings | no |
| 2025-03-Decurity.pdf | Unipool | unmatched — not counted | — | listed in scope and findings | no |
| 2025-03-Decurity.pdf | ProtocolToken | unmatched — not counted | — | listed in scope and findings | no |
| 2025-03-Decurity.pdf | PriceFeed | unmatched — not counted | — | listed in scope and findings | no |
| 2025-03-Decurity.pdf | PythCaller | unmatched — not counted | — | listed in scope and findings | no |
| 2025-03-Decurity.pdf | ProtocolStakingScript | unmatched — not counted | — | listed in scope and findings | no |
| 2025-08-Hexens.pdf | DebtToken | unmatched — not counted | — | listed in scope and findings | no |
| 2025-08-Hexens.pdf | ProtocolToken | unmatched — not counted | — | mentioned in findings | no |
| 2025-08-Hexens.pdf | BorrowerOperations | unmatched — not counted | — | mentioned in findings | no |
| 2025-08-Hexens.pdf | ActivePool | unmatched — not counted | — | mentioned in findings | no |
| 2025-08-Hexens.pdf | SortedTroves | unmatched — not counted | — | mentioned in findings | no |
| 2023-11-Quantstamp.pdf | BeaconProxyController | own contract | 0x581e46… (selected) `0x581e46...08719f` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-11-Quantstamp.pdf | FutureValueVault | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | GenesisValueVault | own proxy deployment | UpgradeabilityProxy (proxy) (selected) `0xa2700d...a07f2b` — deployed 2023-12-14 03:46:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-11-Quantstamp.pdf | CurrencyController | own contract | 0x7dca6b… (selected) `0x7dca6b...2bf2dc` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-11-Quantstamp.pdf | TokenVault | own proxy deployment | UpgradeabilityProxy (proxy) (selected) `0xb74749...b69393` — deployed 2023-12-14 03:46:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-11-Quantstamp.pdf | AddressResolver | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | ReserveFund | own proxy deployment | UpgradeabilityProxy (proxy) (selected) `0xd2683e...d2778e` — deployed 2023-12-14 03:46:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-11-Quantstamp.pdf | LendingMarketController | own contract | 0x35e9d8… (selected) `0x35e9d8...779fe2` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-11-Quantstamp.pdf | ProxyController | own contract | ProxyController (selected) `0x1634d2...020ebb` — deployed 2023-12-14 03:43:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-11-Quantstamp.pdf | LendingMarket | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | INativeToken | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | ILiquidationReceiver | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | IAddressResolver | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | IBeaconProxyController | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | IProxyController | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | ILendingMarketController | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | ILendingMarket | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | IFutureValueVault | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | ITokenVault | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | IGenesisValueVault | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | ICurrencyController | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | IReserveFund | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | Proxyable | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | Pausable | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | Ownable | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | UpgradeableBeacon | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | UpgradeabilityProxy | ambiguous — not counted | UpgradeabilityProxy (proxy) (alternative) `0xa2700d...a07f2b` — deployed 2023-12-14 03:46:59+03 — liveness: live (current_address_book_code)<br>UpgradeabilityProxy (proxy) (alternative) `0xb74749...b69393` — deployed 2023-12-14 03:46:59+03 — liveness: live (code_present_context)<br>UpgradeabilityProxy (proxy) (alternative) `0xd2683e...d2778e` — deployed 2023-12-14 03:46:59+03 — liveness: live (current_address_book_code) | bare standard proxy-shell name is not deployment identity; normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2023-11-Quantstamp.pdf | LockAndMsgSender | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | UpgradeabilityBeaconProxy | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | AccessControl | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | QuickSort | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | OrderBookLib | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | AddressResolverLib | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | Constants | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | TransferHelper | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | Contracts | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | OrderStatisticsTreeLib | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | BokkyPooBahsDateTimeLibrary | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | OrderActionLogic | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | LendingMarketUserLogic | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | DepositManagementLogic | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | LendingMarketOperationLogic | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | FundManagementLogic | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | OrderReaderLogic | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | LiquidationLogic | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | OrderBookLogic | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | RoundingUint256 | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | RoundingInt256 | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | FullMath | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | MixinAccessControl | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | MixinAddressResolver | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | MixinWallet | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | MixinLendingMarketConfiguration | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | MixinLiquidationConfiguration | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | ProtocolTypes | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | CurrencyControllerStorage | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | ReserveFundStorage | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | BeaconProxyControllerStorage | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | AddressResolverStorage | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | GenesisValueVaultStorage | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | FutureValueVaultStorage | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | TokenVaultStorage | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | LendingMarketControllerStorage | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | LendingMarketStorage | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | AccessControlStorage | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | OwnableStorage | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | PausableStorage | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | TransferHelperStorage | unmatched — not counted | — | listed in scope | no |
| 2023-11-Quantstamp.pdf | MixinAddressResolverStorage | unmatched — not counted | — | listed in scope | no |
| 2024-03-Quantstamp.pdf | AddressResolver | unmatched — not counted | — | — | no |
| 2024-03-Quantstamp.pdf | BeaconProxyController | own contract | 0x581e46… (selected) `0x581e46...08719f` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-03-Quantstamp.pdf | CurrencyController | own contract | 0x7dca6b… (selected) `0x7dca6b...2bf2dc` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-03-Quantstamp.pdf | FundManagementLogic | unmatched — not counted | — | — | no |
| 2024-03-Quantstamp.pdf | FutureValueVault | unmatched — not counted | — | — | no |
| 2024-03-Quantstamp.pdf | GenesisValueVault | own proxy deployment | UpgradeabilityProxy (proxy) (selected) `0xa2700d...a07f2b` — deployed 2023-12-14 03:46:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-03-Quantstamp.pdf | LendingMarket | unmatched — not counted | — | — | no |
| 2024-03-Quantstamp.pdf | LendingMarketController | own contract | 0x35e9d8… (selected) `0x35e9d8...779fe2` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-03-Quantstamp.pdf | LendingMarketOperationLogic | unmatched — not counted | — | — | no |
| 2024-03-Quantstamp.pdf | LendingMarketUserLogic | unmatched — not counted | — | — | no |
| 2024-03-Quantstamp.pdf | MixinLiquidationConfiguration | unmatched — not counted | — | — | no |
| 2024-03-Quantstamp.pdf | OrderBookLogic | unmatched — not counted | — | — | no |
| 2024-03-Quantstamp.pdf | TokenVault | own proxy deployment | UpgradeabilityProxy (proxy) (selected) `0xb74749...b69393` — deployed 2023-12-14 03:46:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x6f6046...ab8935` | TokenizedStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 12 own (5 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 1 ambiguous, 94 unmatched
- Matched-own operational status: 12 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4
- Match method counts: unique_name=12

Zero-match audit list:

- [13817] 2025-01-Hexens.pdf
- [13818] 2025-03-Decurity.pdf
- [13819] 2025-08-Hexens.pdf

Fork inheritance lineage and inherited audits are included when available.
