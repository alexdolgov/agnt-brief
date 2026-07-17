# Agentic Audit Brief: Paxos

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 7 (0 matched; 7 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Paxos (`paxos`)
- Website: [https://www.paxos.com/](https://www.paxos.com/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, ethereum, ink, x-layer
- Contract surface: 9 unique implementations (9 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $1,812,141,203.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for Paxos in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 8 contracts are derived from known codebases. 8 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x9a7164112029b81c07636ab7b59fa813e0883bbf`, chain 1)
- UnnamedContract (`0xe343167631d89b6ffc58b88d6b7fb0228795491d`, chain 1)
- UnnamedContract (`0x046ca5a59d53448bf63e0bee1d552c84ad8beb70`, chain 196)
- UnnamedContract (`0x4ae46a509f6b1d9056937ba4500cb143933d2dc8`, chain 196)
- UnnamedContract (`0x004b506865409877c9fa29bfb1eba929984b9bbc`, chain 42161)
- UnnamedContract (`0x359a1ee087abd3042151b93ec8ea462d6b27bcb6`, chain 42161)
- UnnamedContract (`0x9a7164112029b81c07636ab7b59fa813e0883bbf`, chain 57073)
- UnnamedContract (`0xe343167631d89b6ffc58b88d6b7fb0228795491d`, chain 57073)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 8/8 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 8 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 1 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 8 of 9 unique; 1 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/1
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 8
- Unique implementations: 9
- Raw deployments: 9
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-02 (fresh)
- Audit staleness (calendar age): 3 fresh, 4 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x45804880de22913dafe09f4980848ece6ecbaf78` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (8)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251148 | `0x9a7164112029b81c07636ab7b59fa813e0883bbf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251149 | `0xe343167631d89b6ffc58b88d6b7fb0228795491d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-251150 | `0x046ca5a59d53448bf63e0bee1d552c84ad8beb70` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-251151 | `0x4ae46a509f6b1d9056937ba4500cb143933d2dc8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251152 | `0x004b506865409877c9fa29bfb1eba929984b9bbc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251153 | `0x359a1ee087abd3042151b93ec8ea462d6b27bcb6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-251154 | `0x9a7164112029b81c07636ab7b59fa813e0883bbf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-251155 | `0xe343167631d89b6ffc58b88d6b7fb0228795491d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Domain Separator - Halborn.pdf](https://github.com/paxosglobal/paxos-token-contracts/blob/master/audits/Domain%20Separator%20-%20Halborn.pdf) | Halborn | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Enhance Signature Validation - Zellic Audit Report.pdf](https://github.com/paxosglobal/paxos-token-contracts/blob/master/audits/Enhance%20Signature%20Validation%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2025-12 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [PAXG V2 - Zellic Audit Report.pdf](https://github.com/paxosglobal/paxos-token-contracts/blob/master/audits/PAXG%20V2%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Paxos - Cross Chain Integration - Trail Of Bits Audit Report.pdf](https://github.com/paxosglobal/paxos-token-contracts/blob/master/audits/Paxos%20-%20Cross%20Chain%20Integration%20-%20Trail%20Of%20Bits%20Audit%20Report.pdf) | Trail of Bits | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [Paxos Stablecoin - Zellic Audit Report.pdf](https://github.com/paxosglobal/paxos-token-contracts/blob/master/audits/Paxos%20Stablecoin%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [Paxos Token Contracts Halborn Audit Report.pdf](https://github.com/paxosglobal/paxos-token-contracts/blob/master/audits/Paxos%20Token%20Contracts%20Halborn%20Audit%20Report.pdf) | Halborn | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 23 | high |
| [Paxos USDG Rewards - Zellic Audit Report.pdf](https://github.com/paxosglobal/paxos-token-contracts/blob/master/audits/Paxos%20USDG%20Rewards%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2026-02 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20915] Domain Separator - Halborn.pdf — no match: Only PaxosTokenV2.sol is explicitly in scope; no other contracts listed.
- [20916] Enhance Signature Validation - Zellic Audit Report.pdf — no match: All contracts listed in the scope table on page 4 of the report.
- [20917] PAXG V2 - Zellic Audit Report.pdf — no match: Scope section lists PAXG.sol and PaxosTokenV2.sol as targets. Audit date from cover page.
- [20918] Paxos - Cross Chain Integration - Trail Of Bits Audit Report.pdf — no match: Extracted contract names from Project Targets and Project Coverage sections. Audit date from cover page.
- [20919] Paxos Stablecoin - Zellic Audit Report.pdf — no match: Scope table on page 9 lists 13 programs/contracts. Audit date is November 7, 2024 from cover page.
- [20920] Paxos Token Contracts Halborn Audit Report.pdf — no match: All contracts listed in the Scope section of the report. Audit date is the end date of the engagement (November 3, 2025).
- [20921] Paxos USDG Rewards - Zellic Audit Report.pdf — no match: All contracts listed in the scope table on page 9 of the PDF.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Domain Separator - Halborn.pdf | PaxosTokenV2 | unmatched — not counted | — | mentioned in scope description and findings | no |
| Enhance Signature Validation - Zellic Audit Report.pdf | PaxosTokenV2 | unmatched — not counted | — | listed in scope table | no |
| Enhance Signature Validation - Zellic Audit Report.pdf | EIP2612 | unmatched — not counted | — | listed in scope table | no |
| Enhance Signature Validation - Zellic Audit Report.pdf | EIP2612Definitions | unmatched — not counted | — | listed in scope table | no |
| Enhance Signature Validation - Zellic Audit Report.pdf | EIP3009 | unmatched — not counted | — | listed in scope table | no |
| Enhance Signature Validation - Zellic Audit Report.pdf | EIP3009Definitions | unmatched — not counted | — | listed in scope table | no |
| Enhance Signature Validation - Zellic Audit Report.pdf | EIP712 | unmatched — not counted | — | listed in scope table | no |
| Enhance Signature Validation - Zellic Audit Report.pdf | EIP712Domain | unmatched — not counted | — | listed in scope table | no |
| PAXG V2 - Zellic Audit Report.pdf | PAXG | unmatched — not counted | — | listed in scope table | no |
| PAXG V2 - Zellic Audit Report.pdf | PaxosTokenV2 | unmatched — not counted | — | listed in scope table | no |
| Paxos - Cross Chain Integration - Trail Of Bits Audit Report.pdf | OFTProxy | unmatched — not counted | — | mentioned in Project Coverage and Non-Security-Related Recommendations | no |
| Paxos - Cross Chain Integration - Trail Of Bits Audit Report.pdf | PaxosTokenV2 | unmatched — not counted | — | mentioned in Project Coverage | no |
| Paxos - Cross Chain Integration - Trail Of Bits Audit Report.pdf | SupplyControl | unmatched — not counted | — | mentioned in Project Coverage and findings | no |
| Paxos - Cross Chain Integration - Trail Of Bits Audit Report.pdf | RateLimit | unmatched — not counted | — | mentioned in Project Coverage and Non-Security-Related Recommendations | no |
| Paxos - Cross Chain Integration - Trail Of Bits Audit Report.pdf | EIP3009 | unmatched — not counted | — | mentioned in Project Coverage and finding TOB-PAXOSLZ-11 | no |
| Paxos - Cross Chain Integration - Trail Of Bits Audit Report.pdf | EIP2612 | unmatched — not counted | — | mentioned in Project Coverage | no |
| Paxos - Cross Chain Integration - Trail Of Bits Audit Report.pdf | XYZImplementationV1 | unmatched — not counted | — | mentioned in Project Coverage | no |
| Paxos - Cross Chain Integration - Trail Of Bits Audit Report.pdf | minter-controller | unmatched — not counted | — | mentioned in Project Targets and Project Coverage | no |
| Paxos Stablecoin - Zellic Audit Report.pdf | PaxosBaseAbstract | unmatched — not counted | — | listed in scope table | no |
| Paxos Stablecoin - Zellic Audit Report.pdf | RateLimit | unmatched — not counted | — | listed in scope table | no |
| Paxos Stablecoin - Zellic Audit Report.pdf | PYUSD | unmatched — not counted | — | listed in scope table | no |
| Paxos Stablecoin - Zellic Audit Report.pdf | USDP | unmatched — not counted | — | listed in scope table | no |
| Paxos Stablecoin - Zellic Audit Report.pdf | USDX | unmatched — not counted | — | listed in scope table | no |
| Paxos Stablecoin - Zellic Audit Report.pdf | BaseStorage | unmatched — not counted | — | listed in scope table | no |
| Paxos Stablecoin - Zellic Audit Report.pdf | PaxosTokenV2 | unmatched — not counted | — | listed in scope table | no |
| Paxos Stablecoin - Zellic Audit Report.pdf | SupplyControl | unmatched — not counted | — | listed in scope table | no |
| Paxos Stablecoin - Zellic Audit Report.pdf | ECRecover | unmatched — not counted | — | listed in scope table | no |
| Paxos Stablecoin - Zellic Audit Report.pdf | EIP712Domain | unmatched — not counted | — | listed in scope table | no |
| Paxos Stablecoin - Zellic Audit Report.pdf | EIP3009 | unmatched — not counted | — | listed in scope table | no |
| Paxos Stablecoin - Zellic Audit Report.pdf | EIP2612 | unmatched — not counted | — | listed in scope table | no |
| Paxos Stablecoin - Zellic Audit Report.pdf | EIP712 | unmatched — not counted | — | listed in scope table | no |
| Paxos Token Contracts Halborn Audit Report.pdf | BaseStorageV3 | unmatched — not counted | — | listed in scope | no |
| Paxos Token Contracts Halborn Audit Report.pdf | ClaimableRewardsBase | unmatched — not counted | — | listed in scope | no |
| Paxos Token Contracts Halborn Audit Report.pdf | ClaimableRewardsErrors | unmatched — not counted | — | listed in scope | no |
| Paxos Token Contracts Halborn Audit Report.pdf | ClaimableRewardsEvents | unmatched — not counted | — | listed in scope | no |
| Paxos Token Contracts Halborn Audit Report.pdf | ClaimableRewardsStorageV3 | unmatched — not counted | — | listed in scope | no |
| Paxos Token Contracts Halborn Audit Report.pdf | PaxosTokenClaimableRewards | unmatched — not counted | — | listed in scope | no |
| Paxos Token Contracts Halborn Audit Report.pdf | TokenAdminEvents | unmatched — not counted | — | listed in scope | no |
| Paxos Token Contracts Halborn Audit Report.pdf | ClaimableRewardsFacet | unmatched — not counted | — | listed in scope | no |
| Paxos Token Contracts Halborn Audit Report.pdf | MultiplierMgmtFacet | unmatched — not counted | — | listed in scope | no |
| Paxos Token Contracts Halborn Audit Report.pdf | PayoutGroupFacet | unmatched — not counted | — | listed in scope | no |
| Paxos Token Contracts Halborn Audit Report.pdf | TokenAdminFacet | unmatched — not counted | — | listed in scope | no |
| Paxos Token Contracts Halborn Audit Report.pdf | TokenExtensionsFacet | unmatched — not counted | — | listed in scope | no |
| Paxos Token Contracts Halborn Audit Report.pdf | RateLimitFixture | unmatched — not counted | — | listed in scope | no |
| Paxos Token Contracts Halborn Audit Report.pdf | EIP2612 | unmatched — not counted | — | listed in scope | no |
| Paxos Token Contracts Halborn Audit Report.pdf | EIP2612Definitions | unmatched — not counted | — | listed in scope | no |
| Paxos Token Contracts Halborn Audit Report.pdf | EIP3009Definitions | unmatched — not counted | — | listed in scope | no |
| Paxos Token Contracts Halborn Audit Report.pdf | Roles | unmatched — not counted | — | listed in scope | no |
| Paxos Token Contracts Halborn Audit Report.pdf | MultiplierGrowthLib | unmatched — not counted | — | listed in scope | no |
| Paxos Token Contracts Halborn Audit Report.pdf | SharesLib | unmatched — not counted | — | listed in scope | no |
| Paxos Token Contracts Halborn Audit Report.pdf | EIP3009 | unmatched — not counted | — | listed in scope | no |
| Paxos Token Contracts Halborn Audit Report.pdf | PaxosBaseAbstract | unmatched — not counted | — | listed in scope | no |
| Paxos Token Contracts Halborn Audit Report.pdf | StorageLib | unmatched — not counted | — | listed in scope | no |
| Paxos Token Contracts Halborn Audit Report.pdf | USDG | unmatched — not counted | — | listed in scope | no |
| Paxos USDG Rewards - Zellic Audit Report.pdf | BaseStorageV3 | unmatched — not counted | — | listed in scope table | no |
| Paxos USDG Rewards - Zellic Audit Report.pdf | ClaimableRewardsBase | unmatched — not counted | — | listed in scope table | no |
| Paxos USDG Rewards - Zellic Audit Report.pdf | ClaimableRewardsErrors | unmatched — not counted | — | listed in scope table | no |
| Paxos USDG Rewards - Zellic Audit Report.pdf | ClaimableRewardsEvents | unmatched — not counted | — | listed in scope table | no |
| Paxos USDG Rewards - Zellic Audit Report.pdf | ClaimableRewardsStorageV3 | unmatched — not counted | — | listed in scope table | no |
| Paxos USDG Rewards - Zellic Audit Report.pdf | PaxosTokenClaimableRewards | unmatched — not counted | — | listed in scope table | no |
| Paxos USDG Rewards - Zellic Audit Report.pdf | TokenAdminEvents | unmatched — not counted | — | listed in scope table | no |
| Paxos USDG Rewards - Zellic Audit Report.pdf | ClaimableRewardsFacet | unmatched — not counted | — | listed in scope table | no |
| Paxos USDG Rewards - Zellic Audit Report.pdf | MultiplierMgmtFacet | unmatched — not counted | — | listed in scope table | no |
| Paxos USDG Rewards - Zellic Audit Report.pdf | PayoutGroupFacet | unmatched — not counted | — | listed in scope table | no |
| Paxos USDG Rewards - Zellic Audit Report.pdf | TokenExtensionsFacet | unmatched — not counted | — | listed in scope table | no |
| Paxos USDG Rewards - Zellic Audit Report.pdf | TokenAdminFacet | unmatched — not counted | — | listed in scope table | no |
| Paxos USDG Rewards - Zellic Audit Report.pdf | PaxosBaseAbstract | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 8 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 67 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=7
- Match method counts: n/a

Zero-match audit list:

- [20915] Domain Separator - Halborn.pdf
- [20916] Enhance Signature Validation - Zellic Audit Report.pdf
- [20917] PAXG V2 - Zellic Audit Report.pdf
- [20918] Paxos - Cross Chain Integration - Trail Of Bits Audit Report.pdf
- [20919] Paxos Stablecoin - Zellic Audit Report.pdf
- [20920] Paxos Token Contracts Halborn Audit Report.pdf
- [20921] Paxos USDG Rewards - Zellic Audit Report.pdf

Fork inheritance lineage and inherited audits are included when available.
