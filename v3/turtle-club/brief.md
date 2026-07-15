# Agentic Audit Brief: Turtle Club

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

- Project: Turtle Club (`turtle-club`)
- Website: [https://app.turtle.xyz/](https://app.turtle.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc, ethereum, linea
- Contract surface: 11 unique implementations (11 raw deployments)
- Coverage basis: 0/11 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $850,321.87
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Turtle Club. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 17 contract row(s) across bsc, ethereum, linea. Structural roles: 10 core, 7 supporting. 12 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 17
- Structural roles: core (10), supporting (7)
- Contract kinds: contract (15), abstract (2)
- Detected standards: erc1967proxy (9), ownable (9), erc165 (4), erc20 (4), erc20permit (4), ownable2step (1), pausable (1)
- Frameworks: openzeppelin (13), openzeppelin-upgradeable (12), chainlink (3), foundry (2)
- Upgradeable-pattern rows: 12

## Fork Analysis

0 of 11 contracts are derived from known codebases. 11 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- BurnMintTokenPool (`0xd3bd7d...2f8bbb`, chain 1)
- BurnMintTokenPool (`0x455960...04335a`, chain 56)
- BurnMintTokenPool (`0x7263bc...c0c647`, chain 59144)
- Drip (`0x56aa6d...bae8ef`, chain 56)
- ERC1967Proxy (`0x233cbc...73e7fc`, chain 1)
- SafeProxy (`0x2e0355...7f25b2`, chain 1)
- StakeProxy (`0x7c329f...d48825`, chain 1)
- TurtleGovernorProxy (`0x27cbb9...4ffece`, chain 1)
- TurtleProxy (`0x66fd8d...0d3afd`, chain 1)
- TurtleProxy (`0x66fd8d...0d3afd`, chain 56)
- TurtleProxy (`0x56aa6d...bae8ef`, chain 59144)

## Contract Surface Quality

- Indexed contracts: 17; live-surface contracts included: 17 (11 live, 6 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 11/11 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/11 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 11 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 7
- Deployed-live implementations: 11 of 11 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/11
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 11
- Raw deployments: 11
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-01 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 0 unknown
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
| BurnMintTokenPool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-259841 | `0xd3bd7d...2f8bbb` | ⚠️ Unaudited |
| BurnMintTokenPool | core_logic | project_anchor | own_supporting | 0 | bsc | unit-259842 | `0x455960...04335a` | ⚠️ Unaudited |
| BurnMintTokenPool | core_logic | project_anchor | own_supporting | 0 | linea | unit-259844 | `0x7263bc...c0c647` | ⚠️ Unaudited |
| Drip | unknown | project_anchor | own_supporting | 0 | bsc | unit-259843 | `0x56aa6d...bae8ef` | ⚠️ Unaudited |
| Safe | unknown | project_anchor | own_supporting | 1 | ethereum | unit-259846 | `0x2e0355...7f25b2` | ⚠️ Unaudited |
| Stake | unknown | project_anchor | own_supporting | 1 | ethereum | unit-259845 | `0x7c329f...d48825` | ⚠️ Unaudited |
| StakeToken | token | project_anchor | own_supporting | 1 | ethereum | unit-259849 | `0x233cbc...73e7fc` | ⚠️ Unaudited |
| Turtle | unknown | project_anchor | own_supporting | 1 | ethereum | unit-259848 | `0x66fd8d...0d3afd` | ⚠️ Unaudited |
| Turtle | unknown | project_anchor | own_supporting | 1 | bsc | unit-259850 | `0x66fd8d...0d3afd` | ⚠️ Unaudited |
| Turtle | unknown | project_anchor | own_supporting | 1 | linea | unit-259851 | `0x56aa6d...bae8ef` | ⚠️ Unaudited |
| TurtleGovernor | governance | project_anchor | own_supporting | 1 | ethereum | unit-259847 | `0x27cbb9...4ffece` | ⚠️ Unaudited |

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
| [Streams Contract Audit (Cantina)](https://drive.google.com/file/d/17-KHHhgcOTUVI6JcwTLvhoWp7lrNTyJP/view?usp=sharing) | Spearbit | Audit | 2026-01 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [29896] Streams Contract Audit (Cantina) — no match: Scope section explicitly lists three files: Stream.sol, StreamFactory.sol, StreamFactoryProxy.sol. Audit date from cover page: January 30, 2026.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Streams Contract Audit (Cantina) | Stream | unmatched — not counted | — | listed in scope | no |
| Streams Contract Audit (Cantina) | StreamFactory | unmatched — not counted | — | listed in scope | no |
| Streams Contract Audit (Cantina) | StreamFactoryProxy | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xd3bd7d...2f8bbb` | BurnMintTokenPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x455960...04335a` | BurnMintTokenPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x7263bc...c0c647` | BurnMintTokenPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x56aa6d...bae8ef` | Drip | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7c329f...d48825` | Stake | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x233cbc...73e7fc` | StakeToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x66fd8d...0d3afd` | Turtle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x66fd8d...0d3afd` | Turtle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x56aa6d...bae8ef` | Turtle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x27cbb9...4ffece` | TurtleGovernor | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 10 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 3 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [29896] Streams Contract Audit (Cantina)

Fork inheritance lineage and inherited audits are included when available.
