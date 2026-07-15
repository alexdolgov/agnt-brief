# Agentic Audit Brief: StandX

## Export Authority

- Production state: **published scope**
- Raw selected rows: 3 across 3 audit(s)
- Eligible audit results: 6 (3 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: StandX (`standx`)
- Website: [https://standx.com/referral?code=defillama](https://standx.com/referral?code=defillama)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc
- Contract surface: 6 unique implementations (6 raw deployments)
- Coverage basis: 2/5 confirmed own live verified implementations (40.0%); conservative 40.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $40,144,284.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for StandX. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 7 contract row(s) across bsc. Structural roles: 5 unclassified, 1 core, 1 infra. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 7
- Structural roles: unclassified (5), core (1), infra (1)
- Contract kinds: contract (7)
- Detected standards: erc1967proxy (1), erc20 (1), erc20permit (1)
- Frameworks: openzeppelin (2), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 6 contracts are derived from known codebases. 6 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xb67e5e...2beb0f`, chain 56)
- ERC1967Proxy (`0x00b4f9...85088e`, chain 56)
- ERC1967Proxy (`0x2c02f5...95065a`, chain 56)
- ERC1967Proxy (`0x90bb5b...3aab84`, chain 56)
- ERC1967Proxy (`0xaf44a1...888122`, chain 56)
- PancakePair (`0x2ad9c1...30b9c5`, chain 56)

## Contract Surface Quality

- Indexed contracts: 7; live-surface contracts included: 7 (5 live, 2 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 6/6 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/5 (40.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 6 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 4
- Deployed-live implementations: 6 of 6 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 2/5
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 6
- Raw deployments: 6
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-11 (fresh)
- Audit staleness (calendar age): 2 fresh, 4 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| RigSec | Tier 2 | 1 | 20.0% | 2025-05 |
| WatchPug | Tier 2 | 1 | 20.0% | 2025-11 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Settler | unknown | project_anchor | own_supporting | 1 | bsc | unit-393102 | `0x2c02f5...95065a` | ✅ Audited |
| StandDUSD | unknown | project_anchor | own_supporting | 1 | bsc | unit-393103 | `0xaf44a1...888122` | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ERC1967Proxy | unknown | project_anchor | own_supporting | 1 | bsc | unit-393104 | `0x00b4f9...85088e` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | project_anchor | own_supporting | 1 | bsc | unit-393105 | `0x90bb5b...3aab84` | ⚠️ Unaudited |
| PancakePair | unknown | project_anchor | own_supporting | 0 | bsc | unit-393100 | `0x2ad9c1...30b9c5` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-393101 | `0xb67e5e...2beb0f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [WatchPug_StandX_DUSD_Solana_Audit.pdf](https://github.com/standx-labs/stand_audit/blob/main/WatchPug_StandX_DUSD_Solana_Audit.pdf) | WatchPug | Audit | 2025-03 | aging | Direct | n/a | no match | 0 | 0 | 0 | 5 | n/a |
| [WatchPug_StandX_DUSD_EVM_Audit.pdf](https://github.com/standx-labs/stand_audit/blob/main/WatchPug_StandX_DUSD_EVM_Audit.pdf) | WatchPug | Audit | 2025-04 | aging | Direct | n/a | matched | 1 | 1 | 0 | 6 | n/a |
| [WatchPug_StandX_Highway_EVM_Audit.pdf](https://github.com/standx-labs/stand_audit/blob/main/WatchPug_StandX_Highway_EVM_Audit.pdf) | WatchPug | Audit | 2025-10 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 6 | n/a |
| [WatchPug_StandX_Highway_SVM_Audit.pdf](https://github.com/standx-labs/stand_audit/blob/main/WatchPug_StandX_Highway_SVM_Audit.pdf) | WatchPug | Audit | 2025-11 | fresh | Direct | n/a | matched | 1 | 1 | 0 | 8 | n/a |
| [RigSec_StandX_DUSD_Solana_Audit.pdf](https://github.com/standx-labs/stand_audit/blob/main/RigSec_StandX_DUSD_Solana_Audit.pdf) | RigSec | Audit | 2025-05 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [RigSec_StandX_DUSD_EVM_Audit.pdf](https://github.com/standx-labs/stand_audit/blob/main/RigSec_StandX_DUSD_EVM_Audit.pdf) | RigSec | Audit | 2025-05 | aging | Direct | n/a | matched | 1 | 1 | 0 | 4 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3856] WatchPug_StandX_DUSD_Solana_Audit.pdf — no match: No reason recorded
- [3857] WatchPug_StandX_DUSD_EVM_Audit.pdf — matched: No reason recorded
- [3858] WatchPug_StandX_Highway_EVM_Audit.pdf — no match: No reason recorded
- [3859] WatchPug_StandX_Highway_SVM_Audit.pdf — matched: No reason recorded
- [3860] RigSec_StandX_DUSD_Solana_Audit.pdf — no match: The scope section only lists a repository URL and commit hash, not specific contract or file names. No contract names are explicitly mentioned in the scope.
- [3861] RigSec_StandX_DUSD_EVM_Audit.pdf — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| WatchPug_StandX_DUSD_Solana_Audit.pdf | Gateway | unmatched — not counted | — | — | no |
| WatchPug_StandX_DUSD_Solana_Audit.pdf | MultiToken | unmatched — not counted | — | — | no |
| WatchPug_StandX_DUSD_Solana_Audit.pdf | PartialGatewayState | unmatched — not counted | — | — | no |
| WatchPug_StandX_DUSD_Solana_Audit.pdf | User | unmatched — not counted | — | — | no |
| WatchPug_StandX_DUSD_Solana_Audit.pdf | WithdrawReq | unmatched — not counted | — | — | no |
| WatchPug_StandX_DUSD_EVM_Audit.pdf | Gateway | unmatched — not counted | — | — | no |
| WatchPug_StandX_DUSD_EVM_Audit.pdf | GatewayLib | unmatched — not counted | — | — | no |
| WatchPug_StandX_DUSD_EVM_Audit.pdf | IGateway | unmatched — not counted | — | — | no |
| WatchPug_StandX_DUSD_EVM_Audit.pdf | PriceOracle | unmatched — not counted | — | — | no |
| WatchPug_StandX_DUSD_EVM_Audit.pdf | Settler | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x2c02f5...95065a` — deployed 2025-03-14 09:54:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| WatchPug_StandX_DUSD_EVM_Audit.pdf | TokenLib | unmatched — not counted | — | — | no |
| WatchPug_StandX_DUSD_EVM_Audit.pdf | UserLib | unmatched — not counted | — | — | no |
| WatchPug_StandX_Highway_EVM_Audit.pdf | Highway | unmatched — not counted | — | — | no |
| WatchPug_StandX_Highway_EVM_Audit.pdf | HighwayCaller | unmatched — not counted | — | — | no |
| WatchPug_StandX_Highway_EVM_Audit.pdf | HighwayCallerLib | unmatched — not counted | — | — | no |
| WatchPug_StandX_Highway_EVM_Audit.pdf | HighwayCallerMap | unmatched — not counted | — | — | no |
| WatchPug_StandX_Highway_EVM_Audit.pdf | HighwayLib | unmatched — not counted | — | — | no |
| WatchPug_StandX_Highway_EVM_Audit.pdf | HighwayState | unmatched — not counted | — | — | no |
| WatchPug_StandX_Highway_SVM_Audit.pdf | HighwayCaller | unmatched — not counted | — | — | no |
| WatchPug_StandX_Highway_SVM_Audit.pdf | HighwayState | unmatched — not counted | — | — | no |
| WatchPug_StandX_Highway_SVM_Audit.pdf | Message | unmatched — not counted | — | — | no |
| WatchPug_StandX_Highway_SVM_Audit.pdf | MessageEvent | unmatched — not counted | — | — | no |
| WatchPug_StandX_Highway_SVM_Audit.pdf | MessageSignature | unmatched — not counted | — | — | no |
| WatchPug_StandX_Highway_SVM_Audit.pdf | MessageStatus | unmatched — not counted | — | — | no |
| WatchPug_StandX_Highway_SVM_Audit.pdf | MultisigConfig | unmatched — not counted | — | — | no |
| WatchPug_StandX_Highway_SVM_Audit.pdf | Settler | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x2c02f5...95065a` — deployed 2025-03-14 09:54:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| WatchPug_StandX_Highway_SVM_Audit.pdf | WithdrawMsg | unmatched — not counted | — | — | no |
| RigSec_StandX_DUSD_EVM_Audit.pdf | Gateway | unmatched — not counted | — | — | no |
| RigSec_StandX_DUSD_EVM_Audit.pdf | GatewayLib | unmatched — not counted | — | — | no |
| RigSec_StandX_DUSD_EVM_Audit.pdf | PriceOracle | unmatched — not counted | — | — | no |
| RigSec_StandX_DUSD_EVM_Audit.pdf | StandDUSD | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xaf44a1...888122` — deployed 2025-03-14 09:54:33+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| RigSec_StandX_DUSD_EVM_Audit.pdf | UserLib | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x2ad9c1...30b9c5` | PancakePair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 3 own (3 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 29 unmatched
- Matched-own operational status: 3 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=1
- Match method counts: unique_name=3

Zero-match audit list:

- [3856] WatchPug_StandX_DUSD_Solana_Audit.pdf
- [3858] WatchPug_StandX_Highway_EVM_Audit.pdf
- [3860] RigSec_StandX_DUSD_Solana_Audit.pdf

Fork inheritance lineage and inherited audits are included when available.
