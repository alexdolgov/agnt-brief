# Agentic Audit Brief: Aurigami

## Export Authority

- Production state: **published scope**
- Raw selected rows: 3 across 1 audit(s)
- Eligible audit results: 2 (1 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

⚠️ Lifecycle status: DEAD - TVL changed 9.4% over 90 days

## Project Overview

- Project: Aurigami (`aurigami`)
- Website: [https://www.aurigami.finance](https://www.aurigami.finance)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: aurora, ethereum
- Contract surface: 27 unique implementations (27 raw deployments)
- Coverage basis: 0/2 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $772,292.27
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Aurigami. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across aurora, ethereum. Structural roles: 2 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: core (2)
- Contract kinds: contract (2)
- Detected standards: erc20 (1)
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 25 contracts are derived from known codebases. 25 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x04ac48711bcdc45b4d223fb021e09da73c71095e`, chain 1313161554)
- UnnamedContract (`0x054fc05b20bd0a4c44cde830ac086b511e9098bf`, chain 1313161554)
- UnnamedContract (`0x0bc03bd8d4af1e8bab2194860268f5774c9d400a`, chain 1313161554)
- UnnamedContract (`0x3195949f267702723bc614cae037cdc8d1e94786`, chain 1313161554)
- UnnamedContract (`0x4f0d864b1abf4b701799a0b30b57a22dfeb5917b`, chain 1313161554)
- UnnamedContract (`0x5715c45d2c82292d8e5961eb5e2c66fe0fc5412b`, chain 1313161554)
- UnnamedContract (`0x5ccad065400341db391fd3a4b7f50087b678d7cc`, chain 1313161554)
- UnnamedContract (`0x60bf668ca101060bd83bd644531a38719586b89f`, chain 1313161554)
- UnnamedContract (`0x6ea6c03061bddce23d4ec60b6e6e880c33d24dca`, chain 1313161554)
- UnnamedContract (`0x817af6cfaf35bdc1a634d6cc94ee9e4c68369aeb`, chain 1313161554)
- UnnamedContract (`0x8888682e24dd4df7b7ff2b91fccb575737e433bf`, chain 1313161554)
- UnnamedContract (`0xa200b567579a577f582d292f7a1b5c4ecce195f8`, chain 1313161554)
- UnnamedContract (`0xa308a5003fa1a25bfdd9418fcee51d48dbe441e6`, chain 1313161554)
- UnnamedContract (`0xa8f1a390ca227365fec3e53cf2851520b77743a1`, chain 1313161554)
- UnnamedContract (`0xad5a2437ff55ed7a8cad3b797b3ec7c5a19b1c54`, chain 1313161554)
- UnnamedContract (`0xae4fac24dcdae0132c6d04f564dcf059616e9423`, chain 1313161554)
- UnnamedContract (`0xc6e5185438e1730959c1ef3551059a3fec744e90`, chain 1313161554)
- UnnamedContract (`0xc9011e629c9d0b8b1e4a2091e123fbb87b3a792c`, chain 1313161554)
- UnnamedContract (`0xc9a848ac73e378516b16e4eebba5ef6afbc0bbc2`, chain 1313161554)
- UnnamedContract (`0xca9511b610ba5fc7e311fdef9ce16050ee4449e9`, chain 1313161554)
- UnnamedContract (`0xcecd147409b2d64a9a2e5418e3e471e8af19e0bd`, chain 1313161554)
- UnnamedContract (`0xcfb6b0498cb7555e7e21502e0f449bf28760adbb`, chain 1313161554)
- UnnamedContract (`0xffdffbdb966cb84b50e62d70105f2dbf2e0a1e70`, chain 1313161554)
- EvmErc20 (`0x09c9d464b58d96837f8d8b6f4d9fe4ad408d3a4f`, chain 1313161554)
- Ply (`0x1ab43204a195a0fd37edec621482afd3792ef90b`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 25/25 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/2 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 25 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 2 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 25 of 27 unique; 2 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/4
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 23
- Unique implementations: 27
- Raw deployments: 27
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| EvmErc20 | token | project_anchor | own_supporting | 0 | aurora | unit-227660 | `0x09c9d464b58d96837f8d8b6f4d9fe4ad408d3a4f` | ⚠️ Unaudited |
| EvmErc20 | token | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x3d4205511c25ccd29e3fff6fba0d321b44bb7980` | ⚠️ Unaudited |
| Ply | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227654 | `0x1ab43204a195a0fd37edec621482afd3792ef90b` | ⚠️ Unaudited |
| Ply | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7cc183af8d90015e5aa935a5240be1c2b367b877` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (23)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-227656 | `0x04ac48711bcdc45b4d223fb021e09da73c71095e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-227658 | `0x054fc05b20bd0a4c44cde830ac086b511e9098bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-227662 | `0x0bc03bd8d4af1e8bab2194860268f5774c9d400a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-227664 | `0x3195949f267702723bc614cae037cdc8d1e94786` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-227666 | `0x4f0d864b1abf4b701799a0b30b57a22dfeb5917b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-227668 | `0x5715c45d2c82292d8e5961eb5e2c66fe0fc5412b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-227670 | `0x5ccad065400341db391fd3a4b7f50087b678d7cc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-227672 | `0x60bf668ca101060bd83bd644531a38719586b89f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-227674 | `0x6ea6c03061bddce23d4ec60b6e6e880c33d24dca` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-227676 | `0x817af6cfaf35bdc1a634d6cc94ee9e4c68369aeb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-227678 | `0x8888682e24dd4df7b7ff2b91fccb575737e433bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-227680 | `0xa200b567579a577f582d292f7a1b5c4ecce195f8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-227682 | `0xa308a5003fa1a25bfdd9418fcee51d48dbe441e6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-227684 | `0xa8f1a390ca227365fec3e53cf2851520b77743a1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-227685 | `0xad5a2437ff55ed7a8cad3b797b3ec7c5a19b1c54` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-227687 | `0xae4fac24dcdae0132c6d04f564dcf059616e9423` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-227689 | `0xc6e5185438e1730959c1ef3551059a3fec744e90` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-227691 | `0xc9011e629c9d0b8b1e4a2091e123fbb87b3a792c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-227693 | `0xc9a848ac73e378516b16e4eebba5ef6afbc0bbc2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-227695 | `0xca9511b610ba5fc7e311fdef9ce16050ee4449e9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-227697 | `0xcecd147409b2d64a9a2e5418e3e471e8af19e0bd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-227699 | `0xcfb6b0498cb7555e7e21502e0f449bf28760adbb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-227701 | `0xffdffbdb966cb84b50e62d70105f2dbf2e0a1e70` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Aurigami_Finance_Audit_Report_by_WatchPug.pdf](https://github.com/Aurigami-Finance/aurigami-smart-contracts/blob/main/docs/Aurigami_Finance_Audit_Report_by_WatchPug.pdf) | WatchPug | Audit | 2022-02 | stale | Direct | contract_name | matched | 3 | 0 | 0 | 5 | high |
| [www.watchpug.org](https://www.watchpug.org/) | WatchPug | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [12702] Aurigami_Finance_Audit_Report_by_WatchPug.pdf — matched: Contracts extracted from findings sections; no explicit scope table provided but all contracts mentioned are in scope.
- [12703] www.watchpug.org — no match: The provided text is a header/footer snippet from an audit report, not the full report content. No contracts, scope section, or date were found.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Aurigami_Finance_Audit_Report_by_WatchPug.pdf | AuErc20 | unmatched — not counted | — | mentioned in finding AF-1 | no |
| Aurigami_Finance_Audit_Report_by_WatchPug.pdf | AuToken | unmatched — not counted | — | mentioned in findings AF-1, AF-2, AF-3 | no |
| Aurigami_Finance_Audit_Report_by_WatchPug.pdf | Unitroller | own contract | 0x817af6… (selected) `0x817af6cfaf35bdc1a634d6cc94ee9e4c68369aeb` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Aurigami_Finance_Audit_Report_by_WatchPug.pdf | AuriLens | own contract | 0xffdffb… (selected) `0xffdffbdb966cb84b50e62d70105f2dbf2e0a1e70` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Aurigami_Finance_Audit_Report_by_WatchPug.pdf | Comptroller | unmatched — not counted | — | mentioned in findings AF-4, AF-5 | no |
| Aurigami_Finance_Audit_Report_by_WatchPug.pdf | AuriMathLib | unmatched — not counted | — | mentioned in finding AF-6 | no |
| Aurigami_Finance_Audit_Report_by_WatchPug.pdf | AuETH | own contract | 0xca9511… (selected) `0xca9511b610ba5fc7e311fdef9ce16050ee4449e9` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Aurigami_Finance_Audit_Report_by_WatchPug.pdf | AuriOracle | unmatched — not counted | — | mentioned in finding AF-8 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 24 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 3 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 5 unmatched
- Matched-own operational status: 3 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=1
- Match method counts: unique_name=3

Zero-match audit list:

- [12703] www.watchpug.org

Fork inheritance lineage and inherited audits are included when available.
