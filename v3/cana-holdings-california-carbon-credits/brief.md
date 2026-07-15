# Agentic Audit Brief: CANA Holdings California Carbon Credits

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 2 (1 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: CANA Holdings California Carbon Credits (`cana-holdings-california-carbon-credits`)
- Website: [https://maseer.finance/](https://maseer.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 22 unique implementations (22 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $889,686.69
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for CANA Holdings California Carbon Credits. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across ethereum. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: erc20permit (1)
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 21 contracts are derived from known codebases. 21 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x00d2dc...bdf8d7`, chain 1)
- UnnamedContract (`0x0a4c31...93e249`, chain 1)
- UnnamedContract (`0x0f6f65...50c31d`, chain 1)
- UnnamedContract (`0x12c809...c56141`, chain 1)
- UnnamedContract (`0x192575...437a56`, chain 1)
- UnnamedContract (`0x1c571c...f027ae`, chain 1)
- UnnamedContract (`0x2848d4...12dccf`, chain 1)
- UnnamedContract (`0x3a0de7...65b128`, chain 1)
- UnnamedContract (`0x3bb8eb...159255`, chain 1)
- UnnamedContract (`0x44bfeb...9ff072`, chain 1)
- UnnamedContract (`0x456e00...b1a718`, chain 1)
- UnnamedContract (`0x53d076...013677`, chain 1)
- UnnamedContract (`0x57c357...83b7ae`, chain 1)
- UnnamedContract (`0x635dbb...6c9d77`, chain 1)
- UnnamedContract (`0x6a79dc...5d07df`, chain 1)
- UnnamedContract (`0x78fa70...18d5fd`, chain 1)
- UnnamedContract (`0x794cf5...036d52`, chain 1)
- UnnamedContract (`0xa8f5be...86626a`, chain 1)
- UnnamedContract (`0xb59cb4...300f7f`, chain 1)
- UnnamedContract (`0xe7c5c4...40fda7`, chain 1)
- MaseerOne (`0x01995a...b8350b`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 21/22 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 21 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 1 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 21 of 22 unique; 1 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/2
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 20
- Unique implementations: 22
- Raw deployments: 22
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-04 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| MaseerOne | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381533 | `0x01995a...b8350b` | ⚠️ Unaudited |
| Safe | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xb56f41...133f66` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (20)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381532 | `0x00d2dc...bdf8d7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381534 | `0x0a4c31...93e249` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381535 | `0x0f6f65...50c31d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381536 | `0x12c809...c56141` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381537 | `0x192575...437a56` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381538 | `0x1c571c...f027ae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381539 | `0x2848d4...12dccf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381540 | `0x3a0de7...65b128` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381541 | `0x3bb8eb...159255` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381542 | `0x44bfeb...9ff072` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381543 | `0x456e00...b1a718` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381544 | `0x53d076...013677` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381545 | `0x57c357...83b7ae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381546 | `0x635dbb...6c9d77` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381547 | `0x6a79dc...5d07df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381548 | `0x78fa70...18d5fd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381549 | `0x794cf5...036d52` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381550 | `0xa8f5be...86626a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381551 | `0xb59cb4...300f7f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381553 | `0xe7c5c4...40fda7` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Prototech Labs - Maseer Security Report.pdf](https://github.com/maseer-finance/maseer-one/blob/master/docs/audits/Prototech%20Labs%20-%20Maseer%20Security%20Report.pdf) | unknown | Audit | 2025-04 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 8 | high |
| [prototechlabs.dev](https://prototechlabs.dev/) | Prototech Labs | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [12881] Prototech Labs - Maseer Security Report.pdf — matched: Contracts explicitly listed in scope: MaseerGate, MaseerOne, MaseerPrice, MaseerToken, MaseerPrecommit, MaseerConduit, MaseerGuard, MaseerTreasury, MaseerProxy. Audit date from cover page: Final: 14th April 2025.
- [12882] prototechlabs.dev — no match: The provided text is a marketing brochure for Prototech Labs, not an audit report. No contracts, scope, or audit date are mentioned.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Prototech Labs - Maseer Security Report.pdf | MaseerGate | unmatched — not counted | — | Listed in scope and findings reference MaseerGate.sol | no |
| Prototech Labs - Maseer Security Report.pdf | MaseerOne | ambiguous — not counted | 0x57c357… (alternative) `0x57c357...83b7ae` — liveness: live (current_address_book_code)<br>MaseerOne (alternative) `0x01995a...b8350b` — deployed 2025-06-20 22:48:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Prototech Labs - Maseer Security Report.pdf | MaseerPrice | unmatched — not counted | — | Listed in scope and findings reference MaseerPrice.sol | no |
| Prototech Labs - Maseer Security Report.pdf | MaseerToken | unmatched — not counted | — | Listed in scope and findings reference MaseerToken.sol | no |
| Prototech Labs - Maseer Security Report.pdf | MaseerPrecommit | own contract | 0x0f6f65… (selected) `0x0f6f65...50c31d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Prototech Labs - Maseer Security Report.pdf | MaseerConduit | unmatched — not counted | — | Listed in scope and findings reference MaseerConduit.sol | no |
| Prototech Labs - Maseer Security Report.pdf | MaseerGuard | unmatched — not counted | — | Listed in scope and findings reference MaseerGuard.sol | no |
| Prototech Labs - Maseer Security Report.pdf | MaseerTreasury | unmatched — not counted | — | Listed in scope as upgradeable contract | no |
| Prototech Labs - Maseer Security Report.pdf | MaseerProxy | unmatched — not counted | — | Listed in scope as upgradeability pattern | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x01995a...b8350b` | MaseerOne | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 20 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 1 ambiguous, 7 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=1
- Match method counts: unique_name=1

Zero-match audit list:

- [12882] prototechlabs.dev

Fork inheritance lineage and inherited audits are included when available.
