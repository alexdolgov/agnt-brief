# Agentic Audit Brief: ChainPort

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 4 (0 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: ChainPort (`chainport`)
- Website: [https://app.chainport.io](https://app.chainport.io)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, boba, bsc, ethereum, fantom, linea, opbnb, optimism, polygon
- Contract surface: 26 unique implementations (26 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $597,159.76
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for ChainPort in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 15 contracts are derived from known codebases. 15 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x763a0c...f8b89a`, chain 1)
- UnnamedContract (`0x97fecf...183843`, chain 1)
- UnnamedContract (`0xca9a74...499a46`, chain 1)
- UnnamedContract (`0x26ab62...d3bb6c`, chain 10)
- UnnamedContract (`0x5c80ae...489afe`, chain 56)
- UnnamedContract (`0xe4bb1a...c8d425`, chain 56)
- UnnamedContract (`0x088884...44337d`, chain 137)
- UnnamedContract (`0x118cbd...cc8c0d`, chain 137)
- UnnamedContract (`0xf9ac93...e256c8`, chain 137)
- UnnamedContract (`0x48d20d...c99bf9`, chain 204)
- UnnamedContract (`0xd80466...06d7aa`, chain 250)
- UnnamedContract (`0x395c2e...9b6d0a`, chain 288)
- UnnamedContract (`0x24ce77...6713f8`, chain 8453)
- UnnamedContract (`0xc56de5...c96814`, chain 42161)
- UnnamedContract (`0x395c2e...9b6d0a`, chain 59144)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 15/29 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 15 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 11 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 15 of 26 unique; 11 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/11
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 15
- Unique implementations: 26
- Raw deployments: 26
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BridgeMintableTokenV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x104f31...6566ac` | ⚠️ Unaudited |
| ChainportBridgeBsc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x71b4ea...c48aa0` | ⚠️ Unaudited |
| ChainportCongress | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x71d57e...949621` | ⚠️ Unaudited |
| ChainportCongressMembersRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1dee7b...50abca` | ⚠️ Unaudited |
| ChainportMainBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93307c...c7ddff` | ⚠️ Unaudited |
| ChainportSideBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb19881...47de1a` | ⚠️ Unaudited |
| ChainportToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x241663...0a5df5` | ⚠️ Unaudited |
| MaintainersRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x33e6a5...6eeb13` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2861f4...9fc35c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x104f31...6566ac` | ⚠️ Unaudited |
| Validator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x451b0d...f36769` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (15)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-231817 | `0x763a0c...f8b89a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-231818 | `0x97fecf...183843` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-231819 | `0xca9a74...499a46` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-231821 | `0x26ab62...d3bb6c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-231839 | `0x5c80ae...489afe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-231840 | `0xe4bb1a...c8d425` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-231825 | `0x088884...44337d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-231826 | `0x118cbd...cc8c0d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-231827 | `0xf9ac93...e256c8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | opbnb | unit-231829 | `0x48d20d...c99bf9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-231831 | `0xd80466...06d7aa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | boba | unit-231833 | `0x395c2e...9b6d0a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-231844 | `0x24ce77...6713f8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-231835 | `0xc56de5...c96814` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-231842 | `0x395c2e...9b6d0a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [DL audit link](https://skynet.certik.com/projects/chainport) | CertiK | Audit | 2023-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | medium |
| [**CyberUnit:** <>](https://www.chainport.io/audits/cyberunit) | CyberUnit | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [**Zokyo:** <>](https://www.chainport.io/audits/zokyo-audit) | Zokyo | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [**Trail of Bits:** <>](https://github.com/trailofbits/publications/blob/master/reviews/2023-02-chainport-fixreview.pdf) | Trail of Bits | Audit | 2023-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [19639] DL audit link — no match: Extracted from audit history list; no detailed scope table or file paths provided.
- [19640] **CyberUnit:** <> — no match: The provided text is not an audit report; it appears to be a website cookie consent and newsletter subscription prompt. No contract names or audit details are present.
- [19641] **Zokyo:** <> — no match: The provided text is not an audit report but a cookie consent banner and newsletter subscription prompt. No contract names or audit details are present.
- [19642] **Trail of Bits:** <> — no match: Extracted contract names from findings targets and scope section. Audit date from cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| DL audit link | Chainport | unmatched — not counted | — | listed in audit history | no |
| DL audit link | Chainport (PORT) | unmatched — not counted | — | listed in audit history | no |
| DL audit link | Chainport (PORTX) | unmatched — not counted | — | listed in audit history | no |
| DL audit link | Chainport (Sol part) | unmatched — not counted | — | listed in audit history | no |
| DL audit link | Chainport Protocol | unmatched — not counted | — | listed in audit history | no |
| DL audit link | ChainPort-Cardano Bridge | unmatched — not counted | — | listed in audit history | no |
| **Trail of Bits:** <> | ChainportMainBridge | unmatched — not counted | — | Target in finding 7, 8 | no |
| **Trail of Bits:** <> | ChainportSideBridge | unmatched — not counted | — | Target in finding 7, 8 | no |
| **Trail of Bits:** <> | Validator | unmatched — not counted | — | Target in finding 7 | no |
| **Trail of Bits:** <> | ChainportMiddleware | unmatched — not counted | — | Target in finding 8 | no |
| **Trail of Bits:** <> | ChainportCongressMembersRegistry | unmatched — not counted | — | Target in finding 14 | no |
| **Trail of Bits:** <> | ChainportFeeManager | unmatched — not counted | — | Target in finding 15 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 15 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 12 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=2, medium=1
- Match method counts: n/a

Zero-match audit list:

- [19639] DL audit link
- [19640] **CyberUnit:** <>
- [19641] **Zokyo:** <>
- [19642] **Trail of Bits:** <>

Fork inheritance lineage and inherited audits are included when available.
