# Agentic Audit Brief: Altitude.Fi

## Export Authority

- Production state: **published scope**
- Raw selected rows: 3 across 3 audit(s)
- Eligible audit results: 7 (3 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

⚠️ Lifecycle status: DECLINING - TVL dropped 58.5% over 90 days

## Project Overview

- Project: Altitude.Fi (`altitude.fi`)
- Website: [https://www.altitude.fi/](https://www.altitude.fi/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 17 unique implementations (21 raw deployments)
- Coverage basis: 1/10 confirmed own live verified implementations (10.0%); conservative 10.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $7,082,102.69
- On-chain TVL (included contracts): $8,493,598.92
- TVL by chain: Ethereum $8,493,598.92

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

0 of 17 contracts are derived from known codebases. 17 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x1f7d58...c759b9`, chain 1)
- UnnamedContract (`0x4f8048...692936`, chain 1)
- UnnamedContract (`0x602d79...4eb15d`, chain 1)
- UnnamedContract (`0x84910b...6eab58`, chain 1)
- UnnamedContract (`0x874566...4e6b1d`, chain 1)
- UnnamedContract (`0xb4165b...b565f2`, chain 1)
- UnnamedContract (`0xd130a9...6ab29b`, chain 1)
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

## Contract Surface Quality

- Indexed contracts: 19; live-surface contracts included: 19 (14 live, 5 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 17/17 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/10 (10.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 17 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 10
- Deployed-live implementations: 17 of 17 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 1/10
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 7
- Unique implementations: 17
- Raw deployments: 21
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
| Oxorio | Tier 2 | 1 | 10.0% | 2025-05 |
| Team Omega | Tier 2 | 1 | 10.0% | 2025-05 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| TokensFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378775 | `0x3c456b...7a11f9` | ✅ Audited |

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| SupplyToken | token | project_anchor | own_supporting | 2 | ethereum | unit-378804 (2 proxies) | 2 deployments: ethereum `0x2ddd6d...333169`; ethereum `0x5c58df...9c1f06` | ⚠️ Unaudited |
| DebtToken | token | project_anchor | own_supporting | 2 | ethereum | unit-378807 (2 proxies) | 2 deployments: ethereum `0x5717f3...5b0056`; ethereum `0xdf612b...827e66` | ⚠️ Unaudited |
| VaultERC20 | core_logic | project_anchor | own_supporting | 2 | ethereum | unit-378802 (2 proxies) | 2 deployments: ethereum `0x550f8a...496a6b`; ethereum `0xaf6062...e5ee8d` | ⚠️ Unaudited |
| FarmBufferDispatcher | unknown | project_anchor | own_supporting | 2 | ethereum | unit-378800 (2 proxies) | 2 deployments: ethereum `0x45f08c...578932`; ethereum `0xd812bb...97a8fd` | ⚠️ Unaudited |
| Ingress | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378792 | `0xbde7b9...ec7f95` | ⚠️ Unaudited |
| Ingress | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378794 | `0xc2e2f4...029e14` | ⚠️ Unaudited |
| RebalanceIncentivesController | governance | project_anchor | own_supporting | 0 | ethereum | unit-378778 | `0x560357...ae768d` | ⚠️ Unaudited |
| RebalanceIncentivesController | governance | project_anchor | own_supporting | 0 | ethereum | unit-378788 | `0x8f18b3...dc4d52` | ⚠️ Unaudited |
| VaultRegistryV1 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-378806 | `0x8c66df...f12ba8` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (7)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Proxy (impl: 0x15c2fbc9d547c029893f5f706413a953076b94a6) | proxy | project_anchor | own_supporting | 1 | ethereum | unit-378798 | `0x1f7d58...c759b9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378776 | `0x4f8048...692936` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378780 | `0x602d79...4eb15d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378783 | `0x84910b...6eab58` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378785 | `0x874566...4e6b1d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378790 | `0xb4165b...b565f2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378795 | `0xd130a9...6ab29b` | ❓ Unverified |

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
| ethereum | `0x550f8a...496a6b` | VaultERC20 | core_logic | $0.01 | Verified native implementation with $0.01 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x45f08c...578932` | FarmBufferDispatcher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xbde7b9...ec7f95` | Ingress | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc2e2f4...029e14` | Ingress | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x560357...ae768d` | RebalanceIncentivesController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8f18b3...dc4d52` | RebalanceIncentivesController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8c66df...f12ba8` | VaultRegistryV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 13 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 4 |

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
