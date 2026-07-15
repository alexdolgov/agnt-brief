# Agentic Audit Brief: Chain Fusion

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Chain Fusion (`chain-fusion`)
- Website: [https://dashboard.internetcomputer.org/chain-fusion](https://dashboard.internetcomputer.org/chain-fusion)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 10 unique implementations (11 raw deployments)
- Coverage basis: 0/10 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $17,508,254.60
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Chain Fusion. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 11 contract row(s) across ethereum. Structural roles: 11 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 11
- Structural roles: unclassified (11)
- Contract kinds: contract (11)
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 11 contracts are derived from known codebases. 11 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- FiatTokenProxy (`0x1abaea...1bc33c`, chain 1)
- FiatTokenProxy (`0xa0b869...06eb48`, chain 1)
- LinkToken (`0x514910...f986ca`, chain 1)
- OctToken (`0xf5cfbc...68c6dc`, chain 1)
- PepeToken (`0x698250...311933`, chain 1)
- TetherToken (`0xdac17f...831ec7`, chain 1)
- TokenMintERC20Token (`0x95ad61...64c4ce`, chain 1)
- TransparentUpgradeableProxy (`0x687496...782f38`, chain 1)
- Uni (`0x1f9840...01f984`, chain 1)
- WBTC (`0x2260fa...c2c599`, chain 1)
- WstETH (`0x7f39c5...5e2ca0`, chain 1)

## Contract Surface Quality

- Indexed contracts: 11; live-surface contracts included: 11 (11 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 10/13 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/10 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 10 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 3
- Deployed-live implementations: 10 of 10 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/10
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 10
- Raw deployments: 11
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| FiatTokenV2_2 | unknown | project_anchor | own_supporting | 2 | ethereum | unit-381684 (2 proxies) | 2 deployments: ethereum `0x1abaea...1bc33c`; ethereum `0xa0b869...06eb48` | ⚠️ Unaudited |
| LinkToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381676 | `0x514910...f986ca` | ⚠️ Unaudited |
| OctToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381683 | `0xf5cfbc...68c6dc` | ⚠️ Unaudited |
| PepeToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381678 | `0x698250...311933` | ⚠️ Unaudited |
| TetherToken | unknown | project_anchor | own_supporting | 1 | ethereum | unit-381685 | `0x687496...782f38` | ⚠️ Unaudited |
| TetherToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381682 | `0xdac17f...831ec7` | ⚠️ Unaudited |
| TokenMintERC20Token | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381681 | `0x95ad61...64c4ce` | ⚠️ Unaudited |
| Uni | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381674 | `0x1f9840...01f984` | ⚠️ Unaudited |
| WBTC | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381675 | `0x2260fa...c2c599` | ⚠️ Unaudited |
| WstETH | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381680 | `0x7f39c5...5e2ca0` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2023-06-dfinity-ckBTC-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2023-06-dfinity-ckBTC-securityreview.pdf) | Trail of Bits | Audit | 2023-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [12893] 2023-06-dfinity-ckBTC-securityreview.pdf — no match: Extracted from Project Targets section and detailed findings. The audit report covers ckBTC and BTC integration, specifically the minter and KYT canisters.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2023-06-dfinity-ckBTC-securityreview.pdf | kyt | unmatched — not counted | — | listed in Project Targets and detailed findings | no |
| 2023-06-dfinity-ckBTC-securityreview.pdf | minter | unmatched — not counted | — | listed in Project Targets and detailed findings | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 10 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 2 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [12893] 2023-06-dfinity-ckBTC-securityreview.pdf

Fork inheritance lineage and inherited audits are included when available.
