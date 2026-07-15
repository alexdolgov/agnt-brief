# Agentic Audit Brief: toupee.tech

## Export Authority

- Production state: **published scope**
- Raw selected rows: 9 across 2 audit(s)
- Eligible audit results: 2 (2 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: toupee.tech (`toupee.tech`)
- Website: [https://www.toupee.tech](https://www.toupee.tech)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base
- Contract surface: 25 unique implementations (25 raw deployments)
- Coverage basis: 7/21 confirmed own live verified implementations (33.3%); conservative 33.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $4,702,291.57
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for toupee.tech. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 21 contract row(s) across base. Structural roles: 10 core, 9 supporting, 2 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 21
- Structural roles: core (10), supporting (9), unclassified (2)
- Contract kinds: contract (21)
- Detected standards: erc20 (3), ownable (3), erc165 (1), erc20permit (1)
- Frameworks: openzeppelin (18)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 17 contracts are derived from known codebases. 17 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x1441cb...b07d27`, chain 8453)
- UnnamedContract (`0x56df15...329e01`, chain 8453)
- UnnamedContract (`0x5ed50f...ee106d`, chain 8453)
- UnnamedContract (`0xd54b64...36590c`, chain 8453)
- AeroGaugePlugin (`0x25a7e6...89f040`, chain 8453)
- AeroPairPlugin (`0xd1ca9d...3ed715`, chain 8453)
- AeroPairPlugin (`0xef0487...2755bd`, chain 8453)
- Multicall (`0xda81a3...aae82f`, chain 8453)
- OTOKEN (`0xbe1053...9a2b79`, chain 8453)
- ScaleGaugePlugin (`0xf19a7b...5290b8`, chain 8453)
- TOKEN (`0x58dd17...79e9b9`, chain 8453)
- TOKENFees (`0x8d05ef...ecd6c1`, chain 8453)
- TOKENGovernor (`0x46e77d...8c64b4`, chain 8453)
- VelociGaugePluginFactory (`0xc40215...fc8abf`, chain 8453)
- Voter (`0x756fc5...492452`, chain 8453)
- VTOKEN (`0x60c087...b11515`, chain 8453)
- VTOKENRewarder (`0xdd3e79...1de558`, chain 8453)

## Contract Surface Quality

- Indexed contracts: 21; live-surface contracts included: 21 (21 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 25/25 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 7/21 (33.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 25 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 25 of 25 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 7/21
- Verified + Unaudited implementations: 14
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 25
- Raw deployments: 25
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 7 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 5 | 23.8% | 2023-09 |
| unknown | Tier 2 | 4 | 19.0% | 2023-05 |

## Contract Surface

### ✅ Verified + Audited (7)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BribeFactory | unknown | project_anchor | own_supporting | 0 | base | unit-258862 | `0x971441...64c0fd` | ✅ Audited |
| GaugeFactory | unknown | project_anchor | own_supporting | 0 | base | unit-258870 | `0xe23e1a...36a5a5` | ✅ Audited |
| Minter | unknown | project_anchor | own_supporting | 0 | base | unit-258875 | `0xf49222...162576` | ✅ Audited |
| OTOKEN | token | project_anchor | own_supporting | 0 | base | unit-258864 | `0xbe1053...9a2b79` | ✅ Audited |
| TOKENFees | token | project_anchor | own_supporting | 0 | base | unit-258861 | `0x8d05ef...ecd6c1` | ✅ Audited |
| Voter | unknown | project_anchor | own_supporting | 0 | base | unit-258860 | `0x756fc5...492452` | ✅ Audited |
| VTOKEN | token | project_anchor | own_supporting | 0 | base | unit-258859 | `0x60c087...b11515` | ✅ Audited |

### ⚠️ Verified + Unaudited (14)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AeroGaugePlugin | operational_periphery | project_anchor | own_supporting | 0 | base | unit-258853 | `0x25a7e6...89f040` | ⚠️ Unaudited |
| AeroGaugePluginFactory | unknown | project_anchor | own_supporting | 0 | base | unit-258863 | `0x9fc663...7ff6ed` | ⚠️ Unaudited |
| AeroPairPlugin | unknown | project_anchor | own_supporting | 0 | base | unit-258866 | `0xd1ca9d...3ed715` | ⚠️ Unaudited |
| AeroPairPlugin | unknown | project_anchor | own_supporting | 0 | base | unit-258873 | `0xef0487...2755bd` | ⚠️ Unaudited |
| AeroPairPluginFactory | unknown | project_anchor | own_supporting | 0 | base | unit-258871 | `0xeac050...eb0448` | ⚠️ Unaudited |
| Controller | unknown | project_anchor | own_supporting | 0 | base | unit-258852 | `0x1eeb34...d4904e` | ⚠️ Unaudited |
| MerkleClaim | unknown | project_anchor | own_supporting | 0 | base | unit-258857 | `0x5d8218...a037e1` | ⚠️ Unaudited |
| Multicall | unknown | project_anchor | own_supporting | 0 | base | unit-258868 | `0xda81a3...aae82f` | ⚠️ Unaudited |
| ScaleGaugePlugin | operational_periphery | project_anchor | own_supporting | 0 | base | unit-258874 | `0xf19a7b...5290b8` | ⚠️ Unaudited |
| ScaleGaugePluginFactory | unknown | project_anchor | own_supporting | 0 | base | unit-258872 | `0xece72a...71e22e` | ⚠️ Unaudited |
| TOKEN | token | project_anchor | own_supporting | 0 | base | unit-258856 | `0x58dd17...79e9b9` | ⚠️ Unaudited |
| TOKENGovernor | unknown | project_anchor | own_supporting | 0 | base | unit-258854 | `0x46e77d...8c64b4` | ⚠️ Unaudited |
| VelociGaugePluginFactory | unknown | project_anchor | own_supporting | 0 | base | unit-258865 | `0xc40215...fc8abf` | ⚠️ Unaudited |
| VTOKENRewarder | token | project_anchor | own_supporting | 0 | base | unit-258869 | `0xdd3e79...1de558` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-258851 | `0x1441cb...b07d27` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-258855 | `0x56df15...329e01` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-258858 | `0x5ed50f...ee106d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-258867 | `0xd54b64...36590c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [spaces/5qfDTx0sJybWgitP8x4j/uploads/nzcUOiAySnZr2UQCCpsK/PeckShield-Audit-Report-LilToken-v1.0rc (1).pdf](https://2268926613-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F5qfDTx0sJybWgitP8x4j%2Fuploads%2FnzcUOiAySnZr2UQCCpsK%2FPeckShield-Audit-Report-LilToken-v1.0rc%20(1).pdf) | PeckShield | Audit | 2023-09 | stale | Direct | contract_name | matched | 6 | 0 | 0 | 5 | high |
| [spaces/5qfDTx0sJybWgitP8x4j/uploads/0dGTom7KMTseCGo56Xg0/ZokyoAudit.pdf](https://2268926613-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F5qfDTx0sJybWgitP8x4j%2Fuploads%2F0dGTom7KMTseCGo56Xg0%2FZokyoAudit.pdf) | unknown | Audit | 2023-05 | stale | Direct | contract_name | matched | 4 | 0 | 0 | 6 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [12597] spaces/5qfDTx0sJybWgitP8x4j/uploads/nzcUOiAySnZr2UQCCpsK/PeckShield-Audit-Report-LilToken-v1.0rc (1).pdf — matched: Extracted contract names from the audit report's target description, findings, and code snippets. The report explicitly states the target is LilToken and references multiple contracts (TOKEN, BASE, oTOKEN, VTOKEN, Voter, Plugin, Gauge, Minter, OTOKEN, TOKENFees, FEES) as part of the audited system.
- [12598] spaces/5qfDTx0sJybWgitP8x4j/uploads/0dGTom7KMTseCGo56Xg0/ZokyoAudit.pdf — matched: Contracts listed in scope section on page 3.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| spaces/5qfDTx0sJybWgitP8x4j/uploads/nzcUOiAySnZr2UQCCpsK/PeckShield-Audit-Report-LilToken-v1.0rc (1).pdf | LilToken | unmatched — not counted | — | Target of audit, mentioned in introduction and throughout report | no |
| spaces/5qfDTx0sJybWgitP8x4j/uploads/nzcUOiAySnZr2UQCCpsK/PeckShield-Audit-Report-LilToken-v1.0rc (1).pdf | TOKEN | ambiguous — not counted | VTOKEN (alternative) `0x60c087...b11515` — deployed 2023-11-05 08:42:05+03 — liveness: live (code_present_context)<br>TOKENFees (alternative) `0x8d05ef...ecd6c1` — deployed 2023-11-05 08:42:05+03 — liveness: live (code_present_context)<br>VTOKENRewarder (alternative) `0xdd3e79...1de558` — deployed 2023-11-05 08:42:05+03 — liveness: live (code_present_context)<br>TOKEN (alternative) `0x58dd17...79e9b9` — deployed 2023-11-05 08:42:05+03 — liveness: live (code_present_context)<br>OTOKEN (alternative) `0xbe1053...9a2b79` — deployed 2023-11-05 08:42:05+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/5qfDTx0sJybWgitP8x4j/uploads/nzcUOiAySnZr2UQCCpsK/PeckShield-Audit-Report-LilToken-v1.0rc (1).pdf | BASE | unmatched — not counted | — | Base token backing TOKEN, mentioned in bonding curve description | no |
| spaces/5qfDTx0sJybWgitP8x4j/uploads/nzcUOiAySnZr2UQCCpsK/PeckShield-Audit-Report-LilToken-v1.0rc (1).pdf | oTOKEN | own contract | OTOKEN (selected) `0xbe1053...9a2b79` — deployed 2023-11-05 08:42:05+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/5qfDTx0sJybWgitP8x4j/uploads/nzcUOiAySnZr2UQCCpsK/PeckShield-Audit-Report-LilToken-v1.0rc (1).pdf | VTOKEN | own contract | VTOKEN (selected) `0x60c087...b11515` — deployed 2023-11-05 08:42:05+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/5qfDTx0sJybWgitP8x4j/uploads/nzcUOiAySnZr2UQCCpsK/PeckShield-Audit-Report-LilToken-v1.0rc (1).pdf | Voter | own contract | Voter (selected) `0x756fc5...492452` — deployed 2023-11-05 08:49:15+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/5qfDTx0sJybWgitP8x4j/uploads/nzcUOiAySnZr2UQCCpsK/PeckShield-Audit-Report-LilToken-v1.0rc (1).pdf | Plugin | unmatched — not counted | — | Plugin contract for Gauge-Plugins, mentioned in introduction and finding PVE-001 | no |
| spaces/5qfDTx0sJybWgitP8x4j/uploads/nzcUOiAySnZr2UQCCpsK/PeckShield-Audit-Report-LilToken-v1.0rc (1).pdf | Gauge | unmatched — not counted | — | Gauge contract, mentioned in introduction and finding PVE-005 | no |
| spaces/5qfDTx0sJybWgitP8x4j/uploads/nzcUOiAySnZr2UQCCpsK/PeckShield-Audit-Report-LilToken-v1.0rc (1).pdf | Minter | own contract | Minter (selected) `0xf49222...162576` — deployed 2023-11-05 08:49:25+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/5qfDTx0sJybWgitP8x4j/uploads/nzcUOiAySnZr2UQCCpsK/PeckShield-Audit-Report-LilToken-v1.0rc (1).pdf | TOKENFees | own contract | TOKENFees (selected) `0x8d05ef...ecd6c1` — deployed 2023-11-05 08:42:05+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/5qfDTx0sJybWgitP8x4j/uploads/nzcUOiAySnZr2UQCCpsK/PeckShield-Audit-Report-LilToken-v1.0rc (1).pdf | FEES | own contract | TOKENFees (selected) `0x8d05ef...ecd6c1` — deployed 2023-11-05 08:42:05+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/5qfDTx0sJybWgitP8x4j/uploads/0dGTom7KMTseCGo56Xg0/ZokyoAudit.pdf | CantodexPairPlugin | unmatched — not counted | — | listed in scope | no |
| spaces/5qfDTx0sJybWgitP8x4j/uploads/0dGTom7KMTseCGo56Xg0/ZokyoAudit.pdf | FortePairPlugin | unmatched — not counted | — | listed in scope | no |
| spaces/5qfDTx0sJybWgitP8x4j/uploads/0dGTom7KMTseCGo56Xg0/ZokyoAudit.pdf | VelocimeterPairPlugin | unmatched — not counted | — | listed in scope | no |
| spaces/5qfDTx0sJybWgitP8x4j/uploads/0dGTom7KMTseCGo56Xg0/ZokyoAudit.pdf | BribeFactory | own contract | BribeFactory (selected) `0x971441...64c0fd` — deployed 2023-11-05 08:44:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/5qfDTx0sJybWgitP8x4j/uploads/0dGTom7KMTseCGo56Xg0/ZokyoAudit.pdf | GaugeFactory | own contract | GaugeFactory (selected) `0xe23e1a...36a5a5` — deployed 2023-11-05 08:44:37+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/5qfDTx0sJybWgitP8x4j/uploads/0dGTom7KMTseCGo56Xg0/ZokyoAudit.pdf | Minter | own contract | Minter (selected) `0xf49222...162576` — deployed 2023-11-05 08:49:25+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/5qfDTx0sJybWgitP8x4j/uploads/0dGTom7KMTseCGo56Xg0/ZokyoAudit.pdf | oSOUL | unmatched — not counted | — | listed in scope | no |
| spaces/5qfDTx0sJybWgitP8x4j/uploads/0dGTom7KMTseCGo56Xg0/ZokyoAudit.pdf | SOUL | unmatched — not counted | — | listed in scope | no |
| spaces/5qfDTx0sJybWgitP8x4j/uploads/0dGTom7KMTseCGo56Xg0/ZokyoAudit.pdf | Voter | own contract | Voter (selected) `0x756fc5...492452` — deployed 2023-11-05 08:49:15+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/5qfDTx0sJybWgitP8x4j/uploads/0dGTom7KMTseCGo56Xg0/ZokyoAudit.pdf | vSOUL | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | `0x25a7e6...89f040` | AeroGaugePlugin | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x9fc663...7ff6ed` | AeroGaugePluginFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xd1ca9d...3ed715` | AeroPairPlugin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xef0487...2755bd` | AeroPairPlugin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xeac050...eb0448` | AeroPairPluginFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x1eeb34...d4904e` | Controller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x5d8218...a037e1` | MerkleClaim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xf19a7b...5290b8` | ScaleGaugePlugin | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xece72a...71e22e` | ScaleGaugePluginFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x58dd17...79e9b9` | TOKEN | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x46e77d...8c64b4` | TOKENGovernor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xc40215...fc8abf` | VelociGaugePluginFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xdd3e79...1de558` | VTOKENRewarder | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 20 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 10 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 1 ambiguous, 10 unmatched
- Matched-own operational status: 10 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: unique_name=9

Fork inheritance lineage and inherited audits are included when available.
