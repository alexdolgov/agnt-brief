# Agentic Audit Brief: 3Jane

## Export Authority

- Production state: **published scope**
- Raw selected rows: 38 across 5 audit(s)
- Eligible audit results: 5 (5 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: 3Jane (`3jane`)
- Website: [https://www.3jane.xyz/](https://www.3jane.xyz/)
- Lifecycle: active (Tier 0, 58% below peak)
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 35 unique implementations (58 raw deployments)
- Coverage basis: 11/13 confirmed own live verified implementations (84.6%); conservative 84.6% with 0 needs-review implementation(s)
- DeFi Llama TVL: $119,113,065.00
- On-chain TVL (included contracts): $83,787,176.40
- TVL by chain: Ethereum $83,787,176.40

## Project Description

This brief describes the observed EVM deployment and audit surface for 3Jane. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 14 contract row(s) across ethereum. Structural roles: 11 supporting, 2 core, 1 unclassified. 5 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 14
- Structural roles: supporting (11), core (2), unclassified (1)
- Contract kinds: contract (13), abstract (1)
- Detected standards: erc1967proxy (4), ownable (4), accesscontrol (2), erc165 (2), erc20 (1), erc20permit (1)
- Frameworks: openzeppelin (9), openzeppelin-upgradeable (5), solmate (2), foundry (1)
- Upgradeable-pattern rows: 5

## Fork Analysis

0 of 13 contracts are derived from known codebases. 13 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- CreditLine (`0x26389b...20c6a9`, chain 1)
- GnosisSafeProxy (`0x333333...6fb5ef`, chain 1)
- Helper (`0x82736f...444505`, chain 1)
- InsuranceFund (`0x4507b5...d29935`, chain 1)
- Jane (`0x333333...0e3404`, chain 1)
- MarkdownController (`0xf0eae7...726214`, chain 1)
- ProtocolConfig (`0x64bc68...b70b98`, chain 1)
- RewardsDistributor (`0xac6985...f064e8`, chain 1)
- TimelockController (`0x1dccd4...08f8c2`, chain 1)
- TransparentUpgradeableProxy (`0x056b26...d55ecc`, chain 1)
- TransparentUpgradeableProxy (`0x1d434d...f9c7df`, chain 1)
- TransparentUpgradeableProxy (`0xde6e08...b0ecbc`, chain 1)
- TransparentUpgradeableProxy (`0xf68955...6164a7`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 14; live-surface rows included: 14 (14 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 13/13 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 11/13 (84.6%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 13 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 22 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 21
- Confirmed-live implementations: 13 of 35 unique; 22 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 11/33
- Verified + Unaudited implementations: 22
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 35
- Raw deployments: 58
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-05 (fresh)
- Audit staleness (calendar age): 5 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 11 match-unverified
- Tier 1 coverage: 84.6% (Sherlock)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Sherlock | Tier 1 | 11 | 33.3% | 2025-10 |
| Veridise | Tier 2 | 6 | 18.2% | 2025-08 |
| yAudit | Tier 2 | 2 | 6.1% | 2026-05 |

## Contract Surface

### ✅ Verified + Audited (11)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AdaptiveCurveIrm | unknown | project_anchor | own_supporting | 1 | ethereum | unit-378312 | `0x1d434d...f9c7df` | ✅ Audited |
| CreditLine | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378302 | `0x26389b...20c6a9` | ✅ Audited |
| Helper | periphery | project_anchor | own_supporting | 0 | ethereum | unit-378305 | `0x82736f...444505` | ✅ Audited |
| InsuranceFund | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378304 | `0x4507b5...d29935` | ✅ Audited |
| Jane | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378303 | `0x333333...0e3404` | ✅ Audited |
| MarkdownController | governance | project_anchor | own_supporting | 0 | ethereum | unit-378307 | `0xf0eae7...726214` | ✅ Audited |
| MorphoCredit | unknown | project_anchor | own_supporting | 1 | ethereum | unit-378310 | `0xde6e08...b0ecbc` | ✅ Audited |
| ProtocolConfig | governance | project_anchor | own_supporting | 1 | ethereum | unit-378309 | 2 deployments: ethereum `0x64bc68...b70b98`; ethereum `0x6b276a...84f34e` | ✅ Audited |
| RewardsDistributor | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-378306 | `0xac6985...f064e8` | ✅ Audited |
| sUSD3 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-378308 | `0xf68955...6164a7` | ✅ Audited |
| USD3 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-378311 | `0x056b26...d55ecc` | ✅ Audited |

### ⚠️ Verified + Unaudited (22)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| StataTokenV2 | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd4fa2d...8cd23e` | ⚠️ Unaudited |
| Amplol | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3fbb7b...03fc5a`; ethereum `0xe74ee9...f45145` | ⚠️ Unaudited |
| Amplol | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x72d9bc...42b2e5`; ethereum `0xf7a18b...417e21` | ⚠️ Unaudited |
| Amplol | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x749937...8635c4`; ethereum `0x79d674...3d0a37`; ethereum `0xab8e94...ae4615`; ethereum `0xb9c6ac...58f73b`; ethereum `0xf914e2...83adc6` | ⚠️ Unaudited |
| Amplol | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x82616e...c023c4`; ethereum `0xeadf1d...7509e5` | ⚠️ Unaudited |
| EmergencyController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x792a14...2ea12c`; ethereum `0x84b31b...d2e051` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | project_anchor | own_supporting | 1 | ethereum | unit-378313 | `0x333333...6fb5ef` | ⚠️ Unaudited |
| Helper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a66f9...f3f682` | ⚠️ Unaudited |
| Jane | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff031e...fd72fc` | ⚠️ Unaudited |
| ManualStrikeSelection | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4ef286...656b46`; ethereum `0xa7b3a9...17a9d9` | ⚠️ Unaudited |
| MarkdownManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd1726...118b5d` | ⚠️ Unaudited |
| ProtocolConfig | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa11ab...a9bf1e` | ⚠️ Unaudited |
| PYTLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbfd433...e2e266` | ⚠️ Unaudited |
| RewardsDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc95f8f...2f555c` | ⚠️ Unaudited |
| RibbonThetaVaultWithSwap | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x2e96b8...efb619`; ethereum `0x4a94a0...5da126`; ethereum `0xbc8a59...6521a7` | ⚠️ Unaudited |
| RibbonThetaVaultWithSwap | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x4c8ce0...a9944c`; ethereum `0xacd147...99fb4d` | ⚠️ Unaudited |
| RibbonThetaVaultWithSwap | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x65809c...a803d0`; ethereum `0x8ee376...55dafb` | ⚠️ Unaudited |
| RibbonThetaVaultWithSwap | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x73092a...6f2dc9`; ethereum `0xa235c6...147572` | ⚠️ Unaudited |
| RibbonThetaVaultWithSwap | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x959744...41ea9f`; ethereum `0xa6f76b...45f030` | ⚠️ Unaudited |
| TimelockController | governance | project_anchor | own_supporting | 0 | ethereum | unit-378301 | `0x1dccd4...08f8c2` | ⚠️ Unaudited |
| TokenizedStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 7 | ethereum | n/a | 7 deployments: ethereum `0x05367c...36a06e`; ethereum `0x492a3d...3d9f91`; ethereum `0x49ef4a...0df852`; ethereum `0x4f6694...bc0645`; ethereum `0x83872d...45f35a`; ethereum `0xbd35e3...247c2e`; ethereum `0xf733c7...3304de` | ⚠️ Unaudited |
| VaultLifecycleWithSwap | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4f1faf...dc19ba`; ethereum `0x8fe8d5...c0dd11` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98633a...b4520b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe12caa...48c754` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [veridise-audit.pdf](https://github.com/3jane-protocol/audits/blob/main/veridise-audit.pdf) | Veridise | Audit | 2025-08 | fresh | Direct | n/a | matched | 6 | 4 | 0 | 12 | n/a |
| [sherlock-audit.pdf](https://github.com/3jane-protocol/audits/blob/main/sherlock-audit.pdf) | Sherlock | Contest | 2025-08 | fresh | Direct | n/a | matched | 8 | 5 | 0 | 2 | n/a |
| [electisec-audit.pdf](https://github.com/3jane-protocol/audits/blob/main/electisec-audit.pdf) | Sherlock | Contest | 2025-10 | fresh | Direct | n/a | matched | 11 | 5 | 0 | 2 | n/a |
| [sherlock-2-audit.pdf](https://github.com/3jane-protocol/audits/blob/main/sherlock-2-audit.pdf) | Sherlock | Contest | 2025-10 | fresh | Direct | n/a | matched | 11 | 5 | 0 | 9 | n/a |
| [electisec-audit](https://github.com/3jane-protocol/audits/blob/main/yaudit-usd3-susd3-may-2026-audit.pdf) | yAudit | Audit | 2026-05 | fresh | Direct | contract_name | matched | 2 | 2 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3912] veridise-audit.pdf — matched: No reason recorded
- [3913] sherlock-audit.pdf — matched: No reason recorded
- [3914] electisec-audit.pdf — matched: No reason recorded
- [3915] sherlock-2-audit.pdf — matched: No reason recorded
- [26419] electisec-audit — matched: Audit scope explicitly lists four Solidity files under src/ with their paths. Audit completed date is given at the end of the document.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| veridise-audit.pdf | ConstantsLib | unmatched — not counted | — | — | no |
| veridise-audit.pdf | CreditLine | own contract | CreditLine (selected) `0x26389b...20c6a9` — deployed 2025-08-25 03:57:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| veridise-audit.pdf | ErrorsLib | unmatched — not counted | — | — | no |
| veridise-audit.pdf | EventsLib | unmatched — not counted | — | — | no |
| veridise-audit.pdf | Helper | own contract | Helper (selected) `0x82736f...444505` — deployed 2025-08-25 04:30:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| veridise-audit.pdf | IAaveMarket | unmatched — not counted | — | — | no |
| veridise-audit.pdf | IMarkdownManager | unmatched — not counted | — | — | no |
| veridise-audit.pdf | IMorpho | unmatched — not counted | — | — | no |
| veridise-audit.pdf | IMorphoFlashLoanCallback | unmatched — not counted | — | — | no |
| veridise-audit.pdf | IMorphoSupplyCallback | unmatched — not counted | — | — | no |
| veridise-audit.pdf | MarkdownManager | unmatched — not counted | — | — | no |
| veridise-audit.pdf | Morpho | unmatched — not counted | — | — | no |
| veridise-audit.pdf | MorphoCredit | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xde6e08...b0ecbc` — deployed 2025-08-25 03:57:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| veridise-audit.pdf | MorphoCreditStorageLib | unmatched — not counted | — | — | no |
| veridise-audit.pdf | MorphoStorageLib | unmatched — not counted | — | — | no |
| veridise-audit.pdf | ProtocolConfig | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x6b276a...84f34e` — deployed 2025-08-25 03:57:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| veridise-audit.pdf | USD3 | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x056b26...d55ecc` — deployed 2025-08-25 03:57:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| veridise-audit.pdf | sUSD3 | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xf68955...6164a7` — deployed 2025-08-25 03:57:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sherlock-audit.pdf | AdaptiveCurveIrm | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x1d434d...f9c7df` — deployed 2025-08-25 03:57:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sherlock-audit.pdf | BaseStrategyUpgradeable | unmatched — not counted | — | — | no |
| sherlock-audit.pdf | CreditLine | own contract | CreditLine (selected) `0x26389b...20c6a9` — deployed 2025-08-25 03:57:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sherlock-audit.pdf | Helper | own contract | Helper (selected) `0x82736f...444505` — deployed 2025-08-25 04:30:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sherlock-audit.pdf | InsuranceFund | own contract | InsuranceFund (selected) `0x4507b5...d29935` — deployed 2025-08-25 03:57:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sherlock-audit.pdf | MarkdownManager | unmatched — not counted | — | — | no |
| sherlock-audit.pdf | MorphoCredit | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xde6e08...b0ecbc` — deployed 2025-08-25 03:57:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sherlock-audit.pdf | ProtocolConfig | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x6b276a...84f34e` — deployed 2025-08-25 03:57:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sherlock-audit.pdf | USD3 | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x056b26...d55ecc` — deployed 2025-08-25 03:57:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sherlock-audit.pdf | sUSD3 | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xf68955...6164a7` — deployed 2025-08-25 03:57:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| electisec-audit.pdf | AdaptiveCurveIrm | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x1d434d...f9c7df` — deployed 2025-08-25 03:57:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| electisec-audit.pdf | CreditLine | own contract | CreditLine (selected) `0x26389b...20c6a9` — deployed 2025-08-25 03:57:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| electisec-audit.pdf | Helper | own contract | Helper (selected) `0x82736f...444505` — deployed 2025-08-25 04:30:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| electisec-audit.pdf | InsuranceFund | own contract | InsuranceFund (selected) `0x4507b5...d29935` — deployed 2025-08-25 03:57:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| electisec-audit.pdf | Jane | own contract | Jane (selected) `0x333333...0e3404` — deployed 2025-10-21 23:28:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| electisec-audit.pdf | MarkdownController | own contract | MarkdownController (selected) `0xf0eae7...726214` — deployed 2025-10-21 23:37:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| electisec-audit.pdf | Morpho | unmatched — not counted | — | — | no |
| electisec-audit.pdf | MorphoCredit | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xde6e08...b0ecbc` — deployed 2025-08-25 03:57:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| electisec-audit.pdf | PYTLocker | unmatched — not counted | — | — | no |
| electisec-audit.pdf | ProtocolConfig | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x6b276a...84f34e` — deployed 2025-08-25 03:57:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| electisec-audit.pdf | RewardsDistributor | own contract | RewardsDistributor (selected) `0xac6985...f064e8` — deployed 2025-10-21 23:33:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| electisec-audit.pdf | USD3 | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x056b26...d55ecc` — deployed 2025-08-25 03:57:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| electisec-audit.pdf | sUSD3 | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xf68955...6164a7` — deployed 2025-08-25 03:57:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sherlock-2-audit.pdf | AdaptiveCurveIrm | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x1d434d...f9c7df` — deployed 2025-08-25 03:57:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sherlock-2-audit.pdf | BaseStrategyUpgradeable | unmatched — not counted | — | — | no |
| sherlock-2-audit.pdf | CreditLine | own contract | CreditLine (selected) `0x26389b...20c6a9` — deployed 2025-08-25 03:57:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sherlock-2-audit.pdf | Helper | own contract | Helper (selected) `0x82736f...444505` — deployed 2025-08-25 04:30:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sherlock-2-audit.pdf | IProtocolConfig | unmatched — not counted | — | — | no |
| sherlock-2-audit.pdf | ISUSD3 | unmatched — not counted | — | — | no |
| sherlock-2-audit.pdf | InsuranceFund | own contract | InsuranceFund (selected) `0x4507b5...d29935` — deployed 2025-08-25 03:57:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sherlock-2-audit.pdf | Jane | own contract | Jane (selected) `0x333333...0e3404` — deployed 2025-10-21 23:28:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sherlock-2-audit.pdf | MarkdownController | own contract | MarkdownController (selected) `0xf0eae7...726214` — deployed 2025-10-21 23:37:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sherlock-2-audit.pdf | Morpho | unmatched — not counted | — | — | no |
| sherlock-2-audit.pdf | MorphoCredit | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xde6e08...b0ecbc` — deployed 2025-08-25 03:57:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sherlock-2-audit.pdf | MorphoCreditLib | unmatched — not counted | — | — | no |
| sherlock-2-audit.pdf | MorphoCreditStorageLib | unmatched — not counted | — | — | no |
| sherlock-2-audit.pdf | MorphoStorageLib | unmatched — not counted | — | — | no |
| sherlock-2-audit.pdf | PYTLocker | unmatched — not counted | — | — | no |
| sherlock-2-audit.pdf | ProtocolConfig | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x6b276a...84f34e` — deployed 2025-08-25 03:57:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sherlock-2-audit.pdf | ProtocolConfigLib | unmatched — not counted | — | — | no |
| sherlock-2-audit.pdf | RewardsDistributor | own contract | RewardsDistributor (selected) `0xac6985...f064e8` — deployed 2025-10-21 23:33:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sherlock-2-audit.pdf | USD3 | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x056b26...d55ecc` — deployed 2025-08-25 03:57:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sherlock-2-audit.pdf | sUSD3 | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xf68955...6164a7` — deployed 2025-08-25 03:57:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| electisec-audit | ProtocolConfigLib | unmatched — not counted | — | listed in Audit Scope section | no |
| electisec-audit | USD3 | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x056b26...d55ecc` — deployed 2025-08-25 03:57:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| electisec-audit | sUSD3 | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xf68955...6164a7` — deployed 2025-08-25 03:57:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| electisec-audit | BaseHooksUpgradeable | unmatched — not counted | — | listed in Audit Scope section | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 20 |
| upstream | 4 |
| standard_library | 9 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 38 own (21 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 27 unmatched
- Matched-own operational status: 38 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: unique_name=38

Fork inheritance lineage and inherited audits are included when available.
