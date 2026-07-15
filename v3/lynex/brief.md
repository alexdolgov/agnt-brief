# Agentic Audit Brief: Lynex

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

- Project: Lynex (`lynex`)
- Website: [https://app.lynex.fi](https://app.lynex.fi)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: linea
- Contract surface: 17 unique implementations (17 raw deployments)
- Coverage basis: 0/17 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $769,065.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Lynex. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 22 contract row(s) across linea. Structural roles: 8 supporting, 7 unclassified, 5 core, 2 infra. 7 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 22
- Structural roles: supporting (8), unclassified (7), core (5), infra (2)
- Contract kinds: contract (22)
- Detected standards: ownable (5), ownable2step (5), erc1967proxy (3), erc20 (2), accesscontrol (1), erc165 (1), erc20permit (1), multicall (1)
- Frameworks: openzeppelin (9), openzeppelin-upgradeable (4), chainlink (2)
- Upgradeable-pattern rows: 7

## Fork Analysis

0 of 11 contracts are derived from known codebases. 11 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- AlgebraFactory (`0x622b2c...a08d0f`, chain 59144)
- BribeOptionToken (`0xe8a4c9...ce557b`, chain 59144)
- Lynex (`0x1a51b1...71e9af`, chain 59144)
- PairFactory (`0xbc7695...99f9ee`, chain 59144)
- QuoterV2 (`0xce8296...3a0640`, chain 59144)
- RewardsDistributorV2 (`0x2222c5...910ee4`, chain 59144)
- RouterV2 (`0x610d2f...c34e74`, chain 59144)
- SwapRouter (`0x3921e8...583390`, chain 59144)
- TransparentUpgradeableProxy (`0x0b2c83...3b63c5`, chain 59144)
- TransparentUpgradeableProxy (`0x8d95f5...9b4c0c`, chain 59144)
- TransparentUpgradeableProxy (`0xfa638e...45c469`, chain 59144)

## Contract Surface Quality

- Indexed contracts: 22; live-surface contracts included: 22 (17 live, 5 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 17/17 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/17 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 17 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 8
- Deployed-live implementations: 17 of 17 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/17
- Verified + Unaudited implementations: 17
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 17
- Raw deployments: 17
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (17)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AlgebraFactory | registry | project_anchor | own_supporting | 0 | linea | unit-388629 | `0x622b2c...a08d0f` | ⚠️ Unaudited |
| BribeFactoryV4 | unknown | project_anchor | own_supporting | 1 | linea | unit-388637 | `0xca79b7...b325b0` | ⚠️ Unaudited |
| BribeOptionToken | operational_periphery | project_anchor | own_supporting | 0 | linea | unit-388633 | `0xe8a4c9...ce557b` | ⚠️ Unaudited |
| DistributeFees | unknown | project_anchor | own_supporting | 1 | linea | unit-388641 | `0xfa638e...45c469` | ⚠️ Unaudited |
| EpochController | unknown | project_anchor | own_supporting | 1 | linea | unit-388635 | `0xd8a570...f8a9b9` | ⚠️ Unaudited |
| GaugeFactoryV2 | unknown | project_anchor | own_supporting | 1 | linea | unit-388638 | `0xb94404...41948e` | ⚠️ Unaudited |
| GaugeFactoryV2_CL | unknown | project_anchor | own_supporting | 1 | linea | unit-388636 | `0xc04d35...2783ee` | ⚠️ Unaudited |
| Lynex | unknown | project_anchor | own_supporting | 0 | linea | unit-388625 | `0x1a51b1...71e9af` | ⚠️ Unaudited |
| MinterUpgradeableV2 | unknown | project_anchor | own_supporting | 1 | linea | unit-388639 | `0x9030ae...eb19d4` | ⚠️ Unaudited |
| OptionTokenV3 | unknown | project_anchor | own_supporting | 0 | linea | unit-388630 | `0x63349b...400b60` | ⚠️ Unaudited |
| PairFactory | registry | project_anchor | own_supporting | 0 | linea | unit-388631 | `0xbc7695...99f9ee` | ⚠️ Unaudited |
| QuoterV2 | unknown | project_anchor | own_supporting | 0 | linea | unit-388632 | `0xce8296...3a0640` | ⚠️ Unaudited |
| RewardsDistributorV2 | operational_periphery | project_anchor | own_supporting | 0 | linea | unit-388626 | `0x2222c5...910ee4` | ⚠️ Unaudited |
| RouterV2 | adapter | project_anchor | own_supporting | 0 | linea | unit-388628 | `0x610d2f...c34e74` | ⚠️ Unaudited |
| SwapRouter | adapter | project_anchor | own_supporting | 0 | linea | unit-388627 | `0x3921e8...583390` | ⚠️ Unaudited |
| VoterV5 | unknown | project_anchor | own_supporting | 1 | linea | unit-388634 | `0x0b2c83...3b63c5` | ⚠️ Unaudited |
| VotingEscrowV2Upgradeable | operational_periphery | project_anchor | own_supporting | 1 | linea | unit-388640 | `0x8d95f5...9b4c0c` | ⚠️ Unaudited |

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
| [audits.md](https://lynex.gitbook.io/lynex-docs/info-and-security/audits.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [26396] audits.md — no match: The document is a general security overview page, not an audit report. It mentions audits by Secure3, OpenZeppelin, PeckShield, ABDK Consulting, Hexens, and Hacken, but does not list specific contracts in scope. No contract names or audit dates are extractable.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| linea | `0x622b2c...a08d0f` | AlgebraFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xca79b7...b325b0` | BribeFactoryV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xe8a4c9...ce557b` | BribeOptionToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xfa638e...45c469` | DistributeFees | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xd8a570...f8a9b9` | EpochController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xb94404...41948e` | GaugeFactoryV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xc04d35...2783ee` | GaugeFactoryV2_CL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x1a51b1...71e9af` | Lynex | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x9030ae...eb19d4` | MinterUpgradeableV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x63349b...400b60` | OptionTokenV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xbc7695...99f9ee` | PairFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xce8296...3a0640` | QuoterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x2222c5...910ee4` | RewardsDistributorV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x610d2f...c34e74` | RouterV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x3921e8...583390` | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x0b2c83...3b63c5` | VoterV5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x8d95f5...9b4c0c` | VotingEscrowV2Upgradeable | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 17 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=1
- Match method counts: n/a

Zero-match audit list:

- [26396] audits.md

Fork inheritance lineage and inherited audits are included when available.
