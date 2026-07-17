# Agentic Audit Brief: toupee.tech

## Export Authority

- Production state: **published scope**
- Raw selected rows: 9 across 2 audit(s)
- Eligible audit results: 2 (2 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `12555af2097191e60e7a3dc0743058c9046ed87a105382bdae663a49f79103f7`

## Project Overview

- Project: toupee.tech (`toupee.tech`)
- Website: [https://www.toupee.tech](https://www.toupee.tech)
- Lifecycle: unknown
- Generated: 2026-07-17T12:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base
- Contract surface: 52 unique implementations (53 raw deployments)
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

- UnnamedContract (`0x1441cba5a9df12f157c362ca0c8eed50c2b07d27`, chain 8453)
- UnnamedContract (`0x56df157dec576cc2596257fb17115a7ea0329e01`, chain 8453)
- UnnamedContract (`0x5ed50fbb15d047b2b6bc0e6fade25a3b1eee106d`, chain 8453)
- UnnamedContract (`0xd54b64a096b785d19cff3f19061509230736590c`, chain 8453)
- AeroGaugePlugin (`0x25a7e6a89f06ef3f90b844f69f1f0b63d389f040`, chain 8453)
- AeroPairPlugin (`0xd1ca9d78005b5a891c8a6bd8408ed308b33ed715`, chain 8453)
- AeroPairPlugin (`0xef04879d23e4113bbc32898436241b7e382755bd`, chain 8453)
- Multicall (`0xda81a398787f57810f1225db3a6dc12635aae82f`, chain 8453)
- OTOKEN (`0xbe1053ec4ac137c9a5b4462d53d5c2c0b89a2b79`, chain 8453)
- ScaleGaugePlugin (`0xf19a7b64809dc969b173f40d3f8c6734935290b8`, chain 8453)
- TOKEN (`0x58dd173f30ecffdfebcd242c71241fb2f179e9b9`, chain 8453)
- TOKENFees (`0x8d05ef8093a746101cee1a0578edd277f3ecd6c1`, chain 8453)
- TOKENGovernor (`0x46e77d8349ba8ae9137b89196a61ffee2c8c64b4`, chain 8453)
- VelociGaugePluginFactory (`0xc40215fedcc1475b5d767c4ebc7085501ffc8abf`, chain 8453)
- Voter (`0x756fc5e6bdb26a85594346d7d0520e1c0e492452`, chain 8453)
- VTOKEN (`0x60c08737877a5262bdb1c1cac8fb90b5e5b11515`, chain 8453)
- VTOKENRewarder (`0xdd3e797522e15c3ede6ed468738cba754e1de558`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 21; live-surface rows included: 21 (21 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 25/25 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 7/21 (33.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 25 own, 25 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 2 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 25 of 52 unique; 27 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 7/23
- Verified + Unaudited implementations: 16
- Verified by bytecode match: 0
- Unverified implementations: 29
- Unique implementations: 52
- Raw deployments: 53
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
| PeckShield | Tier 2 | 5 | 21.7% | 2023-09 |
| unknown | Tier 2 | 4 | 17.4% | 2023-05 |

## Contract Surface

### ✅ Verified + Audited (7)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BribeFactory | unknown | project_anchor | own_supporting | 0 | base | unit-258862 | `0x9714412e8838337e60c8f7b4c2bc49247964c0fd` | ✅ Audited |
| GaugeFactory | unknown | project_anchor | own_supporting | 0 | base | unit-258870 | `0xe23e1a116090a0829b7ab536a3af463a5a36a5a5` | ✅ Audited |
| Minter | unknown | project_anchor | own_supporting | 0 | base | unit-258875 | `0xf49222fccba2c149b3ff3ae9d3a30edb1f162576` | ✅ Audited |
| OTOKEN | token | project_anchor | own_supporting | 0 | base | unit-258864 | `0xbe1053ec4ac137c9a5b4462d53d5c2c0b89a2b79` | ✅ Audited |
| TOKENFees | token | project_anchor | own_supporting | 0 | base | unit-258861 | `0x8d05ef8093a746101cee1a0578edd277f3ecd6c1` | ✅ Audited |
| Voter | unknown | project_anchor | own_supporting | 0 | base | unit-258860 | `0x756fc5e6bdb26a85594346d7d0520e1c0e492452` | ✅ Audited |
| VTOKEN | token | project_anchor | own_supporting | 0 | base | unit-258859 | `0x60c08737877a5262bdb1c1cac8fb90b5e5b11515` | ✅ Audited |

### ⚠️ Verified + Unaudited (16)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AeroGaugePlugin | operational_periphery | project_anchor | own_supporting | 0 | base | unit-258853 | `0x25a7e6a89f06ef3f90b844f69f1f0b63d389f040` | ⚠️ Unaudited |
| AeroGaugePluginFactory | unknown | project_anchor | own_supporting | 0 | base | unit-258863 | `0x9fc66381ea664f6aea4bd516091ebbe1d27ff6ed` | ⚠️ Unaudited |
| AeroPairPlugin | unknown | project_anchor | own_supporting | 0 | base | unit-258866 | `0xd1ca9d78005b5a891c8a6bd8408ed308b33ed715` | ⚠️ Unaudited |
| AeroPairPlugin | unknown | project_anchor | own_supporting | 0 | base | unit-258873 | `0xef04879d23e4113bbc32898436241b7e382755bd` | ⚠️ Unaudited |
| AeroPairPluginFactory | unknown | project_anchor | own_supporting | 0 | base | unit-258871 | `0xeac05094887c6548f3054fc121c57844c2eb0448` | ⚠️ Unaudited |
| Controller | unknown | project_anchor | own_supporting | 0 | base | unit-258852 | `0x1eeb34b653d396cdc60a9c434c09e1803dd4904e` | ⚠️ Unaudited |
| MerkleClaim | unknown | project_anchor | own_supporting | 0 | base | unit-258857 | `0x5d82183db96e55a5f2caee691728584cd4a037e1` | ⚠️ Unaudited |
| Multicall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x3bb30ca0bf95d6a2fc8ad9087bac92711bf0947e`; base `0x752de9d1b6f8796d214d2a24a6f6f55ee9facc71` | ⚠️ Unaudited |
| Multicall | unknown | project_anchor | own_supporting | 0 | base | unit-258868 | `0xda81a398787f57810f1225db3a6dc12635aae82f` | ⚠️ Unaudited |
| ScaleGaugePlugin | operational_periphery | project_anchor | own_supporting | 0 | base | unit-258874 | `0xf19a7b64809dc969b173f40d3f8c6734935290b8` | ⚠️ Unaudited |
| ScaleGaugePluginFactory | unknown | project_anchor | own_supporting | 0 | base | unit-258872 | `0xece72a27bbd6e667672ac226a26eaf3e2f71e22e` | ⚠️ Unaudited |
| TOKEN | token | project_anchor | own_supporting | 0 | base | unit-258856 | `0x58dd173f30ecffdfebcd242c71241fb2f179e9b9` | ⚠️ Unaudited |
| TOKENGovernor | unknown | project_anchor | own_supporting | 0 | base | unit-258854 | `0x46e77d8349ba8ae9137b89196a61ffee2c8c64b4` | ⚠️ Unaudited |
| VelociGaugePluginFactory | unknown | project_anchor | own_supporting | 0 | base | unit-258865 | `0xc40215fedcc1475b5d767c4ebc7085501ffc8abf` | ⚠️ Unaudited |
| VelociGrapheneGaugePluginFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xed8b18cdef8a70227e01395c2571d72867ef23a3` | ⚠️ Unaudited |
| VTOKENRewarder | token | project_anchor | own_supporting | 0 | base | unit-258869 | `0xdd3e797522e15c3ede6ed468738cba754e1de558` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (29)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x0195ba4c952c5aeefb3e57659a8b9a7a8b435479` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x047078e0ac22145a26c72e0fcac06cd82d043608` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x0d0127125cac70400839b6bdc652f82d56bc144e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x110093de578ca0a202c85240f1ace3529e228f68` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-258851 | `0x1441cba5a9df12f157c362ca0c8eed50c2b07d27` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x1667f3687bd71ce260d4b12b337b9b066b4471a9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x227a7bfc7ceec7b019218d3ce4beb025fae74b19` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x37ca925d8e6028d36319563b09d2bf50f91c833a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x3e017d06483e345d709d5d623ff289293311372c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x508006e083ad7d0df666e9224a1ca81922450f3d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-258855 | `0x56df157dec576cc2596257fb17115a7ea0329e01` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-258858 | `0x5ed50fbb15d047b2b6bc0e6fade25a3b1eee106d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x60f2418e1835da1caf06f33c7fd4dfdb5a91f524` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x6115b7f86fb2f81fc8b459ead1ef9f092de338e5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x6d4809cfbd7f4738d960a4d21cdd000b91ec97aa` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x6d84715afda79a237e407dce9b916f66115ecccd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x7ff9e636afe2697d9f7c6e0071d9c4c580455111` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x8e57da48f35217b13afce34eb244f8cfe7b8c5c4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x919d99b085583bff5833ff0cb0abea4af5d9d6b4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x93fd987c5b671c1f61c33071e32829e37a137d61` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x96c1e3624005d3bc032c7fc36bfdb31413c4fd4a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x9f6a5f49e4d57a7de596c48181b65a0083ad343c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0xcdb6e9b7b3be971d23c7d194f72c2db6758738c1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0xd0182481abf153704d607a0c7d0b41f0c91552dd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0xd0c41cc7433a9e234bb5ae14a668d56478ea4e99` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-258867 | `0xd54b64a096b785d19cff3f19061509230736590c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0xdb55de47f1cb51d84442255d9eccc54559e2509f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0xf139c95e7e959ad1535c80ea7e021891891f7b6a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0xf1f00aa00d6ed2e5190449f2ff3bcb72c8fdec6b` | ❓ Unverified |

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
| spaces/5qfDTx0sJybWgitP8x4j/uploads/nzcUOiAySnZr2UQCCpsK/PeckShield-Audit-Report-LilToken-v1.0rc (1).pdf | TOKEN | ambiguous — not counted | VTOKEN (alternative) `0x60c08737877a5262bdb1c1cac8fb90b5e5b11515` — deployed 2023-11-05 08:42:05+03 — liveness: live (code_present_context)<br>TOKENFees (alternative) `0x8d05ef8093a746101cee1a0578edd277f3ecd6c1` — deployed 2023-11-05 08:42:05+03 — liveness: live (code_present_context)<br>VTOKENRewarder (alternative) `0xdd3e797522e15c3ede6ed468738cba754e1de558` — deployed 2023-11-05 08:42:05+03 — liveness: live (code_present_context)<br>TOKEN (alternative) `0x58dd173f30ecffdfebcd242c71241fb2f179e9b9` — deployed 2023-11-05 08:42:05+03 — liveness: live (code_present_context)<br>OTOKEN (alternative) `0xbe1053ec4ac137c9a5b4462d53d5c2c0b89a2b79` — deployed 2023-11-05 08:42:05+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/5qfDTx0sJybWgitP8x4j/uploads/nzcUOiAySnZr2UQCCpsK/PeckShield-Audit-Report-LilToken-v1.0rc (1).pdf | BASE | unmatched — not counted | — | Base token backing TOKEN, mentioned in bonding curve description | no |
| spaces/5qfDTx0sJybWgitP8x4j/uploads/nzcUOiAySnZr2UQCCpsK/PeckShield-Audit-Report-LilToken-v1.0rc (1).pdf | oTOKEN | own contract | OTOKEN (selected) `0xbe1053ec4ac137c9a5b4462d53d5c2c0b89a2b79` — deployed 2023-11-05 08:42:05+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/5qfDTx0sJybWgitP8x4j/uploads/nzcUOiAySnZr2UQCCpsK/PeckShield-Audit-Report-LilToken-v1.0rc (1).pdf | VTOKEN | own contract | VTOKEN (selected) `0x60c08737877a5262bdb1c1cac8fb90b5e5b11515` — deployed 2023-11-05 08:42:05+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/5qfDTx0sJybWgitP8x4j/uploads/nzcUOiAySnZr2UQCCpsK/PeckShield-Audit-Report-LilToken-v1.0rc (1).pdf | Voter | own contract | Voter (selected) `0x756fc5e6bdb26a85594346d7d0520e1c0e492452` — deployed 2023-11-05 08:49:15+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/5qfDTx0sJybWgitP8x4j/uploads/nzcUOiAySnZr2UQCCpsK/PeckShield-Audit-Report-LilToken-v1.0rc (1).pdf | Plugin | unmatched — not counted | — | Plugin contract for Gauge-Plugins, mentioned in introduction and finding PVE-001 | no |
| spaces/5qfDTx0sJybWgitP8x4j/uploads/nzcUOiAySnZr2UQCCpsK/PeckShield-Audit-Report-LilToken-v1.0rc (1).pdf | Gauge | unmatched — not counted | — | Gauge contract, mentioned in introduction and finding PVE-005 | no |
| spaces/5qfDTx0sJybWgitP8x4j/uploads/nzcUOiAySnZr2UQCCpsK/PeckShield-Audit-Report-LilToken-v1.0rc (1).pdf | Minter | own contract | Minter (selected) `0xf49222fccba2c149b3ff3ae9d3a30edb1f162576` — deployed 2023-11-05 08:49:25+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/5qfDTx0sJybWgitP8x4j/uploads/nzcUOiAySnZr2UQCCpsK/PeckShield-Audit-Report-LilToken-v1.0rc (1).pdf | TOKENFees | own contract | TOKENFees (selected) `0x8d05ef8093a746101cee1a0578edd277f3ecd6c1` — deployed 2023-11-05 08:42:05+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/5qfDTx0sJybWgitP8x4j/uploads/nzcUOiAySnZr2UQCCpsK/PeckShield-Audit-Report-LilToken-v1.0rc (1).pdf | FEES | own contract | TOKENFees (selected) `0x8d05ef8093a746101cee1a0578edd277f3ecd6c1` — deployed 2023-11-05 08:42:05+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/5qfDTx0sJybWgitP8x4j/uploads/0dGTom7KMTseCGo56Xg0/ZokyoAudit.pdf | CantodexPairPlugin | unmatched — not counted | — | listed in scope | no |
| spaces/5qfDTx0sJybWgitP8x4j/uploads/0dGTom7KMTseCGo56Xg0/ZokyoAudit.pdf | FortePairPlugin | unmatched — not counted | — | listed in scope | no |
| spaces/5qfDTx0sJybWgitP8x4j/uploads/0dGTom7KMTseCGo56Xg0/ZokyoAudit.pdf | VelocimeterPairPlugin | unmatched — not counted | — | listed in scope | no |
| spaces/5qfDTx0sJybWgitP8x4j/uploads/0dGTom7KMTseCGo56Xg0/ZokyoAudit.pdf | BribeFactory | own contract | BribeFactory (selected) `0x9714412e8838337e60c8f7b4c2bc49247964c0fd` — deployed 2023-11-05 08:44:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/5qfDTx0sJybWgitP8x4j/uploads/0dGTom7KMTseCGo56Xg0/ZokyoAudit.pdf | GaugeFactory | own contract | GaugeFactory (selected) `0xe23e1a116090a0829b7ab536a3af463a5a36a5a5` — deployed 2023-11-05 08:44:37+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/5qfDTx0sJybWgitP8x4j/uploads/0dGTom7KMTseCGo56Xg0/ZokyoAudit.pdf | Minter | own contract | Minter (selected) `0xf49222fccba2c149b3ff3ae9d3a30edb1f162576` — deployed 2023-11-05 08:49:25+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/5qfDTx0sJybWgitP8x4j/uploads/0dGTom7KMTseCGo56Xg0/ZokyoAudit.pdf | oSOUL | unmatched — not counted | — | listed in scope | no |
| spaces/5qfDTx0sJybWgitP8x4j/uploads/0dGTom7KMTseCGo56Xg0/ZokyoAudit.pdf | SOUL | unmatched — not counted | — | listed in scope | no |
| spaces/5qfDTx0sJybWgitP8x4j/uploads/0dGTom7KMTseCGo56Xg0/ZokyoAudit.pdf | Voter | own contract | Voter (selected) `0x756fc5e6bdb26a85594346d7d0520e1c0e492452` — deployed 2023-11-05 08:49:15+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/5qfDTx0sJybWgitP8x4j/uploads/0dGTom7KMTseCGo56Xg0/ZokyoAudit.pdf | vSOUL | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | `0x25a7e6a89f06ef3f90b844f69f1f0b63d389f040` | AeroGaugePlugin | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x9fc66381ea664f6aea4bd516091ebbe1d27ff6ed` | AeroGaugePluginFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xd1ca9d78005b5a891c8a6bd8408ed308b33ed715` | AeroPairPlugin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xef04879d23e4113bbc32898436241b7e382755bd` | AeroPairPlugin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xeac05094887c6548f3054fc121c57844c2eb0448` | AeroPairPluginFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x1eeb34b653d396cdc60a9c434c09e1803dd4904e` | Controller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x5d82183db96e55a5f2caee691728584cd4a037e1` | MerkleClaim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xf19a7b64809dc969b173f40d3f8c6734935290b8` | ScaleGaugePlugin | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xece72a27bbd6e667672ac226a26eaf3e2f71e22e` | ScaleGaugePluginFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x58dd173f30ecffdfebcd242c71241fb2f179e9b9` | TOKEN | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x46e77d8349ba8ae9137b89196a61ffee2c8c64b4` | TOKENGovernor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xc40215fedcc1475b5d767c4ebc7085501ffc8abf` | VelociGaugePluginFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xdd3e797522e15c3ede6ed468738cba754e1de558` | VTOKENRewarder | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 21 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 29 |

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
